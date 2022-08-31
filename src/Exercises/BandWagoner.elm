module Bandwagoner exposing (..)
-- https://exercism.org/tracks/elm/exercises/bandwagoner

type alias Coach =
    { name : String
    , formerPlayer : Bool
    }
type alias Stats =
    { wins : Int
    , losses : Int
    }

type alias Team = 
    { name : String
    , coach : Coach
    , stats : Stats
    }

replaceCoach: Coach -> Team -> Team
replaceCoach newCoach team =
    {team | coach = newCoach}
   

createTeam: String -> Stats -> Coach -> Team
createTeam name stats coach =
    { name = name
    , coach = coach
    , stats = stats
    }



rootForTeam: {team | stats : Stats} -> Bool 
rootForTeam team =
    team.stats.wins > team.stats.losses