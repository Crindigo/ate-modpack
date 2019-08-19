#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

function makeSimple(name as string) {
	val simpleItem = VanillaFactory.createItem(name);
	simpleItem.register();
}

makeSimple("tomato_gear");
makeSimple("iron_reinforced_tomato_gear");
makeSimple("alch_dust_1");
makeSimple("alch_dust_2");
makeSimple("alch_dust_3");
makeSimple("alch_dust_4");

// Coremetal
var metalPartNames = ["nugget", "ingot", "molten", "plate", "dust", "gear", "rod"] as string[];
var coreMaterial = MaterialSystem.getMaterialBuilder().setName("Coremetal").setColor(Color.fromHex("405060")).build();
coreMaterial.registerParts(metalPartNames);

var coreData = coreMaterial.registerPart("block").getData();
coreData.addDataValue("harvestTool", "pickaxe");
coreData.addDataValue("harvestLevel", "1");

var cmOreData = coreMaterial.registerPart("ore").getData();
cmOreData.addDataValue("harvestTool", "pickaxe");
cmOreData.addDataValue("harvestLevel", "1");