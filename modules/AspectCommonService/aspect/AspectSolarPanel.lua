
---@class aspectSolarPanel
local aspectSolarPanel = {}


----通用内部操作方法 ----- 开始----->>>>
---@return aspectSolarPanel
function aspectSolarPanel.create(luaObject)
    aspectSolarPanel.luaObject = luaObject
    return aspectSolarPanel;
end


--根据给定类型获取数据原型
function aspectSolarPanel.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为aspectSolarPanel
        return aspectSolarPanel.create(item)
    end

--获取于当前原型TYPE相同的新原型
function aspectSolarPanel:getSame(name)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then

        local item = nil

        if name~=nil then
            item = table.deepcopy(data.raw[luaEntity.type][name])
        end

        if name==nil then
            item = table.deepcopy(data.raw[luaEntity.type][luaEntity.name])
        end

        --将luaEntity封装为aspectSolarPanel
        return aspectSolarPanel.create(item)

    end

    return aspectSolarPanel.create(nil)
end

--基本设值方法(含有非空检查)
---@return aspectSolarPanel
function aspectSolarPanel:setProperty(property,value)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity[property] = value
    end

    return self
end

--基本取值方法(含有非空检查)
function aspectSolarPanel:getProperty(propertyName)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity[propertyName]
    end

    return nil
end

--获取当前上下文中的LUAOBJECT
function aspectSolarPanel:getLuaObject()
    return self.luaObject
end

--设置当前上下文中的LUAOBJECT
function aspectSolarPanel:setLuaObject(luaObject)
    self.luaObject = luaObject
end


function aspectSolarPanel:getType()
    return self:getProperty("type")
end


function aspectSolarPanel:getName()
    return self:getProperty("name")
end


---@return aspectSolarPanel
function aspectSolarPanel:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该aspectSolarPanel
---@return aspectSolarPanel
function aspectSolarPanel:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该aspectSolarPanel至数据原型
---@return aspectSolarPanel
function aspectSolarPanel:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该aspectSolarPanel至数据原型
---@return aspectSolarPanel
function aspectSolarPanel:joinToData()
    return self:insertToData()
end

--加入该aspectSolarPanel至数据原型
---@return aspectSolarPanel
function aspectSolarPanel:insertInto()
    return self:insertToData()
end

--更新该aspectSolarPanel至数据原型
---@return aspectSolarPanel
function aspectSolarPanel:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
---@return boolean
function aspectSolarPanel:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

--从其他aspectSolarPanel转入
---@return aspectSolarPanel
function aspectSolarPanel:import(object)
    self:setLuaObject(object:getLuaObject())
    return self
end
----通用内部操作方法 ----- 结束 -----<<<<






---@return any
function aspectSolarPanel:getEnergySource()
    return self:getProperty("energy_source")
end


---@return any
function aspectSolarPanel:getPicture()
    return self:getProperty("picture")
end


---@return any
function aspectSolarPanel:getProduction()
    return self:getProperty("production")
end


---@return any
function aspectSolarPanel:getOverlay()
    return self:getProperty("overlay")
end


---@return any
function aspectSolarPanel:getAllowRunTimeChangeOfIsMilitaryTarget()
    return self:getProperty("allow_run_time_change_of_is_military_target")
end


---@return any
function aspectSolarPanel:getIsMilitaryTarget()
    return self:getProperty("is_military_target")
end


---@return any
function aspectSolarPanel:getAlertWhenDamaged()
    return self:getProperty("alert_when_damaged")
end


---@return any
function aspectSolarPanel:getAttackReaction()
    return self:getProperty("attack_reaction")
end


---@return any
function aspectSolarPanel:getCorpse()
    return self:getProperty("corpse")
end


---@return any
function aspectSolarPanel:getCreateGhostOnDeath()
    return self:getProperty("create_ghost_on_death")
end


---@return any
function aspectSolarPanel:getDamagedTriggerEffect()
    return self:getProperty("damaged_trigger_effect")
