// create a mythical Fire Aspect 3 and make sure you can only do normal cooking recipes with
// fire aspect 3 cooking tools.
val fireAspect = <enchantment:minecraft:fire_aspect>.makeEnchantment(3);

val firePot = <ore:toolPot>.firstItem.withDisplayName("Heated Pot");
firePot.addEnchantment(fireAspect);
val fireBakeware = <ore:toolBakeware>.firstItem.withDisplayName("Heated Bakeware");
fireBakeware.addEnchantment(fireAspect);
val fireSaucepan = <ore:toolSaucepan>.firstItem.withDisplayName("Heated Saucepan");
fireSaucepan.addEnchantment(fireAspect);
val fireSkillet = <ore:toolSkillet>.firstItem.withDisplayName("Heated Skillet");
fireSkillet.addEnchantment(fireAspect);

recipes.replaceAllOccurences(<ore:toolPot>, firePot.reuse());
recipes.replaceAllOccurences(<ore:toolBakeware>, fireBakeware.reuse());
recipes.replaceAllOccurences(<ore:toolSaucepan>, fireSaucepan.reuse());
recipes.replaceAllOccurences(<ore:toolSkillet>, fireSkillet.reuse());

// add recipes for the heated tools. AA Empowerer w/ wildfire core, rune of fire, lava sigil, pyro florb.

val pyrotheumFlorb = <thermalexpansion:florb:1>.withTag({Fluid: "pyrotheum"});

mods.actuallyadditions.Empowerer.addRecipe(firePot, <ore:toolPot>.firstItem, 
    <embers:wildfire_core>, <ore:runeFireB>.firstItem, <bloodmagic:sigil_lava>, pyrotheumFlorb, 2500000, 2500);

mods.actuallyadditions.Empowerer.addRecipe(fireBakeware, <ore:toolBakeware>.firstItem, 
    <embers:wildfire_core>, <ore:runeFireB>.firstItem, <bloodmagic:sigil_lava>, pyrotheumFlorb, 2500000, 2500);

mods.actuallyadditions.Empowerer.addRecipe(fireSaucepan, <ore:toolSaucepan>.firstItem, 
    <embers:wildfire_core>, <ore:runeFireB>.firstItem, <bloodmagic:sigil_lava>, pyrotheumFlorb, 2500000, 2500);

mods.actuallyadditions.Empowerer.addRecipe(fireSkillet, <ore:toolSkillet>.firstItem, 
    <embers:wildfire_core>, <ore:runeFireB>.firstItem, <bloodmagic:sigil_lava>, pyrotheumFlorb, 2500000, 2500);