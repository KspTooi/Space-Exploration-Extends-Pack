---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/1/20 21:27
---


local uuMatterResult = {
    {
      type = TypeEnum.item,
      name = db.forName("uu-matter"),
      amount = 1, catalyst_amount = 1
    }
}
local uuAmplifierResult = {
    {
        type = TypeEnum.fluid,
        name = db.forName("fluid-uu-amplifier"),
        amount = 1, catalyst_amount = 1
    }
}

local oreToUUMatter = {

    { type = TypeEnum.item, name = ItemEnum.ironOre , amount = 4 , result = uuMatterResult},
    { type = TypeEnum.item, name = ItemEnum.copperOre , amount = 4 , result = uuMatterResult},
    { type = TypeEnum.item, name = ItemEnum.coal , amount = 5 , result = uuMatterResult},
    { type = TypeEnum.item, name = ItemEnum.stone , amount = 6 , result = uuMatterResult},
    { type = TypeEnum.item, name = ItemEnum.uraniumOre , amount = 4 , result = uuMatterResult},
    --太空探索
    { type = TypeEnum.item, name = "se-beryllium-ingot" , amount = 4 , result = uuAmplifierResult},
    { type = TypeEnum.item, name = "se-holmium-ingot" , amount = 4 , result = uuAmplifierResult},
    { type = TypeEnum.item, name = "se-iridium-ingot" , amount = 4 , result = uuAmplifierResult},
}

for i,v in pairs(oreToUUMatter) do

    local ingredients = db.buildIngredients(TypeEnum.item , v.name , v.amount):build()
    if aspectService.get(v.type,v.name):isNotEmpty() then
        aspectService.create(TypeEnum.recipe,db.forName("uu-generate-"..v.name))
                     :setRecipeCategory(db.forName("uu-fabricator-category"))
                     :setRecipeResults(v.result)
                     :setRecipeIngredients(ingredients)
                     :insertInto()
    end
end



--[[
aspectService.create(TypeEnum.recipe,db.forName("uu-generate-iron"))

        :setRecipeIngredients({{ type=TypeEnum.item , name=ItemEnum.ironOre , amount=5}})
        :setRecipeResults(uuGenerateResult)
        :setRecipeCategory(db.forName("uu-fabricator-category"))
        :insertInto()

        :getSame():setName(ConstEnum.modPrefix.."uu-generate-copper")
        :setRecipeIngredients({{ type=TypeEnum.item , name=ItemEnum.copperOre , amount=1}})
        :insertInto()

        :getSame():setName(ConstEnum.modPrefix.."uu-generate-stone")
        :setRecipeIngredients({{ type=TypeEnum.item , name=ItemEnum.stone , amount=1}})
        :insertInto()

        :getSame():setName(ConstEnum.modPrefix.."uu-generate-coal")
        :setRecipeIngredients({{ type=TypeEnum.item , name=ItemEnum.coal , amount=1}})
        :insertInto()]]
