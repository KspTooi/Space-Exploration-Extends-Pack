
---@class aspectItem
local aspectItem = {}


----通用内部操作方法 ----- 开始----->>>>
function aspectItem.create(luaObject)
    aspectItem.luaObject = luaObject
    return aspectItem;
end


--根据给定类型获取数据原型
function aspectItem.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为aspectItem
        return aspectItem.create(item)
    end

--获取于当前原型TYPE相同的新原型
function aspectItem:getSame(name)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then

        local item = nil

        if name~=nil then
            item = table.deepcopy(data.raw[luaEntity.type][name])
        end

        if name==nil then
            item = table.deepcopy(data.raw[luaEntity.type][luaEntity.name])
        end

        --将luaEntity封装为aspectItem
        return aspectItem.create(item)

    end

    return aspectItem.create(nil)
end

--基本设值方法(含有非空检查)
function aspectItem:setProperty(property,value)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity[property] = value
    end

    return self
end

--基本取值方法(含有非空检查)
function aspectItem:getProperty(propertyName)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity[propertyName]
    end

    return nil
end

--获取当前上下文中的LUAOBJECT
function aspectItem:getLuaObject()
    return self.luaObject
end

--设置当前上下文中的LUAOBJECT
function aspectItem:setLuaObject(luaObject)
    self.luaObject = luaObject
end


function aspectItem:getType()
    return self:getProperty("type")
end


function aspectItem:getName()
    return self:getProperty("name")
end


function aspectItem:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该aspectItem
function aspectItem:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该aspectItem至数据原型
function aspectItem:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该aspectItem至数据原型
function aspectItem:joinToData()
    return self:insertToData()
end

--加入该aspectItem至数据原型
function aspectItem:insertInto()
    return self:insertToData()
end

--更新该aspectItem至数据原型
function aspectItem:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
function aspectItem:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

--从其他aspectItem转入
function aspectItem:import(object)
    self:setLuaObject(object:getLuaObject())
    return self
end
----通用内部操作方法 ----- 结束 -----<<<<


function aspectItem:getIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectItem:setIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectItem:getIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectItem:setIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectItem:getIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectItem:setIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectItem:getStackSize(stackSize)
	return self:getProperty("stack_size",stackSize)
end

function aspectItem:setStackSize(stackSize)
	return self:setProperty("stack_size",stackSize)
end

function aspectItem:getBurntResult(burntResult)
	return self:getProperty("burnt_result",burntResult)
end

function aspectItem:setBurntResult(burntResult)
	return self:setProperty("burnt_result",burntResult)
end

function aspectItem:getCloseSound(closeSound)
	return self:getProperty("close_sound",closeSound)
end

function aspectItem:setCloseSound(closeSound)
	return self:setProperty("close_sound",closeSound)
end

function aspectItem:getDarkBackgroundIcons(darkBackgroundIcons)
	return self:getProperty("dark_background_icons",darkBackgroundIcons)
end

function aspectItem:setDarkBackgroundIcons(darkBackgroundIcons)
	return self:setProperty("dark_background_icons",darkBackgroundIcons)
end

function aspectItem:getDarkBackgroundIcon(darkBackgroundIcon)
	return self:getProperty("dark_background_icon",darkBackgroundIcon)
end

function aspectItem:setDarkBackgroundIcon(darkBackgroundIcon)
	return self:setProperty("dark_background_icon",darkBackgroundIcon)
end

function aspectItem:getIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectItem:setIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectItem:getDefaultRequestAmount(defaultRequestAmount)
	return self:getProperty("default_request_amount",defaultRequestAmount)
end

function aspectItem:setDefaultRequestAmount(defaultRequestAmount)
	return self:setProperty("default_request_amount",defaultRequestAmount)
end

function aspectItem:getFlags(flags)
	return self:getProperty("flags",flags)
end

function aspectItem:setFlags(flags)
	return self:setProperty("flags",flags)
end

function aspectItem:getFuelAccelerationMultiplier(fuelAccelerationMultiplier)
	return self:getProperty("fuel_acceleration_multiplier",fuelAccelerationMultiplier)
end

function aspectItem:setFuelAccelerationMultiplier(fuelAccelerationMultiplier)
	return self:setProperty("fuel_acceleration_multiplier",fuelAccelerationMultiplier)
end

function aspectItem:getFuelCategory(fuelCategory)
	return self:getProperty("fuel_category",fuelCategory)
end

