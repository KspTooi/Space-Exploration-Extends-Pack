local aspectFurnace = {}


----通用内部操作方法 ----- 开始----->>>>
function aspectFurnace.create(luaObject)
    aspectFurnace.luaObject = luaObject
    return aspectFurnace;
end


--根据给定类型获取数据原型
function aspectFurnace.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为aspectFurnace
        return aspectFurnace.create(item)
    end

--获取于当前原型TYPE相同的新原型
function aspectFurnace:getSame(name)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then

        local item = nil

        if name~=nil then
            item = table.deepcopy(data.raw[luaEntity.type][name])
        end

        if name==nil then
            item = table.deepcopy(data.raw[luaEntity.type][luaEntity.name])
        end

        --将luaEntity封装为aspectFurnace
        return aspectFurnace.create(item)

    end

    return aspectFurnace.create(nil)
end

--基本设值方法(含有非空检查)
function aspectFurnace:setProperty(property,value)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity[property] = value
    end

    return self
end

--基本取值方法(含有非空检查)
function aspectFurnace:getProperty(propertyName)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity[propertyName]
    end

    return nil
end

--获取当前上下文中的LUAOBJECT
function aspectFurnace:getLuaObject()
    return self.luaObject
end

--设置当前上下文中的LUAOBJECT
function aspectFurnace:setLuaObject(luaObject)
    self.luaObject = luaObject
end


function aspectFurnace:getType()
    return self:getProperty("type")
end


function aspectFurnace:getName()
    return self:getProperty("name")
end


function aspectFurnace:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该aspectFurnace
function aspectFurnace:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该aspectFurnace至数据原型
function aspectFurnace:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该aspectFurnace至数据原型
function aspectFurnace:joinToData()
    return self:insertToData()
end

--加入该aspectFurnace至数据原型
function aspectFurnace:insertInto()
    return self:insertToData()
end

--更新该aspectFurnace至数据原型
function aspectFurnace:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
function aspectFurnace:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

--从其他aspectFurnace转入
function aspectFurnace:import(object)
    self:setLuaObject(object:getLuaObject())
    return self
end
----通用内部操作方法 ----- 结束 -----<<<<


function aspectFurnace:getResultInventorySize(resultInventorySize)
	return self:getProperty("result_inventory_size",resultInventorySize)
end

function aspectFurnace:setResultInventorySize(resultInventorySize)
	return self:setProperty("result_inventory_size",resultInventorySize)
end

function aspectFurnace:getSourceInventorySize(sourceInventorySize)
	return self:getProperty("source_inventory_size",sourceInventorySize)
end

function aspectFurnace:setSourceInventorySize(sourceInventorySize)
	return self:setProperty("source_inventory_size",sourceInventorySize)
end

function aspectFurnace:getCraftingCategories(craftingCategories)
	return self:getProperty("crafting_categories",craftingCategories)
end

function aspectFurnace:setCraftingCategories(craftingCategories)
	return self:setProperty("crafting_categories",craftingCategories)
end

function aspectFurnace:getCraftingSpeed(craftingSpeed)
	return self:getProperty("crafting_speed",craftingSpeed)
end

function aspectFurnace:setCraftingSpeed(craftingSpeed)
	return self:setProperty("crafting_speed",craftingSpeed)
end

function aspectFurnace:getEnergySource(energySource)
	return self:getProperty("energy_source",energySource)
end

function aspectFurnace:setEnergySource(energySource)
	return self:setProperty("energy_source",energySource)
end

function aspectFurnace:getEnergyUsage(energyUsage)
	return self:getProperty("energy_usage",energyUsage)
end

function aspectFurnace:setEnergyUsage(energyUsage)
	return self:setProperty("energy_usage",energyUsage)
end

function aspectFurnace:getAllowedEffects(allowedEffects)
	return self:getProperty("allowed_effects",allowedEffects)
end

function aspectFurnace:setAllowedEffects(allowedEffects)
	return self:setProperty("allowed_effects",allowedEffects)
end

function aspectFurnace:getAlwaysDrawIdleAnimation(alwaysDrawIdleAnimation)
	return self:getProperty("always_draw_idle_animation",alwaysDrawIdleAnimation)
end

