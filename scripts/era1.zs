import crafttweaker.item.IIngredient;

// create dirt with 4x clumps instead of the compacting bin.
val dirtClump = <pyrotech:rock:4>;
recipes.addShapeless("ate_dirt", <minecraft:dirt>, [dirtClump, dirtClump, dirtClump, dirtClump]);

// same with sand
val sandPile = <pyrotech:rock:5>;
recipes.addShapeless("ate_sand", <minecraft:sand>, [sandPile, sandPile, sandPile, sandPile]);

// remove forestry wood pile since pyrotech has its own charcoal system
mods.jei.JEI.removeAndHide(<forestry:wood_pile>);

/*
recipes.addShapeless("ate_era1_plank", <minecraft:planks:0>, 
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>, <ore:itemClay>]);
*/

recipes.remove(<marblecraftingtable:marble_crafting_table>);
recipes.addShapeless("ate_ctable_swap", <marblecraftingtable:marble_crafting_table>, [<minecraft:crafting_table>]);
recipes.addShapeless("ate_ctable_swap2", <minecraft:crafting_table>, [<marblecraftingtable:marble_crafting_table>]);

recipes.remove(<skyresources:dirtfurnace>);
/*recipes.addShaped("ate_dirt_furnace", <skyresources:dirtfurnace>, [
    [<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>],
    [<minecraft:dirt>, null, <minecraft:dirt>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
]);*/

// use pyrotech crucible instead earlier on. late game can use TE magma crucible, NC melter, etc.
// may want to reenable this and give it a midgame recipe.
mods.jei.JEI.removeAndHide(<skyresources:crucible>);

mods.pyrotech.StoneCrucible.addRecipe("ate_water_dirt", <liquid:water> * 1000, <minecraft:dirt>, 2400);
mods.pyrotech.StoneCrucible.addRecipe("ate_water_grass", <liquid:water> * 2000, <minecraft:grass>, 4800);
mods.pyrotech.StoneCrucible.addRecipe("ate_water_leaves", <liquid:water> * 1000, <ore:treeLeaves>, 600);

//mods.skyresources.crucible.addRecipe(<liquid:water> * 100, <minecraft:dirt>);
//for leaves in <ore:treeLeaves>.items {
    //mods.skyresources.crucible.addRecipe(<liquid:water> * 250, leaves);
//}

//mods.pyrotech.SoakingPot.addRecipe("ate_sapling", <minecraft:sapling>, <liquid:water>, <minecraft:deadbush>, 1200);

/*
mods.inworldcrafting.FluidToItem.transform(<minecraft:grass>, <liquid:water>, 
    [<minecraft:dirt>, <minecraft:leaves>], true);
*/

// added wheat seeds to dirt scavenge so we only need plant oil
//mods.pyrotech.SoakingPot.addRecipe("ate_grass_water", <minecraft:grass>, <liquid:water> * 1000,
//    <minecraft:dirt>, 7 * 1200);
mods.pyrotech.SoakingPot.addRecipe("ate_grass_oil", <minecraft:grass>, <liquid:plantoil> * 100,
    <minecraft:dirt>, 1200);

<ore:blockCharcoal>.add(<pyrotech:charcoal_block>);

// in refractory machine recipes, replace iron with polished diorite
recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:stoneDioritePolished>, <pyrotech:brick_kiln>);
recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:stoneDioritePolished>, <pyrotech:brick_oven>);
recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:stoneDioritePolished>, <pyrotech:brick_sawmill>);
recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:stoneDioritePolished>, <pyrotech:brick_crucible>);

// coremetal processing
mods.pyrotech.BrickCrucible.addRecipe("ate_coremetal_melt", <liquid:coremetal> * 144, <ore:oreCoremetal>, 4800);
mods.pyrotech.SoakingPot.addRecipe("ate_coremetal_soak", <materialpart:coremetal:ingot>, <liquid:coremetal> * 72,
    <pyrotech:material:16>, 4800);

val refractoryBrick = <pyrotech:material:5>;
recipes.remove(<minecraft:furnace>);
recipes.addShaped("ate_furnace", <minecraft:furnace>, [
    [refractoryBrick, refractoryBrick, refractoryBrick],
    [refractoryBrick, <ore:blockCharcoal>, refractoryBrick],
    [<ore:ingotCoremetal>, <ore:ingotCoremetal>, <ore:ingotCoremetal>]
]);

// wood gear using boards
recipes.remove(<thermalfoundation:material:22>);
recipes.addShaped(<thermalfoundation:material:22>, [
    [null, <pyrotech:material:20>, null],
    [<pyrotech:material:20>, null, <pyrotech:material:20>],
    [null, <pyrotech:material:20>, null]
]);
recipes.addShaped(<thermalfoundation:material:22> * 2, [
    [null, <pyrotech:material:23>, null],
    [<pyrotech:material:23>, null, <pyrotech:material:23>],
    [null, <pyrotech:material:23>, null]
]);