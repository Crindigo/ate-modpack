
val combustionHeater = <skyresources:combustionheater:0>;
for ci in 0 to 16 {
	mods.jei.JEI.removeAndHide(combustionHeater.withDamage(ci));
}

mods.jei.JEI.removeAndHide(<skyresources:combustioncontroller>);
mods.jei.JEI.removeAndHide(<skyresources:combustioncollector>);

recipes.remove(<skyresources:fusiontable>);
recipes.addShaped(<skyresources:fusiontable>, [
	[<minecraft:planks:4>, <minecraft:planks:2>, <minecraft:planks:4>],
	[<minecraft:planks:1>, <contenttweaker:tomato_gear>, <minecraft:planks:1>], 
	[<minecraft:planks:5>, <minecraft:planks:3>, <minecraft:planks:5>]
]);

recipes.addShaped(<contenttweaker:iron_reinforced_tomato_gear>, [
	[null, <ore:ingotIron>, null],
	[<ore:ingotIron>, <contenttweaker:tomato_gear>, <ore:ingotIron>],
	[null, <ore:ingotIron>, null]
]);

// 27 permutations of 3, 3
// 111 112 113 121 122 123 131 132 133 211 212 213 221 222 223 231 232 233 311 312 313 321 322 323 331 332 333
// 111 112 113     122 123         133                 222 223         233                                 333

// 11 12 21 22
// 11 12    22

// i like whole numbers.
// assume a recipe uses 50% of a catalyst.
// 1.0 will turn 1 input into 1 output. you will get 2 processes. 2 outputs total.
// 2.0 will turn 1 input into 2 outputs. you will get 4 processes. 8 outputs total.
// 4.0 will turn 1 input into 4 outputs. you will get 8 processes. 32 outputs total.
// 8.0 will turn 1 input into 8 outputs. you will get 16 processes. 128 outputs total.
// crazy quartus: 32.0 turns 1 into 32, with 64 processes. 2048 outputs total.
// doubling makes it go 2x faster and 2x more efficent, so 4x better.
// 10% usage:
// 1.0 gives 10 processes. 10 outputs.
// 2.0 gives 20 processes. 40 outputs.

// can't remove or adjust the default alchemy components. will have to make my own, and hide/remove these.
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:3>);
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:4>);
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:5>);
mods.jei.JEI.hide(<skyresources:alchemyitemcomponent:2>);
mods.jei.JEI.hide(<skyresources:alchemyitemcomponent:3>);
mods.jei.JEI.hide(<skyresources:alchemyitemcomponent:4>);
mods.jei.JEI.hide(<skyresources:alchemyitemcomponent:5>);

mods.skyresources.catalysts.add(<contenttweaker:alch_dust_1>, 1.0);
mods.skyresources.catalysts.add(<contenttweaker:alch_dust_2>, 2.0);
mods.skyresources.catalysts.add(<contenttweaker:alch_dust_3>, 6.0);
mods.skyresources.catalysts.add(<contenttweaker:alch_dust_4>, 24.0);

val stoneDust = <skyresources:techitemcomponent:0>;

mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:alch_dust_1> * 2, stoneDust, <ore:dustWood>, 200);

val dirtyGem = <skyresources:dirtygem>;
for i in 0 to 44 {
	mods.skyresources.rockgrinder.removeRecipe(dirtyGem.withDamage(i));
}

val oreAlchDust = <skyresources:orealchdust>;
for j in 0 to 25 {
	mods.skyresources.fusion.removeRecipe(oreAlchDust.withDamage(j));
}

// iron, copper, tin, lead, gold
val stone = <minecraft:stone>;
mods.skyresources.fusion.addRecipe(<minecraft:iron_ore> * 4, [stone, <harvestcraft:cherrypieitem>], 0.25);
mods.skyresources.fusion.addRecipe(<ore:oreCopper>.firstItem * 4, [stone, <harvestcraft:orangejellysandwichitem>], 0.25);
mods.skyresources.fusion.addRecipe(<ore:oreTin>.firstItem * 2, [stone, <harvestcraft:crackersitem>], 0.25);
mods.skyresources.fusion.addRecipe(<ore:oreLead>.firstItem * 2, [stone, <harvestcraft:stuffedeggplantitem>], 0.25);
mods.skyresources.fusion.addRecipe(<minecraft:gold_ore> * 1, [stone, <harvestcraft:cheeseburgeritem>], 0.25);

