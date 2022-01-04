require 'modules.disable_se_core_mine'
require 'modules.warehousing_update'

require 'modules.barreling.barreling_recipe_upgrade'

require 'modules.item-stack.item_stack_upgrade'





--[[
data.raw["recipe"]["fill-water-barrel"].ingredients ={
            {type = "fluid", name = "water", amount = 50, catalyst_amount = 50}
        }
		
data.raw["recipe"]["empty-water-barrel"].results={
            {type = "fluid", name = "water", amount = 50, catalyst_amount = 50}
        }
		
data.raw["recipe"]["fill-crude-oil-barrel"].ingredients ={
            {type = "fluid", name = "crude-oil", amount = 50, catalyst_amount = 50}
        }
		
data.raw["recipe"]["empty-crude-oil-barrel"].results={
            {type = "fluid", name = "crude-oil", amount = 50, catalyst_amount = 50}
        }]]
