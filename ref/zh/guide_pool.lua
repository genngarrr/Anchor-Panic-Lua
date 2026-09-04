-- from 997 新手引导统计配置表.xlsx

local guide_pool=

{
	[1]={ guide_id=1013, step_id=1, step_des="After the Operator starts the battle, a <color=#1792ff>Action Countdown Timer</color> will appear. You can attack before the timer ends.", event_name=""
},
	[2]={ guide_id=1013, step_id=2, step_des="Releasing skills consumes <color=#1792ff>Energy</color>. Here shows the <color=#1792ff>Energy</color> the Operator has. Each character has an individual Energy slot.", event_name=""
},
	[3]={ guide_id=1013, step_id=3, step_des="Here shows the <color=#1792ff>Energy</color> required to use a skill", event_name=""
},
	[4]={ guide_id=1013, step_id=4, step_des="Use 1 segment of <color=#1792ff>Energy</color> now to activate Alicia's skill—<color=#1792ff>Shimmering·Moonblade</color>!!", event_name=""
},
	[5]={ guide_id=1014, step_id=1, step_des="This is the <color=#1792ff>action bar</color> for characters. The action order of all characters on the battlefield is displayed here. It's now the enemy's turn.", event_name=""
},
	[6]={ guide_id=1015, step_id=1, step_des="Now activate Alicia's skill—<color=#1792ff>Shimmering·Combo</color>!!", event_name=""
},
	[7]={ guide_id=1016, step_id=1, step_des="Now use Alicia's <color=#1792ff>Energy Burst</color>—<color=#1792ff>Radiant·Judgment</color>.", event_name=""
},
	[8]={ guide_id=1018, step_id=1, step_des="Here shows the enemy's <color=#1792ff>elemental weakness</color>. Attacks using the corresponding element will deal more damage.", event_name=""
},
	[9]={ guide_id=1018, step_id=2, step_des="Above HP displays the enemy's <color=#1792ff>stagger</color>. It redeces when enemy is attacked with its elemental weakness.\nWhen the stagger bar empties, the monster enters <color=#1792ff>Break state</color>.", event_name=""
},
	[10]={ guide_id=1018, step_id=3, step_des="This attack can empty the enemy's <color=#1792ff>stagger</color>.", event_name=""
},
	[11]={ guide_id=1041, step_id=1, step_des="Linker, <color=#1792ff>auto-battle</color> is on. Tap here to enable auto-battle!", event_name=""
},
	[12]={ guide_id=1041, step_id=2, step_des="Tap the Operator's avatar to set skill release preferences (Skills 1 & 2 will alternate in Auto Mode).", event_name=""
},
	[13]={ guide_id=1041, step_id=3, step_des="Tap Skill 1 to prioritize its use in Auto Mode.", event_name=""
},
	[14]={ guide_id=1019, step_id=1, step_des="Linker, the <color=#1792ff>Link Search System</color> opened. You can find new team members now!", event_name=""
},
	[15]={ guide_id=1019, step_id=2, step_des="Enter the Link Search interface from here.", event_name=""
},
	[16]={ guide_id=1019, step_id=3, step_des="Tap to enter the Regular Link interface.", event_name=""
},
	[17]={ guide_id=1019, step_id=4, step_des="Tap here to use a <color=#1792ff>Link Permit</color> for Operator linking.", event_name=""
},
	[18]={ guide_id=2060, step_id=1, step_des="Linker, the Tutorial field is now open!", event_name=""
},
	[19]={ guide_id=2060, step_id=2, step_des="", event_name=""
},
	[20]={ guide_id=2060, step_id=3, step_des="You can quickly master battle skills in the Tutorial field.", event_name=""
},
	[21]={ guide_id=2060, step_id=4, step_des="Tap to enter the basic Tutorial.", event_name=""
},
	[22]={ guide_id=2060, step_id=5, step_des="Choose the first Tutorial.", event_name=""
},
	[23]={ guide_id=2060, step_id=6, step_des="Start the first Tutorial.", event_name=""
},
	[24]={ guide_id=2060, step_id=7, step_des="Here is key information for completing the Tutorial.", event_name=""
},
	[25]={ guide_id=2060, step_id=8, step_des="After understanding the Tutorial elements, choose a suitable Operator from here to challenge.", event_name=""
},
	[26]={ guide_id=3030, step_id=1, step_des="Linker, you've obtained a <color=#1792ff>Model</color> from the battle. Go install it on your Operator!", event_name=""
},
	[27]={ guide_id=3030, step_id=2, step_des="", event_name=""
},
	[28]={ guide_id=3030, step_id=3, step_des="", event_name=""
},
	[29]={ guide_id=3030, step_id=4, step_des="Tap here to enter the Model system interface.", event_name=""
},
	[30]={ guide_id=3030, step_id=5, step_des="Tap here to start installing the Model.", event_name=""
},
	[31]={ guide_id=3030, step_id=6, step_des="Tap to view Model information.", event_name=""
},
	[32]={ guide_id=3030, step_id=7, step_des="Tap here to install the Model for the Operator.", event_name=""
},
	[33]={ guide_id=3030, step_id=8, step_des="Choose the second Model installation slot.", event_name=""
},
	[34]={ guide_id=3030, step_id=9, step_des="Tap to view Model information.", event_name=""
},
	[35]={ guide_id=3030, step_id=10, step_des="Tap here to install the Model for the Operator. If same type of Models are installed, the set effects will automatically activate.", event_name=""
},
	[36]={ guide_id=1100, step_id=1, step_des="Linker, the Missions hall is now open!", event_name=""
},
	[37]={ guide_id=1100, step_id=2, step_des="", event_name=""
},
	[38]={ guide_id=1100, step_id=3, step_des="Enter the Missions hall from here.", event_name=""
},
	[39]={ guide_id=1100, step_id=4, step_des="Here shows the cumulative score of Missions. You can claim rewards when the score reaches different stages each day.", event_name=""
},
	[40]={ guide_id=1100, step_id=5, step_des="Linker, tap now to claim your completed Missions rewards!", event_name=""
},
	[41]={ guide_id=2080, step_id=1, step_des="Linker, you have access to Subconscious Deepseek. Please proceed to explore.", event_name=""
},
	[42]={ guide_id=2080, step_id=2, step_des="", event_name=""
},
	[43]={ guide_id=2080, step_id=3, step_des="Enter the unknown Challenge from here.", event_name=""
},
	[44]={ guide_id=2080, step_id=4, step_des="Tap to enter Subconscious Deepseek.", event_name=""
},
	[45]={ guide_id=2080, step_id=5, step_des="Select the first area.", event_name=""
},
	[46]={ guide_id=2080, step_id=6, step_des="Select the first development area.", event_name=""
},
	[47]={ guide_id=2080, step_id=7, step_des="Start brain development now!", event_name=""
},
	[48]={ guide_id=2010, step_id=1, step_des="Linker, Information is open! Go check it out.", event_name=""
},
	[49]={ guide_id=2010, step_id=2, step_des="", event_name=""
},
	[50]={ guide_id=2010, step_id=3, step_des="Enter the Information hall from here.", event_name=""
},
	[51]={ guide_id=2010, step_id=4, step_des="You have 4 Challenge attempts each day.", event_name=""
},
	[52]={ guide_id=2010, step_id=5, step_des="Linker, select an Operator to gather Information about her!", event_name=""
},
	[53]={ guide_id=1110, step_id=1, step_des="Linker, the special Story Battle is now open! Go check it out.", event_name=""
},
	[54]={ guide_id=1110, step_id=2, step_des="Enter the special Story chapter from here.", event_name=""
},
	[55]={ guide_id=1110, step_id=3, step_des="Choose the corresponding chapter to enter.", event_name=""
},
	[56]={ guide_id=1110, step_id=4, step_des="Start the first Challenge!", event_name=""
},
	[57]={ guide_id=1017, step_id=1, step_des="Tap here to view the stage information.", event_name=""
},
	[58]={ guide_id=1017, step_id=2, step_des="Tap here to prepare for battle.", event_name=""
},
	[59]={ guide_id=1017, step_id=3, step_des="Tap the <color=#1792ff>glowing area of formation </color> to deploy the Operator.", event_name=""
},
	[60]={ guide_id=1017, step_id=4, step_des="Tap to select and deploy the Operator.", event_name=""
},
	[61]={ guide_id=1017, step_id=5, step_des="Tap the corresponding Operator avatar on the left for quick cultivation.", event_name=""
},
	[62]={ guide_id=1017, step_id=6, step_des="Consume the required <color=#1792ff>Operator EXP</color> to increase their level by 1.", event_name=""
},
	[63]={ guide_id=1017, step_id=7, step_des="Enable One-Tap Upgrade.", event_name=""
},
	[64]={ guide_id=1017, step_id=8, step_des="Tap to Upgrade.", event_name=""
},
	[65]={ guide_id=1017, step_id=9, step_des="Tap here to return to the battle screen.", event_name=""
},
	[66]={ guide_id=1017, step_id=10, step_des="Operator deployed! Linker, start the battle now!", event_name=""
},
	[67]={ guide_id=2091, step_id=1, step_des="Linker, you have access to Maze Exploration. Please proceed to explore.", event_name=""
},
	[68]={ guide_id=2091, step_id=2, step_des="", event_name=""
},
	[69]={ guide_id=2091, step_id=3, step_des="Enter the unknown Challenge from here.", event_name=""
},
	[70]={ guide_id=2091, step_id=4, step_des="Tap to enter Maze Exploration.", event_name=""
},
	[71]={ guide_id=2091, step_id=5, step_des="Choose the first area to enter.", event_name=""
},
	[72]={ guide_id=2091, step_id=6, step_des="The maze is full of dangers and treasures. If you can't proceed further,\n you can reset the stage by tapping the reset button", event_name=""
},
	[73]={ guide_id=2091, step_id=7, step_des="Here shows the progress of chests opened in the current maze (resetting won't reset the chests)", event_name=""
},
	[74]={ guide_id=2091, step_id=8, step_des="If you can't find yourself, tap here to quickly locate yourself at the center of the screen", event_name=""
},
	[75]={ guide_id=3011, step_id=1, step_des="Linker, you now have access to Desert Adventure. Please proceed to explore.", event_name=""
},
	[76]={ guide_id=3011, step_id=2, step_des="", event_name=""
},
	[77]={ guide_id=3011, step_id=3, step_des="Enter the unknown Challenge from here.", event_name=""
},
	[78]={ guide_id=3011, step_id=4, step_des="Tap to enter Desert Adventure.", event_name=""
},
	[79]={ guide_id=3011, step_id=5, step_des="Here you can choose different BOSSES for a Challenge", event_name=""
},
	[80]={ guide_id=3011, step_id=6, step_des="Here shows the number of stars required until the next reward", event_name=""
},
	[81]={ guide_id=3011, step_id=7, step_des="Here shows the conditions required to obtain different stars", event_name=""
},
	[82]={ guide_id=3011, step_id=8, step_des="Here shows the Abyss Resonance effects, which enhance corresponding Operators", event_name=""
},
	[83]={ guide_id=3011, step_id=9, step_des="Here shows the Operators locked to the current BOSS, these Operators can only Challenge this BOSS for the week", event_name=""
},
	[84]={ guide_id=3011, step_id=10, step_des="You will receive a certain number of challenge attempts daily. Clearing in Tutorial mode doesn't consume any Challenge attempts, and completing challenges will not lock your deployed Operators.", event_name=""
},
	[85]={ guide_id=3021, step_id=1, step_des="Linker, you now have access to Sub-Story. Please proceed to explore.", event_name=""
},
	[86]={ guide_id=3021, step_id=2, step_des="", event_name=""
},
	[87]={ guide_id=3021, step_id=3, step_des="", event_name=""
},
	[88]={ guide_id=3021, step_id=4, step_des="Tap to enter Sub-Story", event_name=""
},
	[89]={ guide_id=3021, step_id=5, step_des="Here shows the current gameplay level. You can Tap to claim rewards after leveling up", event_name=""
},
	[90]={ guide_id=3021, step_id=6, step_des="Tap here to view current tasks for this gameplay, tasks refresh every 15 days", event_name=""
},
	[91]={ guide_id=3021, step_id=7, step_des="Tap here to access the talent system for this gameplay, increase gameplay level to earn talent points", event_name=""
},
	[92]={ guide_id=3021, step_id=8, step_des="You can start the Challenge gameplay from here.", event_name=""
},
	[93]={ guide_id=1021, step_id=1, step_des="You can view enemy information for the stage from here.", event_name=""
},
	[94]={ guide_id=1021, step_id=2, step_des="Enemies' elemental weakness is shown on the bottom right, and damage types on the left.", event_name=""
},
	[95]={ guide_id=1021, step_id=3, step_des="Tap here to return to the battle screen.", event_name=""
},
	[96]={ guide_id=1021, step_id=4, step_des="All stages have recommended lineups. From here, you can check the recommended levels and\n Feature for the stage, Tap to view detailed elemental weakness and Break effects.", event_name=""
},
	[97]={ guide_id=1022, step_id=1, step_des="You can view an overview of environmental effects here.", event_name=""
},
	[98]={ guide_id=1025, step_id=1, step_des="Linker, <color=#1792ff>Base System</color> is now open, you can start building your home!", event_name=""
},
	[99]={ guide_id=1025, step_id=2, step_des="Enter Base from here.", event_name=""
},
	[100]={ guide_id=1025, step_id=3, step_des="Heart of Flame in the Base is used to control other building constructions and upgrades.", event_name=""
},
	[101]={ guide_id=1025, step_id=4, step_des="Tap here to enter build mode.", event_name=""
},
	[102]={ guide_id=1025, step_id=5, step_des="Tap on the buildable area to construct a Power Module.", event_name=""
},
	[103]={ guide_id=1025, step_id=6, step_des="Power Module provides Electric Power, and building construction and upgrades will use Electric Power. Without enough Electric Power, you can't build or upgrade other buildings.", event_name=""
},
	[104]={ guide_id=1025, step_id=7, step_des="Tap to consume <color=#1792ff>Titanium Materials</color> to start building.", event_name=""
},
	[105]={ guide_id=1025, step_id=8, step_des="<color=#1792ff>Titanium Materials</color> are produced by the Purification Workshop, Tap here to construct it.", event_name=""
},
	[106]={ guide_id=1025, step_id=9, step_des="Purification Workshop is mainly used to produce <color=#1792ff>Titanium Materials</color>.", event_name=""
},
	[107]={ guide_id=1025, step_id=10, step_des="Tap to consume <color=#1792ff>Titanium Materials</color> to start building.", event_name=""
},
	[108]={ guide_id=1025, step_id=11, step_des="Tap on the buildable area to construct a Dorm.", event_name=""
},
	[109]={ guide_id=1025, step_id=12, step_des="The Dorm allows Operators to stay and recover fatigue. You can also DIY furniture arrangements to increase dorm comfort. Higher comfort speeds up Operators' fatigue recovery.", event_name=""
},
	[110]={ guide_id=1025, step_id=13, step_des="Tap to consume <color=#1792ff>Titanium Materials</color> to start building.", event_name=""
},
	[111]={ guide_id=1025, step_id=14, step_des="Operator Training Module can produce a large amount of <color=#1792ff>Operation EXP Report</color> used to level up Operators. Tap here to construct it.", event_name=""
},
	[112]={ guide_id=1025, step_id=15, step_des="When Operators with relevant Base skills are stationed in the Operator Training Module, production speeds up.", event_name=""
},
	[113]={ guide_id=1025, step_id=16, step_des="Tap to consume <color=#1792ff>Titanium Materials</color> to start building.", event_name=""
},
	[114]={ guide_id=1025, step_id=17, step_des="Tap here to exit build mode.", event_name=""
},
	[115]={ guide_id=1025, step_id=18, step_des="Tap the Purification Workshop again to enter it.", event_name=""
},
	[116]={ guide_id=1025, step_id=19, step_des="Here you can check production status. Stationing Operators can speed up production of <color=#1792ff>Titanium Materials</color>.", event_name=""
},
	[117]={ guide_id=1025, step_id=20, step_des="Tap here to open the station info pop-up.", event_name=""
},
	[118]={ guide_id=1025, step_id=21, step_des="Tap here to station an Operator.", event_name=""
},
	[119]={ guide_id=1025, step_id=22, step_des="Tap to select an Operator.", event_name=""
},
	[120]={ guide_id=1025, step_id=23, step_des="Here you can view an Operator's Base skills. Different Operators have different\n Base skills. Reaching certain development stages can unlock a second Base skill.", event_name=""
},
	[121]={ guide_id=1025, step_id=24, step_des="An Operator's initial fatigue value is 200. Fatigue reduces while working, and when it\n reaches 0, they'll enter a fatigued state, negating the Base skills.", event_name=""
},
	[122]={ guide_id=1025, step_id=25, step_des="Tap to confirm stationing the Operator.", event_name=""
},
	[123]={ guide_id=1025, step_id=26, step_des="Tap here to consume production robots and speed up production.", event_name=""
},
	[124]={ guide_id=1025, step_id=27, step_des="Tap here to add all current production robots.", event_name=""
},
	[125]={ guide_id=1025, step_id=28, step_des="Tap confirm to consume the corresponding number of robots to accelerate production for more items.", event_name=""
},
	[126]={ guide_id=1025, step_id=29, step_des="Tap here to return to Base.", event_name=""
},
	[127]={ guide_id=1025, step_id=30, step_des="Tap here to claim all rewards.", event_name=""
},
	[128]={ guide_id=1025, step_id=31, step_des="", event_name=""
},
	[129]={ guide_id=1025, step_id=32, step_des="Tap again to enter the Dorm and arrange for Operator station.", event_name=""
},
	[130]={ guide_id=1025, step_id=33, step_des="Tap here to furnish the dorm and increase dorm comfort.", event_name=""
},
	[131]={ guide_id=2001, step_id=1, step_des="Linker, <color=#1792ff>Duukey System</color> is open, you can now bring battle partners!", event_name=""
},
	[132]={ guide_id=2001, step_id=2, step_des="Different Duukeys provide various boosts to the team.", event_name=""
},
	[133]={ guide_id=2001, step_id=3, step_des="Tap here to unlock or carry a Duukey partner.", event_name=""
},
	[134]={ guide_id=2002, step_id=1, step_des="Linker, Promotion Train is now open! Hurry up and check it out.", event_name=""
},
	[135]={ guide_id=2002, step_id=2, step_des="", event_name=""
},
	[136]={ guide_id=2002, step_id=3, step_des="Enter Resource Preparation from here.", event_name=""
},
	[137]={ guide_id=2002, step_id=4, step_des="Tap to enter Promotion Train.", event_name=""
},
	[138]={ guide_id=2002, step_id=5, step_des="Operators with different elements need specific materials for Promotion Train.", event_name=""
},
	[139]={ guide_id=2003, step_id=1, step_des="Linker, you have obtained a <color=#1792ff>Sigil</color> in battle, hurry and install it for the Operator.", event_name=""
},
	[140]={ guide_id=2003, step_id=2, step_des="", event_name=""
},
	[141]={ guide_id=2003, step_id=3, step_des="", event_name=""
},
	[142]={ guide_id=2003, step_id=4, step_des="Tap to enter Operator Sigil system.", event_name=""
},
	[143]={ guide_id=2003, step_id=5, step_des="Tap here to install a Sigil.", event_name=""
},
	[144]={ guide_id=2003, step_id=6, step_des="Tap Enhance to enter the current Sigil cultivation screen.", event_name=""
},
	[145]={ guide_id=2003, step_id=7, step_des="Tap to add Enhance materials.", event_name=""
},
	[146]={ guide_id=2003, step_id=8, step_des="Select one Sigil Enhancer.", event_name=""
},
	[147]={ guide_id=2003, step_id=9, step_des="Tap Enhance to consume selected materials and upgrade the Sigil level.", event_name=""
},
	[148]={ guide_id=2003, step_id=10, step_des="", event_name=""
},
	[149]={ guide_id=2003, step_id=11, step_des="<color=#1792ff>Regular Sigil System</color> is now open, where you can obtain new Sigils!", event_name=""
},
	[150]={ guide_id=2003, step_id=12, step_des="Enter the Link Search interface from here.", event_name=""
},
	[151]={ guide_id=2003, step_id=13, step_des="", event_name=""
},
	[152]={ guide_id=10001, step_id=1, step_des="You can view your current Talent Points here. Increase the Battle Record to earn talent points.", event_name=""
},
	[153]={ guide_id=10001, step_id=2, step_des="Tap to view the effects of talents and the talent points needed to activate them.", event_name=""
},
	[154]={ guide_id=10001, step_id=3, step_des="You can view an overview of all activated talents from here.", event_name=""
},
	[155]={ guide_id=10002, step_id=1, step_des="The first stage of exploration requires choosing the right Campaign strategy.", event_name=""
},
	[156]={ guide_id=10003, step_id=1, step_des="Operators in exploration need to be recruited from existing Operators. Quickly choose a suitable recruitment team!", event_name=""
},
	[157]={ guide_id=10004, step_id=1, step_des="Different quality Operators require different amounts of <color=#1792ff>Logistics Points</color> for recruitment. You can see the current remaining Logistics Points from here.", event_name=""
}
}

return guide_pool