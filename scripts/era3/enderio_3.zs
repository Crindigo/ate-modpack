// compressed iron block -> iron alloy block
mods.botania.PureDaisy.addRecipe(<ore:blockIronCompressed>.firstItem, <ore:blockConstructionAlloy>.firstItem, 600);

val simpleChassis = <enderio:item_material:0>;
recipes.remove(simpleChassis);
recipes.addShaped("ate_simple_chassis", simpleChassis * 2, [
    [<ore:plateTin>, <ore:barsIron>, <ore:plateTin>],
    [<ore:barsIron>, <ore:blockConstructionAlloy>, <ore:barsIron>],
    [<ore:plateTin>, <ore:barsIron>, <ore:plateTin>]
]);

val ironAlloyIngot = <ore:ingotConstructionAlloy>.firstItem;
mods.enderio.AlloySmelter.removeRecipe(ironAlloyIngot);

// allow NC to make it since it's mid-late era4?
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput([ironAlloyIngot]);