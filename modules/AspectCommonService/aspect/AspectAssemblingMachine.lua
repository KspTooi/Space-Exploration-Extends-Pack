local aspectAssemblingMachine = {}


----通用内部操作方法 ----- 开始----->>>>
function aspectAssemblingMachine.create(luaObject)
    aspectAssemblingMachine.luaObject = luaObject
    return aspectAssemblingMachine;
end


--根据给定类型获取数据原型
function aspectAssemblingMachine.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为aspectAssemblingMachine
        return aspectAssemblingMachine.create(item)
    end

--获取于当前原型TYPE相同的新原型
function aspectAssemblingMachine:getSame(name)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then

        local item = nil

        if name~=nil then
            item = table.deepcopy(data.raw[luaEntity.type][name])
        end

        if name==nil then
            item = table.deepcopy(data.raw[luaEntity.type][luaEntity.name])
        end

        --将luaEntity封装为aspectAssemblingMachine
        return aspectAssemblingMachine.create(item)

    end

    return aspectAssemblingMachine.create(nil)
end

--基本设值方法(含有非空检查)
function aspectAssemblingMachine:setProperty(property,value)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity[property] = value
    end

    return self
end

--基本取值方法(含有非空检查)
function aspectAssemblingMachine:getProperty(propertyName)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity[propertyName]
    end

    return nil
end

--获取当前上下文中的LUAOBJECT
function aspectAssemblingMachine:getLuaObject()
    return self.luaObject
end

--设置当前上下文中的LUAOBJECT
function aspectAssemblingMachine:setLuaObject(luaObject)
    self.luaObject = luaObject
end


function aspectAssemblingMachine:getType()
    return self:getProperty("type")
end


function aspectAssemblingMachine:getName()
    return self:getProperty("name")
end


function aspectAssemblingMachine:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该aspectAssemblingMachine
function aspectAssemblingMachine:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该aspectAssemblingMachine至数据原型
function aspectAssemblingMachine:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该aspectAssemblingMachine至数据原型
function aspectAssemblingMachine:joinToData()
    return self:insertToData()
end

--加入该aspectAssemblingMachine至数据原型
function aspectAssemblingMachine:insertInto()
    return self:insertToData()
end

--更新该aspectAssemblingMachine至数据原型
function aspectAssemblingMachine:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
function aspectAssemblingMachine:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

--从其他aspectAssemblingMachine转入
function aspectAssemblingMachine:import(object)
    self:setLuaObject(object:getLuaObject())
    return self
end
----通用内部操作方法 ----- 结束 -----<<<<


function aspectAssemblingMachine:getAssemblingMachineFixedRecipe(fixedRecipe)
	return self:getProperty("fixed_recipe",fixedRecipe)
end

function aspectAssemblingMachine:setAssemblingMachineFixedRecipe(fixedRecipe)
	return self:setProperty("fixed_recipe",fixedRecipe)
end

function aspectAssemblingMachine:getAssemblingMachineGuiTitleKey(guiTitleKey)
	return self:getProperty("gui_title_key",guiTitleKey)
end

function aspectAssemblingMachine:setAssemblingMachineGuiTitleKey(guiTitleKey)
	return self:setProperty("gui_title_key",guiTitleKey)
end

function aspectAssemblingMachine:getAssemblingMachineIngredientCount(ingredientCount)
	return self:getProperty("ingredient_count",ingredientCount)
end

function aspectAssemblingMachine:setAssemblingMachineIngredientCount(ingredientCount)
	return self:setProperty("ingredient_count",ingredientCount)
end

function aspectAssemblingMachine:getAssemblingMachineCraftingCategories(craftingCategories)
	return self:getProperty("crafting_categories",craftingCategories)
end

function aspectAssemblingMachine:setAssemblingMachineCraftingCategories(craftingCategories)
	return self:setProperty("crafting_categories",craftingCategories)
end

