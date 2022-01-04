



local ctx = "KspTooi"
local version = "1.39B"

script.on_event(defines.events.on_player_created, function(event)
    local player = game.players[event.player_index]
end)


script.on_event(defines.events.on_player_joined_game, function(event)
    local player = game.players[event.player_index]
    player.print("当前KSCP版本:"..version)
end)





