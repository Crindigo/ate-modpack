import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

// make plates require 2 ingots. also this thing was returning the wrong plates.
var immengPlate = <immersiveengineering:metal>;
for m in 30 to 41 {
    recipes.remove(immengPlate.withDamage(m));
}

val ingotToPlate = {
    <ore:ingotIron> : <ore:plateIron>,
    <ore:ingotGold> : <ore:plateGold>,
    <ore:ingotCopper> : <ore:plateCopper>,
    <ore:ingotTin> : <ore:plateTin>,
    <ore:ingotSilver> : <ore:plateSilver>,
    <ore:ingotLead> : <ore:plateLead>,
    <ore:ingotAluminum> : <ore:plateAluminum>,
    <ore:ingotNickel> : <ore:plateNickel>,
    <ore:ingotElectrum> : <ore:plateElectrum>,
    <ore:ingotInvar> : <ore:plateInvar>,
    <ore:ingotBronze> : <ore:plateBronze>,
    <ore:ingotConstantan> : <ore:plateConstantan>,
    <ore:ingotCoremetal> : <ore:plateCoremetal>
} as IOreDictEntry[IIngredient];

for ingot, plate in ingotToPlate {
    recipes.addShapeless("ate_immeng_" ~ plate.name, plate.firstItem, [
        <immersiveengineering:tool:0>.transformDamage(), ingot, ingot
    ]);
}