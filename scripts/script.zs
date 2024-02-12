import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

craftingTable.addShapeless("wool_to_string",<item:minecraft:string> * 4, [<tag:items:minecraft:wool>]);

craftingTable.remove(<item:vs_eureka:balloon>);

var b as IItemStack = <item:minecraft:blaze_powder>;

craftingTable.addShaped("new_balloon_recipe", <item:vs_eureka:balloon> * 32 ,[
[<item:minecraft:phantom_membrane>, <tag:items:minecraft:wool>, <item:minecraft:phantom_membrane>],
[<tag:items:minecraft:wool>, b, <tag:items:minecraft:wool>],
[<item:minecraft:phantom_membrane>, <tag:items:minecraft:wool>, <item:minecraft:phantom_membrane>]]);
