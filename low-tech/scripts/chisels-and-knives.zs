craftingTable.removeRecipe(<item:farmersdelight:flint_knife>);
craftingTable.removeRecipe(<item:farmersdelight:iron_knife>);
craftingTable.removeRecipe(<item:farmersdelight:golden_knife>);
craftingTable.removeRecipe(<item:farmersdelight:diamond_knife>);

craftingTable.addShaped("flint_knife", <item:farmersdelight:flint_knife>, [
    [<item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:flint>]
]);

craftingTable.addShaped("iron_knife", <item:farmersdelight:iron_knife>, [
    [<item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:iron_ingot>]
]);

craftingTable.addShaped("golden_knife", <item:farmersdelight:golden_knife>, [
    [<item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:gold_ingot>]
]);

craftingTable.addShaped("diamond_knife", <item:farmersdelight:diamond_knife>, [
    [<item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:diamond>]
]);