recipes.removeByRecipeName("mekanism:paper");
recipes.removeByRecipeName("mekanism:cardboardbox");

// no other living creatures, traps don't make sense.
recipes.remove(<harvestcraft:groundtrap>);
recipes.remove(<harvestcraft:watertrap>);

// make storage crate happen later on.
recipes.remove(<actuallyadditions:block_giant_chest>);

// charcoal should require forestry or coke ovens
furnace.remove(<minecraft:coal:1>);