end


---@return any
function aspectSolarPanel:getDyingExplosion()
    return self:getProperty("dying_explosion")
end


---@return any
function aspectSolarPanel:getDyingTriggerEffect()
    return self:getProperty("dying_trigger_effect")
end


---@return any
function aspectSolarPanel:getHealingPerTick()
    return self:getProperty("healing_per_tick")
end


---@return any
function aspectSolarPanel:getHideResistances()
    return self:getProperty("hide_resistances")
end


---@return any
function aspectSolarPanel:getIntegrationPatch()
    return self:getProperty("integration_patch")
end


---@return any
function aspectSolarPanel:getIntegrationPatchRenderLayer()
    return self:getProperty("integration_patch_render_layer")
end


---@return any
function aspectSolarPanel:getLoot()
    return self:getProperty("loot")
end


---@return any
function aspectSolarPanel:getMaxHealth()
    return self:getProperty("max_health")
end


---@return any
function aspectSolarPanel:getRandomCorpseVariation()
    return self:getProperty("random_corpse_variation")
end


---@return any
function aspectSolarPanel:getRepairSound()
    return self:getProperty("repair_sound")
end


---@return any
function aspectSolarPanel:getRepairSpeedModifier()
    return self:getProperty("repair_speed_modifier")
end


---@return any
function aspectSolarPanel:getResistances()
    return self:getProperty("resistances")
end


---@return any
function aspectSolarPanel:getIcons()
    return self:getProperty("icons")
end


---@return any
function aspectSolarPanel:getIcon()
    return self:getProperty("icon")
end


---@return any
function aspectSolarPanel:getIconSize()
    return self:getProperty("icon_size")
end


---@return any
function aspectSolarPanel:getAdditionalPastableEntities()
    return self:getProperty("additional_pastable_entities")
end


---@return any
function aspectSolarPanel:getAlertIconScale()
    return self:getProperty("alert_icon_scale")
end


---@return any
function aspectSolarPanel:getAlertIconShift()
    return self:getProperty("alert_icon_shift")
end


---@return any
function aspectSolarPanel:getAllowCopyPaste()
    return self:getProperty("allow_copy_paste")
end


---@return any
function aspectSolarPanel:getAutoplace()
    return self:getProperty("autoplace")
end


---@return any
function aspectSolarPanel:getBuildBaseEvolutionRequirement()
    return self:getProperty("build_base_evolution_requirement")
end


---@return any
function aspectSolarPanel:getBuildSound()
    return self:getProperty("build_sound")
end


---@return any
function aspectSolarPanel:getCloseSound()
    return self:getProperty("close_sound")
end


---@return any
function aspectSolarPanel:getCollisionBox()
    return self:getProperty("collision_box")
end


---@return any
function aspectSolarPanel:getCollisionMask()
    return self:getProperty("collision_mask")
end


---@return any
function aspectSolarPanel:getCreatedEffect()
    return self:getProperty("created_effect")
end


---@return any
function aspectSolarPanel:getCreatedSmoke()
    return self:getProperty("created_smoke")
end


---@return any
function aspectSolarPanel:getDrawingBox()
    return self:getProperty("drawing_box")
end


---@return any
function aspectSolarPanel:getEmissionsPerSecond()
    return self:getProperty("emissions_per_second")
end


---@return any
function aspectSolarPanel:getEnemyMapColor()
    return self:getProperty("enemy_map_color")
end


---@return any
function aspectSolarPanel:getFastReplaceableGroup()
    return self:getProperty("fast_replaceable_group")
end


---@return any
function aspectSolarPanel:getFlags()
    return self:getProperty("flags")
end


---@return any
function aspectSolarPanel:getFriendlyMapColor()
    return self:getProperty("friendly_map_color")
end


---@return any
function aspectSolarPanel:getHitVisualizationBox()
    return self:getProperty("hit_visualization_box")
