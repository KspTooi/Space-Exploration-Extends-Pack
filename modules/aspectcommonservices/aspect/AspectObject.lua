---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/1/14 16:53
---

local aspectObject = {}


----静态内部操作方法 ----- 开始-----

function aspectObject.create(luaObject)
    aspectObject.luaObject = luaObject
    return aspectObject;
end


--根据给定类型获取数据原型
function aspectObject.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为AspectObject
    return aspectObject.create(item)
end

--获取于当前原型TYPE相同的新原型
function aspectObject:getSame(name)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then

        --获取luaEntity
        local item = table.deepcopy(data.raw[luaEntity.type][name])

        --将luaEntity封装为AspectObject
        return aspectObject.create(item)
    end

    return aspectObject.create(nil)
end

--基本设值方法(含有非空检查)
function aspectObject:setProperty(property,value)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity[property] = value
    end

    return self
end

--基本取值方法(含有非空检查)
function aspectObject:getProperty(propertyName)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity[propertyName]
    end

    return nil
end

--获取当前上下文中的LUAOBJECT
function aspectObject:getLuaObject()
    return self.luaObject
end

--设置当前上下文中的LUAOBJECT
function aspectObject:setLuaObject(luaObject)
    self.luaObject = luaObject
end


function aspectObject:getType()
    return self:getProperty("type")
end


function aspectObject:getName()
    return self:getProperty("name")
end


function aspectObject:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该AspectObject
function aspectObject:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该AspectObject至数据原型
function aspectObject:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该AspectObject至数据原型
function aspectObject:joinToData()
    return self:insertToData()
end

--加入该AspectObject至数据原型
function aspectObject:insertInto()
    return self:insertToData()
end

--更新该AspectObject至数据原型
function aspectObject:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
function aspectObject:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end


----静态内部操作方法 ----- 结束-----







function aspectObject:setRecipeIngredients(ingredients)
    return self:setProperty("ingredients",ingredients)
end

function aspectObject:setRecipeResults(results)
    return self:setProperty("results",results)
end

function aspectObject:setTechnologyEffects(effects)


    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity.effects = effects
    end

    return self
end

function aspectObject:getTechnologyEffects()


    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity.effects
    end

    return nil
end

function aspectObject:setSolarPanelProduction(production)
    return self:setProperty("production",production)
end

function aspectObject:setEntityMaxHealth(maxHealth)
    return self:setProperty("max_health",maxHealth)
end

function aspectObject:setEntityEnergyUsage(energyUsage)
    return self:setProperty("energy_usage",energyUsage)
end

function aspectObject:setEntityCraftSpeed(craftSpeed)
    return self:setProperty("crafting_speed",craftSpeed)
end

function aspectObject:setEntityModuleSpecification(moduleSpecification)
    return self:setProperty("module_specification",moduleSpecification)
end


function aspectObject:setEntityCollisionMask(collisionMask)
    return self:setProperty("collision_mask",collisionMask)
end

function aspectObject:setAllowInSpace(allow)
    return self:setProperty("se_allow_in_space",allow)
end

function aspectObject:setItemStackSize(stackSize)
    return self:setProperty("stack_size",stackSize)
end

function aspectObject:setTechnologyPrerequisites(prerequisites)
    return self:setProperty("prerequisites",prerequisites)
end

function aspectObject:setTechnologyUnit(unit)
    return self:setProperty("unit",unit)
end




return aspectObject
