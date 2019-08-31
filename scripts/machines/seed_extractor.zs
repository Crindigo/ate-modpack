import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;

// Consume plant oil, grass (with a chance), fertilizer.
// a non-consumable "focus" item, probably a seed or sapling, will
// determine the random outputs that happen.
// also utilize botania:altgrass:0-5
// dry, golden, vivid, scorched, infused, mutated

// was complaining about having no return value, so made it return bool true.
val makeRecipe = function (name as string, grass as IItemStack, focus as IItemStack, outputs as float[IItemStack]) as bool
{
    val r = RecipeBuilder.newBuilder(name, "seed_extractor", 1000);
    r.addFluidInput(<liquid:plantoil> * 50);
    r.addItemInput(<pyrotech:mulch>);
    r.addItemInput(grass);//.setChance(0.25);
    r.addItemInput(focus);//.setChance(0);

    for stack, chance in outputs {
        r.addItemOutput(stack).setChance(chance);
    }
    r.build();

    return true;
};

// turn a slice of a list of items into a map of item -> float.
// since oredictentry.items is a java list, and IItemStack[] is an array,
// we have to get the oredictentry and loop through it, only including stacks where
// the index is >= start and < end. ugh.
val makeProb = function(itemStacks as IItemStack[], start as int, end as int) as float[IItemStack]
{
    val probs = {} as float[IItemStack];

    for i in start to end {
        val stack = itemStacks[i];
        probs[stack] = 0.25;
    }

    return probs;
};

// --------------
// SEEDS
// --------------

// don't forget about minecraft:reeds and minecraft:cactus 
makeRecipe("se_reeds_cactus", <minecraft:sand>, <minecraft:wheat_seeds>, {
    <minecraft:reeds> : 0.5,
    <minecraft:cactus> : 0.5,
});

// wheat seed + grass = botania grass seeds.
// botania:grassseeds:3-8
makeRecipe("se_botania_seeds", <minecraft:grass>, <minecraft:wheat_seeds>, {
    <botania:grassseeds:3> : 0.2,
    <botania:grassseeds:4> : 0.2,
    <botania:grassseeds:5> : 0.2,
    <botania:grassseeds:6> : 0.2,
    <botania:grassseeds:7> : 0.2,
    <botania:grassseeds:8> : 0.2,
});

// base seeds:
// wheat_seeds, beetroot_seeds, melon_seeds, pumpkin_seeds, potato, carrot
// grass types:
// botania:altgrass:0-5
// total of 36 possible inputs, 216 possible outputs
// 

// aa: canola
// ie: hemp
// sg: fluffypuff
// pams: 81 seeds
// 84 total seeds to unlock.
// use 18 possible inputs? would have 12*5 + 6*4
// use all 6 grass types, each grass type has 3 seed types.

val moddedSeeds = oreDict.get("listModdedSeeds");
moddedSeeds.addAll(<ore:listAllseed>);
moddedSeeds.remove(<minecraft:melon_seeds>, <minecraft:pumpkin_seeds>, 
    <minecraft:wheat_seeds>, <minecraft:beetroot_seeds>);
moddedSeeds.add(<actuallyadditions:item_canola_seed>, <immersiveengineering:seed>);

val grasses = [
    <botania:altgrass:0>, <botania:altgrass:1>, <botania:altgrass:2>,
    <botania:altgrass:3>, <botania:altgrass:4>, <botania:altgrass:5>
] as IItemStack[];

val baseSeeds = [
    <minecraft:wheat_seeds>, <minecraft:beetroot_seeds>, <minecraft:melon_seeds>,
    <minecraft:pumpkin_seeds>, <minecraft:potato>, <minecraft:carrot>
] as IItemStack[];

val seedTotal = moddedSeeds.items.length; // should be 84

var start = 0;

// getting all this working probably took 3x longer than just writing out the code manually lol.
// but i would have had sore wrists from typing out all the item ids.

for i, grass in grasses {
    for j, baseSeed in baseSeeds {
        // if i is even, use an even base seed, etc.
        if ( i % 2 == j % 2 ) {
            // the code in here runs 18 times. 
            // the first 14 times, end should be start + 5.
            // the last 4 times, end should be start + 4.
            // change the 70 higher if there are new seeds.
            // if more than 90 seeds, change to start + 6 and start + 5. machine has 6 outputs,
            // so that will support up to 108 seeds.

            var end = (start < 70) ? (start + 5) : (start + 4);
            val recname = "se_" ~ grass.name ~ "_" ~ baseSeed.name;

            print(start ~ " to " ~ end ~ ": " ~ recname);
            makeRecipe(recname, grass, baseSeed, makeProb(moddedSeeds.itemArray, start, end));

            start = end;
        }
    }
}

// --------------
// SAPLINGS
// --------------

// oak sapling + grass = other vanilla saplings
makeRecipe("se_oak_sapling_grass", <minecraft:grass>, <minecraft:sapling:0>, {
    <minecraft:sapling:1> : 0.25,
    <minecraft:sapling:2> : 0.25,
    <minecraft:sapling:3> : 0.25,
    <minecraft:sapling:4> : 0.25,
    <minecraft:sapling:5> : 0.25
});

