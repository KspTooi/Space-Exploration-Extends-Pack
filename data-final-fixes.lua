constEnum = require("enums.ConstEnum")
typeEnum = require("enums.TypeEnum")



require("starter.ModulesRemoverStarter")
require("starter.ModulesUpgraderStarter")


require "modules.se-delivery-cannon.delivery_cannon_capsule_item"



--[[require "modules.realistic-reactors.entity"
require "modules.realistic-reactors.item"
require "modules.realistic-reactors.receipe"
require "modules.realistic-reactors.technology"]]

require "modules.compact-reactor.item"

require "modules.compact-reactor.entity"
require "modules.compact-reactor.receipe"
require "modules.compact-reactor.technology"

data.raw["recipe"]["kscp-compact-nuclear-reactor"].hide=false





