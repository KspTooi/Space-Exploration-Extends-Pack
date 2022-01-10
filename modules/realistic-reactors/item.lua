---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/1/10 10:52
---

--舰载冷却塔
local originCollingTower = data.raw["item"]["rr-cooling-tower"]

local marinePropulsionCoolingTower = nil


if originCollingTower~=nil then

    marinePropulsionCoolingTower = table.deepcopy(data.raw["item"]["rr-cooling-tower"])
    marinePropulsionCoolingTower.name = "kscp-cooling-tower"
    marinePropulsionCoolingTower.place_result = "kscp-cooling-tower"
    ---marinePropulsionCoolingTower.localised_name = "kscp-cooling-tower"
	marinePropulsionCoolingTower.localised_description = "专用于飞船或空间站的冷却塔,使用了特殊的紧凑型设计使得它的效率非常高。只能放置于飞船或空间站。"
    data:extend({marinePropulsionCoolingTower})
end