function aspectAssemblingMachine:getAssemblingMachineCraftingSpeed(craftingSpeed)
	return self:getProperty("crafting_speed",craftingSpeed)
end

function aspectAssemblingMachine:setAssemblingMachineCraftingSpeed(craftingSpeed)
	return self:setProperty("crafting_speed",craftingSpeed)
end

function aspectAssemblingMachine:getAssemblingMachineEnergySource(energySource)
	return self:getProperty("energy_source",energySource)
end

function aspectAssemblingMachine:setAssemblingMachineEnergySource(energySource)
	return self:setProperty("energy_source",energySource)
end

function aspectAssemblingMachine:getAssemblingMachineEnergyUsage(energyUsage)
	return self:getProperty("energy_usage",energyUsage)
end

function aspectAssemblingMachine:setAssemblingMachineEnergyUsage(energyUsage)
	return self:setProperty("energy_usage",energyUsage)
end

function aspectAssemblingMachine:getAssemblingMachineAllowedEffects(allowedEffects)
	return self:getProperty("allowed_effects",allowedEffects)
end

function aspectAssemblingMachine:setAssemblingMachineAllowedEffects(allowedEffects)
	return self:setProperty("allowed_effects",allowedEffects)
end

function aspectAssemblingMachine:getAssemblingMachineAlwaysDrawIdleAnimation(alwaysDrawIdleAnimation)
	return self:getProperty("always_draw_idle_animation",alwaysDrawIdleAnimation)
end

function aspectAssemblingMachine:setAssemblingMachineAlwaysDrawIdleAnimation(alwaysDrawIdleAnimation)
	return self:setProperty("always_draw_idle_animation",alwaysDrawIdleAnimation)
end

function aspectAssemblingMachine:getAssemblingMachineAnimation(animation)
	return self:getProperty("animation",animation)
end

function aspectAssemblingMachine:setAssemblingMachineAnimation(animation)
	return self:setProperty("animation",animation)
end

function aspectAssemblingMachine:getAssemblingMachineBaseProductivity(baseProductivity)
	return self:getProperty("base_productivity",baseProductivity)
end

function aspectAssemblingMachine:setAssemblingMachineBaseProductivity(baseProductivity)
	return self:setProperty("base_productivity",baseProductivity)
end

function aspectAssemblingMachine:getAssemblingMachineDefaultRecipeTint(defaultRecipeTint)
	return self:getProperty("default_recipe_tint",defaultRecipeTint)
end

function aspectAssemblingMachine:setAssemblingMachineDefaultRecipeTint(defaultRecipeTint)
	return self:setProperty("default_recipe_tint",defaultRecipeTint)
end

function aspectAssemblingMachine:getAssemblingMachineDrawEntityInfoIconBackground(drawEntityInfoIconBackground)
	return self:getProperty("draw_entity_info_icon_background",drawEntityInfoIconBackground)
end

function aspectAssemblingMachine:setAssemblingMachineDrawEntityInfoIconBackground(drawEntityInfoIconBackground)
	return self:setProperty("draw_entity_info_icon_background",drawEntityInfoIconBackground)
end

function aspectAssemblingMachine:getAssemblingMachineEntityInfoIconShift(entityInfoIconShift)
	return self:getProperty("entity_info_icon_shift",entityInfoIconShift)
end

function aspectAssemblingMachine:setAssemblingMachineEntityInfoIconShift(entityInfoIconShift)
	return self:setProperty("entity_info_icon_shift",entityInfoIconShift)
end

function aspectAssemblingMachine:getAssemblingMachineFluidBoxes(fluidBoxes)
	return self:getProperty("fluid_boxes",fluidBoxes)
end

function aspectAssemblingMachine:setAssemblingMachineFluidBoxes(fluidBoxes)
	return self:setProperty("fluid_boxes",fluidBoxes)
end

function aspectAssemblingMachine:getAssemblingMachineIdleAnimation(idleAnimation)
	return self:getProperty("idle_animation",idleAnimation)
end

