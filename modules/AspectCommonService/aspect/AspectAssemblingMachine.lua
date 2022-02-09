

---@class aspectAssemblingMachine
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


function aspectAssemblingMachine:getFixedRecipe(fixedRecipe)
	return self:getProperty("fixed_recipe",fixedRecipe)
end

function aspectAssemblingMachine:setFixedRecipe(fixedRecipe)
	return self:setProperty("fixed_recipe",fixedRecipe)
end

function aspectAssemblingMachine:getGuiTitleKey(guiTitleKey)
	return self:getProperty("gui_title_key",guiTitleKey)
end

function aspectAssemblingMachine:setGuiTitleKey(guiTitleKey)
	return self:setProperty("gui_title_key",guiTitleKey)
end

function aspectAssemblingMachine:getIngredientCount(ingredientCount)
	return self:getProperty("ingredient_count",ingredientCount)
end

function aspectAssemblingMachine:setIngredientCount(ingredientCount)
	return self:setProperty("ingredient_count",ingredientCount)
end

function aspectAssemblingMachine:getCraftingCategories(craftingCategories)
	return self:getProperty("crafting_categories",craftingCategories)
end

function aspectAssemblingMachine:setCraftingCategories(craftingCategories)
	return self:setProperty("crafting_categories",craftingCategories)
end

function aspectAssemblingMachine:getCraftingSpeed(craftingSpeed)
	return self:getProperty("crafting_speed",craftingSpeed)
end

function aspectAssemblingMachine:setCraftingSpeed(craftingSpeed)
	return self:setProperty("crafting_speed",craftingSpeed)
end

function aspectAssemblingMachine:getEnergySource(energySource)
	return self:getProperty("energy_source",energySource)
end

function aspectAssemblingMachine:setEnergySource(energySource)
	return self:setProperty("energy_source",energySource)
end

function aspectAssemblingMachine:getEnergyUsage(energyUsage)
	return self:getProperty("energy_usage",energyUsage)
end

function aspectAssemblingMachine:setEnergyUsage(energyUsage)
	return self:setProperty("energy_usage",energyUsage)
end

function aspectAssemblingMachine:getAllowedEffects(allowedEffects)
	return self:getProperty("allowed_effects",allowedEffects)
end

function aspectAssemblingMachine:setAllowedEffects(allowedEffects)
	return self:setProperty("allowed_effects",allowedEffects)
end

function aspectAssemblingMachine:getAlwaysDrawIdleAnimation(alwaysDrawIdleAnimation)
	return self:getProperty("always_draw_idle_animation",alwaysDrawIdleAnimation)
end

function aspectAssemblingMachine:setAlwaysDrawIdleAnimation(alwaysDrawIdleAnimation)
	return self:setProperty("always_draw_idle_animation",alwaysDrawIdleAnimation)
end

function aspectAssemblingMachine:getAnimation(animation)
	return self:getProperty("animation",animation)
end

function aspectAssemblingMachine:setAnimation(animation)
	return self:setProperty("animation",animation)
end

function aspectAssemblingMachine:getBaseProductivity(baseProductivity)
	return self:getProperty("base_productivity",baseProductivity)
end

function aspectAssemblingMachine:setBaseProductivity(baseProductivity)
	return self:setProperty("base_productivity",baseProductivity)
end

function aspectAssemblingMachine:getDefaultRecipeTint(defaultRecipeTint)
	return self:getProperty("default_recipe_tint",defaultRecipeTint)
end

function aspectAssemblingMachine:setDefaultRecipeTint(defaultRecipeTint)
	return self:setProperty("default_recipe_tint",defaultRecipeTint)
end

function aspectAssemblingMachine:getDrawEntityInfoIconBackground(drawEntityInfoIconBackground)
	return self:getProperty("draw_entity_info_icon_background",drawEntityInfoIconBackground)
end

function aspectAssemblingMachine:setDrawEntityInfoIconBackground(drawEntityInfoIconBackground)
	return self:setProperty("draw_entity_info_icon_background",drawEntityInfoIconBackground)
end

function aspectAssemblingMachine:getEntityInfoIconShift(entityInfoIconShift)
	return self:getProperty("entity_info_icon_shift",entityInfoIconShift)
end

function aspectAssemblingMachine:setEntityInfoIconShift(entityInfoIconShift)
	return self:setProperty("entity_info_icon_shift",entityInfoIconShift)
end

function aspectAssemblingMachine:getFluidBoxes(fluidBoxes)
	return self:getProperty("fluid_boxes",fluidBoxes)
