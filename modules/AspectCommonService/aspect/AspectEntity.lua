local aspectEntity = {}


----通用内部操作方法 ----- 开始----->>>>
function aspectEntity.create(luaObject)
    aspectEntity.luaObject = luaObject
    return aspectEntity;
end


--根据给定类型获取数据原型
function aspectEntity.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为aspectEntity
        return aspectEntity.create(item)
    end

--获取于当前原型TYPE相同的新原型
function aspectEntity:getSame(name)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then

        local item = nil

        if name~=nil then
            item = table.deepcopy(data.raw[luaEntity.type][name])
        end

        if name==nil then
            item = table.deepcopy(data.raw[luaEntity.type][luaEntity.name])
        end

        --将luaEntity封装为aspectEntity
        return aspectEntity.create(item)

    end

    return aspectEntity.create(nil)
end

--基本设值方法(含有非空检查)
function aspectEntity:setProperty(property,value)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity[property] = value
    end

    return self
end

--基本取值方法(含有非空检查)
function aspectEntity:getProperty(propertyName)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity[propertyName]
    end

    return nil
end

--获取当前上下文中的LUAOBJECT
function aspectEntity:getLuaObject()
    return self.luaObject
end

--设置当前上下文中的LUAOBJECT
function aspectEntity:setLuaObject(luaObject)
    self.luaObject = luaObject
end


function aspectEntity:getType()
    return self:getProperty("type")
end


function aspectEntity:getName()
    return self:getProperty("name")
end


function aspectEntity:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该aspectEntity
function aspectEntity:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该aspectEntity至数据原型
function aspectEntity:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该aspectEntity至数据原型
function aspectEntity:joinToData()
    return self:insertToData()
end

--加入该aspectEntity至数据原型
function aspectEntity:insertInto()
    return self:insertToData()
end

--更新该aspectEntity至数据原型
function aspectEntity:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
function aspectEntity:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

--从其他aspectEntity转入
function aspectEntity:import(object)
    self:setLuaObject(object:getLuaObject())
    return self
end
----通用内部操作方法 ----- 结束 -----<<<<


function aspectEntity:getIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectEntity:setIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectEntity:getIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectEntity:setIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectEntity:getIconSize(IconSpecification)
	return self:getProperty("icon_size(IconSpecification)",iconSize(IconSpecification))
end

function aspectEntity:setIconSize(IconSpecification)
	return self:setProperty("icon_size(IconSpecification)",iconSize(IconSpecification))
end

function aspectEntity:getAdditionalPastableEntities(additionalPastableEntities)
	return self:getProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectEntity:setAdditionalPastableEntities(additionalPastableEntities)
	return self:setProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectEntity:getAlertIconScale(alertIconScale)
	return self:getProperty("alert_icon_scale",alertIconScale)
end

function aspectEntity:setAlertIconScale(alertIconScale)
	return self:setProperty("alert_icon_scale",alertIconScale)
end

function aspectEntity:getAlertIconShift(alertIconShift)
	return self:getProperty("alert_icon_shift",alertIconShift)
end

function aspectEntity:setAlertIconShift(alertIconShift)
	return self:setProperty("alert_icon_shift",alertIconShift)
end

function aspectEntity:getAllowCopyPaste(allowCopyPaste)
	return self:getProperty("allow_copy_paste",allowCopyPaste)
end

function aspectEntity:setAllowCopyPaste(allowCopyPaste)
	return self:setProperty("allow_copy_paste",allowCopyPaste)
end

function aspectEntity:getAutoplace(autoplace)
	return self:getProperty("autoplace",autoplace)
end

function aspectEntity:setAutoplace(autoplace)
	return self:setProperty("autoplace",autoplace)
end

function aspectEntity:getBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:getProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectEntity:setBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:setProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectEntity:getBuildSound(buildSound)
	return self:getProperty("build_sound",buildSound)
end

function aspectEntity:setBuildSound(buildSound)
	return self:setProperty("build_sound",buildSound)
end

function aspectEntity:getCloseSound(closeSound)
	return self:getProperty("close_sound",closeSound)
end

function aspectEntity:setCloseSound(closeSound)
	return self:setProperty("close_sound",closeSound)
end

function aspectEntity:getCollisionBox(collisionBox)
	return self:getProperty("collision_box",collisionBox)