// other forms of stone
mods.skyresources.fusion.addRecipe(<minecraft:stone:1> * 16, [<minecraft:stone>, <harvestcraft:waterchestnutitem>], 0.25); // granite
mods.skyresources.fusion.addRecipe(<minecraft:stone:3> * 16, [<minecraft:stone>, <harvestcraft:coconutitem>], 0.25); // diorite
mods.skyresources.fusion.addRecipe(<minecraft:stone:5> * 16, [<minecraft:stone>, <harvestcraft:parsnipitem>], 0.25); // andesite
mods.skyresources.fusion.addRecipe(<minecraft:netherrack> * 1, [<minecraft:cobblestone>, <harvestcraft:chilipepperitem>], 0.25);

mods.skyresources.fusion.addRecipe(<chisel:marble2:7> * 16, [<minecraft:stone>, <harvestcraft:garlicitem>], 0.25);
mods.skyresources.fusion.addRecipe(<chisel:limestone2:7> * 16, [<minecraft:stone>, <harvestcraft:limeitem>], 0.25); // lol
mods.skyresources.fusion.addRecipe(<chisel:basalt2:7> * 16, [<minecraft:stone>, <harvestcraft:blackberryitem>], 0.25);
mods.chisel.Carving.addVariation("basalt", <quark:basalt:0>);

// todo: make a bunch of high-tier foods give an AE energy acceptor for earlier item organization

recipes.addShapeless(<minecraft:dye:15> * 4, [<ore:dustAsh>, <earthworks:item_chalk>]); // bonemeal

mods.skyresources.crucible.removeRecipe(<liquid:lava>);
mods.skyresources.crucible.addRecipe(<liquid:lava> * 250, <minecraft:netherrack>);

mods.skyresources.condenser.removeRecipe(<minecraft:iron_ingot>);
mods.skyresources.condenser.removeRecipe(<minecraft:gold_ingot>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:128>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:129>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:130>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:131>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:132>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:133>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:134>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:135>);
mods.skyresources.condenser.removeRecipe(<thermalfoundation:material:136>);
mods.skyresources.condenser.removeRecipe(<mekanism:ingot:1>);
mods.skyresources.condenser.removeRecipe(<immersiveengineering:metal:5>);

// easier cook book
recipes.remove(<cookingforblockheads:recipe_book:2>);
recipes.addShaped(<cookingforblockheads:recipe_book:2>, [
	[null, <ore:ingotGold>, null],
	[<ore:craftingTableWood>, <cookingforblockheads:recipe_book:1>, <ore:craftingTableWood>],
	[null, <ore:ingotGold>, null]
]);

recipes.replaceAllOccurences(<skyresources:alchemyitemcomponent:2>, <contenttweaker:alch_dust_1>);
recipes.replaceAllOccurences(<skyresources:alchemyitemcomponent:3>, <contenttweaker:alch_dust_2>);
recipes.replaceAllOccurences(<skyresources:alchemyitemcomponent:4>, <contenttweaker:alch_dust_3>);
recipes.replaceAllOccurences(<skyresources:alchemyitemcomponent:5>, <contenttweaker:alch_dust_4>);

mods.integrateddynamics.Squeezer.removeRecipesWithOutput(<thermalfoundation:material:768>, null);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:coal:1>, <thermalfoundation:material:769>, null);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:coal:0>, <thermalfoundation:material:768>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<thermalfoundation:material:768>, null);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<minecraft:coal:1>, <ore:dustCharcoal>.firstItem, null, 20);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<minecraft:coal:0>, <ore:dustCoal>.firstItem, null, 20);

// quartz dust + charcoal dust = black quartz dust
recipes.addShapeless(<actuallyadditions:item_dust:7> * 2, [
	<actuallyadditions:item_dust:5>, 
	<ore:dustCoal> | <ore:dustCharcoal>
]);

// iron casing
val ironCasing = <actuallyadditions:block_misc:9>;
recipes.remove(ironCasing);
recipes.addShaped("ate_iron_casing", ironCasing, [
	[<ore:plateIron>, <ore:stickTreatedWood>, <ore:plateIron>],
	[<ore:stickTreatedWood>, <actuallyadditions:block_misc:2>, <ore:stickTreatedWood>],
	[<ore:plateIron>, <ore:stickTreatedWood>, <ore:plateIron>]
]);

