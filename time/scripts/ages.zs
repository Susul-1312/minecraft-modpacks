mods.ItemStages.stageModItems("machine", "immersiveengineering");
mods.ItemStages.stageModItems("machine", "immersivepetroleum");
mods.ItemStages.stageModItems("atomic", "icbmclassic");
mods.ItemStages.stageModItems("atomic", "nuclearcraft");
mods.ItemStages.stageTooltip("atomic", "Radiation:"); // Doesnt work, find out why
mods.ItemStages.stageModItems("atomic", "trinity");
mods.ItemStages.stageModItems("space", "ic2");
mods.ItemStages.stageModItems("space", "advancedrocketry");
mods.ItemStages.stageModItems("space", "libvulpes");
mods.ItemStages.stageModItems("information", "opencomputers");
mods.ItemStages.stageModItems("information", "computronics");

mods.ItemStages.removeItemStage(<libvulpes:coalgenerator>);
mods.ItemStages.addItemStage("atomic", <libvulpes:coalgenerator>);

mods.ItemStages.removeItemStage(<libvulpes:productgem>);
mods.ItemStages.addItemStage("atomic", <libvulpes:productgem>);


// All Ores the player might find should be available
for item in (<ore:oreCopper> | <ore:oreTin> | <ore:oreLead> | <ore:oreUranium> | <ore:oreThorium> | <ore:oreBoron> | <ore:oreLithium> | <ore:oreMagnesium> | <ore:oreDilithium> | <ore:oreTitanium> | <ore:oreAluminum> | <ore:oreIridium> | <ore:oreSilver> | <ore:oreNickel>).items{
    mods.ItemStages.removeItemStage(item);
}
for item in (<ore:ingotCopper> | <ore:ingotTin> | <ore:ingotLead> | <ore:ingotUranium> | <ore:ingotThorium> | <ore:ingotBoron> | <ore:ingotLithium> | <ore:ingotMagnesium> | <ore:ingotTitanium> | <ore:ingotAluminum> | <ore:ingotIridium> | <ore:ingotSilver> | <ore:ingotNickel>).items{
    mods.ItemStages.removeItemStage(item);
}
for item in (<ore:plateIron> | <ore:plateGold> | <ore:plateCopper> | <ore:plateTin> | <ore:plateLead> | <ore:plateUranium> | <ore:plateThorium> | <ore:plateBoron> | <ore:plateMagnesium> | <ore:plateTitanium> | <ore:plateAluminum> | <ore:plateIridium> | <ore:plateSilver> | <ore:plateNickel>).items{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("machine", item);
}

// Redoing circuits because ages
mods.ItemStages.removeItemStage(<opencomputers:material:2>);
mods.ItemStages.addItemStage("atomic", <opencomputers:material:2>);
mods.ItemStages.removeItemStage(<opencomputers:material:4>);
mods.ItemStages.addItemStage("atomic", <opencomputers:material:4>);
<ore:circuitBasic>.add(<opencomputers:material:4>);

mods.ItemStages.removeItemStage(<ic2:crafting:2>);
mods.ItemStages.addItemStage("atomic", <ic2:crafting:2>);

mods.jei.JEI.removeAndHide(<icbmclassic:circuit:0>);
<ore:circuitBasic>.remove(<icbmclassic:circuit:0>);
mods.jei.JEI.removeAndHide(<ic2:crafting:1>);
<ore:circuitBasic>.remove(<ic2:crafting:1>);
mods.jei.JEI.removeAndHide(<icbmclassic:circuit:1>);
<ore:circuitAdvanced>.remove(<icbmclassic:circuit:1>);