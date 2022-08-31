module MariosMarvellousLasagna exposing (remainingTimeInMinutes)
-- https://exercism.org/tracks/elm/exercises/marios-marvellous-lasagna/

expectedMinutesInOven = 40
preparationTimeInMinutes numberOfLayers = numberOfLayers*2

remainingTimeInMinutes numberOfLayers numberOfMinutesSinceCookingStarted = 
    (numberOfLayers*2) + (expectedMinutesInOven- numberOfMinutesSinceCookingStarted )
   