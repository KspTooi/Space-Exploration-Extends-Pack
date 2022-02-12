
---@class aspectElectricTurret
local aspectElectricTurret = {}


----通用内部操作方法 ----- 开始----->>>>
---@return aspectElectricTurret
function aspectElectricTurret.create(luaObject)
    aspectElectricTurret.luaObject = luaObject
    return aspectElectricTurret;
end


--根据给定类型获取数据原型
function aspectElectricTurret.get(type,name)

    --获取luaEntity
    local item = table.deepcopy(data.raw[type][name])

    --将luaEntity封装为aspectElectricTurret
        return aspectElectricTurret.create(item)
    end

--获取于当前原型TYPE相同的新原型
function aspectElectricTurret:getSame(name)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then

        local item = nil

        if name~=nil then
            item = table.deepcopy(data.raw[luaEntity.type][name])
        end

        if name==nil then
            item = table.deepcopy(data.raw[luaEntity.type][luaEntity.name])
        end

        --将luaEntity封装为aspectElectricTurret
        return aspectElectricTurret.create(item)

    end

    return aspectElectricTurret.create(nil)
end

--基本设值方法(含有非空检查)
---@return aspectElectricTurret
function aspectElectricTurret:setProperty(property,value)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        luaEntity[property] = value
    end

    return self
end

--基本取值方法(含有非空检查)
function aspectElectricTurret:getProperty(propertyName)

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return luaEntity[propertyName]
    end

    return nil
end

--获取当前上下文中的LUAOBJECT
function aspectElectricTurret:getLuaObject()
    return self.luaObject
end

--设置当前上下文中的LUAOBJECT
function aspectElectricTurret:setLuaObject(luaObject)
    self.luaObject = luaObject
end


function aspectElectricTurret:getType()
    return self:getProperty("type")
end


function aspectElectricTurret:getName()
    return self:getProperty("name")
end


---@return aspectElectricTurret
function aspectElectricTurret:setName(name)
    return self:setProperty("name",name)
end


--从数据原型中移除该aspectElectricTurret
---@return aspectElectricTurret
function aspectElectricTurret:removeFromData()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = nil
    end

    return self
end

--加入该aspectElectricTurret至数据原型
---@return aspectElectricTurret
function aspectElectricTurret:insertToData()

    local luaEntity = self:getLuaObject()

    self:removeFromData()

    if luaEntity~=nil then
        data:extend({luaEntity})
    end

    return self
end

--加入该aspectElectricTurret至数据原型
---@return aspectElectricTurret
function aspectElectricTurret:joinToData()
    return self:insertToData()
end

--加入该aspectElectricTurret至数据原型
---@return aspectElectricTurret
function aspectElectricTurret:insertInto()
    return self:insertToData()
end

--更新该aspectElectricTurret至数据原型
---@return aspectElectricTurret
function aspectElectricTurret:update()

    local luaEntity = self:getLuaObject()


    if luaEntity~=nil then
        data.raw[luaEntity.type][luaEntity.name] = luaEntity
    end


    return self
end

--检测该AO是否为空
---@return boolean
function aspectElectricTurret:isNotEmpty()

    local luaEntity = self:getLuaObject()

    if luaEntity~=nil then
        return true
    end

    return false
end

--从其他aspectElectricTurret转入
---@return aspectElectricTurret
function aspectElectricTurret:import(object)
    self:setLuaObject(object:getLuaObject())
    return self
end
----通用内部操作方法 ----- 结束 -----<<<<






---@return any
function aspectElectricTurret:getEnergySource()
    return self:getProperty("energy_source")
end


---@return any
function aspectElectricTurret:getAttackParameters()
    return self:getProperty("attack_parameters")
end


---@return any
function aspectElectricTurret:getCallForHelpRadius()
    return self:getProperty("call_for_help_radius")
end


---@return any
function aspectElectricTurret:getFoldedAnimation()
    return self:getProperty("folded_animation")
end


---@return any
function aspectElectricTurret:getAlertWhenAttacking()
    return self:getProperty("alert_when_attacking")
end


---@return any
function aspectElectricTurret:getAllowTurningWhenStartingAttack()
    return self:getProperty("allow_turning_when_starting_attack")
end


---@return any
function aspectElectricTurret:getAttackFromStartFrame()
    return self:getProperty("attack_from_start_frame")
end


---@return any
function aspectElectricTurret:getAttackTargetMask()
    return self:getProperty("attack_target_mask")
end


