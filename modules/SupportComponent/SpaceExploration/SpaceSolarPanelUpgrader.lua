---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/1/19 20:55
---



aspectService.get(TypeEnum.solarPanel,"se-space-solar-panel")
        :setSolarPanelProduction("180"..ConstEnum.kw)
        :insertToData()

aspectService.get(TypeEnum.solarPanel,"se-space-solar-panel-2")
        :setSolarPanelProduction("360"..ConstEnum.kw)
        :insertToData()

aspectService.get(TypeEnum.solarPanel,"se-space-solar-panel-3")
        :setSolarPanelProduction("720"..ConstEnum.kw)
        :insertToData()