end


---@return any
function aspectSolarPanel:getMapColor()
    return self:getProperty("map_color")
end


---@return any
function aspectSolarPanel:getMapGeneratorBoundingBox()
    return self:getProperty("map_generator_bounding_box")
end


---@return any
function aspectSolarPanel:getMinable()
    return self:getProperty("minable")
end


---@return any
function aspectSolarPanel:getMinedSound()
    return self:getProperty("mined_sound")
end


---@return any
function aspectSolarPanel:getMiningSound()
    return self:getProperty("mining_sound")
end


---@return any
function aspectSolarPanel:getNextUpgrade()
    return self:getProperty("next_upgrade")
end


---@return any
function aspectSolarPanel:getOpenSound()
    return self:getProperty("open_sound")
end


---@return any
function aspectSolarPanel:getPlaceableBy()
    return self:getProperty("placeable_by")
end


---@return any
function aspectSolarPanel:getProtectedFromTileBuilding()
    return self:getProperty("protected_from_tile_building")
end


---@return any
function aspectSolarPanel:getRadiusVisualisationSpecification()
    return self:getProperty("radius_visualisation_specification")
end


---@return any
function aspectSolarPanel:getRemainsWhenMined()
    return self:getProperty("remains_when_mined")
end


---@return any
function aspectSolarPanel:getRemoveDecoratives()
    return self:getProperty("remove_decoratives")
end


---@return any
function aspectSolarPanel:getRotatedSound()
    return self:getProperty("rotated_sound")
end


---@return any
function aspectSolarPanel:getSelectableInGame()
    return self:getProperty("selectable_in_game")
end


---@return any
function aspectSolarPanel:getSelectionBox()
    return self:getProperty("selection_box")
end


---@return any
function aspectSolarPanel:getSelectionPriority()
    return self:getProperty("selection_priority")
end


---@return any
function aspectSolarPanel:getShootingCursorSize()
    return self:getProperty("shooting_cursor_size")
end


---@return any
function aspectSolarPanel:getStickerBox()
    return self:getProperty("sticker_box")
end


---@return any
function aspectSolarPanel:getSubgroup()
    return self:getProperty("subgroup")
end


---@return any
function aspectSolarPanel:getTileHeight()
    return self:getProperty("tile_height")
end


---@return any
function aspectSolarPanel:getTileWidth()
    return self:getProperty("tile_width")
end


---@return any
function aspectSolarPanel:getTriggerTargetMask()
    return self:getProperty("trigger_target_mask")
end


---@return any
function aspectSolarPanel:getVehicleImpactSound()
    return self:getProperty("vehicle_impact_sound")
end


---@return any
function aspectSolarPanel:getWaterReflection()
    return self:getProperty("water_reflection")
end


---@return any
function aspectSolarPanel:getWorkingSound()
    return self:getProperty("working_sound")
end


---@return any
function aspectSolarPanel:getName()
    return self:getProperty("name")
end


---@return any
function aspectSolarPanel:getType()
    return self:getProperty("type")
end


---@return any
function aspectSolarPanel:getLocalisedDescription()
    return self:getProperty("localised_description")
end


---@return any
function aspectSolarPanel:getLocalisedName()
    return self:getProperty("localised_name")
end


---@return any
function aspectSolarPanel:getOrder()
    return self:getProperty("order")
end



---@return aspectSolarPanel
function aspectSolarPanel:setEnergySource(energySource)
    return self:setProperty("energy_source",energySource)
end


---@return aspectSolarPanel
function aspectSolarPanel:setPicture(picture)
    return self:setProperty("picture",picture)
end


---@return aspectSolarPanel
function aspectSolarPanel:setProduction(production)
    return self:setProperty("production",production)
end


---@return aspectSolarPanel
function aspectSolarPanel:setOverlay(overlay)
    return self:setProperty("overlay",overlay)
end


