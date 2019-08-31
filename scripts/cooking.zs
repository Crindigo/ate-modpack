// multiple levels of fresh water creation.
recipes.remove(<harvestcraft:freshwateritem>);

recipes.addShapeless("ate_freshwater", <harvestcraft:freshwateritem>, 
    [<minecraft:water_bucket>.transformReplace(<minecraft:bucket>)]);
recipes.addShapeless("ate_freshwater_bowl", <harvestcraft:freshwateritem>, 
    [<actuallyadditions:item_water_bowl>.transformReplace(<minecraft:bowl>)]);

val board = <pyrotech:material:20>;
val boardT = <pyrotech:material:23>;

recipes.addShapeless("ate_freshwater2", <harvestcraft:freshwateritem> * 4, 
    [<minecraft:water_bucket>.transformReplace(<minecraft:bucket>), board, board, board]);
recipes.addShapeless("ate_freshwater_bowl2", <harvestcraft:freshwateritem> * 4, 
    [<actuallyadditions:item_water_bowl>.transformReplace(<minecraft:bowl>), board, board, board]);

recipes.addShapeless("ate_freshwater3", <harvestcraft:freshwateritem> * 16, 
    [<minecraft:water_bucket>.transformReplace(<minecraft:bucket>), boardT, boardT, boardT]);
recipes.addShapeless("ate_freshwater_bowl3", <harvestcraft:freshwateritem> * 16, 
    [<actuallyadditions:item_water_bowl>.transformReplace(<minecraft:bowl>), boardT, boardT, boardT]);



// normalize to mek salt.
recipes.remove(<harvestcraft:saltitem>);
recipes.addShapeless("ate_salt", <mekanism:salt>, [<ore:toolPot>, <harvestcraft:freshwateritem>]);

// presser required for soy processing, but that can keep using iron since cherry pie doesn't need it.
// only thing would be pistons which currently require redstone.

// ----------------------------------------------------------------------------
// Make harvestcraft heated tools have durability, which are recharged with 
// fuels or supercharged in an empowerer with "hot" items.
// ----------------------------------------------------------------------------

<harvestcraft:potitem>.maxDamage = 32000;
<harvestcraft:bakewareitem>.maxDamage = 32000;
<harvestcraft:saucepanitem>.maxDamage = 32000;
<harvestcraft:skilletitem>.maxDamage = 32000;

// Default recipes give a tool that breaks after 1 use.

recipes.remove(<harvestcraft:potitem>);
recipes.addShaped("ate_hc_pot", <harvestcraft:potitem>.withDamage(32000), [
    [<ore:stickWood>, <ore:ingotBrick>, <ore:ingotBrick>],
    [null, <ore:ingotBrick>, <ore:ingotBrick>]
]);

recipes.remove(<harvestcraft:bakewareitem>);
recipes.addShaped("ate_hc_bakeware", <harvestcraft:bakewareitem>.withDamage(32000), [
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>],
    [<ore:ingotBrick>, null, <ore:ingotBrick>],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>]
]);

recipes.remove(<harvestcraft:saucepanitem>);
recipes.addShaped("ate_hc_saucepan", <harvestcraft:saucepanitem>.withDamage(32000), [
    [<ore:ingotBrick>, null],
    [null, <ore:stickWood>]
]);

recipes.remove(<harvestcraft:skilletitem>);
recipes.addShaped("ate_hc_skillet", <harvestcraft:skilletitem>.withDamage(32000), [
    [<ore:ingotBrick>, null, null],
    [null, <ore:ingotBrick>, null],
    [null, null, <ore:stickWood>]
]);

// Charge tools with fuels. Add more fuel types below, but they must have burn times.
val validHeat = <ore:itemCharcoal> | <ore:itemCoal> | <ore:fuelCoke> | <ore:blockCharcoal> | <ore:blockCoal> | <ore:blockFuelCoke>;

recipes.addShapeless("ate_hc_pot_heat", <harvestcraft:potitem>,
    [<harvestcraft:potitem>.anyDamage().marked("mark").noReturn(), validHeat.marked("fuel")],
    function(out, ins, cInfo) {
        val restore = ins.fuel.burnTime / 100;
        return ins.mark.withDamage(max(32000 - 1024, ins.mark.damage - restore));
    }, null);

