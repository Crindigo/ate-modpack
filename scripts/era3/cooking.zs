recipes.remove(<harvestcraft:freshwateritem>);
recipes.addShapeless("ate_freshwater", <harvestcraft:freshwateritem> * 4, 
    [<minecraft:water_bucket>.transformReplace(<minecraft:bucket>)]);

val clayBucket = <ceramics:clay_bucket>;
val clayWaterBucket = clayBucket.withTag({Fluids: {FluidName: "water", Amount: 1000}});
recipes.addShapeless("ate_freshwater_clay", <harvestcraft:freshwateritem> * 4, 
    [clayWaterBucket.transformReplace(clayBucket)]);


val fireAspect = <enchantment:minecraft:fire_aspect>.makeEnchantment(3);
val firePot = <ore:toolPot>.firstItem.withDisplayName("Heated Pot");
firePot.addEnchantment(fireAspect);

// just make sure replaceAll happens before the firepot recipe.
recipes.replaceAllOccurences(<ore:toolPot>, firePot.reuse());
recipes.addShapeless("atefirepot", firePot, [<ore:toolPot>.firstItem.noReturn(), <minecraft:blaze_powder>]);

