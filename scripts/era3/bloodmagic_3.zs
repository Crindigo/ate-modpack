import crafttweaker.item.IItemStack;

// replace demonic will with ember crystal in altar.
// think of something else. livingrock?
//recipes.replaceAllOccurences(<bloodmagic:monster_soul>, <embers:crystal_ember>, <bloodmagic:altar>);

// req: embers and enderio
val caminiteBrick = <embers:block_caminite_brick>;
recipes.remove(<bloodmagic:altar>);
recipes.addShaped("ate_blood_altar", <bloodmagic:altar>, [
    [<ore:ingotRedstoneAlloy>, null, <ore:ingotRedstoneAlloy>],
    [caminiteBrick, <embers:block_tank>, caminiteBrick],
    [caminiteBrick, <ore:ingotDawnstone>, caminiteBrick]
]);

// demonic will:
// bloodmagic:monster_soul {souls:1.0d}

val makeSoul = function(qty as double) as IItemStack {
    return <bloodmagic:monster_soul>.withTag({souls: qty});
};