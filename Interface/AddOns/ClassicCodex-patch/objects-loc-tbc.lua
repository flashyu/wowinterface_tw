-- A script to merge Questie objectDB locale to ClassicCodex
-- ClassicCodex version: @project-version@, object locale num: 14071
-- Questie version: 6.5.1, object locale num: 9065
if select(4, GetAddOnInfo('MergeQuestieToCodexDB')) then return end
local D = CodexDB.objects.loc
D[3265]=""
D[6286]=""
D[6287]=""
D[18047]=""
D[18048]=""
D[18049]=""
D[18050]=""
D[18051]=""
D[18052]=""
D[18053]=""
D[18054]=""
D[18055]=""
D[18056]=""
D[18057]=""
D[18058]=""
D[18059]=""
D[18060]=""
D[18061]=""
D[18062]=""
D[56809]=""
D[56810]=""
D[103773]=""
D[126337]=""
D[126338]=""
D[126339]=""
D[126340]=""
D[126341]=""
D[126342]=""
D[126345]=""
D[175786]=""
D[176157]=""
D[177271]=""
D[179874]=""
D[179875]=""
D[179876]=""
D[179877]=""
D[179878]=""
D[183163]=""
D[183164]=""
D[183497]=""
D[183498]=""
D[183499]=""
D[183500]=""
D[183501]=""
D[183502]=""
D[184093]=""
D[184094]=""
D[184095]=""
D[184096]=""
D[184097]=""
D[184098]=""
D[184099]=""
D[184100]=""
D[184101]=""
D[184102]=""
D[184103]=""
D[184104]=""
D[184105]=""
D[184114]=""
D[184353]=""
D[184363]=""
D[184416]=""
D[184507]=""
D[184508]=""
D[184509]=""
D[184510]=""
D[184511]=""
D[184512]=""
D[184513]=""
D[184514]=""
D[184515]=""
D[184516]=""
D[184563]=""
D[184564]=""
D[184565]=""
D[184579]=""
D[184580]=""
D[184581]=""
D[184582]=""
D[184583]=""
D[184584]=""
D[184585]=""
D[185571]=""
D[185572]=""
D[185573]=""
D[187917]="Alliance Bonfire"
D[187919]="Alliance Bonfire"
D[187921]="Alliance Bonfire"
D[187922]="Alliance Bonfire"
D[187933]="Alliance Bonfire"
D[187935]="Alliance Bonfire"
D[187937]="Alliance Bonfire"
D[187939]="Alliance Bonfire"
D[187941]="Alliance Bonfire"
D[187942]="Alliance Bonfire"
D[187949]="Horde Bonfire"
D[187955]="Horde Bonfire"
D[187958]="Horde Bonfire"
D[187960]="Horde Bonfire"
D[187962]="Horde Bonfire"
D[187967]="Horde Bonfire"
D[187974]="Horde Bonfire"
D[188128]="Flame of the Exodar"
D[188129]="Flame of Silvermoon"
D[190483]="Document Chest"
D[190484]="Document Chest"
D[400000]="Mailbox"
D[400001]="Open the Survival Kit"
D[400002]="Equip a Weapon"
D[400003]="Open the Survival Kit"
D[400004]="Equip a Weapon"
D[400005]="Train a Spell at your class trainer"
D[400006]="Train a Spell at your class trainer"
D[400007]="Spend a Talent Point"
D[400008]="Spend a Talent Point"
D[400009]="Open the Survival Kit"
D[400010]="Equip a Weapon"
D[400011]="Train a Spell at your class trainer"
D[400012]="Spend a Talent Point"
D[500000]="Feralas Ahi Fishing Location"
D[500001]="Misty Reed Mahi Mahi Fishing Location"
D[500002]="Sar'theris Striker Fishing Location"
D[500003]="Savage Coast Blue Sailfin Fishing Location"
D[500004]="Stormwind City Fishing Location"
D[500005]="Ironforge City Fishing Location"
D[500006]="Orgrimmar City Fishing Location"
CodexDB.questiePatchVersion = CodexDB.questiePatchVersion or {}
CodexDB.questiePatchVersion.objectLoc = '6.5.1'