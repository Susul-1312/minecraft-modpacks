import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.tag.manager.ITagManager;

<tagmanager:items>.addId(<tag:items:forge:flour/wheat>, <resource:pneumaticcraft:wheat_flour>);

Replacer.forEverything()
    .replace(<item:create:wheat_flour>, <tag:items:forge:flour/wheat>).replace(<item:pneumaticcraft:wheat_flour>, <tag:items:forge:flour/wheat>)
    .replace(<item:create:dough>, <tag:items:forge:dough/wheat>)
    .execute();