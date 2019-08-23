// random low-level materials
var drillRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("crude_drill_main", "crude_drill", 20);

drillRecipe.addFluidInput(<liquid:creosote> * 5);

// stone, granite, diorite, andesite, limestone
drillRecipe.addItemOutput(<pyrotech:rock:0>).setChance(0.25);
drillRecipe.addItemOutput(<pyrotech:rock:1>).setChance(0.25);
drillRecipe.addItemOutput(<pyrotech:rock:2>).setChance(0.25);
drillRecipe.addItemOutput(<pyrotech:rock:3>).setChance(0.25);
drillRecipe.addItemOutput(<pyrotech:rock:8>).setChance(0.25);
// dirt, sand, clay
drillRecipe.addItemOutput(<pyrotech:rock:4>).setChance(0.25);
drillRecipe.addItemOutput(<pyrotech:rock:5>).setChance(0.25);
drillRecipe.addItemOutput(<pyrotech:material:17>).setChance(0.25);
// coremetal
drillRecipe.addItemOutput(<materialpart:coremetal:ore>).setChance(0.05);
drillRecipe.build();

// other input fluids later for faster operation or other items. like grains of infinity.

val drillRecipe2 = mods.modularmachinery.RecipeBuilder.newBuilder("crude_drill_firewater", "crude_drill", 40);
drillRecipe2.addFluidInput(<liquid:fire_water> * 10);
drillRecipe2.addItemOutput(<ore:dustBedrock>.firstItem).setChance(0.25);
drillRecipe2.build();