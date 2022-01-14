
local aspectService = require("modules.aspectcommonservices.AspectService")


aspectService.get(TypeEnum.assemblingMachine,"se-core-miner"):remove()


data.raw["assembling-machine"]["se-core-miner"] = nil
data.raw["mining-drill"]["se-core-miner-drill"] = nil
data.raw["item"]["se-core-miner"] = nil
data.raw["recipe"]["se-core-miner"] = nil
data.raw["technology"]["se-core-miner"].effects = nil