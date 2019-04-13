import crafttweaker.item.IItemStack;

// bonsai pots require porcelain
recipes.remove(<bonsaitrees:bonsaipot:0>);
recipes.addShaped("ate_bonsai_pot", <bonsaitrees:bonsaipot:0>, [
	[null, null, null],
	[<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>],
	[<ceramics:porcelain:0>, <ceramics:porcelain:0>, <ceramics:porcelain:0>]
]);

recipes.remove(<forestry:worktable:0>);
recipes.addShaped("ate_worktable", <forestry:worktable:0>, [
	[<ore:paper>, <ore:paper>, <ore:paper>],
	[null, <minecraft:crafting_table>, null],
	[null, <ore:chestWood>, null]
]);

// block/nugget recipes for coremetal. should be in a helper function.
recipes.addShaped("ate_coremetal_ingot", <materialpart:coremetal:ingot>, [
	[<ore:nuggetCoremetal>, <ore:nuggetCoremetal>, <ore:nuggetCoremetal>],
	[<ore:nuggetCoremetal>, <ore:nuggetCoremetal>, <ore:nuggetCoremetal>],
	[<ore:nuggetCoremetal>, <ore:nuggetCoremetal>, <ore:nuggetCoremetal>]
]);
recipes.addShapeless("ate_coremetal_nugget9", <materialpart:coremetal:nugget> * 9, [<ore:ingotCoremetal>]);

recipes.addShaped("ate_coremetal_block", <materialpart:coremetal:block>, [
	[<ore:ingotCoremetal>, <ore:ingotCoremetal>, <ore:ingotCoremetal>],
	[<ore:ingotCoremetal>, <ore:ingotCoremetal>, <ore:ingotCoremetal>],
	[<ore:ingotCoremetal>, <ore:ingotCoremetal>, <ore:ingotCoremetal>]
]);
recipes.addShapeless("ate_coremetal_ingot9", <materialpart:coremetal:ingot> * 9, [<ore:blockCoremetal>]);

furnace.addRecipe(<materialpart:coremetal:ingot>, <materialpart:coremetal:dust>, 0.4);

// move up squeezer to earlier game
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped("ate_id_squeezer", <integrateddynamics:squeezer>, [
	[<ore:rodStone>, <quark:sturdy_stone>, <ore:rodStone>],
	[<ore:rodStone>, null, <ore:rodStone>],
	[<quark:sturdy_stone>, <quark:sturdy_stone>, <quark:sturdy_stone>]
]);

//recipes.remove(<immersiveengineering:tool:0>);
recipes.addShaped("ate_immeng_hammer", <immersiveengineering:tool:0>, [
	[null, <ore:ingotCoremetal>, <ore:materialBinding>],
	[null, <ore:stickWood>, <ore:ingotCoremetal>],
	[<ore:stickWood>, null, null]
]);

//recipes.remove(<immersiveengineering:tool:1>);
recipes.addShaped("ate_immeng_cutter", <immersiveengineering:tool:1>, [
	[<ore:stickWood>, <ore:ingotCoremetal>],
	[null, <ore:stickWood>]
]);

// smash coremetal ingots into plates
mods.integrateddynamics.Squeezer.addRecipe(<materialpart:coremetal:ingot>, <materialpart:coremetal:plate>);

// coremetal hopper
recipes.addShaped("ate_hopper", <minecraft:hopper>, [
	[<ore:plateCoremetal>, <ore:chestWood>, <ore:plateCoremetal>],
	[null, <ore:plateCoremetal>, null]
]);

// coremetal nugget + 8 stone = 8 blue slate
recipes.addShapeless("ate_blue_slate", <earthworks:block_slate>, [
	<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>,
	<minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <ore:nuggetCoremetal>
]);

// easier conveyors, swapping between the two
recipes.addShaped("ate_early_conveyor", 
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [
	[<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>],
	[<ore:gearWood>, <ore:gearWood>, <ore:gearWood>]
]);
recipes.remove(<industrialforegoing:conveyor:0>);
recipes.addShapeless("ate_conveyor_swap1", <industrialforegoing:conveyor:0> * 2,
	[<immersiveengineering:conveyor>, <immersiveengineering:conveyor>]);
recipes.addShapeless("ate_conveyor_swap2", 
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 2, [
	<industrialforegoing:conveyor:0>, <industrialforegoing:conveyor:0>]);

recipes.addShaped("ate_tomato_gear", <contenttweaker:tomato_gear>, [
	[null, <ore:cropTomato>, null],
	[<ore:cropTomato>, <ore:ingotCoremetal>, <ore:cropTomato>],
	[null, <ore:cropTomato>, null]
]);

//recipes.remove(<thermalexpansion:tank:0>);
recipes.addShaped("ate_te_tank", <thermalexpansion:tank:0>.withTag({RSControl: 0 as byte, Level: 0 as byte}), [
	[<ore:logWood>, <ore:paneGlass>, <ore:logWood>],
	[<ore:paneGlass>, <ore:ingotCoremetal>, <ore:paneGlass>],
	[<ore:logWood>, <ore:paneGlass>, <ore:logWood>]
]);

// AA knife update
recipes.remove(<actuallyadditions:item_knife>);
recipes.remove(<actuallyadditions:item_misc:2>);
recipes.remove(<actuallyadditions:item_misc:3>);
recipes.addShapedMirrored("ate_aa_knife", <actuallyadditions:item_knife>, [
	[null, null, <ore:itemFlint>],
	[null, <ore:ingotCoremetal>, null],
	[<ore:stickWood>, null, null]
]);

// initial low-level seeds from grass harvesting. remove stuff, maybe add stuff.
vanilla.seeds.removeSeed(<minecraft:dye:3>);
vanilla.seeds.removeSeed(<actuallyadditions:item_canola_seed:0>);
vanilla.seeds.removeSeed(<actuallyadditions:item_coffee_seed:0>);
vanilla.seeds.removeSeed(<extrautils2:enderlilly>);
vanilla.seeds.removeSeed(<extrautils2:redorchid>);

// create plant oil manually from some seed types
val seedPlantOil = {
	<minecraft:wheat_seeds> : 40,
	<minecraft:beetroot_seeds> : 30,
	<minecraft:pumpkin_seeds> : 20,
	<minecraft:melon_seeds> : 10,
	<immersiveengineering:seed:0> : 60
} as int[IItemStack];

for seedItem, oilMb in seedPlantOil {
	mods.skyresources.crucible.addRecipe(<liquid:plantoil> * oilMb, seedItem);
}

// making grass in plant oil won't consume liquid
mods.inworldcrafting.FluidToItem.transform(<minecraft:grass>, <liquid:plantoil>, 
    [<minecraft:dirt>, <minecraft:leaves>]);