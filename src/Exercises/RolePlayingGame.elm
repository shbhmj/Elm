module RolePlayingGame exposing (Player, castSpell, introduce, revive)
-- https://exercism.org/tracks/elm/exercises/role-playing-game

type alias Player =
    { name : Maybe String
    , level : Int
    , health : Int
    , mana : Maybe Int
    }


introduce : Player -> String
introduce { name } =
    Maybe.withDefault "Mighty Magician" name


revive : Player -> Maybe Player
revive player =
    if player.health == 0 && player.level < 10 then
        Just { name = player.name, level = player.level, health = 100, mana = Nothing}
    else if player.health == 0 && player.level >= 10 then
        Just { name = player.name, level = player.level, health = 100, mana = Just 100}
    else Nothing



castSpell : Int -> Player -> ( Player, Int )
castSpell manaCost player =
    case player.mana of
        Just maybeMana -> 
            if maybeMana > 2 * manaCost then
                ({ name = player.name, level = player.level, health = player.health, mana = Just (maybeMana -  manaCost)}, 2 * manaCost)
            else 
                (player, 0)
        Nothing -> 
            if player.health - manaCost > 0 then
                ({ name = player.name, level = player.level, health = player.health - manaCost, mana = player.mana}, 0)
            else ({ name = player.name, level = player.level, health = 0, mana = player.mana},0)
 