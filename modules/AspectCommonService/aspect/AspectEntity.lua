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


function aspectEntity:getEntityIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectEntity:setEntityIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectEntity:getEntityIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectEntity:setEntityIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectEntity:getEntityIconSize(IconSpecification)
	return self:getProperty("icon_size(IconSpecification)",iconSize(IconSpecification))
end

function aspectEntity:setEntityIconSize(IconSpecification)
	return self:setProperty("icon_size(IconSpecification)",iconSize(IconSpecification))
end

function aspectEntity:getEntityAdditionalPastableEntities(additionalPastableEntities)
	return self:getProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectEntity:setEntityAdditionalPastableEntities(additionalPastableEntities)
	return self:setProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectEntity:getEntityAlertIconScale(alertIconScale)
	return self:getProperty("alert_icon_scale",alertIconScale)
end

function aspectEntity:setEntityAlertIconScale(alertIconScale)
	return self:setProperty("alert_icon_scale",alertIconScale)
end

function aspectEntity:getEntityAlertIconShift(alertIconShift)
	return self:getProperty("alert_icon_shift",alertIconShift)
end

function aspectEntity:setEntityAlertIconShift(alertIconShift)
	return self:setProperty("alert_icon_shift",alertIconShift)
end

function aspectEntity:getEntityAllowCopyPaste(allowCopyPaste)
	return self:getProperty("allow_copy_paste",allowCopyPaste)
end

function aspectEntity:setEntityAllowCopyPaste(allowCopyPaste)
	return self:setProperty("allow_copy_paste",allowCopyPaste)
end

function aspectEntity:getEntityAutoplace(autoplace)
	return self:getProperty("autoplace",autoplace)
end

function aspectEntity:setEntityAutoplace(autoplace)
	return self:setProperty("autoplace",autoplace)
end

function aspectEntity:getEntityBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:getProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectEntity:setEntityBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:setProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectEntity:getEntityBuildSound(buildSound)
	return self:getProperty("build_sound",buildSound)
end

function aspectEntity:setEntityBuildSound(buildSound)
	return self:setProperty("build_sound",buildSound)
end

function aspectEntity:getEntityCloseSound(closeSound)
	return self:getProperty("close_sound",closeSound)
end

function aspectEntity:setEntityCloseSound(closeSound)
	return self:setProperty("close_sound",closeSound)
end

function aspectEntity:getEntityCollisionBox(collisionBox)
	return self:getProperty("collision_box",collisionBox)
end

function aspectEntity:setEntityCollisionBox(collisionBox)
	return self:setProperty("collision_box",collisionBox)
end

function aspectEntity:getEntityCollisionMask(collisionMask)
	return self:getProperty("collision_mask",collisionMask)
end

function aspectEntity:setEntityCollisionMask(collisionMask)
	return self:setProperty("collision_mask",collisionMask)
end

function aspectEntity:getEntityCreatedEffect(createdEffect)
	return self:getProperty("created_effect",createdEffect)
end

function aspectEntity:setEntityCreatedEffect(createdEffect)
	return self:setProperty("created_effect",createdEffect)
end

function aspectEntity:getEntityCreatedSmoke(createdSmoke)
	return self:getProperty("created_smoke",createdSmoke)
end

function aspectEntity:setEntityCreatedSmoke(createdSmoke)
	return self:setProperty("created_smoke",createdSmoke)
end

function aspectEntity:getEntityDrawingBox(drawingBox)
	return self:getProperty("drawing_box",drawingBox)
end

function aspectEntity:setEntityDrawingBox(drawingBox)
	return self:setProperty("drawing_box",drawingBox)
end

function aspectEntity:getEntityEmissionsPerSecond(emissionsPerSecond)
	return self:getProperty("emissions_per_second",emissionsPerSecond)
end

function aspectEntity:setEntityEmissionsPerSecond(emissionsPerSecond)
	return self:setProperty("emissions_per_second",emissionsPerSecond)
end

function aspectEntity:getEntityEnemyMapColor(enemyMapColor)
	return self:getProperty("enemy_map_color",enemyMapColor)
end

function aspectEntity:setEntityEnemyMapColor(enemyMapColor)
	return self:setProperty("enemy_map_color",enemyMapColor)
end

function aspectEntity:getEntityFastReplaceableGroup(fastReplaceableGroup)
	return self:getProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectEntity:setEntityFastReplaceableGroup(fastReplaceableGroup)
	return self:setProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectEntity:getEntityFlags(flags)
	return self:getProperty("flags",flags)
end

function aspectEntity:setEntityFlags(flags)
	return self:setProperty("flags",flags)
end

function aspectEntity:getEntityFriendlyMapColor(friendlyMapColor)
	return self:getProperty("friendly_map_color",friendlyMapColor)
end

function aspectEntity:setEntityFriendlyMapColor(friendlyMapColor)
	return self:setProperty("friendly_map_color",friendlyMapColor)
end

function aspectEntity:getEntityHitVisualizationBox(hitVisualizationBox)
	return self:getProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectEntity:setEntityHitVisualizationBox(hitVisualizationBox)
	return self:setProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectEntity:getEntityMapColor(mapColor)
	return self:getProperty("map_color",mapColor)
end

function aspectEntity:setEntityMapColor(mapColor)
	return self:setProperty("map_color",mapColor)
end

function aspectEntity:getEntityMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:getProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectEntity:setEntityMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:setProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectEntity:getEntityMinable(minable)
	return self:getProperty("minable",minable)
end

function aspectEntity:setEntityMinable(minable)
	return self:setProperty("minable",minable)
end

function aspectEntity:getEntityMinedSound(minedSound)
	return self:getProperty("mined_sound",minedSound)
end

