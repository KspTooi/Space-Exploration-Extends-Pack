local aspectRecipe = {}


----通用内部操作方法 ----- 开始----->>>>
function aspectRecipe.create(luaObject)
    aspectRecipe.luaObject = luaObject
    return aspectRecipe;
end


--根据给定类型获取数据原型
function aspectRecipe.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为aspectRecipe
        return aspectRecipe.create(item)
    end

--获取于当前原型TYPE相同的新原型
function aspectRecipe:getSame(name)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then

        local item = nil

        if name~=nil then
            item = table.deepcopy(data.raw[luaEntity.type][name])
        end

        if name==nil then
            item = table.deepcopy(data.raw[luaEntity.type][luaEntity.name])
        end

        --将luaEntity封装为aspectRecipe
        return aspectRecipe.create(item)

    end

    return aspectRecipe.create(nil)
end

--基本设值方法(含有非空检查)
function aspectRecipe:setProperty(property,value)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity[property] = value
    end

    return self
end

--基本取值方法(含有非空检查)
function aspectRecipe:getProperty(propertyName)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity[propertyName]
    end

    return nil
end

--获取当前上下文中的LUAOBJECT
function aspectRecipe:getLuaObject()
    return self.luaObject
end

--设置当前上下文中的LUAOBJECT
function aspectRecipe:setLuaObject(luaObject)
    self.luaObject = luaObject
end


function aspectRecipe:getType()
    return self:getProperty("type")
end


function aspectRecipe:getName()
    return self:getProperty("name")
end


function aspectRecipe:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该aspectRecipe
function aspectRecipe:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该aspectRecipe至数据原型
function aspectRecipe:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该aspectRecipe至数据原型
function aspectRecipe:joinToData()
    return self:insertToData()
end

--加入该aspectRecipe至数据原型
function aspectRecipe:insertInto()
    return self:insertToData()
end

--更新该aspectRecipe至数据原型
function aspectRecipe:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
function aspectRecipe:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

--从其他aspectRecipe转入
function aspectRecipe:import(object)
    self:setLuaObject(object:getLuaObject())
    return self
end
----通用内部操作方法 ----- 结束 -----<<<<


function aspectRecipe:getIngredients(ingredients)
	return self:getProperty("ingredients",ingredients)
end

function aspectRecipe:setIngredients(ingredients)
	return self:setProperty("ingredients",ingredients)
end

function aspectRecipe:getAllowAsIntermediate(allowAsIntermediate)
	return self:getProperty("allow_as_intermediate",allowAsIntermediate)
end

function aspectRecipe:setAllowAsIntermediate(allowAsIntermediate)
	return self:setProperty("allow_as_intermediate",allowAsIntermediate)
end

function aspectRecipe:getAllowDecomposition(allowDecomposition)
	return self:getProperty("allow_decomposition",allowDecomposition)
end

function aspectRecipe:setAllowDecomposition(allowDecomposition)
	return self:setProperty("allow_decomposition",allowDecomposition)
end

function aspectRecipe:getAllowInserterOverload(allowInserterOverload)
	return self:getProperty("allow_inserter_overload",allowInserterOverload)
end

function aspectRecipe:setAllowInserterOverload(allowInserterOverload)
	return self:setProperty("allow_inserter_overload",allowInserterOverload)
end

function aspectRecipe:getAllowIntermediates(allowIntermediates)
	return self:getProperty("allow_intermediates",allowIntermediates)
end

function aspectRecipe:setAllowIntermediates(allowIntermediates)
	return self:setProperty("allow_intermediates",allowIntermediates)
end

function aspectRecipe:getAlwaysShowMadeIn(alwaysShowMadeIn)
	return self:getProperty("always_show_made_in",alwaysShowMadeIn)
end

function aspectRecipe:setAlwaysShowMadeIn(alwaysShowMadeIn)
	return self:setProperty("always_show_made_in",alwaysShowMadeIn)
end

function aspectRecipe:getAlwaysShowProducts(alwaysShowProducts)
	return self:getProperty("always_show_products",alwaysShowProducts)
end

function aspectRecipe:setAlwaysShowProducts(alwaysShowProducts)
	return self:setProperty("always_show_products",alwaysShowProducts)
end

function aspectRecipe:getCategory(category)
	return self:getProperty("category",category)
end

function aspectRecipe:setCategory(category)
	return self:setProperty("category",category)
end

function aspectRecipe:getCraftingMachineTint(craftingMachineTint)
	return self:getProperty("crafting_machine_tint",craftingMachineTint)
end

function aspectRecipe:setCraftingMachineTint(craftingMachineTint)
	return self:setProperty("crafting_machine_tint",craftingMachineTint)
end

