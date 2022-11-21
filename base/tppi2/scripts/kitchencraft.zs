<ore:seed>.add(<kitchenCraftFoods:seed:*>);
<ore:listAllseed>.add(<kitchenCraftFoods:seed:*>);

<ore:cropOnion>.add(<kitchenCraftFoods:veggie:1>);
<ore:listAllveggie>.add(<kitchenCraftFoods:veggie:1>);

recipes.remove(<kitchenCraftFoods:meat:2>);
recipes.addShapeless(<kitchenCraftFoods:meat:2>, [<harvestcraft:mortarandpestleItem>, <minecraft:beef>, <ore:foodSalt>]);

recipes.remove(<kitchenCraftFoods:veggie:5>);
recipes.remove(<harvestcraft:freshwaterItem>);
recipes.addShapeless(<harvestcraft:freshwaterItem>*8, [<minecraft:water_bucket>]);
recipes.addShapeless(<kitchenCraftFoods:veggie:5>, [<harvestcraft:freshwaterItem>, <harvestcraft:freshwaterItem>]);
