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


function aspectFurnace:getFurnaceResultInventorySize(resultInventorySize)
	return self:getProperty("result_inventory_size",resultInventorySize)
end

function aspectFurnace:setFurnaceResultInventorySize(resultInventorySize)
	return self:setProperty("result_inventory_size",resultInventorySize)
end

function aspectFurnace:getFurnaceSourceInventorySize(sourceInventorySize)
	return self:getProperty("source_inventory_size",sourceInventorySize)
end

function aspectFurnace:setFurnaceSourceInventorySize(sourceInventorySize)
	return self:setProperty("source_inventory_size",sourceInventorySize)
end

function aspectFurnace:getFurnaceCraftingCategories(craftingCategories)
	return self:getProperty("crafting_categories",craftingCategories)
end

function aspectFurnace:setFurnaceCraftingCategories(craftingCategories)
	return self:setProperty("crafting_categories",craftingCategories)
end

function aspectFurnace:getFurnaceCraftingSpeed(craftingSpeed)
	return self:getProperty("crafting_speed",craftingSpeed)
end

function aspectFurnace:setFurnaceCraftingSpeed(craftingSpeed)
	return self:setProperty("crafting_speed",craftingSpeed)
end

function aspectFurnace:getFurnaceEnergySource(energySource)
	return self:getProperty("energy_source",energySource)
end

function aspectFurnace:setFurnaceEnergySource(energySource)
	return self:setProperty("energy_source",energySource)
end

function aspectFurnace:getFurnaceEnergyUsage(energyUsage)
	return self:getProperty("energy_usage",energyUsage)
end

function aspectFurnace:setFurnaceEnergyUsage(energyUsage)
	return self:setProperty("energy_usage",energyUsage)
end

function aspectFurnace:getFurnaceAllowedEffects(allowedEffects)
	return self:getProperty("allowed_effects",allowedEffects)
end

function aspectFurnace:setFurnaceAllowedEffects(allowedEffects)
	return self:setProperty("allowed_effects",allowedEffects)
end

function aspectFurnace:getFurnaceAlwaysDrawIdleAnimation(alwaysDrawIdleAnimation)
	return self:getProperty("always_draw_idle_animation",alwaysDrawIdleAnimation)
end

function aspectFurnace:setFurnaceAlwaysDrawIdleAnimation(alwaysDrawIdleAnimation)
	return self:setProperty("always_draw_idle_animation",alwaysDrawIdleAnimation)
end

function aspectFurnace:getFurnaceAnimation(animation)
	return self:getProperty("animation",animation)
end

function aspectFurnace:setFurnaceAnimation(animation)
	return self:setProperty("animation",animation)
end

function aspectFurnace:getFurnaceBaseProductivity(baseProductivity)
	return self:getProperty("base_productivity",baseProductivity)
end

function aspectFurnace:setFurnaceBaseProductivity(baseProductivity)
	return self:setProperty("base_productivity",baseProductivity)
end

function aspectFurnace:getFurnaceDefaultRecipeTint(defaultRecipeTint)
	return self:getProperty("default_recipe_tint",defaultRecipeTint)
end

function aspectFurnace:setFurnaceDefaultRecipeTint(defaultRecipeTint)
	return self:setProperty("default_recipe_tint",defaultRecipeTint)
end

function aspectFurnace:getFurnaceDrawEntityInfoIconBackground(drawEntityInfoIconBackground)
	return self:getProperty("draw_entity_info_icon_background",drawEntityInfoIconBackground)
end

function aspectFurnace:setFurnaceDrawEntityInfoIconBackground(drawEntityInfoIconBackground)
	return self:setProperty("draw_entity_info_icon_background",drawEntityInfoIconBackground)
end

function aspectFurnace:getFurnaceEntityInfoIconShift(entityInfoIconShift)
	return self:getProperty("entity_info_icon_shift",entityInfoIconShift)
end

function aspectFurnace:setFurnaceEntityInfoIconShift(entityInfoIconShift)
	return self:setProperty("entity_info_icon_shift",entityInfoIconShift)
end

function aspectFurnace:getFurnaceFluidBoxes(fluidBoxes)
	return self:getProperty("fluid_boxes",fluidBoxes)
end

