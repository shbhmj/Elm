module Exercises.TisburyTreasureHunt exposing (..)
-- https://exercism.org/tracks/elm/exercises/tisbury-treasure-hunt

type alias TreasureLocation = (Int, Char) 

type alias Treasure = { name: String, location: TreasureLocation}

type alias PlaceLocation = (Char, Int)

type alias Place = { name: String, location: PlaceLocation}


placeLocationToTreasureLocation : PlaceLocation -> TreasureLocation
placeLocationToTreasureLocation placeLocation =
    (Tuple.second placeLocation, Tuple.first placeLocation)


treasureLocationMatchesPlaceLocation : PlaceLocation -> TreasureLocation -> Bool
treasureLocationMatchesPlaceLocation placeLocation treasureLocation =
    if (Tuple.first placeLocation == Tuple.second treasureLocation) && (Tuple.second placeLocation == Tuple.first treasureLocation) then
        True
    else
        False


countPlaceTreasures : Place  -> List Treasure -> Int
countPlaceTreasures place treasures =
    List.filter (\t-> t.location == (placeLocationToTreasureLocation place.location)) treasures |> List.length


specialCaseSwapPossible : Treasure -> Place  -> Treasure -> Bool
specialCaseSwapPossible ( foundTreasure, _ ) ( place, _ ) ( desiredTreasure, _ ) =
    Debug.todo "implement this function"