function aspectAssemblingMachine:setAssemblingMachineIdleAnimation(idleAnimation)
	return self:setProperty("idle_animation",idleAnimation)
end

function aspectAssemblingMachine:getAssemblingMachineMatchAnimationSpeedToActivity(matchAnimationSpeedToActivity)
	return self:getProperty("match_animation_speed_to_activity",matchAnimationSpeedToActivity)
end

function aspectAssemblingMachine:setAssemblingMachineMatchAnimationSpeedToActivity(matchAnimationSpeedToActivity)
	return self:setProperty("match_animation_speed_to_activity",matchAnimationSpeedToActivity)
end

function aspectAssemblingMachine:getAssemblingMachineModuleSpecification(moduleSpecification)
	return self:getProperty("module_specification",moduleSpecification)
end

function aspectAssemblingMachine:setAssemblingMachineModuleSpecification(moduleSpecification)
	return self:setProperty("module_specification",moduleSpecification)
end

function aspectAssemblingMachine:getAssemblingMachineReturnIngredientsOnChange(returnIngredientsOnChange)
	return self:getProperty("return_ingredients_on_change",returnIngredientsOnChange)
end

function aspectAssemblingMachine:setAssemblingMachineReturnIngredientsOnChange(returnIngredientsOnChange)
	return self:setProperty("return_ingredients_on_change",returnIngredientsOnChange)
end

function aspectAssemblingMachine:getAssemblingMachineScaleEntityInfoIcon(scaleEntityInfoIcon)
	return self:getProperty("scale_entity_info_icon",scaleEntityInfoIcon)
end

function aspectAssemblingMachine:setAssemblingMachineScaleEntityInfoIcon(scaleEntityInfoIcon)
	return self:setProperty("scale_entity_info_icon",scaleEntityInfoIcon)
end

function aspectAssemblingMachine:getAssemblingMachineShiftAnimationTransitionDuration(shiftAnimationTransitionDuration)
	return self:getProperty("shift_animation_transition_duration",shiftAnimationTransitionDuration)
end

function aspectAssemblingMachine:setAssemblingMachineShiftAnimationTransitionDuration(shiftAnimationTransitionDuration)
	return self:setProperty("shift_animation_transition_duration",shiftAnimationTransitionDuration)
end

function aspectAssemblingMachine:getAssemblingMachineShiftAnimationWaypointStopDuration(shiftAnimationWaypointStopDuration)
	return self:getProperty("shift_animation_waypoint_stop_duration",shiftAnimationWaypointStopDuration)
end

function aspectAssemblingMachine:setAssemblingMachineShiftAnimationWaypointStopDuration(shiftAnimationWaypointStopDuration)
	return self:setProperty("shift_animation_waypoint_stop_duration",shiftAnimationWaypointStopDuration)
end

function aspectAssemblingMachine:getAssemblingMachineShiftAnimationWaypoints(shiftAnimationWaypoints)
	return self:getProperty("shift_animation_waypoints",shiftAnimationWaypoints)
end

function aspectAssemblingMachine:setAssemblingMachineShiftAnimationWaypoints(shiftAnimationWaypoints)
	return self:setProperty("shift_animation_waypoints",shiftAnimationWaypoints)
end

function aspectAssemblingMachine:getAssemblingMachineShowRecipeIcon(showRecipeIcon)
	return self:getProperty("show_recipe_icon",showRecipeIcon)
end

function aspectAssemblingMachine:setAssemblingMachineShowRecipeIcon(showRecipeIcon)
	return self:setProperty("show_recipe_icon",showRecipeIcon)
end

function aspectAssemblingMachine:getAssemblingMachineShowRecipeIconOnMap(showRecipeIconOnMap)
	return self:getProperty("show_recipe_icon_on_map",showRecipeIconOnMap)
end

function aspectAssemblingMachine:setAssemblingMachineShowRecipeIconOnMap(showRecipeIconOnMap)
	return self:setProperty("show_recipe_icon_on_map",showRecipeIconOnMap)
