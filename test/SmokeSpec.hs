{-# LANGUAGE CPP               #-}
{-# LANGUAGE OverloadedStrings #-}
module SmokeSpec where
import           Network.HTTP.Robots
import           System.Directory
import           Test.Hspec

import           Control.Applicative
import           Control.Monad         (filterM, forM_)
import qualified Data.ByteString.Char8 as BS
import           Data.Either
import           System.IO.Unsafe      (unsafePerformIO)

-- apparently not a utility function.
myIsLeft :: Either a b -> Bool
myIsLeft (Left _) = True
myIsLeft _        = False

dirname :: String
dirname = reverse $ dropWhile (/= '/') $ reverse __FILE__
-- forgive me father, i know not what i do.

texts :: [(FilePath, BS.ByteString)]
texts = unsafePerformIO $ do
  contents <- map ((dirname ++ "/examples/") ++) <$> (getDirectoryContents $ dirname ++ "/examples")
  files <- filterM doesFileExist contents
  res <- mapM (\x -> BS.readFile x >>= \c -> return (x,c  )) files
  return res

  -- this is just an ugly burn-in test - we collect examples of
  -- robots.txt and check we can read them all.

spec :: Spec
spec = do

  describe "smoke test - check we can read all the robots.txt examples" $
    -- we should also verify if there were unparsed items
    forM_ texts $ \(name,text) ->
      it ("should parse " ++ name) $
        parseRobots text `shouldSatisfy`
          (\x -> 1 == length (rights [x])
              -- head is safe here if first condition is met
              && 0 == length (snd . head . rights $ [x]))
