import mods.ResearchTable;
import ResearchTable.Category;
import ResearchTable.Builder;

recipes.addShaped("research_table", <researchtable:table>,
    [[<ore:stone>, <ore:paneGlass>, <ore:stone>],
    [null, <ore:gemDiamond>, null],
    [null, <ore:stone>, null]]
);

var cat1 = ResearchTable.addCategory(<minecraft:clock>, "19th");
var cat2 = ResearchTable.addCategory(<nuclearcraft:decay_generator>, "20th");
var cat3 = ResearchTable.addCategory(<opencomputers:card:10>, "21th");
var completionSound = "/playsound minecraft:ui.toast.challenge_complete master @a";

ResearchTable.builder("mechanics", cat1)
    .setIcons(<immersiveengineering:conveyor>)
    .setTitle("Mechanical Engineering")
    .setDescription("Mechanical engineering may be defined as the manufacture, installation, and repair of all kinds of machinery (including machine tools), prime movers and boilers, and engines.\n—N. K. Buxton")
    .addCondition(<ore:ingotIron> * 32, <minecraft:lava_bucket>)
    .setRewardStages("mechanics")
    .setRewardCommands(completionSound)
    .setRewardItems(<immersiveengineering:tool:3>)
    .build();

ResearchTable.builder("nuclear", cat2)
    .setIcons(<nuclearcraft:rtg_plutonium>)
    .setTitle("Nuclear Fission")
    .setDescription("The release of atomic energy has not created a new problem. It has merely made more urgent the necessity of solving an existing one.\n—Albert Einstein")
    .addCondition(<ore:ingotUranium> * 256)
    .setRequiredResearches("mechanics")
    .setRewardStages("nuclear")
    .setRewardCommands(completionSound)
    .setRewardItems(<nuclearcraft:smore>)
    .build();

ResearchTable.builder("automation", cat2)
    .setIcons(<ic2:te:32>)
    .setTitle("Advanced Automation")
    .setDescription("It's Supposed To Be Automatic But Actually You Have To Press This Button\n—John Brunner")
    .addCondition(<immersiveengineering:metal_device0:2>, <ore:circuitBasic> * 32, <nuclearcraft:assembler> * 4, <nuclearcraft:rtg_uranium>)
    .setRequiredResearches("nuclear")
    .setRewardStages("automation")
    .setRewardCommands(completionSound)
    .setRewardItems(<opencomputers:material:4> * 16)
    .build();
    
ResearchTable.builder("space", cat2)
    .setIcons(<advancedrocketry:satellite>)
    .setTitle("Spaceflight")
    .setDescription("Space is big. Really big. You just won't believe how vastly, hugely, mind-bogglingly big it is. I mean, you may think it's a long way down the road to the chemist, but that's just peanuts to space.\n—Douglas Adams")
    .addCondition(<ore:plateSteel> * 128, <ore:gemDilithium> * 16)
    .setRequiredResearches("nuclear", "automation")
    .setRewardStages("space")
    .setRewardCommands(completionSound)
    .setRewardItems(<advancedrocketry:spacehelmet>, <advancedrocketry:spacechestplate>, <advancedrocketry:spaceleggings>, <advancedrocketry:spaceboots>)
    .build();

ResearchTable.builder("ballistics", cat2)
    .setIcons(<icbmclassic:missile:23>)
    .setTitle("Advanced Ballistics")
    .setDescription("Now I am become Death, the destroyer of worlds.\n—J. Robert Oppenheimer")
    .addCondition(<advancedrocketry:rocketmotor> * 4, <advancedrocketry:fueltank> * 16, <ore:blockUranium> * 16)
    .setRequiredResearches("nuclear", "space")
    .setRewardStages("ballistics")
    .setRewardCommands(completionSound)
    .setRewardItems(<nuclearcraft:smore>)
    .build();

ResearchTable.builder("chemistry", cat2)
    .setIcons(<alchemistry:compound:56>)
    .setTitle("Theoretical Chemistry")
    .setDescription("It's chemistry, brother, chemistry! There's no help for it, your reverence, you must make way for chemistry.\n—Fyodor Dostoyevsky")
    .addCondition(<nuclearcraft:depleted_fuel_uranium:9> * 4, <liquid:water> * 1000)
    .setRequiredResearches("automation", "nuclear")
    .setRewardStages("chemistry")
    .setRewardCommands(completionSound)
    .setRewardItems(<alchemistry:periodic_diagram>)
    .build();

ResearchTable.builder("computing", cat3)
    .setIcons(<computronics:tape:4>)
    .setTitle("Computing")
    .setDescription("I identified the machine— it seems to me to be an Old Testament god with a lot of rules and no mercy.\n—Joseph Campbell")
    .addCondition(<ore:circuitAdvanced> * 16, <ic2:te:9>, <ic2:te:64>)
    .setRequiredResearches("automation")
    .setRewardStages("computing")
    .setRewardCommands(completionSound)
    .setRewardItems(<opencomputers:material:4> * 16)
    .build();

ResearchTable.builder("miniturization", cat3)
    .setIcons(<appliedenergistics2:creative_storage_cell>)
    .setTitle("Miniturization")
    .setDescription("Miniaturization doesn't actually make sense unless you miniaturize the very atoms of which matter is composed.\n—Isaac Azimov")
    .addCondition(<ore:crystalFluix> * 4, <computronics:tape:2> * 2, <opencomputers:storage:4> * 4)
    .setRequiredResearches("computing", "automation", "chemistry")
    .setRewardStages("miniturization")
    .setRewardCommands(completionSound)
    .setRewardItems(<opencomputers:material:4> * 16)
    .build();