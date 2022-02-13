---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/2/8 17:26
---

local ingredients = db.buildIngredients(TypeEnum.item,ItemEnum.solarPanel,5)
                      :insert(TypeEnum.item,ItemEnum.electronicCircuit,20)
                      :insert(TypeEnum.item,db.forName("prism-structure"),25)
--[[        :insert(TypeEnum.item,ItemEnum.electronicCircuit,2)]]



aspectConverter.toRecipe(aspectService.create(TypeEnum.recipe))
               :setName(db.forName("prism-solar-panel-1"))
               :setOrder("p[prism-solar-panel]")
               :setResult(db.forName("prism-solar-panel-1"))
               :setEnergyRequired(1.8)
               :setEnabled(false)
               :setRequesterPasteMultiplier(1)
               :setIngredients(ingredients:build())
               :insertInto()