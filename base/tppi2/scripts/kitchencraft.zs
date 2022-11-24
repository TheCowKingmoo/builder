import mods.nei.NEI;

<ore:seed>.add(<kitchenCraftFoods:seed:*>);
<ore:listAllseed>.add(<kitchenCraftFoods:seed:*>);

<ore:cropLettuce>.add(<kitchenCraftFoods:veggie:0>);
<ore:listAllgreenveggie>.add(<kitchenCraftFoods:veggie:0>);
<ore:listAllveggie>.add(<kitchenCraftFoods:veggie:0>);

<ore:cropOnion>.add(<kitchenCraftFoods:veggie:1>);
<ore:listAllveggie>.add(<kitchenCraftFoods:veggie:1>);

recipes.remove(<kitchenCraftFoods:meat:2>);
recipes.addShapeless(<kitchenCraftFoods:meat:2>, [<harvestcraft:mortarandpestleItem>, <minecraft:beef>, <ore:foodSalt>]);

recipes.remove(<kitchenCraftFoods:veggie:5>);
recipes.remove(<harvestcraft:freshwaterItem>);
recipes.addShapeless(<harvestcraft:freshwaterItem>*8, [<minecraft:water_bucket>]);
recipes.addShapeless(<kitchenCraftFoods:veggie:5>, [<harvestcraft:freshwaterItem>, <harvestcraft:freshwaterItem>]);

// replaced by pam's, no recipe
NEI.hide(<kitchenCraftFoods:veggie:3>); // salt
NEI.hide(<kitchenCraftFoods:veggie:4>); // dough
NEI.hide(<kitchenCraftFoods:veggie:9>); // fried egg
NEI.hide(<kitchenCraftFoods:veggie:11>); // toast
NEI.hide(<kitchenCraftFoods:veggie:15>); // fried rice
NEI.hide(<kitchenCraftFoods:veggie:16>); // spring green salad
NEI.hide(<kitchenCraftFoods:veggie:20>); // cheese

// broken/WIP
NEI.hide(<kitchenCraftMachines:kc.pot>);
