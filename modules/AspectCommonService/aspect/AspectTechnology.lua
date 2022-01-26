local aspectTechnology = {}


----通用内部操作方法 ----- 开始----->>>>
function aspectTechnology.create(luaObject)
    aspectTechnology.luaObject = luaObject
    return aspectTechnology;
end


--根据给定类型获取数据原型
function aspectTechnology.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为aspectTechnology
        return aspectTechnology.create(item)
    end

--获取于当前原型TYPE相同的新原型
function aspectTechnology:getSame(name)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then

        local item = nil

        if name~=nil then
            item = table.deepcopy(data.raw[luaEntity.type][name])
        end

        if name==nil then
            item = table.deepcopy(data.raw[luaEntity.type][luaEntity.name])
        end

        --将luaEntity封装为aspectTechnology
        return aspectTechnology.create(item)

    end

    return aspectTechnology.create(nil)
end

--基本设值方法(含有非空检查)
function aspectTechnology:setProperty(property,value)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity[property] = value
    end

    return self
end

--基本取值方法(含有非空检查)
function aspectTechnology:getProperty(propertyName)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity[propertyName]
    end

    return nil
end

--获取当前上下文中的LUAOBJECT
function aspectTechnology:getLuaObject()
    return self.luaObject
end

--设置当前上下文中的LUAOBJECT
function aspectTechnology:setLuaObject(luaObject)
    self.luaObject = luaObject
end


function aspectTechnology:getType()
    return self:getProperty("type")
end


function aspectTechnology:getName()
    return self:getProperty("name")
end


function aspectTechnology:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该aspectTechnology
function aspectTechnology:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该aspectTechnology至数据原型
function aspectTechnology:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该aspectTechnology至数据原型
function aspectTechnology:joinToData()
    return self:insertToData()
end

--加入该aspectTechnology至数据原型
function aspectTechnology:insertInto()
    return self:insertToData()
end

--更新该aspectTechnology至数据原型
function aspectTechnology:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
function aspectTechnology:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

--从其他aspectTechnology转入
function aspectTechnology:import(object)
    self:setLuaObject(object:getLuaObject())
    return self
end
----通用内部操作方法 ----- 结束 -----<<<<


function aspectTechnology:getTechnologyIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectTechnology:setTechnologyIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectTechnology:getTechnologyIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectTechnology:setTechnologyIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectTechnology:getTechnologyIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectTechnology:setTechnologyIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectTechnology:getTechnologyUnit(unit)
	return self:getProperty("unit",unit)
end

function aspectTechnology:setTechnologyUnit(unit)
	return self:setProperty("unit",unit)
end

function aspectTechnology:getTechnologyEffects(effects)
	return self:getProperty("effects",effects)
end

function aspectTechnology:setTechnologyEffects(effects)
	return self:setProperty("effects",effects)
end

function aspectTechnology:getTechnologyEnabled(enabled)
	return self:getProperty("enabled",enabled)
end

function aspectTechnology:setTechnologyEnabled(enabled)
	return self:setProperty("enabled",enabled)
end

function aspectTechnology:getTechnologyExpensive(expensive)
	return self:getProperty("expensive",expensive)
end

function aspectTechnology:setTechnologyExpensive(expensive)
	return self:setProperty("expensive",expensive)
end

function aspectTechnology:getTechnologyHidden(hidden)
	return self:getProperty("hidden",hidden)
end

function aspectTechnology:setTechnologyHidden(hidden)
	return self:setProperty("hidden",hidden)
end

function aspectTechnology:getTechnologyIgnoreTechCostMultiplier(ignoreTechCostMultiplier)
	return self:getProperty("ignore_tech_cost_multiplier",ignoreTechCostMultiplier)
end

function aspectTechnology:setTechnologyIgnoreTechCostMultiplier(ignoreTechCostMultiplier)
	return self:setProperty("ignore_tech_cost_multiplier",ignoreTechCostMultiplier)
end

function aspectTechnology:getTechnologyMaxLevel(maxLevel)
	return self:getProperty("max_level",maxLevel)
end

function aspectTechnology:setTechnologyMaxLevel(maxLevel)
	return self:setProperty("max_level",maxLevel)
end

function aspectTechnology:getTechnologyNormal(normal)
	return self:getProperty("normal",normal)
end

function aspectTechnology:setTechnologyNormal(normal)
	return self:setProperty("normal",normal)
end

function aspectTechnology:getTechnologyPrerequisites(prerequisites)
	return self:getProperty("prerequisites",prerequisites)
end

function aspectTechnology:setTechnologyPrerequisites(prerequisites)
	return self:setProperty("prerequisites",prerequisites)
end

function aspectTechnology:getTechnologyUpgrade(upgrade)
	return self:getProperty("upgrade",upgrade)
end

function aspectTechnology:setTechnologyUpgrade(upgrade)
	return self:setProperty("upgrade",upgrade)
end

function aspectTechnology:getTechnologyVisibleWhenDisabled(visibleWhenDisabled)
	return self:getProperty("visible_when_disabled",visibleWhenDisabled)
end

function aspectTechnology:setTechnologyVisibleWhenDisabled(visibleWhenDisabled)
	return self:setProperty("visible_when_disabled",visibleWhenDisabled)
end

function aspectTechnology:getTechnologyName(name)
	return self:getProperty("name",name)
end

function aspectTechnology:setTechnologyName(name)
	return self:setProperty("name",name)
end

function aspectTechnology:getTechnologyType(type)
	return self:getProperty("type",type)
end

function aspectTechnology:setTechnologyType(type)
	return self:setProperty("type",type)
end

function aspectTechnology:getTechnologyLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectTechnology:setTechnologyLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectTechnology:getTechnologyLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectTechnology:setTechnologyLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectTechnology:getTechnologyOrder(order)
	return self:getProperty("order",order)
end

function aspectTechnology:setTechnologyOrder(order)
	return self:setProperty("order",order)
end




return aspectTechnology