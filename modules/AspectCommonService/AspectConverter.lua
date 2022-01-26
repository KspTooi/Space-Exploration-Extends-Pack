---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by KspTooi.
--- DateTime: 2022/1/26 10:48
---
local aspectObject = require("aspect.AspectObject")
local aspectRecipe = require("aspect.AspectRecipe")
local aspectEntity = require("aspect.AspectEntity")
local aspectTechnology = require("aspect.AspectTechnology")
local aspectAssemblingMachine = require("aspect.AspectAssemblingMachine")
local aspectFurnace = require("aspect.AspectFurnace")


local aspectConverter = {}


function aspectConverter.toObject(input)
    return aspectObject:import(input)
end

function aspectConverter.toRecipe(input)
    return aspectRecipe:import(input)
end

function aspectConverter:toEntity(input)
    return aspectEntity:import(input)
end

function aspectConverter:toTechnology(input)
    return aspectTechnology:import(input)
end

function aspectConverter:toAssemblingMachine(input)
    return aspectAssemblingMachine:import(input)
end

function aspectConverter:toFurnace(input)
    return aspectFurnace:import(input)
end