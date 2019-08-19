// random low-level materials
var drillRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("crude_drill_main", "crude_drill", 40);

drillRecipe.addFluidInput(<liquid:creosote> * 10);
drillRecipe.addItemOutput(<minecraft:cobblestone>).setChance(0.25);
drillRecipe.addItemOutput(<minecraft:dirt>).setChance(0.25);
drillRecipe.addItemOutput(<minecraft:sand>).setChance(0.25);
drillRecipe.addItemOutput(<pyrotech:cobblestone:3>).setChance(0.15);
drillRecipe.addItemOutput(<minecraft:clay>).setChance(0.05);
drillRecipe.addItemOutput(<materialpart:coremetal:ore>).setChance(0.05);
drillRecipe.build();

// other input fluids later for faster operation or other items. like grains of infinity.

val drillRecipe2 = mods.modularmachinery.RecipeBuilder.newBuilder("crude_drill_firewater", "crude_drill", 40);
drillRecipe2.addFluidInput(<liquid:fire_water> * 10);
drillRecipe2.addItemOutput(<ore:dustBedrock>.firstItem).setChance(0.25);
drillRecipe2.build();