end

function aspectAssemblingMachine:getAssemblingMachineStatusColors(statusColors)
	return self:getProperty("status_colors",statusColors)
end

function aspectAssemblingMachine:setAssemblingMachineStatusColors(statusColors)
	return self:setProperty("status_colors",statusColors)
end

function aspectAssemblingMachine:getAssemblingMachineWorkingVisualisations(workingVisualisations)
	return self:getProperty("working_visualisations",workingVisualisations)
end

function aspectAssemblingMachine:setAssemblingMachineWorkingVisualisations(workingVisualisations)
	return self:setProperty("working_visualisations",workingVisualisations)
end

function aspectAssemblingMachine:getAssemblingMachineAlertWhenDamaged(alertWhenDamaged)
	return self:getProperty("alert_when_damaged",alertWhenDamaged)
end

function aspectAssemblingMachine:setAssemblingMachineAlertWhenDamaged(alertWhenDamaged)
	return self:setProperty("alert_when_damaged",alertWhenDamaged)
end

function aspectAssemblingMachine:getAssemblingMachineAttackReaction(attackReaction)
	return self:getProperty("attack_reaction",attackReaction)
end

function aspectAssemblingMachine:setAssemblingMachineAttackReaction(attackReaction)
	return self:setProperty("attack_reaction",attackReaction)
end

function aspectAssemblingMachine:getAssemblingMachineCorpse(corpse)
	return self:getProperty("corpse",corpse)
end

function aspectAssemblingMachine:setAssemblingMachineCorpse(corpse)
	return self:setProperty("corpse",corpse)
end

function aspectAssemblingMachine:getAssemblingMachineCreateGhostOnDeath(createGhostOnDeath)
	return self:getProperty("create_ghost_on_death",createGhostOnDeath)
end

function aspectAssemblingMachine:setAssemblingMachineCreateGhostOnDeath(createGhostOnDeath)
	return self:setProperty("create_ghost_on_death",createGhostOnDeath)
end

function aspectAssemblingMachine:getAssemblingMachineDamagedTriggerEffect(damagedTriggerEffect)
	return self:getProperty("damaged_trigger_effect",damagedTriggerEffect)
end

function aspectAssemblingMachine:setAssemblingMachineDamagedTriggerEffect(damagedTriggerEffect)
	return self:setProperty("damaged_trigger_effect",damagedTriggerEffect)
end

function aspectAssemblingMachine:getAssemblingMachineDyingExplosion(dyingExplosion)
	return self:getProperty("dying_explosion",dyingExplosion)
end

function aspectAssemblingMachine:setAssemblingMachineDyingExplosion(dyingExplosion)
	return self:setProperty("dying_explosion",dyingExplosion)
end

function aspectAssemblingMachine:getAssemblingMachineDyingTriggerEffect(dyingTriggerEffect)
	return self:getProperty("dying_trigger_effect",dyingTriggerEffect)
end

function aspectAssemblingMachine:setAssemblingMachineDyingTriggerEffect(dyingTriggerEffect)
	return self:setProperty("dying_trigger_effect",dyingTriggerEffect)
end

function aspectAssemblingMachine:getAssemblingMachineHealingPerTick(healingPerTick)
	return self:getProperty("healing_per_tick",healingPerTick)
end

function aspectAssemblingMachine:setAssemblingMachineHealingPerTick(healingPerTick)
	return self:setProperty("healing_per_tick",healingPerTick)
end

function aspectAssemblingMachine:getAssemblingMachineHideResistances(hideResistances)
	return self:getProperty("hide_resistances",hideResistances)
end

function aspectAssemblingMachine:setAssemblingMachineHideResistances(hideResistances)
	return self:setProperty("hide_resistances",hideResistances)
end

function aspectAssemblingMachine:getAssemblingMachineIntegrationPatch(integrationPatch)
	return self:getProperty("integration_patch",integrationPatch)
end

