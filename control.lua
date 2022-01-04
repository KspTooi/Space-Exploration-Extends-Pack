



local ctx = "KspTooi"
local version = "1.39A"

script.on_event(defines.events.on_player_created, function(event)
    local player = game.players[event.player_index]
    print("ksc-preprocess Version"..version)
end)



script.on_event(defines.events.on_player_joined_game, function(event)
    local player = game.players[event.player_index]
    print("ksc-preprocess Version"..version)
end)





