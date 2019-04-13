// random low-level materials
var drillRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("crude_drill_main", "crude_drill", 40);

drillRecipe.addFluidInput(<liquid:creosote> * 10);
drillRecipe.addItemOutput(<minecraft:cobblestone>).setChance(0.25);
drillRecipe.addItemOutput(<minecraft:dirt>).setChance(0.25);
drillRecipe.addItemOutput(<minecraft:sand>).setChance(0.25);
drillRecipe.addItemOutput(<earthworks:block_chalk>).setChance(0.25);
drillRecipe.addItemOutput(<minecraft:clay>).setChance(0.05);
drillRecipe.addItemOutput(<materialpart:coremetal:nugget>).setChance(0.15);
drillRecipe.build();

// other input fluids later for faster operation