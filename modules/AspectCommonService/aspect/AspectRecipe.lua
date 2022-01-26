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


function aspectRecipe:getRecipeIngredients(ingredients)
	return self:getProperty("ingredients",ingredients)
end

function aspectRecipe:setRecipeIngredients(ingredients)
	return self:setProperty("ingredients",ingredients)
end

function aspectRecipe:getRecipeAllowAsIntermediate(allowAsIntermediate)
	return self:getProperty("allow_as_intermediate",allowAsIntermediate)
end

function aspectRecipe:setRecipeAllowAsIntermediate(allowAsIntermediate)
	return self:setProperty("allow_as_intermediate",allowAsIntermediate)
end

function aspectRecipe:getRecipeAllowDecomposition(allowDecomposition)
	return self:getProperty("allow_decomposition",allowDecomposition)
end

function aspectRecipe:setRecipeAllowDecomposition(allowDecomposition)
	return self:setProperty("allow_decomposition",allowDecomposition)
end

function aspectRecipe:getRecipeAllowInserterOverload(allowInserterOverload)
	return self:getProperty("allow_inserter_overload",allowInserterOverload)
end

function aspectRecipe:setRecipeAllowInserterOverload(allowInserterOverload)
	return self:setProperty("allow_inserter_overload",allowInserterOverload)
end

function aspectRecipe:getRecipeAllowIntermediates(allowIntermediates)
	return self:getProperty("allow_intermediates",allowIntermediates)
end

function aspectRecipe:setRecipeAllowIntermediates(allowIntermediates)
	return self:setProperty("allow_intermediates",allowIntermediates)
end

function aspectRecipe:getRecipeAlwaysShowMadeIn(alwaysShowMadeIn)
	return self:getProperty("always_show_made_in",alwaysShowMadeIn)
end

function aspectRecipe:setRecipeAlwaysShowMadeIn(alwaysShowMadeIn)
	return self:setProperty("always_show_made_in",alwaysShowMadeIn)
end

function aspectRecipe:getRecipeAlwaysShowProducts(alwaysShowProducts)
	return self:getProperty("always_show_products",alwaysShowProducts)
end

function aspectRecipe:setRecipeAlwaysShowProducts(alwaysShowProducts)
	return self:setProperty("always_show_products",alwaysShowProducts)
end

function aspectRecipe:getRecipeCategory(category)
	return self:getProperty("category",category)
end

function aspectRecipe:setRecipeCategory(category)
	return self:setProperty("category",category)
end

function aspectRecipe:getRecipeCraftingMachineTint(craftingMachineTint)
	return self:getProperty("crafting_machine_tint",craftingMachineTint)
end

function aspectRecipe:setRecipeCraftingMachineTint(craftingMachineTint)
	return self:setProperty("crafting_machine_tint",craftingMachineTint)
end

function aspectRecipe:getRecipeEmissionsMultiplier(emissionsMultiplier)
	return self:getProperty("emissions_multiplier",emissionsMultiplier)
end

function aspectRecipe:setRecipeEmissionsMultiplier(emissionsMultiplier)
	return self:setProperty("emissions_multiplier",emissionsMultiplier)
end

function aspectRecipe:getRecipeEnabled(enabled)
	return self:getProperty("enabled",enabled)
end

function aspectRecipe:setRecipeEnabled(enabled)
	return self:setProperty("enabled",enabled)
end

function aspectRecipe:getRecipeEnergyRequired(energyRequired)
	return self:getProperty("energy_required",energyRequired)
end

function aspectRecipe:setRecipeEnergyRequired(energyRequired)
	return self:setProperty("energy_required",energyRequired)
end

function aspectRecipe:getRecipeExpensive(expensive)
	return self:getProperty("expensive",expensive)
end

function aspectRecipe:setRecipeExpensive(expensive)
	return self:setProperty("expensive",expensive)
end

function aspectRecipe:getRecipeHidden(hidden)
	return self:getProperty("hidden",hidden)
end

function aspectRecipe:setRecipeHidden(hidden)
	return self:setProperty("hidden",hidden)
