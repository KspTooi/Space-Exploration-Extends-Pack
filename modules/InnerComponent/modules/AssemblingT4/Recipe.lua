local assembling4 =
{
    {"assembling-machine-3", 5},
    {"processing-unit", 20},
    {"concrete", 200},
}

data:extend(
        {
            ---------------------------------------------------------------------------------
--[[            {
                type = "recipe-category",
                name = "kscp-assembling-machine-4-receipe"
            },]]
            ---------------------------------------------------------------------------------
            {
                type = "recipe",
                name = "kscp-assembling-machine-4",
                enabled = false,
                energy_required = 20,
                ingredients = assembling4,
                result = "kscp-assembling-machine-4"
            },
            ---------------------------------------------------------------------------------
        }
)



