mods.ItemStages.stageModItems("mechanics", "immersiveengineering");
mods.ItemStages.stageModItems("mechanics", "immersivepetroleum");
mods.ItemStages.stageModItems("nuclear", "nuclearcraft");
mods.ItemStages.stageTooltip("nuclear", "Radiation:"); // Doesnt work, find out why
mods.ItemStages.stageModItems("ballistics", "icbmclassic");
mods.ItemStages.stageModItems("ballistics", "trinity");
mods.ItemStages.stageModItems("automation", "ic2");
mods.ItemStages.stageModItems("automation", "libvulpes");
mods.ItemStages.stageModItems("space", "advancedrocketry");
mods.ItemStages.stageModItems("chemistry", "alchemistry");
mods.ItemStages.stageModItems("computing", "opencomputers");
mods.ItemStages.stageModItems("computing", "computronics");
mods.ItemStages.stageModItems("miniturization", "appliedenergistics2");

mods.ItemStages.removeItemStage(<libvulpes:coalgenerator>);
mods.ItemStages.addItemStage("nuclear", <libvulpes:coalgenerator>);

mods.ItemStages.removeItemStage(<libvulpes:productgem>);
mods.ItemStages.addItemStage("nuclear", <libvulpes:productgem>);


// All Ores the player might find should be available
for item in (<ore:oreCertusQuartz> | <ore:oreCopper> | <ore:oreTin> | <ore:oreLead> | <ore:oreUranium> | <ore:oreThorium> | <ore:oreBoron> | <ore:oreLithium> | <ore:oreMagnesium> | <ore:oreDilithium> | <ore:oreTitanium> | <ore:oreAluminum> | <ore:oreIridium> | <ore:oreSilver> | <ore:oreNickel>).items{
    mods.ItemStages.removeItemStage(item);
}
<ore:crystalCertusQuartz>.add(<appliedenergistics2:material:1>);
for item in (<ore:crystalCertusQuartz> | <ore:ingotCopper> | <ore:ingotTin> | <ore:ingotLead> | <ore:ingotUranium> | <ore:ingotThorium> | <ore:ingotBoron> | <ore:ingotLithium> | <ore:ingotMagnesium> | <ore:ingotTitanium> | <ore:ingotAluminum> | <ore:ingotIridium> | <ore:ingotSilver> | <ore:ingotNickel>).items{
    mods.ItemStages.removeItemStage(item);
}
for item in (<ore:plateIron> | <ore:plateGold> | <ore:plateCopper> | <ore:plateTin> | <ore:plateLead> | <ore:plateUranium> | <ore:plateThorium> | <ore:plateBoron> | <ore:plateMagnesium> | <ore:plateTitanium> | <ore:plateAluminum> | <ore:plateIridium> | <ore:plateSilver> | <ore:plateNickel>).items{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("mechanics", item);
}

// Lets restage the basics early in the morning
for item in (<ore:ingotSteel> | <ore:plateSteel>).items{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("mechanics", item);
}

mods.ItemStages.removeItemStage(<appliedenergistics2:material:7>);
mods.ItemStages.addItemStage("chemistry", <appliedenergistics2:material:7>);

// Redoing circuits because ages
mods.ItemStages.removeItemStage(<opencomputers:material:2>);
mods.ItemStages.addItemStage("nuclear", <opencomputers:material:2>);
mods.ItemStages.removeItemStage(<opencomputers:material:4>);
mods.ItemStages.addItemStage("nuclear", <opencomputers:material:4>);
<ore:circuitBasic>.add(<opencomputers:material:4>);
recipes.replaceAllOccurences(<opencomputers:material:4>, <ore:circuitBasic>);

<ore:circuitBasic>.add(<immersiveengineering:material:27>);
recipes.replaceAllOccurences(<immersiveengineering:material:27>, <ore:circuitBasic>);

recipes.replaceAllOccurences(<ore:circuitBasic>, <ore:circuitAdvanced>, <ore:circuitElite>);

mods.ItemStages.removeItemStage(<ic2:crafting:2>);
mods.ItemStages.addItemStage("nuclear", <ic2:crafting:2>);

mods.jei.JEI.removeAndHide(<icbmclassic:circuit:0>);
<ore:circuitBasic>.remove(<icbmclassic:circuit:0>);
mods.jei.JEI.removeAndHide(<ic2:crafting:1>);
<ore:circuitBasic>.remove(<ic2:crafting:1>);
mods.jei.JEI.removeAndHide(<icbmclassic:circuit:1>);
<ore:circuitAdvanced>.remove(<icbmclassic:circuit:1>);