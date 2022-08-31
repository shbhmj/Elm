module LuciansLusciousLasagna exposing (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes)
-- https://exercism.org/tracks/elm/exercises/lucians-luscious-lasagna

expectedMinutesInOven = 40

preparationTimeInMinutes numberOfLayers = numberOfLayers*2

elapsedTimeInMinutes numberOfLayers expMinutesInOven = preparationTimeInMinutes + expMinutesInOven