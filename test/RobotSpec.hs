{-# LANGUAGE CPP #-}
{-# LANGUAGE OverloadedStrings #-}
module RobotSpec where
import Network.HTTP.Robots
import Test.Hspec
import System.Directory

import Control.Monad(forM_,filterM)
import Control.Applicative
import Data.Either
import Data.Attoparsec.Char8
import System.IO.Unsafe(unsafePerformIO)
import qualified Data.ByteString.Char8 as BS

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
  describe "simple" $ do
    it "can read a token" $ do
      (parseOnly tokenP "foo") `shouldBe`
        Right "foo"
    it "can read a user agent" $ do
      (parseOnly agentP "User-agent: *\n") `shouldBe`
        Right Wildcard
    it "can read a specific user agent" $ do
      (parseOnly agentP "User-agent: Buzzbot\n") `shouldBe`
        Right (Literal "Buzzbot")
    it "can read allow directives" $ do
      (parseOnly directiveP "Allow: /\n") `shouldBe`
        Right (Allow "/")
    it "should read a full robots.txt" $ do
      (parseOnly robotP "User-agent: *\nDisallow: /\n")
        `shouldBe` Right [(Wildcard, [Disallow "/"])]
    it "should cope with end-of-line comments" $ do
      (parseOnly robotP "User-agent: *\nDisallow: / # don't read my site\nAllow: /foo")
        `shouldBe` Right [(Wildcard, [Disallow "/", Allow "/foo"])]


  describe "smoke test - check we can read all the robots.txt examples" $

    forM_ texts $ \(name,text) ->
      it ("should parse " ++ name) $ do
        let res = rights [parseRobots text]
        length res  `shouldBe` 1

  describe "allowable" $ do
    let robot = [(Wildcard, [Disallow "/", Allow "/anyone"]),
                 (Literal "SpecialBot", [Allow "/", Allow "/only_special"])]
    it "should allow access to anyone" $ do
      canAccess "anyone"  robot "/anyone" `shouldBe` True
    it "should deny access to root for most bots" $ do
      canAccess "anyone"  robot "/" `shouldBe` False
    it "should deny access to only_special for most bots" $ do
      canAccess "anyone"  robot "/only_special" `shouldBe` False
    it "allows access to specialbot" $ do
      canAccess "SpecialBot"  robot "/" `shouldBe` True
    it "allows access to specialbot special area" $ do
      canAccess "SpecialBot"  robot "/only_special" `shouldBe` True