// disable reconstructor lens of color, lens of mining. make destruction lens craft from regular lens.
recipes.remove(<actuallyadditions:item_mining_lens>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_color_lens>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_explosion_lens>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_explosion_lens>, <actuallyadditions:item_misc:18>, 5000);

// turn charcoal into coal
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:coal:0>, <minecraft:coal:1>, 100);

// coal gen requires coal blocks
recipes.remove(<actuallyadditions:block_coal_generator>);
recipes.addShaped("ate_coal_gen", <actuallyadditions:block_coal_generator>, [
	[<ore:cobblestone>, <ore:blockCoal>, <ore:cobblestone>],
	[<ore:cobblestone>, ironCasing, <ore:cobblestone>],
	[<ore:cobblestone>, <ore:blockCoal>, <ore:cobblestone>]
]);

// empowerer requires steel
recipes.remove(<actuallyadditions:block_empowerer>);
recipes.addShaped("ate_empowerer", <actuallyadditions:block_empowerer>, [
	[<ore:ingotSteel>, <actuallyadditions:item_crystal:0>, <ore:ingotSteel>],
	[<ore:ingotSteel>, <actuallyadditions:item_battery_double>, <ore:ingotSteel>],
	[ironCasing, <actuallyadditions:block_display_stand>, ironCasing]
]);

// farmer requires steel, iron reinforced tomato gear
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShaped("ate_farmer", <actuallyadditions:block_farmer>, [
	[<ore:ingotSteel>, <contenttweaker:iron_reinforced_tomato_gear>, <ore:ingotSteel>],
	[<contenttweaker:iron_reinforced_tomato_gear>, ironCasing, <contenttweaker:iron_reinforced_tomato_gear>],
	[<actuallyadditions:block_crystal:5>, <contenttweaker:iron_reinforced_tomato_gear>, <actuallyadditions:block_crystal:5>]
]);


// AA infuser: stone dust + andesite + diorite + granite + basalt = Earthen Dust, allows fusion of better metals

// Hearth coil: requires IE copper coil, PC compressed iron
val copperCoilBlock = <immersiveengineering:metal_decoration0:0>;
recipes.remove(<embers:heat_coil>);
recipes.addShaped("ate_hearth_coil", <embers:heat_coil>, [
	[copperCoilBlock, copperCoilBlock, copperCoilBlock],
	[<ore:ingotIronCompressed>, <ore:blockIronCompressed>, <ore:ingotIronCompressed>],
	[null, <embers:mech_core>, null]
]);

// Steel first needs to be created as crude steel via blast furnace, then cooked in a Hearth Coil
// to be refined into normal steel. Coil is fast if kept fed with ember, 1 item/sec at max temp.
// Since blast furnace does not let you remove steel (bug?), remove blast brick completely and
// do it in an enderio alloy smelter.
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration:1>);
mods.jei.JEI.hideCategory("ie.blastfurnace");
mods.jei.JEI.hideCategory("ie.blastfurnace.fuel");

val steelIngot = <thermalfoundation:material:160>;
val steelBlock = <thermalfoundation:storage_alloy:0>;
val crudeSteelIngot = <ore:ingotCrudeSteel>.firstItem;
val crudeSteelBlock = <ore:blockCrudeSteel>.firstItem;
val tfSlag = <thermalfoundation:material:864>;
mods.enderio.AlloySmelter.removeRecipe(steelIngot);
mods.enderio.AlloySmelter.removeRecipe(crudeSteelIngot);
mods.enderio.AlloySmelter.addRecipe(crudeSteelIngot, [<ore:ingotIron>, <ore:fuelCoke>], 15000, 1);
mods.enderio.AlloySmelter.addRecipe(crudeSteelBlock, [<ore:blockIron>, <ore:blockFuelCoke>], 135000, 9);

//mods.immersiveengineering.BlastFurnace.removeRecipe(steelIngot);
//mods.immersiveengineering.BlastFurnace.removeRecipe(steelBlock);
//mods.immersiveengineering.BlastFurnace.addRecipe(crudeSteelIngot, <ore:ingotIron>, 1000, tfSlag);
//mods.immersiveengineering.BlastFurnace.addRecipe(crudeSteelBlock, <ore:blockIron>, 1000, tfSlag * 9);

mods.embers.HeatCoil.add(steelIngot, crudeSteelIngot);
mods.embers.HeatCoil.add(steelBlock, crudeSteelBlock);