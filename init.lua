local S = minetest.get_translator("mcl_rose_gold")

mcl_armor.trims.colors["rose_gold"] = "#ffcbb4"
mcl_smithing_table.smithing_materials["mcl_core:rose_gold_ingot"] = "rose_gold"

minetest.register_craftitem(":mcl_core:rose_gold_ingot", {
    description = S("Rose Gold Ingot"),
    groups = {craftitem = 1},
    inventory_image = "mcl_rose_gold_ingot.png",
    wield_image = "mcl_rose_gold_ingot.png"
})

minetest.register_craft({
    output = "mcl_core:rose_gold_ingot 4",
    recipe = {
        "mcl_core:gold_ingot", "mcl_core:gold_ingot",
        "mcl_copper:copper_ingot", "mcl_copper:copper_ingot"
    },
    type = "shapeless"
})

minetest.register_tool(":mcl_tools:pick_rose_gold", {
    _mcl_diggroups = {pickaxey = {level = 4, speed = 12, uses = 284}},
    _mcl_toollike_wield = true,
    _repair_material = "mcl_core:rose_gold_ingot",
    _tt_help = "",
    description = S("Rose Gold Pickaxe"),
    groups = {dig_speed_class = 6, enchantability = 22, pickaxe = 1, tool = 1},
    inventory_image = "mcl_rose_gold_pickaxe.png",
    on_place = mcl_tools.tool_place_funcs.pick,
    sound = {breaks = "default_tool_breaks"},
    tool_capabilities = {
        damage_groups = {fleshy = 4},
		full_punch_interval = 0.83333333,
		max_drop_level = 4,
		punch_attack_uses = 142
	},
    wield_image = "mcl_rose_gold_pickaxe.png",
    wield_scale = mcl_vars.tool_wield_scale
})

minetest.register_tool(":mcl_tools:shovel_rose_gold", {
    _mcl_diggroups = {shovely = {level = 4, speed = 12, uses = 284}},
    _mcl_toollike_wield = true,
    _repair_material = "mcl_core:rose_gold_ingot",
    _tt_help = "",
    description = S("Rose Gold Shovel"),
    groups = {dig_speed_class = 6, enchantability = 22, shovel = 1, tool = 1},
    inventory_image = "mcl_rose_gold_shovel.png",
    on_place = mcl_tools.tool_place_funcs.shovel,
    sound = {breaks = "default_tool_breaks"},
    tool_capabilities = {
        damage_groups = {fleshy = 4},
        full_punch_interval = 1,
        max_drop_level = 4,
        punch_attack_uses = 142
    },
    wield_image = "mcl_rose_gold_shovel.png",
    wield_scale = mcl_vars.tool_wield_scale
})

minetest.register_tool(":mcl_tools:axe_rose_gold", {
    _mcl_diggroups = {axey = {level = 4, speed = 12, uses = 284}},
    _mcl_toollike_wield = true,
    _repair_material = "mcl_core:rose_gold_ingot",
    _tt_help = "",
    description = S("Rose Gold Axe"),
    groups = {axe = 1, dig_speed_class = 6, enchantability = 22, tool = 1},
    inventory_image = "mcl_rose_gold_axe.png",
    on_place = mcl_tools.tool_place_funcs.axe,
    sound = {breaks = "default_tool_breaks"},
    tool_capabilities = {
        damage_groups = {fleshy = 9},
        full_punch_interval = 1,
        max_drop_level = 4,
        punch_attack_uses = 142
    },
    wield_image = "mcl_rose_gold_axe.png",
    wield_scale = mcl_vars.tool_wield_scale
})

minetest.register_tool(":mcl_tools:sword_rose_gold", {
    _mcl_diggroups = {
        swordy = {level = 4, speed = 12, uses = 284},
        swordy_cobweb = {level = 4, speed = 12, uses = 284}
    },
    _mcl_toollike_wield = true,
    _repair_material = "mcl_core:rose_gold_ingot",
    _tt_help = "",
    description = S("Rose Gold Sword"),
    groups = {dig_speed_class = 6, enchantability = 22, sword = 1, weapon = 1},
    inventory_image = "mcl_rose_gold_sword.png",
    on_place = mcl_tools.tool_place_funcs.sword,
    sound = {breaks = {"default_tool_breaks"}},
    tool_capabilities = {
        damage_groups = {fleshy = 6},
        full_punch_interval = 0.625,
        max_drop_level = 4,
        punch_attack_uses = 284
    },
    wield_image = "mcl_rose_gold_sword.png",
    wield_scale = mcl_vars.tool_wield_scale
})

minetest.register_tool(":mcl_farming:hoe_rose_gold", {
    _mcl_diggroups = {hoey = {level = 4, speed = 12, uses = 284}},
    _mcl_toollike_wield = true,
    _repair_material = "mcl_core:rose_gold_ingot",
    _tt_help = "",
    description = S("Rose Gold Hoe"),
    groups = {dig_speed_class = 6, enchantability = 22, hoe = 1, tool = 1},
    inventory_image = "mcl_rose_gold_hoe.png",
    on_place = minetest.registered_tools["mcl_farming:hoe_iron"].on_place,
    sound = {breaks = {"default_tool_breaks"}},
    tool_capabilities = {
        damage_groups = {fleshy = 1},
        full_punch_interval = 1,
        punch_attack_uses = 284
    },
    wield_image = "mcl_rose_gold_hoe.png",
    wield_scale = mcl_vars.tool_wield_scale
})

for id, defs in pairs(minetest.registered_tools) do
    if id:find("_gold") and defs.description:find("Golden") then
        minetest.override_item(id, {
            _mcl_upgradable = true,
            _mcl_upgrade_item = id:gsub("_gold", "_rose_gold"),
            _no_template_needed = true,
            _upgrade_with = "mcl_core:rose_gold_ingot"
        })
    end
end
