---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/1/26 2:03
---

--复制机合成
local ingredients = db.buildIngredients(TypeEnum.item,db.forName("uu-matter-fabricator"),1)
                      :insert(TypeEnum.item,ItemEnum.advancedCircuit,10)
                      :insert(TypeEnum.item,db.forName("prism-structure"),20)


aspectConverter.toRecipe(aspectService.create(TypeEnum.recipe))
               :setName(db.forName("uu-duplicator"))
               :setOrder("u[uu-duplicator]")
               :setResult(db.forName("uu-duplicator"))
               :setEnergyRequired(7)
               :setEnabled(false)
               :setRequesterPasteMultiplier(1)
               :setIngredients(ingredients:build())
               :insertInto()



aspectService.create(TypeEnum.itemGroup)
        :setName(db.forName("uu-duplicator-item-group"))
        :setItemIcon(db.forRes("UUBase/res/hr-fluid-uu-recipe.png"))
        :setItemIconSize(64)
        :setProperty("order_in_recipe","u[uu-duplicator]")
        :insertInto()


aspectService.create(TypeEnum.itemSubgroup)
        :setName(db.forName("uu-duplicate-subgroup"))
        :setProperty("group",db.forName("uu-duplicator-item-group"))
        :insertInto()


local duplicatorRecipe = {

    {
        name = "uu-to-iron-plate",
        desc = "转换为铁板",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 10 }
        },
        output = {
            { type = TypeEnum.item , name = ItemEnum.ironPlate , amount = 4 }
        },
    },

    {
        name = "uu-to-steel-plate",
        desc = "转换为钢板",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 25 }
        },
        output = {
            { type = TypeEnum.item , name = ItemEnum.steelPlate , amount = 2 }
        },
    },

    {
        name = "uu-to-copper-plate",
        desc = "转换为铜板",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 10 }
        },
        output = {
            { type = TypeEnum.item , name = ItemEnum.copperPlate , amount = 4 }
        },
    },

    {
        name = "uu-to-stone",
        desc = "转换为石头",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 10 }
        },
        output = {
            { type = TypeEnum.item , name = ItemEnum.stone , amount = 4 }
        },
    },

    {
        name = "uu-to-stone-brick",
        desc = "转换为石砖",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 10 }
        },
        output = {
            { type = TypeEnum.item , name = ItemEnum.stoneBrick , amount = 3 }
        },
    },

    {
        name = "uu-to-coal",
        desc = "转换为煤矿",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 10 }
        },
        output = {
            { type = TypeEnum.item , name = ItemEnum.coal , amount = 4 }
        },
    },

    {
        name = "uu-to-water",
        desc = "转换为水",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 10 }
        },
        output = {
            { type = TypeEnum.fluid , name = FluidEnum.water , amount = 200 }
        },
    },

    {
        name = "uu-to-crude-oil",
        desc = "转换为油",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 10 }
        },
        output = {
            { type = TypeEnum.fluid , name = FluidEnum.crudeOil , amount = 100 }
        },
    },

    {
        name = "uu-to-glass",
        desc = "转换为玻璃",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 100 }
        },
        output = {
            { type = TypeEnum.item , name = "glass" , amount = 100 }
        }
    },
    {
        name = "uu-to-se-beryllium-plate",
        desc = "转换为铍板",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 50 },
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-amplifier") , amount = 30 }
        },
        output = {
            { type = TypeEnum.item , name = "se-beryllium-plate" , amount = 100 }
        }
    },
    {
        name = "uu-to-se-iridium-plate",
        desc = "转换为铱板",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 50 },
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-amplifier") , amount = 30 }
        },
        output = {
            { type = TypeEnum.item , name = "se-iridium-plate" , amount = 100 }
        }
    },
    {
        name = "uu-to-se-holmium-plate",
        desc = "转换为钬板",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 50 },
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-amplifier") , amount = 30 }
        },
        output = {
            { type = TypeEnum.item , name = "se-holmium-plate" , amount = 100 }
        }
    },
    {
        name = "uu-to-se-vulcanite-block",
        desc = "转换为火成岩块",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 80 },
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-amplifier") , amount = 50 }
        },
        output = {
            { type = TypeEnum.item , name = "se-vulcanite-block" , amount = 100 }
        }
    },
    {
        name = "uu-to-se-cryonite-rod",
        desc = "转换为冰晶石棒",

        input = {
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-matter") , amount = 100 },
            { type = TypeEnum.fluid , name = db.forName("fluid-uu-amplifier") , amount = 50 }
        },
        output = {
            { type = TypeEnum.item , name = "se-cryonite-rod" , amount = 100 }
        }
    },
}

for i,v in pairs(duplicatorRecipe) do
    for i1,o in pairs(v.input) do
        if aspectService.get(o.type,o.name):isNotEmpty()==false then
            return
        end
    end

    for i1,o in pairs(v.output) do

        if aspectService.get(o.type,o.name):isNotEmpty()==false then
            return
        end

    end


    aspectService.create(TypeEnum.recipe,db.forName("uu-duplicate-"..v.name))
                 :setRecipeCategory(db.forName("uu-duplicator-category"))
                 :setRecipeResults(v.output)
                 :setRecipeIngredients(v.input)
                 :setItemSubgroup(ItemSubgroupEnum.rawResource)
                 :insertInto()

end


