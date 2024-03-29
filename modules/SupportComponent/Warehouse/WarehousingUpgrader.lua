---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/1/19 23:15
---

local warehouseBasic = "warehouse-basic"
local storehouseBasic = "storehouse-basic"


aspectService.getRecipe(warehouseBasic):setRecipeIngredients({

    { ItemEnum.ironPlate, 2500 },
    { ItemEnum.stoneBrick, 4000 },
    { ItemEnum.steelPlate, 8000 },
    { ItemEnum.ironStick, 8000 },
    { ItemEnum.concrete, 8000},

}):insertToData()

aspectService.getRecipe(storehouseBasic):setRecipeIngredients({

    { ItemEnum.ironPlate, 1250 },
    { ItemEnum.stoneBrick, 1600 },
    { ItemEnum.steelPlate, 3200 },
    { ItemEnum.ironStick, 3200 },
    { ItemEnum.concrete, 3200},

}):insertToData()

aspectService.get(TypeEnum.container,warehouseBasic):setEntityMaxHealth(6000):insertToData()
aspectService.get(TypeEnum.container,storehouseBasic):setEntityMaxHealth(3000):insertToData()
aspectService.getItem(warehouseBasic):setItemStackSize(5):insertToData()
aspectService.getItem(storehouseBasic):setItemStackSize(10):insertToData()


