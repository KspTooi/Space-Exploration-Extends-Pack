---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/1/20 2:48
---

local collision_mask =  {"object-layer", "train-layer", "floor-layer","water-tile"}


aspectService.get(TypeEnum.assemblingMachine,"mining-depot")
        :setEntityCollisionMask(collision_mask)
        :setAllowInSpace(true)
        :insertToData()