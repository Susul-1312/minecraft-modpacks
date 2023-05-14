console.log("Adjusting andesite alloys")

onEvent('item.tags', event => {
    event.add("custom:andesite", "minecraft:andesite");
    event.add("custom:andesite", "consistency_plus:cobbled_andesite");
})

onEvent('recipes', event => {
    event.replaceInput({output: 'create:andesite_alloy'}, 'minecraft:andesite', '#forge:material/andesite');
});