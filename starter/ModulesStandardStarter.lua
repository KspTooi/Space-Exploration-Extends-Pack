---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/1/19 17:46
---

aspectService = require("modules.AspectCommonService.AspectService")
require("enums.ConstEnum")
require("enums.TypeEnum")
require("enums.ItemEnum")
require("enums.ToolEnum")
require("enums.FluidEnum")
require("enums.RecipeCategoryEnum")
require("enums.SubgroupEnum")
require("enums.ExplosionEnum")


---模块加载顺序
local modulesInitConfig = {
    "Entity","Item","Recipe","Technology"
}


---模块定义
local modulesDefine = {

    { name = "M1" , desc = "UU液体基础" ,  packName = db.forInnerModules("UUBase") },
    { name = "M2" , desc = "UU工厂" ,  packName = db.forInnerModules("UUMatterFabricator") },
    { name = "M3" , desc = "UU复制机" ,  packName = db.forInnerModules("UUDuplicator") },
    { name = "M4" , desc = "四号组装机" ,  packName = db.forInnerModules("AssemblingT4") }

}


---模块加载
local function loaderForModules(defines)

    for i,v in pairs(modulesDefine) do

        for i1,init in pairs(modulesInitConfig) do
            require(v.packName..init)
        end

    end

end


loaderForModules(modulesDefine)




--UU液体
--[[require("modules.InnerComponent.modules.UUBase.Entity")
require("modules.InnerComponent.modules.UUBase.Item")
require("modules.InnerComponent.modules.UUBase.Recipe")
require("modules.InnerComponent.modules.UUBase.Technology")]]


--UU物质生成机
--[[require("modules.InnerComponent.modules.UUMatterFabricator.Entity")
require("modules.InnerComponent.modules.UUMatterFabricator.Item")
require("modules.InnerComponent.modules.UUMatterFabricator.Recipe")
require("modules.InnerComponent.modules.UUMatterFabricator.Technology")]]

--UU物质复制机
--[[require("modules.InnerComponent.modules.UUDuplicator.Entity")
require("modules.InnerComponent.modules.UUDuplicator.Item")
require("modules.InnerComponent.modules.UUDuplicator.Recipe")
require("modules.InnerComponent.modules.UUDuplicator.Technology")]]

--4号组装机
--[[require("modules.InnerComponent.modules.Entity")
require("modules.InnerComponent.modules.Item")
require("modules.InnerComponent.modules.Recipe")
require("modules.InnerComponent.modules.Technology")]]