end

function aspectEntity:setCollisionBox(collisionBox)
	return self:setProperty("collision_box",collisionBox)
end

function aspectEntity:getCollisionMask(collisionMask)
	return self:getProperty("collision_mask",collisionMask)
end

function aspectEntity:setCollisionMask(collisionMask)
	return self:setProperty("collision_mask",collisionMask)
end

function aspectEntity:getCreatedEffect(createdEffect)
	return self:getProperty("created_effect",createdEffect)
end

function aspectEntity:setCreatedEffect(createdEffect)
	return self:setProperty("created_effect",createdEffect)
end

function aspectEntity:getCreatedSmoke(createdSmoke)
	return self:getProperty("created_smoke",createdSmoke)
end

function aspectEntity:setCreatedSmoke(createdSmoke)
	return self:setProperty("created_smoke",createdSmoke)
end

function aspectEntity:getDrawingBox(drawingBox)
	return self:getProperty("drawing_box",drawingBox)
end

function aspectEntity:setDrawingBox(drawingBox)
	return self:setProperty("drawing_box",drawingBox)
end

function aspectEntity:getEmissionsPerSecond(emissionsPerSecond)
	return self:getProperty("emissions_per_second",emissionsPerSecond)
end

function aspectEntity:setEmissionsPerSecond(emissionsPerSecond)
	return self:setProperty("emissions_per_second",emissionsPerSecond)
end

function aspectEntity:getEnemyMapColor(enemyMapColor)
	return self:getProperty("enemy_map_color",enemyMapColor)
end

function aspectEntity:setEnemyMapColor(enemyMapColor)
	return self:setProperty("enemy_map_color",enemyMapColor)
end

function aspectEntity:getFastReplaceableGroup(fastReplaceableGroup)
	return self:getProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectEntity:setFastReplaceableGroup(fastReplaceableGroup)
	return self:setProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectEntity:getFlags(flags)
	return self:getProperty("flags",flags)
end

function aspectEntity:setFlags(flags)
	return self:setProperty("flags",flags)
end

function aspectEntity:getFriendlyMapColor(friendlyMapColor)
	return self:getProperty("friendly_map_color",friendlyMapColor)
end

function aspectEntity:setFriendlyMapColor(friendlyMapColor)
	return self:setProperty("friendly_map_color",friendlyMapColor)
end

function aspectEntity:getHitVisualizationBox(hitVisualizationBox)
	return self:getProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectEntity:setHitVisualizationBox(hitVisualizationBox)
	return self:setProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectEntity:getMapColor(mapColor)
	return self:getProperty("map_color",mapColor)
end

function aspectEntity:setMapColor(mapColor)
	return self:setProperty("map_color",mapColor)
end

function aspectEntity:getMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:getProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectEntity:setMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:setProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectEntity:getMinable(minable)
	return self:getProperty("minable",minable)
end

function aspectEntity:setMinable(minable)
	return self:setProperty("minable",minable)
end

function aspectEntity:getMinedSound(minedSound)
	return self:getProperty("mined_sound",minedSound)
end

function aspectEntity:setMinedSound(minedSound)
	return self:setProperty("mined_sound",minedSound)
end

function aspectEntity:getMiningSound(miningSound)
	return self:getProperty("mining_sound",miningSound)
end

function aspectEntity:setMiningSound(miningSound)
	return self:setProperty("mining_sound",miningSound)
end

function aspectEntity:getNextUpgrade(nextUpgrade)
	return self:getProperty("next_upgrade",nextUpgrade)
end

function aspectEntity:setNextUpgrade(nextUpgrade)
	return self:setProperty("next_upgrade",nextUpgrade)
end

function aspectEntity:getOpenSound(openSound)
	return self:getProperty("open_sound",openSound)
end

function aspectEntity:setOpenSound(openSound)
	return self:setProperty("open_sound",openSound)
end

function aspectEntity:getPlaceableBy(placeableBy)
	return self:getProperty("placeable_by",placeableBy)
end

function aspectEntity:setPlaceableBy(placeableBy)
	return self:setProperty("placeable_by",placeableBy)
end

function aspectEntity:getProtectedFromTileBuilding(protectedFromTileBuilding)
	return self:getProperty("protected_from_tile_building",protectedFromTileBuilding)