function aspectAssemblingMachine:setAssemblingMachineIntegrationPatch(integrationPatch)
	return self:setProperty("integration_patch",integrationPatch)
end

function aspectAssemblingMachine:getAssemblingMachineIntegrationPatchRenderLayer(integrationPatchRenderLayer)
	return self:getProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end

function aspectAssemblingMachine:setAssemblingMachineIntegrationPatchRenderLayer(integrationPatchRenderLayer)
	return self:setProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end

function aspectAssemblingMachine:getAssemblingMachineLoot(loot)
	return self:getProperty("loot",loot)
end

function aspectAssemblingMachine:setAssemblingMachineLoot(loot)
	return self:setProperty("loot",loot)
end

function aspectAssemblingMachine:getAssemblingMachineMaxHealth(maxHealth)
	return self:getProperty("max_health",maxHealth)
end

function aspectAssemblingMachine:setAssemblingMachineMaxHealth(maxHealth)
	return self:setProperty("max_health",maxHealth)
end

function aspectAssemblingMachine:getAssemblingMachineRandomCorpseVariation(randomCorpseVariation)
	return self:getProperty("random_corpse_variation",randomCorpseVariation)
end

function aspectAssemblingMachine:setAssemblingMachineRandomCorpseVariation(randomCorpseVariation)
	return self:setProperty("random_corpse_variation",randomCorpseVariation)
end

function aspectAssemblingMachine:getAssemblingMachineRepairSound(repairSound)
	return self:getProperty("repair_sound",repairSound)
end

function aspectAssemblingMachine:setAssemblingMachineRepairSound(repairSound)
	return self:setProperty("repair_sound",repairSound)
end

function aspectAssemblingMachine:getAssemblingMachineRepairSpeedModifier(repairSpeedModifier)
	return self:getProperty("repair_speed_modifier",repairSpeedModifier)
end

function aspectAssemblingMachine:setAssemblingMachineRepairSpeedModifier(repairSpeedModifier)
	return self:setProperty("repair_speed_modifier",repairSpeedModifier)
end

function aspectAssemblingMachine:getAssemblingMachineResistances(resistances)
	return self:getProperty("resistances",resistances)
end

function aspectAssemblingMachine:setAssemblingMachineResistances(resistances)
	return self:setProperty("resistances",resistances)
end

function aspectAssemblingMachine:getAssemblingMachineIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectAssemblingMachine:setAssemblingMachineIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectAssemblingMachine:getAssemblingMachineIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectAssemblingMachine:setAssemblingMachineIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectAssemblingMachine:getAssemblingMachineIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectAssemblingMachine:setAssemblingMachineIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectAssemblingMachine:getAssemblingMachineAdditionalPastableEntities(additionalPastableEntities)
	return self:getProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectAssemblingMachine:setAssemblingMachineAdditionalPastableEntities(additionalPastableEntities)
	return self:setProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectAssemblingMachine:getAssemblingMachineAlertIconScale(alertIconScale)
	return self:getProperty("alert_icon_scale",alertIconScale)
end

function aspectAssemblingMachine:setAssemblingMachineAlertIconScale(alertIconScale)
	return self:setProperty("alert_icon_scale",alertIconScale)
end

function aspectAssemblingMachine:getAssemblingMachineAlertIconShift(alertIconShift)
	return self:getProperty("alert_icon_shift",alertIconShift)
end

function aspectAssemblingMachine:setAssemblingMachineAlertIconShift(alertIconShift)
	return self:setProperty("alert_icon_shift",alertIconShift)
end

function aspectAssemblingMachine:getAssemblingMachineAllowCopyPaste(allowCopyPaste)
	return self:getProperty("allow_copy_paste",allowCopyPaste)
end

function aspectAssemblingMachine:setAssemblingMachineAllowCopyPaste(allowCopyPaste)
	return self:setProperty("allow_copy_paste",allowCopyPaste)
end