function aspectItem:setFuelCategory(fuelCategory)
	return self:setProperty("fuel_category",fuelCategory)
end

function aspectItem:getFuelEmissionsMultiplier(fuelEmissionsMultiplier)
	return self:getProperty("fuel_emissions_multiplier",fuelEmissionsMultiplier)
end

function aspectItem:setFuelEmissionsMultiplier(fuelEmissionsMultiplier)
	return self:setProperty("fuel_emissions_multiplier",fuelEmissionsMultiplier)
end

function aspectItem:getFuelGlowColor(fuelGlowColor)
	return self:getProperty("fuel_glow_color",fuelGlowColor)
end

function aspectItem:setFuelGlowColor(fuelGlowColor)
	return self:setProperty("fuel_glow_color",fuelGlowColor)
end

function aspectItem:getFuelTopSpeedMultiplier(fuelTopSpeedMultiplier)
	return self:getProperty("fuel_top_speed_multiplier",fuelTopSpeedMultiplier)
end

function aspectItem:setFuelTopSpeedMultiplier(fuelTopSpeedMultiplier)
	return self:setProperty("fuel_top_speed_multiplier",fuelTopSpeedMultiplier)
end

function aspectItem:getFuelValue(fuelValue)
	return self:getProperty("fuel_value",fuelValue)
end

function aspectItem:setFuelValue(fuelValue)
	return self:setProperty("fuel_value",fuelValue)
end

function aspectItem:getOpenSound(openSound)
	return self:getProperty("open_sound",openSound)
end

function aspectItem:setOpenSound(openSound)
	return self:setProperty("open_sound",openSound)
end

function aspectItem:getPictures(pictures)
	return self:getProperty("pictures",pictures)
end

function aspectItem:setPictures(pictures)
	return self:setProperty("pictures",pictures)
end

function aspectItem:getPlaceAsTile(placeAsTile)
	return self:getProperty("place_as_tile",placeAsTile)
end

function aspectItem:setPlaceAsTile(placeAsTile)
	return self:setProperty("place_as_tile",placeAsTile)
end

function aspectItem:getPlaceResult(placeResult)
	return self:getProperty("place_result",placeResult)
end

function aspectItem:setPlaceResult(placeResult)
	return self:setProperty("place_result",placeResult)
end

function aspectItem:getPlacedAsEquipmentResult(placedAsEquipmentResult)
	return self:getProperty("placed_as_equipment_result",placedAsEquipmentResult)
end

function aspectItem:setPlacedAsEquipmentResult(placedAsEquipmentResult)
	return self:setProperty("placed_as_equipment_result",placedAsEquipmentResult)
end

function aspectItem:getRocketLaunchProduct(rocketLaunchProduct)
	return self:getProperty("rocket_launch_product",rocketLaunchProduct)
end

function aspectItem:setRocketLaunchProduct(rocketLaunchProduct)
	return self:setProperty("rocket_launch_product",rocketLaunchProduct)
end

function aspectItem:getRocketLaunchProducts(rocketLaunchProducts)
	return self:getProperty("rocket_launch_products",rocketLaunchProducts)
end

function aspectItem:setRocketLaunchProducts(rocketLaunchProducts)
	return self:setProperty("rocket_launch_products",rocketLaunchProducts)
end

function aspectItem:getSubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectItem:setSubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectItem:getWireCount(wireCount)
	return self:getProperty("wire_count",wireCount)
end

function aspectItem:setWireCount(wireCount)
	return self:setProperty("wire_count",wireCount)
end

function aspectItem:getInheritedfromPrototypeBase(inheritedfromPrototypeBase)
	return self:getProperty("InheritedfromPrototypeBase",inheritedfromPrototypeBase)
end

function aspectItem:setInheritedfromPrototypeBase(inheritedfromPrototypeBase)
	return self:setProperty("InheritedfromPrototypeBase",inheritedfromPrototypeBase)
end

function aspectItem:getName(name)
	return self:getProperty("name",name)
end

function aspectItem:setName(name)
	return self:setProperty("name",name)
end

function aspectItem:getType(type)
	return self:getProperty("type",type)
end

function aspectItem:setType(type)
	return self:setProperty("type",type)
end

function aspectItem:getLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectItem:setLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectItem:getLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectItem:setLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectItem:getOrder(order)
	return self:getProperty("order",order)
end

function aspectItem:setOrder(order)
	return self:setProperty("order",order)
end




return aspectItem