end

function aspectAssemblingMachine:setFluidBoxes(fluidBoxes)
	return self:setProperty("fluid_boxes",fluidBoxes)
end

function aspectAssemblingMachine:getIdleAnimation(idleAnimation)
	return self:getProperty("idle_animation",idleAnimation)
end

function aspectAssemblingMachine:setIdleAnimation(idleAnimation)
	return self:setProperty("idle_animation",idleAnimation)
end

function aspectAssemblingMachine:getMatchAnimationSpeedToActivity(matchAnimationSpeedToActivity)
	return self:getProperty("match_animation_speed_to_activity",matchAnimationSpeedToActivity)
end

function aspectAssemblingMachine:setMatchAnimationSpeedToActivity(matchAnimationSpeedToActivity)
	return self:setProperty("match_animation_speed_to_activity",matchAnimationSpeedToActivity)
end

function aspectAssemblingMachine:getModuleSpecification(moduleSpecification)
	return self:getProperty("module_specification",moduleSpecification)
end

function aspectAssemblingMachine:setModuleSpecification(moduleSpecification)
	return self:setProperty("module_specification",moduleSpecification)
end

function aspectAssemblingMachine:getReturnIngredientsOnChange(returnIngredientsOnChange)
	return self:getProperty("return_ingredients_on_change",returnIngredientsOnChange)
end

function aspectAssemblingMachine:setReturnIngredientsOnChange(returnIngredientsOnChange)
	return self:setProperty("return_ingredients_on_change",returnIngredientsOnChange)
end

function aspectAssemblingMachine:getScaleEntityInfoIcon(scaleEntityInfoIcon)
	return self:getProperty("scale_entity_info_icon",scaleEntityInfoIcon)
end

function aspectAssemblingMachine:setScaleEntityInfoIcon(scaleEntityInfoIcon)
	return self:setProperty("scale_entity_info_icon",scaleEntityInfoIcon)
end

function aspectAssemblingMachine:getShiftAnimationTransitionDuration(shiftAnimationTransitionDuration)
	return self:getProperty("shift_animation_transition_duration",shiftAnimationTransitionDuration)
end

function aspectAssemblingMachine:setShiftAnimationTransitionDuration(shiftAnimationTransitionDuration)
	return self:setProperty("shift_animation_transition_duration",shiftAnimationTransitionDuration)
end

function aspectAssemblingMachine:getShiftAnimationWaypointStopDuration(shiftAnimationWaypointStopDuration)
	return self:getProperty("shift_animation_waypoint_stop_duration",shiftAnimationWaypointStopDuration)
end

function aspectAssemblingMachine:setShiftAnimationWaypointStopDuration(shiftAnimationWaypointStopDuration)
	return self:setProperty("shift_animation_waypoint_stop_duration",shiftAnimationWaypointStopDuration)
end

function aspectAssemblingMachine:getShiftAnimationWaypoints(shiftAnimationWaypoints)
	return self:getProperty("shift_animation_waypoints",shiftAnimationWaypoints)
end

function aspectAssemblingMachine:setShiftAnimationWaypoints(shiftAnimationWaypoints)
	return self:setProperty("shift_animation_waypoints",shiftAnimationWaypoints)
end

function aspectAssemblingMachine:getShowRecipeIcon(showRecipeIcon)
	return self:getProperty("show_recipe_icon",showRecipeIcon)
end

function aspectAssemblingMachine:setShowRecipeIcon(showRecipeIcon)
	return self:setProperty("show_recipe_icon",showRecipeIcon)
end

function aspectAssemblingMachine:getShowRecipeIconOnMap(showRecipeIconOnMap)
	return self:getProperty("show_recipe_icon_on_map",showRecipeIconOnMap)
end

function aspectAssemblingMachine:setShowRecipeIconOnMap(showRecipeIconOnMap)
	return self:setProperty("show_recipe_icon_on_map",showRecipeIconOnMap)
end

function aspectAssemblingMachine:getStatusColors(statusColors)
	return self:getProperty("status_colors",statusColors)
end

function aspectAssemblingMachine:setStatusColors(statusColors)
	return self:setProperty("status_colors",statusColors)
end

function aspectAssemblingMachine:getWorkingVisualisations(workingVisualisations)
	return self:getProperty("working_visualisations",workingVisualisations)
end

function aspectAssemblingMachine:setWorkingVisualisations(workingVisualisations)
	return self:setProperty("working_visualisations",workingVisualisations)