---@return any
function aspectElectricTurret:getAttackingAnimation()
    return self:getProperty("attacking_animation")
end


---@return any
function aspectElectricTurret:getAttackingSpeed()
    return self:getProperty("attacking_speed")
end


---@return any
function aspectElectricTurret:getBasePicture()
    return self:getProperty("base_picture")
end


---@return any
function aspectElectricTurret:getBasePictureRenderLayer()
    return self:getProperty("base_picture_render_layer")
end


---@return any
function aspectElectricTurret:getBasePictureSecondaryDrawOrder()
    return self:getProperty("base_picture_secondary_draw_order")
end


---@return any
function aspectElectricTurret:getCorpse()
    return self:getProperty("corpse")
end


---@return any
function aspectElectricTurret:getDyingSound()
    return self:getProperty("dying_sound")
end


---@return any
function aspectElectricTurret:getEndingAttackAnimation()
    return self:getProperty("ending_attack_animation")
end


---@return any
function aspectElectricTurret:getEndingAttackSpeed()
    return self:getProperty("ending_attack_speed")
end


---@return any
function aspectElectricTurret:getEnergyGlowAnimation()
    return self:getProperty("energy_glow_animation")
end


---@return any
function aspectElectricTurret:getEnergyGlowAnimationFlickerStrength()
    return self:getProperty("energy_glow_animation_flicker_strength")
end


---@return any
function aspectElectricTurret:getFoldedSpeed()
    return self:getProperty("folded_speed")
end


---@return any
function aspectElectricTurret:getFoldedSpeedSecondary()
    return self:getProperty("folded_speed_secondary")
end


---@return any
function aspectElectricTurret:getFoldingAnimation()
    return self:getProperty("folding_animation")
end


---@return any
function aspectElectricTurret:getFoldingSound()
    return self:getProperty("folding_sound")
end


---@return any
function aspectElectricTurret:getFoldingSpeed()
    return self:getProperty("folding_speed")
end


---@return any
function aspectElectricTurret:getGlowLightIntensity()
    return self:getProperty("glow_light_intensity")
end


---@return any
function aspectElectricTurret:getGunAnimationRenderLayer()
    return self:getProperty("gun_animation_render_layer")
end


---@return any
function aspectElectricTurret:getGunAnimationSecondaryDrawOrder()
    return self:getProperty("gun_animation_secondary_draw_order")
end


---@return any
function aspectElectricTurret:getIgnoreTargetMask()
    return self:getProperty("ignore_target_mask")
end


---@return any
function aspectElectricTurret:getIntegration()
    return self:getProperty("integration")
end


---@return any
function aspectElectricTurret:getPrepareRange()
    return self:getProperty("prepare_range")
end


---@return any
function aspectElectricTurret:getPreparedAlternativeAnimation()
    return self:getProperty("prepared_alternative_animation")
end


---@return any
function aspectElectricTurret:getPreparedAlternativeChance()
    return self:getProperty("prepared_alternative_chance")
end


---@return any
function aspectElectricTurret:getPreparedAlternativeSound()
    return self:getProperty("prepared_alternative_sound")
end


---@return any
function aspectElectricTurret:getPreparedAlternativeSpeed()
    return self:getProperty("prepared_alternative_speed")
end


---@return any
function aspectElectricTurret:getPreparedAlternativeSpeedSecondary()
    return self:getProperty("prepared_alternative_speed_secondary")
end


---@return any
function aspectElectricTurret:getPreparedAnimation()
    return self:getProperty("prepared_animation")
end


---@return any
function aspectElectricTurret:getPreparedSound()
    return self:getProperty("prepared_sound")
end


---@return any
function aspectElectricTurret:getPreparedSpeed()
    return self:getProperty("prepared_speed")
end


---@return any
function aspectElectricTurret:getPreparedSpeedSecondary()
    return self:getProperty("prepared_speed_secondary")
end


---@return any
function aspectElectricTurret:getPreparingAnimation()
    return self:getProperty("preparing_animation")
end


---@return any
function aspectElectricTurret:getPreparingSound()
    return self:getProperty("preparing_sound")
end


---@return any
function aspectElectricTurret:getPreparingSpeed()
    return self:getProperty("preparing_speed")
end


---@return any
function aspectElectricTurret:getRandomAnimationOffset()
    return self:getProperty("random_animation_offset")
end


---@return any
function aspectElectricTurret:getRotationSpeed()
    return self:getProperty("rotation_speed")
end


---@return any
function aspectElectricTurret:getSecondaryAnimation()
    return self:getProperty("secondary_animation")