---@return aspectSolarPanel
function aspectSolarPanel:setAllowRunTimeChangeOfIsMilitaryTarget(allowRunTimeChangeOfIsMilitaryTarget)
    return self:setProperty("allow_run_time_change_of_is_military_target",allowRunTimeChangeOfIsMilitaryTarget)
end


---@return aspectSolarPanel
function aspectSolarPanel:setIsMilitaryTarget(isMilitaryTarget)
    return self:setProperty("is_military_target",isMilitaryTarget)
end


---@return aspectSolarPanel
function aspectSolarPanel:setAlertWhenDamaged(alertWhenDamaged)
    return self:setProperty("alert_when_damaged",alertWhenDamaged)
end


---@return aspectSolarPanel
function aspectSolarPanel:setAttackReaction(attackReaction)
    return self:setProperty("attack_reaction",attackReaction)
end


---@return aspectSolarPanel
function aspectSolarPanel:setCorpse(corpse)
    return self:setProperty("corpse",corpse)
end


---@return aspectSolarPanel
function aspectSolarPanel:setCreateGhostOnDeath(createGhostOnDeath)
    return self:setProperty("create_ghost_on_death",createGhostOnDeath)
end


---@return aspectSolarPanel
function aspectSolarPanel:setDamagedTriggerEffect(damagedTriggerEffect)
    return self:setProperty("damaged_trigger_effect",damagedTriggerEffect)
end


---@return aspectSolarPanel
function aspectSolarPanel:setDyingExplosion(dyingExplosion)
    return self:setProperty("dying_explosion",dyingExplosion)
end


---@return aspectSolarPanel
function aspectSolarPanel:setDyingTriggerEffect(dyingTriggerEffect)
    return self:setProperty("dying_trigger_effect",dyingTriggerEffect)
end


---@return aspectSolarPanel
function aspectSolarPanel:setHealingPerTick(healingPerTick)
    return self:setProperty("healing_per_tick",healingPerTick)
end


---@return aspectSolarPanel
function aspectSolarPanel:setHideResistances(hideResistances)
    return self:setProperty("hide_resistances",hideResistances)
end


---@return aspectSolarPanel
function aspectSolarPanel:setIntegrationPatch(integrationPatch)
    return self:setProperty("integration_patch",integrationPatch)
end


---@return aspectSolarPanel
function aspectSolarPanel:setIntegrationPatchRenderLayer(integrationPatchRenderLayer)
    return self:setProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end


---@return aspectSolarPanel
function aspectSolarPanel:setLoot(loot)
    return self:setProperty("loot",loot)
end


---@return aspectSolarPanel
function aspectSolarPanel:setMaxHealth(maxHealth)
    return self:setProperty("max_health",maxHealth)
end


---@return aspectSolarPanel
function aspectSolarPanel:setRandomCorpseVariation(randomCorpseVariation)
    return self:setProperty("random_corpse_variation",randomCorpseVariation)
end


---@return aspectSolarPanel
function aspectSolarPanel:setRepairSound(repairSound)
    return self:setProperty("repair_sound",repairSound)
end


---@return aspectSolarPanel
function aspectSolarPanel:setRepairSpeedModifier(repairSpeedModifier)
    return self:setProperty("repair_speed_modifier",repairSpeedModifier)
end


---@return aspectSolarPanel
function aspectSolarPanel:setResistances(resistances)
    return self:setProperty("resistances",resistances)
end


---@return aspectSolarPanel
function aspectSolarPanel:setIcons(icons)
    return self:setProperty("icons",icons)
end


---@return aspectSolarPanel
function aspectSolarPanel:setIcon(icon)
    return self:setProperty("icon",icon)
end


---@return aspectSolarPanel
function aspectSolarPanel:setIconSize(iconSize)
    return self:setProperty("icon_size",iconSize)
end


---@return aspectSolarPanel
function aspectSolarPanel:setAdditionalPastableEntities(additionalPastableEntities)
    return self:setProperty("additional_pastable_entities",additionalPastableEntities)