end

function aspectAssemblingMachine:getAlertWhenDamaged(alertWhenDamaged)
	return self:getProperty("alert_when_damaged",alertWhenDamaged)
end

function aspectAssemblingMachine:setAlertWhenDamaged(alertWhenDamaged)
	return self:setProperty("alert_when_damaged",alertWhenDamaged)
end

function aspectAssemblingMachine:getAttackReaction(attackReaction)
	return self:getProperty("attack_reaction",attackReaction)
end

function aspectAssemblingMachine:setAttackReaction(attackReaction)
	return self:setProperty("attack_reaction",attackReaction)
end

function aspectAssemblingMachine:getCorpse(corpse)
	return self:getProperty("corpse",corpse)
end

function aspectAssemblingMachine:setCorpse(corpse)
	return self:setProperty("corpse",corpse)
end

function aspectAssemblingMachine:getCreateGhostOnDeath(createGhostOnDeath)
	return self:getProperty("create_ghost_on_death",createGhostOnDeath)
end

function aspectAssemblingMachine:setCreateGhostOnDeath(createGhostOnDeath)
	return self:setProperty("create_ghost_on_death",createGhostOnDeath)
end

function aspectAssemblingMachine:getDamagedTriggerEffect(damagedTriggerEffect)
	return self:getProperty("damaged_trigger_effect",damagedTriggerEffect)
end

function aspectAssemblingMachine:setDamagedTriggerEffect(damagedTriggerEffect)
	return self:setProperty("damaged_trigger_effect",damagedTriggerEffect)
end

function aspectAssemblingMachine:getDyingExplosion(dyingExplosion)
	return self:getProperty("dying_explosion",dyingExplosion)
end

function aspectAssemblingMachine:setDyingExplosion(dyingExplosion)
	return self:setProperty("dying_explosion",dyingExplosion)
end

function aspectAssemblingMachine:getDyingTriggerEffect(dyingTriggerEffect)
	return self:getProperty("dying_trigger_effect",dyingTriggerEffect)
end

function aspectAssemblingMachine:setDyingTriggerEffect(dyingTriggerEffect)
	return self:setProperty("dying_trigger_effect",dyingTriggerEffect)
end

function aspectAssemblingMachine:getHealingPerTick(healingPerTick)
	return self:getProperty("healing_per_tick",healingPerTick)
end

function aspectAssemblingMachine:setHealingPerTick(healingPerTick)
	return self:setProperty("healing_per_tick",healingPerTick)
end

function aspectAssemblingMachine:getHideResistances(hideResistances)
	return self:getProperty("hide_resistances",hideResistances)
end

function aspectAssemblingMachine:setHideResistances(hideResistances)
	return self:setProperty("hide_resistances",hideResistances)
end

function aspectAssemblingMachine:getIntegrationPatch(integrationPatch)
	return self:getProperty("integration_patch",integrationPatch)
end

function aspectAssemblingMachine:setIntegrationPatch(integrationPatch)
	return self:setProperty("integration_patch",integrationPatch)
end

function aspectAssemblingMachine:getIntegrationPatchRenderLayer(integrationPatchRenderLayer)
	return self:getProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end

function aspectAssemblingMachine:setIntegrationPatchRenderLayer(integrationPatchRenderLayer)
	return self:setProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end

function aspectAssemblingMachine:getLoot(loot)
	return self:getProperty("loot",loot)
end

function aspectAssemblingMachine:setLoot(loot)
	return self:setProperty("loot",loot)
end

function aspectAssemblingMachine:getMaxHealth(maxHealth)
	return self:getProperty("max_health",maxHealth)
end

function aspectAssemblingMachine:setMaxHealth(maxHealth)
	return self:setProperty("max_health",maxHealth)
end

function aspectAssemblingMachine:getRandomCorpseVariation(randomCorpseVariation)
	return self:getProperty("random_corpse_variation",randomCorpseVariation)
end

function aspectAssemblingMachine:setRandomCorpseVariation(randomCorpseVariation)
	return self:setProperty("random_corpse_variation",randomCorpseVariation)
end

function aspectAssemblingMachine:getRepairSound(repairSound)
	return self:getProperty("repair_sound",repairSound)
end

function aspectAssemblingMachine:setRepairSound(repairSound)
	return self:setProperty("repair_sound",repairSound)
end

function aspectAssemblingMachine:getRepairSpeedModifier(repairSpeedModifier)
	return self:getProperty("repair_speed_modifier",repairSpeedModifier)
