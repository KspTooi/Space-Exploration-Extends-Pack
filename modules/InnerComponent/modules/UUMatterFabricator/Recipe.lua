---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/1/20 21:27
---



local uuGenerateResult = {
    {type = "fluid", name = ConstEnum.modPrefix.."fluid-uu-matter", amount = 50, catalyst_amount = 50}
}


aspectService.create(TypeEnum.recipe,ConstEnum.modPrefix.."uu-generate-iron")
        :setRecipeIngredients({{ type=TypeEnum.item , name=ItemEnum.ironOre , amount=1}})
        :setRecipeResults(uuGenerateResult)
--[[
        :insertInto()]]