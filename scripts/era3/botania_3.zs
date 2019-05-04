// replace bottom middle of apothecary with ember crystal
recipes.removeByRecipeName("botania:altar_0");
recipes.addShaped("ate_botania_apothecary", <botania:altar>, [
    [<ore:slabCobblestone>, <botania:petal> | <botania:mushroom>, <ore:slabCobblestone>],
    [null, <ore:cobblestone>, null],
    [<ore:cobblestone>, <embers:crystal_ember>, <ore:cobblestone>]
]);

val manasteel = <ore:ingotManasteel>.firstItem;
val dawnstone = <ore:ingotDawnstone>.firstItem;

mods.botania.ManaInfusion.removeRecipe(manasteel);
mods.botania.ManaInfusion.addInfusion(manasteel, dawnstone, 400);