end

function aspectAssemblingMachine:setRepairSpeedModifier(repairSpeedModifier)
	return self:setProperty("repair_speed_modifier",repairSpeedModifier)
end

function aspectAssemblingMachine:getResistances(resistances)
	return self:getProperty("resistances",resistances)
end

function aspectAssemblingMachine:setResistances(resistances)
	return self:setProperty("resistances",resistances)
end

function aspectAssemblingMachine:getIcons(icons)
	return self:getProperty("icons",icons)
end

function aspectAssemblingMachine:setIcons(icons)
	return self:setProperty("icons",icons)
end

function aspectAssemblingMachine:getIcon(icon)
	return self:getProperty("icon",icon)
end

function aspectAssemblingMachine:setIcon(icon)
	return self:setProperty("icon",icon)
end

function aspectAssemblingMachine:getIconSize(iconSize)
	return self:getProperty("icon_size",iconSize)
end

function aspectAssemblingMachine:setIconSize(iconSize)
	return self:setProperty("icon_size",iconSize)
end

function aspectAssemblingMachine:getAdditionalPastableEntities(additionalPastableEntities)
	return self:getProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectAssemblingMachine:setAdditionalPastableEntities(additionalPastableEntities)
	return self:setProperty("additional_pastable_entities",additionalPastableEntities)
end

function aspectAssemblingMachine:getAlertIconScale(alertIconScale)
	return self:getProperty("alert_icon_scale",alertIconScale)
end

function aspectAssemblingMachine:setAlertIconScale(alertIconScale)
	return self:setProperty("alert_icon_scale",alertIconScale)
end

function aspectAssemblingMachine:getAlertIconShift(alertIconShift)
	return self:getProperty("alert_icon_shift",alertIconShift)
end

function aspectAssemblingMachine:setAlertIconShift(alertIconShift)
	return self:setProperty("alert_icon_shift",alertIconShift)
end

function aspectAssemblingMachine:getAllowCopyPaste(allowCopyPaste)
	return self:getProperty("allow_copy_paste",allowCopyPaste)
end

function aspectAssemblingMachine:setAllowCopyPaste(allowCopyPaste)
	return self:setProperty("allow_copy_paste",allowCopyPaste)
end

function aspectAssemblingMachine:getAutoplace(autoplace)
	return self:getProperty("autoplace",autoplace)
end

function aspectAssemblingMachine:setAutoplace(autoplace)
	return self:setProperty("autoplace",autoplace)
end

function aspectAssemblingMachine:getBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:getProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectAssemblingMachine:setBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
	return self:setProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end

function aspectAssemblingMachine:getBuildSound(buildSound)
	return self:getProperty("build_sound",buildSound)
end

function aspectAssemblingMachine:setBuildSound(buildSound)
	return self:setProperty("build_sound",buildSound)
end

function aspectAssemblingMachine:getCloseSound(closeSound)
	return self:getProperty("close_sound",closeSound)
end

function aspectAssemblingMachine:setCloseSound(closeSound)
	return self:setProperty("close_sound",closeSound)
end

function aspectAssemblingMachine:getCollisionBox(collisionBox)
	return self:getProperty("collision_box",collisionBox)
end

function aspectAssemblingMachine:setCollisionBox(collisionBox)
	return self:setProperty("collision_box",collisionBox)
end

function aspectAssemblingMachine:getCollisionMask(collisionMask)
	return self:getProperty("collision_mask",collisionMask)
end

function aspectAssemblingMachine:setCollisionMask(collisionMask)
	return self:setProperty("collision_mask",collisionMask)
end

function aspectAssemblingMachine:getCreatedEffect(createdEffect)
	return self:getProperty("created_effect",createdEffect)
end

function aspectAssemblingMachine:setCreatedEffect(createdEffect)
	return self:setProperty("created_effect",createdEffect)
end

function aspectAssemblingMachine:getCreatedSmoke(createdSmoke)
	return self:getProperty("created_smoke",createdSmoke)
end

function aspectAssemblingMachine:setCreatedSmoke(createdSmoke)
	return self:setProperty("created_smoke",createdSmoke)
end

function aspectAssemblingMachine:getDrawingBox(drawingBox)
	return self:getProperty("drawing_box",drawingBox)
end

function aspectAssemblingMachine:setDrawingBox(drawingBox)
	return self:setProperty("drawing_box",drawingBox)
end