function aspectFurnace:setAlwaysDrawIdleAnimation(alwaysDrawIdleAnimation)
	return self:setProperty("always_draw_idle_animation",alwaysDrawIdleAnimation)
end

function aspectFurnace:getAnimation(animation)
	return self:getProperty("animation",animation)
end

function aspectFurnace:setAnimation(animation)
	return self:setProperty("animation",animation)
end

function aspectFurnace:getBaseProductivity(baseProductivity)
	return self:getProperty("base_productivity",baseProductivity)
end

function aspectFurnace:setBaseProductivity(baseProductivity)
	return self:setProperty("base_productivity",baseProductivity)
end

function aspectFurnace:getDefaultRecipeTint(defaultRecipeTint)
	return self:getProperty("default_recipe_tint",defaultRecipeTint)
end

function aspectFurnace:setDefaultRecipeTint(defaultRecipeTint)
	return self:setProperty("default_recipe_tint",defaultRecipeTint)
end

function aspectFurnace:getDrawEntityInfoIconBackground(drawEntityInfoIconBackground)
	return self:getProperty("draw_entity_info_icon_background",drawEntityInfoIconBackground)
end

function aspectFurnace:setDrawEntityInfoIconBackground(drawEntityInfoIconBackground)
	return self:setProperty("draw_entity_info_icon_background",drawEntityInfoIconBackground)
end

function aspectFurnace:getEntityInfoIconShift(entityInfoIconShift)
	return self:getProperty("entity_info_icon_shift",entityInfoIconShift)
end

function aspectFurnace:setEntityInfoIconShift(entityInfoIconShift)
	return self:setProperty("entity_info_icon_shift",entityInfoIconShift)
end

function aspectFurnace:getFluidBoxes(fluidBoxes)
	return self:getProperty("fluid_boxes",fluidBoxes)
end

function aspectFurnace:setFluidBoxes(fluidBoxes)
	return self:setProperty("fluid_boxes",fluidBoxes)
end

function aspectFurnace:getIdleAnimation(idleAnimation)
	return self:getProperty("idle_animation",idleAnimation)
end

function aspectFurnace:setIdleAnimation(idleAnimation)
	return self:setProperty("idle_animation",idleAnimation)
end

function aspectFurnace:getMatchAnimationSpeedToActivity(matchAnimationSpeedToActivity)
	return self:getProperty("match_animation_speed_to_activity",matchAnimationSpeedToActivity)
end

function aspectFurnace:setMatchAnimationSpeedToActivity(matchAnimationSpeedToActivity)
	return self:setProperty("match_animation_speed_to_activity",matchAnimationSpeedToActivity)
end

function aspectFurnace:getModuleSpecification(moduleSpecification)
	return self:getProperty("module_specification",moduleSpecification)
end

function aspectFurnace:setModuleSpecification(moduleSpecification)
	return self:setProperty("module_specification",moduleSpecification)
end

function aspectFurnace:getReturnIngredientsOnChange(returnIngredientsOnChange)
	return self:getProperty("return_ingredients_on_change",returnIngredientsOnChange)
end

function aspectFurnace:setReturnIngredientsOnChange(returnIngredientsOnChange)
	return self:setProperty("return_ingredients_on_change",returnIngredientsOnChange)
end

function aspectFurnace:getScaleEntityInfoIcon(scaleEntityInfoIcon)
	return self:getProperty("scale_entity_info_icon",scaleEntityInfoIcon)
end

function aspectFurnace:setScaleEntityInfoIcon(scaleEntityInfoIcon)
	return self:setProperty("scale_entity_info_icon",scaleEntityInfoIcon)
end

function aspectFurnace:getShiftAnimationTransitionDuration(shiftAnimationTransitionDuration)
	return self:getProperty("shift_animation_transition_duration",shiftAnimationTransitionDuration)
end

function aspectFurnace:setShiftAnimationTransitionDuration(shiftAnimationTransitionDuration)
	return self:setProperty("shift_animation_transition_duration",shiftAnimationTransitionDuration)
end

function aspectFurnace:getShiftAnimationWaypointStopDuration(shiftAnimationWaypointStopDuration)
	return self:getProperty("shift_animation_waypoint_stop_duration",shiftAnimationWaypointStopDuration)
