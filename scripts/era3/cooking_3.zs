// buff fresh water recipe since water is limited early on
recipes.remove(<harvestcraft:freshwateritem>);
recipes.addShapeless("ate_freshwater", <harvestcraft:freshwateritem> * 4, 
    [<minecraft:water_bucket>.transformReplace(<minecraft:bucket>)]);


