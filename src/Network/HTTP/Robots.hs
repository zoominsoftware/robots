{-# LANGUAGE OverloadedStrings #-}
module Network.HTTP.Robots where

import qualified Data.ByteString.Char8 as BS
import           Data.ByteString.Char8(ByteString)
import Data.Attoparsec.Char8 hiding (skipSpace)
import Control.Applicative
import Data.List(find)
import Data.Maybe(catMaybes)
import Data.Either(partitionEithers)

type Robot = ([([UserAgent], [Directive])], [Unparsable])

type Unparsable = ByteString

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
robotP = do
  (dirs, unparsable) <- partitionEithers <$> many  (eitherP agentDirectiveP unparsableP) <?> "robot"
  return (dirs, filter (/= "") unparsable)

unparsableP = takeTill (=='\n') <* char '\n'

agentDirectiveP = (,) <$> many1 agentP <*> many1 directiveP <?> "agentDirective"



skipSpace :: Parser ()
skipSpace = skipWhile (\x -> x==' ' || x == '\t')

directiveP :: Parser Directive
directiveP = choice [ Allow <$>      (string "Allow:"       >> skipSpace >> tokenP)
                    , (string "Disallow:"    >> skipSpace >>
                       (choice [Disallow <$> tokenP,
                                -- this requires some explanation.
                                -- The RFC suggests that an empty
                                -- Disallow line means anything is
                                -- allowed. Being semantically
                                -- equivalent to 'Allow: "/"',
                                -- I have chosen to change it here
                                -- rather than carry the bogus
                                -- distinction around.
                                endOfLine >> return (Allow "/") ] ))
                    , CrawlDelay <$> (string "Crawl-delay:" >>  skipSpace >>decimal)
                    ] <* commentsP <?> "directive"

agentP :: Parser UserAgent
agentP = do
  string "User-agent:"
  skipSpace
  ((string "*" >> return Wildcard) <|>
   (Literal  <$> tokenP)) <* skipSpace <* endOfLine <?> "agent"


commentsP :: Parser ()
commentsP = skipSpace >>
            ((string "#" >> takeTill (=='\n') >> skipSpace >> endOfLine) <|> return ())

tokenP :: Parser ByteString
tokenP = skipSpace >> takeWhile1 (not . isSpace) <* skipSpace

-- I lack the art to make this prettier.
canAccess :: ByteString -> Robot -> Path -> Bool
canAccess _ _ "/robots.txt" = True -- special-cased
canAccess agent (robot,_) path = case stanzas of
  [] -> True
  ((_,directives):_) -> matchingDirective directives
  where stanzas = catMaybes [find ((Literal agent `elem`) . fst) robot,
                             find ((Wildcard `elem`) . fst) robot]
        matchingDirective [] = True
        matchingDirective (x:xs) = case x of
          Allow robot_path -> if robot_path `BS.isPrefixOf` path
                              then True
                              else matchingDirective xs
          Disallow robot_path ->
            if robot_path `BS.isPrefixOf` path
            then False
            else matchingDirective xs
          _ -> matchingDirective xs
