val manasteel = <ore:ingotManasteel>.firstItem;
val dawnstone = <ore:ingotDawnstone>.firstItem;

mods.botania.ManaInfusion.removeRecipe(manasteel);
mods.botania.ManaInfusion.addInfusion(manasteel, dawnstone, 400);