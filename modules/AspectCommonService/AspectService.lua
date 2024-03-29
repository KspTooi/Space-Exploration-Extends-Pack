---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/1/14 17:23

local aspectObject = require("aspect.AspectObject")
local aspectRecipe = require("aspect.AspectRecipe")
db = require("DataBuilderService")           ----数据源服务
aspectConverter = require("AspectConverter") ----类型转换器


local aspectService = {}

---@return aspectObject
function aspectService.create(type,name)
    local ao = aspectObject.create({})
    ao:setProperty("type",type)
    ao:setName(name)
    return ao
end


function aspectService.getList(type)
    return data.raw[type]
end


---@return aspectObject
function aspectService.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为AspectObject
    return aspectObject.create(item)
end

---@return aspectObject
function aspectService.getItem(name)

    --获取luaEntity
    local item = table.deepcopy(data.raw["item"][name])

    --将luaEntity封装为AspectObject
    return aspectObject.create(item)

end

---@return aspectObject
function aspectService.getRecipe(name)
    local recipe = table.deepcopy(data.raw["recipe"][name])
    return aspectObject.create(recipe)
end

---@return aspectObject
function aspectService.getEntity(name)
    local entity = table.deepcopy(data.raw["entity"][name])
    return aspectObject.create(entity)
end

---@return aspectObject
function aspectService.getTechnology(name)
    local technology = table.deepcopy(data.raw["technology"][name])
    return aspectObject.create(technology)
end


function aspectService.forRecipe(import)
    return aspectRecipe:import(import);
end

return aspectService


