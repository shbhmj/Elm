module AnnalynsInfiltration exposing (canFastAttack, canFreePrisoner, canSignalPrisoner, canSpy, stealthAttackDamage)
-- https://exercism.org/tracks/elm/exercises/annalyns-infiltration

canFastAttack : Bool -> Bool
canFastAttack knightIsAwake =
    not knightIsAwake


canSpy : Bool -> Bool -> Bool -> Bool
canSpy knightIsAwake archerIsAwake prisonerIsAwake =
    knightIsAwake || archerIsAwake || prisonerIsAwake


canSignalPrisoner : Bool -> Bool -> Bool
canSignalPrisoner archerIsAwake prisonerIsAwake =
     prisonerIsAwake && not archerIsAwake 


canFreePrisoner : Bool -> Bool -> Bool -> Bool -> Bool
canFreePrisoner knightIsAwake archerIsAwake prisonerIsAwake petDogIsPresent =
    if petDogIsPresent then
        not archerIsAwake
    else 
        prisonerIsAwake && not knightIsAwake &&  not archerIsAwake
        


stealthAttackDamage : Bool -> Int
stealthAttackDamage annalynIsDetected =
    if annalynIsDetected then
        7
    else
        12