function aspectFurnace:setFurnaceFluidBoxes(fluidBoxes)
	return self:setProperty("fluid_boxes",fluidBoxes)
end

function aspectFurnace:getFurnaceIdleAnimation(idleAnimation)
	return self:getProperty("idle_animation",idleAnimation)
end

function aspectFurnace:setFurnaceIdleAnimation(idleAnimation)
	return self:setProperty("idle_animation",idleAnimation)
end

function aspectFurnace:getFurnaceMatchAnimationSpeedToActivity(matchAnimationSpeedToActivity)
	return self:getProperty("match_animation_speed_to_activity",matchAnimationSpeedToActivity)
end

function aspectFurnace:setFurnaceMatchAnimationSpeedToActivity(matchAnimationSpeedToActivity)
	return self:setProperty("match_animation_speed_to_activity",matchAnimationSpeedToActivity)
end

function aspectFurnace:getFurnaceModuleSpecification(moduleSpecification)
	return self:getProperty("module_specification",moduleSpecification)
end

function aspectFurnace:setFurnaceModuleSpecification(moduleSpecification)
	return self:setProperty("module_specification",moduleSpecification)
end

function aspectFurnace:getFurnaceReturnIngredientsOnChange(returnIngredientsOnChange)
	return self:getProperty("return_ingredients_on_change",returnIngredientsOnChange)
end

function aspectFurnace:setFurnaceReturnIngredientsOnChange(returnIngredientsOnChange)
	return self:setProperty("return_ingredients_on_change",returnIngredientsOnChange)
end

function aspectFurnace:getFurnaceScaleEntityInfoIcon(scaleEntityInfoIcon)
	return self:getProperty("scale_entity_info_icon",scaleEntityInfoIcon)
end

function aspectFurnace:setFurnaceScaleEntityInfoIcon(scaleEntityInfoIcon)
	return self:setProperty("scale_entity_info_icon",scaleEntityInfoIcon)
end

function aspectFurnace:getFurnaceShiftAnimationTransitionDuration(shiftAnimationTransitionDuration)
	return self:getProperty("shift_animation_transition_duration",shiftAnimationTransitionDuration)
end

function aspectFurnace:setFurnaceShiftAnimationTransitionDuration(shiftAnimationTransitionDuration)
	return self:setProperty("shift_animation_transition_duration",shiftAnimationTransitionDuration)
end

function aspectFurnace:getFurnaceShiftAnimationWaypointStopDuration(shiftAnimationWaypointStopDuration)
	return self:getProperty("shift_animation_waypoint_stop_duration",shiftAnimationWaypointStopDuration)
end

function aspectFurnace:setFurnaceShiftAnimationWaypointStopDuration(shiftAnimationWaypointStopDuration)
	return self:setProperty("shift_animation_waypoint_stop_duration",shiftAnimationWaypointStopDuration)
end

function aspectFurnace:getFurnaceShiftAnimationWaypoints(shiftAnimationWaypoints)
	return self:getProperty("shift_animation_waypoints",shiftAnimationWaypoints)
end

function aspectFurnace:setFurnaceShiftAnimationWaypoints(shiftAnimationWaypoints)
	return self:setProperty("shift_animation_waypoints",shiftAnimationWaypoints)
end

function aspectFurnace:getFurnaceShowRecipeIcon(showRecipeIcon)
	return self:getProperty("show_recipe_icon",showRecipeIcon)
end

function aspectFurnace:setFurnaceShowRecipeIcon(showRecipeIcon)
	return self:setProperty("show_recipe_icon",showRecipeIcon)
end

function aspectFurnace:getFurnaceShowRecipeIconOnMap(showRecipeIconOnMap)
	return self:getProperty("show_recipe_icon_on_map",showRecipeIconOnMap)
end

function aspectFurnace:setFurnaceShowRecipeIconOnMap(showRecipeIconOnMap)
	return self:setProperty("show_recipe_icon_on_map",showRecipeIconOnMap)
end

function aspectFurnace:getFurnaceStatusColors(statusColors)
	return self:getProperty("status_colors",statusColors)
end

function aspectFurnace:setFurnaceStatusColors(statusColors)
	return self:setProperty("status_colors",statusColors)
end