end


---@return any
function aspectElectricTurret:getShootInPrepareState()
    return self:getProperty("shoot_in_prepare_state")
end


---@return any
function aspectElectricTurret:getSpawnDecoration()
    return self:getProperty("spawn_decoration")
end


---@return any
function aspectElectricTurret:getSpawnDecorationsOnExpansion()
    return self:getProperty("spawn_decorations_on_expansion")
end


---@return any
function aspectElectricTurret:getStartingAttackAnimation()
    return self:getProperty("starting_attack_animation")
end


---@return any
function aspectElectricTurret:getStartingAttackSound()
    return self:getProperty("starting_attack_sound")
end


---@return any
function aspectElectricTurret:getStartingAttackSpeed()
    return self:getProperty("starting_attack_speed")
end


---@return any
function aspectElectricTurret:getTurretBaseHasDirection()
    return self:getProperty("turret_base_has_direction")
end


---@return any
function aspectElectricTurret:getAlertWhenDamaged()
    return self:getProperty("alert_when_damaged")
end


---@return any
function aspectElectricTurret:getAttackReaction()
    return self:getProperty("attack_reaction")
end


---@return any
function aspectElectricTurret:getCorpse()
    return self:getProperty("corpse")
end


---@return any
function aspectElectricTurret:getCreateGhostOnDeath()
    return self:getProperty("create_ghost_on_death")
end


---@return any
function aspectElectricTurret:getDamagedTriggerEffect()
    return self:getProperty("damaged_trigger_effect")
end


---@return any
function aspectElectricTurret:getDyingExplosion()
    return self:getProperty("dying_explosion")
end


---@return any
function aspectElectricTurret:getDyingTriggerEffect()
    return self:getProperty("dying_trigger_effect")
end


---@return any
function aspectElectricTurret:getHealingPerTick()
    return self:getProperty("healing_per_tick")
end


---@return any
function aspectElectricTurret:getHideResistances()
    return self:getProperty("hide_resistances")
end


---@return any
function aspectElectricTurret:getIntegrationPatch()
    return self:getProperty("integration_patch")
end


---@return any
function aspectElectricTurret:getIntegrationPatchRenderLayer()
    return self:getProperty("integration_patch_render_layer")
end


---@return any
function aspectElectricTurret:getLoot()
    return self:getProperty("loot")
end


---@return any
function aspectElectricTurret:getMaxHealth()
    return self:getProperty("max_health")
end


---@return any
function aspectElectricTurret:getRandomCorpseVariation()
    return self:getProperty("random_corpse_variation")
end


---@return any
function aspectElectricTurret:getRepairSound()
    return self:getProperty("repair_sound")
end


---@return any
function aspectElectricTurret:getRepairSpeedModifier()
    return self:getProperty("repair_speed_modifier")
end


---@return any
function aspectElectricTurret:getResistances()
    return self:getProperty("resistances")
end


---@return any
function aspectElectricTurret:getIcons()
    return self:getProperty("icons")
end


---@return any
function aspectElectricTurret:getIcon()
    return self:getProperty("icon")
end


---@return any
function aspectElectricTurret:getIconSize()
    return self:getProperty("icon_size")
end


---@return any
function aspectElectricTurret:getAdditionalPastableEntities()
    return self:getProperty("additional_pastable_entities")
end


---@return any
function aspectElectricTurret:getAlertIconScale()
    return self:getProperty("alert_icon_scale")
end


---@return any
function aspectElectricTurret:getAlertIconShift()
    return self:getProperty("alert_icon_shift")
end


---@return any
function aspectElectricTurret:getAllowCopyPaste()
    return self:getProperty("allow_copy_paste")
end


---@return any
function aspectElectricTurret:getAutoplace()
    return self:getProperty("autoplace")
end


---@return any
function aspectElectricTurret:getBuildBaseEvolutionRequirement()
    return self:getProperty("build_base_evolution_requirement")
end


---@return any
function aspectElectricTurret:getBuildSound()
    return self:getProperty("build_sound")
end


---@return any
function aspectElectricTurret:getCloseSound()
    return self:getProperty("close_sound")
end


---@return any
function aspectElectricTurret:getCollisionBox()
    return self:getProperty("collision_box")
end


---@return any
function aspectElectricTurret:getCollisionMask()
    return self:getProperty("collision_mask")
end


---@return any
function aspectElectricTurret:getCreatedEffect()
    return self:getProperty("created_effect")
end