end

function aspectFurnace:setShiftAnimationWaypointStopDuration(shiftAnimationWaypointStopDuration)
	return self:setProperty("shift_animation_waypoint_stop_duration",shiftAnimationWaypointStopDuration)
end

function aspectFurnace:getShiftAnimationWaypoints(shiftAnimationWaypoints)
	return self:getProperty("shift_animation_waypoints",shiftAnimationWaypoints)
end

function aspectFurnace:setShiftAnimationWaypoints(shiftAnimationWaypoints)
	return self:setProperty("shift_animation_waypoints",shiftAnimationWaypoints)
end

function aspectFurnace:getShowRecipeIcon(showRecipeIcon)
	return self:getProperty("show_recipe_icon",showRecipeIcon)
end

function aspectFurnace:setShowRecipeIcon(showRecipeIcon)
	return self:setProperty("show_recipe_icon",showRecipeIcon)
end

function aspectFurnace:getShowRecipeIconOnMap(showRecipeIconOnMap)
	return self:getProperty("show_recipe_icon_on_map",showRecipeIconOnMap)
end

function aspectFurnace:setShowRecipeIconOnMap(showRecipeIconOnMap)
	return self:setProperty("show_recipe_icon_on_map",showRecipeIconOnMap)
end

function aspectFurnace:getStatusColors(statusColors)
	return self:getProperty("status_colors",statusColors)
end

function aspectFurnace:setStatusColors(statusColors)
	return self:setProperty("status_colors",statusColors)
end

function aspectFurnace:getWorkingVisualisations(workingVisualisations)
	return self:getProperty("working_visualisations",workingVisualisations)
end

function aspectFurnace:setWorkingVisualisations(workingVisualisations)
	return self:setProperty("working_visualisations",workingVisualisations)
end

function aspectFurnace:getAlertWhenDamaged(alertWhenDamaged)
	return self:getProperty("alert_when_damaged",alertWhenDamaged)
end

function aspectFurnace:setAlertWhenDamaged(alertWhenDamaged)
	return self:setProperty("alert_when_damaged",alertWhenDamaged)
end

function aspectFurnace:getAttackReaction(attackReaction)
	return self:getProperty("attack_reaction",attackReaction)
end

function aspectFurnace:setAttackReaction(attackReaction)
	return self:setProperty("attack_reaction",attackReaction)
end

function aspectFurnace:getCorpse(corpse)
	return self:getProperty("corpse",corpse)
end

function aspectFurnace:setCorpse(corpse)
	return self:setProperty("corpse",corpse)
end

function aspectFurnace:getCreateGhostOnDeath(createGhostOnDeath)
	return self:getProperty("create_ghost_on_death",createGhostOnDeath)
end

function aspectFurnace:setCreateGhostOnDeath(createGhostOnDeath)
	return self:setProperty("create_ghost_on_death",createGhostOnDeath)
end

function aspectFurnace:getDamagedTriggerEffect(damagedTriggerEffect)
	return self:getProperty("damaged_trigger_effect",damagedTriggerEffect)
end

function aspectFurnace:setDamagedTriggerEffect(damagedTriggerEffect)
	return self:setProperty("damaged_trigger_effect",damagedTriggerEffect)
end

function aspectFurnace:getDyingExplosion(dyingExplosion)
	return self:getProperty("dying_explosion",dyingExplosion)
end

function aspectFurnace:setDyingExplosion(dyingExplosion)
	return self:setProperty("dying_explosion",dyingExplosion)
end

function aspectFurnace:getDyingTriggerEffect(dyingTriggerEffect)
	return self:getProperty("dying_trigger_effect",dyingTriggerEffect)
end

function aspectFurnace:setDyingTriggerEffect(dyingTriggerEffect)
	return self:setProperty("dying_trigger_effect",dyingTriggerEffect)
end

function aspectFurnace:getHealingPerTick(healingPerTick)
	return self:getProperty("healing_per_tick",healingPerTick)
end

function aspectFurnace:setHealingPerTick(healingPerTick)
	return self:setProperty("healing_per_tick",healingPerTick)
end

function aspectFurnace:getHideResistances(hideResistances)
	return self:getProperty("hide_resistances",hideResistances)
