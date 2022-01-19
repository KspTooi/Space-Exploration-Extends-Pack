---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/1/14 16:53
---

local aspectObject = {}

function aspectObject.create(luaObject)
    aspectObject.luaObject = luaObject
    return aspectObject;
end


function aspectObject:getLuaObject()
    return self.luaObject
end


function aspectObject:setLuaObject(luaObject)
    self.luaObject = luaObject
end

function aspectObject:getType()
    if self.luaObject~=nil then
        return self.luaObject.type
    end
end

function aspectObject:getName()
    if self.luaObject~=nil then
        return self.luaObject.name
    end
end


function aspectObject:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

function aspectObject:insertToData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

function aspectObject:update()
    self:insertToData()

    return self
end

function aspectObject:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

function aspectObject:setRecipeIngredients(ingredients)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity.ingredients = ingredients
    end

    return self
end

function aspectObject:setRecipeResults(results)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity.result = results
    end

    return self
end

function aspectObject:setTechnologyEffects(effects)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity.effects = effects
    end

    return self
end



return aspectObject
