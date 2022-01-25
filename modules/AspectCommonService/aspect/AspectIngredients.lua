---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/1/25 15:40
---

local aspectIngredients = {}

----静态内部操作方法 ----- 开始----->>>>

function aspectIngredients.create(luaObject)
    aspectIngredients.luaObject = luaObject
    return aspectIngredients;
end

----静态内部操作方法 ----- 结束 -----<<<<




----成分配方操作方法 ----- 开始----->>>>

function aspectIngredients:insert(type,name,amount,catalystAmount)
    table.insert(self.luaObject,{type=type,name=name,amount=amount,catalyst_amount=catalystAmount})
end

function aspectIngredients:clear()
    self.luaObject = {}
end

----成分配方操作方法 ----- 结束 -----<<<<

return aspectIngredients