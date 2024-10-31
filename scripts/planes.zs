// Recipe changes for Immersive Aircraft
import mods.create.MechanicalCrafterManager;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.MirrorAxis;

// Remove default recipes
craftingTable.remove(<item:immersive_aircraft:boiler>);
craftingTable.remove(<item:immersive_aircraft:engine>);
craftingTable.remove(<item:immersive_aircraft:hull>);
craftingTable.remove(<item:immersive_aircraft:propeller>);
craftingTable.remove(<item:immersive_aircraft:airship>);
craftingTable.remove(<item:immersive_aircraft:cargo_airship>);
craftingTable.remove(<item:immersive_aircraft:warship>);
craftingTable.remove(<item:immersive_aircraft:rotary_cannon>);
craftingTable.remove(<item:immersive_aircraft:bomb_bay>);

var boiler as IItemStack = <item:immersive_aircraft:boiler>;
var o = <item:minecraft:air>;
var s = <item:immersive_aircraft:sail>;
var h = <item:immersive_aircraft:hull>;

// Hull recipe
craftingTable.addShaped("hull", <item:immersive_aircraft:hull> * 6,[
    [<tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>],
    [<item:createaddition:iron_rod>, <item:createaddition:iron_rod>, <item:createaddition:iron_rod>],
    [<tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>]
]);

// Propeller recipe
craftingTable.addShapedMirrored("propeller", MirrorAxis.ALL, <item:immersive_aircraft:propeller>,[
    [<item:minecraft:air>, <tag:items:c:iron_plates>, <tag:items:c:iron_plates>],
    [<item:minecraft:air>, <item:create:propeller>, <item:minecraft:air>],
    [<tag:items:c:iron_plates>, <tag:items:c:iron_plates>, <item:minecraft:air>]
]);

// Boiler recipe
<recipetype:create:mechanical_crafting>.addMirroredRecipe("boiler", boiler, [
    [<item:minecraft:air>, <tag:items:c:copper_plates>, <tag:items:c:copper_plates>, <item:minecraft:air>], 
    [<tag:items:c:copper_plates>, <item:create:fluid_tank>, <item:create:fluid_tank>, <tag:items:c:copper_plates>],
    [<tag:items:c:copper_plates>, <item:create:fluid_tank>, <item:create:fluid_tank>, <tag:items:c:copper_plates>],
    [<tag:items:c:copper_plates>, <item:create:blaze_burner>, <item:create:blaze_burner>, <tag:items:c:copper_plates>]
]);

// Engine recipe
<recipetype:create:mechanical_crafting>.addMirroredRecipe("engine", <item:immersive_aircraft:engine>, [
    [<item:minecraft:air>, <tag:items:c:iron_plates>, <item:minecraft:iron_bars>, <tag:items:c:iron_plates>, <item:minecraft:air>], 
    [<tag:items:c:iron_plates>, <item:create:shaft>, <item:create:steam_engine>, <item:create:shaft>, <tag:items:c:iron_plates>],
    [<item:minecraft:iron_bars>, <item:create:steam_engine>, <item:immersive_aircraft:boiler>, <item:create:steam_engine>, <item:minecraft:iron_bars>],
    [<tag:items:c:iron_plates>, <item:create:shaft>, <item:create:steam_engine>, <item:create:shaft>, <tag:items:c:iron_plates>],
    [<item:minecraft:air>, <tag:items:c:iron_plates>, <item:minecraft:iron_bars>, <tag:items:c:iron_plates>, <item:minecraft:air>]
]);

