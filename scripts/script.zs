import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

//Allows player to craft wool into string
craftingTable.addShapeless("wool_to_string",<item:minecraft:string> * 4, [<tag:items:minecraft:wool>]);

//Changed recipe for Eureka Ships balloons
// craftingTable.remove(<item:vs_eureka:balloon>);

// var b as IItemStack = <item:minecraft:blaze_powder>;

// craftingTable.addShaped("new_balloon_recipe", <item:vs_eureka:balloon> * 32 ,[
// [<item:minecraft:phantom_membrane>, <tag:items:minecraft:wool>, <item:minecraft:phantom_membrane>],
// [<tag:items:minecraft:wool>, b, <tag:items:minecraft:wool>],
// [<item:minecraft:phantom_membrane>, <tag:items:minecraft:wool>, <item:minecraft:phantom_membrane>]]);

//Fixes a bug where an empty crafting grid would produce compressed gravel
// craftingTable.removeByName("compressedblocks:compressed_gravel_x1");

//var g as IItemStack = <item:minecraft:gravel>;
//craftingTable.addShapeless("compressed_gravel_x1",<item:compressedblocks:compressed_gravel_x1>,[g,g,g,g,g,g,g,g,g]);
