
--[[data.raw["item"]["empty-barrel"].stack_size = 100
data.raw["item"]["water-barrel"].stack_size = 100
data.raw["item"]["crude-oil-barrel"].stack_size = 100
data.raw["item"]["heavy-oil-barrel"].stack_size = 100
data.raw["item"]["light-oil-barrel"].stack_size = 100
data.raw["item"]["lubricant-barrel"].stack_size = 100
data.raw["item"]["petroleum-gas-barrel"].stack_size = 100
data.raw["item"]["sulfuric-acid-barrel"].stack_size = 100]]


for name, fluid in pairs(data.raw["fluid"]) do

    local itemName = fluid.name.."-barrel"

    local item = data.raw["item"][itemName]

    if item~=nil then
	
        item.stack_size = 75

    end

end