// Airship recipe
<recipetype:create:mechanical_crafting>.addMirroredRecipe("airship", <item:immersive_aircraft:airship>, [
    [<item:minecraft:air>, <item:immersive_aircraft:sail>, <item:immersive_aircraft:sail>, <item:immersive_aircraft:sail>, <item:minecraft:air>],
    [<item:immersive_aircraft:sail>, <tag:items:c:iron_plates>, <item:immersive_aircraft:hull>, <tag:items:c:iron_plates>, <item:immersive_aircraft:sail>],
    [<item:immersive_aircraft:sail>, <tag:items:c:iron_plates>, <item:immersive_aircraft:hull>, <tag:items:c:iron_plates>, <item:immersive_aircraft:sail>],
    [<item:minecraft:air>, <item:farmersdelight:rope>, <item:immersive_aircraft:engine>, <item:farmersdelight:rope>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:immersive_aircraft:hull>, <tag:items:minecraft:boats>, <item:immersive_aircraft:propeller>, <item:minecraft:air>]
]);

// Cargo ship recipe
<recipetype:create:mechanical_crafting>.addMirroredRecipe("cargoship", <item:immersive_aircraft:cargo_airship>, [
    [<item:minecraft:air>, <item:immersive_aircraft:sail>, <item:immersive_aircraft:sail>, <item:immersive_aircraft:sail>, <item:minecraft:air>],
    [<item:create:encased_fan>, <tag:items:c:wooden_chests>, <item:immersive_aircraft:hull>, <tag:items:c:wooden_chests>, <item:create:encased_fan>],
    [<item:minecraft:air>, <tag:items:c:wooden_chests>, <item:immersive_aircraft:airship>, <tag:items:c:wooden_chests>, <item:minecraft:air>]
]);

// Warship recipe
<recipetype:create:mechanical_crafting>.addMirroredRecipe("warship", <item:immersive_aircraft:warship>, [
    [o, s, s, s, s, s, s, s, <item:create:encased_fan>, s, o],
    [s, h, h, h, <tag:items:c:copper_plates>, h, <tag:items:c:copper_plates>, h, h, <item:create:encased_fan>, s],
    [o, s, s, s, <tag:items:c:iron_plates>, <tag:items:c:iron_plates>, <tag:items:c:iron_plates>, s, <item:create:encased_fan>, s, o],
    [o, o, o, o, <item:farmersdelight:rope>, o, <item:farmersdelight:rope>, o, o, o, o],
    [o, o, o, o, <item:farmersdelight:rope>, o, <item:farmersdelight:rope>, o, o, o, o],
    [o, o, o, <tag:items:c:glass_panes>, <tag:items:minecraft:chest_boats>, <tag:items:minecraft:chest_boats>, <item:immersive_aircraft:engine>, <item:immersive_aircraft:propeller>, o, o, o],
    [o, o, o, o, <tag:items:c:iron_plates>, <tag:items:c:iron_plates>, <tag:items:c:iron_plates>, o, o, o, o]
]);

// Rotary cannon recipe
<recipetype:create:mechanical_crafting>.addMirroredRecipe("gun", <item:immersive_aircraft:rotary_cannon>, [
    [<tag:items:c:copper_blocks>, <item:minecraft:dispenser>, <item:create:fluid_pipe>, <item:create:chute>, <item:create:chute>],
    [<tag:items:c:copper_blocks>, <item:create:precision_mechanism>, <item:create:fluid_pipe>, <item:create:chute>, <item:create:chute>],
    [o, <tag:items:c:copper_ingots>, o, o, o],
    [<tag:items:c:copper_plates>, <tag:items:c:copper_plates>, <tag:items:c:copper_plates>, o, o]
]);

// Bomb bay recipe
<recipetype:create:mechanical_crafting>.addMirroredRecipe("bomber", <item:immersive_aircraft:bomb_bay>, [
    [o, <item:create:cogwheel>, <tag:items:c:iron_plates>, <tag:items:c:iron_plates>, <tag:items:c:iron_plates>, <item:create:cogwheel>, o],
    [<item:create:shaft>, <item:create:large_cogwheel>, <item:minecraft:dispenser>, <tag:items:c:redstone_dusts>, <item:minecraft:dispenser>, <item:create:large_cogwheel>, <item:create:shaft>],
    [o, <item:create:cogwheel>, <tag:items:c:iron_plates>, <tag:items:c:iron_plates>, <tag:items:c:iron_plates>, <item:create:cogwheel>, o]
]);