import mods.ResearchTable;
import ResearchTable.Category;
import ResearchTable.Builder;

recipes.addShaped("research_table", <researchtable:table>,
    [[<ore:stone>, <ore:paneGlass>, <ore:stone>],
    [null, <ore:gemDiamond>, null],
    [null, <ore:stone>, null]]
);

var cat = ResearchTable.addCategory(<minecraft:grass>, "Ages");
var completionSound = "/playsound minecraft:ui.toast.challenge_complete master @a";

ResearchTable.builder("machine", cat)
    .setIcons(<immersiveengineering:conveyor>)
    .setTitle("Machines")
    .setDescription("Industrialization based on machinery, already referred to as a characteristic of our age, is but one aspect of the revolution that is being wrought by technology.\n—Emily Greene Balch")
    .addCondition(<ore:ingotIron> * 32, <minecraft:lava_bucket>)
    .setRewardStages("machine")
    .setRewardCommands(completionSound)
    .setRewardItems(<immersiveengineering:tool:3>)
    .build();

ResearchTable.builder("atomic", cat)
    .setIcons(<nuclearcraft:rtg_plutonium>)
    .setTitle("Nuclear Fission")
    .setDescription("The release of atomic energy has not created a new problem. It has merely made more urgent the necessity of solving an existing one.\n—Albert Einstein")
    .addCondition(<ore:ingotUranium> * 256)
    .setRequiredResearches("machine")
    .setRewardStages("atomic")
    .setRewardCommands(completionSound)
    .setRewardItems(<nuclearcraft:smore>)
    .build();

ResearchTable.builder("space", cat)
    .setIcons(<advancedrocketry:satellite>)
    .setTitle("Spaceflight")
    .setDescription("Space is big. Really big. You just won't believe how vastly, hugely, mind-bogglingly big it is. I mean, you may think it's a long way down the road to the chemist, but that's just peanuts to space.\n—Douglas Adams")
    .addCondition(<ore:plateSteel> * 128, <ore:gemDilithium> * 16)
    .setRequiredResearches("atomic")
    .setRewardStages("space")
    .setRewardCommands(completionSound)
    .setRewardItems(<advancedrocketry:spacehelmet>, <advancedrocketry:spacechestplate>, <advancedrocketry:spaceleggings>, <advancedrocketry:spaceboots>)
    .build();

ResearchTable.builder("information", cat)
    .setIcons(<computronics:tape:4>)
    .setTitle("Computing")
    .setDescription("I identified the machine— it seems to me to be an Old Testament god with a lot of rules and no mercy.\n—Joseph Campbell")
    .addCondition(<ore:circuitAdvanced> * 16, <ic2:te:9>, <ic2:te:64>)
    .setRequiredResearches("space")
    .setRewardStages("information")
    .setRewardCommands(completionSound)
    .setRewardItems(<opencomputers:material:4> * 16)
    .build();