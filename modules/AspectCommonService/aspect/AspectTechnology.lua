
---@class aspectTechnology
local aspectTechnology = {}


----通用内部操作方法 ----- 开始----->>>>
---@return aspectTechnology
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
---@return aspectTechnology
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


---@return aspectTechnology
function aspectTechnology:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该aspectTechnology
---@return aspectTechnology
function aspectTechnology:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该aspectTechnology至数据原型
---@return aspectTechnology
function aspectTechnology:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该aspectTechnology至数据原型
---@return aspectTechnology
function aspectTechnology:joinToData()
    return self:insertToData()
end

--加入该aspectTechnology至数据原型
---@return aspectTechnology
function aspectTechnology:insertInto()
    return self:insertToData()
end

--更新该aspectTechnology至数据原型
---@return aspectTechnology
function aspectTechnology:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
---@return boolean
function aspectTechnology:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

--从其他aspectTechnology转入
---@return aspectTechnology
function aspectTechnology:import(object)
    self:setLuaObject(object:getLuaObject())
    return self
end
----通用内部操作方法 ----- 结束 -----<<<<






---@return any
function aspectTechnology:getIcons()
    return self:getProperty(icons)
end


---@return any
function aspectTechnology:getIcon()
    return self:getProperty(icon)
end


---@return any
function aspectTechnology:getIconSize()
    return self:getProperty(iconSize)
end


---@return any
function aspectTechnology:getUnit()
    return self:getProperty(unit)
end


---@return any
function aspectTechnology:getEffects()
    return self:getProperty(effects)
end


---@return any
function aspectTechnology:getEnabled()
    return self:getProperty(enabled)
end


---@return any
function aspectTechnology:getExpensive()
    return self:getProperty(expensive)
end


---@return any
function aspectTechnology:getHidden()
    return self:getProperty(hidden)
end


---@return any
function aspectTechnology:getIgnoreTechCostMultiplier()
    return self:getProperty(ignoreTechCostMultiplier)
end


---@return any
function aspectTechnology:getMaxLevel()
    return self:getProperty(maxLevel)
end


---@return any
function aspectTechnology:getNormal()
    return self:getProperty(normal)
end


---@return any
function aspectTechnology:getPrerequisites()
    return self:getProperty(prerequisites)
end


---@return any
function aspectTechnology:getUpgrade()
    return self:getProperty(upgrade)
end


---@return any
function aspectTechnology:getVisibleWhenDisabled()
    return self:getProperty(visibleWhenDisabled)
end


---@return any
function aspectTechnology:getInheritedfromPrototypeBase()
    return self:getProperty(inheritedfromPrototypeBase)
end


---@return any
function aspectTechnology:getName()
    return self:getProperty(name)
end


---@return any
function aspectTechnology:getType()
    return self:getProperty(type)
end


---@return any
function aspectTechnology:getLocalisedDescription()
    return self:getProperty(localisedDescription)
end


---@return any
function aspectTechnology:getLocalisedName()
    return self:getProperty(localisedName)
end


---@return any
function aspectTechnology:getOrder()
    return self:getProperty(order)
end



---@return aspectTechnology
function aspectTechnology:setIcons(icons)
    return self:setProperty("icons",icons)
end


---@return aspectTechnology
function aspectTechnology:setIcon(icon)
    return self:setProperty("icon",icon)
end


---@return aspectTechnology
function aspectTechnology:setIconSize(iconSize)
    return self:setProperty("iconSize",iconSize)
end


---@return aspectTechnology
function aspectTechnology:setUnit(unit)
    return self:setProperty("unit",unit)
end


---@return aspectTechnology
function aspectTechnology:setEffects(effects)
    return self:setProperty("effects",effects)
end


---@return aspectTechnology
function aspectTechnology:setEnabled(enabled)
    return self:setProperty("enabled",enabled)
end


---@return aspectTechnology
function aspectTechnology:setExpensive(expensive)
    return self:setProperty("expensive",expensive)
end


---@return aspectTechnology
function aspectTechnology:setHidden(hidden)
    return self:setProperty("hidden",hidden)
end


---@return aspectTechnology
function aspectTechnology:setIgnoreTechCostMultiplier(ignoreTechCostMultiplier)
    return self:setProperty("ignoreTechCostMultiplier",ignoreTechCostMultiplier)
end


---@return aspectTechnology
function aspectTechnology:setMaxLevel(maxLevel)
    return self:setProperty("maxLevel",maxLevel)
end


---@return aspectTechnology
function aspectTechnology:setNormal(normal)
    return self:setProperty("normal",normal)
end


---@return aspectTechnology
function aspectTechnology:setPrerequisites(prerequisites)
    return self:setProperty("prerequisites",prerequisites)
end


---@return aspectTechnology
function aspectTechnology:setUpgrade(upgrade)
    return self:setProperty("upgrade",upgrade)
end


---@return aspectTechnology
function aspectTechnology:setVisibleWhenDisabled(visibleWhenDisabled)
    return self:setProperty("visibleWhenDisabled",visibleWhenDisabled)
end


---@return aspectTechnology
function aspectTechnology:setInheritedfromPrototypeBase(inheritedfromPrototypeBase)
    return self:setProperty("inheritedfromPrototypeBase",inheritedfromPrototypeBase)
end


---@return aspectTechnology
function aspectTechnology:setName(name)
    return self:setProperty("name",name)
end


---@return aspectTechnology
function aspectTechnology:setType(type)
    return self:setProperty("type",type)
end


---@return aspectTechnology
function aspectTechnology:setLocalisedDescription(localisedDescription)
    return self:setProperty("localisedDescription",localisedDescription)
end


---@return aspectTechnology
function aspectTechnology:setLocalisedName(localisedName)
    return self:setProperty("localisedName",localisedName)
end


---@return aspectTechnology
function aspectTechnology:setOrder(order)
    return self:setProperty("order",order)
end




return aspectTechnology