{-# LANGUAGE OverloadedStrings #-}
module Network.HTTP.Robots where

import           Control.Applicative
import           Data.Attoparsec.Char8 hiding (skipSpace)
import           Data.ByteString.Char8 (ByteString)
import qualified Data.ByteString.Char8 as BS
import           Data.Either           (partitionEithers)
import           Data.List             (find)
import           Data.Maybe            (catMaybes)

type Robot = ([([UserAgent], [Directive])], [Unparsable])

type Unparsable = ByteString

data UserAgent = Wildcard | Literal ByteString
  deriving (Show,Eq)
type Path = ByteString

data Directive = Allow Path
               | Disallow Path
               | CrawlDelay Int
  deriving (Show,Eq)

-- ... yeah.
strip = BS.reverse . BS.dropWhile (==' ') . BS.reverse . BS.dropWhile (==' ')

-- | parseRobots is the main entry point for parsing a robots.txt file.
parseRobots :: ByteString -> Either String Robot
parseRobots input = case parsed of
  -- special case no parsable lines and rubbish
  Right ([], out@(_:_)) ->
    Left ("no parsable lines: " ++ (show out))
  _ -> parsed

  where parsed = parseOnly robotP
              . BS.unlines
  -- Filthy hack to account for the fact we don't grab sitemaps
  -- properly. people seem to just whack them anywhere, which makes it
  -- hard to write a nice parser for them.
              . filter (not . ( "Sitemap:" `BS.isPrefixOf`))
              . filter (not . ( "Host:"    `BS.isPrefixOf`))
              . filter (\x -> BS.head x /= '#' )
              . filter (not . BS.null)
              . map strip
              . BS.lines
              -- worst way of handling window newlines ever
              . BS.filter (/= '\r')
              $ input

robotP :: Parser Robot
robotP = do
  (dirs, unparsable) <- partitionEithers <$> many  (eitherP agentDirectiveP unparsableP) <?> "robot"
  return (dirs, filter (/= "") unparsable)

unparsableP = takeTill (=='\n') <* endOfLine -- char '\n'

agentDirectiveP = (,) <$> many1 agentP <*> many1 directiveP <?> "agentDirective"


skipSpace :: Parser ()
skipSpace = skipWhile (\x -> x==' ' || x == '\t')

directiveP :: Parser Directive
directiveP = choice [ Allow <$>      (stringCI "Allow:"       >> skipSpace >> tokenP)
                    , (stringCI "Disallow:"    >> skipSpace >>
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
                    , CrawlDelay <$> (stringCI "Crawl-delay:" >>  skipSpace >>decimal)
                    ] <* commentsP <?> "directive"

agentP :: Parser UserAgent
agentP = do
  stringCI "user-agent:"
  skipSpace
  ((string "*" >> return Wildcard) <|>
   (Literal  <$> tokenWithSpacesP)) <* skipSpace <* endOfLine <?> "agent"


commentsP :: Parser ()
commentsP = skipSpace >>
            (   (string "#" >> takeTill (=='\n') >> skipSpace >> endOfLine)
            <|> (endOfLine >> return ())
            <|> return ())

tokenP :: Parser ByteString
tokenP = skipSpace >> takeWhile1 (not . isSpace) <* skipSpace
tokenWithSpacesP :: Parser ByteString
tokenWithSpacesP = skipSpace >> takeWhile1 (not . (\c -> c == '#' || c == '\n')) 
							 <* takeTill (=='\n')

-- I lack the art to make this prettier.
canAccess :: ByteString -> Robot -> Path -> Bool
canAccess _ _ "/robots.txt" = True -- special-cased
canAccess agent (robot,_) path = case stanzas of
  [] -> True
  ((_,directives):_) -> matchingDirective directives
  where stanzas = catMaybes [find ((any (`isLiteralSubstring` agent))  . fst) robot,
                             find ((Wildcard `elem`) . fst) robot]


        isLiteralSubstring (Literal a) us = a `BS.isInfixOf` us
        isLiteralSubstring _ _ = False
        matchingDirective [] = True
        matchingDirective (x:xs) = case x of
          Allow robot_path ->
            robot_path `BS.isPrefixOf` path || matchingDirective xs
          Disallow robot_path ->
            (not $ robot_path `BS.isPrefixOf` path) && matchingDirective xs

          _ -> matchingDirective xs
