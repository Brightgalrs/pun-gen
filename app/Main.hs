module Main where

import PunGen

main :: IO ()
main = 
  print $ genPun "strange" "market" "bizarre" "bazaar"
