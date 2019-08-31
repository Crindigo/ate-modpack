import crafttweaker.item.IItemStack;

// bonsai pots require masonry bricks for now
recipes.remove(<bonsaitrees:bonsaipot:0>);
recipes.addShaped("ate_bonsai_pot", <bonsaitrees:bonsaipot:0>, [
	[null, null, null],
	[<pyrotech:material:16>, null, <pyrotech:material:16>],
	[<pyrotech:material:16>, <pyrotech:material:16>, <pyrotech:material:16>]
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

// coremetal hopper. removed, we can use pyrotech mech hoppers
/*
recipes.addShaped("ate_hopper", <minecraft:hopper>, [
	[<ore:plateCoremetal>, <ore:chestWood>, <ore:plateCoremetal>],
	[null, <ore:plateCoremetal>, null]
]);
*/

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

// treated planks via soaking
recipes.remove(<immersiveengineering:treated_wood:0>);
mods.pyrotech.SoakingPot.addRecipe("ate_treated_planks", <immersiveengineering:treated_wood:0>, <liquid:creosote> * 125,
    <ore:plankWood>, 1200);

// easier extracting conveyor
val treatedStick = <immersiveengineering:material:0>;
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}));
recipes.addShaped("ate_conveyor_extract", <immersiveengineering:conveyor>.withTag({
	conveyorType: "immersiveengineering:extract"
}), [
	[treatedStick, <harvestcraft:wovencottonitem>, treatedStick],
	[treatedStick, <industrialforegoing:conveyor:0>, treatedStick]
]);

recipes.addShaped("ate_tomato_gear", <contenttweaker:tomato_gear>, [
	[null, <ore:cropTomato>, null],
	[<ore:cropTomato>, <ore:ingotCoremetal>, <ore:cropTomato>],
	[null, <ore:cropTomato>, null]
]);

// we have some pyrotech tanks, remove the easy recipe?
//recipes.remove(<thermalexpansion:tank:0>);
/*
recipes.addShaped("ate_te_tank", <thermalexpansion:tank:0>.withTag({RSControl: 0 as byte, Level: 0 as byte}), [
	[<ore:logWood>, <ore:paneGlass>, <ore:logWood>],
	[<ore:paneGlass>, <ore:ingotCoremetal>, <ore:paneGlass>],
	[<ore:logWood>, <ore:paneGlass>, <ore:logWood>]
]);
*/

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
val seedRemoval = [
	<minecraft:dye:3>,
	<actuallyadditions:item_canola_seed:0>,
	<actuallyadditions:item_coffee_seed:0>,
	<immersiveengineering:seed>,
	<silentgems:fluffypuffseeds>,
	<actuallyadditions:item_rice_seed>,
	<actuallyadditions:item_flax_seed>
] as IItemStack[];

for srem in seedRemoval {
	vanilla.seeds.removeSeed(srem);
}

// create plant oil manually from some seed types
val seedPlantOil = {
	<minecraft:wheat_seeds> : 40,
	<minecraft:beetroot_seeds> : 30,
	<minecraft:pumpkin_seeds> : 20,
	<minecraft:melon_seeds> : 10,
	<immersiveengineering:seed:0> : 60
} as int[IItemStack];

for seedItem, oilMb in seedPlantOil {
	//mods.skyresources.crucible.addRecipe(<liquid:plantoil> * oilMb, seedItem);
	// making it take 1 second per mb if you put 8 items in.
	mods.pyrotech.StoneCrucible.addRecipe("ate_plantoil_" ~ seedItem.name, <liquid:plantoil> * oilMb, seedItem, oilMb * 20 * 8, true);
}

// cheaper actuallyadditions:block_placer to automate the condenser
recipes.remove(<actuallyadditions:block_placer>);
recipes.addShaped("ate_auto_placer", <actuallyadditions:block_placer>, [
	[<ore:stone>, <ore:stone>, <ore:stone>],
	[<ore:stone>, <ore:ingotCoremetal> | <ore:ingotIron>, <ore:trapdoorWood>],
	[<ore:stone>, <ore:stone>, <ore:stone>]
]);

// removed the early silk touch shovel, using condenser to make alt grass blocks
// 1 input item = 1 output item at approx 398 ticks. this is just for the item in the inventory, the block/fluid on top
// will always be consumed for each output.
// ticks^1.3 / 2400 = inputs_per_output
// 2400 / ticks^1.3 = outputs_per_input
mods.skyresources.condenser.addRecipe(<botania:altgrass:0>, 300, <botania:grassseeds:3>, <minecraft:dirt>);
mods.skyresources.condenser.addRecipe(<botania:altgrass:1>, 300, <botania:grassseeds:4>, <minecraft:dirt>);
mods.skyresources.condenser.addRecipe(<botania:altgrass:2>, 300, <botania:grassseeds:5>, <minecraft:dirt>);
mods.skyresources.condenser.addRecipe(<botania:altgrass:3>, 300, <botania:grassseeds:6>, <minecraft:dirt>);
mods.skyresources.condenser.addRecipe(<botania:altgrass:4>, 300, <botania:grassseeds:7>, <minecraft:dirt>);
mods.skyresources.condenser.addRecipe(<botania:altgrass:5>, 300, <botania:grassseeds:8>, <minecraft:dirt>);


// making grass in plant oil won't consume liquid
//mods.inworldcrafting.FluidToItem.transform(<minecraft:grass>, <liquid:plantoil>, 
    //[<minecraft:dirt>, <minecraft:leaves>]);

// grass collector - wooden shovel with silk touch
/*
recipes.addShaped("ate_grass_collector", <minecraft:wooden_shovel>.withTag({
	ench: [{lvl: 1 as short, id: 33 as short}],
	RepairCost: 1, 
	display: {Name: "Lawnmower"}
}), [
	[<minecraft:grass>, <minecraft:grass>, <minecraft:grass>],
	[<minecraft:grass>, <minecraft:wooden_shovel>, <minecraft:grass>],
	[<minecraft:grass>, <minecraft:grass>, <minecraft:grass>]
]);
*/