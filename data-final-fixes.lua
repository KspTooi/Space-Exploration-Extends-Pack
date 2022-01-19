constEnum = require("enums.ConstEnum")
typeEnum = require("enums.TypeEnum")



require("starter.ModulesRemoverStarter")
require("starter.ModulesUpgraderStarter")


--[[require 'modules.barreling.barreling_recipe_upgrade']]


--[[require 'modules.disable_se_core_mine']]
--[[require 'modules.warehousing_update']]

require 'modules.item-stack.item_stack_upgrade'

require 'modules.factorissimo2.disable_factory'

require "modules.se-delivery-cannon.delivery_cannon_capsule_item"


require "modules.deadlock.DeadLockUpgrader"

require "modules.mine-drone.MineDroneUpgrader"


require "modules.realistic-reactors.entity"
require "modules.realistic-reactors.item"
require "modules.realistic-reactors.receipe"
require "modules.realistic-reactors.technology"

require "modules.compact-reactor.item"
--[[require 'modules.space-exploration.SpaceSolarPanelUpgrader']]
require "modules.compact-reactor.entity"
require "modules.compact-reactor.receipe"
require "modules.compact-reactor.technology"

data.raw["recipe"]["kscp-compact-nuclear-reactor"].hide=false





