val glow = <ore:dustGlowstone>;
val red = <minecraft:redstone>;
val annihilationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
val formationCore = <appliedenergistics2:item.ItemMultiMaterial:44>;
val quartz = <ore:crystalCertusQuartz>;
val blockQuartz = <appliedenergistics2:tile.BlockQuartz>;
val iron = <ore:ingotIron>;
val nquartz = <minecraft:quartz>;
val rftmachineframe = <rftools:machineFrame>;
#val teleportationcore = <Mekanism:TeleportationCore>;
val beacon = <minecraft:beacon>;

recipes.remove(<rftools:environmentalControllerBlock>);
recipes.addShaped(<rftools:environmentalControllerBlock>,[
  [beacon,quartz,beacon],
  [quartz,rftmachineframe,quartz],
  [beacon,quartz,beacon]]);

#recipes.remove(<rftools:dimensionalShardItem>);
recipes.addShapeless(<rftools:dimensionalShardItem>*16,
  [<minecraft:diamond>, <minecraft:ender_pearl>]);
