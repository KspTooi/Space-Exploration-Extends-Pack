---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/1/26 2:03
---



local duplicateResult = {
    {type = TypeEnum.item, name = ConstEnum.modPrefix.."uu-matter", amount = 1, catalyst_amount = 1}
}


local UUFluidToMaterial = {

    { type=TypeEnum.item , name = db.forName("uu-matter") , amount = 10 , result = duplicateResult },
    { type=TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 10 , result = duplicateResult },

}



for i,v in pairs(UUFluidToMaterial) do

    local ingredients = db.buildIngredients(v.type , v.name , v.amount):build()

    aspectService.create(TypeEnum.recipe,db.forName("uu-duplicate-"..v.name))
                 :setRecipeCategory(db.forName("uu-duplicator-category"))
                 :setRecipeResults(v.result)
                 :setRecipeIngredients(ingredients)
                 :insertInto()

end