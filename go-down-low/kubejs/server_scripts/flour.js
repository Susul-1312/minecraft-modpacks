console.log("Adjusting flour and dough")

onEvent('item.tags', event => {
    event.add("forge:flour/wheat", "pneumaticcraft:wheat_flour");
})

onEvent('recipes', event => {
    event.replaceInput({}, "pneumaticcraft:wheat_flour", "#forge:flour/wheat");
    event.replaceInput({}, "create:wheat_flour", "#forge:flour/wheat");

    event.replaceInput({}, "create:dough", "#forge:dough/wheat");
    event.replaceOutput({}, "create:dough", "farmersdelight:wheat_dough");
})