function aspectEntity:setEntityMinedSound(minedSound)
	return self:setProperty("mined_sound",minedSound)
end

function aspectEntity:getEntityMiningSound(miningSound)
	return self:getProperty("mining_sound",miningSound)
end

function aspectEntity:setEntityMiningSound(miningSound)
	return self:setProperty("mining_sound",miningSound)
end

function aspectEntity:getEntityNextUpgrade(nextUpgrade)
	return self:getProperty("next_upgrade",nextUpgrade)
end

function aspectEntity:setEntityNextUpgrade(nextUpgrade)
	return self:setProperty("next_upgrade",nextUpgrade)
end

function aspectEntity:getEntityOpenSound(openSound)
	return self:getProperty("open_sound",openSound)
end

function aspectEntity:setEntityOpenSound(openSound)
	return self:setProperty("open_sound",openSound)
end

function aspectEntity:getEntityPlaceableBy(placeableBy)
	return self:getProperty("placeable_by",placeableBy)
end

function aspectEntity:setEntityPlaceableBy(placeableBy)
	return self:setProperty("placeable_by",placeableBy)
end

function aspectEntity:getEntityProtectedFromTileBuilding(protectedFromTileBuilding)
	return self:getProperty("protected_from_tile_building",protectedFromTileBuilding)
end

function aspectEntity:setEntityProtectedFromTileBuilding(protectedFromTileBuilding)
	return self:setProperty("protected_from_tile_building",protectedFromTileBuilding)
end

function aspectEntity:getEntityRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:getProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectEntity:setEntityRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:setProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectEntity:getEntityRemainsWhenMined(remainsWhenMined)
	return self:getProperty("remains_when_mined",remainsWhenMined)
end

function aspectEntity:setEntityRemainsWhenMined(remainsWhenMined)
	return self:setProperty("remains_when_mined",remainsWhenMined)
end

function aspectEntity:getEntityRemoveDecoratives(removeDecoratives)
	return self:getProperty("remove_decoratives",removeDecoratives)
end

function aspectEntity:setEntityRemoveDecoratives(removeDecoratives)
	return self:setProperty("remove_decoratives",removeDecoratives)
end

function aspectEntity:getEntityRotatedSound(rotatedSound)
	return self:getProperty("rotated_sound",rotatedSound)
end

function aspectEntity:setEntityRotatedSound(rotatedSound)
	return self:setProperty("rotated_sound",rotatedSound)
end

function aspectEntity:getEntitySelectableInGame(selectableInGame)
	return self:getProperty("selectable_in_game",selectableInGame)
end

function aspectEntity:setEntitySelectableInGame(selectableInGame)
	return self:setProperty("selectable_in_game",selectableInGame)
end

function aspectEntity:getEntitySelectionBox(selectionBox)
	return self:getProperty("selection_box",selectionBox)
end

function aspectEntity:setEntitySelectionBox(selectionBox)
	return self:setProperty("selection_box",selectionBox)
end

function aspectEntity:getEntitySelectionPriority(selectionPriority)
	return self:getProperty("selection_priority",selectionPriority)
end

function aspectEntity:setEntitySelectionPriority(selectionPriority)
	return self:setProperty("selection_priority",selectionPriority)
end

function aspectEntity:getEntityShootingCursorSize(shootingCursorSize)
	return self:getProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectEntity:setEntityShootingCursorSize(shootingCursorSize)
	return self:setProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectEntity:getEntityStickerBox(stickerBox)
	return self:getProperty("sticker_box",stickerBox)
end

function aspectEntity:setEntityStickerBox(stickerBox)
	return self:setProperty("sticker_box",stickerBox)
end

function aspectEntity:getEntitySubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectEntity:setEntitySubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectEntity:getEntityTileHeight(tileHeight)
	return self:getProperty("tile_height",tileHeight)
end

function aspectEntity:setEntityTileHeight(tileHeight)
	return self:setProperty("tile_height",tileHeight)
end

function aspectEntity:getEntityTileWidth(tileWidth)
	return self:getProperty("tile_width",tileWidth)
end

function aspectEntity:setEntityTileWidth(tileWidth)
	return self:setProperty("tile_width",tileWidth)
end

function aspectEntity:getEntityTriggerTargetMask(triggerTargetMask)
	return self:getProperty("trigger_target_mask",triggerTargetMask)
end

function aspectEntity:setEntityTriggerTargetMask(triggerTargetMask)
	return self:setProperty("trigger_target_mask",triggerTargetMask)
end

function aspectEntity:getEntityVehicleImpactSound(vehicleImpactSound)
	return self:getProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectEntity:setEntityVehicleImpactSound(vehicleImpactSound)
	return self:setProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectEntity:getEntityWaterReflection(waterReflection)
	return self:getProperty("water_reflection",waterReflection)
end

function aspectEntity:setEntityWaterReflection(waterReflection)
	return self:setProperty("water_reflection",waterReflection)
end

function aspectEntity:getEntityWorkingSound(workingSound)
	return self:getProperty("working_sound",workingSound)
end

function aspectEntity:setEntityWorkingSound(workingSound)
	return self:setProperty("working_sound",workingSound)
end

function aspectEntity:getEntityName(name)
	return self:getProperty("name",name)
end

function aspectEntity:setEntityName(name)
	return self:setProperty("name",name)
end

function aspectEntity:getEntityType(type)
	return self:getProperty("type",type)
end

function aspectEntity:setEntityType(type)
	return self:setProperty("type",type)
end

function aspectEntity:getEntityLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectEntity:setEntityLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectEntity:getEntityLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectEntity:setEntityLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectEntity:getEntityOrder(order)
	return self:getProperty("order",order)
end

function aspectEntity:setEntityOrder(order)
	return self:setProperty("order",order)
end




return aspectEntity