module PunGen
    ( genPun
    ) where

import Data.Random
import Data.RVar

--Puts together the four words into the final "joke"
genPun :: RVar String
genPun = do
  adj <- pickAdj
  noun <- pickNoun adj
  adjSyn <- findSyn adj
  nounSyn <- findSyn noun
  return "What do you call a " ++ adjSyn ++ " " ++ nounSyn ++ "? A " ++ adj ++ " " ++ noun ++ "!"

--Picks the adjective
--Needs to pick a random adjective from the .csv file
pickAdj :: RVar String
pickAdj = return "bizarre"

--Picks the noun based on the adjective
--Needs to search through the .csv until it finds a noun that sounds similar to the adj
--First search for an exact match
--Then allow one vowel to differ
--Then allow one consonant to change voice
--Then reject, probably
pickNoun :: String -> RVar String
pickNoun adj = return "bazaar"


--Finds synonyms
--Needs to search through the word net data and find a synonym for the word
--Either hyponyms (things under) or hypernyms (things above)
findSyn :: RVar String
findSyn word = return "foobar"
