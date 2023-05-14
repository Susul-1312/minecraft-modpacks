console.log("Adjusting andesite alloys")

onEvent('recipes', event => {
    event.replaceInput({output: 'create:andesite_alloy'}, 'minecraft:andesite', '#forge:material/andesite');
});