end

function aspectFurnace:setHideResistances(hideResistances)
	return self:setProperty("hide_resistances",hideResistances)
end

function aspectFurnace:getIntegrationPatch(integrationPatch)
	return self:getProperty("integration_patch",integrationPatch)
end

function aspectFurnace:setIntegrationPatch(integrationPatch)
	return self:setProperty("integration_patch",integrationPatch)
end

function aspectFurnace:getIntegrationPatchRenderLayer(integrationPatchRenderLayer)
	return self:getProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end

function aspectFurnace:setIntegrationPatchRenderLayer(integrationPatchRenderLayer)
	return self:setProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end

function aspectFurnace:getLoot(loot)
	return self:getProperty("loot",loot)
end

function aspectFurnace:setLoot(loot)
	return self:setProperty("loot",loot)
end

function aspectFurnace:getMaxHealth(maxHealth)
	return self:getProperty("max_health",maxHealth)
end

function aspectFurnace:setMaxHealth(maxHealth)
	return self:setProperty("max_health",maxHealth)
end

function aspectFurnace:getRandomCorpseVariation(randomCorpseVariation)
	return self:getProperty("random_corpse_variation",randomCorpseVariation)
end

function aspectFurnace:setRandomCorpseVariation(randomCorpseVariation)
	return self:setProperty("random_corpse_variation",randomCorpseVariation)
end

function aspectFurnace:getRepairSound(repairSound)
	return self:getProperty("repair_sound",repairSound)
end

function aspectFurnace:setRepairSound(repairSound)
	return self:setProperty("repair_sound",repairSound)
end

function aspectFurnace:getRepairSpeedModifier(repairSpeedModifier)
	return self:getProperty("repair_speed_modifier",repairSpeedModifier)
end

function aspectFurnace:setRepairSpeedModifier(repairSpeedModifier)
	return self:setProperty("repair_speed_modifier",repairSpeedModifier)
end

function aspectFurnace:getResistances(resistances)
	return self:getProperty("resistances",resistances)
end

function aspectFurnace:setResistances(resistances)
	return self:setProperty("resistances",resistances)
end

function aspectFurnace:getIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectFurnace:setIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectFurnace:getIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectFurnace:setIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectFurnace:getIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectFurnace:setIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectFurnace:getAdditionalPastableEntities(additionalPastableEntities)
	return self:getProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectFurnace:setAdditionalPastableEntities(additionalPastableEntities)
	return self:setProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectFurnace:getAlertIconScale(alertIconScale)
	return self:getProperty("alert_icon_scale",alertIconScale)
end

function aspectFurnace:setAlertIconScale(alertIconScale)
	return self:setProperty("alert_icon_scale",alertIconScale)
end

function aspectFurnace:getAlertIconShift(alertIconShift)
	return self:getProperty("alert_icon_shift",alertIconShift)
end

function aspectFurnace:setAlertIconShift(alertIconShift)
	return self:setProperty("alert_icon_shift",alertIconShift)
end

function aspectFurnace:getAllowCopyPaste(allowCopyPaste)
	return self:getProperty("allow_copy_paste",allowCopyPaste)
end

function aspectFurnace:setAllowCopyPaste(allowCopyPaste)
	return self:setProperty("allow_copy_paste",allowCopyPaste)
end

function aspectFurnace:getAutoplace(autoplace)
	return self:getProperty("autoplace",autoplace)
end

function aspectFurnace:setAutoplace(autoplace)
	return self:setProperty("autoplace",autoplace)
end

function aspectFurnace:getBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:getProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectFurnace:setBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:setProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectFurnace:getBuildSound(buildSound)
	return self:getProperty("build_sound",buildSound)
end

function aspectFurnace:setBuildSound(buildSound)
	return self:setProperty("build_sound",buildSound)
end

function aspectFurnace:getCloseSound(closeSound)
	return self:getProperty("close_sound",closeSound)
end

function aspectFurnace:setCloseSound(closeSound)
	return self:setProperty("close_sound",closeSound)
end

function aspectFurnace:getCollisionBox(collisionBox)
	return self:getProperty("collision_box",collisionBox)