function aspectAssemblingMachine:getEmissionsPerSecond(emissionsPerSecond)
	return self:getProperty("emissions_per_second",emissionsPerSecond)
end

function aspectAssemblingMachine:setEmissionsPerSecond(emissionsPerSecond)
	return self:setProperty("emissions_per_second",emissionsPerSecond)
end

function aspectAssemblingMachine:getEnemyMapColor(enemyMapColor)
	return self:getProperty("enemy_map_color",enemyMapColor)
end

function aspectAssemblingMachine:setEnemyMapColor(enemyMapColor)
	return self:setProperty("enemy_map_color",enemyMapColor)
end

function aspectAssemblingMachine:getFastReplaceableGroup(fastReplaceableGroup)
	return self:getProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectAssemblingMachine:setFastReplaceableGroup(fastReplaceableGroup)
	return self:setProperty("fast_replaceable_group",fastReplaceableGroup)
end

function aspectAssemblingMachine:getFlags(flags)
	return self:getProperty("flags",flags)
end

function aspectAssemblingMachine:setFlags(flags)
	return self:setProperty("flags",flags)
end

function aspectAssemblingMachine:getFriendlyMapColor(friendlyMapColor)
	return self:getProperty("friendly_map_color",friendlyMapColor)
end

function aspectAssemblingMachine:setFriendlyMapColor(friendlyMapColor)
	return self:setProperty("friendly_map_color",friendlyMapColor)
end

function aspectAssemblingMachine:getHitVisualizationBox(hitVisualizationBox)
	return self:getProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectAssemblingMachine:setHitVisualizationBox(hitVisualizationBox)
	return self:setProperty("hit_visualization_box",hitVisualizationBox)
end

function aspectAssemblingMachine:getMapColor(mapColor)
	return self:getProperty("map_color",mapColor)
end

function aspectAssemblingMachine:setMapColor(mapColor)
	return self:setProperty("map_color",mapColor)
end

function aspectAssemblingMachine:getMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:getProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectAssemblingMachine:setMapGeneratorBoundingBox(mapGeneratorBoundingBox)
	return self:setProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end

function aspectAssemblingMachine:getMinable(minable)
	return self:getProperty("minable",minable)
end

function aspectAssemblingMachine:setMinable(minable)
	return self:setProperty("minable",minable)
end

function aspectAssemblingMachine:getMinedSound(minedSound)
	return self:getProperty("mined_sound",minedSound)
end

function aspectAssemblingMachine:setMinedSound(minedSound)
	return self:setProperty("mined_sound",minedSound)
end

function aspectAssemblingMachine:getMiningSound(miningSound)
	return self:getProperty("mining_sound",miningSound)
end

function aspectAssemblingMachine:setMiningSound(miningSound)
	return self:setProperty("mining_sound",miningSound)
end

function aspectAssemblingMachine:getNextUpgrade(nextUpgrade)
	return self:getProperty("next_upgrade",nextUpgrade)
end

function aspectAssemblingMachine:setNextUpgrade(nextUpgrade)
	return self:setProperty("next_upgrade",nextUpgrade)
end

function aspectAssemblingMachine:getOpenSound(openSound)
	return self:getProperty("open_sound",openSound)
end

function aspectAssemblingMachine:setOpenSound(openSound)
	return self:setProperty("open_sound",openSound)
end

function aspectAssemblingMachine:getPlaceableBy(placeableBy)
	return self:getProperty("placeable_by",placeableBy)
end

function aspectAssemblingMachine:setPlaceableBy(placeableBy)
	return self:setProperty("placeable_by",placeableBy)
end

function aspectAssemblingMachine:getRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:getProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectAssemblingMachine:setRadiusVisualisationSpecification(radiusVisualisationSpecification)
	return self:setProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end

function aspectAssemblingMachine:getRemainsWhenMined(remainsWhenMined)
	return self:getProperty("remains_when_mined",remainsWhenMined)
end

function aspectAssemblingMachine:setRemainsWhenMined(remainsWhenMined)
	return self:setProperty("remains_when_mined",remainsWhenMined)
end

function aspectAssemblingMachine:getRemoveDecoratives(removeDecoratives)
	return self:getProperty("remove_decoratives",removeDecoratives)
end

function aspectAssemblingMachine:setRemoveDecoratives(removeDecoratives)
	return self:setProperty("remove_decoratives",removeDecoratives)
end

function aspectAssemblingMachine:getRotatedSound(rotatedSound)
	return self:getProperty("rotated_sound",rotatedSound)