end

function aspectRecipe:getRecipeHideFromPlayerCrafting(hideFromPlayerCrafting)
	return self:getProperty("hide_from_player_crafting",hideFromPlayerCrafting)
end

function aspectRecipe:setRecipeHideFromPlayerCrafting(hideFromPlayerCrafting)
	return self:setProperty("hide_from_player_crafting",hideFromPlayerCrafting)
end

function aspectRecipe:getRecipeHideFromStats(hideFromStats)
	return self:getProperty("hide_from_stats",hideFromStats)
end

function aspectRecipe:setRecipeHideFromStats(hideFromStats)
	return self:setProperty("hide_from_stats",hideFromStats)
end

function aspectRecipe:getRecipeIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectRecipe:setRecipeIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectRecipe:getRecipeIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectRecipe:setRecipeIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectRecipe:getRecipeIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectRecipe:setRecipeIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectRecipe:getRecipeMainProduct(mainProduct)
	return self:getProperty("main_product",mainProduct)
end

function aspectRecipe:setRecipeMainProduct(mainProduct)
	return self:setProperty("main_product",mainProduct)
end

function aspectRecipe:getRecipeNormal(normal)
	return self:getProperty("normal",normal)
end

function aspectRecipe:setRecipeNormal(normal)
	return self:setProperty("normal",normal)
end

function aspectRecipe:getRecipeOverloadMultiplier(overloadMultiplier)
	return self:getProperty("overload_multiplier",overloadMultiplier)
end

function aspectRecipe:setRecipeOverloadMultiplier(overloadMultiplier)
	return self:setProperty("overload_multiplier",overloadMultiplier)
end

function aspectRecipe:getRecipeRequesterPasteMultiplier(requesterPasteMultiplier)
	return self:getProperty("requester_paste_multiplier",requesterPasteMultiplier)
end

function aspectRecipe:setRecipeRequesterPasteMultiplier(requesterPasteMultiplier)
	return self:setProperty("requester_paste_multiplier",requesterPasteMultiplier)
end

function aspectRecipe:getRecipeResult(result)
	return self:getProperty("result",result)
end

function aspectRecipe:setRecipeResult(result)
	return self:setProperty("result",result)
end

function aspectRecipe:getRecipeResultCount(resultCount)
	return self:getProperty("result_count",resultCount)
end

function aspectRecipe:setRecipeResultCount(resultCount)
	return self:setProperty("result_count",resultCount)
end

function aspectRecipe:getRecipeResults(results)
	return self:getProperty("results",results)
end

function aspectRecipe:setRecipeResults(results)
	return self:setProperty("results",results)
end

function aspectRecipe:getRecipeShowAmountInTitle(showAmountInTitle)
	return self:getProperty("show_amount_in_title",showAmountInTitle)
end

function aspectRecipe:setRecipeShowAmountInTitle(showAmountInTitle)
	return self:setProperty("show_amount_in_title",showAmountInTitle)
end

function aspectRecipe:getRecipeSubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectRecipe:setRecipeSubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectRecipe:getRecipeUnlockResults(unlockResults)
	return self:getProperty("unlock_results",unlockResults)
end

function aspectRecipe:setRecipeUnlockResults(unlockResults)
	return self:setProperty("unlock_results",unlockResults)
end

function aspectRecipe:getRecipeName(name)
	return self:getProperty("name",name)
end

function aspectRecipe:setRecipeName(name)
	return self:setProperty("name",name)
end

function aspectRecipe:getRecipeType(type)
	return self:getProperty("type",type)
end

function aspectRecipe:setRecipeType(type)
	return self:setProperty("type",type)
end

function aspectRecipe:getRecipeLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectRecipe:setRecipeLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectRecipe:getRecipeLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectRecipe:setRecipeLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectRecipe:getRecipeOrder(order)
	return self:getProperty("order",order)
end

function aspectRecipe:setRecipeOrder(order)
	return self:setProperty("order",order)
end




return aspectRecipe