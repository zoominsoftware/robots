{-# LANGUAGE CPP               #-}
{-# LANGUAGE OverloadedStrings #-}
module RegressionsSpec where
import           Network.HTTP.Robots
import           System.Directory
import           Test.Hspec

import           Control.Applicative
import           Control.Monad                    (filterM, forM_)
import           Control.Monad.IO.Class
import           Data.Attoparsec.ByteString.Char8
import qualified Data.ByteString.Char8            as BS
import           Data.Either
import           System.IO.Unsafe                 (unsafePerformIO)

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

  describe "regressions" $ do
    it "cellularphonedepot regression" $ do
      f <- BS.readFile (dirname ++ "/examples/cellularphonedepot.com")
      parseOnly robotP f `shouldBe` Right ([([Wildcard],[Disallow "/*",Allow "/?okparam=",Allow "/$"])],[])

    it "valueweb.gr regression" $ do
      f <- BS.readFile (dirname ++ "/examples/valueweb.gr")
      let Right r = parseOnly robotP f
      canAccess "Mozilla/5.0 (compatible; meanpathbot/1.0; +http://www.meanpath.com/meanpathbot.html)" r "/" `shouldBe` False


    it "chooses the most specific user agent from helloworldweb" $ do
      (Right hellobot) <- parseOnly robotP <$> liftIO (BS.readFile "./test/examples/helloworldweb2.com")
      canAccess "Mozilla/5.0 (compatible; meanpathbot/1.0; +http://www.meanpath.com/meanpathbot.html)" hellobot "/" `shouldBe` False
      canAccess "googlebot" hellobot "/" `shouldBe` True

    it "operates correctly on clkmg.com" $ do
      (Right hellobot) <- parseOnly robotP <$> liftIO (BS.readFile "./test/examples/clkmg.com")
      canAccess "Mozilla/5.0 (compatible; meanpathbot/1.0; +http://www.meanpath.com/meanpathbot.html)" hellobot "/" `shouldBe` False

    it "operates correctly on kvsupply.com" $ do
     (Right hellobot) <- parseOnly robotP <$> liftIO (BS.readFile "./test/examples/kvsupply.com")
     canAccess "Mozilla/5.0 (compatible; meanpathbot/1.0; +http://www.meanpath.com/meanpathbot.html)" hellobot "/" `shouldBe` False


  describe "incorrect robots files" $ do
    it "treats HTML as garbage" $ do
      parseRobots "<html><head>a thing</head><body>yo, i'm not a robots file</body></html>\n"
        `shouldSatisfy` myIsLeft


    it "can handle no-newline files" $ do
      parseRobots "<html><head>a thing</head><body>yo, i'm not a robots file</body></html>"
        `shouldSatisfy` myIsLeft