// 12 sections total, 2 for each sapling.

// normal: dragonfruit, pomegranate, peach, guava, breadfruit, paperbark, durian, maple
makeRecipe("se_birch_sapling_grass", <minecraft:grass>, <minecraft:sapling:2>, {
    <harvestcraft:dragonfruit_sapling> : 0.25,
    <harvestcraft:pomegranate_sapling> : 0.25,
    <harvestcraft:peach_sapling> : 0.25,
    <harvestcraft:guava_sapling> : 0.25
});

makeRecipe("se_jungle_sapling_grass", <minecraft:grass>, <minecraft:sapling:3>, {
    <harvestcraft:breadfruit_sapling> : 0.25,
    <harvestcraft:paperbark_sapling> : 0.25,
    <harvestcraft:durian_sapling> : 0.25,
    <harvestcraft:maple_sapling> : 0.25
});

// brown: cashew, pecan, hazelnut, almond, chestnut, coconut, tamarind, cinnamon
makeRecipe("se_birch_sapling_dry", <botania:altgrass:0>, <minecraft:sapling:2>, {
    <harvestcraft:cashew_sapling> : 0.25,
    <harvestcraft:pecan_sapling> : 0.25,
    <harvestcraft:hazelnut_sapling> : 0.25,
    <harvestcraft:almond_sapling> : 0.25
});

makeRecipe("se_jungle_sapling_dry", <botania:altgrass:0>, <minecraft:sapling:3>, {
    <harvestcraft:chestnut_sapling> : 0.25,
    <harvestcraft:coconut_sapling> : 0.25,
    <harvestcraft:tamarind_sapling> : 0.25,
    <harvestcraft:cinnamon_sapling> : 0.25
});

// gold: papaya, lemon, banana, gooseberry, nutmeg, walnut, starfruit, pear
makeRecipe("se_spruce_sapling_golden", <botania:altgrass:1>, <minecraft:sapling:1>, {
    <harvestcraft:papaya_sapling> : 0.25,
    <harvestcraft:lemon_sapling> : 0.25,
    <harvestcraft:banana_sapling> : 0.25,
    <harvestcraft:gooseberry_sapling> : 0.25
});

makeRecipe("se_darkoak_sapling_golden", <botania:altgrass:1>, <minecraft:sapling:5>, {
    <harvestcraft:nutmeg_sapling> : 0.25,
    <harvestcraft:walnut_sapling> : 0.25,
    <harvestcraft:starfruit_sapling> : 0.25,
    <harvestcraft:pear_sapling> : 0.25
});

// green: soursop, jackfruit, olive, vanilla, pistachio, lime, peppercorn, pawpaw
makeRecipe("se_spruce_sapling_vivid", <botania:altgrass:2>, <minecraft:sapling:1>, {
    <harvestcraft:soursop_sapling> : 0.25,
    <harvestcraft:jackfruit_sapling> : 0.25,
    <harvestcraft:olive_sapling> : 0.25,
    <harvestcraft:vanillabean_sapling> : 0.25
});

makeRecipe("se_darkoak_sapling_vivid", <botania:altgrass:2>, <minecraft:sapling:5>, {
    <harvestcraft:pistachio_sapling> : 0.25,
    <harvestcraft:lime_sapling> : 0.25,
    <harvestcraft:peppercorn_sapling> : 0.25,
    <harvestcraft:pawpaw_sapling> : 0.25
});

// red/orange: cherry, rambutan, apple, grapefruit, mango, apricot, orange, lychee, persimmon
makeRecipe("se_oak_sapling_scorched", <botania:altgrass:3>, <minecraft:sapling:0>, {
    <harvestcraft:cherry_sapling> : 0.25,
    <harvestcraft:rambutan_sapling> : 0.25,
    <harvestcraft:apple_sapling> : 0.25,
    <harvestcraft:grapefruit_sapling> : 0.25,
    <harvestcraft:mango_sapling> : 0.25
});

makeRecipe("se_acacia_sapling_scorched", <botania:altgrass:3>, <minecraft:sapling:4>, {
    <harvestcraft:apricot_sapling> : 0.25,
    <harvestcraft:orange_sapling> : 0.25,
    <harvestcraft:lychee_sapling> : 0.25,
    <harvestcraft:persimmon_sapling> : 0.25
});

// blue: lightwood, menril
makeRecipe("se_oak_sapling_infused", <botania:altgrass:4>, <minecraft:sapling:0>, {
    <integrateddynamics:menril_sapling> : 0.5
});

// purple: date, fig, passionfruit, plum
makeRecipe("se_acacia_sapling_mutated", <botania:altgrass:5>, <minecraft:sapling:4>, {
    <harvestcraft:date_sapling> : 0.25,
    <harvestcraft:fig_sapling> : 0.25,
    <harvestcraft:passionfruit_sapling> : 0.25,
    <harvestcraft:plum_sapling> : 0.25
});