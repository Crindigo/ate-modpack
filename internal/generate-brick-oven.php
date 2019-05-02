<?php

// goes through harvestcraft recipes including toolPot, toolBakeware, toolSaucepan, toolSkillet
// and generates crafttweaker syntax for removing them and putting them in a MM brick oven.
// will probably be extended later for other oven types.

$recipePath = __DIR__ . '/../../harvestcraft/src/main/resources/assets/harvestcraft/recipes';

$tools = ['toolPot', 'toolBakeware', 'toolSaucepan', 'toolSkillet'];

echo "import mods.modularmachinery.RecipeBuilder as RB;\n\n";
echo "// THIS FILE IS AUTO GENERATED\n\n";

foreach ( glob("$recipePath/*.json") as $jsonFile ) {
    $json = json_decode(file_get_contents($jsonFile), true);
    if ( $json['type'] != 'forge:ore_shapeless' ) {
        continue;
    }
    if ( !isset($json['ingredients']) ) {
        var_dump($json);
        continue;
    }
    $inputs = $json['ingredients'];
    $valid = false;
    foreach ( $inputs as $input ) {
        if ( isset($input['type']) && $input['type'] == 'forge:ore_dict' && in_array($input['ore'], $tools) ) {
            $valid = true;
            break;
        }
    }

    if ( $valid ) {
        $recname = strtolower(str_replace('.json', '', basename($jsonFile)));
        echo "recipes.removeByRecipeName(\"harvestcraft:$recname\");\n";

        echo "RB.newBuilder(\"ate_bo_$recname\", \"brick_oven\", 200)\n";
        echo "  .addItemInput(<ore:itemCharcoal>)\n";
        $inputSet = [];
        foreach ( $inputs as $input ) {

            if ( isset($input['type']) && $input['type'] == 'forge:ore_dict' ) {
                $inputname = "<ore:$input[ore]>";
            } else {
                $meta = isset($input['data']) ? ":$input[data]" : '';
                $inputname = "<$input[item]$meta>";
            }

            if ( isset($input['ore']) && in_array($input['ore'], $tools) ) {
                echo "  .addItemInput($inputname).setChance(0)\n";
            } else { 
                $inputSet[$inputname] = isset($inputSet[$inputname]) ? $inputSet[$inputname] + 1 : 1;
            }
        }

        foreach ( $inputSet as $inputname => $number ) {
            // oredict uses count parameter, item uses just * X
            if ( strpos($inputname, '<ore:') !== false ) {
                $number = $number > 1 ? ", $number" : '';
            } else {
                $number = $number > 1 ? " * $number" : '';
            }
            echo "  .addItemInput({$inputname}{$number})\n";
        }

        $count = (isset($json['result']['count']) && $json['result']['count'] > 1) ? (' * ' . $json['result']['count']) : '';
        echo "  .addItemOutput(<" . $json['result']['item'] . ">$count)\n";
        echo "  .build();\n\n";
    }
}
