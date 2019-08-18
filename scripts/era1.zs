import crafttweaker.item.IIngredient;

// create dirt with 4x clumps instead of the compacting bin.
val dirtClump = <pyrotech:rock:4>;
recipes.addShapeless("ate_dirt", <minecraft:dirt>, [dirtClump, dirtClump, dirtClump, dirtClump]);

// same with sand
val sandPile = <pyrotech:rock:5>;
recipes.addShapeless("ate_sand", <minecraft:sand>, [sandPile, sandPile, sandPile, sandPile]);

// remove forestry wood pile since pyrotech has its own charcoal system
mods.jei.JEI.removeAndHide(<forestry:wood_pile>);

recipes.addShapeless("ate_era1_plank", <minecraft:planks:0>, 
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>, <ore:itemClay>]);

recipes.remove(<marblecraftingtable:marble_crafting_table>);
recipes.addShapeless("ate_ctable_swap", <marblecraftingtable:marble_crafting_table>, [<minecraft:crafting_table>]);
recipes.addShapeless("ate_ctable_swap2", <minecraft:crafting_table>, [<marblecraftingtable:marble_crafting_table>]);

recipes.remove(<skyresources:dirtfurnace>);
recipes.addShaped("ate_dirt_furnace", <skyresources:dirtfurnace>, [
    [<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>],
    [<minecraft:dirt>, null, <minecraft:dirt>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
]);

recipes.addShaped("ate_dead_bush", <minecraft:deadbush>, [
    [null, <ore:stickWood>, null],
    [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
    [null, <ore:plankWood>, null]
]);

// change crucible recipe to use porcelain
recipes.addShaped("ate_crucible", <skyresources:crucible>, [
    [<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>],
    [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
]);

mods.skyresources.crucible.addRecipe(<liquid:water> * 100, <minecraft:dirt>);
for leaves in <ore:treeLeaves>.items {
    mods.skyresources.crucible.addRecipe(<liquid:water> * 250, leaves);
}

mods.pyrotech.SoakingPot.addRecipe("ate_sapling", <minecraft:sapling>, <liquid:water>, <minecraft:deadbush>, 1200);

// allow firing porcelain in kiln.
mods.pyrotech.StoneKiln.addRecipe("ate_porcelain_item", <ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>, 105 * 20, 0.08,
    [<pyrotech:material:6>, <pyrotech:material:7>], true);
mods.pyrotech.StoneKiln.addRecipe("ate_porcelain_block", <ceramics:porcelain>, <ceramics:clay_soft>, 420 * 20, 0.08,
    [<pyrotech:material:6>, <pyrotech:material:7>], true);

mods.pyrotech.StoneKiln.addRecipe("ate_porcelain_faucet", <ceramics:faucet>, <ceramics:unfired_clay:6>, 315 * 20, 0.08,
    [<pyrotech:material:6>, <pyrotech:material:7>], true);
mods.pyrotech.StoneKiln.addRecipe("ate_porcelain_channel", <ceramics:channel>, <ceramics:unfired_clay:7>, 175 * 20, 0.08,
    [<pyrotech:material:6>, <pyrotech:material:7>], true);
mods.pyrotech.StoneKiln.addRecipe("ate_clay_plate", <ceramics:unfired_clay:9>, <ceramics:unfired_clay:8>, 210 * 20, 0.08,
    [<pyrotech:material:6>, <pyrotech:material:7>], true);

mods.pyrotech.StoneKiln.addRecipe("ate_clay_barrel", <ceramics:clay_barrel>, <ceramics:clay_barrel_unfired>, 525 * 20, 0.08,
    [<pyrotech:material:6>, <pyrotech:material:7>], true);
mods.pyrotech.StoneKiln.addRecipe("ate_clay_barrelext", <ceramics:clay_barrel:1>, <ceramics:clay_barrel_unfired:1>, 315 * 20, 0.08,
    [<pyrotech:material:6>, <pyrotech:material:7>], true);

mods.pyrotech.StoneKiln.addRecipe("ate_porcelain_barrel", <ceramics:porcelain_barrel>, <ceramics:clay_barrel_unfired:2>, 525 * 20, 0.08,
    [<pyrotech:material:6>, <pyrotech:material:7>], true);
mods.pyrotech.StoneKiln.addRecipe("ate_porcelain_barrelext", <ceramics:porcelain_barrel_extension>, <ceramics:clay_barrel_unfired:3>, 
    525 * 20, 0.08, [<pyrotech:material:6>, <pyrotech:material:7>], true);

mods.inworldcrafting.FluidToItem.transform(<minecraft:grass>, <liquid:water>, 
    [<minecraft:dirt>, <minecraft:leaves>], true);

<ore:blockCharcoal>.add(<pyrotech:charcoal_block>);

val refractoryBrick = <pyrotech:material:5>;
recipes.remove(<minecraft:furnace>);
recipes.addShaped("ate_furnace", <minecraft:furnace>, [
    [refractoryBrick, refractoryBrick, refractoryBrick],
    [refractoryBrick, <ore:blockCharcoal>, refractoryBrick],
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);