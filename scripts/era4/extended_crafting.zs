val blackIronIngot = <ore:ingotBlackIron>.firstItem;
val darkSteelIngot = <ore:ingotDarkSteel>.firstItem;
val tfSlag = <thermalfoundation:material:864>;
val coalBlock = <ore:blockCoal>.firstItem;
val reinforcedObsidian = <enderio:block_reinforced_obsidian>;

recipes.remove(blackIronIngot);
mods.immersiveengineering.ArcFurnace.addRecipe(blackIronIngot, darkSteelIngot, tfSlag,
    1200, 512, [coalBlock, reinforcedObsidian], "Alloying");