end


---@return aspectSolarPanel
function aspectSolarPanel:setAlertIconScale(alertIconScale)
    return self:setProperty("alert_icon_scale",alertIconScale)
end


---@return aspectSolarPanel
function aspectSolarPanel:setAlertIconShift(alertIconShift)
    return self:setProperty("alert_icon_shift",alertIconShift)
end


---@return aspectSolarPanel
function aspectSolarPanel:setAllowCopyPaste(allowCopyPaste)
    return self:setProperty("allow_copy_paste",allowCopyPaste)
end


---@return aspectSolarPanel
function aspectSolarPanel:setAutoplace(autoplace)
    return self:setProperty("autoplace",autoplace)
end


---@return aspectSolarPanel
function aspectSolarPanel:setBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
    return self:setProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end


---@return aspectSolarPanel
function aspectSolarPanel:setBuildSound(buildSound)
    return self:setProperty("build_sound",buildSound)
end


---@return aspectSolarPanel
function aspectSolarPanel:setCloseSound(closeSound)
    return self:setProperty("close_sound",closeSound)
end


---@return aspectSolarPanel
function aspectSolarPanel:setCollisionBox(collisionBox)
    return self:setProperty("collision_box",collisionBox)
end


---@return aspectSolarPanel
function aspectSolarPanel:setCollisionMask(collisionMask)
    return self:setProperty("collision_mask",collisionMask)
end


---@return aspectSolarPanel
function aspectSolarPanel:setCreatedEffect(createdEffect)
    return self:setProperty("created_effect",createdEffect)
end


---@return aspectSolarPanel
function aspectSolarPanel:setCreatedSmoke(createdSmoke)
    return self:setProperty("created_smoke",createdSmoke)
end


---@return aspectSolarPanel
function aspectSolarPanel:setDrawingBox(drawingBox)
    return self:setProperty("drawing_box",drawingBox)
end


---@return aspectSolarPanel
function aspectSolarPanel:setEmissionsPerSecond(emissionsPerSecond)
    return self:setProperty("emissions_per_second",emissionsPerSecond)
end


---@return aspectSolarPanel
function aspectSolarPanel:setEnemyMapColor(enemyMapColor)
    return self:setProperty("enemy_map_color",enemyMapColor)
end


---@return aspectSolarPanel
function aspectSolarPanel:setFastReplaceableGroup(fastReplaceableGroup)
    return self:setProperty("fast_replaceable_group",fastReplaceableGroup)
end


---@return aspectSolarPanel
function aspectSolarPanel:setFlags(flags)
    return self:setProperty("flags",flags)
end


---@return aspectSolarPanel
function aspectSolarPanel:setFriendlyMapColor(friendlyMapColor)
    return self:setProperty("friendly_map_color",friendlyMapColor)
end


---@return aspectSolarPanel
function aspectSolarPanel:setHitVisualizationBox(hitVisualizationBox)
    return self:setProperty("hit_visualization_box",hitVisualizationBox)
end


---@return aspectSolarPanel
function aspectSolarPanel:setMapColor(mapColor)
    return self:setProperty("map_color",mapColor)
end


---@return aspectSolarPanel
function aspectSolarPanel:setMapGeneratorBoundingBox(mapGeneratorBoundingBox)
    return self:setProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end


---@return aspectSolarPanel
function aspectSolarPanel:setMinable(minable)
    return self:setProperty("minable",minable)
end


---@return aspectSolarPanel
function aspectSolarPanel:setMinedSound(minedSound)
    return self:setProperty("mined_sound",minedSound)
end


---@return aspectSolarPanel
function aspectSolarPanel:setMiningSound(miningSound)
    return self:setProperty("mining_sound",miningSound)
end


---@return aspectSolarPanel
function aspectSolarPanel:setNextUpgrade(nextUpgrade)
    return self:setProperty("next_upgrade",nextUpgrade)
