
recipes.remove(<bonsaitrees:bonsaipot:0>);
// not sure if i want hopping bonsai pots yet. i guess it needs iron, but might want to gate after?
// nah let them have it early. get them used to automating shit. hoppers can be made with 3x coremetal plate.
//recipes.remove(<bonsaitrees:bonsaipot:1>);

recipes.addShaped("ate_bonsai_pot", <bonsaitrees:bonsaipot:0>, [
	[null, null, null],
	[<minecraft:stone>, <minecraft:dirt>, <minecraft:stone>],
	[<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]
]);

recipes.remove(<forestry:worktable:0>);
recipes.addShaped("ate_worktable", <forestry:worktable:0>, [
	[<ore:paper>, <ore:paper>, <ore:paper>],
	[null, <minecraft:crafting_table>, null],
	[null, <ore:chestWood>, null]
]);

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

recipes.addShaped("ate_hopper", <minecraft:hopper>, [
	[<ore:plateCoremetal>, <ore:chestWood>, <ore:plateCoremetal>],
	[null, <ore:plateCoremetal>, null]
]);

// opaque itemduct pre-ingots
recipes.addShaped("ate_early_itemduct", <thermaldynamics:duct_32:1> * 1, [
	[<minecraft:clay_ball>, <ore:nuggetCoremetal>, <minecraft:clay_ball>]
]);

// normal and opaque fluiducts pre-ingots
recipes.addShaped("ate_early_fluiduct", <thermaldynamics:duct_16:0> * 1, [
	[<minecraft:brick>, <ore:shardGlass>, <minecraft:brick>]
]);

recipes.addShaped("ate_early_fluiduct_opaque", <thermaldynamics:duct_16:1> * 1, [
	[<minecraft:brick>, <ore:nuggetCoremetal>, <minecraft:brick>]
]);

// easier conveyors, swapping between the two
recipes.addShaped("ate_early_conveyor", 
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [
	[<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>],
	[<ore:gearWood>, <minecraft:redstone>, <ore:gearWood>]
]);
recipes.remove(<industrialforegoing:conveyor:0>);
recipes.addShapeless("ate_conveyor_swap1", <industrialforegoing:conveyor:0> * 2,
	[<immersiveengineering:conveyor>, <immersiveengineering:conveyor>]);
recipes.addShapeless("ate_conveyor_swap2", 
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 2, [
	<industrialforegoing:conveyor:0>, <industrialforegoing:conveyor:0>]);

//recipes.remove(<thermaldynamics:servo:0>);
recipes.addShaped("ate_servo", <thermaldynamics:servo:0>, [
	[<ore:nuggetCoremetal>, <ore:blockGlass>, <ore:nuggetCoremetal>],
	[<ore:ingotCoremetal>, <ore:dustRedstone>, <ore:ingotCoremetal>]
]);

recipes.addShaped("ate_tomato_gear", <contenttweaker:tomato_gear>, [
	[null, <ore:cropTomato>, null],
	[<ore:cropTomato>, <ore:ingotCoremetal>, <ore:cropTomato>],
	[null, <ore:cropTomato>, null]
]);

recipes.remove(<immersiveengineering:tool:0>);
recipes.addShaped("ate_immeng_hammer", <immersiveengineering:tool:0>, [
	[null, <ore:ingotCoremetal>, <ore:string>],
	[null, <ore:stickWood>, <ore:ingotCoremetal>],
	[<ore:stickWood>, null, null]
]);

recipes.remove(<immersiveengineering:tool:1>);
recipes.addShaped("ate_immeng_cutter", <immersiveengineering:tool:1>, [
	[<ore:stickWood>, <ore:ingotCoremetal>],
	[null, <ore:stickWood>]
]);

furnace.addRecipe(<materialpart:coremetal:ingot>, <materialpart:coremetal:dust>, 0.4);

//recipes.remove(<thermalexpansion:tank:0>);
recipes.addShaped("ate_te_tank", <thermalexpansion:tank:0>.withTag({RSControl: 0 as byte, Level: 0 as byte}), [
	[<ore:logWood>, <ore:paneGlass>, <ore:logWood>],
	[<ore:paneGlass>, <ore:ingotCoremetal>, <ore:paneGlass>],
	[<ore:logWood>, <ore:paneGlass>, <ore:logWood>]
]);