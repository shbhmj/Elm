module TisburyTreasureHunt exposing (..)
-- https://exercism.org/tracks/elm/exercises/tisbury-treasure-hunt

type alias TreasureLocation = (Int, Char) 

type alias Treasure = (String, TreasureLocation)

type alias PlaceLocation = (Char, Int)

type alias Place = (String, PlaceLocation)


placeLocationToTreasureLocation : PlaceLocation -> TreasureLocation
placeLocationToTreasureLocation (col, row) =
    (row, col)


treasureLocationMatchesPlaceLocation : PlaceLocation -> TreasureLocation -> Bool
treasureLocationMatchesPlaceLocation placeLocation treasureLocation =
       placeLocation
        |> placeLocationToTreasureLocation
        |> (==) treasureLocation


countPlaceTreasures : Place  -> List Treasure -> Int
countPlaceTreasures (_, placeLocation) treasures =
     treasures
            |> List.map (\(_,treasureLocation)-> treasureLocation)
            |> List.filter (treasureLocationMatchesPlaceLocation placeLocation)
            |> List.length

specialCaseSwapPossible : Treasure -> Place  -> Treasure -> Bool
specialCaseSwapPossible( foundTreasure, _ ) ( place, _ ) ( desiredTreasure, _ ) =
     case (foundTreasure, place, desiredTreasure) of
        ("Brass Spyglass", "Abandoned Lighthouse", _) -> True
        ("Amethyst Octopus", "Stormy Breakwater", "Crystal Crab") -> True
        ("Amethyst Octopus", "Stormy Breakwater", "Glass Starfish") -> True
        ("Vintage Pirate Hat", "Harbor Managers Office", "Model Ship in Large Bottle") ->
            True
        ("Vintage Pirate Hat", "Harbor Managers Office", "Antique Glass Fishnet Float") ->
            True
        
        _ -> False
    