end

function aspectFurnace:setCollisionBox(collisionBox)
	return self:setProperty("collision_box",collisionBox)
end

function aspectFurnace:getCollisionMask(collisionMask)
	return self:getProperty("collision_mask",collisionMask)
end

function aspectFurnace:setCollisionMask(collisionMask)
	return self:setProperty("collision_mask",collisionMask)
end

function aspectFurnace:getCreatedEffect(createdEffect)
	return self:getProperty("created_effect",createdEffect)
end

function aspectFurnace:setCreatedEffect(createdEffect)
	return self:setProperty("created_effect",createdEffect)
end

function aspectFurnace:getCreatedSmoke(createdSmoke)
	return self:getProperty("created_smoke",createdSmoke)
end

function aspectFurnace:setCreatedSmoke(createdSmoke)
	return self:setProperty("created_smoke",createdSmoke)
end

function aspectFurnace:getDrawingBox(drawingBox)
	return self:getProperty("drawing_box",drawingBox)
end

function aspectFurnace:setDrawingBox(drawingBox)
	return self:setProperty("drawing_box",drawingBox)
end

function aspectFurnace:getEmissionsPerSecond(emissionsPerSecond)
	return self:getProperty("emissions_per_second",emissionsPerSecond)
end

function aspectFurnace:setEmissionsPerSecond(emissionsPerSecond)
	return self:setProperty("emissions_per_second",emissionsPerSecond)
end

function aspectFurnace:getEnemyMapColor(enemyMapColor)
	return self:getProperty("enemy_map_color",enemyMapColor)
end

function aspectFurnace:setEnemyMapColor(enemyMapColor)
	return self:setProperty("enemy_map_color",enemyMapColor)
end

function aspectFurnace:getFastReplaceableGroup(fastReplaceableGroup)
	return self:getProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectFurnace:setFastReplaceableGroup(fastReplaceableGroup)
	return self:setProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectFurnace:getFlags(flags)
	return self:getProperty("flags",flags)
end

function aspectFurnace:setFlags(flags)
	return self:setProperty("flags",flags)
end

function aspectFurnace:getFriendlyMapColor(friendlyMapColor)
	return self:getProperty("friendly_map_color",friendlyMapColor)
end

function aspectFurnace:setFriendlyMapColor(friendlyMapColor)
	return self:setProperty("friendly_map_color",friendlyMapColor)
end

function aspectFurnace:getHitVisualizationBox(hitVisualizationBox)
	return self:getProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectFurnace:setHitVisualizationBox(hitVisualizationBox)
	return self:setProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectFurnace:getMapColor(mapColor)
	return self:getProperty("map_color",mapColor)
end

function aspectFurnace:setMapColor(mapColor)
	return self:setProperty("map_color",mapColor)
end

function aspectFurnace:getMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:getProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectFurnace:setMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:setProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectFurnace:getMinable(minable)
	return self:getProperty("minable",minable)
end

function aspectFurnace:setMinable(minable)
	return self:setProperty("minable",minable)
end

function aspectFurnace:getMinedSound(minedSound)
	return self:getProperty("mined_sound",minedSound)
end

function aspectFurnace:setMinedSound(minedSound)
	return self:setProperty("mined_sound",minedSound)
end

function aspectFurnace:getMiningSound(miningSound)
	return self:getProperty("mining_sound",miningSound)
end

function aspectFurnace:setMiningSound(miningSound)
	return self:setProperty("mining_sound",miningSound)
end

function aspectFurnace:getNextUpgrade(nextUpgrade)
	return self:getProperty("next_upgrade",nextUpgrade)
end

function aspectFurnace:setNextUpgrade(nextUpgrade)
	return self:setProperty("next_upgrade",nextUpgrade)
end

function aspectFurnace:getOpenSound(openSound)
	return self:getProperty("open_sound",openSound)
end

function aspectFurnace:setOpenSound(openSound)
	return self:setProperty("open_sound",openSound)
end

function aspectFurnace:getPlaceableBy(placeableBy)
	return self:getProperty("placeable_by",placeableBy)
end

function aspectFurnace:setPlaceableBy(placeableBy)
	return self:setProperty("placeable_by",placeableBy)
