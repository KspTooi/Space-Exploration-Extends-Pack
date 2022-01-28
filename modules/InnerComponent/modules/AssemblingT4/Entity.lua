

local iv_assembler = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])


iv_assembler.name = "kscp-assembling-machine-4"

iv_assembler.minable = {hardness = 0.2, mining_time = 0.5, result = "kscp-assembling-machine-4"}
iv_assembler.max_health = 500
iv_assembler.crafting_speed = 6
iv_assembler.module_specification ={
	module_slots = 8
}
iv_assembler.energy_usage = "1875kW"



iv_assembler.animation = {
	layers =
	{
		{
			filename = db.forRes("AssemblingT4/res/".."iv-assembling-machine.png"),
			priority = "high",
			width = 108,
			height = 119,
			frame_count = 32,
			line_length = 8,
			shift = util.by_pixel(0, -0.5),
			hr_version =
			{
				filename = db.forRes("AssemblingT4/res/".."hr-iv-assembling-machine.png"),
				priority = "high",
				width = 214,
				height = 237,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, -0.75),
				scale = 0.5
			}
		},
		{
			filename = db.forRes("AssemblingT4/res/".."iv-assembling-machine-shadow.png"),
			priority = "high",
			width = 130,
			height = 82,
			frame_count = 32,
			line_length = 8,
			draw_as_shadow = true,
			shift = util.by_pixel(28, 4),
			hr_version =
			{
				filename = db.forRes("AssemblingT4/res/".."hr-iv-assembling-machine-shadow.png"),
				priority = "high",
				width = 260,
				height = 162,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(28, 4),
				scale = 0.5
			}
		}
	}
}

--[[iv_assembler.animation.layers[1].filename = "__ksptooi-server-commons-preprocess__/modules/iv-assembling/hr-assembling-machine.png"]]
--[[iv_assembler.animation.layers.line_length = 8
iv_assembler.animation.layers.width = 188
iv_assembler.animation.layers.height = 210
iv_assembler.animation.layers.height = 210


iv_assembler.animation =
{
	layers =
	{
		{
			priority = "high",
			filename = "__ksptooi-server-commons-preprocess__/modules/iv-assembling/assembling-machine.png",
			line_length = 8,
			width = 94,
			height = 105,
			frame_count = 32,
			animation_speed = 0.5,
			shift = util.by_pixel(-7.5, -8),
			hr_version =
			{
				priority = "high",
				filename = "__ksptooi-server-commons-preprocess__/modules/iv-assembling/hr-assembling-machine.png",
				animation_speed = 0.5,
				line_length = 8,
				width = 188,
				height = 210,
				shift = util.by_pixel(-7.5, -8),
				frame_count = 32,
			}
		}
	}
}]]



data:extend({
	iv_assembler
})