end


---@return aspectSolarPanel
function aspectSolarPanel:setOpenSound(openSound)
    return self:setProperty("open_sound",openSound)
end


---@return aspectSolarPanel
function aspectSolarPanel:setPlaceableBy(placeableBy)
    return self:setProperty("placeable_by",placeableBy)
end


---@return aspectSolarPanel
function aspectSolarPanel:setProtectedFromTileBuilding(protectedFromTileBuilding)
    return self:setProperty("protected_from_tile_building",protectedFromTileBuilding)
end


---@return aspectSolarPanel
function aspectSolarPanel:setRadiusVisualisationSpecification(radiusVisualisationSpecification)
    return self:setProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end


---@return aspectSolarPanel
function aspectSolarPanel:setRemainsWhenMined(remainsWhenMined)
    return self:setProperty("remains_when_mined",remainsWhenMined)
end


---@return aspectSolarPanel
function aspectSolarPanel:setRemoveDecoratives(removeDecoratives)
    return self:setProperty("remove_decoratives",removeDecoratives)
end


---@return aspectSolarPanel
function aspectSolarPanel:setRotatedSound(rotatedSound)
    return self:setProperty("rotated_sound",rotatedSound)
end


---@return aspectSolarPanel
function aspectSolarPanel:setSelectableInGame(selectableInGame)
    return self:setProperty("selectable_in_game",selectableInGame)
end


---@return aspectSolarPanel
function aspectSolarPanel:setSelectionBox(selectionBox)
    return self:setProperty("selection_box",selectionBox)
end


---@return aspectSolarPanel
function aspectSolarPanel:setSelectionPriority(selectionPriority)
    return self:setProperty("selection_priority",selectionPriority)
end


---@return aspectSolarPanel
function aspectSolarPanel:setShootingCursorSize(shootingCursorSize)
    return self:setProperty("shooting_cursor_size",shootingCursorSize)
end


---@return aspectSolarPanel
function aspectSolarPanel:setStickerBox(stickerBox)
    return self:setProperty("sticker_box",stickerBox)
end


---@return aspectSolarPanel
function aspectSolarPanel:setSubgroup(subgroup)
    return self:setProperty("subgroup",subgroup)
end


---@return aspectSolarPanel
function aspectSolarPanel:setTileHeight(tileHeight)
    return self:setProperty("tile_height",tileHeight)
end


---@return aspectSolarPanel
function aspectSolarPanel:setTileWidth(tileWidth)
    return self:setProperty("tile_width",tileWidth)
end


---@return aspectSolarPanel
function aspectSolarPanel:setTriggerTargetMask(triggerTargetMask)
    return self:setProperty("trigger_target_mask",triggerTargetMask)
end


---@return aspectSolarPanel
function aspectSolarPanel:setVehicleImpactSound(vehicleImpactSound)
    return self:setProperty("vehicle_impact_sound",vehicleImpactSound)
end


---@return aspectSolarPanel
function aspectSolarPanel:setWaterReflection(waterReflection)
    return self:setProperty("water_reflection",waterReflection)
end


---@return aspectSolarPanel
function aspectSolarPanel:setWorkingSound(workingSound)
    return self:setProperty("working_sound",workingSound)
end


---@return aspectSolarPanel
function aspectSolarPanel:setName(name)
    return self:setProperty("name",name)
end


---@return aspectSolarPanel
function aspectSolarPanel:setType(type)
    return self:setProperty("type",type)
end


---@return aspectSolarPanel
function aspectSolarPanel:setLocalisedDescription(localisedDescription)
    return self:setProperty("localised_description",localisedDescription)
end


---@return aspectSolarPanel
function aspectSolarPanel:setLocalisedName(localisedName)
    return self:setProperty("localised_name",localisedName)
end


---@return aspectSolarPanel
function aspectSolarPanel:setOrder(order)
    return self:setProperty("order",order)
end




return aspectSolarPanel