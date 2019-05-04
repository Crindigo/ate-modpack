// buff fresh water recipe since water is limited early on
recipes.remove(<harvestcraft:freshwateritem>);
recipes.addShapeless("ate_freshwater", <harvestcraft:freshwateritem> * 4, 
    [<minecraft:water_bucket>.transformReplace(<minecraft:bucket>)]);

val clayBucket = <ceramics:clay_bucket>;
val clayWaterBucket = clayBucket.withTag({fluids: {FluidName: "water", Amount: 1000}});
recipes.addShapeless("ate_freshwater_clay", <harvestcraft:freshwateritem> * 4, 
    [clayWaterBucket.transformReplace(clayBucket)]);
// not adding it here. it might not empty the bucket and besides you can just make 4x freshwater.
//<ore:listAllwater>.add(clayWaterBucket);

