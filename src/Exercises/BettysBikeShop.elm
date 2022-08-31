module BettysBikeShop exposing (poundsToString,penceToPounds)
-- https://exercism.org/tracks/elm/exercises/bettys-bike-shop

penceToPounds : Int -> Float
penceToPounds pence =
   toFloat pence / 100

poundsToString : Float -> String
poundsToString pounds =
   "£"++ String.fromFloat pounds
