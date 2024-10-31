import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
// import mods.create.DeployerApplicationManager;

craftingTable.remove(<item:sophisticatedbackpacks:backpack>);

smithing.addTransformRecipe("corncraft.backpack_to_copper_upgrade", <item:sophisticatedbackpacks:copper_backpack>.withTag({inventorySlots: 45, upgradeSlots: 1}), <item:sophisticatedstorage:basic_to_copper_tier_upgrade>, <item:sophisticatedbackpacks:backpack>, <item:minecraft:copper_ingot>);

// craftingTable.addShaped("corncraft.copper_backpack", <item:sophisticatedbackpacks:copper_backpack>.withTag({inventorySlots: 45, upgradeSlots: 1}), [[<tag:items:c:copper_ingots>, <tag:items:c:copper_ingots>, <tag:items:c:copper_ingots>], [<tag:items:c:copper_ingots>, <item:sophisticatedbackpacks:backpack>, <tag:items:c:copper_ingots>], [<tag:items:c:copper_ingots>, <item:sophisticatedstorage:basic_to_copper_tier_upgrade>, <tag:items:c:copper_ingots>]]);