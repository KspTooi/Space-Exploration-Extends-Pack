---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/1/14 16:53
---

---@class aspectObject
local aspectObject = {}


----静态内部操作方法 ----- 开始----->>>>
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

        local item = nil

        if name~=nil then
            item = table.deepcopy(data.raw[luaEntity.type][name])
        end

        if name==nil then
            item = table.deepcopy(data.raw[luaEntity.type][luaEntity.name])
        end

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

--从其他AspectObject转入
function aspectObject:import(object)
    self:setLuaObject(object)
    return self;
end
----静态内部操作方法 ----- 结束 -----<<<<




---- 物品操作方法 ----- 开始 ----->>>>

function aspectObject:setItemStackSize(stackSize)
    return self:setProperty("stack_size",stackSize)
end

function aspectObject:setItemIcon(icon)
    return self:setProperty("icon",icon)
end

function aspectObject:setItemIconSize(iconSize)
    return self:setProperty("icon_size",iconSize)
end

function aspectObject:setItemPlaceResult(placeResult)
    return self:setProperty("place_result",placeResult)
end

function aspectObject:setFurnaceWorkingVisualisations(workingVisualisations)
    return self:setProperty("working_visualisations",workingVisualisations)
end

function aspectObject:setItemSubgroup(subgroup)
    return self:setProperty("subgroup",subgroup)
end

function aspectObject:setItemOrder(order)
    return self:setProperty("order",order)
end


---- 物品操作方法 ----- 结束 -----<<<<



---- 流体操作方法 ----- 开始 ----->>>>


function aspectObject:setFluidHeatCapacity(heatCapacity)
    return self:setProperty("heat_capacity",heatCapacity)
end

function aspectObject:setFluidGasTemperature(gasTemperature)
    return self:setProperty("gas_temperature",gasTemperature)
end

function aspectObject:setFluidFuelValue(fuelValue)
    return self:setProperty("fuel_value",fuelValue)
end

function aspectObject:setFluidBaseColor(baseColor)
    return self:setProperty("base_color",baseColor)
end

function aspectObject:setFluidFlowColor(flowColor)
    return self:setProperty("flow_color",flowColor)
end

function aspectObject:setFluidMaxTemperature(maxTemperature)
    return self:setProperty("max_temperature",maxTemperature)
end

function aspectObject:setFluidDefaultTemperature(defaultTemperature)
    return self:setProperty("default_temperature",defaultTemperature)
end



---- 流体操作方法 ----- 结束 ----->>>>




---- 实体操作方法 ----- 开始 ----->>>>

function aspectObject:setSolarPanelProduction(production)
    return self:setProperty("production",production)
end

function aspectObject:setEntityMaxHealth(maxHealth)
    return self:setProperty("max_health",maxHealth)
end

function aspectObject:setEntityEnergyUsage(energyUsage)
    return self:setProperty("energy_usage",energyUsage)
end

function aspectObject:setEntityEnergySource(energySource)
    return self:setProperty("energy_source",energySource)
end

function aspectObject:setEntityCraftSpeed(craftSpeed)
    return self:setProperty("crafting_speed",craftSpeed)
end

function aspectObject:setEntityModuleSpecification(moduleSpecification)
    return self:setProperty("module_specification",moduleSpecification)
end

function aspectObject:setEntityAllowedEffects(allowedEffects)
    return self:setProperty("allowed_effects",allowedEffects)
end

function aspectObject:setEntityCollisionMask(collisionMask)
    return self:setProperty("collision_mask",collisionMask)
end

function aspectObject:setAllowInSpace(allow)
    return self:setProperty("se_allow_in_space",allow)
end

function aspectObject:setEntityAnimation(animation)
    return self:setProperty("animation",animation)
end

function aspectObject:setEntityCollisionBox(collisionBox)
    return self:setProperty("collision_box",collisionBox)
end


function aspectObject:setEntitySelectionBox(selectionBox)
    return self:setProperty("selection_box",selectionBox)
end

function aspectObject:setEntityDrawingBox(drawingBox)
    return self:setProperty("drawing_box",drawingBox)
end

function aspectObject:setEntityCraftingCategories(craftingCategories)
    return self:setProperty("crafting_categories",craftingCategories)
end

function aspectObject:setEntityMinable(minable)
    return self:setProperty("minable",minable)
end




---- 实体操作方法 ----- 结束 -----<<<<




---- 合成表操作方法 ----- 开始 ----->>>>

function aspectObject:setRecipeIngredients(ingredients)
    return self:setProperty("ingredients",ingredients)
end

function aspectObject:setRecipeResults(results)
    return self:setProperty("results",results)
end

function aspectObject:setRecipeCategory(category)
    return self:setProperty("category",category)
end

function aspectObject:setRecipeIcon(icon)
    return self:setProperty("icon",icon)
end

function aspectObject:setRecipeIconSize(iconSize)
    return self:setProperty("icon_size",iconSize)
end

function aspectObject:getRecipeIngredients(ingredients)
    return self:getProperty(ingredients,ingredients)
end



---- 合成表操作方法 ----- 结束 -----<<<<






---- 科技操作方法 ----- 开始 ----->>>>


function aspectObject:setTechnologyPrerequisites(prerequisites)
    return self:setProperty("prerequisites",prerequisites)
end

function aspectObject:getTechnologyEffects()
    return self:getProperty("effects")
end

function aspectObject:setTechnologyEffects(effects)
    return self:setProperty("effects",effects)
end

function aspectObject:setTechnologyUnit(unit)
    return self:setProperty("unit",unit)
end

---- 科技操作方法 ----- 结束 -----<<<<



return aspectObject