function aspectFurnace:getFurnaceWorkingVisualisations(workingVisualisations)
	return self:getProperty("working_visualisations",workingVisualisations)
end

function aspectFurnace:setFurnaceWorkingVisualisations(workingVisualisations)
	return self:setProperty("working_visualisations",workingVisualisations)
end

function aspectFurnace:getFurnaceAlertWhenDamaged(alertWhenDamaged)
	return self:getProperty("alert_when_damaged",alertWhenDamaged)
end

function aspectFurnace:setFurnaceAlertWhenDamaged(alertWhenDamaged)
	return self:setProperty("alert_when_damaged",alertWhenDamaged)
end

function aspectFurnace:getFurnaceAttackReaction(attackReaction)
	return self:getProperty("attack_reaction",attackReaction)
end

function aspectFurnace:setFurnaceAttackReaction(attackReaction)
	return self:setProperty("attack_reaction",attackReaction)
end

function aspectFurnace:getFurnaceCorpse(corpse)
	return self:getProperty("corpse",corpse)
end

function aspectFurnace:setFurnaceCorpse(corpse)
	return self:setProperty("corpse",corpse)
end

function aspectFurnace:getFurnaceCreateGhostOnDeath(createGhostOnDeath)
	return self:getProperty("create_ghost_on_death",createGhostOnDeath)
end

function aspectFurnace:setFurnaceCreateGhostOnDeath(createGhostOnDeath)
	return self:setProperty("create_ghost_on_death",createGhostOnDeath)
end

function aspectFurnace:getFurnaceDamagedTriggerEffect(damagedTriggerEffect)
	return self:getProperty("damaged_trigger_effect",damagedTriggerEffect)
end

function aspectFurnace:setFurnaceDamagedTriggerEffect(damagedTriggerEffect)
	return self:setProperty("damaged_trigger_effect",damagedTriggerEffect)
end

function aspectFurnace:getFurnaceDyingExplosion(dyingExplosion)
	return self:getProperty("dying_explosion",dyingExplosion)
end

function aspectFurnace:setFurnaceDyingExplosion(dyingExplosion)
	return self:setProperty("dying_explosion",dyingExplosion)
end

function aspectFurnace:getFurnaceDyingTriggerEffect(dyingTriggerEffect)
	return self:getProperty("dying_trigger_effect",dyingTriggerEffect)
end

function aspectFurnace:setFurnaceDyingTriggerEffect(dyingTriggerEffect)
	return self:setProperty("dying_trigger_effect",dyingTriggerEffect)
end

function aspectFurnace:getFurnaceHealingPerTick(healingPerTick)
	return self:getProperty("healing_per_tick",healingPerTick)
end

function aspectFurnace:setFurnaceHealingPerTick(healingPerTick)
	return self:setProperty("healing_per_tick",healingPerTick)
end

function aspectFurnace:getFurnaceHideResistances(hideResistances)
	return self:getProperty("hide_resistances",hideResistances)
end

function aspectFurnace:setFurnaceHideResistances(hideResistances)
	return self:setProperty("hide_resistances",hideResistances)
end

function aspectFurnace:getFurnaceIntegrationPatch(integrationPatch)
	return self:getProperty("integration_patch",integrationPatch)
end

function aspectFurnace:setFurnaceIntegrationPatch(integrationPatch)
	return self:setProperty("integration_patch",integrationPatch)
end

function aspectFurnace:getFurnaceIntegrationPatchRenderLayer(integrationPatchRenderLayer)
	return self:getProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end

function aspectFurnace:setFurnaceIntegrationPatchRenderLayer(integrationPatchRenderLayer)
	return self:setProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end

function aspectFurnace:getFurnaceLoot(loot)
	return self:getProperty("loot",loot)
end

function aspectFurnace:setFurnaceLoot(loot)
	return self:setProperty("loot",loot)
end

function aspectFurnace:getFurnaceMaxHealth(maxHealth)
	return self:getProperty("max_health",maxHealth)
end

function aspectFurnace:setFurnaceMaxHealth(maxHealth)
	return self:setProperty("max_health",maxHealth)
end

function aspectFurnace:getFurnaceRandomCorpseVariation(randomCorpseVariation)
	return self:getProperty("random_corpse_variation",randomCorpseVariation)
end

