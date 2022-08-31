module TracksOnTracksOnTracks exposing (..)
-- https://exercism.org/tracks/elm/exercises/tracks-on-tracks-on-tracks/

newList : List String
newList = 
    []


existingList : List String
existingList =
    ["Elm","Clojure","Haskell"]


addLanguage : String -> List String -> List String
addLanguage language languages =
    language::languages


countLanguages : List String -> Int
countLanguages languages =
    List.length languages


reverseList : List String -> List String
reverseList languages =
    List.reverse languages


excitingList : List String -> Bool
excitingList languages =
   List.member "Elm" (List.take 1 languages) || List.member "Elm" (List.take 2 languages) && List.length languages<=3 