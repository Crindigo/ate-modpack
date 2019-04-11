import crafttweaker.item.IIngredient;

val feldspar = <sgextraparts:genericitem:9>;
recipes.addShapeless("ate_handaxe", <earthworks:tool_hand_axe>, [feldspar, feldspar]);

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

recipes.addShapeless("ate_cheap_flintsteel", <minecraft:flint_and_steel:62>, [
    <ore:ingotCoremetal>, <ore:itemFlint>
]);

mods.inworldcrafting.FireCrafting.addRecipe(<forestry:ash>, <ore:plankWood>);

mods.skyresources.rockgrinder.addRecipe(<earthworks:item_chalk> * 2, <minecraft:sand>);
mods.skyresources.rockgrinder.addRecipe(<earthworks:item_chalk> * 8, <minecraft:sandstone>);

recipes.addShapeless("ate_bonemeal", <minecraft:dye:15>, [<earthworks:item_chalk>, <ore:dustAsh>]);

recipes.addShaped("ate_dead_bush", <minecraft:deadbush>, [
    [null, <ore:stickWood>, null],
    [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
    [null, <ore:plankWood>, null]
]);

// change crucible recipe to use porcelain

mods.skyresources.crucible.addRecipe(<liquid:water> * 100, <minecraft:dirt>);
for leaves in <ore:treeLeaves>.items {
    mods.skyresources.crucible.addRecipe(<liquid:water> * 250, leaves);
}

mods.inworldcrafting.FluidToItem.transform(<minecraft:clay_ball> * 2, <liquid:water>, 
    [<earthworks:item_dirt>, <earthworks:item_sand>]);

mods.inworldcrafting.FluidToItem.transform(<minecraft:sapling>, <liquid:water>, [<minecraft:deadbush>], true);

mods.inworldcrafting.FluidToItem.transform(<minecraft:grass>, <liquid:water>, 
    [<minecraft:dirt>, <minecraft:leaves>], true);

recipes.remove(<minecraft:furnace>);
recipes.addShaped("ate_furnace", <minecraft:furnace>, [
    [<earthworks:item_adobe>, <earthworks:item_adobe>, <earthworks:item_adobe>],
    [<earthworks:item_adobe>, <minecraft:coal:1>, <earthworks:item_adobe>],
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);