---@return any
function aspectElectricTurret:getCreatedSmoke()
    return self:getProperty("created_smoke")
end


---@return any
function aspectElectricTurret:getDrawingBox()
    return self:getProperty("drawing_box")
end


---@return any
function aspectElectricTurret:getEmissionsPerSecond()
    return self:getProperty("emissions_per_second")
end


---@return any
function aspectElectricTurret:getEnemyMapColor()
    return self:getProperty("enemy_map_color")
end


---@return any
function aspectElectricTurret:getFastReplaceableGroup()
    return self:getProperty("fast_replaceable_group")
end


---@return any
function aspectElectricTurret:getFlags()
    return self:getProperty("flags")
end


---@return any
function aspectElectricTurret:getFriendlyMapColor()
    return self:getProperty("friendly_map_color")
end


---@return any
function aspectElectricTurret:getHitVisualizationBox()
    return self:getProperty("hit_visualization_box")
end


---@return any
function aspectElectricTurret:getMapColor()
    return self:getProperty("map_color")
end


---@return any
function aspectElectricTurret:getMapGeneratorBoundingBox()
    return self:getProperty("map_generator_bounding_box")
end


---@return any
function aspectElectricTurret:getMinable()
    return self:getProperty("minable")
end


---@return any
function aspectElectricTurret:getMinedSound()
    return self:getProperty("mined_sound")
end


---@return any
function aspectElectricTurret:getMiningSound()
    return self:getProperty("mining_sound")
end


---@return any
function aspectElectricTurret:getNextUpgrade()
    return self:getProperty("next_upgrade")
end


---@return any
function aspectElectricTurret:getOpenSound()
    return self:getProperty("open_sound")
end


---@return any
function aspectElectricTurret:getPlaceableBy()
    return self:getProperty("placeable_by")
end


---@return any
function aspectElectricTurret:getRadiusVisualisationSpecification()
    return self:getProperty("radius_visualisation_specification")
end


---@return any
function aspectElectricTurret:getRemainsWhenMined()
    return self:getProperty("remains_when_mined")
end


---@return any
function aspectElectricTurret:getRemoveDecoratives()
    return self:getProperty("remove_decoratives")
end


---@return any
function aspectElectricTurret:getRotatedSound()
    return self:getProperty("rotated_sound")
end


---@return any
function aspectElectricTurret:getSelectableInGame()
    return self:getProperty("selectable_in_game")
end


---@return any
function aspectElectricTurret:getSelectionBox()
    return self:getProperty("selection_box")
end


---@return any
function aspectElectricTurret:getSelectionPriority()
    return self:getProperty("selection_priority")
end


---@return any
function aspectElectricTurret:getShootingCursorSize()
    return self:getProperty("shooting_cursor_size")
end


---@return any
function aspectElectricTurret:getStickerBox()
    return self:getProperty("sticker_box")
end


---@return any
function aspectElectricTurret:getSubgroup()
    return self:getProperty("subgroup")
end


---@return any
function aspectElectricTurret:getTileHeight()
    return self:getProperty("tile_height")
end


---@return any
function aspectElectricTurret:getTileWidth()
    return self:getProperty("tile_width")
end


---@return any
function aspectElectricTurret:getTriggerTargetMask()
    return self:getProperty("trigger_target_mask")
end


---@return any
function aspectElectricTurret:getVehicleImpactSound()
    return self:getProperty("vehicle_impact_sound")
end


---@return any
function aspectElectricTurret:getWaterReflection()
    return self:getProperty("water_reflection")
end


---@return any
function aspectElectricTurret:getWorkingSound()
    return self:getProperty("working_sound")
end


---@return any
function aspectElectricTurret:getName()
    return self:getProperty("name")
end


---@return any
function aspectElectricTurret:getType()
    return self:getProperty("type")
end


---@return any
function aspectElectricTurret:getLocalisedDescription()
    return self:getProperty("localised_description")
end


---@return any
function aspectElectricTurret:getLocalisedName()
    return self:getProperty("localised_name")
end


---@return any
function aspectElectricTurret:getOrder()
    return self:getProperty("order")
end



---@return aspectElectricTurret
function aspectElectricTurret:setEnergySource(energySource)
    return self:setProperty("energy_source",energySource)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAttackParameters(attackParameters)
    return self:setProperty("attack_parameters",attackParameters)
end


---@return aspectElectricTurret
function aspectElectricTurret:setCallForHelpRadius(callForHelpRadius)
    return self:setProperty("call_for_help_radius",callForHelpRadius)