function aspectAssemblingMachine:getAssemblingMachineAutoplace(autoplace)
	return self:getProperty("autoplace",autoplace)
end

function aspectAssemblingMachine:setAssemblingMachineAutoplace(autoplace)
	return self:setProperty("autoplace",autoplace)
end

function aspectAssemblingMachine:getAssemblingMachineBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:getProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectAssemblingMachine:setAssemblingMachineBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:setProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectAssemblingMachine:getAssemblingMachineBuildSound(buildSound)
	return self:getProperty("build_sound",buildSound)
end

function aspectAssemblingMachine:setAssemblingMachineBuildSound(buildSound)
	return self:setProperty("build_sound",buildSound)
end

function aspectAssemblingMachine:getAssemblingMachineCloseSound(closeSound)
	return self:getProperty("close_sound",closeSound)
end

function aspectAssemblingMachine:setAssemblingMachineCloseSound(closeSound)
	return self:setProperty("close_sound",closeSound)
end

function aspectAssemblingMachine:getAssemblingMachineCollisionBox(collisionBox)
	return self:getProperty("collision_box",collisionBox)
end

function aspectAssemblingMachine:setAssemblingMachineCollisionBox(collisionBox)
	return self:setProperty("collision_box",collisionBox)
end

function aspectAssemblingMachine:getAssemblingMachineCollisionMask(collisionMask)
	return self:getProperty("collision_mask",collisionMask)
end

function aspectAssemblingMachine:setAssemblingMachineCollisionMask(collisionMask)
	return self:setProperty("collision_mask",collisionMask)
end

function aspectAssemblingMachine:getAssemblingMachineCreatedEffect(createdEffect)
	return self:getProperty("created_effect",createdEffect)
end

function aspectAssemblingMachine:setAssemblingMachineCreatedEffect(createdEffect)
	return self:setProperty("created_effect",createdEffect)
end

function aspectAssemblingMachine:getAssemblingMachineCreatedSmoke(createdSmoke)
	return self:getProperty("created_smoke",createdSmoke)
end

function aspectAssemblingMachine:setAssemblingMachineCreatedSmoke(createdSmoke)
	return self:setProperty("created_smoke",createdSmoke)
end

function aspectAssemblingMachine:getAssemblingMachineDrawingBox(drawingBox)
	return self:getProperty("drawing_box",drawingBox)
end

function aspectAssemblingMachine:setAssemblingMachineDrawingBox(drawingBox)
	return self:setProperty("drawing_box",drawingBox)
end

function aspectAssemblingMachine:getAssemblingMachineEmissionsPerSecond(emissionsPerSecond)
	return self:getProperty("emissions_per_second",emissionsPerSecond)
end

function aspectAssemblingMachine:setAssemblingMachineEmissionsPerSecond(emissionsPerSecond)
	return self:setProperty("emissions_per_second",emissionsPerSecond)
end

function aspectAssemblingMachine:getAssemblingMachineEnemyMapColor(enemyMapColor)
	return self:getProperty("enemy_map_color",enemyMapColor)
end

function aspectAssemblingMachine:setAssemblingMachineEnemyMapColor(enemyMapColor)
	return self:setProperty("enemy_map_color",enemyMapColor)
end

function aspectAssemblingMachine:getAssemblingMachineFastReplaceableGroup(fastReplaceableGroup)
	return self:getProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectAssemblingMachine:setAssemblingMachineFastReplaceableGroup(fastReplaceableGroup)
	return self:setProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectAssemblingMachine:getAssemblingMachineFlags(flags)
	return self:getProperty("flags",flags)
end

function aspectAssemblingMachine:setAssemblingMachineFlags(flags)
	return self:setProperty("flags",flags)
end

function aspectAssemblingMachine:getAssemblingMachineFriendlyMapColor(friendlyMapColor)
	return self:getProperty("friendly_map_color",friendlyMapColor)
end

function aspectAssemblingMachine:setAssemblingMachineFriendlyMapColor(friendlyMapColor)
	return self:setProperty("friendly_map_color",friendlyMapColor)
