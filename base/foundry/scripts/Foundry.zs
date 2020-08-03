#===Changes===

#Mining Helmet
craftingTable.removeRecipe(<item:mining_helmet:mining_helmet>.withTag({Damage: 0}));

craftingTable.addShaped("mining_helmet", <item:mining_helmet:mining_helmet>.withTag({Damage: 0}), [
    [<item:minecraft:air>, <item:minecraft:lantern>],
    [<item:create:polished_rose_quartz>, <item:create:andesite_alloy>, <item:create:polished_rose_quartz>],
    [<item:create:andesite_alloy>, <item:minecraft:air>, <item:create:andesite_alloy>]
]);

#End Frame
craftingTable.removeRecipe(<item:endteleporters:ender_frame>);

craftingTable.addShaped("ender_frame", <item:endteleporters:ender_frame>, [
    [<item:create:shadow_steel>, <item:quark:iron_chain>, <item:create:shadow_steel>],
    [<item:quark:iron_chain>, <item:quark:ender_watcher>, <item:quark:iron_chain>],
    [<item:create:shadow_steel>, <item:quark:iron_chain>, <item:create:shadow_steel>]
]);

#Magic Feather
craftingTable.removeRecipe(<item:magicfeather:magicfeather>);

craftingTable.addShaped("magic_feather", <item:magicfeather:magicfeather>, [
    [<item:create:refined_radiance>, <item:buzzierbees:four_leaf_clover>, <item:create:refined_radiance>],
    [<item:minecraft:nether_star>, <item:minecraft:feather>, <item:minecraft:nether_star>],
    [<item:create:refined_radiance>, <item:minecraft:phantom_membrane>, <item:create:refined_radiance>]
]);

#chunk Loader
craftingTable.removeRecipe(<item:simplechunkloaders:limited_loader>);

craftingTable.addShaped("chunk_loader", <item:simplechunkloaders:limited_loader>, [
    [<item:minecraft:glass>, <item:minecraft:glass>, <item:minecraft:glass>],
    [<item:create:refined_radiance>, <item:minecraft:nether_star>, <item:create:refined_radiance>],
    [<item:minecraft:prismarine_slab>, <item:minecraft:sea_lantern>, <item:minecraft:prismarine_slab>]
]);

#Storage Inventory
craftingTable.removeRecipe(<item:storagenetwork:inventory>);

craftingTable.addShaped("storage_inventory", <item:storagenetwork:inventory>, [
    [<item:create:andesite_alloy>, <item:create:shadow_steel>, <item:create:andesite_alloy>],
    [<item:create:shadow_steel>, <item:apotheosis:prismatic_web>, <item:create:shadow_steel>],
    [<item:create:refined_radiance>, <item:create:shadow_steel>, <item:create:refined_radiance>]
]);

#Immolation Blades

craftingTable.removeRecipe(<item:wstweaks:lava_blade>.withTag({Damage: 0}));
mods.jei.JEI.hideItem(<item:wstweaks:lava_blade>.withTag({Damage: 0}));

craftingTable.removeRecipe(<item:wstweaks:blaze_blade>.withTag({Damage: 0}));

craftingTable.addShaped("immolation_blade", <item:wstweaks:blaze_blade>.withTag({Damage: 0}), [
    [<item:minecraft:nether_star>, <item:quark:dragon_scale>, <item:create:shadow_steel>],
    [<item:quark:dragon_scale>, <item:create:shadow_steel>, <item:quark:dragon_scale>],
    [<item:upgrade_aquatic:elder_guardian_spine>, <item:quark:dragon_scale>, <item:minecraft:nether_star>]
]);

#Traveller's Boots
craftingTable.removeRecipe(<item:travellersboots:travellersbootmki>.withTag({Damage: 0}));

craftingTable.addShaped("boots_mk1", <item:travellersboots:travellersbootmki>.withTag({Damage: 0}), [
    [<item:minecraft:sugar>, <item:minecraft:air>, <item:minecraft:sugar>],
    [<item:quark:white_quilted_wool>, <item:minecraft:air>, <item:quark:white_quilted_wool>],
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>]
]);

craftingTable.removeRecipe(<item:travellersboots:travellersbootmkii>.withTag({Damage: 0}));

craftingTable.addShaped("boots_mk2", <item:travellersboots:travellersbootmkii>.withTag({Damage: 0}), [
    [<item:minecraft:iron_ingot>, <item:minecraft:slime_ball>, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:travellersboots:travellersbootmki>.withTag({Damage: 0}), <item:minecraft:iron_ingot>],
    [<item:minecraft:glowstone_dust>, <item:minecraft:slime_ball>, <item:minecraft:glowstone_dust>]
]);

craftingTable.removeRecipe(<item:travellersboots:travellersbootmkiii>.withTag({Damage: 0}));

craftingTable.addShaped("boots_mk3", <item:travellersboots:travellersbootmkiii>.withTag({Damage: 0}), [
    [<item:minecraft:phantom_membrane>, <item:minecraft:slime_ball>, <item:minecraft:phantom_membrane>],
    [<item:minecraft:phantom_membrane>, <item:travellersboots:travellersbootmkii>.withTag({Damage: 0}), <item:minecraft:phantom_membrane>],
    [<item:minecraft:diamond>, <item:minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness" as string}), <item:minecraft:diamond>]
]);

craftingTable.removeRecipe(<item:travellersboots:travellersbootmkiv>.withTag({Damage: 0}));

craftingTable.addShaped("boots_mk4", <item:travellersboots:travellersbootmkiv>.withTag({Damage: 0}), [
    [<item:create:refined_radiance>, <item:minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_leaping" as string}), <item:create:refined_radiance>],
    [<item:create:refined_radiance>, <item:travellersboots:travellersbootmkiii>.withTag({Damage: 0}), <item:create:refined_radiance>],
    [<item:tetra:pristine_emerald>, <item:quark:bottled_cloud>, <item:tetra:pristine_emerald>]
]);