function aspectFurnace:setFurnaceRandomCorpseVariation(randomCorpseVariation)
	return self:setProperty("random_corpse_variation",randomCorpseVariation)
end

function aspectFurnace:getFurnaceRepairSound(repairSound)
	return self:getProperty("repair_sound",repairSound)
end

function aspectFurnace:setFurnaceRepairSound(repairSound)
	return self:setProperty("repair_sound",repairSound)
end

function aspectFurnace:getFurnaceRepairSpeedModifier(repairSpeedModifier)
	return self:getProperty("repair_speed_modifier",repairSpeedModifier)
end

function aspectFurnace:setFurnaceRepairSpeedModifier(repairSpeedModifier)
	return self:setProperty("repair_speed_modifier",repairSpeedModifier)
end

function aspectFurnace:getFurnaceResistances(resistances)
	return self:getProperty("resistances",resistances)
end

function aspectFurnace:setFurnaceResistances(resistances)
	return self:setProperty("resistances",resistances)
end

function aspectFurnace:getFurnaceIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectFurnace:setFurnaceIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectFurnace:getFurnaceIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectFurnace:setFurnaceIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectFurnace:getFurnaceIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectFurnace:setFurnaceIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectFurnace:getFurnaceAdditionalPastableEntities(additionalPastableEntities)
	return self:getProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectFurnace:setFurnaceAdditionalPastableEntities(additionalPastableEntities)
	return self:setProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectFurnace:getFurnaceAlertIconScale(alertIconScale)
	return self:getProperty("alert_icon_scale",alertIconScale)
end

function aspectFurnace:setFurnaceAlertIconScale(alertIconScale)
	return self:setProperty("alert_icon_scale",alertIconScale)
end

function aspectFurnace:getFurnaceAlertIconShift(alertIconShift)
	return self:getProperty("alert_icon_shift",alertIconShift)
end

function aspectFurnace:setFurnaceAlertIconShift(alertIconShift)
	return self:setProperty("alert_icon_shift",alertIconShift)
end

function aspectFurnace:getFurnaceAllowCopyPaste(allowCopyPaste)
	return self:getProperty("allow_copy_paste",allowCopyPaste)
end

function aspectFurnace:setFurnaceAllowCopyPaste(allowCopyPaste)
	return self:setProperty("allow_copy_paste",allowCopyPaste)
end

function aspectFurnace:getFurnaceAutoplace(autoplace)
	return self:getProperty("autoplace",autoplace)
end

function aspectFurnace:setFurnaceAutoplace(autoplace)
	return self:setProperty("autoplace",autoplace)
end

function aspectFurnace:getFurnaceBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:getProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectFurnace:setFurnaceBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:setProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectFurnace:getFurnaceBuildSound(buildSound)
	return self:getProperty("build_sound",buildSound)
end

function aspectFurnace:setFurnaceBuildSound(buildSound)
	return self:setProperty("build_sound",buildSound)
end

function aspectFurnace:getFurnaceCloseSound(closeSound)
	return self:getProperty("close_sound",closeSound)
end

function aspectFurnace:setFurnaceCloseSound(closeSound)
	return self:setProperty("close_sound",closeSound)
end

function aspectFurnace:getFurnaceCollisionBox(collisionBox)
	return self:getProperty("collision_box",collisionBox)
end

function aspectFurnace:setFurnaceCollisionBox(collisionBox)
	return self:setProperty("collision_box",collisionBox)
end

function aspectFurnace:getFurnaceCollisionMask(collisionMask)
	return self:getProperty("collision_mask",collisionMask)
end

function aspectFurnace:setFurnaceCollisionMask(collisionMask)
	return self:setProperty("collision_mask",collisionMask)
end

function aspectFurnace:getFurnaceCreatedEffect(createdEffect)
	return self:getProperty("created_effect",createdEffect)
end

function aspectFurnace:setFurnaceCreatedEffect(createdEffect)
	return self:setProperty("created_effect",createdEffect)
end

function aspectFurnace:getFurnaceCreatedSmoke(createdSmoke)
	return self:getProperty("created_smoke",createdSmoke)
end

function aspectFurnace:setFurnaceCreatedSmoke(createdSmoke)
	return self:setProperty("created_smoke",createdSmoke)
