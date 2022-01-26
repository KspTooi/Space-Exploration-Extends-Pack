---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/1/26 2:03
---

aspectService.create(TypeEnum.recipeCategory,db.forName("uu-duplicator-category")):insertInto()



aspectConverter.toAssemblingMachine(aspectService.create(TypeEnum.assemblingMachine))

        :setName(db.forName("uu-duplicator"))
        :setEntityCollisionMask(ConstEnum.collisionMaskAllowInGroundAndSpace)
        :setAllowInSpace(true)
        :setEntityMaxHealth(1500)
        :setEntityCraftSpeed(1)
        :setEntityModuleSpecification({
            module_slots = 4
        })
        :setEntityAllowedEffects({"consumption", "speed", "productivity", "pollution"})
        :setEntityCraftingCategories({db.forName("uu-duplicator-category")})
        :setEntityCollisionBox({{-2.9, -2.9}, {2.9, 2.9}})  --左右 上下
        :setEntitySelectionBox({{-3.2, -3.2}, {3.2, 3.2}})
        :setEntityDrawingBox({{-3, -3}, {3, 3}})
        :setEntityEnergyUsage(db.buildEnergyAsKW(20000))
        :setEntityEnergySource({
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = 2
        })
        :setEntityMinable({mining_time = 3, result = db.forName("uu-duplicator")})

        :setEntityAnimation({

        layers ={
            {
                filename = db.forRes("UUDuplicator/res/hr-genric-object-gen2-duplicator.png"),
                priority = "high",
                width = 512,
                height = 512,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(0, 0),
                scale = 0.52,
                hr_version =
                {
                    filename = db.forRes("UUDuplicator/res/hr-genric-object-gen2-duplicator.png"),
                    priority = "high",
                    width = 512,
                    height = 512,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(0, 0),
                    scale = 0.52
                }
            },
            {
                filename = db.forRes("UUDuplicator/res/hr-genric-object-gen2-duplicator-shadow.png"),
                priority = "high",
                width = 512,
                height = 512,
                frame_count = 32,
                line_length = 8,
                draw_as_shadow = true,
                shift = util.by_pixel(0, 0),
                scale = 0.52,
                hr_version =
                {
                    filename = db.forRes("UUDuplicator/res/hr-genric-object-gen2-duplicator-shadow.png"),
                    priority = "high",
                    width = 512,
                    height = 512,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(0, 0),
                    scale = 0.52
                }
            }
        }

}):insertInto()