end

function aspectAssemblingMachine:setRotatedSound(rotatedSound)
	return self:setProperty("rotated_sound",rotatedSound)
end

function aspectAssemblingMachine:getSelectableInGame(selectableInGame)
	return self:getProperty("selectable_in_game",selectableInGame)
end

function aspectAssemblingMachine:setSelectableInGame(selectableInGame)
	return self:setProperty("selectable_in_game",selectableInGame)
end

function aspectAssemblingMachine:getSelectionBox(selectionBox)
	return self:getProperty("selection_box",selectionBox)
end

function aspectAssemblingMachine:setSelectionBox(selectionBox)
	return self:setProperty("selection_box",selectionBox)
end

function aspectAssemblingMachine:getSelectionPriority(selectionPriority)
	return self:getProperty("selection_priority",selectionPriority)
end

function aspectAssemblingMachine:setSelectionPriority(selectionPriority)
	return self:setProperty("selection_priority",selectionPriority)
end

function aspectAssemblingMachine:getShootingCursorSize(shootingCursorSize)
	return self:getProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectAssemblingMachine:setShootingCursorSize(shootingCursorSize)
	return self:setProperty("shooting_cursor_size",shootingCursorSize)
end

function aspectAssemblingMachine:getStickerBox(stickerBox)
	return self:getProperty("sticker_box",stickerBox)
end

function aspectAssemblingMachine:setStickerBox(stickerBox)
	return self:setProperty("sticker_box",stickerBox)
end

function aspectAssemblingMachine:getSubgroup(subgroup)
	return self:getProperty("subgroup",subgroup)
end

function aspectAssemblingMachine:setSubgroup(subgroup)
	return self:setProperty("subgroup",subgroup)
end

function aspectAssemblingMachine:getTileHeight(tileHeight)
	return self:getProperty("tile_height",tileHeight)
end

function aspectAssemblingMachine:setTileHeight(tileHeight)
	return self:setProperty("tile_height",tileHeight)
end

function aspectAssemblingMachine:getTileWidth(tileWidth)
	return self:getProperty("tile_width",tileWidth)
end

function aspectAssemblingMachine:setTileWidth(tileWidth)
	return self:setProperty("tile_width",tileWidth)
end

function aspectAssemblingMachine:getTriggerTargetMask(triggerTargetMask)
	return self:getProperty("trigger_target_mask",triggerTargetMask)
end

function aspectAssemblingMachine:setTriggerTargetMask(triggerTargetMask)
	return self:setProperty("trigger_target_mask",triggerTargetMask)
end

function aspectAssemblingMachine:getVehicleImpactSound(vehicleImpactSound)
	return self:getProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectAssemblingMachine:setVehicleImpactSound(vehicleImpactSound)
	return self:setProperty("vehicle_impact_sound",vehicleImpactSound)
end

function aspectAssemblingMachine:getWaterReflection(waterReflection)
	return self:getProperty("water_reflection",waterReflection)
end

function aspectAssemblingMachine:setWaterReflection(waterReflection)
	return self:setProperty("water_reflection",waterReflection)
end

function aspectAssemblingMachine:getWorkingSound(workingSound)
	return self:getProperty("working_sound",workingSound)
end

function aspectAssemblingMachine:setWorkingSound(workingSound)
	return self:setProperty("working_sound",workingSound)
end

function aspectAssemblingMachine:getName(name)
	return self:getProperty("name",name)
end

function aspectAssemblingMachine:setName(name)
	return self:setProperty("name",name)
end

function aspectAssemblingMachine:getType(type)
	return self:getProperty("type",type)
end

function aspectAssemblingMachine:setType(type)
	return self:setProperty("type",type)
end

function aspectAssemblingMachine:getLocalisedDescription(localisedDescription)
	return self:getProperty("localised_description",localisedDescription)
end

function aspectAssemblingMachine:setLocalisedDescription(localisedDescription)
	return self:setProperty("localised_description",localisedDescription)
end

function aspectAssemblingMachine:getLocalisedName(localisedName)
	return self:getProperty("localised_name",localisedName)
end

function aspectAssemblingMachine:setLocalisedName(localisedName)
	return self:setProperty("localised_name",localisedName)
end

function aspectAssemblingMachine:getOrder(order)
	return self:getProperty("order",order)
end

function aspectAssemblingMachine:setOrder(order)
	return self:setProperty("order",order)
end




return aspectAssemblingMachine