end

function aspectFurnace:getFurnaceDrawingBox(drawingBox)
	return self:getProperty("drawing_box",drawingBox)
end

function aspectFurnace:setFurnaceDrawingBox(drawingBox)
	return self:setProperty("drawing_box",drawingBox)
end

function aspectFurnace:getFurnaceEmissionsPerSecond(emissionsPerSecond)
	return self:getProperty("emissions_per_second",emissionsPerSecond)
end

function aspectFurnace:setFurnaceEmissionsPerSecond(emissionsPerSecond)
	return self:setProperty("emissions_per_second",emissionsPerSecond)
end

function aspectFurnace:getFurnaceEnemyMapColor(enemyMapColor)
	return self:getProperty("enemy_map_color",enemyMapColor)
end

function aspectFurnace:setFurnaceEnemyMapColor(enemyMapColor)
	return self:setProperty("enemy_map_color",enemyMapColor)
end

function aspectFurnace:getFurnaceFastReplaceableGroup(fastReplaceableGroup)
	return self:getProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectFurnace:setFurnaceFastReplaceableGroup(fastReplaceableGroup)
	return self:setProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectFurnace:getFurnaceFlags(flags)
	return self:getProperty("flags",flags)
end

function aspectFurnace:setFurnaceFlags(flags)
	return self:setProperty("flags",flags)
end

function aspectFurnace:getFurnaceFriendlyMapColor(friendlyMapColor)
	return self:getProperty("friendly_map_color",friendlyMapColor)
end

function aspectFurnace:setFurnaceFriendlyMapColor(friendlyMapColor)
	return self:setProperty("friendly_map_color",friendlyMapColor)
end

function aspectFurnace:getFurnaceHitVisualizationBox(hitVisualizationBox)
	return self:getProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectFurnace:setFurnaceHitVisualizationBox(hitVisualizationBox)
	return self:setProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectFurnace:getFurnaceMapColor(mapColor)
	return self:getProperty("map_color",mapColor)
end

function aspectFurnace:setFurnaceMapColor(mapColor)
	return self:setProperty("map_color",mapColor)
end

function aspectFurnace:getFurnaceMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:getProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectFurnace:setFurnaceMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:setProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectFurnace:getFurnaceMinable(minable)
	return self:getProperty("minable",minable)
end

function aspectFurnace:setFurnaceMinable(minable)
	return self:setProperty("minable",minable)
end

function aspectFurnace:getFurnaceMinedSound(minedSound)
	return self:getProperty("mined_sound",minedSound)
end

function aspectFurnace:setFurnaceMinedSound(minedSound)
	return self:setProperty("mined_sound",minedSound)
end

function aspectFurnace:getFurnaceMiningSound(miningSound)
	return self:getProperty("mining_sound",miningSound)
end

function aspectFurnace:setFurnaceMiningSound(miningSound)
	return self:setProperty("mining_sound",miningSound)
end

function aspectFurnace:getFurnaceNextUpgrade(nextUpgrade)
	return self:getProperty("next_upgrade",nextUpgrade)
end

function aspectFurnace:setFurnaceNextUpgrade(nextUpgrade)
	return self:setProperty("next_upgrade",nextUpgrade)
end

function aspectFurnace:getFurnaceOpenSound(openSound)
	return self:getProperty("open_sound",openSound)
end

function aspectFurnace:setFurnaceOpenSound(openSound)
	return self:setProperty("open_sound",openSound)
end

function aspectFurnace:getFurnacePlaceableBy(placeableBy)
	return self:getProperty("placeable_by",placeableBy)
end

function aspectFurnace:setFurnacePlaceableBy(placeableBy)
	return self:setProperty("placeable_by",placeableBy)
end

function aspectFurnace:getFurnaceRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:getProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectFurnace:setFurnaceRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:setProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectFurnace:getFurnaceRemainsWhenMined(remainsWhenMined)
	return self:getProperty("remains_when_mined",remainsWhenMined)
end

function aspectFurnace:setFurnaceRemainsWhenMined(remainsWhenMined)
	return self:setProperty("remains_when_mined",remainsWhenMined)
end

