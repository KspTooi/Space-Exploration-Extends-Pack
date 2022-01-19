local mod_gui = require("mod-gui")

constEnum = require("enums.ConstEnum")
typeEnum = require("enums.TypeEnum")



unmark = require("modules.unmark-upgrade.UnmarkUpgrader")
surfaceManager = require("modules.surface-manager.SurfaceManager")



--Space Exploration Extend Pack
local modName = "ksptooi-server-commons-preprocess"
local version = "1.4-F"

local ctx = "KspTooi"


commands.add_command("clearup",
        "[KSCP-SurfaceManager]Force Remove Temp Surfaces",
        function(cmd)

            if cmd.player_index == nil then
                return
            end

            local pl = game.get_player(cmd.player_index)

            if pl==nil or pl.valid ~= true then
                return
            end

            if pl.admin == false then
                pl.print("你不是管理员.")
                return
            end

            surfaceManager.removeTempSurface()
            game.get_player(cmd.player_index).print("操作完成于" .. cmd.tick)

        end)



script.on_event(defines.events.on_marked_for_deconstruction, function(event)
    unmark.unmark_reactor(event)
end)



script.on_event(defines.events.on_player_created, function(event)
    local player = game.players[event.player_index]
    player.print("欢迎来到特色太空!"..player.name)
end)

script.on_event(defines.events.on_player_respawned, function(event)
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





