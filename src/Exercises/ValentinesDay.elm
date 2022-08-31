module ValentinesDay exposing (..)
-- https://exercism.org/tracks/elm/exercises/valentines-day

type Approval 
    = Yes
    | No
    | Maybe

type Cuisine 
    = Korean
    | Turkish

type Genre
    = Crime
    | Horror
    | Romance
    | Thriller

type Activity
    = BoardGame
    | Chill
    | Movie Genre
    | Restaurant Cuisine


rateActivity activity =
    case activity of
        BoardGame ->
                No
        Chill ->
                No
        Restaurant Korean -> 
                    Yes
        Restaurant Turkish ->
                    Maybe
        Movie Romance ->
            Yes
        Movie x->
            No
        
