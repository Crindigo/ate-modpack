import mods.thermalexpansion.Sawmill;

// add aluminum to stamper, the builtin support uses the wrong items so it's disabled.
mods.embers.Stamper.add(<thermalfoundation:material:132>, <liquid:aluminum> * 144, <embers:stamp_bar>);
mods.embers.Stamper.add(<thermalfoundation:material:324>, <liquid:aluminum> * 144, <embers:stamp_plate>);

// fix for pyrotech
// Sawmill.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
Sawmill.addRecipe(<minecraft:planks:0> * 6, <minecraft:log:0>, 1000, <thermalfoundation:material:800>, 100);
Sawmill.addRecipe(<minecraft:planks:1> * 6, <minecraft:log:1>, 1000, <thermalfoundation:material:800>, 100);
Sawmill.addRecipe(<minecraft:planks:2> * 6, <minecraft:log:2>, 1000, <thermalfoundation:material:800>, 100);
Sawmill.addRecipe(<minecraft:planks:3> * 6, <minecraft:log:3>, 1000, <thermalfoundation:material:800>, 100);
Sawmill.addRecipe(<minecraft:planks:4> * 6, <minecraft:log2:0>, 1000, <thermalfoundation:material:800>, 100);
Sawmill.addRecipe(<minecraft:planks:5> * 6, <minecraft:log2:1>, 1000, <thermalfoundation:material:800>, 100);

// add pyrotech limestone to chisel
mods.chisel.Carving.addVariation("limestone", <pyrotech:limestone>);