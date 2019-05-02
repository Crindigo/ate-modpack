recipes.removeByRecipeName("mekanism:paper");
recipes.removeByRecipeName("mekanism:cardboardbox");

// no other living creatures, traps don't make sense.
recipes.remove(<harvestcraft:groundtrap>);
recipes.remove(<harvestcraft:watertrap>);

// make storage crate happen later on.
recipes.remove(<actuallyadditions:block_giant_chest>);

// charcoal should require forestry or coke ovens
furnace.remove(<minecraft:coal:1>);

// remove embers metal tools that duplicate thermal
val tools = ["pickaxe", "axe", "shovel", "hoe", "sword"] as string[];
val metals = ["copper", "silver", "lead", "electrum", "bronze", "nickel", "tin"] as string[];

for t in tools {
    for m in metals {
        val itemName = "embers:" ~ t ~ "_" ~ m;
        mods.jei.JEI.removeAndHide(itemUtils.getItem(itemName));
    }
}