recipes.addShapeless("ate_hc_bakeware_heat", <harvestcraft:bakewareitem>,
    [<harvestcraft:bakewareitem>.anyDamage().marked("mark").noReturn(), validHeat.marked("fuel")],
    function(out, ins, cInfo) {
        val restore = ins.fuel.burnTime / 100;
        return ins.mark.withDamage(max(32000 - 1024, ins.mark.damage - restore));
    }, null);

recipes.addShapeless("ate_hc_saucepan_heat", <harvestcraft:saucepanitem>,
    [<harvestcraft:saucepanitem>.anyDamage().marked("mark").noReturn(), validHeat.marked("fuel")],
    function(out, ins, cInfo) {
        val restore = ins.fuel.burnTime / 100;
        return ins.mark.withDamage(max(32000 - 1024, ins.mark.damage - restore));
    }, null);

recipes.addShapeless("ate_hc_skillet_heat", <harvestcraft:skilletitem>,
    [<harvestcraft:skilletitem>.anyDamage().marked("mark").noReturn(), validHeat.marked("fuel")],
    function(out, ins, cInfo) {
        val restore = ins.fuel.burnTime / 100;
        return ins.mark.withDamage(max(32000 - 1024, ins.mark.damage - restore));
    }, null);

// make the tool recipes damage the tool.
recipes.replaceAllOccurences(<ore:toolPot>, <harvestcraft:potitem:*>.transformDamage());
recipes.replaceAllOccurences(<ore:toolBakeware>, <harvestcraft:bakewareitem:*>.transformDamage());
recipes.replaceAllOccurences(<ore:toolSaucepan>, <harvestcraft:saucepanitem:*>.transformDamage());
recipes.replaceAllOccurences(<ore:toolSkillet>, <harvestcraft:skilletitem:*>.transformDamage());

mods.jei.JEI.addDescription(
    [<harvestcraft:potitem>, <harvestcraft:bakewareitem>, <harvestcraft:saucepanitem>, <harvestcraft:skilletitem>], 
    "Heat it in some way for it to be useful in crafting. Heating via crafting table gives a max durability of 1024. Empower it for full durability.");

// add recipes for supercharging the tools. AA Empowerer w/ wildfire core, rune of fire, lava sigil, pyro florb.
// give the charged tools a fancy enchantment as well.

val fireAspect = <enchantment:minecraft:fire_aspect>.makeEnchantment(3);

val firePot = <harvestcraft:potitem>.withDisplayName("Inferno Pot").withDamage(0);
firePot.addEnchantment(fireAspect);
val fireBakeware = <harvestcraft:bakewareitem>.withDisplayName("Inferno Bakeware").withDamage(0);
fireBakeware.addEnchantment(fireAspect);
val fireSaucepan = <harvestcraft:saucepanitem>.withDisplayName("Inferno Saucepan").withDamage(0);
fireSaucepan.addEnchantment(fireAspect);
val fireSkillet = <harvestcraft:skilletitem>.withDisplayName("Inferno Skillet").withDamage(0);
fireSkillet.addEnchantment(fireAspect);

val pyrotheumFlorb = <thermalexpansion:florb:1>.withTag({Fluid: "pyrotheum"});

mods.actuallyadditions.Empowerer.addRecipe(firePot, <harvestcraft:potitem:*>, 
    <embers:wildfire_core>, <ore:runeFireB>.firstItem, <bloodmagic:sigil_lava>, pyrotheumFlorb, 2500000, 2500, [1.0, 0.4, 0.1]);

mods.actuallyadditions.Empowerer.addRecipe(fireBakeware, <harvestcraft:bakewareitem:*>, 
    <embers:wildfire_core>, <ore:runeFireB>.firstItem, <bloodmagic:sigil_lava>, pyrotheumFlorb, 2500000, 2500, [1.0, 0.4, 0.1]);

mods.actuallyadditions.Empowerer.addRecipe(fireSaucepan, <harvestcraft:saucepanitem:*>, 
    <embers:wildfire_core>, <ore:runeFireB>.firstItem, <bloodmagic:sigil_lava>, pyrotheumFlorb, 2500000, 2500, [1.0, 0.4, 0.1]);

mods.actuallyadditions.Empowerer.addRecipe(fireSkillet, <harvestcraft:skilletitem:*>, 
    <embers:wildfire_core>, <ore:runeFireB>.firstItem, <bloodmagic:sigil_lava>, pyrotheumFlorb, 2500000, 2500, [1.0, 0.4, 0.1]);