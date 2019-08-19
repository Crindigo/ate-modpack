recipes.removeByRecipeName("mekanism:paper");
recipes.removeByRecipeName("mekanism:cardboardbox");

// no other living creatures, traps don't make sense. no market either.
recipes.remove(<harvestcraft:groundtrap>);
recipes.remove(<harvestcraft:watertrap>);
mods.jei.JEI.removeAndHide(<harvestcraft:market>);

// make storage crate happen later on.
recipes.remove(<actuallyadditions:block_giant_chest>);

// no annoying crafting tables
mods.jei.JEI.removeAndHide(<pyrotech:worktable>);
mods.jei.JEI.removeAndHide(<pyrotech:worktable_stone>);

// charcoal should require forestry or coke ovens
furnace.remove(<minecraft:coal:1>);

// extra wood gears, stone gears, recipes
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);
mods.jei.JEI.removeAndHide(<enderio:item_material:9>);
mods.jei.JEI.removeAndHide(<enderio:item_material:10>);
recipes.removeByRecipeName("enderio:gear_stone");
recipes.removeByRecipeName("enderio:gear_stone_upgrade");
recipes.removeByRecipeName("enderio:gear_wood");
recipes.removeByRecipeName("enderio:gear_ae2_messes_things_up");
recipes.removeByRecipeName("enderio:gear_just_to_be_sure");
recipes.removeByRecipeName("enderio:gear_better_save_than_sorry");

// remove embers metal tools that duplicate thermal
val tools = ["pickaxe", "axe", "shovel", "hoe", "sword"] as string[];
val metals = ["copper", "silver", "lead", "electrum", "bronze", "nickel", "tin"] as string[];

for t in tools {
    for m in metals {
        val itemName = "embers:" ~ t ~ "_" ~ m;
        mods.jei.JEI.removeAndHide(itemUtils.getItem(itemName));
    }
}
