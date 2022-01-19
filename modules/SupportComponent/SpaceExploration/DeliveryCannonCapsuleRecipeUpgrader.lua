---se-delivery-cannon-capsule
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/1/20 3:09
---

aspectService.getRecipe("se-delivery-cannon-capsule")
        :setName("kscp-delivery-cannon-capsule-steel")
        :setRecipeIngredients({
            {ItemEnum.steelPlate,10}
        })
        :insertToData()

aspectService.getRecipe("se-delivery-cannon-capsule")
        :setName("kscp-delivery-cannon-capsule-steel-exp")
        :setRecipeIngredients({
            {ItemEnum.steelPlate,5},
            {ItemEnum.explosives,2},
        })
        :insertToData()


local technology = aspectService.getTechnology("se-delivery-cannon");

table.insert(technology:getTechnologyEffects(),{ type = "unlock-recipe", recipe = "kscp-delivery-cannon-capsule-steel", })
table.insert(technology:getTechnologyEffects(),{ type = "unlock-recipe", recipe = "kscp-delivery-cannon-capsule-steel-exp", })

technology:insertToData()

