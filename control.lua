



local ctx = "KspTooi"
local version = "1.4D"

script.on_event(defines.events.on_player_created, function(event)
    local player = game.players[event.player_index]
end)


script.on_event(defines.events.on_player_joined_game, function(event)

    local player = game.players[event.player_index]
    player.print("当前KSCP版本:"..version)
    player.print("欢迎来到特色太空!"..player.name)

    local msg = settings.global["kscp-player-join-message"].value;

    if msg~=nil then
        player.print(msg)
    end

end)





