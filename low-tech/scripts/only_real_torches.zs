import crafttweaker.api.recipe.Replacer;

// Remove all recipes that craft evil bad torches
craftingTable.removeRecipe(<item:minecraft:torch>);

// Add a recipes for real torches

// Immersive Engineering
// Oh, The Biomes You'll Go
craftingTable.addShaped("oh_the_biomes_youll_go_torch", <item:realistictorches:unlit_torch> * 4, [
    [<item:byg:anthracite> | <item:byg:lignite>],
    [<item:minecraft:stick>],
]);

craftingTable.addShaped("immersive_engineering_torch", <item:realistictorches:unlit_torch> * 12, [
    [<tag:items:forge:wool>, <item:immersiveengineering:creosote_bucket> | <item:immersivepetroleum:oil_bucket>],
    [<item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>],
]);



// Replace all recipes that craft torches with real torches
Replacer.forEverything().replace(<item:minecraft:torch>, <item:realistictorches:unlit_torch>).execute();