end


---@return aspectElectricTurret
function aspectElectricTurret:setFoldedAnimation(foldedAnimation)
    return self:setProperty("folded_animation",foldedAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAlertWhenAttacking(alertWhenAttacking)
    return self:setProperty("alert_when_attacking",alertWhenAttacking)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAllowTurningWhenStartingAttack(allowTurningWhenStartingAttack)
    return self:setProperty("allow_turning_when_starting_attack",allowTurningWhenStartingAttack)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAttackFromStartFrame(attackFromStartFrame)
    return self:setProperty("attack_from_start_frame",attackFromStartFrame)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAttackTargetMask(attackTargetMask)
    return self:setProperty("attack_target_mask",attackTargetMask)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAttackingAnimation(attackingAnimation)
    return self:setProperty("attacking_animation",attackingAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAttackingSpeed(attackingSpeed)
    return self:setProperty("attacking_speed",attackingSpeed)
end


---@return aspectElectricTurret
function aspectElectricTurret:setBasePicture(basePicture)
    return self:setProperty("base_picture",basePicture)
end


---@return aspectElectricTurret
function aspectElectricTurret:setBasePictureRenderLayer(basePictureRenderLayer)
    return self:setProperty("base_picture_render_layer",basePictureRenderLayer)
end


---@return aspectElectricTurret
function aspectElectricTurret:setBasePictureSecondaryDrawOrder(basePictureSecondaryDrawOrder)
    return self:setProperty("base_picture_secondary_draw_order",basePictureSecondaryDrawOrder)
end


---@return aspectElectricTurret
function aspectElectricTurret:setCorpse(corpse)
    return self:setProperty("corpse",corpse)
end


---@return aspectElectricTurret
function aspectElectricTurret:setDyingSound(dyingSound)
    return self:setProperty("dying_sound",dyingSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setEndingAttackAnimation(endingAttackAnimation)
    return self:setProperty("ending_attack_animation",endingAttackAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setEndingAttackSpeed(endingAttackSpeed)
    return self:setProperty("ending_attack_speed",endingAttackSpeed)
end


---@return aspectElectricTurret
function aspectElectricTurret:setEnergyGlowAnimation(energyGlowAnimation)
    return self:setProperty("energy_glow_animation",energyGlowAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setEnergyGlowAnimationFlickerStrength(energyGlowAnimationFlickerStrength)
    return self:setProperty("energy_glow_animation_flicker_strength",energyGlowAnimationFlickerStrength)
end


---@return aspectElectricTurret
function aspectElectricTurret:setFoldedSpeed(foldedSpeed)
    return self:setProperty("folded_speed",foldedSpeed)
end


---@return aspectElectricTurret
function aspectElectricTurret:setFoldedSpeedSecondary(foldedSpeedSecondary)
    return self:setProperty("folded_speed_secondary",foldedSpeedSecondary)
end


---@return aspectElectricTurret
function aspectElectricTurret:setFoldingAnimation(foldingAnimation)
    return self:setProperty("folding_animation",foldingAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setFoldingSound(foldingSound)
    return self:setProperty("folding_sound",foldingSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setFoldingSpeed(foldingSpeed)
    return self:setProperty("folding_speed",foldingSpeed)
end


---@return aspectElectricTurret
function aspectElectricTurret:setGlowLightIntensity(glowLightIntensity)
    return self:setProperty("glow_light_intensity",glowLightIntensity)
end


---@return aspectElectricTurret
function aspectElectricTurret:setGunAnimationRenderLayer(gunAnimationRenderLayer)
    return self:setProperty("gun_animation_render_layer",gunAnimationRenderLayer)
end


---@return aspectElectricTurret
function aspectElectricTurret:setGunAnimationSecondaryDrawOrder(gunAnimationSecondaryDrawOrder)
    return self:setProperty("gun_animation_secondary_draw_order",gunAnimationSecondaryDrawOrder)
end


---@return aspectElectricTurret
function aspectElectricTurret:setIgnoreTargetMask(ignoreTargetMask)
    return self:setProperty("ignore_target_mask",ignoreTargetMask)
end


---@return aspectElectricTurret
function aspectElectricTurret:setIntegration(integration)
    return self:setProperty("integration",integration)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPrepareRange(prepareRange)
    return self:setProperty("prepare_range",prepareRange)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparedAlternativeAnimation(preparedAlternativeAnimation)
    return self:setProperty("prepared_alternative_animation",preparedAlternativeAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparedAlternativeChance(preparedAlternativeChance)
    return self:setProperty("prepared_alternative_chance",preparedAlternativeChance)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparedAlternativeSound(preparedAlternativeSound)
    return self:setProperty("prepared_alternative_sound",preparedAlternativeSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparedAlternativeSpeed(preparedAlternativeSpeed)
    return self:setProperty("prepared_alternative_speed",preparedAlternativeSpeed)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparedAlternativeSpeedSecondary(preparedAlternativeSpeedSecondary)
    return self:setProperty("prepared_alternative_speed_secondary",preparedAlternativeSpeedSecondary)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparedAnimation(preparedAnimation)
    return self:setProperty("prepared_animation",preparedAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparedSound(preparedSound)
    return self:setProperty("prepared_sound",preparedSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparedSpeed(preparedSpeed)
    return self:setProperty("prepared_speed",preparedSpeed)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparedSpeedSecondary(preparedSpeedSecondary)
    return self:setProperty("prepared_speed_secondary",preparedSpeedSecondary)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparingAnimation(preparingAnimation)
    return self:setProperty("preparing_animation",preparingAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparingSound(preparingSound)
    return self:setProperty("preparing_sound",preparingSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPreparingSpeed(preparingSpeed)
    return self:setProperty("preparing_speed",preparingSpeed)
end


---@return aspectElectricTurret
function aspectElectricTurret:setRandomAnimationOffset(randomAnimationOffset)
    return self:setProperty("random_animation_offset",randomAnimationOffset)
end


---@return aspectElectricTurret
function aspectElectricTurret:setRotationSpeed(rotationSpeed)
    return self:setProperty("rotation_speed",rotationSpeed)
end


---@return aspectElectricTurret
function aspectElectricTurret:setSecondaryAnimation(secondaryAnimation)
    return self:setProperty("secondary_animation",secondaryAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setShootInPrepareState(shootInPrepareState)
    return self:setProperty("shoot_in_prepare_state",shootInPrepareState)
end


---@return aspectElectricTurret
function aspectElectricTurret:setSpawnDecoration(spawnDecoration)
    return self:setProperty("spawn_decoration",spawnDecoration)
end


---@return aspectElectricTurret
function aspectElectricTurret:setSpawnDecorationsOnExpansion(spawnDecorationsOnExpansion)
    return self:setProperty("spawn_decorations_on_expansion",spawnDecorationsOnExpansion)
end


---@return aspectElectricTurret
function aspectElectricTurret:setStartingAttackAnimation(startingAttackAnimation)
    return self:setProperty("starting_attack_animation",startingAttackAnimation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setStartingAttackSound(startingAttackSound)
    return self:setProperty("starting_attack_sound",startingAttackSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setStartingAttackSpeed(startingAttackSpeed)
    return self:setProperty("starting_attack_speed",startingAttackSpeed)
end


---@return aspectElectricTurret
function aspectElectricTurret:setTurretBaseHasDirection(turretBaseHasDirection)
    return self:setProperty("turret_base_has_direction",turretBaseHasDirection)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAlertWhenDamaged(alertWhenDamaged)
    return self:setProperty("alert_when_damaged",alertWhenDamaged)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAttackReaction(attackReaction)
    return self:setProperty("attack_reaction",attackReaction)
end


---@return aspectElectricTurret
function aspectElectricTurret:setCorpse(corpse)
    return self:setProperty("corpse",corpse)
end


---@return aspectElectricTurret
function aspectElectricTurret:setCreateGhostOnDeath(createGhostOnDeath)
    return self:setProperty("create_ghost_on_death",createGhostOnDeath)
end


---@return aspectElectricTurret
function aspectElectricTurret:setDamagedTriggerEffect(damagedTriggerEffect)
    return self:setProperty("damaged_trigger_effect",damagedTriggerEffect)
end


---@return aspectElectricTurret
function aspectElectricTurret:setDyingExplosion(dyingExplosion)
    return self:setProperty("dying_explosion",dyingExplosion)
end


---@return aspectElectricTurret
function aspectElectricTurret:setDyingTriggerEffect(dyingTriggerEffect)
    return self:setProperty("dying_trigger_effect",dyingTriggerEffect)
end


---@return aspectElectricTurret
function aspectElectricTurret:setHealingPerTick(healingPerTick)
    return self:setProperty("healing_per_tick",healingPerTick)
end


---@return aspectElectricTurret
function aspectElectricTurret:setHideResistances(hideResistances)
    return self:setProperty("hide_resistances",hideResistances)
end


---@return aspectElectricTurret
function aspectElectricTurret:setIntegrationPatch(integrationPatch)
    return self:setProperty("integration_patch",integrationPatch)
end


---@return aspectElectricTurret
function aspectElectricTurret:setIntegrationPatchRenderLayer(integrationPatchRenderLayer)
    return self:setProperty("integration_patch_render_layer",integrationPatchRenderLayer)
end


---@return aspectElectricTurret
function aspectElectricTurret:setLoot(loot)
    return self:setProperty("loot",loot)
end


---@return aspectElectricTurret
function aspectElectricTurret:setMaxHealth(maxHealth)
    return self:setProperty("max_health",maxHealth)
end


---@return aspectElectricTurret
function aspectElectricTurret:setRandomCorpseVariation(randomCorpseVariation)
    return self:setProperty("random_corpse_variation",randomCorpseVariation)
end


---@return aspectElectricTurret
function aspectElectricTurret:setRepairSound(repairSound)
    return self:setProperty("repair_sound",repairSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setRepairSpeedModifier(repairSpeedModifier)
    return self:setProperty("repair_speed_modifier",repairSpeedModifier)
end


---@return aspectElectricTurret
function aspectElectricTurret:setResistances(resistances)
    return self:setProperty("resistances",resistances)
end


---@return aspectElectricTurret
function aspectElectricTurret:setIcons(icons)
    return self:setProperty("icons",icons)
end


---@return aspectElectricTurret
function aspectElectricTurret:setIcon(icon)
    return self:setProperty("icon",icon)
end


---@return aspectElectricTurret
function aspectElectricTurret:setIconSize(iconSize)
    return self:setProperty("icon_size",iconSize)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAdditionalPastableEntities(additionalPastableEntities)
    return self:setProperty("additional_pastable_entities",additionalPastableEntities)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAlertIconScale(alertIconScale)
    return self:setProperty("alert_icon_scale",alertIconScale)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAlertIconShift(alertIconShift)
    return self:setProperty("alert_icon_shift",alertIconShift)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAllowCopyPaste(allowCopyPaste)
    return self:setProperty("allow_copy_paste",allowCopyPaste)
end


---@return aspectElectricTurret
function aspectElectricTurret:setAutoplace(autoplace)
    return self:setProperty("autoplace",autoplace)
end


---@return aspectElectricTurret
function aspectElectricTurret:setBuildBaseEvolutionRequirement(buildBaseEvolutionRequirement)
    return self:setProperty("build_base_evolution_requirement",buildBaseEvolutionRequirement)
end


---@return aspectElectricTurret
function aspectElectricTurret:setBuildSound(buildSound)
    return self:setProperty("build_sound",buildSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setCloseSound(closeSound)
    return self:setProperty("close_sound",closeSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setCollisionBox(collisionBox)
    return self:setProperty("collision_box",collisionBox)
end


---@return aspectElectricTurret
function aspectElectricTurret:setCollisionMask(collisionMask)
    return self:setProperty("collision_mask",collisionMask)
end


---@return aspectElectricTurret
function aspectElectricTurret:setCreatedEffect(createdEffect)
    return self:setProperty("created_effect",createdEffect)
end


---@return aspectElectricTurret
function aspectElectricTurret:setCreatedSmoke(createdSmoke)
    return self:setProperty("created_smoke",createdSmoke)
end


---@return aspectElectricTurret
function aspectElectricTurret:setDrawingBox(drawingBox)
    return self:setProperty("drawing_box",drawingBox)
end


---@return aspectElectricTurret
function aspectElectricTurret:setEmissionsPerSecond(emissionsPerSecond)
    return self:setProperty("emissions_per_second",emissionsPerSecond)
end


---@return aspectElectricTurret
function aspectElectricTurret:setEnemyMapColor(enemyMapColor)
    return self:setProperty("enemy_map_color",enemyMapColor)
end


---@return aspectElectricTurret
function aspectElectricTurret:setFastReplaceableGroup(fastReplaceableGroup)
    return self:setProperty("fast_replaceable_group",fastReplaceableGroup)
end


---@return aspectElectricTurret
function aspectElectricTurret:setFlags(flags)
    return self:setProperty("flags",flags)
end


---@return aspectElectricTurret
function aspectElectricTurret:setFriendlyMapColor(friendlyMapColor)
    return self:setProperty("friendly_map_color",friendlyMapColor)
end


---@return aspectElectricTurret
function aspectElectricTurret:setHitVisualizationBox(hitVisualizationBox)
    return self:setProperty("hit_visualization_box",hitVisualizationBox)
end


---@return aspectElectricTurret
function aspectElectricTurret:setMapColor(mapColor)
    return self:setProperty("map_color",mapColor)
end


---@return aspectElectricTurret
function aspectElectricTurret:setMapGeneratorBoundingBox(mapGeneratorBoundingBox)
    return self:setProperty("map_generator_bounding_box",mapGeneratorBoundingBox)
end


---@return aspectElectricTurret
function aspectElectricTurret:setMinable(minable)
    return self:setProperty("minable",minable)
end


---@return aspectElectricTurret
function aspectElectricTurret:setMinedSound(minedSound)
    return self:setProperty("mined_sound",minedSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setMiningSound(miningSound)
    return self:setProperty("mining_sound",miningSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setNextUpgrade(nextUpgrade)
    return self:setProperty("next_upgrade",nextUpgrade)
end


---@return aspectElectricTurret
function aspectElectricTurret:setOpenSound(openSound)
    return self:setProperty("open_sound",openSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setPlaceableBy(placeableBy)
    return self:setProperty("placeable_by",placeableBy)
end


---@return aspectElectricTurret
function aspectElectricTurret:setRadiusVisualisationSpecification(radiusVisualisationSpecification)
    return self:setProperty("radius_visualisation_specification",radiusVisualisationSpecification)
end


---@return aspectElectricTurret
function aspectElectricTurret:setRemainsWhenMined(remainsWhenMined)
    return self:setProperty("remains_when_mined",remainsWhenMined)
end


---@return aspectElectricTurret
function aspectElectricTurret:setRemoveDecoratives(removeDecoratives)
    return self:setProperty("remove_decoratives",removeDecoratives)
end


---@return aspectElectricTurret
function aspectElectricTurret:setRotatedSound(rotatedSound)
    return self:setProperty("rotated_sound",rotatedSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setSelectableInGame(selectableInGame)
    return self:setProperty("selectable_in_game",selectableInGame)
end


---@return aspectElectricTurret
function aspectElectricTurret:setSelectionBox(selectionBox)
    return self:setProperty("selection_box",selectionBox)
end


---@return aspectElectricTurret
function aspectElectricTurret:setSelectionPriority(selectionPriority)
    return self:setProperty("selection_priority",selectionPriority)
end


---@return aspectElectricTurret
function aspectElectricTurret:setShootingCursorSize(shootingCursorSize)
    return self:setProperty("shooting_cursor_size",shootingCursorSize)
end


---@return aspectElectricTurret
function aspectElectricTurret:setStickerBox(stickerBox)
    return self:setProperty("sticker_box",stickerBox)
end


---@return aspectElectricTurret
function aspectElectricTurret:setSubgroup(subgroup)
    return self:setProperty("subgroup",subgroup)
end


---@return aspectElectricTurret
function aspectElectricTurret:setTileHeight(tileHeight)
    return self:setProperty("tile_height",tileHeight)
end


---@return aspectElectricTurret
function aspectElectricTurret:setTileWidth(tileWidth)
    return self:setProperty("tile_width",tileWidth)
end


---@return aspectElectricTurret
function aspectElectricTurret:setTriggerTargetMask(triggerTargetMask)
    return self:setProperty("trigger_target_mask",triggerTargetMask)
end


---@return aspectElectricTurret
function aspectElectricTurret:setVehicleImpactSound(vehicleImpactSound)
    return self:setProperty("vehicle_impact_sound",vehicleImpactSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setWaterReflection(waterReflection)
    return self:setProperty("water_reflection",waterReflection)
end


---@return aspectElectricTurret
function aspectElectricTurret:setWorkingSound(workingSound)
    return self:setProperty("working_sound",workingSound)
end


---@return aspectElectricTurret
function aspectElectricTurret:setName(name)
    return self:setProperty("name",name)
end


---@return aspectElectricTurret
function aspectElectricTurret:setType(type)
    return self:setProperty("type",type)
end


---@return aspectElectricTurret
function aspectElectricTurret:setLocalisedDescription(localisedDescription)
    return self:setProperty("localised_description",localisedDescription)
end


---@return aspectElectricTurret
function aspectElectricTurret:setLocalisedName(localisedName)
    return self:setProperty("localised_name",localisedName)
end


---@return aspectElectricTurret
function aspectElectricTurret:setOrder(order)
    return self:setProperty("order",order)
end




return aspectElectricTurret