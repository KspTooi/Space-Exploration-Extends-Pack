
local iv_assembler = table.deepcopy(data.raw["item"]["assembling-machine-3"])


data:extend(
	{
		{
			type = "item",
			name = "kscp-assembling-machine-4",
			icon = "__ksptooi-server-commons-preprocess__/modules/iv-assembling/res/iv-assembling-machine-icon.png",
			icon_size = 64,
			icon_mipmaps = 1,
			subgroup = "extraction-machine",
			place_result = "kscp-assembling-machine-4",
			stack_size = 50
		},
	}
)