end

function aspectAssemblingMachine:getAssemblingMachineHitVisualizationBox(hitVisualizationBox)
	return self:getProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectAssemblingMachine:setAssemblingMachineHitVisualizationBox(hitVisualizationBox)
	return self:setProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectAssemblingMachine:getAssemblingMachineMapColor(mapColor)
	return self:getProperty("map_color",mapColor)
end

function aspectAssemblingMachine:setAssemblingMachineMapColor(mapColor)
	return self:setProperty("map_color",mapColor)
end

function aspectAssemblingMachine:getAssemblingMachineMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:getProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectAssemblingMachine:setAssemblingMachineMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:setProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectAssemblingMachine:getAssemblingMachineMinable(minable)
	return self:getProperty("minable",minable)
end

function aspectAssemblingMachine:setAssemblingMachineMinable(minable)
	return self:setProperty("minable",minable)
end

function aspectAssemblingMachine:getAssemblingMachineMinedSound(minedSound)
	return self:getProperty("mined_sound",minedSound)
end

function aspectAssemblingMachine:setAssemblingMachineMinedSound(minedSound)
	return self:setProperty("mined_sound",minedSound)
end

function aspectAssemblingMachine:getAssemblingMachineMiningSound(miningSound)
	return self:getProperty("mining_sound",miningSound)
end

function aspectAssemblingMachine:setAssemblingMachineMiningSound(miningSound)
	return self:setProperty("mining_sound",miningSound)
end

function aspectAssemblingMachine:getAssemblingMachineNextUpgrade(nextUpgrade)
	return self:getProperty("next_upgrade",nextUpgrade)
end

function aspectAssemblingMachine:setAssemblingMachineNextUpgrade(nextUpgrade)
	return self:setProperty("next_upgrade",nextUpgrade)
end

function aspectAssemblingMachine:getAssemblingMachineOpenSound(openSound)
	return self:getProperty("open_sound",openSound)
end

function aspectAssemblingMachine:setAssemblingMachineOpenSound(openSound)
	return self:setProperty("open_sound",openSound)
end

function aspectAssemblingMachine:getAssemblingMachinePlaceableBy(placeableBy)
	return self:getProperty("placeable_by",placeableBy)
end

function aspectAssemblingMachine:setAssemblingMachinePlaceableBy(placeableBy)
	return self:setProperty("placeable_by",placeableBy)
end

function aspectAssemblingMachine:getAssemblingMachineRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:getProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectAssemblingMachine:setAssemblingMachineRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:setProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectAssemblingMachine:getAssemblingMachineRemainsWhenMined(remainsWhenMined)
	return self:getProperty("remains_when_mined",remainsWhenMined)
end

function aspectAssemblingMachine:setAssemblingMachineRemainsWhenMined(remainsWhenMined)
	return self:setProperty("remains_when_mined",remainsWhenMined)
end

function aspectAssemblingMachine:getAssemblingMachineRemoveDecoratives(removeDecoratives)
	return self:getProperty("remove_decoratives",removeDecoratives)
end

function aspectAssemblingMachine:setAssemblingMachineRemoveDecoratives(removeDecoratives)
	return self:setProperty("remove_decoratives",removeDecoratives)
end

function aspectAssemblingMachine:getAssemblingMachineRotatedSound(rotatedSound)
	return self:getProperty("rotated_sound",rotatedSound)
end

function aspectAssemblingMachine:setAssemblingMachineRotatedSound(rotatedSound)
	return self:setProperty("rotated_sound",rotatedSound)
end

function aspectAssemblingMachine:getAssemblingMachineSelectableInGame(selectableInGame)
	return self:getProperty("selectable_in_game",selectableInGame)
end

function aspectAssemblingMachine:setAssemblingMachineSelectableInGame(selectableInGame)
	return self:setProperty("selectable_in_game",selectableInGame)
end

