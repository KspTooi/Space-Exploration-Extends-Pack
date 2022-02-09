
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


function aspectItem:getItemIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectItem:setItemIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectItem:getItemIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectItem:setItemIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectItem:getItemIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectItem:setItemIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectItem:getItemStackSize(stackSize)
	return self:getProperty("stack_size",stackSize)
end

function aspectItem:setItemStackSize(stackSize)
	return self:setProperty("stack_size",stackSize)
end

function aspectItem:getItemBurntResult(burntResult)
	return self:getProperty("burnt_result",burntResult)
end

function aspectItem:setItemBurntResult(burntResult)
	return self:setProperty("burnt_result",burntResult)
end

function aspectItem:getItemCloseSound(closeSound)
	return self:getProperty("close_sound",closeSound)
end

function aspectItem:setItemCloseSound(closeSound)
	return self:setProperty("close_sound",closeSound)
end

function aspectItem:getItemDarkBackgroundIcons(darkBackgroundIcons)
	return self:getProperty("dark_background_icons",darkBackgroundIcons)
end

function aspectItem:setItemDarkBackgroundIcons(darkBackgroundIcons)
	return self:setProperty("dark_background_icons",darkBackgroundIcons)
end

function aspectItem:getItemDarkBackgroundIcon(darkBackgroundIcon)
	return self:getProperty("dark_background_icon",darkBackgroundIcon)
end

function aspectItem:setItemDarkBackgroundIcon(darkBackgroundIcon)
	return self:setProperty("dark_background_icon",darkBackgroundIcon)
end

function aspectItem:getItemIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectItem:setItemIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectItem:getItemDefaultRequestAmount(defaultRequestAmount)
	return self:getProperty("default_request_amount",defaultRequestAmount)
end

function aspectItem:setItemDefaultRequestAmount(defaultRequestAmount)
	return self:setProperty("default_request_amount",defaultRequestAmount)
end

function aspectItem:getItemFlags(flags)
	return self:getProperty("flags",flags)
end

function aspectItem:setItemFlags(flags)
	return self:setProperty("flags",flags)
end

function aspectItem:getItemFuelAccelerationMultiplier(fuelAccelerationMultiplier)
	return self:getProperty("fuel_acceleration_multiplier",fuelAccelerationMultiplier)
end

function aspectItem:setItemFuelAccelerationMultiplier(fuelAccelerationMultiplier)
	return self:setProperty("fuel_acceleration_multiplier",fuelAccelerationMultiplier)
end

function aspectItem:getItemFuelCategory(fuelCategory)
	return self:getProperty("fuel_category",fuelCategory)
end

function aspectItem:setItemFuelCategory(fuelCategory)
	return self:setProperty("fuel_category",fuelCategory)
end

function aspectItem:getItemFuelEmissionsMultiplier(fuelEmissionsMultiplier)
	return self:getProperty("fuel_emissions_multiplier",fuelEmissionsMultiplier)
end

function aspectItem:setItemFuelEmissionsMultiplier(fuelEmissionsMultiplier)
	return self:setProperty("fuel_emissions_multiplier",fuelEmissionsMultiplier)
end

function aspectItem:getItemFuelGlowColor(fuelGlowColor)
	return self:getProperty("fuel_glow_color",fuelGlowColor)
end

function aspectItem:setItemFuelGlowColor(fuelGlowColor)
	return self:setProperty("fuel_glow_color",fuelGlowColor)
end

function aspectItem:getItemFuelTopSpeedMultiplier(fuelTopSpeedMultiplier)
	return self:getProperty("fuel_top_speed_multiplier",fuelTopSpeedMultiplier)
end

function aspectItem:setItemFuelTopSpeedMultiplier(fuelTopSpeedMultiplier)
	return self:setProperty("fuel_top_speed_multiplier",fuelTopSpeedMultiplier)
end

function aspectItem:getItemFuelValue(fuelValue)
	return self:getProperty("fuel_value",fuelValue)
end

function aspectItem:setItemFuelValue(fuelValue)
	return self:setProperty("fuel_value",fuelValue)
end

function aspectItem:getItemOpenSound(openSound)
	return self:getProperty("open_sound",openSound)
end

function aspectItem:setItemOpenSound(openSound)
	return self:setProperty("open_sound",openSound)
end

function aspectItem:getItemPictures(pictures)
	return self:getProperty("pictures",pictures)
end

function aspectItem:setItemPictures(pictures)
	return self:setProperty("pictures",pictures)
end

function aspectItem:getItemPlaceAsTile(placeAsTile)
	return self:getProperty("place_as_tile",placeAsTile)
end

function aspectItem:setItemPlaceAsTile(placeAsTile)
	return self:setProperty("place_as_tile",placeAsTile)
end

function aspectItem:getItemPlaceResult(placeResult)
	return self:getProperty("place_result",placeResult)
end

function aspectItem:setItemPlaceResult(placeResult)
	return self:setProperty("place_result",placeResult)
end

function aspectItem:getItemPlacedAsEquipmentResult(placedAsEquipmentResult)
	return self:getProperty("placed_as_equipment_result",placedAsEquipmentResult)
end

function aspectItem:setItemPlacedAsEquipmentResult(placedAsEquipmentResult)
	return self:setProperty("placed_as_equipment_result",placedAsEquipmentResult)
end

function aspectItem:getItemRocketLaunchProduct(rocketLaunchProduct)
	return self:getProperty("rocket_launch_product",rocketLaunchProduct)
end

function aspectItem:setItemRocketLaunchProduct(rocketLaunchProduct)
	return self:setProperty("rocket_launch_product",rocketLaunchProduct)
end

function aspectItem:getItemRocketLaunchProducts(rocketLaunchProducts)
	return self:getProperty("rocket_launch_products",rocketLaunchProducts)
end

function aspectItem:setItemRocketLaunchProducts(rocketLaunchProducts)
	return self:setProperty("rocket_launch_products",rocketLaunchProducts)
end

function aspectItem:getItemSubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectItem:setItemSubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectItem:getItemWireCount(wireCount)
	return self:getProperty("wire_count",wireCount)
end

function aspectItem:setItemWireCount(wireCount)
	return self:setProperty("wire_count",wireCount)
end

function aspectItem:getItemInheritedfromPrototypeBase(inheritedfromPrototypeBase)
	return self:getProperty("InheritedfromPrototypeBase",inheritedfromPrototypeBase)
end

function aspectItem:setItemInheritedfromPrototypeBase(inheritedfromPrototypeBase)
	return self:setProperty("InheritedfromPrototypeBase",inheritedfromPrototypeBase)
end

function aspectItem:getItemName(name)
	return self:getProperty("name",name)
end

function aspectItem:setItemName(name)
	return self:setProperty("name",name)
end

function aspectItem:getItemType(type)
	return self:getProperty("type",type)
end

function aspectItem:setItemType(type)
	return self:setProperty("type",type)
end

function aspectItem:getItemLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectItem:setItemLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectItem:getItemLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectItem:setItemLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectItem:getItemOrder(order)
	return self:getProperty("order",order)
end

function aspectItem:setItemOrder(order)
	return self:setProperty("order",order)
end




return aspectItem