end

function aspectEntity:setProtectedFromTileBuilding(protectedFromTileBuilding)
	return self:setProperty("protected_from_tile_building",protectedFromTileBuilding)
end

function aspectEntity:getRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:getProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectEntity:setRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:setProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectEntity:getRemainsWhenMined(remainsWhenMined)
	return self:getProperty("remains_when_mined",remainsWhenMined)
end

function aspectEntity:setRemainsWhenMined(remainsWhenMined)
	return self:setProperty("remains_when_mined",remainsWhenMined)
end

function aspectEntity:getRemoveDecoratives(removeDecoratives)
	return self:getProperty("remove_decoratives",removeDecoratives)
end

function aspectEntity:setRemoveDecoratives(removeDecoratives)
	return self:setProperty("remove_decoratives",removeDecoratives)
end

function aspectEntity:getRotatedSound(rotatedSound)
	return self:getProperty("rotated_sound",rotatedSound)
end

function aspectEntity:setRotatedSound(rotatedSound)
	return self:setProperty("rotated_sound",rotatedSound)
end

function aspectEntity:getSelectableInGame(selectableInGame)
	return self:getProperty("selectable_in_game",selectableInGame)
end

function aspectEntity:setSelectableInGame(selectableInGame)
	return self:setProperty("selectable_in_game",selectableInGame)
end

function aspectEntity:getSelectionBox(selectionBox)
	return self:getProperty("selection_box",selectionBox)
end

function aspectEntity:setSelectionBox(selectionBox)
	return self:setProperty("selection_box",selectionBox)
end

function aspectEntity:getSelectionPriority(selectionPriority)
	return self:getProperty("selection_priority",selectionPriority)
end

function aspectEntity:setSelectionPriority(selectionPriority)
	return self:setProperty("selection_priority",selectionPriority)
end

function aspectEntity:getShootingCursorSize(shootingCursorSize)
	return self:getProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectEntity:setShootingCursorSize(shootingCursorSize)
	return self:setProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectEntity:getStickerBox(stickerBox)
	return self:getProperty("sticker_box",stickerBox)
end

function aspectEntity:setStickerBox(stickerBox)
	return self:setProperty("sticker_box",stickerBox)
end

function aspectEntity:getSubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectEntity:setSubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectEntity:getTileHeight(tileHeight)
	return self:getProperty("tile_height",tileHeight)
end

function aspectEntity:setTileHeight(tileHeight)
	return self:setProperty("tile_height",tileHeight)
end

function aspectEntity:getTileWidth(tileWidth)
	return self:getProperty("tile_width",tileWidth)
end

function aspectEntity:setTileWidth(tileWidth)
	return self:setProperty("tile_width",tileWidth)
end

function aspectEntity:getTriggerTargetMask(triggerTargetMask)
	return self:getProperty("trigger_target_mask",triggerTargetMask)
end

function aspectEntity:setTriggerTargetMask(triggerTargetMask)
	return self:setProperty("trigger_target_mask",triggerTargetMask)
end

function aspectEntity:getVehicleImpactSound(vehicleImpactSound)
	return self:getProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectEntity:setVehicleImpactSound(vehicleImpactSound)
	return self:setProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectEntity:getWaterReflection(waterReflection)
	return self:getProperty("water_reflection",waterReflection)
end

function aspectEntity:setWaterReflection(waterReflection)
	return self:setProperty("water_reflection",waterReflection)
end

function aspectEntity:getWorkingSound(workingSound)
	return self:getProperty("working_sound",workingSound)
end

function aspectEntity:setWorkingSound(workingSound)
	return self:setProperty("working_sound",workingSound)
end

function aspectEntity:getName(name)
	return self:getProperty("name",name)
end

function aspectEntity:setName(name)
	return self:setProperty("name",name)
end

function aspectEntity:getType(type)
	return self:getProperty("type",type)
end

function aspectEntity:setType(type)
	return self:setProperty("type",type)
end

function aspectEntity:getLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectEntity:setLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectEntity:getLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectEntity:setLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectEntity:getOrder(order)
	return self:getProperty("order",order)
end

function aspectEntity:setOrder(order)
	return self:setProperty("order",order)
end




return aspectEntity