function aspectAssemblingMachine:getAssemblingMachineSelectionBox(selectionBox)
	return self:getProperty("selection_box",selectionBox)
end

function aspectAssemblingMachine:setAssemblingMachineSelectionBox(selectionBox)
	return self:setProperty("selection_box",selectionBox)
end

function aspectAssemblingMachine:getAssemblingMachineSelectionPriority(selectionPriority)
	return self:getProperty("selection_priority",selectionPriority)
end

function aspectAssemblingMachine:setAssemblingMachineSelectionPriority(selectionPriority)
	return self:setProperty("selection_priority",selectionPriority)
end

function aspectAssemblingMachine:getAssemblingMachineShootingCursorSize(shootingCursorSize)
	return self:getProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectAssemblingMachine:setAssemblingMachineShootingCursorSize(shootingCursorSize)
	return self:setProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectAssemblingMachine:getAssemblingMachineStickerBox(stickerBox)
	return self:getProperty("sticker_box",stickerBox)
end

function aspectAssemblingMachine:setAssemblingMachineStickerBox(stickerBox)
	return self:setProperty("sticker_box",stickerBox)
end

function aspectAssemblingMachine:getAssemblingMachineSubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectAssemblingMachine:setAssemblingMachineSubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectAssemblingMachine:getAssemblingMachineTileHeight(tileHeight)
	return self:getProperty("tile_height",tileHeight)
end

function aspectAssemblingMachine:setAssemblingMachineTileHeight(tileHeight)
	return self:setProperty("tile_height",tileHeight)
end

function aspectAssemblingMachine:getAssemblingMachineTileWidth(tileWidth)
	return self:getProperty("tile_width",tileWidth)
end

function aspectAssemblingMachine:setAssemblingMachineTileWidth(tileWidth)
	return self:setProperty("tile_width",tileWidth)
end

function aspectAssemblingMachine:getAssemblingMachineTriggerTargetMask(triggerTargetMask)
	return self:getProperty("trigger_target_mask",triggerTargetMask)
end

function aspectAssemblingMachine:setAssemblingMachineTriggerTargetMask(triggerTargetMask)
	return self:setProperty("trigger_target_mask",triggerTargetMask)
end

function aspectAssemblingMachine:getAssemblingMachineVehicleImpactSound(vehicleImpactSound)
	return self:getProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectAssemblingMachine:setAssemblingMachineVehicleImpactSound(vehicleImpactSound)
	return self:setProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectAssemblingMachine:getAssemblingMachineWaterReflection(waterReflection)
	return self:getProperty("water_reflection",waterReflection)
end

function aspectAssemblingMachine:setAssemblingMachineWaterReflection(waterReflection)
	return self:setProperty("water_reflection",waterReflection)
end

function aspectAssemblingMachine:getAssemblingMachineWorkingSound(workingSound)
	return self:getProperty("working_sound",workingSound)
end

function aspectAssemblingMachine:setAssemblingMachineWorkingSound(workingSound)
	return self:setProperty("working_sound",workingSound)
end

function aspectAssemblingMachine:getAssemblingMachineName(name)
	return self:getProperty("name",name)
end

function aspectAssemblingMachine:setAssemblingMachineName(name)
	return self:setProperty("name",name)
end

function aspectAssemblingMachine:getAssemblingMachineType(type)
	return self:getProperty("type",type)
end

function aspectAssemblingMachine:setAssemblingMachineType(type)
	return self:setProperty("type",type)
end

function aspectAssemblingMachine:getAssemblingMachineLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectAssemblingMachine:setAssemblingMachineLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectAssemblingMachine:getAssemblingMachineLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectAssemblingMachine:setAssemblingMachineLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectAssemblingMachine:getAssemblingMachineOrder(order)
	return self:getProperty("order",order)
end

function aspectAssemblingMachine:setAssemblingMachineOrder(order)
	return self:setProperty("order",order)
end




return aspectAssemblingMachine