function aspectFurnace:getFurnaceRemoveDecoratives(removeDecoratives)
	return self:getProperty("remove_decoratives",removeDecoratives)
end

function aspectFurnace:setFurnaceRemoveDecoratives(removeDecoratives)
	return self:setProperty("remove_decoratives",removeDecoratives)
end

function aspectFurnace:getFurnaceRotatedSound(rotatedSound)
	return self:getProperty("rotated_sound",rotatedSound)
end

function aspectFurnace:setFurnaceRotatedSound(rotatedSound)
	return self:setProperty("rotated_sound",rotatedSound)
end

function aspectFurnace:getFurnaceSelectableInGame(selectableInGame)
	return self:getProperty("selectable_in_game",selectableInGame)
end

function aspectFurnace:setFurnaceSelectableInGame(selectableInGame)
	return self:setProperty("selectable_in_game",selectableInGame)
end

function aspectFurnace:getFurnaceSelectionBox(selectionBox)
	return self:getProperty("selection_box",selectionBox)
end

function aspectFurnace:setFurnaceSelectionBox(selectionBox)
	return self:setProperty("selection_box",selectionBox)
end

function aspectFurnace:getFurnaceSelectionPriority(selectionPriority)
	return self:getProperty("selection_priority",selectionPriority)
end

function aspectFurnace:setFurnaceSelectionPriority(selectionPriority)
	return self:setProperty("selection_priority",selectionPriority)
end

function aspectFurnace:getFurnaceShootingCursorSize(shootingCursorSize)
	return self:getProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectFurnace:setFurnaceShootingCursorSize(shootingCursorSize)
	return self:setProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectFurnace:getFurnaceStickerBox(stickerBox)
	return self:getProperty("sticker_box",stickerBox)
end

function aspectFurnace:setFurnaceStickerBox(stickerBox)
	return self:setProperty("sticker_box",stickerBox)
end

function aspectFurnace:getFurnaceSubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectFurnace:setFurnaceSubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectFurnace:getFurnaceTileHeight(tileHeight)
	return self:getProperty("tile_height",tileHeight)
end

function aspectFurnace:setFurnaceTileHeight(tileHeight)
	return self:setProperty("tile_height",tileHeight)
end

function aspectFurnace:getFurnaceTileWidth(tileWidth)
	return self:getProperty("tile_width",tileWidth)
end

function aspectFurnace:setFurnaceTileWidth(tileWidth)
	return self:setProperty("tile_width",tileWidth)
end

function aspectFurnace:getFurnaceTriggerTargetMask(triggerTargetMask)
	return self:getProperty("trigger_target_mask",triggerTargetMask)
end

function aspectFurnace:setFurnaceTriggerTargetMask(triggerTargetMask)
	return self:setProperty("trigger_target_mask",triggerTargetMask)
end

function aspectFurnace:getFurnaceVehicleImpactSound(vehicleImpactSound)
	return self:getProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectFurnace:setFurnaceVehicleImpactSound(vehicleImpactSound)
	return self:setProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectFurnace:getFurnaceWaterReflection(waterReflection)
	return self:getProperty("water_reflection",waterReflection)
end

function aspectFurnace:setFurnaceWaterReflection(waterReflection)
	return self:setProperty("water_reflection",waterReflection)
end

function aspectFurnace:getFurnaceWorkingSound(workingSound)
	return self:getProperty("working_sound",workingSound)
end

function aspectFurnace:setFurnaceWorkingSound(workingSound)
	return self:setProperty("working_sound",workingSound)
end

function aspectFurnace:getFurnaceName(name)
	return self:getProperty("name",name)
end

function aspectFurnace:setFurnaceName(name)
	return self:setProperty("name",name)
end

function aspectFurnace:getFurnaceType(type)
	return self:getProperty("type",type)
end

function aspectFurnace:setFurnaceType(type)
	return self:setProperty("type",type)
end

function aspectFurnace:getFurnaceLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectFurnace:setFurnaceLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectFurnace:getFurnaceLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectFurnace:setFurnaceLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectFurnace:getFurnaceOrder(order)
	return self:getProperty("order",order)
end

function aspectFurnace:setFurnaceOrder(order)
	return self:setProperty("order",order)
end




return aspectFurnace