end

function aspectFurnace:getRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:getProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectFurnace:setRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:setProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectFurnace:getRemainsWhenMined(remainsWhenMined)
	return self:getProperty("remains_when_mined",remainsWhenMined)
end

function aspectFurnace:setRemainsWhenMined(remainsWhenMined)
	return self:setProperty("remains_when_mined",remainsWhenMined)
end

function aspectFurnace:getRemoveDecoratives(removeDecoratives)
	return self:getProperty("remove_decoratives",removeDecoratives)
end

function aspectFurnace:setRemoveDecoratives(removeDecoratives)
	return self:setProperty("remove_decoratives",removeDecoratives)
end

function aspectFurnace:getRotatedSound(rotatedSound)
	return self:getProperty("rotated_sound",rotatedSound)
end

function aspectFurnace:setRotatedSound(rotatedSound)
	return self:setProperty("rotated_sound",rotatedSound)
end

function aspectFurnace:getSelectableInGame(selectableInGame)
	return self:getProperty("selectable_in_game",selectableInGame)
end

function aspectFurnace:setSelectableInGame(selectableInGame)
	return self:setProperty("selectable_in_game",selectableInGame)
end

function aspectFurnace:getSelectionBox(selectionBox)
	return self:getProperty("selection_box",selectionBox)
end

function aspectFurnace:setSelectionBox(selectionBox)
	return self:setProperty("selection_box",selectionBox)
end

function aspectFurnace:getSelectionPriority(selectionPriority)
	return self:getProperty("selection_priority",selectionPriority)
end

function aspectFurnace:setSelectionPriority(selectionPriority)
	return self:setProperty("selection_priority",selectionPriority)
end

function aspectFurnace:getShootingCursorSize(shootingCursorSize)
	return self:getProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectFurnace:setShootingCursorSize(shootingCursorSize)
	return self:setProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectFurnace:getStickerBox(stickerBox)
	return self:getProperty("sticker_box",stickerBox)
end

function aspectFurnace:setStickerBox(stickerBox)
	return self:setProperty("sticker_box",stickerBox)
end

function aspectFurnace:getSubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectFurnace:setSubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectFurnace:getTileHeight(tileHeight)
	return self:getProperty("tile_height",tileHeight)
end

function aspectFurnace:setTileHeight(tileHeight)
	return self:setProperty("tile_height",tileHeight)
end

function aspectFurnace:getTileWidth(tileWidth)
	return self:getProperty("tile_width",tileWidth)
end

function aspectFurnace:setTileWidth(tileWidth)
	return self:setProperty("tile_width",tileWidth)
end

function aspectFurnace:getTriggerTargetMask(triggerTargetMask)
	return self:getProperty("trigger_target_mask",triggerTargetMask)
end

function aspectFurnace:setTriggerTargetMask(triggerTargetMask)
	return self:setProperty("trigger_target_mask",triggerTargetMask)
end

function aspectFurnace:getVehicleImpactSound(vehicleImpactSound)
	return self:getProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectFurnace:setVehicleImpactSound(vehicleImpactSound)
	return self:setProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectFurnace:getWaterReflection(waterReflection)
	return self:getProperty("water_reflection",waterReflection)
end

function aspectFurnace:setWaterReflection(waterReflection)
	return self:setProperty("water_reflection",waterReflection)
end

function aspectFurnace:getWorkingSound(workingSound)
	return self:getProperty("working_sound",workingSound)
end

function aspectFurnace:setWorkingSound(workingSound)
	return self:setProperty("working_sound",workingSound)
end

function aspectFurnace:getName(name)
	return self:getProperty("name",name)
end

function aspectFurnace:setName(name)
	return self:setProperty("name",name)
end

function aspectFurnace:getType(type)
	return self:getProperty("type",type)
end

function aspectFurnace:setType(type)
	return self:setProperty("type",type)
end

function aspectFurnace:getLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectFurnace:setLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectFurnace:getLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectFurnace:setLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectFurnace:getOrder(order)
	return self:getProperty("order",order)
end

function aspectFurnace:setOrder(order)
	return self:setProperty("order",order)
end




return aspectFurnace