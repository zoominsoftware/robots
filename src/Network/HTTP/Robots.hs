{-# LANGUAGE OverloadedStrings #-}
module Network.HTTP.Robots where

import qualified Data.ByteString.Char8 as BS
import           Data.ByteString.Char8(ByteString)
import Data.Attoparsec.Char8
import Control.Applicative

type Robot = [(UserAgent, [Directive])]

data UserAgent = Wildcard | Literal ByteString
  deriving (Show,Eq)
type Path = ByteString

data Directive = Allow Path
               | Disallow Path
               | CrawlDelay Int
  deriving (Show,Eq)

-- | parseRobots is the main entry point for parsing a robots.txt file.
parseRobots :: ByteString -> Either String Robot
parseRobots = parseOnly robotP
              . BS.unlines
              . filter ( (\x -> BS.null x || BS.head x /= '#' ) . BS.dropWhile (==' '))
              . BS.lines

robotP :: Parser Robot
robotP = many ((,) <$> agentP <*> many directiveP) <?> "robot"


directiveP :: Parser Directive
directiveP = choice [ Allow <$>      (string "Allow:"       >> skipSpace >> tokenP)
                    , Disallow <$>   (string "Disallow:"    >> skipSpace >> tokenP)
                    , CrawlDelay <$> (string "Crawl-delay:" >>  skipSpace >>decimal)
                    ] <* commentsP <?> "directive"

agentP :: Parser UserAgent
agentP = do
  string "User-agent:"
  skipSpace
  ((string "*" >> return Wildcard) <|>
   (Literal  <$> tokenP)) <* skipSpace <?> "agent"


commentsP :: Parser ()
commentsP = skipSpace >>
            ((string "#" >> takeTill (=='\n') >> skipSpace) <|> return ())

tokenP :: Parser ByteString
tokenP = skipSpace >> takeTill isSpace <* skipSpace

canAccess :: ByteString -> Robot -> Path -> Bool
canAccess agent robots path = undefined
