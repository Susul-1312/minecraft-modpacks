onEvent('item.tags', event => {
	event.get('forge:stone').forEach(tuff => {
			event.add("create:stone_types/tuff", tuff);
	});
});


onEvent('recipes', event => {
	event.replaceInput({type: 'create:crushing'}, 'minecraft:diorite', 'consistency_plus:cobbled_diorite');
	event.replaceInput({type: 'create:crushing'}, 'minecraft:calcite', 'consistency_plus:cobbled_calcite');
});