function aspectRecipe:getEmissionsMultiplier(emissionsMultiplier)
	return self:getProperty("emissions_multiplier",emissionsMultiplier)
end

function aspectRecipe:setEmissionsMultiplier(emissionsMultiplier)
	return self:setProperty("emissions_multiplier",emissionsMultiplier)
end

function aspectRecipe:getEnabled(enabled)
	return self:getProperty("enabled",enabled)
end

function aspectRecipe:setEnabled(enabled)
	return self:setProperty("enabled",enabled)
end

function aspectRecipe:getEnergyRequired(energyRequired)
	return self:getProperty("energy_required",energyRequired)
end

function aspectRecipe:setEnergyRequired(energyRequired)
	return self:setProperty("energy_required",energyRequired)
end

function aspectRecipe:getExpensive(expensive)
	return self:getProperty("expensive",expensive)
end

function aspectRecipe:setExpensive(expensive)
	return self:setProperty("expensive",expensive)
end

function aspectRecipe:getHidden(hidden)
	return self:getProperty("hidden",hidden)
end

function aspectRecipe:setHidden(hidden)
	return self:setProperty("hidden",hidden)
end

function aspectRecipe:getHideFromPlayerCrafting(hideFromPlayerCrafting)
	return self:getProperty("hide_from_player_crafting",hideFromPlayerCrafting)
end

function aspectRecipe:setHideFromPlayerCrafting(hideFromPlayerCrafting)
	return self:setProperty("hide_from_player_crafting",hideFromPlayerCrafting)
end

function aspectRecipe:getHideFromStats(hideFromStats)
	return self:getProperty("hide_from_stats",hideFromStats)
end

function aspectRecipe:setHideFromStats(hideFromStats)
	return self:setProperty("hide_from_stats",hideFromStats)
end

function aspectRecipe:getIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectRecipe:setIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectRecipe:getIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectRecipe:setIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectRecipe:getIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectRecipe:setIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectRecipe:getMainProduct(mainProduct)
	return self:getProperty("main_product",mainProduct)
end

function aspectRecipe:setMainProduct(mainProduct)
	return self:setProperty("main_product",mainProduct)
end

function aspectRecipe:getNormal(normal)
	return self:getProperty("normal",normal)
end

function aspectRecipe:setNormal(normal)
	return self:setProperty("normal",normal)
end

function aspectRecipe:getOverloadMultiplier(overloadMultiplier)
	return self:getProperty("overload_multiplier",overloadMultiplier)
end

function aspectRecipe:setOverloadMultiplier(overloadMultiplier)
	return self:setProperty("overload_multiplier",overloadMultiplier)
end

function aspectRecipe:getRequesterPasteMultiplier(requesterPasteMultiplier)
	return self:getProperty("requester_paste_multiplier",requesterPasteMultiplier)
end

function aspectRecipe:setRequesterPasteMultiplier(requesterPasteMultiplier)
	return self:setProperty("requester_paste_multiplier",requesterPasteMultiplier)
end

function aspectRecipe:getResult(result)
	return self:getProperty("result",result)
end

function aspectRecipe:setResult(result)
	return self:setProperty("result",result)
end

function aspectRecipe:getResultCount(resultCount)
	return self:getProperty("result_count",resultCount)
end

function aspectRecipe:setResultCount(resultCount)
	return self:setProperty("result_count",resultCount)
end

function aspectRecipe:getResults(results)
	return self:getProperty("results",results)
end

function aspectRecipe:setResults(results)
	return self:setProperty("results",results)
end

function aspectRecipe:getShowAmountInTitle(showAmountInTitle)
	return self:getProperty("show_amount_in_title",showAmountInTitle)
end

function aspectRecipe:setShowAmountInTitle(showAmountInTitle)
	return self:setProperty("show_amount_in_title",showAmountInTitle)
end

function aspectRecipe:getSubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectRecipe:setSubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectRecipe:getUnlockResults(unlockResults)
	return self:getProperty("unlock_results",unlockResults)
end

function aspectRecipe:setUnlockResults(unlockResults)
	return self:setProperty("unlock_results",unlockResults)
end

function aspectRecipe:getName(name)
	return self:getProperty("name",name)
end

function aspectRecipe:setName(name)
	return self:setProperty("name",name)
end

function aspectRecipe:getType(type)
	return self:getProperty("type",type)
end

function aspectRecipe:setType(type)
	return self:setProperty("type",type)
end

function aspectRecipe:getLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectRecipe:setLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectRecipe:getLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectRecipe:setLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectRecipe:getOrder(order)
	return self:getProperty("order",order)
end

function aspectRecipe:setOrder(order)
	return self:setProperty("order",order)
end




return aspectRecipe