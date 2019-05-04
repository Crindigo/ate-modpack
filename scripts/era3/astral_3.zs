// infuse wood with the power of the stars!
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:logWood>, <ore:cropStarfruit>], 2.0, 
    [<astralsorcery:blockinfusedwood>]);

// req: botania and pneumatic
recipes.remove(<astralsorcery:blockaltar:0>);
recipes.addShaped("ate_astral_altar", <astralsorcery:blockaltar:0>, [
    [<astralsorcery:blockinfusedwood>, <ore:stoneBasalt>, <astralsorcery:blockinfusedwood>],
    [<ore:livingrock>, <ore:craftingTableWood>, <ore:livingrock>],
    [<ore:livingrock>, <ore:ingotManasteel>, <ore:livingrock>]
]);