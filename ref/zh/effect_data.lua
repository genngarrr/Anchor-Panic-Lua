-- from 200 技能配置表.xlsx

local effect_data=

{
	[1001]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[100101]={ target_rule=1, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[105]%+《65》的量蝕傷害"
},
	[100104]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[115]%+《65》的量蝕傷害，且最後一擊附加自身最大生命8%的量蝕傷害"
},
	[1001041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={100104}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[115]%+《65》的量蝕傷害，且最後一擊附加自身最大生命8%的量蝕傷害"
},
	[1002]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[100201]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}攻擊提升[6]%+《35》，持續1回合；同屬性戰員效果提升40%"
},
	[100204]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{友方全體}下達{{作戰指令}}(使其傷害技能附加一段燕鷗攻擊[55]%的量蝕傷害；同屬性戰員效果提升40%)，持續2回合"
},
	[1003]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[100301]={ target_rule=5, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[135]%+《80》的轟炎傷害"
},
	[100304]={ target_rule=5, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[128]%+《65》的轟炎傷害，且敵方數量每減少1名，源能爆發傷害將提升50%，提升上限為200%"
},
	[1003041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={100304}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[128]%+《65》的轟炎傷害，且敵方數量每減少1名，源能爆發傷害將提升50%，提升上限為200%"
},
	[100303]={ target_rule=4, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對敵方生命百分比最低的單位釋放靈魂收割，造成其最大生命[[12.5]]%的真實傷害(傷害上限為瑪瑟琳攻擊的[[300]]%)"
},
	[1004]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[100]%+《60》的騁電傷害"
},
	[100401]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[160]%+《100》的騁電傷害"
},
	[100404]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[117]%+《65》的騁電傷害，且最後一擊附加2層{{感電}}，持續1回合，最多疊加5層"
},
	[1004041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={100404}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[117]%+《65》的騁電傷害，且最後一擊附加2層{{感電}}，持續1回合，最多疊加5層"
},
	[1005]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[100501]={ target_rule=5, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[135]%+《80》的轟炎傷害"
},
	[100504]={ target_rule=5, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[186]%+《90》的轟炎傷害，且每層{{戰意}}提高自身4%源能爆發傷害(技能釋放後將清空{{戰意}}層數)"
},
	[1005041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=19, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方九宮格範圍}造成自身攻擊[186]%+《90》的轟炎傷害，且每層{{戰意}}提高自身4%源能爆發傷害(技能釋放後將清空{{戰意}}層數)"
},
	[1005042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方九宮格範圍}造成自身攻擊[186]%+《90》的轟炎傷害，且每層{{戰意}}提高自身4%源能爆發傷害(技能釋放後將清空{{戰意}}層數)"
},
	[100505]={ target_rule=5, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[186]%+《90》的轟炎傷害，且每層{{戰意}}提高自身4%源能爆發傷害(技能釋放後將清空{{戰意}}層數)"
},
	[1006]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[100601]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[166]%+《100》的寒霜傷害"
},
	[100604]={ target_rule=5, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[221]%+《125》的寒霜傷害，且對{首要目標}額外造成自身攻擊35%*{{勇敢}}層數的寒霜傷害"
},
	[1006041]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=32, trigger_num={100604}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[221]%+《125》的寒霜傷害，且對{首要目標}額外造成自身攻擊35%*{{勇敢}}層數的寒霜傷害"
},
	[1007]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[100701]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[60]%+《35》的寒霜傷害"
},
	[100704]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[108]%+《65》的寒霜傷害，且首段命中有【35】%機率對目標造成{{冰凍}}(目標無法行動，且寒霜抗性降低8%)，持續1回合"
},
	[1007041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={100704}, trigger_rate=3500, is_effect_inc=1, damage_source=8, desc="對{敵方全體}造成自身攻擊[108]%+《65》的寒霜傷害，且首段命中有【35】%機率對目標造成{{冰凍}}(目標無法行動，且寒霜抗性降低8%)，持續1回合"
},
	[1007042]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,9904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[108]%+《65》的寒霜傷害，且首段命中有【35】%機率對目標造成{{冰凍}}(目標無法行動，且寒霜抗性降低8%)，持續1回合"
},
	[1008]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[100801]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[111]%+《65》的轟炎傷害"
},
	[100804]={ target_rule=5, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[124]%+《65》的轟炎傷害，且自身對{{灼傷}}層數>=4的目標暴擊機率提高60%"
},
	[1008041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={100804}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[124]%+《65》的轟炎傷害，且自身對{{灼傷}}層數>=4的目標暴擊機率提高60%"
},
	[1009]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[100901]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[160]%+《100》的轟炎傷害"
},
	[100904]={ target_rule=5, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[214]%+《125》的轟炎傷害，且消耗所有{{幻火}}，每層幻火隨機攻擊範圍內敵方，造成自身攻擊50%的轟炎傷害，被幻火攻擊的目標將額外獲得2層{{灼傷}}"
},
	[1009041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=94, trigger_num={100904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方九宮格範圍}造成自身攻擊[214]%+《125》的轟炎傷害，且消耗所有{{幻火}}，每層幻火隨機攻擊範圍內敵方，造成自身攻擊50%的轟炎傷害，被幻火攻擊的目標將額外獲得2層{{灼傷}}"
},
	[1010]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的騁電傷害"
},
	[101001]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}攻擊提升[6]%+《35》，持續1回合，並賦予1種{{音符}}"
},
	[1010011]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={101001}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}攻擊提升[6]%+《35》，持續1回合，並賦予1種{{音符}}"
},
	[101004]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[110]%+《65》的騁電傷害，且有【35】%機率對目標造成{{電音禁制}}(目標無法釋放源能爆發，且騁電抗性降低10%)，持續1回合"
},
	[1010041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={101004}, trigger_rate=3500, is_effect_inc=1, damage_source=8, desc="對{敵方全體}造成自身攻擊[110]%+《65》的騁電傷害，且有【35】%機率對目標造成{{電音禁制}}(目標無法釋放源能爆發，且騁電抗性降低10%)，持續1回合"
},
	[1011]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[100]%+《60》的騁電傷害"
},
	[101101]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[166]%+《100》的騁電傷害"
},
	[101104]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[296]%+《175》的騁電傷害，且每擊敗1名目標，自身{源能爆發}傷害提升10%，最多疊加5層"
},
	[1011041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=12, trigger_num={101104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方後排單體}造成自身攻擊[297]%+《175》的騁電傷害，且每擊敗1名目標，自身{源能爆發}傷害提升10%，最多疊加5層"
},
	[1012]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的直擊傷害"
},
	[101201]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[166]%+《100》的直擊傷害"
},
	[101204]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[303]%+《175》的直擊傷害，若擊敗目標，則自身立即獲得2層{{連擊點}}"
},
	[1012041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=12, trigger_num={101204}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方前排單體}造成自身攻擊[303]%+《175》的直擊傷害，若擊敗目標，則自身立即獲得2層{{連擊點}}"
},
	[1013]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的騁電傷害"
},
	[101301]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[166]%+《100》的騁電傷害"
},
	[101304]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[303]%+《175》的騁電傷害，且每擊敗1名目標，則自身暴擊傷害提升10%，最多疊加5層"
},
	[1013041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=12, trigger_num={101304}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方前排單體}造成自身攻擊[303]%+《175》的騁電傷害，且每擊敗1名目標，則自身暴擊傷害提升10%，最多疊加5層"
},
	[1014]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的直擊傷害"
},
	[101401]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成[111]%+《65》的直擊傷害"
},
	[101404]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成[214]%+《115》的直擊傷害，且對直線上的目標傷害依次提升20%"
},
	[1014041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={101404}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方直線四格}造成[214]%+《115》的直擊傷害，且對直線上的目標傷害依次提升20%"
},
	[1101]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[110101]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[140]%+《100》的轟炎傷害"
},
	[110104]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[256]%+《175》的轟炎傷害，若目標身上{{灼傷}}>=5層，則最後一擊有【55】%機率對目標造成{{封禁·炎}}(目標無法使用源能技和源能爆發，且轟炎抗性降低8%)，持續1回合"
},
	[1101041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={110104}, trigger_rate=5500, is_effect_inc=1, damage_source=8, desc="對{敵方對位前排單體}造成自身攻擊[256]%+《175》的轟炎傷害，若目標身上{{灼傷}}>=5層，則最後一擊有【55】%機率對目標造成{{封禁·炎}}(目標無法使用源能技和源能爆發，且轟炎抗性降低8%)，持續1回合"
},
	[1101042]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,1101041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方對位前排單體}造成自身攻擊[256]%+《175》的轟炎傷害，若目標身上{{灼傷}}>=5層，則最後一擊有【55】%機率對目標造成{{封禁·炎}}(目標無法使用源能技和源能爆發，且轟炎抗性降低8%)，持續1回合"
},
	[1102]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[110201]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[158]%+《100》的寒霜傷害"
},
	[110204]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[285]%+《175》的寒霜傷害，若目標生命高於50%，則源能爆發傷害提升20%"
},
	[1102041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={110204}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方前排單體}造成自身攻擊[285]%+《175》的寒霜傷害，若目標生命高於50%，則源能爆發傷害提升20%"
},
	[1103]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的直擊傷害"
},
	[110301]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[100]%+《65》的直擊傷害"
},
	[110304]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[181]%+《115》的直擊傷害，且對首要目標附加自身最大生命12%的直擊傷害"
},
	[1103041]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=32, trigger_num={110304}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[181]%+《115》的直擊傷害，且對首要目標附加自身最大生命12%的直擊傷害"
},
	[1104]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的生蘊傷害"
},
	[110401]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[149]%+《100》的生蘊傷害"
},
	[110404]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為{友方全體}添加{{大地護盾}}(護盾值為狄俄涅最大生命的[8]%+《65》；同屬性戰員護盾值提升40%)，持續2回合"
},
	[1105]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的直擊傷害"
},
	[110501]={ target_rule=1, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[101]%+《60》的直擊傷害"
},
	[110504]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[127]%+《65》的直擊傷害，若自身{{劍氣}}>=3層，則消耗所有劍氣，每層劍氣提升10%源能爆發傷害，且對{首要目標}傷害額外提升40%"
},
	[1105041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={110504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[127]%+《65》的直擊傷害，若自身{{劍氣}}>=3層，則消耗所有劍氣，每層劍氣提升10%源能爆發傷害，且對{首要目標}傷害額外提升40%"
},
	[1105042]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={110504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[127]%+《65》的直擊傷害，若自身{{劍氣}}>=3層，則消耗所有劍氣，每層劍氣提升10%源能爆發傷害，且對{首要目標}傷害額外提升40%"
},
	[1106]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[110601]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[147]%+《100》的寒霜傷害"
},
	[110604]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成[269]%+《175》的寒霜傷害，且首段命中有【60】%機率對目標造成{{冰凍}}(目標無法行動，且寒霜抗性降低8%)，持續1回合"
},
	[1106041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={110604}, trigger_rate=6000, is_effect_inc=1, damage_source=8, desc="對{敵方對位前排單體}造成[269]%+《175》的寒霜傷害，且首段命中有【60】%機率對目標造成{{冰凍}}(目標無法行動，且寒霜抗性降低8%)，持續1回合"
},
	[1106042]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,9904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方對位前排單體}造成[269]%+《175》的寒霜傷害，且首段命中有【60】%機率對目標造成{{冰凍}}(目標無法行動，且寒霜抗性降低8%)，持續1回合"
},
	[1107]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[110701]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{自身}激活{{護盾}}(護盾值為羚角最大生命的[8]%+《100》)，持續1回合"
},
	[110704]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}獲得1層{{能量護盾}}(護盾值為羚角最大生命的[8]%+《65》；同屬性戰員護盾值提升40%)，持續2回合"
},
	[1108]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[110801]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[158]%+《100》的轟炎傷害"
},
	[110804]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[289]%+《175》的轟炎傷害，若目標身上{{灼傷}}>=5層，則本次攻擊有【70】%機率傷害提升35%"
},
	[1108041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={110804}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="對{敵方前排單體}造成自身攻擊[289]%+《175》的轟炎傷害，若目標身上{{灼傷}}>=5層，則本次攻擊有【70】%機率傷害提升35%"
},
	[1109]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[110901]={ target_rule=1, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[97]%+《60》的寒霜傷害"
},
	[110904]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[117]%+《65》的寒霜傷害，且最後一擊有【35】%機率附加{{冰蝕}}(寒霜抗性降低15%)，持續2回合"
},
	[1109041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={110904}, trigger_rate=3500, is_effect_inc=1, damage_source=8, desc="對{敵方全體}造成自身攻擊[117]%+《65》的寒霜傷害，且最後一擊有【35】%機率附加{{冰蝕}}(寒霜抗性降低15%)，持續2回合"
},
	[1110]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的騁電傷害"
},
	[111001]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[158]%+《100》的騁電傷害"
},
	[111004]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[277]%+《175》的騁電傷害，且最後一擊有【80】%機率對目標附加其當前生命8%的騁電傷害，傷害上限為艾麗西亞攻擊的120%"
},
	[1110041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={111004}, trigger_rate=8000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[277]%+《175》的騁電傷害，且最後一擊有【80】%機率對目標附加其當前生命8%的騁電傷害，傷害上限為艾麗西亞攻擊的120%"
},
	[1111]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的直擊傷害"
},
	[111101]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[158]%+《100》的直擊傷害"
},
	[111104]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[289]%+《175》的直擊傷害，若目標存在{護盾}，則本次造成傷害提升50%"
},
	[1111041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={111104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方前排單體}造成自身攻擊[289]%+《175》的直擊傷害，若目標存在{護盾}，則本次造成傷害提升50%"
},
	[1112]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[111201]={ target_rule=26, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為{己方生命百分比最低}單位恢復斯翠涅攻擊[210]%+《80》的生命值；同屬性戰員恢復量提升40%"
},
	[111204]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為{友方全體}恢復斯翠涅攻擊[160]%+《50》的生命值；若目標生命低於50%，則本次治療效果提升25%"
},
	[1112041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={111204}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為{友方全體}恢復斯翠涅攻擊[160]%+《50》的生命值；若目標生命低於50%，則本次治療效果提升25%"
},
	[1201]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[120101]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{自身九宮格範圍}的友方攻擊提升[6]%+《30》，持續1回合；同屬性戰員效果提升40%"
},
	[120104]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[106]%+《65》的量蝕傷害，且最後一擊附加1層{{輻射}}，最多疊加4層"
},
	[1201041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={120104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[106]%+《65》的量蝕傷害，且最後一擊附加1層{{輻射}}，最多疊加4層"
},
	[1202]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[120201]={ target_rule=7, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[112]%+《70》的轟炎傷害"
},
	[120204]={ target_rule=7, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[111]%+《65》的轟炎傷害，且消耗所有{{導彈}}，每枚導彈額外對目標造成自身攻擊10%的轟炎傷害"
},
	[1202041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=19, trigger_num={120204}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[111]%+《65》的轟炎傷害，且消耗所有{{導彈}}，每枚導彈額外對目標造成自身攻擊10%的轟炎傷害"
},
	[1202042]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=44, trigger_num={1,120280}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[111]%+《65》的轟炎傷害，且消耗所有{{導彈}}，每枚導彈額外對目標造成自身攻擊10%的轟炎傷害"
},
	[1203]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的生蘊傷害"
},
	[120301]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[158]%+《100》的生蘊傷害"
},
	[120304]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[289]%+《175》的生蘊傷害，且立即觸發1次{{荊棘}}的結算傷害"
},
	[1203041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=19, trigger_num={120304}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方前排單體}造成自身攻擊[289]%+《175》的生蘊傷害，且立即觸發1次{{荊棘}}的結算傷害"
},
	[1204]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[120401]={ target_rule=1, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[96]%+《65》的轟炎傷害"
},
	[120404]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[126]%+《65》的轟炎傷害，且最後一擊有【45】%機率對目標附加1層{{煙火}}(目標轟炎抗性降低8%，且技能傷害降低6%)，持續2回合"
},
	[1204041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={120404}, trigger_rate=4500, is_effect_inc=1, damage_source=8, desc="對{敵方全體}造成自身攻擊[126]%+《65》的轟炎傷害，且最後一擊有【45】%機率對目標附加1層{{煙火}}(目標轟炎抗性降低8%，且技能傷害降低6%)，持續2回合"
},
	[1205]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[120501]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[145]%+《100》的轟炎傷害"
},
	[120504]={ target_rule=1, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[160]%+《100》的轟炎傷害，且最後一擊有【70】%機率附加自身最大生命10%的轟炎傷害"
},
	[1205041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={120504}, trigger_rate=7000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[160]%+《100》的轟炎傷害，且最後一擊有【70】%機率附加自身最大生命10%的轟炎傷害"
},
	[1206]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的騁電傷害"
},
	[120601]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[149]%+《100》的騁電傷害"
},
	[120604]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[183]%+《115》的騁電傷害，且每段攻擊有【45%】機率使目標傷害降低1.5%，最多疊加10層，持續2回合"
},
	[1206041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={120604}, trigger_rate=4500, is_effect_inc=0, damage_source=8, desc="對{敵方直線四格}造成自身攻擊[183]%+《115》的騁電傷害，且每段攻擊有【45%】機率使目標傷害降低1.5%，最多疊加10層，持續2回合"
},
	[1207]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[120701]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{自身九宮格範圍}的其他友方獲得{{同調之力}}(使其傷害技能附加一段矢車菊攻擊[32]%的量蝕傷害；同屬性戰員效果提升40%)，持續1回合"
},
	[120704]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為{友方全體}恢復自身攻擊[160]%+《50》的生命，且驅散其身上1種{減益}或{異常}效果"
},
	[1207041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=2, trigger_num={120704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為{友方全體}恢復自身攻擊[160]%+《50》的生命，且驅散其身上1種{減益}或{異常}效果"
},
	[1208]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的直擊傷害"
},
	[120801]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[148]%+《100》的直擊傷害"
},
	[120804]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[269]%+《175》的直擊傷害，且目標每有1層{{流血}}，本次攻擊提升4%，最多提升30%"
},
	[1208041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={120804}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方前排單體}造成自身攻擊[269]%+《175》的直擊傷害，且目標每有1層{{流血}}，本次攻擊提升4%，最多提升30%"
},
	[1301]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[130101]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}獲得1層{{護盾}}(護盾值為莉麗拉最大生命[5]%+《35》；同屬性戰員護盾值提升40%)，持續2回合，最多疊加3層"
},
	[130104]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}恢復莉麗拉最大生命[8]%+《65》的生命值；同屬性戰員效果提升40%"
},
	[1302]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[130201]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[154]%+《100》的轟炎傷害"
},
	[130204]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[280]%+《175》的轟炎傷害，若目標處於{{灼傷}}下，則自身防禦穿透提升20點*灼傷層數"
},
	[1302041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={130204}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方前排單體}造成自身攻擊[280]%+《175》的轟炎傷害，若目標處於{{灼傷}}下，則自身防禦穿透提升20點*灼傷層數"
},
	[1303]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[130301]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[160]%+《100》的量蝕傷害"
},
	[130304]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[196]%+《115》的量蝕傷害，若範圍內僅有1名目標，則源能爆發傷害提高80%"
},
	[1303041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={130304}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方直線四格}造成自身攻擊[196]%+《115》的量蝕傷害，若範圍內僅有1名目標，則源能爆發傷害提高80%"
},
	[1304]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[130401]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[148]%+《100》的寒霜傷害"
},
	[130404]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[269]%+《175》的寒霜傷害，且最後一擊有【50】%機率附加{{凍傷}}(目標受到寒霜傷害時有60%機率承傷加深25%)，持續2回合"
},
	[1304041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={130404}, trigger_rate=5000, is_effect_inc=1, damage_source=8, desc="對{敵方對位單體}造成自身攻擊[269]%+《175》的寒霜傷害，且最後一擊有【50】%機率附加{{凍傷}}(目標受到寒霜傷害時有60%機率承傷加深25%)，持續2回合"
},
	[1305]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的騁電傷害"
},
	[130501]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[148]%+《100》的騁電傷害"
},
	[130504]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[269]%+《175》的騁電傷害，若目標身上{{感電}}>=3層，則必定觸發{{感電}}傷害效果"
},
	[1305041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={130504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方前排單體}造成自身攻擊[269]%+《175》的騁電傷害，若目標身上{{感電}}>=3層，則必定觸發{{感電}}傷害效果"
},
	[1306]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[130601]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[158]%+《100》的寒霜傷害"
},
	[130604]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[289]%+《175》的寒霜傷害，且消耗所有{{能量}}，每層能量對目標附加自身攻擊5%的寒霜傷害"
},
	[1306041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=19, trigger_num={130604}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[289]%+《175》的寒霜傷害，且消耗所有{{能量}}，每層能量對目標附加自身攻擊5%的寒霜傷害"
},
	[1307]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[130701]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[152]%+《100》的轟炎傷害"
},
	[130704]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[187]%+《115》的轟炎傷害，且最後一擊對目標附加3層{{灼傷}}，持續2回合，最多疊加10層"
},
	[1307041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={130704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方直線四格}造成自身攻擊[187]%+《115》的轟炎傷害，且最後一擊對目標附加3層{{灼傷}}，持續2回合，最多疊加10層"
},
	[1113]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[111301]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[150]%+《100》的量蝕傷害"
},
	[111304]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[184]%+《115》的量蝕傷害，且技能釋放時有【70】%機率對目標造成{{核心鎖定}}(量蝕抗性降低18%)，持續2回合"
},
	[1113041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={111304}, trigger_rate=7000, is_effect_inc=1, damage_source=8, desc="對{敵方直線四格}造成自身攻擊[184]%+《115》的量蝕傷害，且技能釋放時有【70】%機率對目標造成{{核心鎖定}}(量蝕抗性降低18%)，持續2回合"
},
	[1015]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[100]%+《60》的生蘊傷害"
},
	[101501]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[167]%+《100》的生蘊傷害"
},
	[101504]={ target_rule=7, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="進入{{解放姿態}}並對{敵方九宮格範圍}造成自身攻擊[206]%+《125》的生蘊傷害；{{解放姿態}}持續2回合，且{解放姿態}下回合結束時自身立即獲得1層{鹿靈}"
},
	[1015041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1015806}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="進入{{解放姿態}}並對{敵方九宮格範圍}造成自身攻擊[206]%+《125》的生蘊傷害；{{解放姿態}}持續2回合，且{解放姿態}下回合結束時自身立即獲得1層{鹿靈}"
},
	[1015042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={101504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="進入{{解放姿態}}並對{敵方九宮格範圍}造成自身攻擊[206]%+《125》的生蘊傷害；{{解放姿態}}持續2回合，且{解放姿態}下回合結束時自身立即獲得1層{鹿靈}"
},
	[1015043]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="進入{{解放姿態}}並對{敵方九宮格範圍}造成自身攻擊[206]%+《125》的生蘊傷害；{{解放姿態}}持續2回合，且{解放姿態}下回合結束時自身立即獲得1層{鹿靈}"
},
	[1015044]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={101504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="進入{{解放姿態}}並對{敵方九宮格範圍}造成自身攻擊[206]%+《125》的生蘊傷害；{{解放姿態}}持續2回合，且{解放姿態}下回合結束時自身立即獲得1層{鹿靈}"
},
	[101503]={ target_rule=7, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成等同於自身攻擊[20]*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%"
},
	[1015031]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=5, trigger_num={101503}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方九宮格範圍}造成等同於自身攻擊[20]*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%"
},
	[1016]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[100]%+《60》的量蝕傷害"
},
	[101601]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[168]%+《100》的量蝕傷害"
},
	[101604]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="蒂雅進入{{觀星狀態}}並賦予{敵方全體}1層{{星辰印記}}(目標行動結束後將受到來自蒂雅的星光墜擊，傷害為蒂雅攻擊的[151]%)，持續2回合"
},
	[1016041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=152, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="蒂雅進入{{觀星狀態}}並賦予{敵方全體}1層{{星辰印記}}(目標行動結束後將受到來自蒂雅的星光墜擊，傷害為蒂雅攻擊的[151]%)，持續2回合"
},
	[1016043]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=152, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="蒂雅進入{{觀星狀態}}並賦予{敵方全體}1層{{星辰印記}}(目標行動結束後將受到來自蒂雅的星光墜擊，傷害為蒂雅攻擊的[151]%)，持續2回合"
},
	[1016042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={101604}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="蒂雅進入{{觀星狀態}}並賦予{敵方全體}1層{{星辰印記}}(目標行動結束後將受到來自蒂雅的星光墜擊，傷害為蒂雅攻擊的[151]%)，持續2回合"
},
	[101603]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對敵方生命最低單位進行致命打擊，每顆星辰提供蒂雅攻擊[30]%的量蝕傷害並附加目標已損失生命[[6]]%的真實傷害(上限為蒂雅攻擊的120%)"
},
	[1016031]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={101603}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對敵方生命最低單位進行致命打擊，每顆星辰提供蒂雅攻擊[30]%的量蝕傷害並附加目標已損失生命[[6]]%的真實傷害(上限為蒂雅攻擊的120%)"
},
	[1017]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[101701]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[154]%+《100》的轟炎傷害"
},
	[101704]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="魁霎釋放{{玩偶}}，為{友方全體}(自身除外)分擔其所受傷害的[26]%，持續2回合；且該狀態下，友方全體傷害減免提升5%"
},
	[101703]={ target_rule=27, damage_area=11, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{玩偶}狀態下，若自身首次生命低於20%(鎖血)，則對敵方場上生命百分比最高的目標進行生命汲取(目標生命損失30%，上限為魁霎最大生命的30%)，回復自身10%的最大生命"
},
	[1017031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{玩偶}狀態下，若自身首次生命低於20%(鎖血)，則對敵方場上生命百分比最高的目標進行生命汲取(目標生命損失30%，上限為魁霎最大生命的30%)，回復自身10%的最大生命"
},
	[1018]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的騁電傷害"
},
	[101801]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為{友方全體}施加守護印記(使其在場時為友方提供[6]%傷害減免和12%護盾增強)，持續1回合"
},
	[101804]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{友方全體}(自身除外)施加電磁護盾(護盾值為自身最大生命的[10]%+《65》，且目標防禦提升磐雷防禦的20%)，持續2回合；若為同屬性戰員，則額外提供電磁穿透效果(目標無視防禦提高15%)，持續2回合"
},
	[1018045]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=35, trigger_num={1,101804}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{友方全體}(自身除外)施加電磁護盾(護盾值為自身最大生命的[10]%+《65》，且目標防禦提升磐雷防禦的20%)，持續2回合；若為同屬性戰員，則額外提供電磁穿透效果(目標無視防禦提高15%)，持續2回合"
},
	[1018041]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{友方全體}(自身除外)施加電磁護盾(護盾值為自身最大生命的[10]%+《65》，且目標防禦提升磐雷防禦的20%)，持續2回合；若為同屬性戰員，則額外提供電磁穿透效果(目標無視防禦提高15%)，持續2回合"
},
	[101803]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="{{磁化壁壘}}消耗時，將對攻擊方造成自身最大生命[8]%的騁電傷害"
},
	[1018031]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{{磁化壁壘}}消耗時，將對攻擊方造成自身最大生命[8]%的騁電傷害"
},
	[101805]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="{{磁化壁壘}}消耗時，將對敵方全體造成自身最大生命[8]%的騁電傷害"
},
	[1018051]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{{磁化壁壘}}消耗時，將對敵方全體造成自身最大生命[8]%的騁電傷害"
},
	[1019]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[101901]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{友方全體}施加治療，治療量為霜瓊攻擊的[100]%+《35》；若為同屬性戰員，則額外提供1層基礎治療量80%的{{護盾}}，持續2回合"
},
	[1019011]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{友方全體}施加治療，治療量為霜瓊攻擊的[100]%+《35》；若為同屬性戰員，則額外提供1層基礎治療量80%的{{護盾}}，持續2回合"
},
	[101904]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1019041]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1019042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1019043]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=154, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1019044]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1019045]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1019046]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1019047]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1019048]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1019049]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="使{友方全體}回復霜瓊攻擊[185]%+《65》的生命，同時展開冰霜領域(領域內的1名友方在受到致命傷害時將免疫傷害並凍結，且回合內後續承傷為0，回合結束時凍結解除並回復霜瓊攻擊200%的生命值。凍結過的目標攻擊提升霜瓊攻擊的8%且在3回合內無法再次被凍結)，持續2回合"
},
	[1020]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[102001]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊力[170]%+《100》的寒霜傷害，且最後一擊附加2層{{漸凍}}，持續2回合，最多叠加6層"
},
	[1020011]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={102001}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊力[170]%+《100》的寒霜傷害，且最後一擊附加2層{{漸凍}}，持續2回合，最多叠加6層"
},
	[102004]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊力[308]%+《175》的寒霜傷害，若目標{{漸凍}}>=6層，則自身對其傷害提高30%"
},
	[1020041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={102004}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方對位前排單體}造成自身攻擊力[308]%+《175》的寒霜傷害，若目標{{漸凍}}>=6層，則自身對其傷害提高30%"
},
	[102003]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="追加1次斬擊，對首要目標造成自身攻擊90%的寒霜傷害，該效果對于護盾目標傷害提升60%"
},
	[102005]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="追加1次斬擊，對敵方全體造成自身攻擊90%的寒霜傷害，該效果對于護盾目標傷害提升60%"
},
	[1021]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的生蘊傷害"
},
	[102101]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[157]%+《100》的生蘊傷害"
},
	[102104]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={102104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="危峭進入爆氣狀態並為友方全體開啟守護效果，持續2回合。該狀態下友方全體防禦提升10%，且受到攻擊傷害時(普攻除外)，危峭會對攻擊者發動反擊，造成自身攻擊[178]%的生蘊傷害，最多反擊3次。"
},
	[1021041]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="危峭進入爆氣狀態並為友方全體開啟守護效果，持續2回合。該狀態下友方全體防禦提升10%，且受到攻擊傷害時(普攻除外)，危峭會對攻擊者發動反擊，造成自身攻擊[178]%的生蘊傷害，最多反擊3次。"
},
	[1021042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="危峭進入爆氣狀態並為友方全體開啟守護效果，持續2回合。該狀態下友方全體防禦提升10%，且受到攻擊傷害時(普攻除外)，危峭會對攻擊者發動反擊，造成自身攻擊[178]%的生蘊傷害，最多反擊3次。"
},
	[1021043]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=155, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="危峭進入爆氣狀態並為友方全體開啟守護效果，持續2回合。該狀態下友方全體防禦提升10%，且受到攻擊傷害時(普攻除外)，危峭會對攻擊者發動反擊，造成自身攻擊[178]%的生蘊傷害，最多反擊3次。"
},
	[1021044]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="危峭進入爆氣狀態並為友方全體開啟守護效果，持續2回合。該狀態下友方全體防禦提升10%，且受到攻擊傷害時(普攻除外)，危峭會對攻擊者發動反擊，造成自身攻擊[178]%的生蘊傷害，最多反擊3次。"
},
	[102103]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="造成自身攻擊[178]%的生蘊傷害，最多反擊3次。"
},
	[1022]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[100]%+《60》的直擊傷害"
},
	[102201]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[168]%+《100》的直擊傷害"
},
	[102204]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為友方全體施加{賞金追蹤}效果，使其攻擊提升[10]%+《65》，持續2回合；同屬性戰員效果提升40%。此外，擁有{賞金追蹤}效果的友方在源能爆發攻擊時對敵方附加2層{賞金}，持續2回合，最多疊加8層"
},
	[1022041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為友方全體施加{賞金追蹤}效果，使其攻擊提升[10]%+《65》，持續2回合；同屬性戰員效果提升40%。此外，擁有{賞金追蹤}效果的友方在源能爆發攻擊時對敵方附加2層{賞金}，持續2回合，最多疊加8層"
},
	[1022042]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="為友方全體施加{賞金追蹤}效果，使其攻擊提升[10]%+《65》，持續2回合；同屬性戰員效果提升40%。此外，擁有{賞金追蹤}效果的友方在源能爆發攻擊時對敵方附加2層{賞金}，持續2回合，最多疊加8層"
},
	[102203]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對敵方全體發動1次{榴彈射擊}，造成自身攻擊[100]%的直擊傷害"
},
	[102205]={ target_rule=27, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對敵方橫向兩排發動1次{掩護射擊}，造成自身攻擊[[80]]%的直擊傷害，且對首要目標傷害加深2%*{賞金}層數"
},
	[1023]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的騁電傷害"
},
	[102301]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊力[176]%+《100》的騁電傷害"
},
	[102304]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成[320]%+《175》的騁電傷害，且目標每存在1層{{感電}}，自身對其傷害額外提高2.5%；若釋放源能爆發時自身處於{霆淵之境}，則源能爆發進化為全體傷害，但對首要目標外的傷害繼承係數為50%"
},
	[1023041]={ target_rule=10, damage_area=1, damage_num=0, trigger_type=0, trigger_num={102304}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方對位前排單體}造成[320]%+《175》的騁電傷害，且目標每存在1層{{感電}}，自身對其傷害額外提高2.5%；若釋放源能爆發時自身處於{霆淵之境}，則源能爆發進化為全體傷害，但對首要目標外的傷害繼承係數為50%"
},
	[1023042]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方對位前排單體}造成[320]%+《175》的騁電傷害，且目標每存在1層{{感電}}，自身對其傷害額外提高2.5%；若釋放源能爆發時自身處於{霆淵之境}，則源能爆發進化為全體傷害，但對首要目標外的傷害繼承係數為50%"
},
	[1023043]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=5, trigger_num={102305}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="若釋放源能爆發時自身處於{霆淵之境}，則源能爆發進化為全體傷害，但對首要目標外的傷害繼承係數為50%"
},
	[102305]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="若釋放源能爆發時自身處於{霆淵之境}，則源能爆發進化為全體傷害，但對首要目標外的傷害繼承係數為50%"
},
	[1024]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[100]%+《60》的生蘊傷害"
},
	[102401]={ target_rule=7, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[105]%+《65》的生蘊傷害"
},
	[102404]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[116]%+《65》的生蘊傷害，且最後一擊附加1層{{蘊蝕}}，持續2回合，最多疊加5層；此外，源能爆發對首要目標有【80】%幾率附加{纏尾}(處於該效果下的敵方在下次行動時將會被扣除1格能量)，持續至角色流程結束"
},
	[1024041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={102404}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[116]%+《65》的生蘊傷害，且最後一擊附加1層{{蘊蝕}}，持續2回合，最多疊加5層；此外，源能爆發對首要目標有【80】%幾率附加{纏尾}(處於該效果下的敵方在下次行動時將會被扣除1格能量)，持續至角色流程結束"
},
	[1024042]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=17, trigger_num={102404}, trigger_rate=8000, is_effect_inc=1, damage_source=8, desc="對{敵方全體}造成自身攻擊[116]%+《65》的生蘊傷害，且最後一擊附加1層{{蘊蝕}}，持續2回合，最多疊加5層；此外，源能爆發對首要目標有【80】%幾率附加{纏尾}(處於該效果下的敵方在下次行動時將會被扣除1格能量)，持續至角色流程結束"
},
	[1024043]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[116]%+《65》的生蘊傷害，且最後一擊附加1層{{蘊蝕}}，持續2回合，最多疊加5層；此外，源能爆發對首要目標有【80】%幾率附加{纏尾}(處於該效果下的敵方在下次行動時將會被扣除1格能量)，持續至角色流程結束"
},
	[1025]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[100]%+《60》的寒霜傷害"
},
	[102501]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊力[165]%+《100》的寒霜傷害"
},
	[102504]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="輝月立即獲得2枚{月刃}並在場景中創造持續2回合的{滿月輝境}。{滿月輝境}中的友方在受到技能傷害時有[24]%幾率使輝月獲得1枚{月刃}，{月刃}最多可存在5枚"
},
	[1025041]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=69, trigger_num={}, trigger_rate=2400, is_effect_inc=0, damage_source=8, desc="輝月立即獲得2枚{月刃}並在場景中創造持續2回合的{滿月輝境}。{滿月輝境}中的友方在受到技能傷害時有[24]%幾率使輝月獲得1枚{月刃}，{月刃}最多可存在5枚"
},
	[1025042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="輝月立即獲得2枚{月刃}並在場景中創造持續2回合的{滿月輝境}。{滿月輝境}中的友方在受到技能傷害時有[24]%幾率使輝月獲得1枚{月刃}，{月刃}最多可存在5枚"
},
	[1025043]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1025041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="輝月立即獲得2枚{月刃}並在場景中創造持續2回合的{滿月輝境}。{滿月輝境}中的友方在受到技能傷害時有[24]%幾率使輝月獲得1枚{月刃}，{月刃}最多可存在5枚"
},
	[1025044]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={102504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="輝月立即獲得2枚{月刃}並在場景中創造持續2回合的{滿月輝境}。{滿月輝境}中的友方在受到技能傷害時有[24]%幾率使輝月獲得1枚{月刃}，{月刃}最多可存在5枚"
},
	[102503]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{月刃}消耗滿5枚時，輝月會移除自身所有控制效果並展開{月華}，承受敵方普攻和技能傷害，{月華}的承受傷害上限為5枚{月刃的}吸收傷害總和 + 輝月最大生命的[20]%，持續2回合"
},
	[1025031]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{月刃}消耗滿5枚時，輝月會移除自身所有控制效果並展開{月華}，承受敵方普攻和技能傷害，{月華}的承受傷害上限為5枚{月刃的}吸收傷害總和 + 輝月最大生命的[20]%，持續2回合"
},
	[1026]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[100]%+《60》的轟炎傷害"
},
	[102601]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊力[165]%+《100》的轟炎傷害"
},
	[102604]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[125]%+《65》%的轟炎傷害，且最後一擊附加1層{{灼傷}}，持續2回合，最多疊加10層；此外，克裡安卡會牽引{焰苗}層數最多的敵人至最前排(位置與克裡安卡同行)，若該位置存在其他敵人則將其與牽引物件交換位置"
},
	[1026041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={102604}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[125]%+《65》%的轟炎傷害，且最後一擊附加1層{{灼傷}}，持續2回合，最多疊加10層；此外，克裡安卡會牽引{焰苗}層數最多的敵人至最前排(位置與克裡安卡同行)，若該位置存在其他敵人則將其與牽引物件交換位置"
},
	[1026042]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=2, trigger_num={102604}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[125]%+《65》%的轟炎傷害，且最後一擊附加1層{{灼傷}}，持續2回合，最多疊加10層；此外，克裡安卡會牽引{焰苗}層數最多的敵人至最前排(位置與克裡安卡同行)，若該位置存在其他敵人則將其與牽引物件交換位置"
},
	[1027]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位前排单体}造成自身攻击[100]%+《60》的寒霜伤害"
},
	[102701]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位前排单体}造成自身攻击[167]%+《100》的寒霜伤害"
},
	[102704]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位前排单体}造成自身攻击[292]%+《175》的寒霜伤害，若目标{{渐冻}}>=4层，则本次源能爆发伤害提升15%"
},
	[1027041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={102704,102703}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{敌方对位前排单体}造成自身攻击[292]%+《175》的寒霜伤害，若目标{{渐冻}}>=4层，则本次源能爆发伤害提升15%"
},
	[102703]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="谴罚满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害无法被抵挡(抵挡盾无法触发)"
},
	[1028]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位单体}造成自身攻击[100]%+《60》的直击伤害"
},
	[102801]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}附加1层{云蔽翳}(护盾值为云篆最大生命的[8]%)，持续2回合，最多叠加2层；护盾存在期间，目标受到的溢出治疗量将转化为{云蔽翳}的护盾值"
},
	[1028011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=48, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}附加1层{云蔽翳}(护盾值为云篆最大生命的[8]%)，持续2回合，最多叠加2层；护盾存在期间，目标受到的溢出治疗量将转化为{云蔽翳}的护盾值"
},
	[102804]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆请来{混元阵图}，使友方全体获得[14]%的格挡几率并获得1层{云蔽翳}，持续2回合。阵图展开期间，友方受到技能攻击时有[16]%几率使云篆获得1层{爻辞}，且回合结束时自身额外获得1层{爻辞}"
},
	[1028041]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=69, trigger_num={}, trigger_rate=1600, is_effect_inc=0, damage_source=8, desc="云篆请来{混元阵图}，使友方全体获得[14]%的格挡几率并获得1层{云蔽翳}，持续2回合。阵图展开期间，友方受到技能攻击时有[16]%几率使云篆获得1层{爻辞}，且回合结束时自身额外获得1层{爻辞}"
},
	[1028042]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1028041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆请来{混元阵图}，使友方全体获得[14]%的格挡几率并获得1层{云蔽翳}，持续2回合。阵图展开期间，友方受到技能攻击时有[16]%几率使云篆获得1层{爻辞}，且回合结束时自身额外获得1层{爻辞}"
},
	[1028043]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={102804}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆请来{混元阵图}，使友方全体获得[14]%的格挡几率并获得1层{云蔽翳}，持续2回合。阵图展开期间，友方受到技能攻击时有[16]%几率使云篆获得1层{爻辞}，且回合结束时自身额外获得1层{爻辞}"
},
	[1028044]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={102804}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆请来{混元阵图}，使友方全体获得[14]%的格挡几率并获得1层{云蔽翳}，持续2回合。阵图展开期间，友方受到技能攻击时有[16]%几率使云篆获得1层{爻辞}，且回合结束时自身额外获得1层{爻辞}"
},
	[1028045]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆请来{混元阵图}，使友方全体获得[14]%的格挡几率并获得1层{云蔽翳}，持续2回合。阵图展开期间，友方受到技能攻击时有[16]%几率使云篆获得1层{爻辞}，且回合结束时自身额外获得1层{爻辞}"
},
	[102803]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=0, desc="云篆激活{浮图}中断目标战斗流程并对其附加1层{箓术}"
},
	[102805]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆受到技能攻击时将会对攻击方造成自身最大生命5%的真实伤害"
},
	[1029]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位单体}造成自身攻击[100]%+《60》的骋电伤害"
},
	[102901]={ target_rule=1, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方横向两排}造成自身攻击[93]%+《60》的骋电伤害"
},
	[102904]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方全体}造成自身攻击[118]%+《65》的骋电伤害，且立即触发1次静电球的放电"
},
	[1029041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={102904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{敌方全体}造成自身攻击[118]%+《65》的骋电伤害，且立即触发1次静电球的放电"
},
	[1029042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={102904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{敌方全体}造成自身攻击[118]%+《65》的骋电伤害，且立即触发1次静电球的放电"
},
	[1029043]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,1029902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{敌方全体}造成自身攻击[118]%+《65》的骋电伤害，且立即触发1次静电球的放电"
},
	[102903]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="静电球的放电"
},
	[1030]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位前排单体}造成自身攻击[100]%+《60》的轰炎伤害"
},
	[103001]={ target_rule=7, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方横向一排}造成自身攻击[141]%+《80》的轰炎伤害"
},
	[103004]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方全体}造成自身攻击[127]+《65》%的轰炎伤害，且对首要目标伤害提升{{灼伤}}层数*10%"
},
	[1030041]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=10, trigger_num={103004}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{敌方全体}造成自身攻击[127]+《65》%的轰炎伤害，且对首要目标伤害提升{{灼伤}}层数*10%"
},
	[103003]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="秘刃·绯红闪，对敌方全体造成自身攻击80%的轰炎伤害"
},
	[103005]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="秘刃·焚绝黄泉，对敌方全体造成自身攻击60%的轰炎伤害，对首要目标伤害额外提升{{灼伤}}层数*[5]%"
},
	[1031]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方后排单体}造成自身攻击[100]%+《60》的轰炎伤害"
},
	[103101]={ target_rule=2, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方横向一排}造成自身攻击[126]%+《80》的轰炎伤害"
},
	[103104]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="珂芙尼尔获得{灵魂丝结}并对{敌方全体}造成自身攻击[113]%+《65》的轰炎伤害，且首段命中时对目标附加{代价}(目标受到该效果时有【35】%几率立即损失当前源能的50%，且自身源能技将损毁敌方最大源能的25%，无法驱散)，持续2回合"
},
	[1031041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="珂芙尼尔获得{灵魂丝结}并对{敌方全体}造成自身攻击[113]%+《65》的轰炎伤害，且首段命中时对目标附加{代价}(目标受到该效果时有【35】%几率立即损失当前源能的50%，且自身源能技将损毁敌方最大源能的25%，无法驱散)，持续2回合"
},
	[1031042]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={103104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="珂芙尼尔获得{灵魂丝结}并对{敌方全体}造成自身攻击[113]%+《65》的轰炎伤害，且首段命中时对目标附加{代价}(目标受到该效果时有【35】%几率立即损失当前源能的50%，且自身源能技将损毁敌方最大源能的25%，无法驱散)，持续2回合"
},
	[1031043]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={103104}, trigger_rate=3500, is_effect_inc=1, damage_source=8, desc="珂芙尼尔获得{灵魂丝结}并对{敌方全体}造成自身攻击[113]%+《65》的轰炎伤害，且首段命中时对目标附加{代价}(目标受到该效果时有【35】%几率立即损失当前源能的50%，且自身源能技将损毁敌方最大源能的25%，无法驱散)，持续2回合"
},
	[1031044]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="珂芙尼尔获得{灵魂丝结}并对{敌方全体}造成自身攻击[113]%+《65》的轰炎伤害，且首段命中时对目标附加{代价}(目标受到该效果时有【35】%几率立即损失当前源能的50%，且自身源能技将损毁敌方最大源能的25%，无法驱散)，持续2回合"
},
	[1031045]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="珂芙尼尔获得{灵魂丝结}并对{敌方全体}造成自身攻击[113]%+《65》的轰炎伤害，且首段命中时对目标附加{代价}(目标受到该效果时有【35】%几率立即损失当前源能的50%，且自身源能技将损毁敌方最大源能的25%，无法驱散)，持续2回合"
},
	[1032]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位前排单体}造成自身攻击[100]%+《60》的生蕴伤害"
},
	[103201]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位前排单体}造成自身攻击[167]%+《100》的生蕴伤害"
},
	[103204]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="聆风对{敌方对位前排单体}造成自身攻击[298]%+《175》的生蕴伤害，然后立即获得2层{气旋}"
},
	[1032041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103204}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="聆风对{敌方对位前排单体}造成自身攻击[298]%+《175》的生蕴伤害，然后立即获得2层{气旋}"
},
	[103203]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对随机一个友方战员释放{季风}"
},
	[1032031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103203}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对随机一个友方战员释放{季风}"
},
	[1033]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位单体}造成自身攻击[100]%+《60》的量蚀伤害"
},
	[103301]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位单体}造成自身攻击[158]%+《100》的量蚀伤害"
},
	[103304]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="泽菲琳吸收祝福之力进入{唤星圣灵}形态，能力大幅提升（攻击提升50%，源能获取效率提升100%，免疫控制且无法被中断战斗流程），持续时间无限，死亡时不会退出该形态；若已处于{唤星圣灵}形态，源能爆发进化==自身对{敌方全体}造成自身攻击[127]%+《65》的量蚀伤害，且首段命中时对首要目标附加{金丝之锁}(目标接下来受到的3次技能伤害将无法被护盾、结界吸收，且无法触发分担效果)，持续2回合，{金丝之锁}无法被驱散；当源能爆发进化技能释放完成后，将退出{唤星圣灵}形态，且为友方全体附加1层{金羽庇护}"
},
	[1033041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103304}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳吸收祝福之力进入{唤星圣灵}形态，能力大幅提升（攻击提升50%，源能获取效率提升100%，免疫控制且无法被中断战斗流程），持续时间无限，死亡时不会退出该形态；若已处于{唤星圣灵}形态，源能爆发进化==自身对{敌方全体}造成自身攻击[127]%+《65》的量蚀伤害，且首段命中时对首要目标附加{金丝之锁}(目标接下来受到的3次技能伤害将无法被护盾、结界吸收，且无法触发分担效果)，持续2回合，{金丝之锁}无法被驱散；当源能爆发进化技能释放完成后，将退出{唤星圣灵}形态，且为友方全体附加1层{金羽庇护}"
},
	[1033042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103304}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳吸收祝福之力进入{唤星圣灵}形态，能力大幅提升（攻击提升50%，源能获取效率提升100%，免疫控制且无法被中断战斗流程），持续时间无限，死亡时不会退出该形态；若已处于{唤星圣灵}形态，源能爆发进化==自身对{敌方全体}造成自身攻击[127]%+《65》的量蚀伤害，且首段命中时对首要目标附加{金丝之锁}(目标接下来受到的3次技能伤害将无法被护盾、结界吸收，且无法触发分担效果)，持续2回合，{金丝之锁}无法被驱散；当源能爆发进化技能释放完成后，将退出{唤星圣灵}形态，且为友方全体附加1层{金羽庇护}"
},
	[103305]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身对{敌方全体}造成自身攻击[127]%+《65》的量蚀伤害，且首段命中时对首要目标附加{金丝之锁}(目标接下来受到的3次技能伤害将无法被护盾、结界吸收，且无法触发分担效果)，持续2回合，{金丝之锁}无法被驱散；当源能爆发进化技能释放完成后，将退出{唤星圣灵}形态，且为友方全体施加1层{金羽庇护}"
},
	[1033051]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=17, trigger_num={103305}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身对{敌方全体}造成自身攻击[127]%+《65》的量蚀伤害，且首段命中时对首要目标附加{金丝之锁}(目标接下来受到的3次技能伤害将无法被护盾、结界吸收，且无法触发分担效果)，持续2回合，{金丝之锁}无法被驱散；当源能爆发进化技能释放完成后，将退出{唤星圣灵}形态，且为友方全体施加1层{金羽庇护}"
},
	[1033052]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103305}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身对{敌方全体}造成自身攻击[127]%+《65》的量蚀伤害，且首段命中时对首要目标附加{金丝之锁}(目标接下来受到的3次技能伤害将无法被护盾、结界吸收，且无法触发分担效果)，持续2回合，{金丝之锁}无法被驱散；当源能爆发进化技能释放完成后，将退出{唤星圣灵}形态，且为友方全体施加1层{金羽庇护}"
},
	[1033053]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103305}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身对{敌方全体}造成自身攻击[127]%+《65》的量蚀伤害，且首段命中时对首要目标附加{金丝之锁}(目标接下来受到的3次技能伤害将无法被护盾、结界吸收，且无法触发分担效果)，持续2回合，{金丝之锁}无法被驱散；当源能爆发进化技能释放完成后，将退出{唤星圣灵}形态，且为友方全体施加1层{金羽庇护}"
},
	[1033054]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103305}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身对{敌方全体}造成自身攻击[127]%+《65》的量蚀伤害，且首段命中时对首要目标附加{金丝之锁}(目标接下来受到的3次技能伤害将无法被护盾、结界吸收，且无法触发分担效果)，持续2回合，{金丝之锁}无法被驱散；当源能爆发进化技能释放完成后，将退出{唤星圣灵}形态，且为友方全体施加1层{金羽庇护}"
},
	[1033055]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身对{敌方全体}造成自身攻击[127]%+《65》的量蚀伤害，且首段命中时对首要目标附加{金丝之锁}(目标接下来受到的3次技能伤害将无法被护盾、结界吸收，且无法触发分担效果)，持续2回合，{金丝之锁}无法被驱散；当源能爆发进化技能释放完成后，将退出{唤星圣灵}形态，且为友方全体施加1层{金羽庇护}"
},
	[1034]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位单体}造成自身攻击[100]%+《60》的寒霜伤害"
},
	[103401]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位单体}造成自身攻击[160]%+《100》的寒霜伤害"
},
	[103404]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方全体}造成自身攻击[128]%+《65》的寒霜伤害，且首段命中时对目标附加{伤寒效果}(目标寒霜抗性降低8%，伤害减免降低15%），持续2回合"
},
	[1034041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={103404}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{敌方全体}造成自身攻击[128]%+《65》的寒霜伤害，且首段命中时对目标附加{伤寒效果}(目标寒霜抗性降低8%，伤害减免降低15%），持续2回合"
},
	[103403]={ target_rule=26, damage_area=12, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="附身"
},
	[1034032]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="附身"
},
	[1034037]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="附身"
},
	[103405]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="附身"
},
	[1035]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方对位单体}造成自身攻击[100]%+《60》的量蚀伤害"
},
	[103501]={ target_rule=7, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方直线四格}造成自身攻击[108]%+《65》的量蚀伤害"
},
	[103504]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方全体}造成自身攻击[125]%+《65》的量蚀伤害，且最后一击对首要目标施加{次元绝境}(将目标从战场上放逐一段时间，持续至目标下次行动结束），该效果无法对唯一单位和首领单位生效；蔷薇分身存在时，源能爆发对首要目标的伤害将提高100%"
},
	[1035041]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{敌方全体}造成自身攻击[125]%+《65》的量蚀伤害，且最后一击对首要目标施加{次元绝境}(将目标从战场上放逐一段时间，持续至目标下次行动结束），该效果无法对唯一单位和首领单位生效；蔷薇分身存在时，源能爆发对首要目标的伤害将提高100%"
},
	[1035042]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{敌方全体}造成自身攻击[125]%+《65》的量蚀伤害，且最后一击对首要目标施加{次元绝境}(将目标从战场上放逐一段时间，持续至目标下次行动结束），该效果无法对唯一单位和首领单位生效；蔷薇分身存在时，源能爆发对首要目标的伤害将提高100%"
},
	[103503]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方全体}造成自身攻击[80]%的量蚀伤害"
},
	[1036]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方前排单体}造成自身攻击[100]%+《60》的生蕴伤害"
},
	[103601]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}进行治疗，为其回复弦枝攻击[92]%的生命，且驱散身上1种负面效果"
},
	[1036011]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={103601}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}进行治疗，为其回复弦枝攻击[92]%的生命，且驱散身上1种负面效果"
},
	[103604]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}进行治疗，为其回复弦枝攻击[178]%的生命；该技能释放时若目标受到控制，则驱散目标控制效果，否则为目标提供10%的攻击加成，持续2回合"
},
	[1036041]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={103604}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}进行治疗，为其回复弦枝攻击[178]%的生命；该技能释放时若目标受到控制，则驱散目标控制效果，否则为目标提供10%的攻击加成，持续2回合"
},
	[1036042]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=2, trigger_num={103604}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}进行治疗，为其回复弦枝攻击[178]%的生命；该技能释放时若目标受到控制，则驱散目标控制效果，否则为目标提供10%的攻击加成，持续2回合"
},
	[103603]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="受到致命伤回血 并中断敌方行动"
},
	[1037]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="对{敌方后排单体}造成自身攻击[100]%+《60》的骋电伤害"
},
	[103701]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}进行治疗，为其回复鸣晔攻击[98]%的生命且自身获得4层{瑶光}"
},
	[1037011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103701}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}进行治疗，为其回复鸣晔攻击[98]%的生命且自身获得4层{瑶光}"
},
	[103702]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="对{友方全体}进行治疗，为其回复鸣晔攻击[98]%的生命且自身获得4层{瑶光}"
},
	[1037021]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="对{友方全体}进行治疗，为其回复鸣晔攻击[98]%的生命且自身获得4层{瑶光}"
},
	[103704]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="鸣晔使用玉珏鼓舞友方全体，使其回复鸣晔攻击[186]%的生命，同时攻击提升鸣晔攻击的[10]%，持续2回合；同时为1名友方单位塑造{灵颜}(优先序列-爆伤最高>攻击最高，使其获得以下效果：免疫所有控制和打断效果；清除并免疫源能获取效率下降；被敌方选为首要目标时受到的所有类型伤害降低50%，且受到致命伤害时将消耗{灵颜}并锁血至1点持续至当前回合行动结束，若已行动过，则锁血时间仅限当前伤害流程，同时中断敌方本次行动)，持续2回合"
},
	[1037041]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={103704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="鸣晔使用玉珏鼓舞友方全体，使其回复鸣晔攻击[186]%的生命，同时攻击提升鸣晔攻击的[10]%，持续2回合；同时为1名友方单位塑造{灵颜}(优先序列-爆伤最高>攻击最高，使其获得以下效果：免疫所有控制和打断效果；清除并免疫源能获取效率下降；被敌方选为首要目标时受到的所有类型伤害降低50%，且受到致命伤害时将消耗{灵颜}并锁血至1点持续至当前回合行动结束，若已行动过，则锁血时间仅限当前伤害流程，同时中断敌方本次行动)，持续2回合"
},
	[1037042]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={103704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="鸣晔使用玉珏鼓舞友方全体，使其回复鸣晔攻击[186]%的生命，同时攻击提升鸣晔攻击的[10]%，持续2回合；同时为1名友方单位塑造{灵颜}(优先序列-爆伤最高>攻击最高，使其获得以下效果：免疫所有控制和打断效果；清除并免疫源能获取效率下降；被敌方选为首要目标时受到的所有类型伤害降低50%，且受到致命伤害时将消耗{灵颜}并锁血至1点持续至当前回合行动结束，若已行动过，则锁血时间仅限当前伤害流程，同时中断敌方本次行动)，持续2回合"
},
	[1037043]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="鸣晔使用玉珏鼓舞友方全体，使其回复鸣晔攻击[186]%的生命，同时攻击提升鸣晔攻击的[10]%，持续2回合；同时为1名友方单位塑造{灵颜}(优先序列-爆伤最高>攻击最高，使其获得以下效果：免疫所有控制和打断效果；清除并免疫源能获取效率下降；被敌方选为首要目标时受到的所有类型伤害降低50%，且受到致命伤害时将消耗{灵颜}并锁血至1点持续至当前回合行动结束，若已行动过，则锁血时间仅限当前伤害流程，同时中断敌方本次行动)，持续2回合"
},
	[1037044]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=44, trigger_num={1,1037042}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="鸣晔使用玉珏鼓舞友方全体，使其回复鸣晔攻击[186]%的生命，同时攻击提升鸣晔攻击的[10]%，持续2回合；同时为1名友方单位塑造{灵颜}(优先序列-爆伤最高>攻击最高，使其获得以下效果：免疫所有控制和打断效果；清除并免疫源能获取效率下降；被敌方选为首要目标时受到的所有类型伤害降低50%，且受到致命伤害时将消耗{灵颜}并锁血至1点持续至当前回合行动结束，若已行动过，则锁血时间仅限当前伤害流程，同时中断敌方本次行动)，持续2回合"
},
	[103703]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="复活吧我的队友们，给你们一堆好东西"
},
	[1037031]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="复活吧我的队友们，给你们一堆好东西"
},
	[1037032]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="复活吧我的队友们，给你们一堆好东西"
},
	[1037033]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="复活吧我的队友们，给你们一堆好东西"
},
	[1037034]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="复活吧我的队友们，给你们一堆好东西"
},
	[1037035]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="复活吧我的队友们，给你们一堆好东西"
},
	[100180]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時，使友方全體獲得1層{{護盾}}(護盾值為爍曦最大生命的[6]%；同屬性戰員護盾值提升40%)，持續2回合，最多疊加2層"
},
	[100190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="受到致命傷害時免疫本次傷害並回復自身[30]%的最大生命，僅生效1次"
},
	[100280]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，為友方全體附加1層{{無人機支援}}(速度提升燕鷗速度的[4]%)，最多疊加6層"
},
	[100290]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，為友方全體附加[1]層{{無人機支援}}"
},
	[1002901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100290}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，為友方全體附加[1]層{{無人機支援}}"
},
	[100380]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，對目標附加1層{{撕裂}}，持續1回合，最多疊加2層；自身對{{撕裂}}下的目標轟炎傷害提升[10]%*{{撕裂}}層數"
},
	[1003801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，對目標附加1層{{撕裂}}，持續1回合，最多疊加2層；自身對{{撕裂}}下的目標轟炎傷害提升[10]%*{{撕裂}}層數"
},
	[100390]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="場上每存在1名友方轟炎戰員，自身暴擊傷害提升[6]%"
},
	[100480]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="自身技能最後一擊會附加目標當前生命[2.5]%的騁電傷害，傷害上限為自身攻擊的[[36]]%"
},
	[100490]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，對目標附加1層{{閃電標記}}(目標騁電抗性降低[8]%)，持續1回合，最多疊加2層"
},
	[1005802]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=99, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="己方轟炎戰員釋放技能後，自身獲得1層{{戰意}}(轟炎傷害提升[2]%)，最多疊加6層；當自身{{戰意}}層數>=6時，{源能爆發}將進化為全體傷害"
},
	[100580]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="己方轟炎戰員釋放技能後，自身獲得1層{{戰意}}(轟炎傷害提升[2]%)，最多疊加6層；當自身{{戰意}}層數>=6時，{源能爆發}將進化為全體傷害"
},
	[1005801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="己方轟炎戰員釋放技能後，自身獲得1層{{戰意}}(轟炎傷害提升[2]%)，最多疊加6層；當自身{{戰意}}層數>=6時，{源能爆發}將進化為全體傷害"
},
	[100590]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身九宮格範圍內的友方獲得{{戰旗光環}}(普攻和源能技傷害提升[12]%)；同屬性戰員效果提升40%"
},
	[1005902]={ target_rule=10, damage_area=6, damage_num=9, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身九宮格範圍內的友方獲得{{戰旗光環}}(普攻和源能技傷害提升[12]%)；同屬性戰員效果提升40%"
},
	[100680]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身獲得1層{{勇敢}}(寒霜傷害提升[6]%)，最多疊加4層"
},
	[100690]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能攻擊生命高於[60]%的首要目標時立即獲得1層{{勇敢}}"
},
	[1006901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100690}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能攻擊生命高於[60]%的首要目標時立即獲得1層{{勇敢}}"
},
	[100780]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身獲得1層{{冰晶}}(效果命中提升[4]%)，最多疊加3層"
},
	[100790]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="攻擊{{漸凍}}下的目標時，自身技能傷害提升[10]%*{{漸凍}}層數"
},
	[100880]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="技能在攻擊生命高於30%的目標時附帶{{爆頭}}(對目標附加自身攻擊[60]%轟炎傷害)"
},
	[100890]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="技能對{{灼傷}}下的目標附加自身攻擊[12]%*{{灼傷}}層數的轟炎傷害"
},
	[100980]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身獲得1層{{幻火}}(攻擊提升[4]%，吸血加成提升[[8]]%)，最多疊加3層"
},
	[100990]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身九宮格範圍內的友方獲得{{涅槃}}(攻擊{{灼傷}}下的目標時獲得[16]%吸血加成；同屬性戰員效果提升40%)"
},
	[1009901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身九宮格範圍內的友方獲得{{涅槃}}(攻擊{{灼傷}}下的目標時獲得[16]%吸血加成；同屬性戰員效果提升40%)"
},
	[1009902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身九宮格範圍內的友方獲得{{涅槃}}(攻擊{{灼傷}}下的目標時獲得[16]%吸血加成；同屬性戰員效果提升40%)"
},
	[101080]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="艾可在友方成員行動時會交替賦予1枚{{音符}}(攻擊音符-攻擊提升[4]%，暴傷音符-暴擊傷害提升[[6]]%)，持續1回合，各音符最多疊加3層；同屬性戰員效果提升40%"
},
	[101090]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方單位在行動時會恢復艾可攻擊[120]%的生命值，且同屬性戰員額外獲得1枚{{音符}}"
},
	[1010901]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方單位在行動時會恢復艾可攻擊[120]%的生命值，且同屬性戰員額外獲得1枚{{音符}}"
},
	[101180]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在擊敗目標後，會對新目標再次發動{源能爆發}(無消耗)，傷害為原技能傷害的[60]%(重複觸發時傷害遞減20%)"
},
	[101190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="場上每存在1名友方騁電戰員，自身{源能爆發}傷害提升[8]%"
},
	[101280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身獲得1層{{連擊點}}(攻擊提升[4]%，無視防禦提升[[4]]%)，最多疊加3層"
},
	[101290]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{源能爆發}消耗所有{{連擊點}}，且每層{{連擊點}}附加目標最大生命[2]%的直擊傷害，傷害上限為渡鴉攻擊的[[50]]%"
},
	[1012901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=44, trigger_num={1,101280}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="{源能爆發}消耗所有{{連擊點}}，且每層{{連擊點}}附加目標最大生命[2]%的直擊傷害，傷害上限為渡鴉攻擊的[[50]]%"
},
	[101380]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=37, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="攻擊未觸發暴擊時，自身獲得1層{{蓄力}}(暴擊機率提升[12]%)，最多疊加4層；觸發暴擊時清空{{蓄力}}層數並附加1段自身攻擊[[20]]%的騁電傷害"
},
	[1013801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=103, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="攻擊未觸發暴擊時，自身獲得1層{{蓄力}}(暴擊機率提升[12]%)，最多疊加4層；觸發暴擊時清空{{蓄力}}層數並附加1段自身攻擊[[20]]%的騁電傷害"
},
	[1013802]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=44, trigger_num={1,101380}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="攻擊未觸發暴擊時，自身獲得1層{{蓄力}}(暴擊機率提升[12]%)，最多疊加4層；觸發暴擊時清空{{蓄力}}層數並附加1段自身攻擊[[20]]%的騁電傷害"
},
	[101390]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="場上每存在1名友方騁電戰員，自身暴擊傷害提升[6]%"
},
	[101480]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時，自身獲得1層{{專注}}(技能傷害提升[6]%)，最多疊加3層；滿層時進入{{過激狀態}}(專注效果提升[[80]]%，且技能最後一擊附加目標當前生命5%的直擊傷害，傷害上限為自身攻擊的75%)，持續1回合"
},
	[1014801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="每回合開始時，自身獲得1層{{專注}}(技能傷害提升[6]%)，最多疊加3層；滿層時進入{{過激狀態}}(專注效果提升[[80]]%，且技能最後一擊附加目標當前生命5%的直擊傷害，傷害上限為自身攻擊的75%)，持續1回合"
},
	[101490]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時獲得1層{{專注}}；且擊敗敵方時，自身獲得[80]點防禦穿透，持續至戰鬥結束，最多疊加4層"
},
	[1014901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時獲得1層{{專注}}；且擊敗敵方時，自身獲得[80]點防禦穿透，持續至戰鬥結束，最多疊加4層"
},
	[110180]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能在攻擊生命高於50%的目標時，傷害提升[16]%"
},
	[110190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命首次低於30%時，獲得1個自身攻擊[240]%的護盾，持續2回合，僅生效1次"
},
	[110280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="釋放技能時，有60%機率使自身本次技能傷害提升[20]%"
},
	[110290]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{{漸凍}}下的目標時，將無視目標[3]%*漸凍層數的防禦"
},
	[110380]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在受到速度低於自身的目標攻擊時，格擋機率提升[30]%"
},
	[110390]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在戰鬥中速度永久提升[12]%，且每次攻擊時，自身傷害減免提升[[4]]%，最多疊加5層"
},
	[1103901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在戰鬥中速度永久提升[12]%，且每次攻擊時，自身傷害減免提升[[4]]%，最多疊加5層"
},
	[110480]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身九宮格範圍的其他友方防禦提升狄俄涅防禦的[16]%；同屬性戰員效果提升40%"
},
	[110490]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,110404}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{{大地護盾}}消失時，目標恢復狄俄涅最大生命[8]%的生命值；同屬性戰員效果提升40%"
},
	[110580]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身獲得1層{{劍氣}}(攻擊提升[6]%)，最多疊加3層"
},
	[110590]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身擁有{{劍氣}}時，每層劍氣可提供自身[6]%的無視防禦效果"
},
	[110680]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1106041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放{源能爆發}時，目標身上每有1層{{漸凍}}，冰凍機率提升[4]%；若目標{{漸凍}}層數>=4，則必定觸發{{冰凍}}"
},
	[1106801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1106041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放{源能爆發}時，目標身上每有1層{{漸凍}}，冰凍機率提升[4]%；若目標{{漸凍}}層數>=4，則必定觸發{{冰凍}}"
},
	[110690]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="技能在攻擊{{漸凍}}下的目標時，傷害提升[4]%*漸凍層數"
},
	[110780]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,110704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{{能量護盾}}存在時，目標格擋機率提升[12]%；同屬性戰員效果提升40%"
},
	[110790]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,110704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{{能量護盾}}消失時，目標恢復羚角最大生命[8]%的生命值；同屬性戰員效果提升40%"
},
	[110880]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={1,3}, trigger_rate=6000, is_effect_inc=0, damage_source=1, desc="技能最後一擊有[60]%機率對目標附加1段自身攻擊60%的轟炎傷害"
},
	[1108801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={110880}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="技能最後一擊有[60]%機率對目標附加1段自身攻擊60%的轟炎傷害"
},
	[110890]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{{灼傷}}下的目標時，防禦穿透將提升[25]*灼傷層數"
},
	[110980]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身獲得1層{{海洋祝福}}(攻擊提升[10]%)，最多疊加3層"
},
	[110990]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在場時，友方全體寒霜傷害提升[12]%"
},
	[111080]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身獲得1層{{流櫻}}(攻擊提升[6]%)，持續2回合，最多疊加3層"
},
	[111090]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={111004}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放{源能爆發}時，消耗所有{{流櫻}}，每層流櫻提高自身[10]%源能爆發傷害"
},
	[111180]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="自身技能有70%機率無視目標[24]%的防禦"
},
	[111190]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={1,3}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="技能每段攻擊有60%機率使自身直擊傷害提升[2]%，持續1回合，最多疊加10層"
},
	[111280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次釋放技能後，自身獲得1層{{醫療強化}}(治療效果提升[6]%)，最多疊加5層"
},
	[111290]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放{源能爆發}時，對目標注射{{腎上腺素}}(目標攻擊提升斯翠涅攻擊的[24]%，但防禦降低[[30]]%)，持續2回合"
},
	[1112901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放{源能爆發}時，對目標注射{{腎上腺素}}(目標攻擊提升斯翠涅攻擊的[24]%，但防禦降低[[30]]%)，持續2回合"
},
	[120180]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放{源能技}時，對目標賦予1種{{指令}}(攻擊指令-攻擊提升[4]%；防禦指令-防禦提升[[8]]%)，持續2回合，各指令最多疊加2層"
},
	[120190]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=6500, is_effect_inc=0, damage_source=8, desc="每次行動時有[65]%機率為自身九宮格範圍友方賦予1種{{指令}}"
},
	[1201901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120190}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時有[65]%機率為自身九宮格範圍友方賦予1種{{指令}}"
},
	[120280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放{源能技}時，自身獲得1枚{{導彈}}(轟炎傷害提升[8]%)，最多疊加2層"
},
	[120290]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對同一首要目標造成的傷害將逐次提高[20]%，最多疊加4層"
},
	[1202901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對同一首要目標造成的傷害將逐次提高[20]%，最多疊加4層"
},
	[120380]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放{源能技}時，對目標附加2層{{荊棘}}(回合結束時，每層荊棘對目標造成梓綠攻擊[20]%的生蘊傷害)，持續2回合，最多疊加6層"
},
	[120390]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={0}, trigger_rate=6500, is_effect_inc=0, damage_source=8, desc="普通攻擊有[65]%機率對目標附加1層{{荊棘}}"
},
	[1203901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120390}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="普通攻擊有[65]%機率對目標附加1層{{荊棘}}"
},
	[120480]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放{源能技}時，自身獲得1層{{花火}}(轟炎傷害提升[12]%)，最多疊加2層"
},
	[120490]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{{花火}}對其他友方生效，但效果值降低[40]%"
},
	[120580]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身獲得1層{{喵喵聖盾}}(有60%機率抵擋1次攻擊傷害，成功抵擋時消耗1層聖盾)，最多疊加[1]層"
},
	[1205801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身獲得1層{{喵喵聖盾}}(有60%機率抵擋1次攻擊傷害，成功抵擋時消耗1層聖盾)，最多疊加[1]層"
},
	[120680]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身會回復已損失生命[16]%的生命值"
},
	[120690]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="場上每存在1名友方騁電戰員，自身防禦提升[5]%"
},
	[120780]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，為自身九宮格範圍的友方附加1層{{充能祝福}}(攻擊提升[3]%；同屬性戰員效果提升40%)，持續2回合，最多疊加3層"
},
	[120790]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身治療效果永久提升[16]%"
},
	[120880]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=10, trigger_num={1,3}, trigger_rate=6500, is_effect_inc=0, damage_source=8, desc="技能攻擊時，每段攻擊有[65]%機率使自身攻擊提升2.5%，持續1回合，最多疊加10層"
},
	[1208801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120880}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="技能攻擊時，每段攻擊有[65]%機率使自身攻擊提升2.5%，持續1回合，最多疊加10層"
},
	[130180]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="莉麗拉在友方行動時有[70]%機率為其附加1層{{護盾}}(與源能技護盾相同)"
},
	[1301801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={130180}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="莉麗拉在友方行動時有[70]%機率為其附加1層{{護盾}}(與源能技護盾相同)"
},
	[130190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="場上每存在1名友方量蝕戰員，自身治療效果提升[8]%"
},
	[130280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身有[40]%機率獲得{{好心情}}(暴擊機率提升80%)，否則獲得{{壞心情}}(攻擊降低15%)，持續1回合"
},
	[130380]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時，自身將獲得等同於友方戰員數量的{{運籌}}層數(攻擊提升紐卡斯爾攻擊的[4]%)，持續1回合"
},
	[130390]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身九宮格範圍的友方量蝕傷害提升[15]%"
},
	[130480]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，為友方全體提供1層{{女僕禮儀}}(寒霜傷害提升[5]%），持續2回合，最多疊加3層"
},
	[130580]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="技能釋放時有50%機率使本次傷害提升[30]%"
},
	[130680]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={0,1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時，自身獲得1層{{能量}}(每層能量提供自身[2]%的源能爆發傷害)，最多疊加12層"
},
	[130690]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=99, trigger_num={1,3}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="友方其他成員釋放技能時，自身有[60]%機率獲得1層{{能量}}"
},
	[1306901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={130690}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方其他成員釋放技能時，自身有[60]%機率獲得1層{{能量}}"
},
	[130780]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，對目標附加1層{{弩箭印記}}(目標轟炎抗性降低[8]%)，持續1回合，最多疊加2層"
},
	[130790]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身九宮格範圍的友方暴擊機率提升[6]%；同屬性戰員效果提升40%"
},
	[111380]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時，自身九宮格範圍的友方源能爆發傷害提升[6]%，最多疊加3層；同屬性戰員效果提升40%"
},
	[111390]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={111380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="天賦1的層數上限+2，且戰鬥開始時激活[1]層天賦1效果"
},
	[1113901]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="天賦1的層數上限+2，且戰鬥開始時激活[1]層天賦1效果"
},
	[1113902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1113901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="天賦1的層數上限+2，且戰鬥開始時激活[1]層天賦1效果"
},
	[101580]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={0,1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時獲得1層{{鹿靈}}(鹿靈會為自身額外增加1次行動機會，速度為自身初始速度的80%；行動時對敵方九宮格範圍造成等同於自身攻擊[20]%*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%，行動後鹿靈層數重置)，最多疊加4層；鹿靈的初始層數為1層，且自身被控制時，鹿靈將無法行動，層數不發生變化"
},
	[1015801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時獲得1層{{鹿靈}}(鹿靈會為自身額外增加1次行動機會，速度為自身初始速度的80%；行動時對敵方九宮格範圍造成等同於自身攻擊[20]%*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%，行動後鹿靈層數重置)，最多疊加4層；鹿靈的初始層數為1層，且自身被控制時，鹿靈將無法行動，層數不發生變化"
},
	[1015802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時獲得1層{{鹿靈}}(鹿靈會為自身額外增加1次行動機會，速度為自身初始速度的80%；行動時對敵方九宮格範圍造成等同於自身攻擊[20]%*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%，行動後鹿靈層數重置)，最多疊加4層；鹿靈的初始層數為1層，且自身被控制時，鹿靈將無法行動，層數不發生變化"
},
	[1015803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=60, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時獲得1層{{鹿靈}}(鹿靈會為自身額外增加1次行動機會，速度為自身初始速度的80%；行動時對敵方九宮格範圍造成等同於自身攻擊[20]%*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%，行動後鹿靈層數重置)，最多疊加4層；鹿靈的初始層數為1層，且自身被控制時，鹿靈將無法行動，層數不發生變化"
},
	[1015804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時獲得1層{{鹿靈}}(鹿靈會為自身額外增加1次行動機會，速度為自身初始速度的80%；行動時對敵方九宮格範圍造成等同於自身攻擊[20]%*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%，行動後鹿靈層數重置)，最多疊加4層；鹿靈的初始層數為1層，且自身被控制時，鹿靈將無法行動，層數不發生變化"
},
	[1015805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={101503}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時獲得1層{{鹿靈}}(鹿靈會為自身額外增加1次行動機會，速度為自身初始速度的80%；行動時對敵方九宮格範圍造成等同於自身攻擊[20]%*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%，行動後鹿靈層數重置)，最多疊加4層；鹿靈的初始層數為1層，且自身被控制時，鹿靈將無法行動，層數不發生變化"
},
	[1015806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時獲得1層{{鹿靈}}(鹿靈會為自身額外增加1次行動機會，速度為自身初始速度的80%；行動時對敵方九宮格範圍造成等同於自身攻擊[20]%*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%，行動後鹿靈層數重置)，最多疊加4層；鹿靈的初始層數為1層，且自身被控制時，鹿靈將無法行動，層數不發生變化"
},
	[1015807]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1015041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時獲得1層{{鹿靈}}(鹿靈會為自身額外增加1次行動機會，速度為自身初始速度的80%；行動時對敵方九宮格範圍造成等同於自身攻擊[20]%*鹿靈層數的生蘊傷害，且對首要目標傷害加深60%，行動後鹿靈層數重置)，最多疊加4層；鹿靈的初始層數為1層，且自身被控制時，鹿靈將無法行動，層數不發生變化"
},
	[101590]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,101580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="若自身{{鹿靈}}層數>=4，則本回合內暴擊傷害提高[24]%"
},
	[101680]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身將產生1顆{{星辰之力}}，最多疊加3層；滿層時將解放星辰，對敵方生命百分比最低單位進行致命打擊，每顆星辰造成蒂雅攻擊[30]%的量蝕傷害並附加目標已損失生命[[6]]%的真實傷害(上限為蒂雅攻擊的[[[120]]]%)"
},
	[1016801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,101680}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，自身將產生1顆{{星辰之力}}，最多疊加3層；滿層時將解放星辰，對敵方生命百分比最低單位進行致命打擊，每顆星辰造成蒂雅攻擊[30]%的量蝕傷害並附加目標已損失生命[[6]]%的真實傷害(上限為蒂雅攻擊的[[[120]]]%)"
},
	[101690]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=8000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，蒂雅獲得50%源能補充，且場上每存在1名友方量蝕戰員，自身暴擊機率提升[2]%"
},
	[1016901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，蒂雅獲得50%源能補充，且場上每存在1名友方量蝕戰員，自身暴擊機率提升[2]%"
},
	[1016902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={101690}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，蒂雅獲得50%源能補充，且場上每存在1名友方量蝕戰員，自身暴擊機率提升[2]%"
},
	[101780]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=2, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="魁霎在釋放{源能爆發}時會賦予友方其他成員1次強化效果(使其下次行動時的暴擊機率提升[6]%，同屬性戰員效果提升40%)；{{玩偶}}存在時，友方其他成員行動會使魁霎恢復[[4]]%的最大生命"
},
	[1017801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="魁霎在釋放{源能爆發}時會賦予友方其他成員1次強化效果(使其下次行動時的暴擊機率提升[6]%，同屬性戰員效果提升40%)；{{玩偶}}存在時，友方其他成員行動會使魁霎恢復[[4]]%的最大生命"
},
	[1017802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=95, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="魁霎在釋放{源能爆發}時會賦予友方其他成員1次強化效果(使其下次行動時的暴擊機率提升[6]%，同屬性戰員效果提升40%)；{{玩偶}}存在時，友方其他成員行動會使魁霎恢復[[4]]%的最大生命"
},
	[101790]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="場上每存在1名友方轟炎戰員，自身生命上限提高[8]%；自身受到攻擊傷害時，有[[60]]%機率使友方其他成員暴擊傷害提升3%，最多疊加4層"
},
	[1017901]={ target_rule=34, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="場上每存在1名友方轟炎戰員，自身生命上限提高[8]%；自身受到攻擊傷害時，有[[60]]%機率使友方其他成員暴擊傷害提升3%，最多疊加4層"
},
	[1017902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="場上每存在1名友方轟炎戰員，自身生命上限提高[8]%；自身受到攻擊傷害時，有[[60]]%機率使友方其他成員暴擊傷害提升3%，最多疊加4層"
},
	[1017903]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1017902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="場上每存在1名友方轟炎戰員，自身生命上限提高[8]%；自身受到攻擊傷害時，有[[60]]%機率使友方其他成員暴擊傷害提升3%，最多疊加4層"
},
	[101880]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身無法被友方治療。受到3次攻擊後，自身將獲得1層{{磁化壁壘}}(每層壁壘可抵擋1次敵方攻擊，且壁壘消耗時回復自身[8]%最大生命)，最多疊加3層，持續至戰鬥結束"
},
	[1018801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身無法被友方治療。受到3次攻擊後，自身將獲得1層{{磁化壁壘}}(每層壁壘可抵擋1次敵方攻擊，且壁壘消耗時回復自身[8]%最大生命)，最多疊加3層，持續至戰鬥結束"
},
	[1018802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=108, trigger_num={1,101880}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身無法被友方治療。受到3次攻擊後，自身將獲得1層{{磁化壁壘}}(每層壁壘可抵擋1次敵方攻擊，且壁壘消耗時回復自身[8]%最大生命)，最多疊加3層，持續至戰鬥結束"
},
	[101890]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="{{磁化壁壘}}消耗時，將對攻擊方造成自身最大生命[8]%的騁電傷害；且每回合開始時，自身有[[60]]%機率立即獲得1層{{磁化壁壘}}"
},
	[1018901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={101890}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{{磁化壁壘}}消耗時，將對攻擊方造成自身最大生命[8]%的騁電傷害；且每回合開始時，自身有[[60]]%機率立即獲得1層{{磁化壁壘}}"
},
	[1018902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=108, trigger_num={1,101880}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{{磁化壁壘}}消耗時，將對攻擊方造成自身最大生命[8]%的騁電傷害；且每回合開始時，自身有[[60]]%機率立即獲得1層{{磁化壁壘}}"
},
	[1018903]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{{磁化壁壘}}消耗時，將對攻擊方造成自身最大生命[8]%的騁電傷害；且每回合開始時，自身有[[60]]%機率立即獲得1層{{磁化壁壘}}"
},
	[101980]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在場時將賦予友方全體技能回復效果(普攻和技能釋放時將獲得霜瓊攻擊[48]%的生命回復)；同屬性戰員效果提升40%"
},
	[1019802]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=99, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在場時將賦予友方全體技能回復效果(普攻和技能釋放時將獲得霜瓊攻擊[48]%的生命回復)；同屬性戰員效果提升40%"
},
	[101990]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，為友方全體施加1層祝福效果(攻擊提升[6]%)，最多疊加3層；同屬性戰員每層祝福獲得[[8]]%的暴擊傷害提升；且每次釋放源能爆發時，額外為友方全體(自身除外)施加1層祝福效果"
},
	[1019901]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，為友方全體施加1層祝福效果(攻擊提升[6]%)，最多疊加3層；同屬性戰員每層祝福獲得[[8]]%的暴擊傷害提升；且每次釋放源能爆發時，額外為友方全體(自身除外)施加1層祝福效果"
},
	[1019902]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={101904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，為友方全體施加1層祝福效果(攻擊提升[6]%)，最多疊加3層；同屬性戰員每層祝福獲得[[8]]%的暴擊傷害提升；且每次釋放源能爆發時，額外為友方全體(自身除外)施加1層祝福效果"
},
	[1019903]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={101904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，為友方全體施加1層祝福效果(攻擊提升[6]%)，最多疊加3層；同屬性戰員每層祝福獲得[[8]]%的暴擊傷害提升；且每次釋放源能爆發時，額外為友方全體(自身除外)施加1層祝福效果"
},
	[102080]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1020,102001,102004,102003,102005}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每攻擊2次，將獲得1層<color=#ffb136><color=#ffb136>寒翎</color></color>(自身防禦穿透提升<color=#18ec68>60</color>點，暴擊幾率提升<color=#18ec68>2</color>%)，最多疊加5層；滿層時將額外獲得<color=#18ec68>14</color>%的攻擊提升"
},
	[102090]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102001,102004}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每次技能攻擊時，若首要目標生命低於65%，則在技能釋放後追加1次<color=#ffb136>掠血滅痕</color>，對其造成自身攻擊<color=#18ec68>60</color>%的寒霜傷害，該效果對於護盾目標傷害提升60%"
},
	[1020901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={102003}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每次技能攻擊時，若首要目標生命低於65%，則在技能釋放後追加1次<color=#ffb136>掠血滅痕</color>，對其造成自身攻擊<color=#18ec68>60</color>%的寒霜傷害，該效果對於護盾目標傷害提升60%"
},
	[1020902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={102005}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每次技能攻擊時，若首要目標生命低於65%，則在技能釋放後追加1次<color=#ffb136>掠血滅痕</color>，對其造成自身攻擊<color=#18ec68>60</color>%的寒霜傷害，該效果對於護盾目標傷害提升60%"
},
	[102180]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102101,102104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次釋放技能時，自身獲得1層{念氣}效果，最多疊加2層；友方在行動時會消耗自身1層{念氣}，使其攻擊提升[8]%，格擋幾率提升[[6]]%，持續1回合；若為同屬性戰員則額外獲得[[[12]]]%的生蘊傷害提升"
},
	[1021801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次釋放技能時，自身獲得1層{念氣}效果，最多疊加2層；友方在行動時會消耗自身1層{念氣}，使其攻擊提升[8]%，格擋幾率提升[[6]]%，持續1回合；若為同屬性戰員則額外獲得[[[12]]]%的生蘊傷害提升"
},
	[1021802]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次釋放技能時，自身獲得1層{念氣}效果，最多疊加2層；友方在行動時會消耗自身1層{念氣}，使其攻擊提升[8]%，格擋幾率提升[[6]]%，持續1回合；若為同屬性戰員則額外獲得[[[12]]]%的生蘊傷害提升"
},
	[1021803]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次釋放技能時，自身獲得1層{念氣}效果，最多疊加2層；友方在行動時會消耗自身1層{念氣}，使其攻擊提升[8]%，格擋幾率提升[[6]]%，持續1回合；若為同屬性戰員則額外獲得[[[12]]]%的生蘊傷害提升"
},
	[1021804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102101}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次釋放技能時，自身獲得1層{念氣}效果，最多疊加2層；友方在行動時會消耗自身1層{念氣}，使其攻擊提升[8]%，格擋幾率提升[[6]]%，持續1回合；若為同屬性戰員則額外獲得[[[12]]]%的生蘊傷害提升"
},
	[1021805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次釋放技能時，自身獲得1層{念氣}效果，最多疊加2層；友方在行動時會消耗自身1層{念氣}，使其攻擊提升[8]%，格擋幾率提升[[6]]%，持續1回合；若為同屬性戰員則額外獲得[[[12]]]%的生蘊傷害提升"
},
	[102190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,102104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="爆氣狀態下，自身破擊幾率提升[16]%，無視防禦提升[[12]]%"
},
	[102280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=99, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員(自身除外)釋放技能時會為刺玫裝填1層{彈藥}(若為同屬性戰員，則裝填數量+1)，上限12層。{彈藥}滿層時，刺玫會進入{火力全開}狀態(控制驅散)並立即對敵方全體發動1次{榴彈射擊}，造成自身攻擊[100]%的直擊傷害；該狀態下，隊友無法為刺玫裝填彈藥，且刺玫在友方行動結束後(自身除外)會消耗自身4層彈藥對敵方橫向兩排發動1次{掩護射擊}，造成自身攻擊[[80]]%的直擊傷害，且對首要目標傷害加深2.5%*{賞金}層數，彈藥層數=0時退出該狀態"
},
	[1022801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=99, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員(自身除外)釋放技能時會為刺玫裝填1層{彈藥}(若為同屬性戰員，則裝填數量+1)，上限12層。{彈藥}滿層時，刺玫會進入{火力全開}狀態(控制驅散)並立即對敵方全體發動1次{榴彈射擊}，造成自身攻擊[100]%的直擊傷害；該狀態下，隊友無法為刺玫裝填彈藥，且刺玫在友方行動結束後(自身除外)會消耗自身4層彈藥對敵方橫向兩排發動1次{掩護射擊}，造成自身攻擊[[80]]%的直擊傷害，且對首要目標傷害加深2.5%*{賞金}層數，彈藥層數=0時退出該狀態"
},
	[1022802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,102280}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員(自身除外)釋放技能時會為刺玫裝填1層{彈藥}(若為同屬性戰員，則裝填數量+1)，上限12層。{彈藥}滿層時，刺玫會進入{火力全開}狀態(控制驅散)並立即對敵方全體發動1次{榴彈射擊}，造成自身攻擊[100]%的直擊傷害；該狀態下，隊友無法為刺玫裝填彈藥，且刺玫在友方行動結束後(自身除外)會消耗自身4層彈藥對敵方橫向兩排發動1次{掩護射擊}，造成自身攻擊[[80]]%的直擊傷害，且對首要目標傷害加深2.5%*{賞金}層數，彈藥層數=0時退出該狀態"
},
	[1022803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,1022801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員(自身除外)釋放技能時會為刺玫裝填1層{彈藥}(若為同屬性戰員，則裝填數量+1)，上限12層。{彈藥}滿層時，刺玫會進入{火力全開}狀態(控制驅散)並立即對敵方全體發動1次{榴彈射擊}，造成自身攻擊[100]%的直擊傷害；該狀態下，隊友無法為刺玫裝填彈藥，且刺玫在友方行動結束後(自身除外)會消耗自身4層彈藥對敵方橫向兩排發動1次{掩護射擊}，造成自身攻擊[[80]]%的直擊傷害，且對首要目標傷害加深2.5%*{賞金}層數，彈藥層數=0時退出該狀態"
},
	[1022804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=156, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員(自身除外)釋放技能時會為刺玫裝填1層{彈藥}(若為同屬性戰員，則裝填數量+1)，上限12層。{彈藥}滿層時，刺玫會進入{火力全開}狀態(控制驅散)並立即對敵方全體發動1次{榴彈射擊}，造成自身攻擊[100]%的直擊傷害；該狀態下，隊友無法為刺玫裝填彈藥，且刺玫在友方行動結束後(自身除外)會消耗自身4層彈藥對敵方橫向兩排發動1次{掩護射擊}，造成自身攻擊[[80]]%的直擊傷害，且對首要目標傷害加深2.5%*{賞金}層數，彈藥層數=0時退出該狀態"
},
	[1022805]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=10, trigger_num={102205}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員(自身除外)釋放技能時會為刺玫裝填1層{彈藥}(若為同屬性戰員，則裝填數量+1)，上限12層。{彈藥}滿層時，刺玫會進入{火力全開}狀態(控制驅散)並立即對敵方全體發動1次{榴彈射擊}，造成自身攻擊[100]%的直擊傷害；該狀態下，隊友無法為刺玫裝填彈藥，且刺玫在友方行動結束後(自身除外)會消耗自身4層彈藥對敵方橫向兩排發動1次{掩護射擊}，造成自身攻擊[[80]]%的直擊傷害，且對首要目標傷害加深2.5%*{賞金}層數，彈藥層數=0時退出該狀態"
},
	[1022806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員(自身除外)釋放技能時會為刺玫裝填1層{彈藥}(若為同屬性戰員，則裝填數量+1)，上限12層。{彈藥}滿層時，刺玫會進入{火力全開}狀態(控制驅散)並立即對敵方全體發動1次{榴彈射擊}，造成自身攻擊[100]%的直擊傷害；該狀態下，隊友無法為刺玫裝填彈藥，且刺玫在友方行動結束後(自身除外)會消耗自身4層彈藥對敵方橫向兩排發動1次{掩護射擊}，造成自身攻擊[[80]]%的直擊傷害，且對首要目標傷害加深2.5%*{賞金}層數，彈藥層數=0時退出該狀態"
},
	[1022807]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員(自身除外)釋放技能時會為刺玫裝填1層{彈藥}(若為同屬性戰員，則裝填數量+1)，上限12層。{彈藥}滿層時，刺玫會進入{火力全開}狀態(控制驅散)並立即對敵方全體發動1次{榴彈射擊}，造成自身攻擊[100]%的直擊傷害；該狀態下，隊友無法為刺玫裝填彈藥，且刺玫在友方行動結束後(自身除外)會消耗自身4層彈藥對敵方橫向兩排發動1次{掩護射擊}，造成自身攻擊[[80]]%的直擊傷害，且對首要目標傷害加深2.5%*{賞金}層數，彈藥層數=0時退出該狀態"
},
	[102290]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={102203,102205}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身觸發{榴彈射擊}或{掩護射擊}時，將對目標附加1層{賞金}(每層賞金降低目標[1.2]%防禦和[[1.5]]%直擊抗性)，持續2回合，最多疊加8層"
},
	[102380]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=99, trigger_num={1,3}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[1023800]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[1023801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,102380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[1023802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[1023803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[1023805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[1023806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,1023805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[1023809]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[1023810]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[1023813]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1023806}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方戰員釋放技能時，自身有[70]%幾率獲得1層{淵響}，上限5層。{淵響}滿層時將轉化為{淵鳴}({淵鳴}存在時{淵響}無法轉化)；若自身行動時存在{淵鳴}，則消耗{淵鳴}使自身進入{霆淵之境}(該狀態下{淵響}無法轉化為{淵鳴})，持續2回合；進入{霆淵之境}時，自身會獲得[[2]]層{淵逆}效果(每次受到技能攻擊時將消耗1層{淵逆}使自身獲得30%傷害減免提升)，持續2回合"
},
	[102390]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=154, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023905]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023906]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023907]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023908]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023909]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=99, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023910]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023911]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023912]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023913]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023914]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[1023915]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命傷害時，將會觸發{搖籃之擁}(屆時自身將無法行動、無法被敵方選中、無法受到自身以外的治療，且免疫所有傷害和負面效果)；該狀態下{淵響}的獲取幾率降低50%，同時友方戰員每次釋放技能時會為霆淵艾麗西亞提供1層{淵回}；若自身行動前存在6層{淵回}，則消耗所有{淵回}使自身蘇醒，生命繼承自身最大生命的[30]%(不消耗{淵鳴})；{淵回}不足6層，則消耗{淵鳴}進行復活，生命繼承自身最大生命的[[60]]%；若不滿足復活條件則會持續{搖籃之擁}（當己方場上僅剩自身時，{搖籃之擁}禁止觸發）"
},
	[102480]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時，阿爾戈從箱包中隨機拿取物品：\n{疲乏氣體}：自身無視防禦提升[12]%，且源能技首段命中時有45%幾率使目標源能獲取效率降低25%(自身強化持續1回合，負面效果持續2回合)；\n{神經毒素}：自身技能傷害提升[[10]]%，且源能技最後一擊有35%幾率使目標當前源能減少50%(自身強化持續1回合)；\n{滯緩藥劑}：自身效果抵抗提升[[[15]]]%，且源能技最後一擊有40%幾率使目標速度降低30%(自身強化持續1回合，負面效果持續2回合)"
},
	[1024801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={102401}, trigger_rate=4500, is_effect_inc=1, damage_source=8, desc="每回合開始時，阿爾戈從箱包中隨機拿取物品：\n{疲乏氣體}：自身無視防禦提升[12]%，且源能技首段命中時有45%幾率使目標源能獲取效率降低25%(自身強化持續1回合，負面效果持續2回合)；\n{神經毒素}：自身技能傷害提升[[10]]%，且源能技最後一擊有35%幾率使目標當前源能減少50%(自身強化持續1回合)；\n{滯緩藥劑}：自身效果抵抗提升[[[15]]]%，且源能技最後一擊有40%幾率使目標速度降低30%(自身強化持續1回合，負面效果持續2回合)"
},
	[1024802]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={102401}, trigger_rate=3500, is_effect_inc=1, damage_source=8, desc="每回合開始時，阿爾戈從箱包中隨機拿取物品：\n{疲乏氣體}：自身無視防禦提升[12]%，且源能技首段命中時有45%幾率使目標源能獲取效率降低25%(自身強化持續1回合，負面效果持續2回合)；\n{神經毒素}：自身技能傷害提升[[10]]%，且源能技最後一擊有35%幾率使目標當前源能減少50%(自身強化持續1回合)；\n{滯緩藥劑}：自身效果抵抗提升[[[15]]]%，且源能技最後一擊有40%幾率使目標速度降低30%(自身強化持續1回合，負面效果持續2回合)"
},
	[1024803]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={102401}, trigger_rate=4000, is_effect_inc=1, damage_source=8, desc="每回合開始時，阿爾戈從箱包中隨機拿取物品：\n{疲乏氣體}：自身無視防禦提升[12]%，且源能技首段命中時有45%幾率使目標源能獲取效率降低25%(自身強化持續1回合，負面效果持續2回合)；\n{神經毒素}：自身技能傷害提升[[10]]%，且源能技最後一擊有35%幾率使目標當前源能減少50%(自身強化持續1回合)；\n{滯緩藥劑}：自身效果抵抗提升[[[15]]]%，且源能技最後一擊有40%幾率使目標速度降低30%(自身強化持續1回合，負面效果持續2回合)"
},
	[1024804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時，阿爾戈從箱包中隨機拿取物品：\n{疲乏氣體}：自身無視防禦提升[12]%，且源能技首段命中時有45%幾率使目標源能獲取效率降低25%(自身強化持續1回合，負面效果持續2回合)；\n{神經毒素}：自身技能傷害提升[[10]]%，且源能技最後一擊有35%幾率使目標當前源能減少50%(自身強化持續1回合)；\n{滯緩藥劑}：自身效果抵抗提升[[[15]]]%，且源能技最後一擊有40%幾率使目標速度降低30%(自身強化持續1回合，負面效果持續2回合)"
},
	[1024805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時，阿爾戈從箱包中隨機拿取物品：\n{疲乏氣體}：自身無視防禦提升[12]%，且源能技首段命中時有45%幾率使目標源能獲取效率降低25%(自身強化持續1回合，負面效果持續2回合)；\n{神經毒素}：自身技能傷害提升[[10]]%，且源能技最後一擊有35%幾率使目標當前源能減少50%(自身強化持續1回合)；\n{滯緩藥劑}：自身效果抵抗提升[[[15]]]%，且源能技最後一擊有40%幾率使目標速度降低30%(自身強化持續1回合，負面效果持續2回合)"
},
	[1024806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時，阿爾戈從箱包中隨機拿取物品：\n{疲乏氣體}：自身無視防禦提升[12]%，且源能技首段命中時有45%幾率使目標源能獲取效率降低25%(自身強化持續1回合，負面效果持續2回合)；\n{神經毒素}：自身技能傷害提升[[10]]%，且源能技最後一擊有35%幾率使目標當前源能減少50%(自身強化持續1回合)；\n{滯緩藥劑}：自身效果抵抗提升[[[15]]]%，且源能技最後一擊有40%幾率使目標速度降低30%(自身強化持續1回合，負面效果持續2回合)"
},
	[102490]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身的效果命中在首回合將提升[10]%，持續1回合；當成功對目標造成天賦一包含的負面效果時，自身的無視防禦將提升[[4]]%（單個源能技只會觸發一次），持續至戰鬥結束，最多疊加4層"
},
	[1024901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,1024801,1024802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身的效果命中在首回合將提升[10]%，持續1回合；當成功對目標造成天賦一包含的負面效果時，自身的無視防禦將提升[[4]]%（單個源能技只會觸發一次），持續至戰鬥結束，最多疊加4層"
},
	[102580]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時自身會獲得1枚{月刃}(敵方在對我方戰員造成技能傷害時，輝月會消耗1枚月刃吸收其[20]%的技能傷害並儲存)；自身在場時，友方戰員生命將會獲得輝月最大生命[[6]]%的生命上限加成（自身除外）"
},
	[1025801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=169, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時自身會獲得1枚{月刃}(敵方在對我方戰員造成技能傷害時，輝月會消耗1枚月刃吸收其[20]%的技能傷害並儲存)；自身在場時，友方戰員生命將會獲得輝月最大生命[[6]]%的生命上限加成（自身除外）"
},
	[1025802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=168, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時自身會獲得1枚{月刃}(敵方在對我方戰員造成技能傷害時，輝月會消耗1枚月刃吸收其[20]%的技能傷害並儲存)；自身在場時，友方戰員生命將會獲得輝月最大生命[[6]]%的生命上限加成（自身除外）"
},
	[1025803]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時自身會獲得1枚{月刃}(敵方在對我方戰員造成技能傷害時，輝月會消耗1枚月刃吸收其[20]%的技能傷害並儲存)；自身在場時，友方戰員生命將會獲得輝月最大生命[[6]]%的生命上限加成（自身除外）"
},
	[102590]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時輝月會創造1次{滿月輝境}；當輝月在場且{月刃}消耗滿5枚時，輝月會移除自身所有控制效果並展開{月華}，承受敵方普攻和技能傷害，{月華}的承受傷害上限為5枚{月刃的}吸收傷害總和 + 輝月最大生命的[20]%，持續2回合。{月華}會優先結算角色受到的傷害，若超出{月華}承傷上限，則會直接破碎以免除該次傷害，且{月華}持續期間再次展開時會發生替換"
},
	[1025901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,1025801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時輝月會創造1次{滿月輝境}；當輝月在場且{月刃}消耗滿5枚時，輝月會移除自身所有控制效果並展開{月華}，承受敵方普攻和技能傷害，{月華}的承受傷害上限為5枚{月刃的}吸收傷害總和 + 輝月最大生命的[20]%，持續2回合。{月華}會優先結算角色受到的傷害，若超出{月華}承傷上限，則會直接破碎以免除該次傷害，且{月華}持續期間再次展開時會發生替換"
},
	[1025902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時輝月會創造1次{滿月輝境}；當輝月在場且{月刃}消耗滿5枚時，輝月會移除自身所有控制效果並展開{月華}，承受敵方普攻和技能傷害，{月華}的承受傷害上限為5枚{月刃的}吸收傷害總和 + 輝月最大生命的[20]%，持續2回合。{月華}會優先結算角色受到的傷害，若超出{月華}承傷上限，則會直接破碎以免除該次傷害，且{月華}持續期間再次展開時會發生替換"
},
	[1025903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=164, trigger_num={102503}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時輝月會創造1次{滿月輝境}；當輝月在場且{月刃}消耗滿5枚時，輝月會移除自身所有控制效果並展開{月華}，承受敵方普攻和技能傷害，{月華}的承受傷害上限為5枚{月刃的}吸收傷害總和 + 輝月最大生命的[20]%，持續2回合。{月華}會優先結算角色受到的傷害，若超出{月華}承傷上限，則會直接破碎以免除該次傷害，且{月華}持續期間再次展開時會發生替換"
},
	[1026806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時輝月會創造1次{滿月輝境}；當輝月在場且{月刃}消耗滿5枚時，輝月會移除自身所有控制效果並展開{月華}，承受敵方普攻和技能傷害，{月華}的承受傷害上限為5枚{月刃的}吸收傷害總和 + 輝月最大生命的[20]%，持續2回合。{月華}會優先結算角色受到的傷害，若超出{月華}承傷上限，則會直接破碎以免除該次傷害，且{月華}持續期間再次展開時會發生替換"
},
	[102680]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，克裡安卡會為自身、己方生命值最低和攻擊最高的友方單位附加{回火}(目標獲得1層基於克裡安卡最大生命[14]%的護盾，且獲得3次反傷和3次免疫負面狀態的持續效果)，持續2回合——反傷係數為[[20]]%，該傷害穿透護盾且不超過克裡安卡最大生命的[[[14]]]%)"
},
	[1026800]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，克裡安卡會為自身、己方生命值最低和攻擊最高的友方單位附加{回火}(目標獲得1層基於克裡安卡最大生命[14]%的護盾，且獲得3次反傷和3次免疫負面狀態的持續效果)，持續2回合——反傷係數為[[20]]%，該傷害穿透護盾且不超過克裡安卡最大生命的[[[14]]]%)"
},
	[1026801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1026802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，克裡安卡會為自身、己方生命值最低和攻擊最高的友方單位附加{回火}(目標獲得1層基於克裡安卡最大生命[14]%的護盾，且獲得3次反傷和3次免疫負面狀態的持續效果)，持續2回合——反傷係數為[[20]]%，該傷害穿透護盾且不超過克裡安卡最大生命的[[[14]]]%)"
},
	[1026802]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,102680}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，克裡安卡會為自身、己方生命值最低和攻擊最高的友方單位附加{回火}(目標獲得1層基於克裡安卡最大生命[14]%的護盾，且獲得3次反傷和3次免疫負面狀態的持續效果)，持續2回合——反傷係數為[[20]]%，該傷害穿透護盾且不超過克裡安卡最大生命的[[[14]]]%)"
},
	[1026803]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1026802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，克裡安卡會為自身、己方生命值最低和攻擊最高的友方單位附加{回火}(目標獲得1層基於克裡安卡最大生命[14]%的護盾，且獲得3次反傷和3次免疫負面狀態的持續效果)，持續2回合——反傷係數為[[20]]%，該傷害穿透護盾且不超過克裡安卡最大生命的[[[14]]]%)"
},
	[1026804]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,102680}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，克裡安卡會為自身、己方生命值最低和攻擊最高的友方單位附加{回火}(目標獲得1層基於克裡安卡最大生命[14]%的護盾，且獲得3次反傷和3次免疫負面狀態的持續效果)，持續2回合——反傷係數為[[20]]%，該傷害穿透護盾且不超過克裡安卡最大生命的[[[14]]]%)"
},
	[1026805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，克裡安卡會為自身、己方生命值最低和攻擊最高的友方單位附加{回火}(目標獲得1層基於克裡安卡最大生命[14]%的護盾，且獲得3次反傷和3次免疫負面狀態的持續效果)，持續2回合——反傷係數為[[20]]%，該傷害穿透護盾且不超過克裡安卡最大生命的[[[14]]]%)"
},
	[102690]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="同一回合內，克裡安卡會對攻擊他的敵人添加{焰苗}(每次受到攻擊傷害時添加1次，最多添加[4]次)；自身和{回火}下的友方在受到帶有{焰苗}的敵人攻擊時，承受傷害將降低該敵人帶有的{焰苗}層數*[[2]]%"
},
	[1026901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102690}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="同一回合內，克裡安卡會對攻擊他的敵人添加{焰苗}(每次受到攻擊傷害時添加1次，最多添加[4]次)；自身和{回火}下的友方在受到帶有{焰苗}的敵人攻擊時，承受傷害將降低該敵人帶有的{焰苗}層數*[[2]]%"
},
	[1026902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="同一回合內，克裡安卡會對攻擊他的敵人添加{焰苗}(每次受到攻擊傷害時添加1次，最多添加[4]次)；自身和{回火}下的友方在受到帶有{焰苗}的敵人攻擊時，承受傷害將降低該敵人帶有的{焰苗}層數*[[2]]%"
},
	[1026903]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102680}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="同一回合內，克裡安卡會對攻擊他的敵人添加{焰苗}(每次受到攻擊傷害時添加1次，最多添加[4]次)；自身和{回火}下的友方在受到帶有{焰苗}的敵人攻擊時，承受傷害將降低該敵人帶有的{焰苗}層數*[[2]]%"
},
	[102780]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在场时，每回合开始将激活{骑士的誓言}——友方所有战员攻击提升[8]%，同属性战员效果提升50%，持续1回合；{骑士的誓言}为自身额外提供[[10]]%的暴击几率"
},
	[1027801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,102780}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在场时，每回合开始将激活{骑士的誓言}——友方所有战员攻击提升[8]%，同属性战员效果提升50%，持续1回合；{骑士的誓言}为自身额外提供[[10]]%的暴击几率"
},
	[1027802]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在场时，每回合开始将激活{骑士的誓言}——友方所有战员攻击提升[8]%，同属性战员效果提升50%，持续1回合；{骑士的誓言}为自身额外提供[[10]]%的暴击几率"
},
	[1027803]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在场时，每回合开始将激活{骑士的誓言}——友方所有战员攻击提升[8]%，同属性战员效果提升50%，持续1回合；{骑士的誓言}为自身额外提供[[10]]%的暴击几率"
},
	[1027804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,1023902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在场时，每回合开始将激活{骑士的誓言}——友方所有战员攻击提升[8]%，同属性战员效果提升50%，持续1回合；{骑士的誓言}为自身额外提供[[10]]%的暴击几率"
},
	[102790]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="行动时将{锁定}敌方生命值最低的目标(目标为怪物时优先锁定BOSS>精英)，使友方对其造成的伤害提升[6]%，自身效果提升[[70]]%。敌方单位每降低25%血量，自身获得1层{谴罚}，当{谴罚}满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害{无法被抵挡}"
},
	[1027901]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="行动时将{锁定}敌方生命值最低的目标(目标为怪物时优先锁定BOSS>精英)，使友方对其造成的伤害提升[6]%，自身效果提升[[70]]%。敌方单位每降低25%血量，自身获得1层{谴罚}，当{谴罚}满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害{无法被抵挡}"
},
	[1027902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=170, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="行动时将{锁定}敌方生命值最低的目标(目标为怪物时优先锁定BOSS>精英)，使友方对其造成的伤害提升[6]%，自身效果提升[[70]]%。敌方单位每降低25%血量，自身获得1层{谴罚}，当{谴罚}满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害{无法被抵挡}"
},
	[1027903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="行动时将{锁定}敌方生命值最低的目标(目标为怪物时优先锁定BOSS>精英)，使友方对其造成的伤害提升[6]%，自身效果提升[[70]]%。敌方单位每降低25%血量，自身获得1层{谴罚}，当{谴罚}满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害{无法被抵挡}"
},
	[1027904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,1027903}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="行动时将{锁定}敌方生命值最低的目标(目标为怪物时优先锁定BOSS>精英)，使友方对其造成的伤害提升[6]%，自身效果提升[[70]]%。敌方单位每降低25%血量，自身获得1层{谴罚}，当{谴罚}满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害{无法被抵挡}"
},
	[1027905]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102703}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="行动时将{锁定}敌方生命值最低的目标(目标为怪物时优先锁定BOSS>精英)，使友方对其造成的伤害提升[6]%，自身效果提升[[70]]%。敌方单位每降低25%血量，自身获得1层{谴罚}，当{谴罚}满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害{无法被抵挡}"
},
	[1027906]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="行动时将{锁定}敌方生命值最低的目标(目标为怪物时优先锁定BOSS>精英)，使友方对其造成的伤害提升[6]%，自身效果提升[[70]]%。敌方单位每降低25%血量，自身获得1层{谴罚}，当{谴罚}满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害{无法被抵挡}"
},
	[1027907]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102703}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="行动时将{锁定}敌方生命值最低的目标(目标为怪物时优先锁定BOSS>精英)，使友方对其造成的伤害提升[6]%，自身效果提升[[70]]%。敌方单位每降低25%血量，自身获得1层{谴罚}，当{谴罚}满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害{无法被抵挡}"
},
	[1027908]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="行动时将{锁定}敌方生命值最低的目标(目标为怪物时优先锁定BOSS>精英)，使友方对其造成的伤害提升[6]%，自身效果提升[[70]]%。敌方单位每降低25%血量，自身获得1层{谴罚}，当{谴罚}满6层时则会对锁定目标释放1次源能爆发(无消耗，当前行动单位技能释放后发动)，且该伤害{无法被抵挡}"
},
	[102880]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆每次行动时会获得1层{浮图}；当敌方行动并发动技能攻击时，云篆会消耗1层{浮图}中断敌方战斗流程并对其附加1层{箓术}(目标攻击降低[8]%)，持续2回合，最多叠加2层；每次激活{浮图}时，云篆的属性抗性将提升[[4]]%，持续至战斗结束，最多叠加5层"
},
	[1028801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=173, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆每次行动时会获得1层{浮图}；当敌方行动并发动技能攻击时，云篆会消耗1层{浮图}中断敌方战斗流程并对其附加1层{箓术}(目标攻击降低[8]%)，持续2回合，最多叠加2层；每次激活{浮图}时，云篆的属性抗性将提升[[4]]%，持续至战斗结束，最多叠加5层"
},
	[1028802]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆每次行动时会获得1层{浮图}；当敌方行动并发动技能攻击时，云篆会消耗1层{浮图}中断敌方战斗流程并对其附加1层{箓术}(目标攻击降低[8]%)，持续2回合，最多叠加2层；每次激活{浮图}时，云篆的属性抗性将提升[[4]]%，持续至战斗结束，最多叠加5层"
},
	[1028803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,102880}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆每次行动时会获得1层{浮图}；当敌方行动并发动技能攻击时，云篆会消耗1层{浮图}中断敌方战斗流程并对其附加1层{箓术}(目标攻击降低[8]%)，持续2回合，最多叠加2层；每次激活{浮图}时，云篆的属性抗性将提升[[4]]%，持续至战斗结束，最多叠加5层"
},
	[1028804]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆每次行动时会获得1层{浮图}；当敌方行动并发动技能攻击时，云篆会消耗1层{浮图}中断敌方战斗流程并对其附加1层{箓术}(目标攻击降低[8]%)，持续2回合，最多叠加2层；每次激活{浮图}时，云篆的属性抗性将提升[[4]]%，持续至战斗结束，最多叠加5层"
},
	[1028805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,1028901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆每次行动时会获得1层{浮图}；当敌方行动并发动技能攻击时，云篆会消耗1层{浮图}中断敌方战斗流程并对其附加1层{箓术}(目标攻击降低[8]%)，持续2回合，最多叠加2层；每次激活{浮图}时，云篆的属性抗性将提升[[4]]%，持续至战斗结束，最多叠加5层"
},
	[1028806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=164, trigger_num={102803}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆每次行动时会获得1层{浮图}；当敌方行动并发动技能攻击时，云篆会消耗1层{浮图}中断敌方战斗流程并对其附加1层{箓术}(目标攻击降低[8]%)，持续2回合，最多叠加2层；每次激活{浮图}时，云篆的属性抗性将提升[[4]]%，持续至战斗结束，最多叠加5层"
},
	[1028807]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=164, trigger_num={102803}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆每次行动时会获得1层{浮图}；当敌方行动并发动技能攻击时，云篆会消耗1层{浮图}中断敌方战斗流程并对其附加1层{箓术}(目标攻击降低[8]%)，持续2回合，最多叠加2层；每次激活{浮图}时，云篆的属性抗性将提升[[4]]%，持续至战斗结束，最多叠加5层"
},
	[102890]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆的生命上限永久提升[10]%；云篆在受到技能攻击时有[[70]]%几率获得1层{爻辞}，最多叠加6层，满层时{爻辞}将转化为1层{浮图}(浮图存在时爻辞无法转化)"
},
	[1028901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=69, trigger_num={}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="云篆的生命上限永久提升[10]%；云篆在受到技能攻击时有[[70]]%几率获得1层{爻辞}，最多叠加6层，满层时{爻辞}将转化为1层{浮图}(浮图存在时爻辞无法转化)"
},
	[1028902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1028901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="云篆的生命上限永久提升[10]%；云篆在受到技能攻击时有[[70]]%几率获得1层{爻辞}，最多叠加6层，满层时{爻辞}将转化为1层{浮图}(浮图存在时爻辞无法转化)"
},
	[102980]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029802]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029803]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029804]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=12, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029808]={ target_rule=10, damage_area=6, damage_num=0, trigger_type=105, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029809]={ target_rule=10, damage_area=6, damage_num=0, trigger_type=105, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029810]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029811]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029812]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029813]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029814]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[1029815]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时随机在敌方周围生成1个静电球(无敌状态，占据空位，且静电球继承闪蝶[30]%的{攻击类属性})，持续2回合，最多出现3个。处于静电球九宫格范围的敌方单位速度降低[[3]]%*{电极}层数、骋电抗性降低[[[4]]]%*{电极}层数(无法叠加，仅生效最大值)；每回合结束时，静电球会对{敌方全体}进行放电，造成静电球攻击力30%*{电极}层数的骋电伤害(可暴击和增伤)。闪蝶行动时会为静电球提供1层{电极}，每个静电球的最多可储存4层{电极}"
},
	[102990]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102980}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="静电球的持续回合+1，且静电球在{电极}满层时进化为闪电球，放电时有[5]%*闪电球个数的几率对目标造成{麻痹}效果(敌方无法行动，且伤害减免降低[[6]]%，仅判定1次，麻痹目标数量最多不超过闪电球个数)，持续至下回合结束"
},
	[1029901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1029802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="静电球的持续回合+1，且静电球在{电极}满层时进化为闪电球，放电时有[5]%*闪电球个数的几率对目标造成{麻痹}效果(敌方无法行动，且伤害减免降低[[6]]%，仅判定1次，麻痹目标数量最多不超过闪电球个数)，持续至下回合结束"
},
	[1029902]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=6, trigger_num={}, trigger_rate=0, is_effect_inc=0, damage_source=8, desc="静电球的持续回合+1，且静电球在{电极}满层时进化为闪电球，放电时有[5]%*闪电球个数的几率对目标造成{麻痹}效果(敌方无法行动，且伤害减免降低[[6]]%，仅判定1次，麻痹目标数量最多不超过闪电球个数)，持续至下回合结束"
},
	[1029903]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1029902}, trigger_rate=0, is_effect_inc=0, damage_source=8, desc="静电球的持续回合+1，且静电球在{电极}满层时进化为闪电球，放电时有[5]%*闪电球个数的几率对目标造成{麻痹}效果(敌方无法行动，且伤害减免降低[[6]]%，仅判定1次，麻痹目标数量最多不超过闪电球个数)，持续至下回合结束"
},
	[1029904]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1029803}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="静电球的持续回合+1，且静电球在{电极}满层时进化为闪电球，放电时有[5]%*闪电球个数的几率对目标造成{麻痹}效果(敌方无法行动，且伤害减免降低[[6]]%，仅判定1次，麻痹目标数量最多不超过闪电球个数)，持续至下回合结束"
},
	[103080]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=156, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[1030801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103080}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[1030802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,1030801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[1030803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[1030804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=156, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[1030805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=152, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[1030806]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=10, trigger_num={103005}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[1030807]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=164, trigger_num={103003}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[1030808]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103005}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[1030809]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,103080}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶在友方行动后会获得1层{狐火}，上限为10层。满层时红叶解放{狐火咒解}(清除自身控制效果)并立即对{敌方全体}发动1次{秘刃·绯红闪}，造成红叶攻击[80]%的轰炎伤害；{狐火咒解}状态下，红叶无法获得{狐火}，且任意角色行动后红叶会消耗2层{狐火}对{敌方全体}发动1次{秘刃·焚绝黄泉}，造成红叶攻击[[60]]%的轰炎伤害(对首要目标伤害额外提升{{灼伤}}层数*[[[5]]]%)，{狐火}层数=0时红叶将退出该状态"
},
	[103090]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=108, trigger_num={1,103080}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶每次消耗{意}时，将获得1层{识破}(每层识破提高自身[4]%的轰炎伤害和[[40]]点防御穿透，死亡不移除)，持续至战斗结束，最多叠加6层。当{识破}存在时，自身{秘刃·焚绝黄泉}将对目标附加{重伤}效果(受到的治疗和护盾效果降低8%)，持续2回合，最多叠加5层；若{识破}满层时，则{秘刃·焚绝黄泉}对首要目标额外附加{焚祸}效果(无法获得护盾)，持续2回合"
},
	[1030901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={103005}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶每次消耗{意}时，将获得1层{识破}(每层识破提高自身[4]%的轰炎伤害和[[40]]点防御穿透，死亡不移除)，持续至战斗结束，最多叠加6层。当{识破}存在时，自身{秘刃·焚绝黄泉}将对目标附加{重伤}效果(受到的治疗和护盾效果降低8%)，持续2回合，最多叠加5层；若{识破}满层时，则{秘刃·焚绝黄泉}对首要目标额外附加{焚祸}效果(无法获得护盾)，持续2回合"
},
	[1030902]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103005}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="红叶每次消耗{意}时，将获得1层{识破}(每层识破提高自身[4]%的轰炎伤害和[[40]]点防御穿透，死亡不移除)，持续至战斗结束，最多叠加6层。当{识破}存在时，自身{秘刃·焚绝黄泉}将对目标附加{重伤}效果(受到的治疗和护盾效果降低8%)，持续2回合，最多叠加5层；若{识破}满层时，则{秘刃·焚绝黄泉}对首要目标额外附加{焚祸}效果(无法获得护盾)，持续2回合"
},
	[103180]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,1031802,1031803,1031804,1031805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1031802,1031803,1031804,1031805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031803]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,1031802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031804]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,1031803}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031805]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,1031804}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031806]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,1031805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031807]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,1031802,1031803,1031804,1031805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031810]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,1031802,1031803,1031804,1031805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031811]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,1031802,1031803,1031804,1031805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031812]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,1031802,1031803,1031804,1031805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031814]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,1031802,1031803,1031804,1031805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031815]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031816]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031817]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[1031818]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行动时，珂芙尼尔将从4颗宝石晖灵中随机获取1种：(宝石晖灵永久存在，死亡时移除，优先获取未获取的)\n1-获得炽芒晖灵时，对友方全体施加攻击增益(攻击提升[6]%)，持续2回合\n2-获得曜金晖灵时，对友方全体施加增伤增益(属性伤害提升[[8]]%)，持续2回合\n3-获得蔚宇晖灵时，对友方全体施加效果抵抗增益(效果抵抗提升[[[5]]]%)，持续2回合\n4-获得陇息晖灵时，对友方全体施加守护增益(受到的技能伤害降低15%)，持续2回合\n当珂芙尼尔拥有全部晖灵时，会进入{璀璨共鸣}状态，该状态下珂芙尼尔将无法被敌方选中(仅会受到群体伤害，无法被单体技能选中，且4颗宝石存在时，自身属性增益效果翻倍，若场中仅剩自身则无法共鸣)"
},
	[103190]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=107, trigger_num={}, trigger_rate=2000, is_effect_inc=0, damage_source=8, desc="珂芙尼尔在拥有{灵魂丝结}时，自身行动后有[20]%几率会对友方全体施加2层{心灵烙印}，否则对友方全体施加1层{心灵烙印}(目标在受到眩晕、冰冻、沉默或麻痹时会消耗1层抵消该效果)，持续2回合，最多叠加2层"
},
	[1031902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,103190}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="珂芙尼尔在拥有{灵魂丝结}时，自身行动后有[20]%几率会对友方全体施加2层{心灵烙印}，否则对友方全体施加1层{心灵烙印}(目标在受到眩晕、冰冻、沉默或麻痹时会消耗1层抵消该效果)，持续2回合，最多叠加2层"
},
	[1031903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103190}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="珂芙尼尔在拥有{灵魂丝结}时，自身行动后有[20]%几率会对友方全体施加2层{心灵烙印}，否则对友方全体施加1层{心灵烙印}(目标在受到眩晕、冰冻、沉默或麻痹时会消耗1层抵消该效果)，持续2回合，最多叠加2层"
},
	[1031904]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="珂芙尼尔在拥有{灵魂丝结}时，自身行动后有[20]%几率会对友方全体施加2层{心灵烙印}，否则对友方全体施加1层{心灵烙印}(目标在受到眩晕、冰冻、沉默或麻痹时会消耗1层抵消该效果)，持续2回合，最多叠加2层"
},
	[103280]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在场时，每回合开始将激活{旋风场}——友方所有战员攻击提升[6]%；同属性战员行动时，攻击额外提升聆风攻击的[[4]]%，最多叠加2层，持续1回合；自身在旋风场中防御穿透提升[[[100]]]点"
},
	[1032801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103280}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在场时，每回合开始将激活{旋风场}——友方所有战员攻击提升[6]%；同属性战员行动时，攻击额外提升聆风攻击的[[4]]%，最多叠加2层，持续1回合；自身在旋风场中防御穿透提升[[[100]]]点"
},
	[1032802]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在场时，每回合开始将激活{旋风场}——友方所有战员攻击提升[6]%；同属性战员行动时，攻击额外提升聆风攻击的[[4]]%，最多叠加2层，持续1回合；自身在旋风场中防御穿透提升[[[100]]]点"
},
	[1032803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在场时，每回合开始将激活{旋风场}——友方所有战员攻击提升[6]%；同属性战员行动时，攻击额外提升聆风攻击的[[4]]%，最多叠加2层，持续1回合；自身在旋风场中防御穿透提升[[[100]]]点"
},
	[103290]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时聆风获得1层{气旋}，最多叠加5层。当{气旋}达到4层及以上时，聆风将消耗4层{气旋}清除自身控制效果，并立即对随机一个友方战员释放{季风}(优先作用于自身九宫格范围内除自身外的战员)；获得{季风}的战员在当前回合自身行动结束后会{再次行动}(清除自身控制效果并回复1格能量，但造成伤害会降低[30]%)--若该战员本回合已行动，则{再次行动}会在聆风行动后触发(获得{季风}的单位在5回合内无法再次获得{季风})。此外聆风获得{气旋}时将提高自身[[2]]%的伤害加深和[[[4]]]%的生蕴伤害，最多叠加8层，持续至战斗结束"
},
	[1032901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103290}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时聆风获得1层{气旋}，最多叠加5层。当{气旋}达到4层及以上时，聆风将消耗4层{气旋}清除自身控制效果，并立即对随机一个友方战员释放{季风}(优先作用于自身九宫格范围内除自身外的战员)；获得{季风}的战员在当前回合自身行动结束后会{再次行动}(清除自身控制效果并回复1格能量，但造成伤害会降低[30]%)--若该战员本回合已行动，则{再次行动}会在聆风行动后触发(获得{季风}的单位在5回合内无法再次获得{季风})。此外聆风获得{气旋}时将提高自身[[2]]%的伤害加深和[[[4]]]%的生蕴伤害，最多叠加8层，持续至战斗结束"
},
	[1032902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=164, trigger_num={103203}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时聆风获得1层{气旋}，最多叠加5层。当{气旋}达到4层及以上时，聆风将消耗4层{气旋}清除自身控制效果，并立即对随机一个友方战员释放{季风}(优先作用于自身九宫格范围内除自身外的战员)；获得{季风}的战员在当前回合自身行动结束后会{再次行动}(清除自身控制效果并回复1格能量，但造成伤害会降低[30]%)--若该战员本回合已行动，则{再次行动}会在聆风行动后触发(获得{季风}的单位在5回合内无法再次获得{季风})。此外聆风获得{气旋}时将提高自身[[2]]%的伤害加深和[[[4]]]%的生蕴伤害，最多叠加8层，持续至战斗结束"
},
	[1032903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103290}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时聆风获得1层{气旋}，最多叠加5层。当{气旋}达到4层及以上时，聆风将消耗4层{气旋}清除自身控制效果，并立即对随机一个友方战员释放{季风}(优先作用于自身九宫格范围内除自身外的战员)；获得{季风}的战员在当前回合自身行动结束后会{再次行动}(清除自身控制效果并回复1格能量，但造成伤害会降低[30]%)--若该战员本回合已行动，则{再次行动}会在聆风行动后触发(获得{季风}的单位在5回合内无法再次获得{季风})。此外聆风获得{气旋}时将提高自身[[2]]%的伤害加深和[[[4]]]%的生蕴伤害，最多叠加8层，持续至战斗结束"
},
	[1032904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时聆风获得1层{气旋}，最多叠加5层。当{气旋}达到4层及以上时，聆风将消耗4层{气旋}清除自身控制效果，并立即对随机一个友方战员释放{季风}(优先作用于自身九宫格范围内除自身外的战员)；获得{季风}的战员在当前回合自身行动结束后会{再次行动}(清除自身控制效果并回复1格能量，但造成伤害会降低[30]%)--若该战员本回合已行动，则{再次行动}会在聆风行动后触发(获得{季风}的单位在5回合内无法再次获得{季风})。此外聆风获得{气旋}时将提高自身[[2]]%的伤害加深和[[[4]]]%的生蕴伤害，最多叠加8层，持续至战斗结束"
},
	[1032905]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时聆风获得1层{气旋}，最多叠加5层。当{气旋}达到4层及以上时，聆风将消耗4层{气旋}清除自身控制效果，并立即对随机一个友方战员释放{季风}(优先作用于自身九宫格范围内除自身外的战员)；获得{季风}的战员在当前回合自身行动结束后会{再次行动}(清除自身控制效果并回复1格能量，但造成伤害会降低[30]%)--若该战员本回合已行动，则{再次行动}会在聆风行动后触发(获得{季风}的单位在5回合内无法再次获得{季风})。此外聆风获得{气旋}时将提高自身[[2]]%的伤害加深和[[[4]]]%的生蕴伤害，最多叠加8层，持续至战斗结束"
},
	[1032906]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,1032902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时聆风获得1层{气旋}，最多叠加5层。当{气旋}达到4层及以上时，聆风将消耗4层{气旋}清除自身控制效果，并立即对随机一个友方战员释放{季风}(优先作用于自身九宫格范围内除自身外的战员)；获得{季风}的战员在当前回合自身行动结束后会{再次行动}(清除自身控制效果并回复1格能量，但造成伤害会降低[30]%)--若该战员本回合已行动，则{再次行动}会在聆风行动后触发(获得{季风}的单位在5回合内无法再次获得{季风})。此外聆风获得{气旋}时将提高自身[[2]]%的伤害加深和[[[4]]]%的生蕴伤害，最多叠加8层，持续至战斗结束"
},
	[1032907]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时聆风获得1层{气旋}，最多叠加5层。当{气旋}达到4层及以上时，聆风将消耗4层{气旋}清除自身控制效果，并立即对随机一个友方战员释放{季风}(优先作用于自身九宫格范围内除自身外的战员)；获得{季风}的战员在当前回合自身行动结束后会{再次行动}(清除自身控制效果并回复1格能量，但造成伤害会降低[30]%)--若该战员本回合已行动，则{再次行动}会在聆风行动后触发(获得{季风}的单位在5回合内无法再次获得{季风})。此外聆风获得{气旋}时将提高自身[[2]]%的伤害加深和[[[4]]]%的生蕴伤害，最多叠加8层，持续至战斗结束"
},
	[1032908]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1032905}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时聆风获得1层{气旋}，最多叠加5层。当{气旋}达到4层及以上时，聆风将消耗4层{气旋}清除自身控制效果，并立即对随机一个友方战员释放{季风}(优先作用于自身九宫格范围内除自身外的战员)；获得{季风}的战员在当前回合自身行动结束后会{再次行动}(清除自身控制效果并回复1格能量，但造成伤害会降低[30]%)--若该战员本回合已行动，则{再次行动}会在聆风行动后触发(获得{季风}的单位在5回合内无法再次获得{季风})。此外聆风获得{气旋}时将提高自身[[2]]%的伤害加深和[[[4]]]%的生蕴伤害，最多叠加8层，持续至战斗结束"
},
	[103380]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="回合开始时，泽菲琳随机从3种祝福中获取1种：（优先获取未获取的祝福）\n获取{奋勇祝福}：友方攻击增强—全体友方攻击提高[12]%，持续1回合\n获取{智识祝福}：友方速度强化—全体友方速度提升泽菲琳速度的[[8]]%，持续1回合\n获取{慈爱祝福}：友方守护升华—友方行动时受到的所有类型伤害降低[[[20]]]%)，持续1回合；重复获取时刷新已有祝福持续时间"
},
	[1033801]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,1033801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="回合开始时，泽菲琳随机从3种祝福中获取1种：（优先获取未获取的祝福）\n获取{奋勇祝福}：友方攻击增强—全体友方攻击提高[12]%，持续1回合\n获取{智识祝福}：友方速度强化—全体友方速度提升泽菲琳速度的[[8]]%，持续1回合\n获取{慈爱祝福}：友方守护升华—友方行动时受到的所有类型伤害降低[[[20]]]%)，持续1回合；重复获取时刷新已有祝福持续时间"
},
	[1033802]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,1033802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="回合开始时，泽菲琳随机从3种祝福中获取1种：（优先获取未获取的祝福）\n获取{奋勇祝福}：友方攻击增强—全体友方攻击提高[12]%，持续1回合\n获取{智识祝福}：友方速度强化—全体友方速度提升泽菲琳速度的[[8]]%，持续1回合\n获取{慈爱祝福}：友方守护升华—友方行动时受到的所有类型伤害降低[[[20]]]%)，持续1回合；重复获取时刷新已有祝福持续时间"
},
	[1033803]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="回合开始时，泽菲琳随机从3种祝福中获取1种：（优先获取未获取的祝福）\n获取{奋勇祝福}：友方攻击增强—全体友方攻击提高[12]%，持续1回合\n获取{智识祝福}：友方速度强化—全体友方速度提升泽菲琳速度的[[8]]%，持续1回合\n获取{慈爱祝福}：友方守护升华—友方行动时受到的所有类型伤害降低[[[20]]]%)，持续1回合；重复获取时刷新已有祝福持续时间"
},
	[103390]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=75, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳生命值首次低于75%时，获得1层{金羽庇护}(提供自身攻击的[160]%的护盾，且该护盾存在时，自身伤害减免提高[[20]]%)，持续2回合，最多叠加2层；泽菲琳受到致命伤害时会免疫该次伤害并立即获得1层{金羽庇护}，同时清除自身控制效果，战斗中仅生效1次"
},
	[1033901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳生命值首次低于75%时，获得1层{金羽庇护}(提供自身攻击的[160]%的护盾，且该护盾存在时，自身伤害减免提高[[20]]%)，持续2回合，最多叠加2层；泽菲琳受到致命伤害时会免疫该次伤害并立即获得1层{金羽庇护}，同时清除自身控制效果，战斗中仅生效1次"
},
	[1033902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1033903}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳生命值首次低于75%时，获得1层{金羽庇护}(提供自身攻击的[160]%的护盾，且该护盾存在时，自身伤害减免提高[[20]]%)，持续2回合，最多叠加2层；泽菲琳受到致命伤害时会免疫该次伤害并立即获得1层{金羽庇护}，同时清除自身控制效果，战斗中仅生效1次"
},
	[1033903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳生命值首次低于75%时，获得1层{金羽庇护}(提供自身攻击的[160]%的护盾，且该护盾存在时，自身伤害减免提高[[20]]%)，持续2回合，最多叠加2层；泽菲琳受到致命伤害时会免疫该次伤害并立即获得1层{金羽庇护}，同时清除自身控制效果，战斗中仅生效1次"
},
	[1033904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳生命值首次低于75%时，获得1层{金羽庇护}(提供自身攻击的[160]%的护盾，且该护盾存在时，自身伤害减免提高[[20]]%)，持续2回合，最多叠加2层；泽菲琳受到致命伤害时会免疫该次伤害并立即获得1层{金羽庇护}，同时清除自身控制效果，战斗中仅生效1次"
},
	[1033905]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1033903}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳生命值首次低于75%时，获得1层{金羽庇护}(提供自身攻击的[160]%的护盾，且该护盾存在时，自身伤害减免提高[[20]]%)，持续2回合，最多叠加2层；泽菲琳受到致命伤害时会免疫该次伤害并立即获得1层{金羽庇护}，同时清除自身控制效果，战斗中仅生效1次"
},
	[1033906]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳生命值首次低于75%时，获得1层{金羽庇护}(提供自身攻击的[160]%的护盾，且该护盾存在时，自身伤害减免提高[[20]]%)，持续2回合，最多叠加2层；泽菲琳受到致命伤害时会免疫该次伤害并立即获得1层{金羽庇护}，同时清除自身控制效果，战斗中仅生效1次"
},
	[1033907]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="泽菲琳生命值首次低于75%时，获得1层{金羽庇护}(提供自身攻击的[160]%的护盾，且该护盾存在时，自身伤害减免提高[[20]]%)，持续2回合，最多叠加2层；泽菲琳受到致命伤害时会免疫该次伤害并立即获得1层{金羽庇护}，同时清除自身控制效果，战斗中仅生效1次"
},
	[103480]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="回合开始时，瞳光会获得1层{底片}，最多叠加6层。每获得1层{底片}，瞳光速度提升[4]%，伤害减免提升[6]%，持续2回合，最多叠加4层。当底片数量>=4层时，瞳光释放奥义后会消耗所有底片在敌方场上前排召唤1个首要目标的拟像（拟像属性继承首要目标，且属性降低40%；拟像无法作为首要目标，且不受增益和减益影响，无法被战斗破坏），持续2回合。拟像承受的攻击伤害会提升消耗{底片}层数*[4]%，且由敌方全体分担"
},
	[1034801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="致死自身"
},
	[1034802]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103404}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="致死自身"
},
	[1034803]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=179, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="致死自身"
},
	[1034804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=179, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="致死自身"
},
	[1034805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1034803}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="致死自身"
},
	[103490]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身行动结束时，若未处于控制状态（眩晕、沉默、封印、冰冻、麻痹），则瞳光会{镜显}到自身九宫格范围内的友方战员（优先身前一格，若无目标则镜显随机友方战员）；{镜显}期间，瞳光无法被选中，且免疫敌方伤害、免疫减益与控制效果，同时被镜显的友方攻击将提升[25]%、伤害减免提升[35]%，镜显持续到瞳光下次行动开始。被镜显的队友不会发生位置变更，但受到致命伤害或被放逐时，瞳光会提前结束镜显"
},
	[1034901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=172, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身行动结束时，若未处于控制状态（眩晕、沉默、封印、冰冻、麻痹），则瞳光会{镜显}到自身九宫格范围内的友方战员（优先身前一格，若无目标则镜显随机友方战员）；{镜显}期间，瞳光无法被选中，且免疫敌方伤害、免疫减益与控制效果，同时被镜显的友方攻击将提升[25]%、伤害减免提升[35]%，镜显持续到瞳光下次行动开始。被镜显的队友不会发生位置变更，但受到致命伤害或被放逐时，瞳光会提前结束镜显"
},
	[1034902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=177, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身行动结束时，若未处于控制状态（眩晕、沉默、封印、冰冻、麻痹），则瞳光会{镜显}到自身九宫格范围内的友方战员（优先身前一格，若无目标则镜显随机友方战员）；{镜显}期间，瞳光无法被选中，且免疫敌方伤害、免疫减益与控制效果，同时被镜显的友方攻击将提升[25]%、伤害减免提升[35]%，镜显持续到瞳光下次行动开始。被镜显的队友不会发生位置变更，但受到致命伤害或被放逐时，瞳光会提前结束镜显"
},
	[1034903]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身行动结束时，若未处于控制状态（眩晕、沉默、封印、冰冻、麻痹），则瞳光会{镜显}到自身九宫格范围内的友方战员（优先身前一格，若无目标则镜显随机友方战员）；{镜显}期间，瞳光无法被选中，且免疫敌方伤害、免疫减益与控制效果，同时被镜显的友方攻击将提升[25]%、伤害减免提升[35]%，镜显持续到瞳光下次行动开始。被镜显的队友不会发生位置变更，但受到致命伤害或被放逐时，瞳光会提前结束镜显"
},
	[1034904]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身行动结束时，若未处于控制状态（眩晕、沉默、封印、冰冻、麻痹），则瞳光会{镜显}到自身九宫格范围内的友方战员（优先身前一格，若无目标则镜显随机友方战员）；{镜显}期间，瞳光无法被选中，且免疫敌方伤害、免疫减益与控制效果，同时被镜显的友方攻击将提升[25]%、伤害减免提升[35]%，镜显持续到瞳光下次行动开始。被镜显的队友不会发生位置变更，但受到致命伤害或被放逐时，瞳光会提前结束镜显"
},
	[1034905]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103403}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身行动结束时，若未处于控制状态（眩晕、沉默、封印、冰冻、麻痹），则瞳光会{镜显}到自身九宫格范围内的友方战员（优先身前一格，若无目标则镜显随机友方战员）；{镜显}期间，瞳光无法被选中，且免疫敌方伤害、免疫减益与控制效果，同时被镜显的友方攻击将提升[25]%、伤害减免提升[35]%，镜显持续到瞳光下次行动开始。被镜显的队友不会发生位置变更，但受到致命伤害或被放逐时，瞳光会提前结束镜显"
},
	[1034906]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身行动结束时，若未处于控制状态（眩晕、沉默、封印、冰冻、麻痹），则瞳光会{镜显}到自身九宫格范围内的友方战员（优先身前一格，若无目标则镜显随机友方战员）；{镜显}期间，瞳光无法被选中，且免疫敌方伤害、免疫减益与控制效果，同时被镜显的友方攻击将提升[25]%、伤害减免提升[35]%，镜显持续到瞳光下次行动开始。被镜显的队友不会发生位置变更，但受到致命伤害或被放逐时，瞳光会提前结束镜显"
},
	[1034907]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身行动结束时，若未处于控制状态（眩晕、沉默、封印、冰冻、麻痹），则瞳光会{镜显}到自身九宫格范围内的友方战员（优先身前一格，若无目标则镜显随机友方战员）；{镜显}期间，瞳光无法被选中，且免疫敌方伤害、免疫减益与控制效果，同时被镜显的友方攻击将提升[25]%、伤害减免提升[35]%，镜显持续到瞳光下次行动开始。被镜显的队友不会发生位置变更，但受到致命伤害或被放逐时，瞳光会提前结束镜显"
},
	[103580]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=156, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035807]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035808]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035809]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=5, trigger_num={103505}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035810]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=5, trigger_num={103506}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035811]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=5, trigger_num={103507}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035812]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103508}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035813]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035814]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035815]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035816]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1035820}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035817]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1035821}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035818]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1035822}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035819]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1035823}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035820]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103503}, trigger_rate=4500, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035821]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103503}, trigger_rate=4500, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035822]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103503}, trigger_rate=4500, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035823]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103503}, trigger_rate=4500, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035824]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,103506,103507,103508}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035825]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,103505,103507,103508}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035826]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,103505,103506,103508}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035827]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,103505,103506,103507}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035828]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=156, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035829]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103503,103505,103506,103507,103508}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方单位行动结束后(自身除外)，自身会释放1次{魔弹}，对{敌方全体}造成自身攻击[80]%的量蚀伤害(首要目标伤害加深30%)，且根据{魔弹}释放次数依次进行进化判定，有[45]%几率触发以下效果：\n{魔弹}进化为{沉眠之弹}：对{敌方全体}附加减速效果(目标速度降低8%)，上限2层，持续2回合\n{魔弹}进化为{枯萎之弹}：对{敌方全体}附加损毁效果(目标源能获取效率降低25%)，上限2层，持续2回合\n{魔弹}进化为{病弱之弹}：对{敌方全体}附加虚弱效果(目标属性抗性降低15%)，上限2层，持续2回合\n{魔弹}进化为{繁茂之弹}：在我方场上随机位置创造出1个{蔷薇分身}，分身继承自身[50]%攻击(其余伤害属性与本体一致且免疫所有攻击伤害和负面效果，无法被选中)，已存在{蔷薇分身}时该效果为刷新存在时间；{蔷薇分身}在友方单位行动后也会释放1次{魔弹}(蔷薇分身除外)，并随机进行进化判定(概率与效果跟随白蔷薇，但不会触发{繁茂之弹})，持续2回合\n白蔷薇、{蔷薇分身}释放{魔弹}时被视为释放源能爆发，且{蔷薇分身}释放的{魔弹}不会触发目标{受到攻击时}生效的特殊能力"
},
	[1035180]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351801]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=156, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=156, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351807]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351808]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={103503,103505,103506,103507}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351809]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=2, trigger_num={103503,103505,103506,103507}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[10351810]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="继承本体的技能系数，继承本体的子弹效果，友方单位行动后随机释放{{魔弹}}，除开繁茂之弹"
},
	[103590]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103503,103505,103506,103507,103508}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="自身每次释放{魔弹}时，有[50]%几率获得1层{蔷薇花瓣}(受到攻击伤害导致生命损失达到10%以上时，消耗1层蔷薇花瓣可抵挡后续伤害)，最多叠加3层；{蔷薇花瓣}消耗时可为自身提供[4]%属性抗性，持续至战斗结束，最多叠加6层"
},
	[1035901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=108, trigger_num={1,103590}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每次释放{魔弹}时，有[50]%几率获得1层{蔷薇花瓣}(受到攻击伤害导致生命损失达到10%以上时，消耗1层蔷薇花瓣可抵挡后续伤害)，最多叠加3层；{蔷薇花瓣}消耗时可为自身提供[4]%属性抗性，持续至战斗结束，最多叠加6层"
},
	[1035902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={103590}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每次释放{魔弹}时，有[50]%几率获得1层{蔷薇花瓣}(受到攻击伤害导致生命损失达到10%以上时，消耗1层蔷薇花瓣可抵挡后续伤害)，最多叠加3层；{蔷薇花瓣}消耗时可为自身提供[4]%属性抗性，持续至战斗结束，最多叠加6层"
},
	[103680]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=176, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,1036801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036803]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,103603}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036804]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036805]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=156, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036807]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=160, trigger_num={1,103603}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036808]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=164, trigger_num={103603}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036809]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036810]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[1036811]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,103603}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="弦枝在友方其他单位释放技能后会获得1层{乐谱}(额外技能不触发)，最多叠加5层；每次获得{乐谱}时，弦枝的伤害减免和治疗加成均提高[6]%，持续至战斗结束，最多叠加5层。当{乐谱}满层时，弦枝将会使用{乐谱}进入{林间奏鸣}状态(在当前行动者释放技能后立即触发)，为友方全体附加1层{旋律}(目标攻击提升[8]%)，持续3回合，最多叠加3层；弦枝的{林间奏鸣}每次会持续1回合，弦枝在该状态下不会被选为首要目标，且免疫打断和控制效果；此外，友方其他单位在行动前和行动后均会获得弦枝攻击[60]%的生命恢复"
},
	[103690]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命伤害时将免疫后续伤害并回复自身最大生命的[60]%，同时中断敌方行动，战斗中仅生效1次；触发该效果时，自身将立即获得1层{乐谱}并回复友方全体弦枝攻击[160]%的生命"
},
	[1036901]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=44, trigger_num={1,103690}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命伤害时将免疫后续伤害并回复自身最大生命的[60]%，同时中断敌方行动，战斗中仅生效1次；触发该效果时，自身将立即获得1层{乐谱}并回复友方全体弦枝攻击[160]%的生命"
},
	[1036902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,103690}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命伤害时将免疫后续伤害并回复自身最大生命的[60]%，同时中断敌方行动，战斗中仅生效1次；触发该效果时，自身将立即获得1层{乐谱}并回复友方全体弦枝攻击[160]%的生命"
},
	[1036903]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=44, trigger_num={1,103690}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命伤害时将免疫后续伤害并回复自身最大生命的[60]%，同时中断敌方行动，战斗中仅生效1次；触发该效果时，自身将立即获得1层{乐谱}并回复友方全体弦枝攻击[160]%的生命"
},
	[1036904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,103690}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到致命伤害时将免疫后续伤害并回复自身最大生命的[60]%，同时中断敌方行动，战斗中仅生效1次；触发该效果时，自身将立即获得1层{乐谱}并回复友方全体弦枝攻击[160]%的生命"
},
	[103780]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103780}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103780}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103780}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103780}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037805]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037806]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037807]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037808]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037809]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037810]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037811]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037812]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,1037042}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[1037813]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,1037042}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合开始时，鸣晔会获得等同友方场上角色数量的{瑶光}(召唤单位除外)，最多可叠加40层；自身每获得1层{瑶光}，伤害减免将提升[1]%，治疗加成将提升[2]%，持续至战斗结束，最多叠加20层\n鸣晔获得指定数量的{瑶光}时，将激活以下增益效果(仅触发1次)：\n鸣晔存在5层以上{瑶光}时，将为友方提供1层护盾增强效果(目标获得的护盾效果提高[20]%)，且同属性战员额外获得12%受到治疗效果提升，持续至战斗结束；\n鸣晔存在15层以上{瑶光}时，将为友方提供1层守护效果(受到所有类型伤害降低[18]%)，且同属性战员额外获得15%暴伤抗性提升，持续至战斗结束；\n鸣晔存在30层以上{瑶光}时，将为友方提供1层攻击增益效果(目标攻击提高[15]%)，且同属性战员额外获得感电伤害触发几率提升24%，持续至战斗结束"
},
	[103790]={ target_rule=15, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合结束时，若己方存在阵亡角色，则鸣晔会根据自身{瑶光}数量进行复活仪式(对每名阵亡角色消耗10层{瑶光}进行复活，以阵亡先后进行，释放复活仪式前鸣晔会清除自身控制效果)，为其回复最大生命[30]%的生命值，使其速度提升[8]%，并获得[40]%源能补充，速度提升效果持续至友方下次行动结束"
},
	[1037901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=164, trigger_num={103703}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合结束时，若己方存在阵亡角色，则鸣晔会根据自身{瑶光}数量进行复活仪式(对每名阵亡角色消耗10层{瑶光}进行复活，以阵亡先后进行，释放复活仪式前鸣晔会清除自身控制效果)，为其回复最大生命[30]%的生命值，使其速度提升[8]%，并获得[40]%源能补充，速度提升效果持续至友方下次行动结束"
},
	[101030]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="艾可首回合获得50%源能补充，且源能爆发对首要目标的封印几率提升[24]%"
},
	[1010301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1010041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="艾可首回合获得50%源能补充，且源能爆发对首要目标的封印几率提升[24]%"
},
	[101130]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={3}, trigger_rate=2500, is_effect_inc=0, damage_source=8, desc="卡兰丽莎释放源能爆发若未击败目标，则有[25]%几率会再次释放{源能爆发}(伤害效果等同于天赋1)；当敌方场上存在{首领}单位时，触发几率提升至[50]%，当前回合重复触发时概率衰减[25]%"
},
	[1011301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={101130}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="卡兰丽莎释放源能爆发若未击败目标，则有[25]%几率会再次释放{源能爆发}(伤害效果等同于天赋1)；当敌方场上存在{首领}单位时，触发几率提升至[50]%，当前回合重复触发时概率衰减[25]%"
},
	[130130]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="莉丽拉首回合获得50%源能补充，且自身源能爆发释放时会额外对友方附加1层{紧急加护}(护盾可吸收目标承受伤害，上限为莉丽拉最大生命的[13.5]%，若超出吸收上限，则护盾消失并抵消该次伤害，且护盾移除时驱散目标身上1个减益或异常效果)"
},
	[1301301]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="莉丽拉首回合获得50%源能补充，且自身源能爆发释放时会额外对友方附加1层{紧急加护}(护盾可吸收目标承受伤害，上限为莉丽拉最大生命的[13.5]%，若超出吸收上限，则护盾消失并抵消该次伤害，且护盾移除时驱散目标身上1个减益或异常效果)"
},
	[1301302]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="莉丽拉首回合获得50%源能补充，且自身源能爆发释放时会额外对友方附加1层{紧急加护}(护盾可吸收目标承受伤害，上限为莉丽拉最大生命的[13.5]%，若超出吸收上限，则护盾消失并抵消该次伤害，且护盾移除时驱散目标身上1个减益或异常效果)"
},
	[1301303]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=174, trigger_num={1,1301301}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="莉丽拉首回合获得50%源能补充，且自身源能爆发释放时会额外对友方附加1层{紧急加护}(护盾可吸收目标承受伤害，上限为莉丽拉最大生命的[13.5]%，若超出吸收上限，则护盾消失并抵消该次伤害，且护盾移除时驱散目标身上1个减益或异常效果)"
},
	[101530]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1015805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{鹿灵}行动后将不再重置层数，且行动时会驱散达瓦林受到的控制效果；达瓦林在源能爆发释放后会立即触发1次鹿灵攻击，伤害系数为原伤害的[35]%"
},
	[1015301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=164, trigger_num={101503}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{鹿灵}行动后将不再重置层数，且行动时会驱散达瓦林受到的控制效果；达瓦林在源能爆发释放后会立即触发1次鹿灵攻击，伤害系数为原伤害的[35]%"
},
	[1015302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={101504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{鹿灵}行动后将不再重置层数，且行动时会驱散达瓦林受到的控制效果；达瓦林在源能爆发释放后会立即触发1次鹿灵攻击，伤害系数为原伤害的[35]%"
},
	[110530]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=3500, is_effect_inc=0, damage_source=8, desc="言每回合开始时有[35]%几率获得50%源能补充；自身源能爆发击败首要目标时将补充自身{剑气}至满层，且有[45]%几率再次释放1次源能爆发(无消耗且首要目标将选择对位前排，单回合最多触发1次)。自身拥有{剑气}时，每层剑气还将提供自身[3.5]%的伤害减免效果"
},
	[1105301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={110530}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="言每回合开始时有[35]%几率获得50%源能补充；自身源能爆发击败首要目标时将补充自身{剑气}至满层，且有[45]%几率再次释放1次源能爆发(无消耗且首要目标将选择对位前排，单回合最多触发1次)。自身拥有{剑气}时，每层剑气还将提供自身[3.5]%的伤害减免效果"
},
	[1105302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,110580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="言每回合开始时有[35]%几率获得50%源能补充；自身源能爆发击败首要目标时将补充自身{剑气}至满层，且有[45]%几率再次释放1次源能爆发(无消耗且首要目标将选择对位前排，单回合最多触发1次)。自身拥有{剑气}时，每层剑气还将提供自身[3.5]%的伤害减免效果"
},
	[1105303]={ target_rule=5, damage_area=2, damage_num=1, trigger_type=12, trigger_num={110504}, trigger_rate=4500, is_effect_inc=0, damage_source=8, desc="言每回合开始时有[35]%几率获得50%源能补充；自身源能爆发击败首要目标时将补充自身{剑气}至满层，且有[45]%几率再次释放1次源能爆发(无消耗且首要目标将选择对位前排，单回合最多触发1次)。自身拥有{剑气}时，每层剑气还将提供自身[3.5]%的伤害减免效果"
},
	[1105304]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1105303}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="言每回合开始时有[35]%几率获得50%源能补充；自身源能爆发击败首要目标时将补充自身{剑气}至满层，且有[45]%几率再次释放1次源能爆发(无消耗且首要目标将选择对位前排，单回合最多触发1次)。自身拥有{剑气}时，每层剑气还将提供自身[3.5]%的伤害减免效果"
},
	[1105305]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=12, trigger_num={110504}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="言每回合开始时有[35]%几率获得50%源能补充；自身源能爆发击败首要目标时将补充自身{剑气}至满层，且有[45]%几率再次释放1次源能爆发(无消耗且首要目标将选择对位前排，单回合最多触发1次)。自身拥有{剑气}时，每层剑气还将提供自身[3.5]%的伤害减免效果"
},
	[101630]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,101680}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="蒂雅被{星辰之力}环绕时，将获得{星辰之力}层数*[3]%伤害加深效果；{观星状态}下，每次星辰坠击触发时，自身将恢复星辰坠击伤害的[25]%(恢复上限为已损失生命的[30]%)"
},
	[1016301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={101603}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="蒂雅被{星辰之力}环绕时，将获得{星辰之力}层数*[3]%伤害加深效果；{观星状态}下，每次星辰坠击触发时，自身将恢复星辰坠击伤害的[25]%(恢复上限为已损失生命的[30]%)"
},
	[1016302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="蒂雅被{星辰之力}环绕时，将获得{星辰之力}层数*[3]%伤害加深效果；{观星状态}下，每次星辰坠击触发时，自身将恢复星辰坠击伤害的[25]%(恢复上限为已损失生命的[30]%)"
},
	[100430]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="我方战员行动时有[50]%几率获得泠攻击[7.5]%的攻击提升(骋电型战员行动时效果为泠攻击[10.5]%的攻击提升)，且{闪电标记}的持续回合+1，层数上限+1"
},
	[1004301]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="我方战员行动时有[50]%几率获得泠攻击[7.5]%的攻击提升(骋电型战员行动时效果为泠攻击[10.5]%的攻击提升)，且{闪电标记}的持续回合+1，层数上限+1"
},
	[1004302]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100490}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员行动时有[50]%几率获得泠攻击[7.5]%的攻击提升(骋电型战员行动时效果为泠攻击[10.5]%的攻击提升)，且{闪电标记}的持续回合+1，层数上限+1"
},
	[1004303]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100490}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员行动时有[50]%几率获得泠攻击[7.5]%的攻击提升(骋电型战员行动时效果为泠攻击[10.5]%的攻击提升)，且{闪电标记}的持续回合+1，层数上限+1"
},
	[1004304]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={100430}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员行动时有[50]%几率获得泠攻击[7.5]%的攻击提升(骋电型战员行动时效果为泠攻击[10.5]%的攻击提升)，且{闪电标记}的持续回合+1，层数上限+1"
},
	[1004305]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1004301}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员行动时有[50]%几率获得泠攻击[7.5]%的攻击提升(骋电型战员行动时效果为泠攻击[10.5]%的攻击提升)，且{闪电标记}的持续回合+1，层数上限+1"
},
	[100730]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="冷蛟首回合速度提升[10]%，并获得50%源能补充，且源能爆发对首要目标的冰冻几率提升[10]%；每回合开始时，冷蛟有[35]%几率对敌方全体附加2层{渐冻}，首回合触发几率翻倍"
},
	[1007301]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1007041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="冷蛟首回合速度提升[10]%，并获得50%源能补充，且源能爆发对首要目标的冰冻几率提升[10]%；每回合开始时，冷蛟有[35]%几率对敌方全体附加2层{渐冻}，首回合触发几率翻倍"
},
	[1007302]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=71, trigger_num={1}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="冷蛟首回合速度提升[10]%，并获得50%源能补充，且源能爆发对首要目标的冰冻几率提升[10]%；每回合开始时，冷蛟有[35]%几率对敌方全体附加2层{渐冻}，首回合触发几率翻倍"
},
	[1007303]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="冷蛟首回合速度提升[10]%，并获得50%源能补充，且源能爆发对首要目标的冰冻几率提升[10]%；每回合开始时，冷蛟有[35]%几率对敌方全体附加2层{渐冻}，首回合触发几率翻倍"
},
	[1007304]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1007302}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="冷蛟首回合速度提升[10]%，并获得50%源能补充，且源能爆发对首要目标的冰冻几率提升[10]%；每回合开始时，冷蛟有[35]%几率对敌方全体附加2层{渐冻}，首回合触发几率翻倍"
},
	[1007305]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=77, trigger_num={2,0}, trigger_rate=3500, is_effect_inc=0, damage_source=8, desc="冷蛟首回合速度提升[10]%，并获得50%源能补充，且源能爆发对首要目标的冰冻几率提升[10]%；每回合开始时，冷蛟有[35]%几率对敌方全体附加2层{渐冻}，首回合触发几率翻倍"
},
	[1007306]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1007305}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="冷蛟首回合速度提升[10]%，并获得50%源能补充，且源能爆发对首要目标的冰冻几率提升[10]%；每回合开始时，冷蛟有[35]%几率对敌方全体附加2层{渐冻}，首回合触发几率翻倍"
},
	[1007307]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="冷蛟首回合速度提升[10]%，并获得50%源能补充，且源能爆发对首要目标的冰冻几率提升[10]%；每回合开始时，冷蛟有[35]%几率对敌方全体附加2层{渐冻}，首回合触发几率翻倍"
},
	[1007308]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="冷蛟首回合速度提升[10]%，并获得50%源能补充，且源能爆发对首要目标的冰冻几率提升[10]%；每回合开始时，冷蛟有[35]%几率对敌方全体附加2层{渐冻}，首回合触发几率翻倍"
},
	[101330]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="艾莉丝首回合将获得50%源能补充，且释放技能时将积蓄1层{惊罚}，最多叠加3层；当自身{惊罚}层数>=2层时，自身行动结束后消耗2层{惊罚}对目标释放{极刑止恶}，造成自身攻击[180]%的真实伤害"
},
	[1013301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={101301,101304}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="艾莉丝首回合将获得50%源能补充，且释放技能时将积蓄1层{惊罚}，最多叠加3层；当自身{惊罚}层数>=2层时，自身行动结束后消耗2层{惊罚}对目标释放{极刑止恶}，造成自身攻击[180]%的真实伤害"
},
	[1013302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="艾莉丝首回合将获得50%源能补充，且释放技能时将积蓄1层{惊罚}，最多叠加3层；当自身{惊罚}层数>=2层时，自身行动结束后消耗2层{惊罚}对目标释放{极刑止恶}，造成自身攻击[180]%的真实伤害"
},
	[1013303]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={101303}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="艾莉丝首回合将获得50%源能补充，且释放技能时将积蓄1层{惊罚}，最多叠加3层；当自身{惊罚}层数>=2层时，自身行动结束后消耗2层{惊罚}对目标释放{极刑止恶}，造成自身攻击[180]%的真实伤害"
},
	[101303]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{首要目標}造成自身攻擊[180]%的真實傷害"
},
	[101730]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=69, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="魁霎受到技能伤害或分担伤害时，对敌方全体附加1层{迷思}(每层迷思降低目标[1.5]%的伤害减免，[1.5]%的轰炎抗性)，最多叠加8层，持续2回合。魁霎在场时，每回合开始可以获得1层{庇佑}(自身免疫1次控制效果)，且{玩偶}的持续回合数+1"
},
	[1017301]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=175, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="魁霎受到技能伤害或分担伤害时，对敌方全体附加1层{迷思}(每层迷思降低目标[1.5]%的伤害减免，[1.5]%的轰炎抗性)，最多叠加8层，持续2回合。魁霎在场时，每回合开始可以获得1层{庇佑}(自身免疫1次控制效果)，且{玩偶}的持续回合数+1"
},
	[1017302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="魁霎受到技能伤害或分担伤害时，对敌方全体附加1层{迷思}(每层迷思降低目标[1.5]%的伤害减免，[1.5]%的轰炎抗性)，最多叠加8层，持续2回合。魁霎在场时，每回合开始可以获得1层{庇佑}(自身免疫1次控制效果)，且{玩偶}的持续回合数+1"
},
	[1017303]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={101704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="魁霎受到技能伤害或分担伤害时，对敌方全体附加1层{迷思}(每层迷思降低目标[1.5]%的伤害减免，[1.5]%的轰炎抗性)，最多叠加8层，持续2回合。魁霎在场时，每回合开始可以获得1层{庇佑}(自身免疫1次控制效果)，且{玩偶}的持续回合数+1"
},
	[100183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[511]\n基礎生命+[8]%\n場上每存在1名友方量蝕戰員，自身最大生命提升2%；天賦2觸發時自身立即獲得20%源能補充"
},
	[1001831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,100190}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[511]\n基礎生命+[8]%\n場上每存在1名友方量蝕戰員，自身最大生命提升2%；天賦2觸發時自身立即獲得20%源能補充"
},
	[100186]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={100183}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[844]\n基礎生命+[12]%\n場上每存在1名友方量蝕戰員，自身最大生命提升6%；天賦2觸發時自身立即獲得50%源能補充"
},
	[1001861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1001831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[844]\n基礎生命+[12]%\n場上每存在1名友方量蝕戰員，自身最大生命提升6%；天賦2觸發時自身立即獲得50%源能補充"
},
	[100283]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,100280}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[447]\n基礎生命+[8]%\n每個無人機額外提升目標1%的暴擊傷害；同屬性戰員效果提升40%"
},
	[100286]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100283}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[738]\n基礎生命+[12]%\n每個無人機額外提升目標3%的暴擊傷害；同屬性戰員效果提升40%"
},
	[100383]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={100380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[457]\n基礎生命+[8]%\n{撕裂}的層數上限+1，且持續回合+1"
},
	[1003831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={100380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[457]\n基礎生命+[8]%\n{撕裂}的層數上限+1，且持續回合+1"
},
	[100386]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100383}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[755]\n基礎生命+[12]%\n{撕裂}的層數上限+2，且持續回合+1"
},
	[100483]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[455]\n基礎生命+[8]%\n友方騁電戰員攻擊{閃電標記}下的目標時，暴擊機率提升2%*閃電標記層數"
},
	[1004831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[455]\n基礎生命+[8]%\n友方騁電戰員攻擊{閃電標記}下的目標時，暴擊機率提升2%*閃電標記層數"
},
	[100486]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1004831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[752]\n基礎生命+[12]%\n友方騁電戰員攻擊{閃電標記}下的目標時，暴擊機率提升6%*閃電標記層數"
},
	[100583]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[459]\n基礎生命+[8]%\n{戰意}的層數上限+2；且己方轟炎戰員釋放源能爆發時，自身額外獲得1層{戰意}"
},
	[1005831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=99, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[459]\n基礎生命+[8]%\n{戰意}的層數上限+2；且己方轟炎戰員釋放源能爆發時，自身額外獲得1層{戰意}"
},
	[1005832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[459]\n基礎生命+[8]%\n{戰意}的層數上限+2；且己方轟炎戰員釋放源能爆發時，自身額外獲得1層{戰意}"
},
	[100586]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[758]\n基礎生命+[12]%\n{戰意}的層數上限+6；且己方轟炎戰員釋放源能爆發時，自身額外獲得1層{戰意}"
},
	[100683]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={100680}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[450]\n基礎生命+[8]%\n{勇敢}的層數上限+1，且場上每有1名敵方被擊敗，自身額外獲得1層{勇敢}"
},
	[1006831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=53, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[450]\n基礎生命+[8]%\n{勇敢}的層數上限+1，且場上每有1名敵方被擊敗，自身額外獲得1層{勇敢}"
},
	[100686]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100680}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[743]\n基礎生命+[12]%\n{勇敢}的層數上限+2，且場上每有1名敵方被擊敗，自身額外獲得1層{勇敢}"
},
	[100783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,100780}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[458]\n基礎生命+[8]%\n每層{冰晶}提高自身2%攻擊，且冰凍目標時對目標附加1層{漸凍}"
},
	[1007831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,9904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[458]\n基礎生命+[8]%\n每層{冰晶}提高自身2%攻擊，且冰凍目標時對目標附加1層{漸凍}"
},
	[100786]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={100783}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[756]\n基礎生命+[12]%\n每層{冰晶}提高自身6%攻擊，且冰凍目標時對目標附加2層{漸凍}"
},
	[1007861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,9904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[756]\n基礎生命+[12]%\n每層{冰晶}提高自身6%攻擊，且冰凍目標時對目標附加2層{漸凍}"
},
	[100883]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[445]\n基礎生命+[8]%\n天賦1{爆頭}解除觸發限制，且自身對{灼傷}下的目標暴擊傷害提升1%*{灼傷}層數"
},
	[1008831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100880}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[445]\n基礎生命+[8]%\n天賦1{爆頭}解除觸發限制，且自身對{灼傷}下的目標暴擊傷害提升1%*{灼傷}層數"
},
	[100886]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100883}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[736]\n基礎生命+[12]%\n天賦1{爆頭}解除觸發限制，且自身對{灼傷}下的目標暴擊傷害提升3%*{灼傷}層數"
},
	[100983]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n自身每擊敗1名目標，立即獲得1層{幻火}，且{幻火}>=3層時，自身額外獲得10%吸血加成"
},
	[1009831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n自身每擊敗1名目標，立即獲得1層{幻火}，且{幻火}>=3層時，自身額外獲得10%吸血加成"
},
	[100986]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100983}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[750]\n基礎生命+[12]%\n自身每擊敗1名目標，立即獲得1層{幻火}，且{幻火}>=3層時，自身額外獲得30%吸血加成"
},
	[101083]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1010801,1010802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[443]\n基礎生命+[8]%\n{音符}的持續回合+1，且每回合開始時，自身有40%機率會為友方全體賦予1層{音符}"
},
	[1010831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=4000, is_effect_inc=0, damage_source=8, desc="生命+[443]\n基礎生命+[8]%\n{音符}的持續回合+1，且每回合開始時，自身有40%機率會為友方全體賦予1層{音符}"
},
	[1010832]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[443]\n基礎生命+[8]%\n{音符}的持續回合+1，且每回合開始時，自身有40%機率會為友方全體賦予1層{音符}"
},
	[101086]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1010831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[733]\n基礎生命+[12]%\n{音符}的持續回合+1，且每回合開始時，自身有100%機率會為友方全體賦予1層{音符}"
},
	[101183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={101180}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[459]\n基礎生命+[8]%\n{天賦1}重複觸發時傷害不再衰減，且每擊敗1名敵方，自身攻擊提升4%，最多疊加4層"
},
	[1011831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[459]\n基礎生命+[8]%\n{天賦1}重複觸發時傷害不再衰減，且每擊敗1名敵方，自身攻擊提升4%，最多疊加4層"
},
	[101186]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1011831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[758]\n基礎生命+[12]%\n{天賦1}重複觸發時傷害不再衰減，且每擊敗1名敵方，自身攻擊提升10%，最多疊加4層"
},
	[101283]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={101280}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n{連擊點}的層數上限+1，且{連擊點}>=3層時自身額外獲得80點防禦穿透；自身普攻有50%機率獲得1層{連擊點}"
},
	[1012831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n{連擊點}的層數上限+1，且{連擊點}>=3層時自身額外獲得80點防禦穿透；自身普攻有50%機率獲得1層{連擊點}"
},
	[1012832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={0}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n{連擊點}的層數上限+1，且{連擊點}>=3層時自身額外獲得80點防禦穿透；自身普攻有50%機率獲得1層{連擊點}"
},
	[101286]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={101280}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[750]\n基礎生命+[12]%\n{連擊點}的層數上限+2，且{連擊點}>=3層時自身額外獲得240點防禦穿透；自身普攻有100%機率獲得1層{連擊點}"
},
	[1012861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1012831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[750]\n基礎生命+[12]%\n{連擊點}的層數上限+2，且{連擊點}>=3層時自身額外獲得240點防禦穿透；自身普攻有100%機率獲得1層{連擊點}"
},
	[1012862]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1012832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[750]\n基礎生命+[12]%\n{連擊點}的層數上限+2，且{連擊點}>=3層時自身額外獲得240點防禦穿透；自身普攻有100%機率獲得1層{連擊點}"
},
	[101383]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n暴擊傷害永久提升4%，且{蓄力}清空時，自身獲得20點防禦穿透，持續1回合，最多疊加8層"
},
	[1013831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,101380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n暴擊傷害永久提升4%，且{蓄力}清空時，自身獲得20點防禦穿透，持續1回合，最多疊加8層"
},
	[101386]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={101383}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[749]\n基礎生命+[12]%\n暴擊傷害永久提升10%，且{蓄力}清空時，自身獲得60點防禦穿透，持續1回合，最多疊加8層"
},
	[1013861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1013831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[749]\n基礎生命+[12]%\n暴擊傷害永久提升10%，且{蓄力}清空時，自身獲得60點防禦穿透，持續1回合，最多疊加8層"
},
	[101483]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1014801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[457]\n基礎生命+[8]%\n{過激狀態}持續至戰鬥結束；且自身在{過激狀態}下受到致死傷害時，解除{過激狀態}(清空專注)，免疫本次傷害並獲得1個自身攻擊100%的護盾，持續2回合，僅生效1次"
},
	[1014831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[457]\n基礎生命+[8]%\n{過激狀態}持續至戰鬥結束；且自身在{過激狀態}下受到致死傷害時，解除{過激狀態}(清空專注)，免疫本次傷害並獲得1個自身攻擊100%的護盾，持續2回合，僅生效1次"
},
	[1014832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1014831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[457]\n基礎生命+[8]%\n{過激狀態}持續至戰鬥結束；且自身在{過激狀態}下受到致死傷害時，解除{過激狀態}(清空專注)，免疫本次傷害並獲得1個自身攻擊100%的護盾，持續2回合，僅生效1次"
},
	[101486]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1014833}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[755]\n基礎生命+[12]%\n{過激狀態}持續至戰鬥結束；且自身在{過激狀態}下受到致死傷害時，解除{過激狀態}(清空專注)，免疫本次傷害並獲得1個自身攻擊300%的護盾，持續2回合，僅生效1次"
},
	[110183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[392]\n基礎生命+[6]%\n{源能爆發}釋放時，自身轟炎傷害提升8%，若擊敗目標，則回復自身攻擊100%的生命"
},
	[1101831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[392]\n基礎生命+[6]%\n{源能爆發}釋放時，自身轟炎傷害提升8%，若擊敗目標，則回復自身攻擊100%的生命"
},
	[110186]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={110183}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[648]\n基礎生命+[10]%\n{源能爆發}釋放時，自身轟炎傷害提升20%，若擊敗目標，則回復自身攻擊200%的生命"
},
	[1101861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1101831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[648]\n基礎生命+[10]%\n{源能爆發}釋放時，自身轟炎傷害提升20%，若擊敗目標，則回復自身攻擊200%的生命"
},
	[110283]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[401]\n基礎生命+[6]%\n每次攻擊防禦高於自身的目標時，自身寒霜傷害提升12%"
},
	[110286]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={110283}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[662]\n基礎生命+[10]%\n每次攻擊防禦高於自身的目標時，自身寒霜傷害提升35%"
},
	[110383]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[460]\n基礎生命+[6]%\n自身每20點速度可啟動1層{馬力全開}(直擊傷害提升2%，暴擊抗性提升2%)，最多疊加4層"
},
	[110386]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={110383}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[761]\n基礎生命+[10]%\n自身每20點速度可啟動1層{馬力全開}(直擊傷害提升2%，暴擊抗性提升2%)，最多疊加12層"
},
	[110483]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[461]\n基礎生命+[6]%\n自身生命低於20%時，為友方全體添加{護盾}(護盾值為自身最大生命的8%，且自身獲得的護盾值翻倍)，持續2回合，僅生效1次"
},
	[110486]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={110483}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[762]\n基礎生命+[10]%\n自身生命低於20%時，為友方全體添加{護盾}(護盾值為自身最大生命的20%，且自身獲得的護盾值翻倍)，持續2回合，僅生效1次"
},
	[110583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={110580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n{劍氣}上限層數+1；且每擊敗1名目標，有40%機率立即獲得2層劍氣"
},
	[1105831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=4000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n{劍氣}上限層數+1；且每擊敗1名目標，有40%機率立即獲得2層劍氣"
},
	[110586]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={110580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[751]\n基礎生命+[12]%\n{劍氣}上限層數+2；且每擊敗1名目標，有100%機率立即獲得2層劍氣"
},
	[1105861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1105831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[751]\n基礎生命+[12]%\n{劍氣}上限層數+2；且每擊敗1名目標，有100%機率立即獲得2層劍氣"
},
	[110683]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[459]\n基礎生命+[8]%\n自身每次觸發{冰凍}時，攻擊提升5%，最多疊加3層，持續至戰鬥結束"
},
	[110686]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={110683}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[758]\n基礎生命+[12]%\n自身每次觸發{冰凍}時，攻擊提升15%，最多疊加3層，持續至戰鬥結束"
},
	[110783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=4000, is_effect_inc=0, damage_source=8, desc="生命+[448]\n基礎生命+[6]%\n戰鬥開始時有40%機率為友方全體啟動1次{能量護盾}(無消耗)"
},
	[110786]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={110783}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[739]\n基礎生命+[10]%\n戰鬥開始時有100%機率為友方全體啟動1次{能量護盾}(無消耗)"
},
	[110883]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[395]\n基礎生命+[6]%\n目標身上每有1層{灼傷}，自身對其暴擊傷害提升1%"
},
	[110886]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={110883}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[652]\n基礎生命+[10]%\n目標身上每有1層{灼傷}，自身對其暴擊傷害提升3%"
},
	[110983]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[455]\n基礎生命+[8]%\n自身每行動1次，{冰蝕}觸發機率提升4%，且目標每有1層{漸凍}，{冰蝕}觸發機率額外提升2%"
},
	[1109831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[455]\n基礎生命+[8]%\n自身每行動1次，{冰蝕}觸發機率提升4%，且目標每有1層{漸凍}，{冰蝕}觸發機率額外提升2%"
},
	[110986]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={110983}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[752]\n基礎生命+[12]%\n自身每行動1次，{冰蝕}觸發機率提升10%，且目標每有1層{漸凍}，{冰蝕}觸發機率額外提升5%"
},
	[1109861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1109831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[752]\n基礎生命+[12]%\n自身每行動1次，{冰蝕}觸發機率提升10%，且目標每有1層{漸凍}，{冰蝕}觸發機率額外提升5%"
},
	[111083]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1110041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[386]\n基礎生命+[6]%\n{源能爆發}額外傷害進化為目標最大生命百分比，傷害上限為自身攻擊的180%"
},
	[111086]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1110041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[638]\n基礎生命+[10]%\n{源能爆發}額外傷害進化為目標最大生命百分比，傷害上限為自身攻擊的260%"
},
	[111183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[395]\n基礎生命+[6]%\n戰鬥開始時，自身啟動{暴走姿態}(攻擊提升8%)，持續2回合；若自身在該狀態下擊敗目標，則刷新持續時間"
},
	[1111831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[395]\n基礎生命+[6]%\n戰鬥開始時，自身啟動{暴走姿態}(攻擊提升8%)，持續2回合；若自身在該狀態下擊敗目標，則刷新持續時間"
},
	[111186]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={111183}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[652]\n基礎生命+[10]%\n戰鬥開始時，自身啟動{暴走姿態}(攻擊提升24%)，持續2回合；若自身在該狀態下擊敗目標，則刷新持續時間"
},
	[1111861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[652]\n基礎生命+[10]%\n戰鬥開始時，自身啟動{暴走姿態}(攻擊提升24%)，持續2回合；若自身在該狀態下擊敗目標，則刷新持續時間"
},
	[111283]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=2, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[379]\n基礎生命+[6]%\n{腎上腺素}移除防禦降低效果，且自身每行動1次，攻擊提升3%，最多疊加5層"
},
	[1112831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[379]\n基礎生命+[6]%\n{腎上腺素}移除防禦降低效果，且自身每行動1次，攻擊提升3%，最多疊加5層"
},
	[111286]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1112831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[625]\n基礎生命+[10]%\n{腎上腺素}移除防禦降低效果，且自身每行動1次，攻擊提升9%，最多疊加5層"
},
	[120183]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1201801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[389]\n基礎生命+[6]%\n{指令}的層數上限+1，且友方戰員行動時有40%機率獲得1種{指令}"
},
	[1201831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1201802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[389]\n基礎生命+[6]%\n{指令}的層數上限+1，且友方戰員行動時有40%機率獲得1種{指令}"
},
	[1201832]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=4000, is_effect_inc=0, damage_source=8, desc="生命+[389]\n基礎生命+[6]%\n{指令}的層數上限+1，且友方戰員行動時有40%機率獲得1種{指令}"
},
	[120186]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1201832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[642]\n基礎生命+[10]%\n{指令}的層數上限+1，且友方戰員行動時有100%機率獲得1種{指令}"
},
	[120283]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120280}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[390]\n基礎生命+[6]%\n{導彈}的層數上限+1；且每回合開始時，自身有40%機率獲得1枚{導彈}"
},
	[1202831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=4000, is_effect_inc=0, damage_source=8, desc="生命+[390]\n基礎生命+[6]%\n{導彈}的層數上限+1；且每回合開始時，自身有40%機率獲得1枚{導彈}"
},
	[120286]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120280}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[644]\n基礎生命+[10]%\n{導彈}的層數上限+2；且每回合開始時，自身有100%機率獲得1枚{導彈}"
},
	[1202861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1202831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[644]\n基礎生命+[10]%\n{導彈}的層數上限+2；且每回合開始時，自身有100%機率獲得1枚{導彈}"
},
	[120383]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[402]\n基礎生命+[6]%\n{荊棘}的層數上限+1；且源能爆發釋放時對目標附加1層荊棘"
},
	[1203831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[402]\n基礎生命+[6]%\n{荊棘}的層數上限+1；且源能爆發釋放時對目標附加1層荊棘"
},
	[120386]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[663]\n基礎生命+[10]%\n{荊棘}的層數上限+2；且源能爆發釋放時對目標附加2層荊棘"
},
	[1203861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[663]\n基礎生命+[10]%\n{荊棘}的層數上限+2；且源能爆發釋放時對目標附加2層荊棘"
},
	[120483]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120480}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[391]\n基礎生命+[6]%\n{花火}的層數上限+1，且每層{花火}額外提供自身2%效果命中"
},
	[1204831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,120480}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[391]\n基礎生命+[6]%\n{花火}的層數上限+1，且每層{花火}額外提供自身2%效果命中"
},
	[120486]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120480}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[646]\n基礎生命+[10]%\n{花火}的層數上限+2，且每層{花火}額外提供自身5%效果命中"
},
	[1204861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1204831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[646]\n基礎生命+[10]%\n{花火}的層數上限+2，且每層{花火}額外提供自身5%效果命中"
},
	[120583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[413]\n基礎生命+[4]%\n戰鬥開始時，自身獲得1層{喵喵聖盾}；且釋放{源能爆發}時，目標身上每有1層{灼傷}，自身轟炎傷害提高2%"
},
	[1205831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[413]\n基礎生命+[4]%\n戰鬥開始時，自身獲得1層{喵喵聖盾}；且釋放{源能爆發}時，目標身上每有1層{灼傷}，自身轟炎傷害提高2%"
},
	[120586]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1205831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[682]\n基礎生命+[6]%\n戰鬥開始時，自身獲得1層{喵喵聖盾}；且釋放{源能爆發}時，目標身上每有1層{灼傷}，自身轟炎傷害提高6%"
},
	[120683]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1206041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[446]\n基礎生命+[6]%\n{源能爆發}效果觸發機率提升至60%"
},
	[120686]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1206041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[736]\n基礎生命+[10]%\n{源能爆發}效果觸發機率提升至80%"
},
	[120783]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120780}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[382]\n基礎生命+[6]%\n{充能祝福}的層數上限+1，且每回合開始時有40%機率為友方全體附加1層{充能祝福}"
},
	[1207831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=4000, is_effect_inc=0, damage_source=8, desc="生命+[382]\n基礎生命+[6]%\n{充能祝福}的層數上限+1，且每回合開始時有40%機率為友方全體附加1層{充能祝福}"
},
	[1207832]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[382]\n基礎生命+[6]%\n{充能祝福}的層數上限+1，且每回合開始時有40%機率為友方全體附加1層{充能祝福}"
},
	[120786]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={120780}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[632]\n基礎生命+[10]%\n{充能祝福}的層數上限+1，且每回合開始時有100%機率為友方全體附加1層{充能祝福}"
},
	[1207861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1207831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[632]\n基礎生命+[10]%\n{充能祝福}的層數上限+1，且每回合開始時有100%機率為友方全體附加1層{充能祝福}"
},
	[120883]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[372]\n基礎生命+[4]%\n自身每擊敗1名敵方，防禦穿透提升60點，最多疊加4層"
},
	[120886]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={120883}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[615]\n基礎生命+[6]%\n自身每擊敗1名敵方，防禦穿透提升180點，最多疊加4層"
},
	[130183]={ target_rule=15, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[429]\n基礎生命+[8]%\n自身在場時，若回合內友方死亡，則回合結束時復活該目標，復活後的目標生命回復莉麗拉生命的8%，僅生效1次；同屬性戰員回復效果提升40%"
},
	[130186]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={130183}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[708]\n基礎生命+[12]%\n自身在場時，若回合內友方死亡，則回合結束時復活該目標，復活後的目標生命回復莉麗拉生命的20%，僅生效1次；同屬性戰員回復效果提升40%"
},
	[130283]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[361]\n基礎生命+[4]%\n首次行動時，必定獲得{好心情}；後續獲得{壞心情}時，下回合獲得{好心情}的機率提升10%"
},
	[1302831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,1302802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[361]\n基礎生命+[4]%\n首次行動時，必定獲得{好心情}；後續獲得{壞心情}時，下回合獲得{好心情}的機率提升10%"
},
	[130286]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1302831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[597]\n基礎生命+[6]%\n首次行動時，必定獲得{好心情}；後續獲得{壞心情}時，下回合獲得{好心情}的機率提升30%"
},
	[130383]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={130380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[457]\n基礎生命+[8]%\n{運籌}作用物件進化為自身九宮格範圍的友方，且友方死亡時，自身攻擊提升5%，最多疊加4層"
},
	[1303831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=62, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[457]\n基礎生命+[8]%\n{運籌}作用物件進化為自身九宮格範圍的友方，且友方死亡時，自身攻擊提升5%，最多疊加4層"
},
	[130386]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1303831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[755]\n基礎生命+[12]%\n{運籌}作用物件進化為自身九宮格範圍的友方，且友方死亡時，自身攻擊提升15%，最多疊加4層"
},
	[130483]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[369]\n基礎生命+[4]%\n釋放{源能爆發}時， 目標每有1層{漸凍}，{凍傷}觸發機率提升3%"
},
	[130486]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={130483}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[610]\n基礎生命+[6]%\n釋放{源能爆發}時， 目標每有1層{漸凍}，{凍傷}觸發機率提升8%"
},
	[130583]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={130580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[364]\n基礎生命+[4]%\n場上每存在1名友方騁電戰員，天賦1觸發機率提升4%"
},
	[130586]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={130583}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[602]\n基礎生命+[6]%\n場上每存在1名友方騁電戰員，天賦1觸發機率提升10%"
},
	[130683]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[390]\n基礎生命+[6]%\n釋放{源能爆發}時，每層{能量}額外提供自身10點防禦穿透"
},
	[130686]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={130683}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[644]\n基礎生命+[10]%\n釋放{源能爆發}時，每層{能量}額外提供自身30點防禦穿透"
},
	[130783]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[397]\n基礎生命+[6]%\n友方轟炎戰員在攻擊弩箭印記下的目標時，暴擊傷害提升6%"
},
	[1307831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[397]\n基礎生命+[6]%\n友方轟炎戰員在攻擊弩箭印記下的目標時，暴擊傷害提升6%"
},
	[130786]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1307831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[655]\n基礎生命+[10]%\n友方轟炎戰員在攻擊弩箭印記下的目標時，暴擊傷害提升15%"
},
	[111383]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[459]\n基礎生命+[8]%\n自身行動後為九宮格範圍的其他友方裝載{引力附著}(使其暴擊傷害提升3%，且技能攻擊時附加1段伊芙特攻擊20%的量蝕傷害)，持續1回合；同屬性戰員效果提升40%"
},
	[1113831]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[459]\n基礎生命+[8]%\n自身行動後為九宮格範圍的其他友方裝載{引力附著}(使其暴擊傷害提升3%，且技能攻擊時附加1段伊芙特攻擊20%的量蝕傷害)，持續1回合；同屬性戰員效果提升40%"
},
	[111386]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={111383}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[758]\n基礎生命+[12]%\n自身行動後為九宮格範圍的其他友方裝載{引力附著}(使其暴擊傷害提升8%，且技能攻擊時附加1段伊芙特攻擊50%的量蝕傷害)，持續1回合；同屬性戰員效果提升40%"
},
	[1113861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1113831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[758]\n基礎生命+[12]%\n自身行動後為九宮格範圍的其他友方裝載{引力附著}(使其暴擊傷害提升8%，且技能攻擊時附加1段伊芙特攻擊50%的量蝕傷害)，持續1回合；同屬性戰員效果提升40%"
},
	[101583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={101580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[456]\n基礎生命+[8]%\n{鹿靈}的層數上限+1，且每回合開始時自身額外獲得1層{鹿靈}"
},
	[1015831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[456]\n基礎生命+[8]%\n{鹿靈}的層數上限+1，且每回合開始時自身額外獲得1層{鹿靈}"
},
	[101586]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={101580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[753]\n基礎生命+[12]%\n{鹿靈}的層數上限+2，且每回合開始時自身額外獲得2層{鹿靈}"
},
	[1015861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[753]\n基礎生命+[12]%\n{鹿靈}的層數上限+2，且每回合開始時自身額外獲得2層{鹿靈}"
},
	[101683]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=152, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="生命+[449]\n基礎生命+[8]%\n暴擊傷害永久提升4%，且每次觸發{星光墜擊}時，自身有50%機率額外產生1顆{星辰之力}"
},
	[1016831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[449]\n基礎生命+[8]%\n暴擊傷害永久提升4%，且每次觸發{星光墜擊}時，自身有50%機率額外產生1顆{星辰之力}"
},
	[101686]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={101683}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[742]\n基礎生命+[12]%\n暴擊傷害永久提升10%，且每次觸發{星光墜擊}時，自身有80%機率額外產生1顆{星辰之力}"
},
	[1016861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1016831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[742]\n基礎生命+[12]%\n暴擊傷害永久提升10%，且每次觸發{星光墜擊}時，自身有80%機率額外產生1顆{星辰之力}"
},
	[101783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[437]\n基礎生命+[8]%\n自身受到的分擔傷害降低15%，且{玩偶}狀態下，若自身首次生命低於20%(鎖血)，則對敵方場上生命百分比最高的目標進行生命汲取(目標生命損失30%，上限為魁霎最大生命的30%)，回復自身10%的最大生命"
},
	[1017831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[437]\n基礎生命+[8]%\n自身受到的分擔傷害降低15%，且{玩偶}狀態下，若自身首次生命低於20%(鎖血)，則對敵方場上生命百分比最高的目標進行生命汲取(目標生命損失30%，上限為魁霎最大生命的30%)，回復自身10%的最大生命"
},
	[1017832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[437]\n基礎生命+[8]%\n自身受到的分擔傷害降低15%，且{玩偶}狀態下，若自身首次生命低於20%(鎖血)，則對敵方場上生命百分比最高的目標進行生命汲取(目標生命損失30%，上限為魁霎最大生命的30%)，回復自身10%的最大生命"
},
	[1017833]={ target_rule=27, damage_area=11, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[437]\n基礎生命+[8]%\n自身受到的分擔傷害降低15%，且{玩偶}狀態下，若自身首次生命低於20%(鎖血)，則對敵方場上生命百分比最高的目標進行生命汲取(目標生命損失30%，上限為魁霎最大生命的30%)，回復自身10%的最大生命"
},
	[101786]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={101783}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[723]\n基礎生命+[12]%\n自身受到的分擔傷害降低35%，且{玩偶}狀態下，若自身首次生命低於20%(鎖血)，則對敵方場上生命百分比最高的目標進行生命汲取(目標生命損失30%，上限為魁霎最大生命的30%)，回復自身30%的最大生命"
},
	[1017861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1017031}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[723]\n基礎生命+[12]%\n自身受到的分擔傷害降低35%，且{玩偶}狀態下，若自身首次生命低於20%(鎖血)，則對敵方場上生命百分比最高的目標進行生命汲取(目標生命損失30%，上限為魁霎最大生命的30%)，回復自身30%的最大生命"
},
	[101883]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[546]\n基礎生命+[8]%\n自身防禦提升5%，且{{磁化壁壘}}消耗時對攻擊方造成的傷害進化為對敵方全體生效"
},
	[1018831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1018902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[546]\n基礎生命+[8]%\n自身防禦提升5%，且{{磁化壁壘}}消耗時對攻擊方造成的傷害進化為對敵方全體生效"
},
	[101886]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={101883}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[903]\n基礎生命+[12]%\n自身防禦提升15%，且{{磁化壁壘}}消耗時對攻擊方造成的傷害進化為對敵方全體生效"
},
	[101983]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1019042}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[447]\n基礎生命+[8]%\n冰霜領域的可凍結人數+1，且每次釋放源能爆發時，自身治療效果提升4%，持續至戰鬥結束，最多疊加5層；自身首次生命低於50%時，獲得基於自身攻擊100%的護盾，持續2回合，僅觸發1次"
},
	[1019831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[447]\n基礎生命+[8]%\n冰霜領域的可凍結人數+1，且每次釋放源能爆發時，自身治療效果提升4%，持續至戰鬥結束，最多疊加5層；自身首次生命低於50%時，獲得基於自身攻擊100%的護盾，持續2回合，僅觸發1次"
},
	[1019832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[447]\n基礎生命+[8]%\n冰霜領域的可凍結人數+1，且每次釋放源能爆發時，自身治療效果提升4%，持續至戰鬥結束，最多疊加5層；自身首次生命低於50%時，獲得基於自身攻擊100%的護盾，持續2回合，僅觸發1次"
},
	[101986]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1019831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[739]\n基礎生命+[12]%\n冰霜領域的可凍結人數+1，且每次釋放源能爆發時，自身治療效果提升12%，持續至戰鬥結束，最多疊加5層；自身首次生命低於50%時，獲得基於自身攻擊280%的護盾，持續2回合，僅觸發1次"
},
	[1019861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1019832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[739]\n基礎生命+[12]%\n冰霜領域的可凍結人數+1，且每次釋放源能爆發時，自身治療效果提升12%，持續至戰鬥結束，最多疊加5層；自身首次生命低於50%時，獲得基於自身攻擊280%的護盾，持續2回合，僅觸發1次"
},
	[102083]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102090}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[454]\n基礎生命+[8]%\n{掠血滅痕}進化為對敵方全體生效，且對首要目標傷害提升8%"
},
	[1020831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={102005}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[749]\n基礎生命+[12]%\n{掠血滅痕}進化為對敵方全體生效，且對首要目標傷害提升25%"
},
	[102086]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1020831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[749]\n基礎生命+[12]%\n{掠血滅痕}進化為對敵方全體生效，且對首要目標傷害提升25%"
},
	[102183]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102180}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[465]\n基礎生命+[12]%\n{念氣}層數上限+1，且戰鬥開始時危峭有70%幾率獲得50%源能補充"
},
	[1021831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="生命+[465]\n基礎生命+[12]%\n{念氣}層數上限+1，且戰鬥開始時危峭有70%幾率獲得50%源能補充"
},
	[1021832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[465]\n基礎生命+[12]%\n{念氣}層數上限+1，且戰鬥開始時危峭有70%幾率獲得50%源能補充"
},
	[102186]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102180}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[768]\n基礎生命+[18]%\n{念氣}層數上限+2，且戰鬥開始時危峭有100%幾率獲得50%源能補充"
},
	[1021861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1021831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[768]\n基礎生命+[18]%\n{念氣}層數上限+2，且戰鬥開始時危峭有100%幾率獲得50%源能補充"
},
	[102283]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[469]\n基礎生命+[12]%\n刺玫對存在{賞金}的目標防禦穿透提升20*{賞金}層數，且擊敗目標時，立即獲得4層{彈藥}"
},
	[1022831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[469]\n基礎生命+[12]%\n刺玫對存在{賞金}的目標防禦穿透提升20*{賞金}層數，且擊敗目標時，立即獲得4層{彈藥}"
},
	[102286]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102283}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[774]\n基礎生命+[18]%\n刺玫對存在{賞金}的目標防禦穿透提升50*{賞金}層數，且擊敗目標時，立即獲得8層{彈藥}"
},
	[1022861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[774]\n基礎生命+[18]%\n刺玫對存在{賞金}的目標防禦穿透提升50*{賞金}層數，且擊敗目標時，立即獲得8層{彈藥}"
},
	[102383]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1}, trigger_rate=4000, is_effect_inc=0, damage_source=8, desc="生命+[470]\n基礎生命+[12]%\n自身釋放源能技時有40%幾率額外獲得50%源能補充；且{霆淵之境}狀態下，自身每次技能攻擊時將消耗2層{淵響}，使自身防禦穿透提升80，持續1回合，最多疊加2層"
},
	[1023831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[470]\n基礎生命+[12]%\n自身釋放源能技時有40%幾率額外獲得50%源能補充；且{霆淵之境}狀態下，自身每次技能攻擊時將消耗2層{淵響}，使自身防禦穿透提升80，持續1回合，最多疊加2層"
},
	[1023832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[470]\n基礎生命+[12]%\n自身釋放源能技時有40%幾率額外獲得50%源能補充；且{霆淵之境}狀態下，自身每次技能攻擊時將消耗2層{淵響}，使自身防禦穿透提升80，持續1回合，最多疊加2層"
},
	[102386]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102383}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[776]\n基礎生命+[18]%\n自身釋放源能技時有70%幾率額外獲得50%源能補充；且{霆淵之境}狀態下，自身每次技能攻擊時將消耗2層{淵響}，使自身防禦穿透提升240，持續1回合，最多疊加2層"
},
	[1023861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1023832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[776]\n基礎生命+[18]%\n自身釋放源能技時有70%幾率額外獲得50%源能補充；且{霆淵之境}狀態下，自身每次技能攻擊時將消耗2層{淵響}，使自身防禦穿透提升240，持續1回合，最多疊加2層"
},
	[102483]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1024804,1024805,1024806}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[470]\n基礎生命+[12]%\n阿爾戈天賦1的自身屬性強化效果持續回合+1，且友方其他戰員可獲得15%的對應屬性強化效果；阿爾戈前3回合拿取的物品不會重複"
},
	[1024831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1024804,1024805,1024806}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[470]\n基礎生命+[12]%\n阿爾戈天賦1的自身屬性強化效果持續回合+1，且友方其他戰員可獲得15%的對應屬性強化效果；阿爾戈前3回合拿取的物品不會重複"
},
	[1024832]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102480}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[470]\n基礎生命+[12]%\n阿爾戈天賦1的自身屬性強化效果持續回合+1，且友方其他戰員可獲得15%的對應屬性強化效果；阿爾戈前3回合拿取的物品不會重複"
},
	[102486]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1024804,1024805,1024806}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[776]\n基礎生命+[18]%\n阿爾戈天賦1的自身屬性強化效果持續回合+2，且友方其他戰員可獲得40%的對應屬性強化效果；阿爾戈前3回合拿取的物品不會重複"
},
	[1024861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1024804}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[776]\n基礎生命+[18]%\n阿爾戈天賦1的自身屬性強化效果持續回合+2，且友方其他戰員可獲得40%的對應屬性強化效果；阿爾戈前3回合拿取的物品不會重複"
},
	[1024862]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1024805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[776]\n基礎生命+[18]%\n阿爾戈天賦1的自身屬性強化效果持續回合+2，且友方其他戰員可獲得40%的對應屬性強化效果；阿爾戈前3回合拿取的物品不會重複"
},
	[1024863]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1024806}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[776]\n基礎生命+[18]%\n阿爾戈天賦1的自身屬性強化效果持續回合+2，且友方其他戰員可獲得40%的對應屬性強化效果；阿爾戈前3回合拿取的物品不會重複"
},
	[102583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=157, trigger_num={1,102580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[539]\n基礎生命+[12]%\n輝月每消耗1枚{月刃}，自身源能將增加5%；{月華}破碎或替換時，輝月會立即獲得1枚{月刃}"
},
	[1025831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[539]\n基礎生命+[12]%\n輝月每消耗1枚{月刃}，自身源能將增加5%；{月華}破碎或替換時，輝月會立即獲得1枚{月刃}"
},
	[1025832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=157, trigger_num={1,102503}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[539]\n基礎生命+[12]%\n輝月每消耗1枚{月刃}，自身源能將增加5%；{月華}破碎或替換時，輝月會立即獲得1枚{月刃}"
},
	[1025833]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=167, trigger_num={1,102503}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[539]\n基礎生命+[12]%\n輝月每消耗1枚{月刃}，自身源能將增加5%；{月華}破碎或替換時，輝月會立即獲得1枚{月刃}"
},
	[102586]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1025831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[891]\n基礎生命+[18]%\n輝月每消耗1枚{月刃}，自身源能將增加10%；{月華}破碎或替換時，輝月會立即獲得2枚{月刃}"
},
	[1025861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1025832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[891]\n基礎生命+[18]%\n輝月每消耗1枚{月刃}，自身源能將增加10%；{月華}破碎或替換時，輝月會立即獲得2枚{月刃}"
},
	[1025862]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1025833}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[891]\n基礎生命+[18]%\n輝月每消耗1枚{月刃}，自身源能將增加10%；{月華}破碎或替換時，輝月會立即獲得2枚{月刃}"
},
	[102683]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=154, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[532]\n基礎生命+[12]%\n克裡安卡受到致命傷害時，將清除自身所有負面效果，並恢復15%的最大生命，同時進入{綻燃}狀態，持續1回合，該狀態下不會死亡且自身會獲得{回火}(戰鬥中僅生效1次)"
},
	[1026831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[532]\n基礎生命+[12]%\n克裡安卡受到致命傷害時，將清除自身所有負面效果，並恢復15%的最大生命，同時進入{綻燃}狀態，持續1回合，該狀態下不會死亡且自身會獲得{回火}(戰鬥中僅生效1次)"
},
	[1026832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[532]\n基礎生命+[12]%\n克裡安卡受到致命傷害時，將清除自身所有負面效果，並恢復15%的最大生命，同時進入{綻燃}狀態，持續1回合，該狀態下不會死亡且自身會獲得{回火}(戰鬥中僅生效1次)"
},
	[1026833]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[532]\n基礎生命+[12]%\n克裡安卡受到致命傷害時，將清除自身所有負面效果，並恢復15%的最大生命，同時進入{綻燃}狀態，持續1回合，該狀態下不會死亡且自身會獲得{回火}(戰鬥中僅生效1次)"
},
	[1026834]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[532]\n基礎生命+[12]%\n克裡安卡受到致命傷害時，將清除自身所有負面效果，並恢復15%的最大生命，同時進入{綻燃}狀態，持續1回合，該狀態下不會死亡且自身會獲得{回火}(戰鬥中僅生效1次)"
},
	[1026835]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1026833}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[532]\n基礎生命+[12]%\n克裡安卡受到致命傷害時，將清除自身所有負面效果，並恢復15%的最大生命，同時進入{綻燃}狀態，持續1回合，該狀態下不會死亡且自身會獲得{回火}(戰鬥中僅生效1次)"
},
	[102686]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1026832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[879]\n基礎生命+[18]%\n克裡安卡受到致命傷害時，將清除自身所有負面效果，並恢復50%的最大生命，同時進入{綻燃}狀態，持續2回合，該狀態下不會死亡且自身會獲得{回火}(戰鬥中僅生效1次)"
},
	[1026861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1026833}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[879]\n基礎生命+[18]%\n克裡安卡受到致命傷害時，將清除自身所有負面效果，並恢復50%的最大生命，同時進入{綻燃}狀態，持續2回合，該狀態下不會死亡且自身會獲得{回火}(戰鬥中僅生效1次)"
},
	[102783]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[493]\n基础生命+[12]%\n战斗开始时立即触发1次锁定，且被锁定目标有60%几率被附加孤立效果(被孤立单位受到伤害时无法被分担)；当锁定目标死亡时会自动触发1次锁定"
},
	[1027831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,1027901}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="生命+[493]\n基础生命+[12]%\n战斗开始时立即触发1次锁定，且被锁定目标有60%几率被附加孤立效果(被孤立单位受到伤害时无法被分担)；当锁定目标死亡时会自动触发1次锁定"
},
	[1027832]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=53, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[493]\n基础生命+[12]%\n战斗开始时立即触发1次锁定，且被锁定目标有60%几率被附加孤立效果(被孤立单位受到伤害时无法被分担)；当锁定目标死亡时会自动触发1次锁定"
},
	[1027833]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[493]\n基础生命+[12]%\n战斗开始时立即触发1次锁定，且被锁定目标有60%几率被附加孤立效果(被孤立单位受到伤害时无法被分担)；当锁定目标死亡时会自动触发1次锁定"
},
	[1027834]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=104, trigger_num={1,1023902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[493]\n基础生命+[12]%\n战斗开始时立即触发1次锁定，且被锁定目标有60%几率被附加孤立效果(被孤立单位受到伤害时无法被分担)；当锁定目标死亡时会自动触发1次锁定"
},
	[102786]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1027831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[815]\n基础生命+[18]%\n战斗开始时立即触发1次锁定，且被锁定目标有100%几率被附加孤立效果(被孤立单位受到伤害时无法被分担)；当锁定目标死亡时会自动触发1次锁定"
},
	[102883]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[584]\n基础生命+[12]%\n每回合开始时，云篆会根据自身当前生命激活1次{卜运}(自身生命高于50%时进入苍阳状态，否则进入太阴状态。苍阳状态下，云篆受到技能攻击时将会对攻击方造成自身最大生命5%的真实伤害；太阴状态下，云篆受到技能攻击时将为友方全体生成1个相当于自身最大生命4%的护盾，最多叠加2层)，持续1回合"
},
	[1028831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[584]\n基础生命+[12]%\n每回合开始时，云篆会根据自身当前生命激活1次{卜运}(自身生命高于50%时进入苍阳状态，否则进入太阴状态。苍阳状态下，云篆受到技能攻击时将会对攻击方造成自身最大生命5%的真实伤害；太阴状态下，云篆受到技能攻击时将为友方全体生成1个相当于自身最大生命4%的护盾，最多叠加2层)，持续1回合"
},
	[1028832]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[584]\n基础生命+[12]%\n每回合开始时，云篆会根据自身当前生命激活1次{卜运}(自身生命高于50%时进入苍阳状态，否则进入太阴状态。苍阳状态下，云篆受到技能攻击时将会对攻击方造成自身最大生命5%的真实伤害；太阴状态下，云篆受到技能攻击时将为友方全体生成1个相当于自身最大生命4%的护盾，最多叠加2层)，持续1回合"
},
	[1028833]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=69, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[584]\n基础生命+[12]%\n每回合开始时，云篆会根据自身当前生命激活1次{卜运}(自身生命高于50%时进入苍阳状态，否则进入太阴状态。苍阳状态下，云篆受到技能攻击时将会对攻击方造成自身最大生命5%的真实伤害；太阴状态下，云篆受到技能攻击时将为友方全体生成1个相当于自身最大生命4%的护盾，最多叠加2层)，持续1回合"
},
	[1028834]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=69, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[584]\n基础生命+[12]%\n每回合开始时，云篆会根据自身当前生命激活1次{卜运}(自身生命高于50%时进入苍阳状态，否则进入太阴状态。苍阳状态下，云篆受到技能攻击时将会对攻击方造成自身最大生命5%的真实伤害；太阴状态下，云篆受到技能攻击时将为友方全体生成1个相当于自身最大生命4%的护盾，最多叠加2层)，持续1回合"
},
	[102886]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[965]\n基础生命+[18]%\n每回合开始时，云篆会根据自身当前生命激活1次{卜运}(自身生命高于50%时进入苍阳状态，否则进入太阴状态。苍阳状态下，云篆受到技能攻击时将会对攻击方造成自身最大生命10%的真实伤害；太阴状态下，云篆受到技能攻击时将为友方全体生成1个相当于自身最大生命8%的护盾，最多叠加2层)，持续1回合"
},
	[1028861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1028834}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[965]\n基础生命+[18]%\n每回合开始时，云篆会根据自身当前生命激活1次{卜运}(自身生命高于50%时进入苍阳状态，否则进入太阴状态。苍阳状态下，云篆受到技能攻击时将会对攻击方造成自身最大生命10%的真实伤害；太阴状态下，云篆受到技能攻击时将为友方全体生成1个相当于自身最大生命8%的护盾，最多叠加2层)，持续1回合"
},
	[102983]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[514]\n基础生命+[12]%\n闪蝶受到致命伤害时会立即进入雷电形态(生命回复20%且本回合不会再受到伤害)，同时使静电球的{电极}层数补充1层，战斗中仅生效1次"
},
	[1029831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,102983}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[514]\n基础生命+[12]%\n闪蝶受到致命伤害时会立即进入雷电形态(生命回复20%且本回合不会再受到伤害)，同时使静电球的{电极}层数补充1层，战斗中仅生效1次"
},
	[1029832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,102983}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[514]\n基础生命+[12]%\n闪蝶受到致命伤害时会立即进入雷电形态(生命回复20%且本回合不会再受到伤害)，同时使静电球的{电极}层数补充1层，战斗中仅生效1次"
},
	[1029833]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,102983}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[514]\n基础生命+[12]%\n闪蝶受到致命伤害时会立即进入雷电形态(生命回复20%且本回合不会再受到伤害)，同时使静电球的{电极}层数补充1层，战斗中仅生效1次"
},
	[1029834]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[514]\n基础生命+[12]%\n闪蝶受到致命伤害时会立即进入雷电形态(生命回复20%且本回合不会再受到伤害)，同时使静电球的{电极}层数补充1层，战斗中仅生效1次"
},
	[1029835]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[514]\n基础生命+[12]%\n闪蝶受到致命伤害时会立即进入雷电形态(生命回复20%且本回合不会再受到伤害)，同时使静电球的{电极}层数补充1层，战斗中仅生效1次"
},
	[1029836]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[514]\n基础生命+[12]%\n闪蝶受到致命伤害时会立即进入雷电形态(生命回复20%且本回合不会再受到伤害)，同时使静电球的{电极}层数补充1层，战斗中仅生效1次"
},
	[102986]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={102983}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[850]\n基础生命+[18]%\n闪蝶受到致命伤害时会立即进入雷电形态(生命回复60%且本回合不会再受到伤害)，同时使静电球的{电极}层数补充3层，战斗中仅生效1次"
},
	[1029861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1029835}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[850]\n基础生命+[18]%\n闪蝶受到致命伤害时会立即进入雷电形态(生命回复60%且本回合不会再受到伤害)，同时使静电球的{电极}层数补充3层，战斗中仅生效1次"
},
	[103083]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1030804,1030805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[512]\n基础生命+[12]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承80%，免疫控制效果但受到的治疗和护盾效果降低60%），战斗中仅生效1次"
},
	[1030831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1030808}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[512]\n基础生命+[12]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承80%，免疫控制效果但受到的治疗和护盾效果降低60%），战斗中仅生效1次"
},
	[1030832]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={103005}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[512]\n基础生命+[12]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承80%，免疫控制效果但受到的治疗和护盾效果降低60%），战斗中仅生效1次"
},
	[1030833]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1030801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[512]\n基础生命+[12]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承80%，免疫控制效果但受到的治疗和护盾效果降低60%），战斗中仅生效1次"
},
	[1030834]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1030837}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[512]\n基础生命+[12]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承80%，免疫控制效果但受到的治疗和护盾效果降低60%），战斗中仅生效1次"
},
	[1030835]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1030837}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[512]\n基础生命+[12]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承80%，免疫控制效果但受到的治疗和护盾效果降低60%），战斗中仅生效1次"
},
	[1030836]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=172, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[512]\n基础生命+[12]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承80%，免疫控制效果但受到的治疗和护盾效果降低60%），战斗中仅生效1次"
},
	[1030838]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[512]\n基础生命+[12]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承80%，免疫控制效果但受到的治疗和护盾效果降低60%），战斗中仅生效1次"
},
	[1030839]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[512]\n基础生命+[12]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承80%，免疫控制效果但受到的治疗和护盾效果降低60%），战斗中仅生效1次"
},
	[103086]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1030832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[846]\n基础生命+[18]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承100%，免疫控制效果但受到的治疗和护盾效果降低20%），战斗中仅生效1次"
},
	[1030861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1030842}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[846]\n基础生命+[18]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承100%，免疫控制效果但受到的治疗和护盾效果降低20%），战斗中仅生效1次"
},
	[1030862]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1030843}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[846]\n基础生命+[18]%\n{狐火咒解}状态下，{秘刃·焚绝黄泉}的消耗层数-1，且自身在该状态下受到致命伤害时，将以1点生命在场上存活至下回合自身行动开始（该效果下不再消耗{狐火}并继续触发{秘刃·焚绝黄泉}，伤害继承100%，免疫控制效果但受到的治疗和护盾效果降低20%），战斗中仅生效1次"
},
	[103183]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1031043}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[507]\n基础生命+[12]%\n源能爆发附加的{代价}效果触发几率提升4%，且战斗开始时珂芙尼尔有70%几率会为友方全体施加1层{心灵烙印}"
},
	[1031831]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="生命+[507]\n基础生命+[12]%\n源能爆发附加的{代价}效果触发几率提升4%，且战斗开始时珂芙尼尔有70%几率会为友方全体施加1层{心灵烙印}"
},
	[103186]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1031043}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[838]\n基础生命+[18]%\n源能爆发附加的{代价}效果触发几率提升10%，且战斗开始时珂芙尼尔有100%几率会为友方全体施加1层{心灵烙印}"
},
	[1031861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1031831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[838]\n基础生命+[18]%\n源能爆发附加的{代价}效果触发几率提升10%，且战斗开始时珂芙尼尔有100%几率会为友方全体施加1层{心灵烙印}"
},
	[103283]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,1032902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[505]\n基础生命+[12]%\n聆风释放{季风}时，将对目标和自身额外施加1层{柔风庇护}效果(抵挡1次技能伤害)，且有50%几率额外提高目标和自身4%的攻击，持续2回合，最多叠加2层"
},
	[1032831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,1032902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[505]\n基础生命+[12]%\n聆风释放{季风}时，将对目标和自身额外施加1层{柔风庇护}效果(抵挡1次技能伤害)，且有50%几率额外提高目标和自身4%的攻击，持续2回合，最多叠加2层"
},
	[1032832]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,1032902}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="生命+[505]\n基础生命+[12]%\n聆风释放{季风}时，将对目标和自身额外施加1层{柔风庇护}效果(抵挡1次技能伤害)，且有50%几率额外提高目标和自身4%的攻击，持续2回合，最多叠加2层"
},
	[1032833]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[505]\n基础生命+[12]%\n聆风释放{季风}时，将对目标和自身额外施加1层{柔风庇护}效果(抵挡1次技能伤害)，且有50%几率额外提高目标和自身4%的攻击，持续2回合，最多叠加2层"
},
	[1032834]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[505]\n基础生命+[12]%\n聆风释放{季风}时，将对目标和自身额外施加1层{柔风庇护}效果(抵挡1次技能伤害)，且有50%几率额外提高目标和自身4%的攻击，持续2回合，最多叠加2层"
},
	[103286]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1032832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[834]\n基础生命+[18]%\n聆风释放{季风}时，将对目标和自身额外施加1层{柔风庇护}效果(抵挡1次技能伤害)，且有80%几率额外提高目标和自身10%的攻击，持续2回合，最多叠加2层"
},
	[1032861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1032833}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[834]\n基础生命+[18]%\n聆风释放{季风}时，将对目标和自身额外施加1层{柔风庇护}效果(抵挡1次技能伤害)，且有80%几率额外提高目标和自身10%的攻击，持续2回合，最多叠加2层"
},
	[1032862]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1032832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[834]\n基础生命+[18]%\n聆风释放{季风}时，将对目标和自身额外施加1层{柔风庇护}效果(抵挡1次技能伤害)，且有80%几率额外提高目标和自身10%的攻击，持续2回合，最多叠加2层"
},
	[103383]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1033801,1033802,1033803,1033804,1033805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[510]\n基础生命+[12]%\n战斗开始时泽菲琳获取的祝福数+1并直接进入{唤星圣灵}形态，且战斗中祝福的持续回合+1；{唤星圣灵}形态下自身速度额外提升5%，且退出{唤星圣灵}形态时立即获得50%源能补充"
},
	[1033832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1033041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[510]\n基础生命+[12]%\n战斗开始时泽菲琳获取的祝福数+1并直接进入{唤星圣灵}形态，且战斗中祝福的持续回合+1；{唤星圣灵}形态下自身速度额外提升5%，且退出{唤星圣灵}形态时立即获得50%源能补充"
},
	[1033833]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[510]\n基础生命+[12]%\n战斗开始时泽菲琳获取的祝福数+1并直接进入{唤星圣灵}形态，且战斗中祝福的持续回合+1；{唤星圣灵}形态下自身速度额外提升5%，且退出{唤星圣灵}形态时立即获得50%源能补充"
},
	[1033834]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[510]\n基础生命+[12]%\n战斗开始时泽菲琳获取的祝福数+1并直接进入{唤星圣灵}形态，且战斗中祝福的持续回合+1；{唤星圣灵}形态下自身速度额外提升5%，且退出{唤星圣灵}形态时立即获得50%源能补充"
},
	[1033835]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1033041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[510]\n基础生命+[12]%\n战斗开始时泽菲琳获取的祝福数+1并直接进入{唤星圣灵}形态，且战斗中祝福的持续回合+1；{唤星圣灵}形态下自身速度额外提升5%，且退出{唤星圣灵}形态时立即获得50%源能补充"
},
	[103386]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1033801,1033802,1033803,1033804,1033805}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[843]\n基础生命+[18]%\n战斗开始时泽菲琳获取的祝福数+2并直接进入{唤星圣灵}形态，且战斗中祝福的持续回合+2；{唤星圣灵}形态下自身速度额外提升10%，且退出{唤星圣灵}形态时立即获得50%源能补充"
},
	[1033861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103380}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[843]\n基础生命+[18]%\n战斗开始时泽菲琳获取的祝福数+2并直接进入{唤星圣灵}形态，且战斗中祝福的持续回合+2；{唤星圣灵}形态下自身速度额外提升10%，且退出{唤星圣灵}形态时立即获得50%源能补充"
},
	[1033862]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1033043}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[843]\n基础生命+[18]%\n战斗开始时泽菲琳获取的祝福数+2并直接进入{唤星圣灵}形态，且战斗中祝福的持续回合+2；{唤星圣灵}形态下自身速度额外提升10%，且退出{唤星圣灵}形态时立即获得50%源能补充"
},
	[103483]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[503]\n基础生命+[12]%\n每回合开始，瞳光将额外获得1层{底片}，且{镜显}时，为其余友方单位生效加成效果(攻击和伤害减免加成)，效果为攻击将提升8%、伤害减免提升10%；此外，镜显目标行动时受到所有类型伤害降低10%"
},
	[1034831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[503]\n基础生命+[12]%\n每回合开始，瞳光将额外获得1层{底片}，且{镜显}时，为其余友方单位生效加成效果(攻击和伤害减免加成)，效果为攻击将提升8%、伤害减免提升10%；此外，镜显目标行动时受到所有类型伤害降低10%"
},
	[1034832]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=95, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[503]\n基础生命+[12]%\n每回合开始，瞳光将额外获得1层{底片}，且{镜显}时，为其余友方单位生效加成效果(攻击和伤害减免加成)，效果为攻击将提升8%、伤害减免提升10%；此外，镜显目标行动时受到所有类型伤害降低10%"
},
	[1034833]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=35, trigger_num={1,1034031}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[503]\n基础生命+[12]%\n每回合开始，瞳光将额外获得1层{底片}，且{镜显}时，为其余友方单位生效加成效果(攻击和伤害减免加成)，效果为攻击将提升8%、伤害减免提升10%；此外，镜显目标行动时受到所有类型伤害降低10%"
},
	[1034834]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=44, trigger_num={1,103403}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[503]\n基础生命+[12]%\n每回合开始，瞳光将额外获得1层{底片}，且{镜显}时，为其余友方单位生效加成效果(攻击和伤害减免加成)，效果为攻击将提升8%、伤害减免提升10%；此外，镜显目标行动时受到所有类型伤害降低10%"
},
	[103486]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1034831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[831]\n基础生命+[18]%\n每回合开始，瞳光将额外获得1层{底片}，且{镜显}时，为其余友方单位生效加成效果(攻击和伤害减免加成)，效果为攻击将提升16%、伤害减免提升20%；此外，镜显目标行动时受到所有类型伤害降低25%"
},
	[1034861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1034832}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[831]\n基础生命+[18]%\n每回合开始，瞳光将额外获得1层{底片}，且{镜显}时，为其余友方单位生效加成效果(攻击和伤害减免加成)，效果为攻击将提升16%、伤害减免提升20%；此外，镜显目标行动时受到所有类型伤害降低25%"
},
	[1034862]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1034833}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[831]\n基础生命+[18]%\n每回合开始，瞳光将额外获得1层{底片}，且{镜显}时，为其余友方单位生效加成效果(攻击和伤害减免加成)，效果为攻击将提升16%、伤害减免提升20%；此外，镜显目标行动时受到所有类型伤害降低25%"
},
	[103583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="生命+[520]\n基础生命+[12]%\n战斗开始时有50%几率立即创造1个{蔷薇分身}；当自身受到致命伤害时，{蔷薇分身}会代替自身死亡，且中断攻击方行动；{蔷薇分身}消失后，下次魔弹优先进化为{繁茂之弹}"
},
	[1035831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[520]\n基础生命+[12]%\n战斗开始时有50%几率立即创造1个{蔷薇分身}；当自身受到致命伤害时，{蔷薇分身}会代替自身死亡，且中断攻击方行动；{蔷薇分身}消失后，下次魔弹优先进化为{繁茂之弹}"
},
	[1035832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,10351807}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[520]\n基础生命+[12]%\n战斗开始时有50%几率立即创造1个{蔷薇分身}；当自身受到致命伤害时，{蔷薇分身}会代替自身死亡，且中断攻击方行动；{蔷薇分身}消失后，下次魔弹优先进化为{繁茂之弹}"
},
	[1035833]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103508}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[520]\n基础生命+[12]%\n战斗开始时有50%几率立即创造1个{蔷薇分身}；当自身受到致命伤害时，{蔷薇分身}会代替自身死亡，且中断攻击方行动；{蔷薇分身}消失后，下次魔弹优先进化为{繁茂之弹}"
},
	[103586]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={103583}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[860]\n基础生命+[18]%\n战斗开始时有100%几率立即创造1个{蔷薇分身}；当自身受到致命伤害时，{蔷薇分身}会代替自身死亡，且中断攻击方行动；{蔷薇分身}消失后，下次魔弹优先进化为{繁茂之弹}"
},
	[103683]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103603}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[486]\n基础生命+[12]%\n{林间奏鸣}的持续回合+1，且弦枝处于{林间奏鸣}时，自身的源能获取效率+50%"
},
	[1036831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={103603}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[486]\n基础生命+[12]%\n{林间奏鸣}的持续回合+1，且弦枝处于{林间奏鸣}时，自身的源能获取效率+50%"
},
	[103686]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1036831}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[803]\n基础生命+[18]%\n{林间奏鸣}的持续回合+1，且弦枝处于{林间奏鸣}时，自身的源能获取效率+100%"
},
	[103783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="生命+[480]\n基础生命+[12]%\n战斗开始时有50%几率释放1次源能爆发(无消耗)，且释放源能爆发时自身也获得{灵颜}的效果；天赋复活友方后，为其添加1层翩跹羽(护盾值为鸣晔攻击的160%)，该护盾破碎时将为鸣晔提供2层{瑶光})"
},
	[1037831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[480]\n基础生命+[12]%\n战斗开始时有50%几率释放1次源能爆发(无消耗)，且释放源能爆发时自身也获得{灵颜}的效果；天赋复活友方后，为其添加1层翩跹羽(护盾值为鸣晔攻击的160%)，该护盾破碎时将为鸣晔提供2层{瑶光})"
},
	[103786]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={103702}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[793]\n基础生命+[18]%\n战斗开始时有100%几率释放1次源能爆发(无消耗)，且释放源能爆发时自身也获得{灵颜}的效果；天赋复活友方后，为其添加1层翩跹羽(护盾值为鸣晔攻击的240%)，该护盾破碎时将为鸣晔提供2层{瑶光})"
},
	[1037861]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={103783}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命+[793]\n基础生命+[18]%\n战斗开始时有100%几率释放1次源能爆发(无消耗)，且释放源能爆发时自身也获得{灵颜}的效果；天赋复活友方后，为其添加1层翩跹羽(护盾值为鸣晔攻击的240%)，该护盾破碎时将为鸣晔提供2层{瑶光})"
},
	[298180]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身攻擊將提升30%，持續至戰鬥結束，最多疊加2層(無法行動時清除效果)"
},
	[298280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時產生2格{電量}(每格電量提高自身25%攻擊)，持續至戰鬥結束，最多疊加4層(每受到2次攻擊，自身將移除1格電量)"
},
	[2982801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時產生2格{電量}(每格電量提高自身25%攻擊)，持續至戰鬥結束，最多疊加4層(每受到2次攻擊，自身將移除1格電量)"
},
	[2982802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,2982802}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時產生2格{電量}(每格電量提高自身25%攻擊)，持續至戰鬥結束，最多疊加4層(每受到2次攻擊，自身將移除1格電量)"
},
	[298380]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，攻擊將提高15%，持續至戰鬥結束，最多疊加5層(生命低於50%時自身承傷加深30%)"
},
	[2983802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，攻擊將提高15%，持續至戰鬥結束，最多疊加5層(生命低於50%時自身承傷加深30%)"
},
	[298480]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身死亡時，使友方全體獲得1層狂暴(攻擊提高40%，但承傷加深15%)，持續至戰鬥結束，最多疊加2層"
},
	[298580]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身攻擊將提升30%，持續至戰鬥結束，最多疊加2層(無法行動時清除效果)；滿層時自身攻擊將造成130%的傷害"
},
	[298680]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時產生2格{電量}(每格電量提高自身25%攻擊)，持續至戰鬥結束，最多疊加4層(每受到2次攻擊，自身將移除1格電量)；每格電量額外提供自身20%無視防禦"
},
	[298780]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，攻擊將提高15%，持續至戰鬥結束，最多疊加5層(生命低於50%時自身承傷加深30%)；自身對生命低於60%的目標傷害提升20%"
},
	[298880]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=62, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方死亡時，自身獲得1層狂暴(攻擊提高40%，但承傷加深15%)，持續至戰鬥結束，最多疊加2層；每層狂暴額外提高自身50%速度"
},
	[2988801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,298480}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方死亡時，自身獲得1層狂暴(攻擊提高40%，但承傷加深15%)，持續至戰鬥結束，最多疊加2層；每層狂暴額外提高自身50%速度"
},
	[300001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=75, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="生命每損失1%，韌性減少0.6%"
},
	[300086]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3000861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3001]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[3004]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[300401]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[150]%的傷害"
},
	[300483]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對目標造成減防效果(防禦降低20%)，持續2回合，最多疊加3層"
},
	[3004831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對目標造成減防效果(防禦降低20%)，持續2回合，最多疊加3層"
},
	[300486]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3004861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3004862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3004863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3007]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[3010]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[301001]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[150]%的傷害"
},
	[301083]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身對同一首要目標造成的傷害逐次增加15%，最多增加45%"
},
	[3010831]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身對同一首要目標造成的傷害逐次增加15%，最多增加45%"
},
	[3010832]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身對同一首要目標造成的傷害逐次增加15%，最多增加45%"
},
	[301086]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3010861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3010862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3010863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3013]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120%]的傷害"
},
	[3016]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[3019]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[302283]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每次攻擊時對目標附加1層印記(滿層時清空印記並使當前攻擊提高75%)，最多疊加3層"
},
	[3022831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每次攻擊時對目標附加1層印記(滿層時清空印記並使當前攻擊提高75%)，最多疊加3層"
},
	[3022832]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每次攻擊時對目標附加1層印記(滿層時清空印記並使當前攻擊提高75%)，最多疊加3層"
},
	[302286]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3022861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3022862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3022863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3025]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[302501]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[150]%的傷害"
},
	[302504]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[120]%的傷害。若目標生命高於50%，則終結技傷害提升80%"
},
	[3025041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={302504}, trigger_rate=10000, is_effect_inc=0, damage_source=7, desc="對{敵方全體}造成自身攻擊[120]%的傷害。若目標生命高於50%，則終結技傷害提升80%"
},
	[302580]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,298480}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方死亡時，自身獲得1層狂暴(攻擊提高30%，但承傷加深10%)，持續至戰鬥結束，最多疊加4層；每層狂暴額外提高自身25%速度"
},
	[3025801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方死亡時，自身獲得1層狂暴(攻擊提高30%，但承傷加深10%)，持續至戰鬥結束，最多疊加4層；每層狂暴額外提高自身25%速度"
},
	[302583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能的暴擊機率提升60%"
},
	[3025831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能的暴擊機率提升60%"
},
	[302586]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3025861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3025862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3025863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[302590]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[3025901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[3025902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[3025903]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[3025904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[3025905]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[3025906]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[302591]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3025905}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[302592]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3025905}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[302593]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3025905}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[302594]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3025905}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻干擾者加入戰場（僅觸發1次），且自身獲得30%無視防禦效果"
},
	[3028]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[3031]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[3034]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[303401]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[3037]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[303701]={ target_rule=1, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[118]%的傷害"
},
	[303783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，每回合開始自身獲得1層護盾(護盾值為自身最大生命的10%)，持續1回合"
},
	[3037831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，每回合開始自身獲得1層護盾(護盾值為自身最大生命的10%)，持續1回合"
},
	[303786]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3037861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3037862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3037863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3040]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[304001]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[150]%的傷害"
},
	[3043]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[304301]={ target_rule=2, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宫格}造成自身攻擊[118]%的傷害"
},
	[3046]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[304601]={ target_rule=2, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[118]%的傷害"
},
	[304683]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對生命高於50%的目標暴擊機率提升80%"
},
	[3046831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對生命高於50%的目標暴擊機率提升80%"
},
	[304686]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3046861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3046862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3046863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3049]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[304901]={ target_rule=7, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[112]%的傷害"
},
	[304983]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，每次行動時獲得1層攻擊強化(攻擊提升15%)，持續至戰鬥結束，最多疊加3層"
},
	[3049831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，每次行動時獲得1層攻擊強化(攻擊提升15%)，持續至戰鬥結束，最多疊加3層"
},
	[304986]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3049861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3049862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3049863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3052]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[305201]={ target_rule=2, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[305204]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[275]%的傷害。若目標生命低於50%，則終結技傷害提升20%"
},
	[3052041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={305204}, trigger_rate=10000, is_effect_inc=0, damage_source=7, desc="對{敵方後排單體}造成自身攻擊[275]%的傷害。若目標生命低於50%，則終結技傷害提升20%"
},
	[305280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，攻擊將提高15%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)；滿層時自身對生命低於50%的目標傷害提升40%"
},
	[305283]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能的暴擊機率提升60%"
},
	[3052831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能的暴擊機率提升60%"
},
	[305286]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3052861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3052862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3052863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[305290]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入極悲狀態(鎖血)，技能最後一擊將會對目標附加出血效果(目標在回合結束時將損失10%的最大生命)，最多疊加3層，持續2回合"
},
	[3052901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入極悲狀態(鎖血)，技能最後一擊將會對目標附加出血效果(目標在回合結束時將損失10%的最大生命)，最多疊加3層，持續2回合"
},
	[3052902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入極悲狀態(鎖血)，技能最後一擊將會對目標附加出血效果(目標在回合結束時將損失10%的最大生命)，最多疊加3層，持續2回合"
},
	[3052903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入極悲狀態(鎖血)，技能最後一擊將會對目標附加出血效果(目標在回合結束時將損失10%的最大生命)，最多疊加3層，持續2回合"
},
	[3052904]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=4, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入極悲狀態(鎖血)，技能最後一擊將會對目標附加出血效果(目標在回合結束時將損失15%的最大生命)，最多疊加3層，持續2回合"
},
	[3055]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[3058]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[305801]={ target_rule=5, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[118]%的傷害"
},
	[305883]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，每回合開始自身獲得1層護盾(護盾值為自身最大生命的10%)，持續1回合"
},
	[3058831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，每回合開始自身獲得1層護盾(護盾值為自身最大生命的10%)，持續1回合"
},
	[305886]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3058861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3058862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3058863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3061]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[3064]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[306401]={ target_rule=7, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[306483]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊最後一擊會對目標造成減防效果(防禦降低20%)，最多疊加3層，持續2回合"
},
	[3064831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊最後一擊會對目標造成減防效果(防禦降低20%)，最多疊加3層，持續2回合"
},
	[306486]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3064861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3064862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3064863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3067]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[3070]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[307001]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[150]%的傷害"
},
	[307083]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對護盾目標傷害加深50%"
},
	[3070831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對護盾目標傷害加深50%"
},
	[307086]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3070861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3070862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3070863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3073]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[3076]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[307601]={ target_rule=7, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[112]%的傷害"
},
	[307604]={ target_rule=7, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[120]%的傷害。終結技對首要目標傷害提升100%"
},
	[3076041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={307604}, trigger_rate=10000, is_effect_inc=0, damage_source=7, desc="對{敵方全體}造成自身攻擊[120]%的傷害。終結技對首要目標傷害提升100%"
},
	[307680]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，攻擊將提高15%，持續至戰鬥結束，最多疊加5層(生命低於50%時承傷加深30%)；滿層時自身對生命低於50%的目標傷害提升40%"
},
	[307690]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入猩紅狀態(鎖血)，自身每攻擊1次，獲得80點防禦穿透(上限為800點)，且每擊敗1名目標，自身技能傷害提升30%，最多提升120%"
},
	[3076901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入猩紅狀態(鎖血)，自身每攻擊1次，獲得80點防禦穿透(上限為800點)，且每擊敗1名目標，自身技能傷害提升30%，最多提升120%"
},
	[3076902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入猩紅狀態(鎖血)，自身每攻擊1次，獲得80點防禦穿透(上限為800點)，且每擊敗1名目標，自身技能傷害提升30%，最多提升120%"
},
	[3076903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入猩紅狀態(鎖血)，自身每攻擊1次，獲得80點防禦穿透(上限為800點)，且每擊敗1名目標，自身技能傷害提升30%，最多提升120%"
},
	[3076904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入猩紅狀態(鎖血)，自身每攻擊1次，獲得120點防禦穿透(上限為600點)，且每擊敗1名目標，自身技能傷害提升20%，最多提升80%"
},
	[3076905]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時進入猩紅狀態(鎖血)，自身每攻擊1次，獲得120點防禦穿透(上限為600點)，且每擊敗1名目標，自身技能傷害提升20%，最多提升80%"
},
	[3079]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[3082]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[3085]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[308501]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[150]%的傷害"
},
	[3088]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[3091]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[309101]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[150]%的傷害"
},
	[309483]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標施加1層極寒印記(滿層時將清空印記並觸發1次目標30%最大生命的寒霜傷害)，最多疊加4層"
},
	[3094831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標施加1層極寒印記(滿層時將清空印記並觸發1次目標30%最大生命的寒霜傷害)，最多疊加4層"
},
	[309486]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3094861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3094862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3094863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3097]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[309701]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[150]%的傷害"
},
	[309783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能首段命中時將會偷取目標20%攻擊(自身攻擊提升20%)，持續1回合"
},
	[3097831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能首段命中時將會偷取目標20%攻擊(自身攻擊提升20%)，持續1回合"
},
	[3097832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=17, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能首段命中時將會偷取目標20%攻擊(自身攻擊提升20%)，持續1回合"
},
	[309786]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3097861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3097862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3097863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3103]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[310301]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[150]%的傷害"
},
	[310383]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每回合開始時獲得1層銘文(暴擊機率提升25%，速度提升20%)，最多疊加3層"
},
	[3103831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每回合開始時獲得1層銘文(暴擊機率提升25%，速度提升20%)，最多疊加3層"
},
	[310386]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3103861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3103862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3103863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[310683]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標施加1層減速效果(速度降低20%)，持續2回合，最多疊加3層"
},
	[3106831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標施加1層減速效果(速度降低20%)，持續2回合，最多疊加3層"
},
	[310686]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3106861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3106862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3106863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3109]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[310901]={ target_rule=1, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[310983]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對受到負面效果的目標暴擊機率提高80%"
},
	[3109831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對受到負面效果的目標暴擊機率提高80%"
},
	[310986]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3109861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3109862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3109863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3112]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[311201]={ target_rule=1, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[311204]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[275]%的傷害"
},
	[311283]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對目標附加其最大生命12%的額外傷害"
},
	[3112831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對目標附加其最大生命12%的額外傷害"
},
	[311286]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3112861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3112862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3112863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[311290]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，進入第二形態，暴擊機率提升60%並在自身前方召喚名劍蘭斯洛特，僅觸發1次"
},
	[3112901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，進入第二形態，暴擊機率提升60%並在自身前方召喚名劍蘭斯洛特，僅觸發1次"
},
	[311291]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3112901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，進入第二形態，暴擊機率提升60%並在自身前方召喚名劍蘭斯洛特，僅觸發1次"
},
	[311292]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3112901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，進入第二形態，暴擊機率提升60%並在自身前方召喚名劍蘭斯洛特，僅觸發1次"
},
	[311293]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3112901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，進入第二形態，暴擊機率提升60%並在自身前方召喚名劍蘭斯洛特，僅觸發1次"
},
	[311294]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3112901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，進入第二形態，暴擊機率提升60%並在自身前方召喚名劍蘭斯洛特，僅觸發1次"
},
	[311583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標施加1層燃燒印記(滿層時轉化為爆燃效果，目標承傷加深35%，持續2回合)，最多疊加3層"
},
	[3115831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標施加1層燃燒印記(滿層時轉化為爆燃效果，目標承傷加深35%，持續2回合)，最多疊加3層"
},
	[311586]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3115861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3115862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3115863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3118]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[311801]={ target_rule=5, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[118]%的傷害"
},
	[311883]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能釋放時，每有1名敵方目標，技能傷害提升25%，最多提升100%"
},
	[3118831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能釋放時，每有1名敵方目標，技能傷害提升25%，最多提升100%"
},
	[311886]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3118861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3118862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3118863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[312183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，死亡時對攻擊者及其九宮格範圍造成自身攻擊300%的轟炎傷害"
},
	[3121831]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，死亡時對攻擊者及其九宮格範圍造成自身攻擊300%的轟炎傷害"
},
	[312186]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3121861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3121862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3121863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[313383]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊首段命中時對目標附加1層麻痺效果(目標格擋機率降低8%，且滿層時額外降低目標40%防禦)，持續2回合，最多疊加4層"
},
	[3133831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊首段命中時對目標附加1層麻痺效果(目標格擋機率降低8%，且滿層時額外降低目標40%防禦)，持續2回合，最多疊加4層"
},
	[313386]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3133861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3133862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3133863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3142]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[314201]={ target_rule=7, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[112]%的傷害"
},
	[314283]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對護盾目標傷害加深50%"
},
	[3142831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對護盾目標傷害加深50%"
},
	[314286]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3142861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3142862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3142863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[314583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊首段命中時對目標附加1層雷電印記(每層效果降低目標5%攻擊，且滿層時額外降低目標25%暴擊機率)，持續2回合，最多疊加4層"
},
	[3145831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊首段命中時對目標附加1層雷電印記(每層效果降低目標5%攻擊，且滿層時額外降低目標25%暴擊機率)，持續2回合，最多疊加4層"
},
	[314586]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3145861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3145862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3145863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3154]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[315401]={ target_rule=5, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[112]%的傷害"
},
	[3157]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[315701]={ target_rule=7, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[118]%的傷害"
},
	[315704]={ target_rule=7, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[120]%的傷害。自身生命低於50%時，終結技傷害將提升60%"
},
	[3157041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={315704}, trigger_rate=10000, is_effect_inc=0, damage_source=7, desc="對{敵方全體}造成自身攻擊[120]%的傷害。自身生命低於50%時，終結技傷害將提升60%"
},
	[315780]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身攻擊將提升25%，持續至戰鬥結束，最多疊加2層(無法行動時清除效果)；滿層時自身攻擊將造成130%的傷害"
},
	[315783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每次行動暴擊機率提升15%，防禦穿透提升180點，最多疊加3層"
},
	[3157831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每次行動暴擊機率提升15%，防禦穿透提升180點，最多疊加3層"
},
	[315786]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3157861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3157862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3157863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[315790]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時，激活{{能量防護}}(護盾值為自身攻擊的600%)，持續2回合；護盾存在時，自身屬性抗性提升50%"
},
	[316083]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加其當前生命12%的量蝕傷害"
},
	[3160831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加其當前生命12%的量蝕傷害"
},
	[316086]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3160861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3160862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3160863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3169]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[316901]={ target_rule=1, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[316983]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身對生命高於50%的目標暴擊機率提升80%"
},
	[3169831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身對生命高於50%的目標暴擊機率提升80%"
},
	[316986]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3169861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3169862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3169863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3172]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[3175]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[317501]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[150]%的傷害"
},
	[3178]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[3181]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[318101]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[150]%的傷害"
},
	[3184]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[3187]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[318701]={ target_rule=7, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[118]%的傷害"
},
	[318783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加虛弱效果(目標傷害降低8%)，最多疊加5層"
},
	[3187831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加虛弱效果(目標傷害降低8%)，最多疊加5層"
},
	[318786]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3187861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3187862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3187863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3190]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[319001]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[150]%的傷害"
},
	[319083]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每次受到攻擊時，格擋機率提升12%，持續1回合，最多疊加5層"
},
	[3190831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每次受到攻擊時，格擋機率提升12%，持續1回合，最多疊加5層"
},
	[319086]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3190861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3190862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3190863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[319383]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層破損效果(目標受到的護盾效果降低15%)，持續2回合，最多疊加4層"
},
	[3193831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層破損效果(目標受到的護盾效果降低15%)，持續2回合，最多疊加4層"
},
	[319386]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3193861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3193862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3193863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3199]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[319901]={ target_rule=5, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[118]%的傷害"
},
	[319904]={ target_rule=5, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[180]%的傷害。 技能目標數量<=2時，終結技傷害獲得提升（目標數量=2時，傷害提升40%; 目標數量=1時，傷害提升80%）"
},
	[3199041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={319904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方橫向兩排}造成自身攻擊[180]%的傷害。 技能目標數量<=2時，終結技傷害獲得提升（目標數量=2時，傷害提升40%; 目標數量=1時，傷害提升80%）"
},
	[319980]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方死亡時，自身獲得1層狂暴(攻擊提高30%，但承傷加深10%)，持續至戰鬥結束，最多疊加4層；每層狂暴額外提高自身25%速度"
},
	[319983]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身受到攻擊時獲得1層壁鎧(每層壁鎧可提高自身15%的技能傷害和25%的格擋機率)，持續1回合，最多疊加3層"
},
	[3199831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身受到攻擊時獲得1層壁鎧(每層壁鎧可提高自身15%的技能傷害和25%的格擋機率)，持續1回合，最多疊加3層"
},
	[319986]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3199861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3199862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[3199863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[319990]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[3199902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[3199903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[3199904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[3199905]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[3199906]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[319991]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3199904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[319992]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3199904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[319993]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3199904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[319994]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={3199904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，在自身前、後各召喚1隻斯科皮歐幻影（僅觸發1次），且自身對生命低於80%的目標暴擊機率提升50%"
},
	[4001]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[400101]={ target_rule=1, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[400104]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[120]%的傷害"
},
	[400190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="免疫控制；自身受到致死傷害時召喚4把異劍，並進入冰封狀態(自身無法行動，且不受傷害)，持續2回合；冰封結束時恢復自身50%的最大生命，且技能傷害提高60%，持續至戰鬥結束)，僅觸發1次"
},
	[4001901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="免疫控制；自身受到致死傷害時召喚4把異劍，並進入冰封狀態(自身無法行動，且不受傷害)，持續2回合；冰封結束時恢復自身50%的最大生命，且技能傷害提高60%，持續至戰鬥結束)，僅觸發1次"
},
	[4001902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,4001903}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="免疫控制；自身受到致死傷害時召喚4把異劍，並進入冰封狀態(自身無法行動，且不受傷害)，持續2回合；冰封結束時恢復自身50%的最大生命，且技能傷害提高60%，持續至戰鬥結束)，僅觸發1次"
},
	[400191]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={4001902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="免疫控制；自身受到致死傷害時召喚4把異劍，並進入冰封狀態(自身無法行動，且不受傷害)，持續2回合；冰封結束時恢復自身50%的最大生命，且技能傷害提高60%，持續至戰鬥結束)，僅觸發1次"
},
	[400192]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={4001902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="免疫控制；自身受到致死傷害時召喚4把異劍，並進入冰封狀態(自身無法行動，且不受傷害)，持續2回合；冰封結束時恢復自身50%的最大生命，且技能傷害提高60%，持續至戰鬥結束)，僅觸發1次"
},
	[400193]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={4001902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="免疫控制；自身受到致死傷害時召喚4把異劍，並進入冰封狀態(自身無法行動，且不受傷害)，持續2回合；冰封結束時恢復自身50%的最大生命，且技能傷害提高60%，持續至戰鬥結束)，僅觸發1次"
},
	[400194]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={4001902}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="免疫控制；自身受到致死傷害時召喚4把異劍，並進入冰封狀態(自身無法行動，且不受傷害)，持續2回合；冰封結束時恢復自身50%的最大生命，且技能傷害提高60%，持續至戰鬥結束)，僅觸發1次"
},
	[4004]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[400401]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[150]%的傷害"
},
	[400483]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身暴擊抗性提升40%"
},
	[400486]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4004861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4004862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4004863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4005]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[400501]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[150]%的傷害"
},
	[400583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層冰霜印記(每層印記降低目標20%速度，滿層後清空層數並使目標無法使用源能技，持續1回合)，最多疊加3層"
},
	[4005831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層冰霜印記(每層印記降低目標20%速度，滿層後清空層數並使目標無法使用源能技，持續1回合)，最多疊加3層"
},
	[400586]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4005861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4005862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4005863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4006]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[400601]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[150]%的傷害"
},
	[4007]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[400701]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[150]%的傷害"
},
	[400783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層引燃效果(每層引燃使目標受治療效果降低20%，滿層時額外降低目標30%防禦)，持續2回合，最多疊加3層"
},
	[4007831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層引燃效果(每層引燃使目標受治療效果降低20%，滿層時額外降低目標30%防禦)，持續2回合，最多疊加3層"
},
	[400786]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4007861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4007862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4007863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4008]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[400801]={ target_rule=5, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[112]%的傷害"
},
	[400804]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[275]%的傷害。終結技對護盾目標傷害提升25%"
},
	[4008041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={400804}, trigger_rate=10000, is_effect_inc=0, damage_source=7, desc="對{敵方對位前排單體}造成自身攻擊[275]%的傷害。終結技對護盾目標傷害提升25%"
},
	[400890]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時，自身激發仇恨效果，所有攻擊對目標附加1層仇恨印記(自身攻擊處於仇恨印記下的目標時傷害提升10%*印記層數)，最多疊加10層"
},
	[4008901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時，自身激發仇恨效果，所有攻擊對目標附加1層仇恨印記(自身攻擊處於仇恨印記下的目標時傷害提升10%*印記層數)，最多疊加10層"
},
	[4008902]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時，自身激發仇恨效果，所有攻擊對目標附加1層仇恨印記(自身攻擊處於仇恨印記下的目標時傷害提升10%*印記層數)，最多疊加10層"
},
	[4011]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[401101]={ target_rule=1, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[401104]={ target_rule=1, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[180]%的傷害。 自身對生命高於50%的目標防禦穿透提升600點"
},
	[4011041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={401104}, trigger_rate=10000, is_effect_inc=0, damage_source=7, desc="對{敵方橫向兩排}造成自身攻擊[180]%的傷害。 自身對生命高於50%的目標防禦穿透提升600點"
},
	[401180]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方死亡時，自身獲得1層狂暴(攻擊提高30%，但承傷加深10%)，持續至戰鬥結束，最多疊加4層；每層狂暴額外提高自身25%速度"
},
	[401190]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能對護盾目標傷害加深50%，且每擊敗1名目標，自身攻擊提高30%，效果抵抗提升25%，最多疊加4層"
},
	[4011901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能對護盾目標傷害加深50%，且每擊敗1名目標，自身攻擊提高30%，效果抵抗提升25%，最多疊加4層"
},
	[4014]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[401401]={ target_rule=1, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[401404]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[120]%的傷害。每釋放1次終結技，終結技傷害提升10%，最多提升100%"
},
	[4014041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={401404}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[120]%的傷害。每釋放1次終結技，終結技傷害提升10%，最多提升100%"
},
	[401480]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,298480}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="友方死亡時，自身獲得1層狂暴(攻擊提高30%，但承傷加深10%)，持續至戰鬥結束，最多疊加4層；每層狂暴額外提高自身25%速度"
},
	[401490]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每降低20%最大生命(鎖血)，將無消耗釋放1次終結技，且每擊敗1名目標，自身傷害減免提高20%，最多疊加3層"
},
	[4014901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每降低20%最大生命(鎖血)，將無消耗釋放1次終結技，且每擊敗1名目標，自身傷害減免提高20%，最多疊加3層"
},
	[4014902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每降低20%最大生命(鎖血)，將無消耗釋放1次終結技，且每擊敗1名目標，自身傷害減免提高20%，最多疊加3層"
},
	[4017]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[401701]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[150]%的傷害"
},
	[4020]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[402001]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[150]%的傷害"
},
	[402083]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身無視目標格擋，且擁有500點防禦穿透"
},
	[4020831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身無視目標格擋，且擁有500點防禦穿透"
},
	[402086]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4020861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4020862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4020863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4023]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[402301]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[150]%的傷害"
},
	[402383]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能將無視目標60%防禦"
},
	[4023831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能將無視目標60%防禦"
},
	[402386]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4023861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4023862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4023863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4026]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[402601]={ target_rule=5, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[118]%的傷害"
},
	[4029]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[4032]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[403201]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合潛行1次，移動至場上隨機位置"
},
	[403203]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="3回合後撤離戰場，並對友方全體附加鼓舞效果(攻擊提升25%，防禦提升40%)，持續2回合"
},
	[4032031]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=151, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="3回合後撤離戰場，並對友方全體附加鼓舞效果(攻擊提升25%，防禦提升40%)，持續2回合"
},
	[403280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，速度將提高20%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)；3回合後撤離戰場，並對友方全體附加鼓舞效果(攻擊提升25%，防禦提升40%)，持續2回合"
},
	[4032801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={403201}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，速度將提高20%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)；3回合後撤離戰場，並對友方全體附加鼓舞效果(攻擊提升25%，防禦提升40%)，持續2回合"
},
	[4032802]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=44, trigger_num={1,403280}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，速度將提高20%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)；3回合後撤離戰場，並對友方全體附加鼓舞效果(攻擊提升25%，防禦提升40%)，持續2回合"
},
	[4032803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，速度將提高20%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)；3回合後撤離戰場，並對友方全體附加鼓舞效果(攻擊提升25%，防禦提升40%)，持續2回合"
},
	[4032804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，速度將提高20%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)；3回合後撤離戰場，並對友方全體附加鼓舞效果(攻擊提升25%，防禦提升40%)，持續2回合"
},
	[4035]={ target_rule=11, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{友方生命最低}(百分比)的單位進行治療，回復其異變技工攻擊150%的生命值"
},
	[403580]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，治療效果將提高15%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)"
},
	[4035801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，治療效果將提高15%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)"
},
	[4038]={ target_rule=4, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方生命最低}(百分比)的單位施加負面效果，使其速度降低20%，持續1回合，最多疊加2層"
},
	[403880]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，速度將提高20%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)"
},
	[4038801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，速度將提高20%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)"
},
	[403883]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="韌性>0時，自身對目標造成的負面效果會額外降低目標20%防禦，持續2回合，最多疊加3層"
},
	[4038831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={4038}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="韌性>0時，自身對目標造成的負面效果會額外降低目標20%防禦，持續2回合，最多疊加3層"
},
	[403886]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4038861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4038862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4038863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4041]={ target_rule=6, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方攻擊最高}的單位施加負面效果，使其傷害降低15%，持續1回合，最多疊加2層"
},
	[404183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身對目標造成的負面效果會附加點燃(目標回合結束會受到自身攻擊80%的轟炎傷害)，持續2回合，最多疊加3層"
},
	[4041831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={4041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身對目標造成的負面效果會附加點燃(目標回合結束會受到自身攻擊80%的轟炎傷害)，持續2回合，最多疊加3層"
},
	[404186]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4041861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4041862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4041863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4044]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方防禦最高}的單位施加負面效果，使其防禦降低500點，持續1回合，最多疊加2層"
},
	[404480]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，防禦將提高20%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)"
},
	[4044801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，防禦將提高20%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)"
},
	[404483]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身對目標造成的負面效果會附加殘廢效果(目標受到的治療和護盾效果降低20%)，持續2回合，最多疊加3層"
},
	[4044831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={4044}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身對目標造成的負面效果會附加殘廢效果(目標受到的治療和護盾效果降低20%)，持續2回合，最多疊加3層"
},
	[404486]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4044861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4044862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4044863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4047]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[404701]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{全體友方}(自身除外)進行升級，使其攻擊提高異變機械師攻擊的15%，持續2回合，最多疊加3層"
},
	[404783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對目標額外提供1層護盾效果(護盾值為自身最大生命的8%)，持續2回合，最多疊加3層"
},
	[4047831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={404701,405001,405301,405601}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能對目標額外提供1層護盾效果(護盾值為自身最大生命的8%)，持續2回合，最多疊加3層"
},
	[404786]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4047861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4047862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4047863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[405001]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{全體友方}(自身除外)進行升級，使其暴擊機率提高25%，持續2回合，最多疊加3層"
},
	[405301]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{全體友方}(自身除外)進行升級，使其防禦穿透提升300點，持續2回合，最多疊加3層"
},
	[405601]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{全體友方}(自身除外)進行升級，使其技能傷害提升20%，持續2回合，最多疊加3層"
},
	[4059]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[405901]={ target_rule=5, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[112]%的傷害"
},
	[405983]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每降低10%最大生命，防禦穿透提升180點，最多疊加5層"
},
	[405986]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4059861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4059862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4059863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[406583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對護盾目標傷害加深80%"
},
	[4065831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對護盾目標傷害加深80%"
},
	[406586]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4065861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4065862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4065863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[406883]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層爆破印記(滿層時清空印記並使目標受到25%最大生命的轟炎傷害)，最多疊加3層"
},
	[4068831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層爆破印記(滿層時清空印記並使目標受到25%最大生命的轟炎傷害)，最多疊加3層"
},
	[406886]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4068861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4068862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4068863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4071]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[407101]={ target_rule=5, damage_area=4, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向一排}造成自身攻擊[118]%的傷害"
},
	[407104]={ target_rule=5, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[180]%的傷害。 終結技發動時，自身計時層數+2"
},
	[4071041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={407104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方橫向兩排}造成自身攻擊[180]%的傷害。 終結技發動時，自身計時層數+2"
},
	[407103]={ target_rule=1, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對敵方全體發動一次懲戒，造成自身攻擊30%*計時層數的真實傷害"
},
	[407180]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時，自身獲得1層計時，上限為10層，自身行動後將對敵方全體發動一次懲戒，造成自身攻擊20%*計時層數的真實傷害(自身生命每降低4%，計時層數-1)；戰鬥開始時默認擁有5層計時"
},
	[4071801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時，自身獲得1層計時，上限為10層，自身行動後將對敵方全體發動一次懲戒，造成自身攻擊20%*計時層數的真實傷害(自身生命每降低4%，計時層數-1)；戰鬥開始時默認擁有5層計時"
},
	[4071802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=31, trigger_num={407103}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="每次攻擊時，自身獲得1層計時，上限為10層，自身行動後將對敵方全體發動一次懲戒，造成自身攻擊20%*計時層數的真實傷害(自身生命每降低4%，計時層數-1)；戰鬥開始時默認擁有5層計時"
},
	[4071803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=32, trigger_num={407103}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="每次攻擊時，自身獲得1層計時，上限為10層，自身行動後將對敵方全體發動一次懲戒，造成自身攻擊20%*計時層數的真實傷害(自身生命每降低4%，計時層數-1)；戰鬥開始時默認擁有5層計時"
},
	[4071804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時，自身獲得1層計時，上限為10層，自身行動後將對敵方全體發動一次懲戒，造成自身攻擊20%*計時層數的真實傷害(自身生命每降低4%，計時層數-1)；戰鬥開始時默認擁有5層計時"
},
	[4071805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時，自身獲得1層計時，上限為10層，自身行動後將對敵方全體發動一次懲戒，造成自身攻擊20%*計時層數的真實傷害(自身生命每降低4%，計時層數-1)；戰鬥開始時默認擁有5層計時"
},
	[4071806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={4071,407101,407104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時，自身獲得1層計時，上限為10層，自身行動後將對敵方全體發動一次懲戒，造成自身攻擊20%*計時層數的真實傷害(自身生命每降低4%，計時層數-1)；戰鬥開始時默認擁有5層計時"
},
	[4071807]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次攻擊時，自身獲得1層計時，上限為10層，自身行動後將對敵方全體發動一次懲戒，造成自身攻擊20%*計時層數的真實傷害(自身生命每降低4%，計時層數-1)；戰鬥開始時默認擁有5層計時"
},
	[407183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能無視目標格擋，且擁有500點防禦穿透"
},
	[4071831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={407101,407104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能無視目標格擋，且擁有500點防禦穿透"
},
	[4071832]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={407101,407104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身技能無視目標格擋，且擁有500點防禦穿透"
},
	[407186]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4071861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4071862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4071863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[407190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻怪物(異變礦工、異變機械師)進入戰場，且召喚怪物存在時，自身屬性抗性提升40%"
},
	[4071901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻怪物(異變礦工、異變機械師)進入戰場，且召喚怪物存在時，自身屬性抗性提升40%"
},
	[4071902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻怪物(異變礦工、異變機械師)進入戰場，且召喚怪物存在時，自身屬性抗性提升40%"
},
	[4071903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻怪物(異變礦工、異變機械師)進入戰場，且召喚怪物存在時，自身屬性抗性提升40%"
},
	[4071904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=62, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻怪物(異變礦工、異變機械師)進入戰場，且召喚怪物存在時，自身屬性抗性提升40%"
},
	[407191]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={4071901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻怪物(異變礦工、異變機械師)進入戰場，且召喚怪物存在時，自身屬性抗性提升40%"
},
	[407192]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={4071901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻怪物(異變礦工、異變機械師)進入戰場，且召喚怪物存在時，自身屬性抗性提升40%"
},
	[407193]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={4071901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻怪物(異變礦工、異變機械師)進入戰場，且召喚怪物存在時，自身屬性抗性提升40%"
},
	[407194]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={4071901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，召喚兩隻怪物(異變礦工、異變機械師)進入戰場，且召喚怪物存在時，自身屬性抗性提升40%"
},
	[4074]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[407480]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身死亡時對敵方全體施加1層毒性花粉(回合結束時，目標受到施加者最大生命20%的真實傷害)，持續2回合，最多疊加3層"
},
	[407783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層寒冷效果(每層寒冷降低目標25%速度，滿層時寒冷轉化為冰凍，持續1回合)，最多疊加3層"
},
	[4077831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層寒冷效果(每層寒冷降低目標25%速度，滿層時寒冷轉化為冰凍，持續1回合)，最多疊加3層"
},
	[407786]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4077861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4077862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4077863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4086]={ target_rule=2, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方後排單體}造成自身攻擊[120]%的傷害"
},
	[409583]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加殘廢效果(目標受到的治療和護盾效果降低20%)，持續2回合，最多疊加3層"
},
	[4095831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加殘廢效果(目標受到的治療和護盾效果降低20%)，持續2回合，最多疊加3層"
},
	[409586]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4095861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4095862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4095863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4098]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[409801]={ target_rule=5, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[95]%的傷害"
},
	[4101]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[410101]={ target_rule=7, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[410104]={ target_rule=7, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[120]%的傷害。終結技對首要目標造成破防效果（防禦降低40%），持續1回合"
},
	[4101041]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=5, trigger_num={410104,502104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[120]%的傷害。終結技對首要目標造成破防效果（防禦降低40%），持續1回合"
},
	[410180]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=8000, is_effect_inc=0, damage_source=8, desc="自身每受到1次攻擊，有80%機率獲得1層幽魂(自身暴擊抗性提升6%)，最多疊加15層。釋放終結技後將解放所有幽魂攻擊敵方場上防禦最高單位，每層幽魂造成自身攻擊25%的傷害"
},
	[4101801]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=94, trigger_num={410104,502104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每受到1次攻擊，有80%機率獲得1層幽魂(自身暴擊抗性提升6%)，最多疊加15層。釋放終結技後將解放所有幽魂攻擊敵方場上防禦最高單位，每層幽魂造成自身攻擊25%的傷害"
},
	[410190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，進入黑暗形態，格擋機率提升80%並免疫控制，且幽魂攻擊擁有50%無視防禦效果；自身在該形態下擊敗目標時將立即獲得4層幽魂"
},
	[4101901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，進入黑暗形態，格擋機率提升80%並免疫控制，且幽魂攻擊擁有50%無視防禦效果；自身在該形態下擊敗目標時將立即獲得4層幽魂"
},
	[4104]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[410483]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層詛咒(目標攻擊降低15%，防禦降低25%)，持續2回合，最多疊加2層"
},
	[4104831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層詛咒(目標攻擊降低15%，防禦降低25%)，持續2回合，最多疊加2層"
},
	[410486]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4104861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4104862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4104863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4107]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[410701]={ target_rule=7, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[95]%的傷害"
},
	[410783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層精神印記(滿層時將觸發印記效果，清除目標身上的所有增益，且降低目標50%速度，持續2回合)，最多疊加3層"
},
	[4107831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層精神印記(滿層時將觸發印記效果，清除目標身上的所有增益，且降低目標50%速度，持續2回合)，最多疊加3層"
},
	[4107832]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊對目標附加1層精神印記(滿層時將觸發印記效果，清除目標身上的所有增益，且降低目標50%速度，持續2回合)，最多疊加3層"
},
	[410786]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4107861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4107862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4107863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4110]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[411001]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[411004]={ target_rule=5, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[204]%的傷害。終結技對目標附加虛弱效果（目標攻擊降低15%），持續2回合"
},
	[4110041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={411004}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方九宮格範圍}造成自身攻擊[204]%的傷害。終結技對目標附加虛弱效果（目標攻擊降低15%），持續2回合"
},
	[411080]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[4110801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[4110802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[4110803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[4110804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[411090]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，進入暗天使形態，該狀態下自身傷害減免提升50%，技能傷害提升50%"
},
	[4110901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，進入暗天使形態，該狀態下自身傷害減免提升50%，技能傷害提升50%"
},
	[4110902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，進入暗天使形態，該狀態下自身傷害減免提升50%，技能傷害提升50%"
},
	[4113]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[411301]={ target_rule=5, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[411380]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，攻擊將提高15%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)；自身免疫控制，且每次行動時消耗自身當前生命10%進行衝鋒(技能附加自身攻擊100%的真實傷害)"
},
	[4113801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，攻擊將提高15%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)；自身免疫控制，且每次行動時消耗自身當前生命10%進行衝鋒(技能附加自身攻擊100%的真實傷害)"
},
	[4113802]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=4, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命每減少10%，攻擊將提高15%，最多疊加5層，持續至戰鬥結束(生命低於50%時承傷加深30%)；自身免疫控制，且每次行動時消耗自身當前生命10%進行衝鋒(技能附加自身攻擊100%的真實傷害)"
},
	[4116]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[411601]={ target_rule=7, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[411604]={ target_rule=7, damage_area=6, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方九宮格範圍}造成自身攻擊[204]%的傷害"
},
	[411680]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[4116801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[4116802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[4116803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[4116804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身免疫控制，且每損失20%最大生命，自身獲得1次聖光豁免(驅散自身所有減益與異常效果，且下一次行動時所有攻擊轉化為真實傷害)"
},
	[411683]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身受到攻擊時會獲得1層守護(滿層時消耗所有層數並提高自身50%屬性抗性，持續2回合)，最多疊加6層"
},
	[4116831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身受到攻擊時會獲得1層守護(滿層時消耗所有層數並提高自身50%屬性抗性，持續2回合)，最多疊加6層"
},
	[411686]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4116861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4116862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[4116863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[411690]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，進入異化-暗天使形態，該狀態下自身暴擊抗性提升80%，暴擊機率提高80%"
},
	[4116901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，進入異化-暗天使形態，該狀態下自身暴擊抗性提升80%，暴擊機率提高80%"
},
	[4116902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於30%時(鎖血)，進入異化-暗天使形態，該狀態下自身暴擊抗性提升80%，暴擊機率提高80%"
},
	[4128]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[412801]={ target_rule=1, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[95]%的傷害"
},
	[5001]={ target_rule=1, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方前排單體}造成自身攻擊[120]%的傷害"
},
	[500101]={ target_rule=1, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[500104]={ target_rule=1, damage_area=4, damage_num=2, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方橫向兩排}造成自身攻擊[172]%的傷害"
},
	[500190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=90, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="暴擊機率提升60%"
},
	[5001901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首次生命低於50%時(鎖血)，進入第二形態，暴擊機率提升60%並在自身前方召喚名劍蘭斯洛特，僅觸發1次"
},
	[5011]={ target_rule=5, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位前排單體}造成自身攻擊[120]%的傷害"
},
	[501183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊會對目標造成減防效果(防禦降低15%)，最多疊加5層，持續2回合"
},
	[5011831]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身攻擊會對目標造成減防效果(防禦降低15%)，最多疊加5層，持續2回合"
},
	[501186]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5011861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5011862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5011863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5021]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[502101]={ target_rule=7, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[502104]={ target_rule=7, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[120]%的傷害"
},
	[502190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=90, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="格擋機率提升80%並免疫控制，且幽魂攻擊擁有50%無視防禦效果；自身在該形態下擊敗目標時將立即獲得5層幽魂"
},
	[5021901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=90, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="格擋機率提升80%並免疫控制，且幽魂攻擊擁有50%無視防禦效果；自身在該形態下擊敗目標時將立即獲得5層幽魂"
},
	[5021902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=40, trigger_num={410104,502104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="格擋機率提升80%並免疫控制，且幽魂攻擊擁有50%無視防禦效果；自身在該形態下擊敗目標時將立即獲得5層幽魂"
},
	[5021903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="格擋機率提升80%並免疫控制，且幽魂攻擊擁有50%無視防禦效果；自身在該形態下擊敗目標時將立即獲得5層幽魂"
},
	[5031]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[503101]={ target_rule=7, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[503104]={ target_rule=7, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[120]%的傷害。首段命中時將降低敵方30%防禦，同時使自身防禦提升600點，持續2回合"
},
	[5031041]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=17, trigger_num={503104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[120]%的傷害。首段命中時將降低敵方30%防禦，同時使自身防禦提升600點，持續2回合"
},
	[5031042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=17, trigger_num={503104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[120]%的傷害。首段命中時將降低敵方30%防禦，同時使自身防禦提升600點，持續2回合"
},
	[503183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每受到1次攻擊，自身的格擋幾率提升20%，持續1回合，最多疊加4層"
},
	[5031831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，自身每受到1次攻擊，自身的格擋幾率提升20%，持續1回合，最多疊加4層"
},
	[503186]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5031861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5031862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5031863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[503180]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時獲得1層基於自身攻擊200%的護盾——護盾被擊破時，敵方全體受到威壓（目標攻擊降低20%，技能傷害降低20%），持續1回合"
},
	[5031801]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=157, trigger_num={1,503180}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時獲得1層基於自身攻擊200%的護盾——護盾被擊破時，敵方全體受到威壓（目標攻擊降低20%，技能傷害降低20%），持續1回合"
},
	[503190]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身首次生命低於50%時(鎖血)，進入第二形態，速度提升100%，且終結技對敵方速度最快的目標施加枷鎖(速度降低至1點)，持續2回合"
},
	[5031901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身首次生命低於50%時(鎖血)，進入第二形態，速度提升100%，且終結技對敵方速度最快的目標施加枷鎖(速度降低至1點)，持續2回合"
},
	[503590]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=90, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身首次生命低於50%時(鎖血)，進入第二形態，速度提升100%，且終結技對敵方速度最快的目標施加枷鎖(速度降低至1點)，持續2回合"
},
	[5035901]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=40, trigger_num={503104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身首次生命低於50%時(鎖血)，進入第二形態，速度提升100%，且終結技對敵方速度最快的目標施加枷鎖(速度降低至1點)，持續2回合"
},
	[5037]={ target_rule=7, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方對位單體}造成自身攻擊[120]%的傷害"
},
	[503701]={ target_rule=7, damage_area=3, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方直線四格}造成自身攻擊[102]%的傷害"
},
	[503704]={ target_rule=7, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="對{敵方全體}造成自身攻擊[120]%的傷害。首段命中時將降低敵方30%防禦，同時使自身防禦提升600點，持續2回合"
},
	[5037041]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=17, trigger_num={503704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[120]%的傷害。首段命中時將降低敵方30%防禦，同時使自身防禦提升600點，持續2回合"
},
	[5037042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=17, trigger_num={503704}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="對{敵方全體}造成自身攻擊[120]%的傷害。首段命中時將降低敵方30%防禦，同時使自身防禦提升600點，持續2回合"
},
	[503780]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時對敵方防禦最低的單位附加1層{{雷殛}}(目標在行動時將陷入電擊狀態，造成傷害降低25%，且受到的回復效果降低40%)，持續2回合（同一個單位3回合內僅能生效1次）"
},
	[5037801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合開始時對敵方防禦最低的單位附加1層{{雷殛}}(目標在行動時將陷入電擊狀態，造成傷害降低25%，且受到的回復效果降低40%)，持續2回合（同一個單位3回合內僅能生效1次）"
},
	[503783]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，每回合開始選擇上回合對自身造成傷害最低的目標，對其九宮格範圍造成自身攻擊120%的真實傷害"
},
	[5037831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性>0時，每回合開始選擇上回合對自身造成傷害最低的目標，對其九宮格範圍造成自身攻擊120%的真實傷害"
},
	[503786]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5037861]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5037862]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[5037863]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性擊破時，特性失效，且自身屬性抗性降低25%，持續2回合(持續時間結束韌性恢復)"
},
	[6101]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放源能技時，自身攻擊提升[8]%，行動結束後失效"
},
	[6102]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身傷害減免提升[5]%。若自身生命低於50%，則受到的治療效果提升[10]%"
},
	[6103]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{流血}下的目標時直擊傷害提升[20]%。若目標{流血}層數>=[4]層，則自身攻擊提升[6]%"
},
	[61031]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{流血}下的目標時直擊傷害提升[20]%。若目標{流血}層數>=[4]層，則自身攻擊提升[6]%"
},
	[6104]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{感電}下的目標時騁電傷害提升[15]%。若目標{感電}層數>=[5]層，則騁電傷害額外提升[20]%"
},
	[61041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{感電}下的目標時騁電傷害提升[15]%。若目標{感電}層數>=[5]層，則騁電傷害額外提升[20]%"
},
	[6105]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{灼傷}下的目標時暴擊機率提升[10]%。若目標{灼傷}>=[6]層，則暴擊傷害提高[20]%"
},
	[61051]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{灼傷}下的目標時暴擊機率提升[10]%。若目標{灼傷}>=[6]層，則暴擊傷害提高[20]%"
},
	[6106]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{漸凍}下的目標時寒霜傷害提升[18]%。且每行動1次，自身技能傷害提高[4]%，持續至戰鬥結束，最多疊加3層"
},
	[61061]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{漸凍}下的目標時寒霜傷害提升[18]%。且每行動1次，自身技能傷害提高[4]%，持續至戰鬥結束，最多疊加3層"
},
	[6107]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=94, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每攻擊1次，攻擊提升[4]%，持續2回合，最多疊加3層。若目標{蘊蝕}層數>=[3]層，則生蘊傷害提升[15]%"
},
	[61071]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每攻擊1次，攻擊提升[4]%，持續2回合，最多疊加3層。若目標{蘊蝕}層數>=[3]層，則生蘊傷害提升[15]%"
},
	[6108]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{輻射}下的目標時量蝕傷害提升[15]%；且輻射爆發觸發傷害提高[80]%"
},
	[61081]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊{輻射}下的目標時量蝕傷害提升[15]%；且輻射爆發觸發傷害提高[80]%"
},
	[6109]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="釋放技能時，使友方全體產生{共鳴}(攻擊提升[2.5]%，防禦提升[4]%)，持續2回合，最多疊加3層"
},
	[6110]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身治療生命低於50%的目標時，治療效果提高[15]%。若目標生命低於15%，則治療效果額外提高[20]%"
},
	[61101]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身治療生命低於50%的目標時，治療效果提高[15]%。若目標生命低於15%，則治療效果額外提高[20]%"
},
	[6111]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時，自身的韌性擊破效率提升[10]%，攻擊提升[6]%，持續至戰鬥結束，最多疊加3層"
},
	[6112]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每釋放1次技能，效果命中提升[2.5]%，持續至戰鬥結束，最多疊加4層。每次成功對目標施加減益或異常時，自身攻擊提升[5]%，持續至戰鬥結束，最多疊加4層"
},
	[61121]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=67, trigger_num={2}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每釋放1次技能，效果命中提升[2.5]%，持續至戰鬥結束，最多疊加4層。每次成功對目標施加減益或異常時，自身攻擊提升[5]%，持續至戰鬥結束，最多疊加4層"
},
	[6113]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每受到1次攻擊，格擋機率提升[6]%，最多疊加5層，回合結束時清空。若自身生命低於50%，則傷害減免額外提高[8]%"
},
	[61131]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每受到1次攻擊，格擋機率提升[6]%，最多疊加5層，回合結束時清空。若自身生命低於50%，則傷害減免額外提高[8]%"
},
	[61132]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每受到1次攻擊，格擋機率提升[6]%，最多疊加5層，回合結束時清空。若自身生命低於50%，則傷害減免額外提高[8]%"
},
	[6114]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在受到攻擊傷害時會獲得1層反噬之力(每層反噬之力將對攻擊方反彈承受傷害的[5]%+自身防禦[50]%)，持續1回合，最多疊加4層。若自身生命低於50%，則防禦額外提升25%"
},
	[61141]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身在受到攻擊傷害時會獲得1層反噬之力(每層反噬之力將對攻擊方反彈承受傷害的[5]%+自身防禦[50]%)，持續1回合，最多疊加4層。若自身生命低於50%，則防禦額外提升25%"
},
	[7101]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命高於80%時，暴擊機率提升[15]%"
},
	[7102]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="自身擊敗敵人時，有70%機率恢復[6]%的最大生命"
},
	[7103]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身生命低於50%時，攻擊提升[8]%"
},
	[7104]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="自身受到敵方攻擊時，有50%機率提高[4]%的格擋機率，持續1回合，最多疊加4層"
},
	[7105]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對生命高於80%的敵方傷害提升[10]%"
},
	[7106]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=9, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊觸發暴擊時有50%機率回復本次傷害[20]%的生命值"
},
	[7201]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=32, trigger_num={1,3}, trigger_rate=8000, is_effect_inc=0, damage_source=8, desc="自身技能最後一擊有80%機率獲得[14]%的攻擊加成，持續1回合"
},
	[7202]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時自身獲得4層{強攻}，每層{強攻}提供[5]%的攻擊加成。每次釋放普攻和源能技後將消耗1層{強攻}"
},
	[72021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={0,1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時自身獲得4層{強攻}，每層{強攻}提供[5]%的攻擊加成。每次釋放普攻和源能技後將消耗1層{強攻}"
},
	[7203]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對處於冰凍下的敵方傷害提升[18]%"
},
	[7204]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身普攻後，攻擊將提升[12.5]%，持續1回合"
},
	[7205]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對相同首要目標攻擊時，攻擊將逐次提升[5.5]%，最多疊加3層"
},
	[72051]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對相同首要目標攻擊時，攻擊將逐次提升[5.5]%，最多疊加3層"
},
	[7206]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每次釋放技能時，友方全體將獲得[2]%的攻擊加成，持續2回合，最多疊加3層"
},
	[7207]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=9, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊觸發暴擊時，獲得1層決心，每層決心提供自身[1.5]%的攻擊加成，最多疊加10層。行動結束後清空決心效果"
},
	[7208]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對生命低於50%的敵方傷害提高[14]%"
},
	[7209]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身治療生命低於50%的友方時，治療效果提升[15]%"
},
	[7210]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身釋放{源能技}時會獲得1層過載(滿層時轉化為自身治療效果提升[18]%，持續2回合)，最多疊加2層"
},
	[7211]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身釋放源能爆發時，攻擊將提升[15]%，持續2回合"
},
	[7212]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到攻擊傷害時，傷害減免提升[2.5]%，持續1回合，最多疊加5層"
},
	[7301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=37, trigger_num={}, trigger_rate=8000, is_effect_inc=0, damage_source=8, desc="自身每段攻擊時有80%機率提高自身[6]%的暴擊機率，最多疊加5層。觸發暴擊後，清空效果"
},
	[73011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=103, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每段攻擊時有80%機率提高自身[6]%的暴擊機率，最多疊加5層。觸發暴擊後，清空效果"
},
	[7302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="自身在造成攻擊傷害後，有70%機率獲得1次充能，使後續攻擊傷害提升[18]%。回合結束時清空效果"
},
	[7303]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊處於減益與異常下的敵方時，攻擊將提升[16]%"
},
	[7304]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={0,1}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="自身在釋放普攻和源能技時有60%機率提高自身[10]%攻擊，最多疊加2層。行動後清空效果"
},
	[7305]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提高[18]%。若行動前受到傷害，則該效果降低25%"
},
	[73051]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提高[18]%。若行動前受到傷害，則該效果降低25%"
},
	[7306]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身源能爆發傷害提升[17]%，且己方場上每存在1名同屬性戰員，源能爆發傷害額外提高5%"
},
	[73061]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身源能爆發傷害提升[17]%，且己方場上每存在1名同屬性戰員，源能爆發傷害額外提高5%"
},
	[7307]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="己方場上每存在1名同屬性戰員，自身生命上限提高[4]%，防禦提高[[2]]%"
},
	[7308]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="目標每損失10%的生命，自身對其的治療技能效果將提升[2]%。若行動前存在己方戰員死亡，則本回合自身的治療效果額外提高10%"
},
	[73081]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=62, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="目標每損失10%的生命，自身對其的治療技能效果將提升[2]%。若行動前存在己方戰員死亡，則本回合自身的治療效果額外提高10%"
},
	[7401]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊生命低於80%首要目標時，源能爆發傷害將提高[20]%\n卡蘭麗莎裝備時，每釋放1次源能爆發，源能爆發傷害將提升[[5]]%，持續至戰鬥結束，最多疊加4層"
},
	[74011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身攻擊生命低於80%首要目標時，源能爆發傷害將提高[20]%\n卡蘭麗莎裝備時，每釋放1次源能爆發，源能爆發傷害將提升[[5]]%，持續至戰鬥結束，最多疊加4層"
},
	[7402]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n奧莉維婭裝備時，每回合開始時獲得2層戰意，且每層戰意使奧利維亞獲得[[25]]點防禦穿透"
},
	[74021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n奧莉維婭裝備時，每回合開始時獲得2層戰意，且每層戰意使奧利維亞獲得[[25]]點防禦穿透"
},
	[74022]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,100580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n奧莉維婭裝備時，每回合開始時獲得2層戰意，且每層戰意使奧利維亞獲得[[25]]點防禦穿透"
},
	[7403]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身施加的護盾效果提升[12]%\n爍曦裝備時，自身生命上限提高[[10]]%，防禦提高[[5]]%，且源能爆發對目標造成的額外傷害提高100%"
},
	[74031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身施加的護盾效果提升[12]%\n爍曦裝備時，自身生命上限提高[[10]]%，防禦提高[[5]]%，且源能爆發對目標造成的額外傷害提高100%"
},
	[74032]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1001041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身施加的護盾效果提升[12]%\n爍曦裝備時，自身生命上限提高[[10]]%，防禦提高[[5]]%，且源能爆發對目標造成的額外傷害提高100%"
},
	[7404]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n泠裝備時，自身每次行動將提升[[7.5]]%的攻擊，持續至戰鬥結束，最多疊加4層，且每次行動後為友方其他戰員提供1層增益，使其暴擊傷害提升泠暴擊傷害的[[6]]%，持續1回合，同屬性戰員效果提升40%"
},
	[74041]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n泠裝備時，自身每次行動將提升[[7.5]]%的攻擊，持續至戰鬥結束，最多疊加4層，且每次行動後為友方其他戰員提供1層增益，使其暴擊傷害提升[[6]]%，持續1回合，同屬性戰員效果提升40%"
},
	[74042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n泠裝備時，自身每次行動將提升[[7.5]]%的攻擊，持續至戰鬥結束，最多疊加4層，且每次行動後為友方其他戰員提供1層增益，使其暴擊傷害提升[[6]]%，持續1回合，同屬性戰員效果提升40%"
},
	[7405]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n冷蛟裝備時，自身對漸凍下的目標傷害額外提高[[8]]%，且目標每有1層漸凍，自身源能爆發的冰凍機率提高1.5%"
},
	[74051]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n冷蛟裝備時，自身對漸凍下的目標傷害額外提高[[8]]%，且目標每有1層漸凍，自身源能爆發的冰凍機率提高1.5%"
},
	[74052]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n冷蛟裝備時，自身對漸凍下的目標傷害額外提高[[8]]%，且目標每有1層漸凍，自身源能爆發的冰凍機率提高1.5%"
},
	[7406]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n萊蔻莎裝備時，自身無視防禦提升[[12]]%，且自身在過激狀態下攻擊額外提高[[8]]%"
},
	[74061]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n萊蔻莎裝備時，自身無視防禦提升[[12]]%，且自身在過激狀態下攻擊額外提高[[8]]%"
},
	[74062]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,1014801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n萊蔻莎裝備時，自身無視防禦提升[[12]]%，且自身在過激狀態下攻擊額外提高[[8]]%"
},
	[7407]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身治療友方時，目標生命越低，治療效果越強(目標生命低於25%時獲得最大治療效果提升[20]%，初始為10%治療效果提升)\n莉麗拉裝備時，自身生命上限將提高[[12]]%，且自身施加的護盾效果提升12%"
},
	[74071]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身治療友方時，目標生命越低，治療效果越強(目標生命低於25%時獲得最大治療效果提升[20]%，初始為10%治療效果提升)\n莉麗拉裝備時，自身生命上限將提高[[12]]%，且自身施加的護盾效果提升12%"
},
	[74072]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身治療友方時，目標生命越低，治療效果越強(目標生命低於25%時獲得最大治療效果提升[20]%，初始為10%治療效果提升)\n莉麗拉裝備時，自身生命上限將提高[[12]]%，且自身施加的護盾效果提升12%"
},
	[7408]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊幾率提升[10]%\n達瓦林裝備時，首回合有[70]%幾率獲得50%源能補充，且每層鹿靈額外獲得[[1.5]]%的攻擊加成和[[30]]點防禦穿透"
},
	[74081]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="自身暴擊幾率提升[10]%\n達瓦林裝備時，首回合有[70]%幾率獲得50%源能補充，且每層鹿靈額外獲得[[1.5]]%的攻擊加成和[[30]]點防禦穿透"
},
	[74082]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={101580}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊幾率提升[10]%\n達瓦林裝備時，首回合有[70]%幾率獲得50%源能補充，且每層鹿靈額外獲得[[1.5]]%的攻擊加成和[[30]]點防禦穿透"
},
	[74083]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74081}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊幾率提升[10]%\n達瓦林裝備時，首回合有[70]%幾率獲得50%源能補充，且每層鹿靈額外獲得[[1.5]]%的攻擊加成和[[30]]點防禦穿透"
},
	[7409]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每造成1次攻擊傷害，獲得[25]點防禦穿透，持續2回合，最多疊加10層\n蒂雅裝備時，無視防禦提升[[10]]%，且每層效果額外提供[[1.5]]%的攻擊加成"
},
	[74091]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=152, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每造成1次攻擊傷害，獲得[25]點防禦穿透，持續2回合，最多疊加10層\n蒂雅裝備時，無視防禦提升[[10]]%，且每層效果額外提供[[1.5]]%的攻擊加成"
},
	[74092]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,7409}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每造成1次攻擊傷害，獲得[25]點防禦穿透，持續2回合，最多疊加10層\n蒂雅裝備時，無視防禦提升[[10]]%，且每層效果額外提供[[1.5]]%的攻擊加成"
},
	[74093]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每造成1次攻擊傷害，獲得[25]點防禦穿透，持續2回合，最多疊加10層\n蒂雅裝備時，無視防禦提升[[10]]%，且每層效果額外提供[[1.5]]%的攻擊加成"
},
	[7410]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n朝暉裝備時，自身每有1層勇敢，防禦穿透將提升[[40]]點，且攻擊冰凍目標時，自身勇敢效果提升[[30]]%"
},
	[74101]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,100680}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n朝暉裝備時，自身每有1層勇敢，防禦穿透將提升[[40]]點，且攻擊冰凍目標時，自身勇敢效果提升[[30]]%"
},
	[74102]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n朝暉裝備時，自身每有1層勇敢，防禦穿透將提升[[40]]點，且攻擊冰凍目標時，自身勇敢效果提升[[30]]%"
},
	[7411]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n言裝備時，自身對護盾目標傷害提升[[24]]%，且每擊殺1名目標，自身獲得1層劍幕，可吸收自身攻擊[[100]]%的傷害，最多可獲得3層"
},
	[74111]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n言裝備時，自身對護盾目標傷害提升[[24]]%，且每擊殺1名目標，自身獲得1層劍幕，可吸收自身攻擊[[100]]%的傷害，最多可獲得3層"
},
	[74112]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n言裝備時，自身對護盾目標傷害提升[[24]]%，且每擊殺1名目標，自身獲得1層劍幕，可吸收自身攻擊[[100]]%的傷害，最多可獲得3層"
},
	[7412]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供[3]%的攻擊加成和[[1.5]]%的速度加成，持續至戰鬥結束，最多疊加3層\n艾可裝備時，源能爆發的沉默機率提升6%，且每沉默1個敵方單位，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加5層"
},
	[74121]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1010041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供[3]%的攻擊加成和[[1.5]]%的速度加成，持續至戰鬥結束，最多疊加3層\n艾可裝備時，源能爆發的沉默機率提升6%，且每沉默1個敵方單位，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加5層"
},
	[74122]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,1010041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供[3]%的攻擊加成和[[1.5]]%的速度加成，持續至戰鬥結束，最多疊加3層\n艾可裝備時，源能爆發的沉默機率提升6%，且每沉默1個敵方單位，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加5層"
},
	[7413]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供1層庇護效果(傷害减免提升[2]%)，持續至戰鬥結束，最多疊加3層\n魁霎裝備時，首回合有[70]%幾率獲得50%源能補充，且自身生命上限提高[[12.5]]%"
},
	[74131]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供1層庇護效果(傷害减免提升[2]%)，持續至戰鬥結束，最多疊加3層\n魁霎裝備時，首回合有[70]%幾率獲得50%源能補充，且自身生命上限提高[[12.5]]%"
},
	[74132]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供1層庇護效果(傷害减免提升[2]%)，持續至戰鬥結束，最多疊加3層\n魁霎裝備時，首回合有[70]%幾率獲得50%源能補充，且自身生命上限提高[[12.5]]%"
},
	[74133]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74132}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供1層庇護效果(傷害减免提升[2]%)，持續至戰鬥結束，最多疊加3層\n魁霎裝備時，首回合有[70]%幾率獲得50%源能補充，且自身生命上限提高[[12.5]]%"
},
	[7414]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每過1回合，自身生命上限提升[5]%，持續至戰鬥結束，最多疊加3層\n磐雷裝備時，自身生命上限將額外提高[[7.5]]%，且敵方行動時有[[20]]%機率觸發怒雷效果，使敵方首要目標強制變更為自身，持續至敵方行動結束"
},
	[74141]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每過1回合，自身生命上限提升[5]%，持續至戰鬥結束，最多疊加3層\n磐雷裝備時，自身生命上限將額外提高[[7.5]]%，且敵方行動時有[[20]]%機率觸發怒雷效果，使敵方首要目標強制變更為自身，持續至敵方行動結束"
},
	[74142]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每過1回合，自身生命上限提升[5]%，持續至戰鬥結束，最多疊加3層\n磐雷裝備時，自身生命上限將額外提高[[7.5]]%，且敵方行動時有[[20]]%機率觸發怒雷效果，使敵方首要目標強制變更為自身，持續至敵方行動結束"
},
	[74143]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=153, trigger_num={}, trigger_rate=2000, is_effect_inc=0, damage_source=8, desc="每過1回合，自身生命上限提升[5]%，持續至戰鬥結束，最多疊加3層\n磐雷裝備時，自身生命上限將額外提高[[7.5]]%，且敵方行動時有[[20]]%機率觸發怒雷效果，使敵方首要目標強制變更為自身，持續至敵方行動結束"
},
	[74144]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74143}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每過1回合，自身生命上限提升[5]%，持續至戰鬥結束，最多疊加3層\n磐雷裝備時，自身生命上限將額外提高[[7.5]]%，且敵方行動時有[[20]]%機率觸發怒雷效果，使敵方首要目標強制變更為自身，持續至敵方行動結束"
},
	[7415]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n歌海娜裝備時，幻火層數上限+1，且普攻有[[70]]%機率獲得1層幻火，同時涅槃效果範圍進化為友方全體，並額外提供目標[[7.5]]%暴擊傷害"
},
	[74151]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100980}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n歌海娜裝備時，幻火層數上限+1，且普攻有[[70]]%機率獲得1層幻火，同時涅槃效果範圍進化為友方全體，並額外提供目標[[7.5]]%暴擊傷害"
},
	[74152]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={0}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n歌海娜裝備時，幻火層數上限+1，且普攻有[[70]]%機率獲得1層幻火，同時涅槃效果範圍進化為友方全體，並額外提供目標[[7.5]]%暴擊傷害"
},
	[74153]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74152}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n歌海娜裝備時，幻火層數上限+1，且普攻有[[70]]%機率獲得1層幻火，同時涅槃效果範圍進化為友方全體，並額外提供目標[[7.5]]%暴擊傷害"
},
	[74154]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={100990}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n歌海娜裝備時，幻火層數上限+1，且普攻有[[70]]%機率獲得1層幻火，同時涅槃效果範圍進化為友方全體，並額外提供目標[[7.5]]%暴擊傷害"
},
	[74155]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n歌海娜裝備時，幻火層數上限+1，且普攻有[[70]]%機率獲得1層幻火，同時涅槃效果範圍進化為友方全體，並額外提供目標[[7.5]]%暴擊傷害"
},
	[74156]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n歌海娜裝備時，幻火層數上限+1，且普攻有[[70]]%機率獲得1層幻火，同時涅槃效果範圍進化為友方全體，並額外提供目標[[7.5]]%暴擊傷害"
},
	[7416]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供[3]%的速度加成，持續至戰鬥結束，最多疊加2層\n燕鷗裝備時，自身行動後會為全體友方附加1層無人機支援，且無人機滿層時為目標額外提供[[6]]%的傷害加深"
},
	[74161]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供[3]%的速度加成，持續至戰鬥結束，最多疊加2層\n燕鷗裝備時，自身行動後會為全體友方附加1層無人機支援，且無人機滿層時為目標額外提供[[6]]%的傷害加深"
},
	[74162]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時，自身會為友方全體提供[3]%的速度加成，持續至戰鬥結束，最多疊加2層\n燕鷗裝備時，自身行動後會為全體友方附加1層無人機支援，且無人機滿層時為目標額外提供[[6]]%的傷害加深"
},
	[7417]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對生命低於50%的目標治療效果提升[15]%，且釋放源能爆發時，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加2層\n霜瓊裝備時，首回合有[70]%幾率獲得50%源能補充，且凍結目標解凍時額外獲得霜瓊攻擊[[100]]%的護盾和50%源能補充"
},
	[74171]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對生命低於50%的目標治療效果提升[15]%，且釋放源能爆發時，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加2層\n霜瓊裝備時，首回合有[70]%幾率獲得50%源能補充，且凍結目標解凍時額外獲得霜瓊攻擊[[100]]%的護盾和50%源能補充"
},
	[74172]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1019045}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對生命低於50%的目標治療效果提升[15]%，且釋放源能爆發時，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加2層\n霜瓊裝備時，首回合有[70]%幾率獲得50%源能補充，且凍結目標解凍時額外獲得霜瓊攻擊[[100]]%的護盾和50%源能補充"
},
	[74173]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對生命低於50%的目標治療效果提升[15]%，且釋放源能爆發時，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加2層\n霜瓊裝備時，首回合有[70]%幾率獲得50%源能補充，且凍結目標解凍時額外獲得霜瓊攻擊[[100]]%的護盾和50%源能補充"
},
	[74174]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對生命低於50%的目標治療效果提升[15]%，且釋放源能爆發時，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加2層\n霜瓊裝備時，首回合有[70]%幾率獲得50%源能補充，且凍結目標解凍時額外獲得霜瓊攻擊[[100]]%的護盾和50%源能補充"
},
	[74175]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="自身對生命低於50%的目標治療效果提升[15]%，且釋放源能爆發時，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加2層\n霜瓊裝備時，首回合有[70]%幾率獲得50%源能補充，且凍結目標解凍時額外獲得霜瓊攻擊[[100]]%的護盾和50%源能補充"
},
	[74176]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74175}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身對生命低於50%的目標治療效果提升[15]%，且釋放源能爆發時，自身攻擊提升[[5]]%，持續至戰鬥結束，最多疊加2層\n霜瓊裝備時，首回合有[70]%幾率獲得50%源能補充，且凍結目標解凍時額外獲得霜瓊攻擊[[100]]%的護盾和50%源能補充"
},
	[7418]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時為自身九宮格範圍的友方單位提供源能增幅(源能爆發傷害提高[4]%，量蝕傷害提高[[2]]%)，持續至戰鬥結束，最多疊加3層\n伊芙特裝備時，{核心鎖定}觸發機率提升10%，且源能爆發釋放時，自身九宮格範圍的友方暴擊傷害提升[[10]]%，持續2回合"
},
	[74181]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1113041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時為自身九宮格範圍的友方單位提供源能增幅(源能爆發傷害提高[4]%，量蝕傷害提高[[2]]%)，持續至戰鬥結束，最多疊加3層\n伊芙特裝備時，{核心鎖定}觸發機率提升10%，且源能爆發釋放時，自身九宮格範圍的友方暴擊傷害提升[[10]]%，持續2回合"
},
	[74182]={ target_rule=10, damage_area=6, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次行動時為自身九宮格範圍的友方單位提供源能增幅(源能爆發傷害提高[4]%，量蝕傷害提高[[2]]%)，持續至戰鬥結束，最多疊加3層\n伊芙特裝備時，{核心鎖定}觸發機率提升10%，且源能爆發釋放時，自身九宮格範圍的友方暴擊傷害提升[[10]]%，持續2回合"
},
	[7419]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n尤加利裝備時，每回合開始獲得1層寒翎，且每層寒翎額外提供自身[[3]]%無視防禦；掠血滅痕觸發血限提升至[[70]]%"
},
	[74191]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n尤加利裝備時，每回合開始獲得1層寒翎，且每層寒翎額外提供自身[[3]]%無視防禦；掠血滅痕觸發血限提升至[[70]]%"
},
	[74192]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n尤加利裝備時，每回合開始獲得1層寒翎，且每層寒翎額外提供自身[[3]]%無視防禦；掠血滅痕觸發血限提升至[[70]]%"
},
	[74193]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={102090}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n尤加利裝備時，每回合開始獲得1層寒翎，且每層寒翎額外提供自身[[3]]%無視防禦；掠血滅痕觸發血限提升至[[70]]%"
},
	[7420]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n瑪瑟琳裝備時，每次行動會對敵方全體附加1層撕裂，且目標每有1層撕裂，自身對其無視防禦提升[[3.5]]%，行動後對敵方生命百分比最低的單位釋放靈魂收割，造成其最大生命[[12.5]]%的真實傷害(傷害上限為瑪瑟琳攻擊的[[300]]%)"
},
	[74201]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n瑪瑟琳裝備時，每次行動會對敵方全體附加1層撕裂，且目標每有1層撕裂，自身對其無視防禦提升[[3.5]]%，行動後對敵方生命百分比最低的單位釋放靈魂收割，造成其最大生命[[12.5]]%的真實傷害(傷害上限為瑪瑟琳攻擊的[[300]]%)"
},
	[74202]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n瑪瑟琳裝備時，每次行動會對敵方全體附加1層撕裂，且目標每有1層撕裂，自身對其無視防禦提升[[3.5]]%，行動後對敵方生命百分比最低的單位釋放靈魂收割，造成其最大生命[[12.5]]%的真實傷害(傷害上限為瑪瑟琳攻擊的[[300]]%)"
},
	[74203]={ target_rule=4, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n瑪瑟琳裝備時，每次行動會對敵方全體附加1層撕裂，且目標每有1層撕裂，自身對其無視防禦提升[[3.5]]%，行動後對敵方生命百分比最低的單位釋放靈魂收割，造成其最大生命[[12.5]]%的真實傷害(傷害上限為瑪瑟琳攻擊的[[300]]%)"
},
	[7421]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n梅鹿特裝備時，自身技能對灼傷下的目標將額外提高[[1]]%*灼傷層數的攻擊，且獲得[[120]]點防禦穿透效果"
},
	[74211]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n梅鹿特裝備時，自身技能對灼傷下的目標將額外提高[[1]]%*灼傷層數的攻擊，且獲得[[120]]點防禦穿透效果"
},
	[7422]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n渡鴉裝備時，自身技能有[[50]]%機率無視目標格擋，且每釋放1次源能爆發，自身技能傷害提升[[5]]%，持續至戰鬥結束，最多疊加3層"
},
	[74221]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n渡鴉裝備時，自身技能有[[50]]%機率無視目標格擋，且每釋放1次源能爆發，自身技能傷害提升[[5]]%，持續至戰鬥結束，最多疊加3層"
},
	[74222]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74221}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n渡鴉裝備時，自身技能有[[50]]%機率無視目標格擋，且每釋放1次源能爆發，自身技能傷害提升[[5]]%，持續至戰鬥結束，最多疊加3層"
},
	[74223]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊機率提升[10]%\n渡鴉裝備時，自身技能有[[50]]%機率無視目標格擋，且每釋放1次源能爆發，自身技能傷害提升[[5]]%，持續至戰鬥結束，最多疊加3層"
},
	[7423]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身無視防禦提升[8]%\n艾莉絲裝備時，每次觸發暴擊將對目標施加致殘效果(目標吸血和回復效果降低[[2]]%），持續1回合，最多疊加10層，且自身攻擊將提升[[1]]%，持續1回合，最多疊加10層"
},
	[74231]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=9, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身無視防禦提升[8]%\n艾莉絲裝備時，每次觸發暴擊將對目標施加致殘效果(目標吸血和回復效果降低[[2]]%），持續1回合，最多疊加10層，且自身攻擊將提升[[1]]%，持續1回合，最多疊加10層"
},
	[74232]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,74231}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身無視防禦提升[8]%\n艾莉絲裝備時，每次觸發暴擊將對目標施加致殘效果(目標吸血和回復效果降低[[2]]%），持續1回合，最多疊加10層，且自身攻擊將提升[[1]]%，持續1回合，最多疊加10層"
},
	[7424]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n危峭裝備時，反擊的次數上限提升至[4]，且每觸發1次反擊，自身技能傷害提升[[4]]%，持續1回合，最多疊加4層；每回合開始時自身可獲得2層念氣"
},
	[74241]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1021042}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n危峭裝備時，反擊的次數上限提升至[4]，且每觸發1次反擊，自身技能傷害提升[[4]]%，持續1回合，最多疊加4層；每回合開始時自身可獲得2層念氣"
},
	[74242]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1021042}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n危峭裝備時，反擊的次數上限提升至[4]，且每觸發1次反擊，自身技能傷害提升[[4]]%，持續1回合，最多疊加4層；每回合開始時自身可獲得2層念氣"
},
	[74243]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={102103}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n危峭裝備時，反擊的次數上限提升至[4]，且每觸發1次反擊，自身技能傷害提升[[4]]%，持續1回合，最多疊加4層；每回合開始時自身可獲得2層念氣"
},
	[74244]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能傷害提升[12]%\n危峭裝備時，反擊的次數上限提升至[4]，且每觸發1次反擊，自身技能傷害提升[[4]]%，持續1回合，最多疊加4層；每回合開始時自身可獲得2層念氣"
},
	[7425]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊幾率提升[10]%\n刺玫裝備時，首回合獲得[5]層{彈藥}補充，且每次退出{火力全開}狀態時，自身立即獲得[5]層{彈藥}補充"
},
	[74251]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊幾率提升[10]%\n刺玫裝備時，首回合獲得[5]層{彈藥}補充，且每次退出{火力全開}狀態時，自身立即獲得[5]層{彈藥}補充"
},
	[74252]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74251}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊幾率提升[10]%\n刺玫裝備時，首回合獲得[5]層{彈藥}補充，且每次退出{火力全開}狀態時，自身立即獲得[5]層{彈藥}補充"
},
	[74253]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1022801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊幾率提升[10]%\n刺玫裝備時，首回合獲得[5]層{彈藥}補充，且每次退出{火力全開}狀態時，自身立即獲得[5]層{彈藥}補充"
},
	[74254]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74253}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊幾率提升[10]%\n刺玫裝備時，首回合獲得[5]層{彈藥}補充，且每次退出{火力全開}狀態時，自身立即獲得[5]層{彈藥}補充"
},
	[7426]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n霆淵艾麗西亞裝備時，戰鬥開始有[[64]]%幾率獲得1層{淵鳴}，且每消耗1層{淵逆}，自身攻擊提高[[1.5]]%，持續至戰鬥結束，最多疊加6層；霆淵之境下，自身源能爆發對護盾目標傷害提升[[12.5]]%"
},
	[74261]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=6400, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n霆淵艾麗西亞裝備時，戰鬥開始有[[64]]%幾率獲得1層{淵鳴}，且每消耗1層{淵逆}，自身攻擊提高[[1.5]]%，持續至戰鬥結束，最多疊加6層；霆淵之境下，自身源能爆發對護盾目標傷害提升[[12.5]]%"
},
	[74262]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74261}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n霆淵艾麗西亞裝備時，戰鬥開始有[[64]]%幾率獲得1層{淵鳴}，且每消耗1層{淵逆}，自身攻擊提高[[1.5]]%，持續至戰鬥結束，最多疊加6層；霆淵之境下，自身源能爆發對護盾目標傷害提升[[12.5]]%"
},
	[74263]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={102305}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n霆淵艾麗西亞裝備時，戰鬥開始有[[64]]%幾率獲得1層{淵鳴}，且每消耗1層{淵逆}，自身攻擊提高[[1.5]]%，持續至戰鬥結束，最多疊加6層；霆淵之境下，自身源能爆發對護盾目標傷害提升[[12.5]]%"
},
	[74264]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=108, trigger_num={1,1023806}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴擊傷害提升[14]%\n霆淵艾麗西亞裝備時，戰鬥開始有[[64]]%幾率獲得1層{淵鳴}，且每消耗1層{淵逆}，自身攻擊提高[[1.5]]%，持續至戰鬥結束，最多疊加6層；霆淵之境下，自身源能爆發對護盾目標傷害提升[[12.5]]%"
},
	[7427]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每行動1次，速度提升[3]%，效果命中提升[[1.5]]%，持續至戰鬥結束，最多疊加4層\n阿爾戈裝備時，首回合有[[70]]%幾率獲得50%源能補充，且源能爆發對非首要目標有[[16]]%幾率附加{纏尾}"
},
	[74271]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="自身每行動1次，速度提升[3]%，效果命中提升[[1.5]]%，持續至戰鬥結束，最多疊加4層\n阿爾戈裝備時，首回合有[[70]]%幾率獲得50%源能補充，且源能爆發對非首要目標有[[16]]%幾率附加{纏尾}"
},
	[74272]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74271}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每行動1次，速度提升[3]%，效果命中提升[[1.5]]%，持續至戰鬥結束，最多疊加4層\n阿爾戈裝備時，首回合有[[70]]%幾率獲得50%源能補充，且源能爆發對非首要目標有[[16]]%幾率附加{纏尾}"
},
	[74273]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=5, trigger_num={102404}, trigger_rate=1600, is_effect_inc=1, damage_source=8, desc="自身每行動1次，速度提升[3]%，效果命中提升[[1.5]]%，持續至戰鬥結束，最多疊加4層\n阿爾戈裝備時，首回合有[[70]]%幾率獲得50%源能補充，且源能爆發對非首要目標有[[16]]%幾率附加{纏尾}"
},
	[74274]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74273}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每行動1次，速度提升[3]%，效果命中提升[[1.5]]%，持續至戰鬥結束，最多疊加4層\n阿爾戈裝備時，首回合有[[70]]%幾率獲得50%源能補充，且源能爆發對非首要目標有[[16]]%幾率附加{纏尾}"
},
	[7428]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身傷害減免提升[7]%\n輝月裝備時，首回合立即獲得[1]枚月刃，且自身釋放源能技和源能爆發時有[[40]]%幾率獲得1枚月刃；輝月身處滿月輝境中時傷害減免額外提升[[4]]%"
},
	[74281]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身傷害減免提升[7]%\n輝月裝備時，首回合立即獲得[1]枚月刃，且自身釋放源能技和源能爆發時有[[40]]%幾率獲得1枚月刃；輝月身處滿月輝境中時傷害減免額外提升[[4]]%"
},
	[74282]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74281}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身傷害減免提升[7]%\n輝月裝備時，首回合立即獲得[1]枚月刃，且自身釋放源能技和源能爆發時有[[40]]%幾率獲得1枚月刃；輝月身處滿月輝境中時傷害減免額外提升[[4]]%"
},
	[74283]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102501,102504}, trigger_rate=4000, is_effect_inc=0, damage_source=8, desc="自身傷害減免提升[7]%\n輝月裝備時，首回合立即獲得[1]枚月刃，且自身釋放源能技和源能爆發時有[[40]]%幾率獲得1枚月刃；輝月身處滿月輝境中時傷害減免額外提升[[4]]%"
},
	[74284]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74283}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身傷害減免提升[7]%\n輝月裝備時，首回合立即獲得[1]枚月刃，且自身釋放源能技和源能爆發時有[[40]]%幾率獲得1枚月刃；輝月身處滿月輝境中時傷害減免額外提升[[4]]%"
},
	[74285]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身傷害減免提升[7]%\n輝月裝備時，首回合立即獲得[1]枚月刃，且自身釋放源能技和源能爆發時有[[40]]%幾率獲得1枚月刃；輝月身處滿月輝境中時傷害減免額外提升[[4]]%"
},
	[7429]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到的暴擊傷害降低[17]%\n克裡安卡裝備時，釋放源能爆發時有[[70]]%幾率為自身、己方生命最低和攻擊最高的友方單位附加{回火}，且回火的反傷次數提升至[[4]]次"
},
	[74291]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=7000, is_effect_inc=0, damage_source=8, desc="自身受到的暴擊傷害降低[17]%\n克裡安卡裝備時，釋放源能爆發時有[[70]]%幾率為自身、己方生命最低和攻擊最高的友方單位附加{回火}，且回火的反傷次數提升至[[4]]次"
},
	[74292]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74291}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身受到的暴擊傷害降低[17]%\n克裡安卡裝備時，釋放源能爆發時有[[70]]%幾率為自身、己方生命最低和攻擊最高的友方單位附加{回火}，且回火的反傷次數提升至[[4]]次"
},
	[7430]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n星钻装备时，源能爆发在击败目标时会对敌方全体附加1层{渐冻效果}，且自身对{冰冻}目标的暴击伤害提升[[30]]%"
},
	[74301]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=8, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n星钻装备时，源能爆发在击败目标时会对敌方全体附加1层{渐冻效果}，且自身对{冰冻}目标的暴击伤害提升[[30]]%"
},
	[74302]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n星钻装备时，源能爆发在击败目标时会对敌方全体附加1层{渐冻效果}，且自身对{冰冻}目标的暴击伤害提升[[30]]%"
},
	[7431]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能伤害提升[12]%\n深海装备时，每次行动将获得1层破冰效果(自身暴击几率提升[[4]]%)，持续至战斗结束，最多叠加5层，且触发{冰蚀}时，自身会额外获得1层破冰效果(每回合最多触发1次)"
},
	[74311]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=17, trigger_num={0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能伤害提升[12]%\n深海装备时，每次行动将获得1层破冰效果(自身暴击几率提升[[4]]%)，持续至战斗结束，最多叠加5层，且触发{冰蚀}时，自身会额外获得1层破冰效果(每回合最多触发1次)"
},
	[74312]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,1109041}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身技能伤害提升[12]%\n深海装备时，每次行动将获得1层破冰效果(自身暴击几率提升[[4]]%)，持续至战斗结束，最多叠加5层，且触发{冰蚀}时，自身会额外获得1层破冰效果(每回合最多触发1次)"
},
	[7432]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="己方场上每存在1名同属性战员，自身攻击提高[2.5]%\n纽卡斯尔装备时，每名同属性战员可为自身提供[[80]]点的防御穿透"
},
	[74321]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="己方场上每存在1名同属性战员，自身攻击提高[2.5]%\n纽卡斯尔装备时，每名同属性战员可为自身提供[[80]]点的防御穿透"
},
	[7433]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[74331]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[74332]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74331}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[74333]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1030801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[74334]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,1030801}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[74335]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74333}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[74336]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=108, trigger_num={1,103080}, trigger_rate=6400, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[74337]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74336}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[74338]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[74339]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击伤害提升[14]%\n红叶装备时，对护盾目标伤害提升[[7.5]]%，且战斗开始时红叶获得[6]层{狐火}；消耗{狐火}时，自身有[[64]]%几率额外获得1层{识破}，且退出妖力状态时红叶会立即获得[2]层{狐火}，此外还会根据场上阵亡单位数量额外获得相同数量的{狐火}层数"
},
	[7434]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n黎寒之骑朝晖装备时，每回合开始自身有[40]%几率获得2层{谴罚}，否则获得1层{谴罚}；每击败1名目标，友方全体攻击将提升[[3]]%，自身效果提升50%，持续至战斗结束，最多叠加4层；谴罚发动的源能爆发有[[35]]%几率直接斩杀生命值低于2000的单位(非伤害结算)"
},
	[74341]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n黎寒之骑朝晖装备时，每回合开始自身有[40]%几率获得2层{谴罚}，否则获得1层{谴罚}；每击败1名目标，友方全体攻击将提升[[3]]%，自身效果提升50%，持续至战斗结束，最多叠加4层；谴罚发动的源能爆发有[[35]]%几率直接斩杀生命值低于2000的单位(非伤害结算)"
},
	[74342]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n黎寒之骑朝晖装备时，每回合开始自身有[40]%几率获得2层{谴罚}，否则获得1层{谴罚}；每击败1名目标，友方全体攻击将提升[[3]]%，自身效果提升50%，持续至战斗结束，最多叠加4层；谴罚发动的源能爆发有[[35]]%几率直接斩杀生命值低于2000的单位(非伤害结算)"
},
	[74343]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={102703}, trigger_rate=3500, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n黎寒之骑朝晖装备时，每回合开始自身有[40]%几率获得2层{谴罚}，否则获得1层{谴罚}；每击败1名目标，友方全体攻击将提升[[3]]%，自身效果提升50%，持续至战斗结束，最多叠加4层；谴罚发动的源能爆发有[[35]]%几率直接斩杀生命值低于2000的单位(非伤害结算)"
},
	[74345]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74343}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n黎寒之骑朝晖装备时，每回合开始自身有[40]%几率获得2层{谴罚}，否则获得1层{谴罚}；每击败1名目标，友方全体攻击将提升[[3]]%，自身效果提升50%，持续至战斗结束，最多叠加4层；谴罚发动的源能爆发有[[35]]%几率直接斩杀生命值低于2000的单位(非伤害结算)"
},
	[74346]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={102703}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n黎寒之骑朝晖装备时，每回合开始自身有[40]%几率获得2层{谴罚}，否则获得1层{谴罚}；每击败1名目标，友方全体攻击将提升[[3]]%，自身效果提升50%，持续至战斗结束，最多叠加4层；谴罚发动的源能爆发有[[35]]%几率直接斩杀生命值低于2000的单位(非伤害结算)"
},
	[74347]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=4000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n黎寒之骑朝晖装备时，每回合开始自身有[40]%几率获得2层{谴罚}，否则获得1层{谴罚}；每击败1名目标，友方全体攻击将提升[[3]]%，自身效果提升50%，持续至战斗结束，最多叠加4层；谴罚发动的源能爆发有[[35]]%几率直接斩杀生命值低于2000的单位(非伤害结算)"
},
	[74348]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74347}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n黎寒之骑朝晖装备时，每回合开始自身有[40]%几率获得2层{谴罚}，否则获得1层{谴罚}；每击败1名目标，友方全体攻击将提升[[3]]%，自身效果提升50%，持续至战斗结束，最多叠加4层；谴罚发动的源能爆发有[[35]]%几率直接斩杀生命值低于2000的单位(非伤害结算)"
},
	[7435]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴伤抗性提升[15]%\n云篆装备时，首回合获得50%源能补充，且释放技能时有[50]%几率获得2层{爻辞}，否则获得1层{爻辞}；每次激活浮图时，自身生命上限提升[[5]]%，持续至战斗结束，最多叠加5层"
},
	[74351]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴伤抗性提升[15]%\n云篆装备时，首回合获得50%源能补充，且释放技能时有[50]%几率获得2层{爻辞}，否则获得1层{爻辞}；每次激活浮图时，自身生命上限提升[[5]]%，持续至战斗结束，最多叠加5层"
},
	[74352]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102801,102804}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴伤抗性提升[15]%\n云篆装备时，首回合获得50%源能补充，且释放技能时有[50]%几率获得2层{爻辞}，否则获得1层{爻辞}；每次激活浮图时，自身生命上限提升[[5]]%，持续至战斗结束，最多叠加5层"
},
	[74353]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=108, trigger_num={1,102880}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴伤抗性提升[15]%\n云篆装备时，首回合获得50%源能补充，且释放技能时有[50]%几率获得2层{爻辞}，否则获得1层{爻辞}；每次激活浮图时，自身生命上限提升[[5]]%，持续至战斗结束，最多叠加5层"
},
	[74354]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74355}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴伤抗性提升[15]%\n云篆装备时，首回合获得50%源能补充，且释放技能时有[50]%几率获得2层{爻辞}，否则获得1层{爻辞}；每次激活浮图时，自身生命上限提升[[5]]%，持续至战斗结束，最多叠加5层"
},
	[74355]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102801,102804}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="自身暴伤抗性提升[15]%\n云篆装备时，首回合获得50%源能补充，且释放技能时有[50]%几率获得2层{爻辞}，否则获得1层{爻辞}；每次激活浮图时，自身生命上限提升[[5]]%，持续至战斗结束，最多叠加5层"
},
	[7436]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n闪蝶装备时，首回合生成的静电球数量+1，且闪蝶释放源能技时有[30]%几率为静电球提供2层{电极}，否则提供1层{电极}；此外，源能爆发释放后有[20]%几率刷新场上静电球的持续回合"
},
	[74361]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n闪蝶装备时，首回合生成的静电球数量+1，且闪蝶释放源能技时有[30]%几率为静电球提供2层{电极}，否则提供1层{电极}；此外，源能爆发释放后有[20]%几率刷新场上静电球的持续回合"
},
	[74362]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102901}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n闪蝶装备时，首回合生成的静电球数量+1，且闪蝶释放源能技时有[30]%几率为静电球提供2层{电极}，否则提供1层{电极}；此外，源能爆发释放后有[20]%几率刷新场上静电球的持续回合"
},
	[74363]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={102904}, trigger_rate=2000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n闪蝶装备时，首回合生成的静电球数量+1，且闪蝶释放源能技时有[30]%几率为静电球提供2层{电极}，否则提供1层{电极}；此外，源能爆发释放后有[20]%几率刷新场上静电球的持续回合"
},
	[74364]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n闪蝶装备时，首回合生成的静电球数量+1，且闪蝶释放源能技时有[30]%几率为静电球提供2层{电极}，否则提供1层{电极}；此外，源能爆发释放后有[20]%几率刷新场上静电球的持续回合"
},
	[74365]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n闪蝶装备时，首回合生成的静电球数量+1，且闪蝶释放源能技时有[30]%几率为静电球提供2层{电极}，否则提供1层{电极}；此外，源能爆发释放后有[20]%几率刷新场上静电球的持续回合"
},
	[74366]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74368}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n闪蝶装备时，首回合生成的静电球数量+1，且闪蝶释放源能技时有[30]%几率为静电球提供2层{电极}，否则提供1层{电极}；此外，源能爆发释放后有[20]%几率刷新场上静电球的持续回合"
},
	[74367]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74363}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n闪蝶装备时，首回合生成的静电球数量+1，且闪蝶释放源能技时有[30]%几率为静电球提供2层{电极}，否则提供1层{电极}；此外，源能爆发释放后有[20]%几率刷新场上静电球的持续回合"
},
	[74368]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={102901}, trigger_rate=3000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提升[10]%\n闪蝶装备时，首回合生成的静电球数量+1，且闪蝶释放源能技时有[30]%几率为静电球提供2层{电极}，否则提供1层{电极}；此外，源能爆发释放后有[20]%几率刷新场上静电球的持续回合"
},
	[7437]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每行动1次，速度提升[3]%，效果命中提升[[1.5]]%，持续至战斗结束，最多叠加4层\n珂芙尼尔装备时，首回合将会获得50%源能补充，并额外获得[1]种晖灵，且源能爆发作用首要目标时额外提升[10]%效果命中；自身释放源能技和源能爆发时有50%几率获得1种随机晖灵"
},
	[74371]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每行动1次，速度提升[3]%，效果命中提升[[1.5]]%，持续至战斗结束，最多叠加4层\n珂芙尼尔装备时，首回合将会获得50%源能补充，并额外获得[1]种晖灵，且源能爆发作用首要目标时额外提升[10]%效果命中；自身释放源能技和源能爆发时有50%几率获得1种随机晖灵"
},
	[74372]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每行动1次，速度提升[3]%，效果命中提升[[1.5]]%，持续至战斗结束，最多叠加4层\n珂芙尼尔装备时，首回合将会获得50%源能补充，并额外获得[1]种晖灵，且源能爆发作用首要目标时额外提升[10]%效果命中；自身释放源能技和源能爆发时有50%几率获得1种随机晖灵"
},
	[74373]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74372}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每行动1次，速度提升[3]%，效果命中提升[[1.5]]%，持续至战斗结束，最多叠加4层\n珂芙尼尔装备时，首回合将会获得50%源能补充，并额外获得[1]种晖灵，且源能爆发作用首要目标时额外提升[10]%效果命中；自身释放源能技和源能爆发时有50%几率获得1种随机晖灵"
},
	[74374]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={1,3}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="自身每行动1次，速度提升[3]%，效果命中提升[[1.5]]%，持续至战斗结束，最多叠加4层\n珂芙尼尔装备时，首回合将会获得50%源能补充，并额外获得[1]种晖灵，且源能爆发作用首要目标时额外提升[10]%效果命中；自身释放源能技和源能爆发时有50%几率获得1种随机晖灵"
},
	[74375]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74374}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每行动1次，速度提升[3]%，效果命中提升[[1.5]]%，持续至战斗结束，最多叠加4层\n珂芙尼尔装备时，首回合将会获得50%源能补充，并额外获得[1]种晖灵，且源能爆发作用首要目标时额外提升[10]%效果命中；自身释放源能技和源能爆发时有50%几率获得1种随机晖灵"
},
	[74376]={ target_rule=38, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103104}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身每行动1次，速度提升[3]%，效果命中提升[[1.5]]%，持续至战斗结束，最多叠加4层\n珂芙尼尔装备时，首回合将会获得50%源能补充，并额外获得[1]种晖灵，且源能爆发作用首要目标时额外提升[10]%效果命中；自身释放源能技和源能爆发时有50%几率获得1种随机晖灵"
},
	[7438]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提[10]%\n聆风装备时，首回合获得50%源能补充，且释放源能技和源能爆发后有[[60]]%几率额外获得1层{气旋}；此外，获得{季风}的单位再次获得季风的所需回合数降低至[[4]]回合"
},
	[74381]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提[10]%\n聆风装备时，首回合获得50%源能补充，且释放源能技和源能爆发后有[[60]]%几率额外获得1层{气旋}；此外，获得{季风}的单位再次获得季风的所需回合数降低至[[4]]回合"
},
	[74382]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={1,3}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提[10]%\n聆风装备时，首回合获得50%源能补充，且释放源能技和源能爆发后有[[60]]%几率额外获得1层{气旋}；此外，获得{季风}的单位再次获得季风的所需回合数降低至[[4]]回合"
},
	[74383]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={1032903}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提[10]%\n聆风装备时，首回合获得50%源能补充，且释放源能技和源能爆发后有[[60]]%几率额外获得1层{气旋}；此外，获得{季风}的单位再次获得季风的所需回合数降低至[[4]]回合"
},
	[74384]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74382}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身暴击几率提[10]%\n聆风装备时，首回合获得50%源能补充，且释放源能技和源能爆发后有[[60]]%几率额外获得1层{气旋}；此外，获得{季风}的单位再次获得季风的所需回合数降低至[[4]]回合"
},
	[7439]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n泽菲琳装备时，自身源能爆发对首要目标伤害额外增加[60]%，且{唤星圣灵}形态下进化后的源能爆发有[30]%几率为非首要目标附加金丝之锁(最多[1]名单位生效)"
},
	[74392]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={103305}, trigger_rate=3000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n泽菲琳装备时，自身源能爆发对首要目标伤害额外增加[60]%，且{唤星圣灵}形态下进化后的源能爆发有[30]%几率为非首要目标附加金丝之锁(最多[1]名单位生效)"
},
	[74393]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={103305}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n泽菲琳装备时，自身源能爆发对首要目标伤害额外增加[60]%，且{唤星圣灵}形态下进化后的源能爆发有[30]%几率为非首要目标附加金丝之锁(最多[1]名单位生效)"
},
	[74395]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74392}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n泽菲琳装备时，自身源能爆发对首要目标伤害额外增加[60]%，且{唤星圣灵}形态下进化后的源能爆发有[30]%几率为非首要目标附加金丝之锁(最多[1]名单位生效)"
},
	[74396]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n泽菲琳装备时，自身源能爆发对首要目标伤害额外增加[60]%，且{唤星圣灵}形态下进化后的源能爆发有[30]%几率为非首要目标附加金丝之锁(最多[1]名单位生效)"
},
	[74397]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74396}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升[8]%\n泽菲琳装备时，自身源能爆发对首要目标伤害额外增加[60]%，且{唤星圣灵}形态下进化后的源能爆发有[30]%几率为非首要目标附加金丝之锁(最多[1]名单位生效)"
},
	[7440]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[74401]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[74402]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[74403]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[74404]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=35, trigger_num={1,1034031}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[74405]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={103404}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[74406]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74401}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[74407]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74402}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[74408]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74405}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[74409]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={74405}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身伤害减免提升<color=#ffb136>7</color>%\n瞳光装备时，首回合获得50%源能补充，且战斗开始时获得<color=#ffb136>2</color>层底片，被镜显的友方战员释放技能时将无法被中断战斗流程，瞳光释放源能爆发后有<color=#ffb136>60</color>%几率立即获得<color=#ffb136>1</color>层底片"
},
	[7441]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升<color=#ffb136>8</color>%\n白蔷薇装备时，首回合获得50%源能补充并立即获得<color=#ffb136>1</color>层蔷薇花瓣，魔弹进化为繁茂之弹的触发几率额外提升<color=#ffb136>10</color>%"
},
	[74411]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升<color=#ffb136>8</color>%\n白蔷薇装备时，首回合获得50%源能补充并立即获得<color=#ffb136>1</color>层蔷薇花瓣，魔弹进化为繁茂之弹的触发几率额外提升<color=#ffb136>10</color>%"
},
	[74412]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=71, trigger_num={1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升<color=#ffb136>8</color>%\n白蔷薇装备时，首回合获得50%源能补充并立即获得<color=#ffb136>1</color>层蔷薇花瓣，魔弹进化为繁茂之弹的触发几率额外提升<color=#ffb136>10</color>%"
},
	[74413]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74412}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升<color=#ffb136>8</color>%\n白蔷薇装备时，首回合获得50%源能补充并立即获得<color=#ffb136>1</color>层蔷薇花瓣，魔弹进化为繁茂之弹的触发几率额外提升<color=#ffb136>10</color>%"
},
	[74414]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={1035823}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="自身无视防御提升<color=#ffb136>8</color>%\n白蔷薇装备时，首回合获得50%源能补充并立即获得<color=#ffb136>1</color>层蔷薇花瓣，魔弹进化为繁茂之弹的触发几率额外提升<color=#ffb136>10</color>%"
},
	[7442]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[74421]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[74422]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[74423]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={103601,103604}, trigger_rate=0, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[74424]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103603}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[74425]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,103603}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[74426]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74421}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[74427]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74422}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[74428]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74423}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[74429]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[744291]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n弦枝装备时，战斗开始将获得<color=#ffb136>2</color>章乐谱，且弦枝释放技能时有<color=#ffb136>64</color>%几率获得1章乐谱；自身每次进入林间奏鸣状态时将立即解除1名友方单位的控制效果(优先强袭、特勤)，否则为速度最快的队友提供2层免疫负面状态(受到负面效果时将驱散)，且自身攻击提升<color=#ffb136>6</color>%，最多叠加4层，持续至战斗结束"
},
	[7443]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n鸣晔装备时，战斗开始将获得<color=#ffb136>5</color>层瑶光，且自身攻击提升<color=#ffb136>8</color>%，天赋复活友方后，使其受到所有类型的伤害降低<color=#ffb136>14</color>%，持续至友方下次行动结束；己方角色每次释放源能技时，鸣晔将有<color=#ffb136>40</color>%几率获得1层瑶光"
},
	[74431]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n鸣晔装备时，战斗开始将获得<color=#ffb136>5</color>层瑶光，且自身攻击提升<color=#ffb136>8</color>%，天赋复活友方后，使其受到所有类型的伤害降低<color=#ffb136>14</color>%，持续至友方下次行动结束；己方角色每次释放源能技时，鸣晔将有<color=#ffb136>40</color>%几率获得1层瑶光"
},
	[74432]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n鸣晔装备时，战斗开始将获得<color=#ffb136>5</color>层瑶光，且自身攻击提升<color=#ffb136>8</color>%，天赋复活友方后，使其受到所有类型的伤害降低<color=#ffb136>14</color>%，持续至友方下次行动结束；己方角色每次释放源能技时，鸣晔将有<color=#ffb136>40</color>%几率获得1层瑶光"
},
	[74433]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74432}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n鸣晔装备时，战斗开始将获得<color=#ffb136>5</color>层瑶光，且自身攻击提升<color=#ffb136>8</color>%，天赋复活友方后，使其受到所有类型的伤害降低<color=#ffb136>14</color>%，持续至友方下次行动结束；己方角色每次释放源能技时，鸣晔将有<color=#ffb136>40</color>%几率获得1层瑶光"
},
	[74434]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=99, trigger_num={1}, trigger_rate=0, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n鸣晔装备时，战斗开始将获得<color=#ffb136>5</color>层瑶光，且自身攻击提升<color=#ffb136>8</color>%，天赋复活友方后，使其受到所有类型的伤害降低<color=#ffb136>14</color>%，持续至友方下次行动结束；己方角色每次释放源能技时，鸣晔将有<color=#ffb136>40</color>%几率获得1层瑶光"
},
	[74435]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={74434}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="治疗加成提升<color=#ffb136>15</color>%\n鸣晔装备时，战斗开始将获得<color=#ffb136>5</color>层瑶光，且自身攻击提升<color=#ffb136>8</color>%，天赋复活友方后，使其受到所有类型的伤害降低<color=#ffb136>14</color>%，持续至友方下次行动结束；己方角色每次释放源能技时，鸣晔将有<color=#ffb136>40</color>%几率获得1层瑶光"
},
	[8001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>首回合獲得50%源能補充"
},
	[8002]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>技能傷害提升25%"
},
	[8003]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，且首回合獲得50%源能補充"
},
	[80031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，且首回合獲得50%源能補充"
},
	[8004]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%"
},
	[8005]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>源能爆發傷害提升40%，防禦提升100點"
},
	[8006]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊抗性提升30%，且首回合獲得50%源能補充"
},
	[80061]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊抗性提升30%，且首回合獲得50%源能補充"
},
	[8007]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，防禦提升300點"
},
	[8008]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>承受傷害降低25%，且韌性擊破效率提高50%"
},
	[8009]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的治療和護盾效果提升30%"
},
	[8010]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>源能爆發傷害提升50%"
},
	[8011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，暴擊抗性提升30%"
},
	[8012]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦提升60%"
},
	[8013]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的治療和護盾效果提升50%"
},
	[8014]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊目標未發生變化時傷害提升20%，最多疊加5層"
},
	[80141]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊目標未發生變化時傷害提升20%，最多疊加5層"
},
	[8015]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，且對護盾目標傷害提升40%"
},
	[80151]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，且對護盾目標傷害提升40%"
},
	[80152]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，且對護盾目標傷害提升40%"
},
	[8016]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>傷害提升20%，且受到的治療效果提升40%"
},
	[8017]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，速度提升20%"
},
	[8018]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命提升40%，且受到的護盾效果提升40%"
},
	[8019]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命提升40%，且每回合開始時獲得50%源能補充"
},
	[80191]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命提升40%，且每回合開始時獲得50%源能補充"
},
	[80192]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命提升40%，且每回合開始時獲得50%源能補充"
},
	[8020]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，且承受傷害降低30%"
},
	[8021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，格擋機率提升40%"
},
	[8022]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，且受到的治療效果提升40%"
},
	[8023]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>戰鬥開始時獲得1層自身最大生命25%的護盾，持續2回合"
},
	[80231]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>戰鬥開始時獲得1層自身最大生命25%的護盾，持續2回合"
},
	[8024]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命提升40%，攻擊提升25%"
},
	[8025]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命提升40%，且承受傷害降低30%"
},
	[8026]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>首回合獲得50%源能補充，且源能爆發傷害提升50%"
},
	[80261]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>首回合獲得50%源能補充，且源能爆發傷害提升50%"
},
	[8027]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦提升300點，且對護盾目標傷害提升40%"
},
	[80271]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦提升300點，且對護盾目標傷害提升40%"
},
	[80272]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦提升300點，且對護盾目標傷害提升40%"
},
	[8028]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，吸血加成提升35%"
},
	[8029]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的護盾效果提升40%"
},
	[8030]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命提升40%，且韌性擊破效率提升50%"
},
	[8031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>格擋機率提升40%，暴擊傷害提升50%"
},
	[8032]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>傷害提升20%，且受到的護盾效果提升40%"
},
	[8033]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，且韌性擊破效率提升50%"
},
	[8034]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊幾率提升30%"
},
	[8035]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的治療效果提升40%"
},
	[8036]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>首回合獲得50%源能補充"
},
	[8037]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限提升40%"
},
	[8038]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊抗性提升30%"
},
	[8039]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限提升40%，防禦提升400點"
},
	[8040]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊提升25%，但防禦降低30%"
},
	[8041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的治療效果降低30%"
},
	[8042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低20%"
},
	[8043]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊傷害降低25%"
},
	[8044]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>格擋幾率降低30%"
},
	[8045]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的護盾效果降低30%"
},
	[8046]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>攻击提升25%，但防御降低40%"
},
	[8047]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>首回合获得50%源能补充，但攻击下降15%"
},
	[80471]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>首回合获得50%源能补充，但攻击下降15%"
},
	[8048]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>攻击提升35%，但生命上限降低20%"
},
	[8049]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>源能爆发伤害提升60%，但受到治疗效果降低50%"
},
	[8050]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>伤害加深15%，但获得的护盾效果降低30%"
},
	[8051]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>暴击几率提升25%，但防御降低40%"
},
	[8052]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>承受伤害降低30%，但生命上限降低20%"
},
	[8053]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>攻击提升25%，但受到的治疗效果降低40%"
},
	[8054]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>源能获取效率提升50%，但承受伤害提升30%"
},
	[8055]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>获得的护盾效果增强100%，但受到的治疗效果降低50%"
},
	[8056]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>速度提升50%，攻击提升25%"
},
	[8057]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升40%，格挡几率提升25%"
},
	[8058]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升25%，暴击几率提升35%"
},
	[8059]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>生命上限提升40%，伤害提升15%"
},
	[8060]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>速度提升50%，暴击几率提升35%"
},
	[8061]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升25%，承受伤害降低15%"
},
	[8062]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升40%，防御穿透提升180点"
},
	[8063]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>生命上限提升20%，格挡几率提升40%"
},
	[8064]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升30%，生命上限提升20%"
},
	[8065]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升30%，速度提升50%"
},
	[8101]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>的韌性上限提升50%，生命、攻擊提升25%"
},
	[81011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>的韌性上限提升50%，生命、攻擊提升25%"
},
	[8102]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%"
},
	[8103]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升500點"
},
	[8104]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升50點"
},
	[8105]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升400點"
},
	[8106]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命提升75%"
},
	[8107]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低500點"
},
	[8108]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊降低500點"
},
	[8109]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升60點"
},
	[8110]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%"
},
	[8112]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升600點"
},
	[8113]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升600點"
},
	[8114]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>治療效果降低40%"
},
	[8115]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>屬性抗性提升30%"
},
	[8116]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每回合開始時獲得1層基於自身攻擊150%的護盾，持續1回合"
},
	[81161]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每回合開始時獲得1層基於自身攻擊150%的護盾，持續1回合"
},
	[8117]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊護盾目標時傷害提升40%"
},
	[81171]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊護盾目標時傷害提升40%"
},
	[8118]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升700點"
},
	[8119]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊機率提升60%"
},
	[8120]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊降低600點"
},
	[8122]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>護盾削弱40%"
},
	[8123]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升50%"
},
	[8124]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升800點"
},
	[8125]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升65點"
},
	[8126]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命降低30%"
},
	[8128]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低600點"
},
	[8129]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升650點"
},
	[8131]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>傷害提升30%"
},
	[8132]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊降低800點"
},
	[8133]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>韌性擊破效率降低40%"
},
	[8134]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低700點"
},
	[8135]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升900點"
},
	[8136]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>的韌性上限提升100%，生命、攻擊提升50%"
},
	[81361]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>的韌性上限提升100%，生命、攻擊提升50%"
},
	[8137]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升800點"
},
	[8138]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100點"
},
	[8139]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>無視防禦提升50%"
},
	[8140]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每回合開始時獲得1層基於自身攻擊180%的護盾，持續1回合"
},
	[81401]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每回合開始時獲得1層基於自身攻擊180%的護盾，持續1回合"
},
	[8141]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升1000點"
},
	[8142]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升120點"
},
	[8143]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低1000點"
},
	[8144]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊降低20%"
},
	[8145]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低1200點"
},
	[8146]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>速度降低40%"
},
	[8147]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊抗性降低50%"
},
	[8148]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的治療與護盾效果降低30%"
},
	[8149]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命、攻擊提升50%"
},
	[8150]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊幾率降低20%"
},
	[8151]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>傷害降低20%"
},
	[8152]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命越低，傷害越高(傷害最多可提升60%)"
},
	[8153]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>每過1回合，攻擊降低8%(最多降低40%)"
},
	[81531]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>每過1回合，攻擊降低8%(最多降低40%)"
},
	[8155]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命提升100%"
},
	[8156]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>韌性擊破效率降低40%"
},
	[8157]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>傷害減免提升25%"
},
	[8161]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升50%，生命、攻擊提升25%"
},
	[8162]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，生命、攻擊提升50%"
},
	[8163]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，生命、攻擊提升75%"
},
	[8164]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低300點"
},
	[8165]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低40%"
},
	[8166]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>傷害降低30%"
},
	[8167]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>承傷加深50%"
},
	[8168]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊傷害降低60%"
},
	[8169]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>獲得的護盾效果降低80%"
},
	[8170]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>受到攻擊傷害時將對攻擊方反彈12%的傷害"
},
	[8171]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>獲得60%吸血加成"
},
	[8201]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%"
},
	[8202]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋幾率提升50%"
},
	[8203]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每回合開始時回復已損失生命20%的生命值"
},
	[82031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每回合開始時回復已損失生命20%的生命值"
},
	[8204]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升75%"
},
	[8205]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升300點"
},
	[8206]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命、攻擊提升50%"
},
	[8207]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>受到治療效果提升40%"
},
	[8208]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升300點"
},
	[8209]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊幾率提升50%"
},
	[8210]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升80%"
},
	[8212]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低25%"
},
	[8213]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到治療效果降低60%"
},
	[8214]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低30%"
},
	[8216]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命上限提升40%"
},
	[8217]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%"
},
	[8218]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每攻擊1次可獲得80點防禦穿透效果，最多可疊加6層，持續至戰鬥結束"
},
	[82181]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每攻擊1次可獲得80點防禦穿透效果，最多可疊加6層，持續至戰鬥結束"
},
	[8219]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且防禦提升240點"
},
	[82191]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且防禦提升240點"
},
	[8220]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命上限提升50%，且生命低於60%時，攻擊將提升25%"
},
	[82201]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命上限提升50%，且生命低於60%時，攻擊將提升25%"
},
	[8221]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>死亡時會削弱攻擊方全體15%的防禦，最多疊加3層，持續2回合"
},
	[82211]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>死亡時會削弱攻擊方全體15%的防禦，最多疊加3層，持續2回合"
},
	[8222]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>死亡時會降低攻擊方40點速度，持續2回合"
},
	[82221]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>死亡時會降低攻擊方40點速度，持續2回合"
},
	[8223]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命上限提升40%，且攻擊提升50%"
},
	[8224]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命上限提升75%，韌性上限提升50%"
},
	[82241]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命上限提升75%，韌性上限提升50%"
},
	[8225]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升50%，攻擊提升40%"
},
	[8226]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升40%，且生命低於60%時，攻擊將額外提升25%"
},
	[8228]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低20%"
},
	[8230]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的護盾效果降低40%"
},
	[8231]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升50%"
},
	[8232]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>生命提升25%，防御提升200点"
},
	[8233]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>受到攻击伤害时会对攻击方造成反击伤害(伤害为自身攻击的80%)"
},
	[82331]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>受到攻击伤害时会对攻击方造成反击伤害(伤害为自身攻击的80%)"
},
	[8234]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>暴击几率提升50%，且防御穿透提升180点"
},
	[8235]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且防御提升240点"
},
	[82351]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且防御提升240点"
},
	[8236]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击相同首要目标时，攻击将逐次提高25%，最多叠加3层"
},
	[82361]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击相同首要目标时，攻击将逐次提高25%，最多叠加3层"
},
	[8237]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>死亡时会为友方全体施加治疗效果(治疗量为自身攻击的180%)"
},
	[82371]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>死亡时会为友方全体施加治疗效果(治疗量为自身攻击的180%)"
},
	[8238]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击提升50%"
},
	[82381]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击提升50%"
},
	[8239]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升75%，且速度提升40%"
},
	[82391]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升75%，且速度提升40%"
},
	[8240]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>生命上限提升100%，攻击提升25%"
},
	[8241]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>生命上限提升50%"
},
	[8242]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击护盾目标时伤害提高35%"
},
	[82421]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击护盾目标时伤害提高35%"
},
	[8243]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>受到的护盾效果降低40%"
},
	[8244]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>防御降低30%"
},
	[8246]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>生命上限降低20%"
},
	[8247]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>生命上限提升40%"
},
	[8248]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>暴击几率提升50%"
},
	[8249]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>每回合结束时恢复自身攻击180%的生命"
},
	[82491]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>每回合结束时恢复自身攻击180%的生命"
},
	[8250]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>防御穿透提升180点"
},
	[8251]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>速度提升40点"
},
	[8252]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，攻击提升25%"
},
	[82521]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，攻击提升25%"
},
	[8253]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>生命上限提升50%，韧性上限提升75%"
},
	[82531]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>生命上限提升50%，韧性上限提升75%"
},
	[8254]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升40%"
},
	[8256]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>防御降低200点"
},
	[8257]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>受到的治疗效果降低40%"
},
	[8258]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>速度降低20%"
},
	[8259]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升50%"
},
	[8260]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>速度提升40点"
},
	[8261]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>死亡时会削弱我方全体战员10%防御，最多叠加4层"
},
	[82611]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>死亡时会削弱我方全体战员10%防御，最多叠加4层"
},
	[8262]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>暴击几率提升50%，生命上限提升40%"
},
	[8263]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>防御穿透提升180点"
},
	[8264]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，生命上限提升40%"
},
	[82641]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，生命上限提升40%"
},
	[8265]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，生命上限提升75%"
},
	[8266]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>暴击几率提升50%"
},
	[8267]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>生命上限降低20%"
},
	[8269]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>受到的护盾效果降低40%"
},
	[8270]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>承伤加深15%"
},
	[8271]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>防御穿透提升180点"
},
	[8272]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，生命上限提升40%"
},
	[82721]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，生命上限提升40%"
},
	[8273]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>暴击几率提升50%，且每次攻击回复自身攻击80%的生命"
},
	[82731]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>暴击几率提升50%，且每次攻击回复自身攻击80%的生命"
},
	[82732]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=32, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>暴击几率提升50%，且每次攻击回复自身攻击80%的生命"
},
	[8274]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>防御提升120点，且每阵亡1名友方，自身防御提升60点"
},
	[82741]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>防御提升120点，且每阵亡1名友方，自身防御提升60点"
},
	[82742]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>防御提升120点，且每阵亡1名友方，自身防御提升60点"
},
	[8275]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击时对目标会附加1层脆弱效果(每层脆弱将降低目标5%的伤害减免)，持续2回合，最多叠加10层"
},
	[82751]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击时对目标会附加1层脆弱效果(每层脆弱将降低目标5%的伤害减免)，持续2回合，最多叠加10层"
},
	[8276]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>受到技能伤害时将反弹承受伤害的12%"
},
	[8277]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且生命上限提升50%"
},
	[82771]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且生命上限提升50%"
},
	[8278]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，生命上限提升75%"
},
	[82781]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，生命上限提升75%"
},
	[8279]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>受到的治疗效果降低40%"
},
	[8280]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>暴击几率降低20%"
},
	[8282]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>防御降低25%"
},
	[8283]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>防御降低300点"
},
	[8284]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>攻击降低15%"
},
	[8285]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>每次行动时将损失20%当前生命"
},
	[8286]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>生命上限降低20%，且暴击伤害降低25%"
},
	[8287]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>伤害减免降低15%，且每回合开始时受到1层冰霜效果(每层冰霜效果降低自身8%速度，满层时额外降低16%速度)，最多叠加3层，持续2回合"
},
	[82871]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>伤害减免降低15%，且每回合开始时受到1层冰霜效果(每层冰霜效果降低自身8%速度，满层时额外降低16%速度)，最多叠加3层，持续2回合"
},
	[82872]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>伤害减免降低15%，且每回合开始时受到1层冰霜效果(每层冰霜效果降低自身8%速度，满层时额外降低16%速度)，最多叠加3层，持续2回合"
},
	[82881]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>伤害减免降低15%，且每回合开始时受到1层冰霜效果(每层冰霜效果降低自身8%速度，满层时额外降低16%速度)，最多叠加3层，持续2回合"
},
	[8288]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且暴击几率提升50%"
},
	[8289]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且生命上限提升50%"
},
	[8290]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击对目标附加虚弱效果(目标受到的治疗效果降低12%)，最多叠加3层，持续2回合"
},
	[82901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击对目标附加虚弱效果(目标受到的治疗效果降低12%)，最多叠加3层，持续2回合"
},
	[8291]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击有20%几率冰冻目标，若目标受到冰霜效果影响，则每层冰霜将提高该效果8%的触发几率"
},
	[82911]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=2000, is_effect_inc=1, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击有20%几率冰冻目标，若目标受到冰霜效果影响，则每层冰霜将提高该效果8%的触发几率"
},
	[82912]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击有20%几率冰冻目标，若目标受到冰霜效果影响，则每层冰霜将提高该效果8%的触发几率"
},
	[8292]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>防御降低25%"
},
	[8293]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>攻击降低15%"
},
	[8295]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>受到的治疗效果降低40%"
},
	[8296]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>生命上限降低20%"
},
	[8297]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>防御降低40%"
},
	[8298]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>受到的治疗效果降低60%"
},
	[8299]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>技能伤害提升50%，但承受伤害提高30%"
},
	[8300]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>每回合开始时损失25%当前生命，但攻击提升25%"
},
	[83001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>每回合开始时损失25%当前生命，但攻击提升25%"
},
	[83002]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>每回合开始时损失25%当前生命，但攻击提升25%"
},
	[8301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且防御穿透提升240点"
},
	[83010]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且防御穿透提升240点"
},
	[8302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且对护盾目标伤害提升30%"
},
	[83021]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且对护盾目标伤害提升30%"
},
	[8303]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击对目标附加重伤效果(目标受到的治疗和护盾效果降低10%)，最多叠加3层，持续2回合"
},
	[83031]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击对目标附加重伤效果(目标受到的治疗和护盾效果降低10%)，最多叠加3层，持续2回合"
},
	[8304]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且吸血加成提高25%"
},
	[8305]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>攻击降低15%"
},
	[8306]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>防御降低25%"
},
	[8308]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>速度降低40%"
},
	[8309]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>生命上限提升40%"
},
	[8310]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>暴伤抗性提升30%"
},
	[8311]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>格挡几率提升50%"
},
	[8312]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>属性抗性提升30%"
},
	[8313]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击提升50%"
},
	[8314]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且防御穿透提升240点"
},
	[83141]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且防御穿透提升240点"
},
	[8315]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>承受伤害加深30%"
},
	[8316]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击提升50%"
},
	[8317]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>生命上限降低20%"
},
	[8318]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且生命上限提升40%，格挡几率提升50%"
},
	[8319]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>攻击降低25%"
},
	[8320]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且暴伤抗性提升30%，属性抗性提升30%"
},
	[8321]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>受到的护盾效果降低60%"
},
	[8322]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>韧性上限提升50%，且攻击提升50%，防御穿透提升240点"
},
	[8323]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>暴击伤害降低30%"
},
	[8324]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>生命上限降低20%"
},
	[8326]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方战员」</color>受到的治疗效果降低25%"
},
	[8501]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命、攻擊提升30%，且防禦提升150點"
},
	[8502]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命、攻擊提升60%，且防禦提升300點"
},
	[8503]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且生命、攻擊提升100%"
},
	[85031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且生命、攻擊提升100%"
},
	[8504]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升75%，且生命、攻擊提升100%"
},
	[85041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升75%，且生命、攻擊提升100%"
},
	[8505]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升100%"
},
	[85051]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升100%"
},
	[8506]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊、防禦提升100%"
},
	[85061]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊、防禦提升100%"
},
	[8507]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊、速度提升100%"
},
	[85071]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊、速度提升100%"
},
	[8508]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升100%，暴擊機率提升60%"
},
	[85081]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升100%，暴擊機率提升60%"
},
	[8509]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升100%，格擋機率提升70%"
},
	[85091]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升100%，格擋機率提升70%"
},
	[8510]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升100%，無視防禦提升50%"
},
	[85101]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升100%，無視防禦提升50%"
},
	[8511]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升200%"
},
	[85111]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升200%"
},
	[8512]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升50點"
},
	[8513]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低50%"
},
	[8514]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升240點"
},
	[8515]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊機率提升50%"
},
	[8516]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低40%"
},
	[8517]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升80點"
},
	[8518]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升50%"
},
	[8519]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>傷害提升30%"
},
	[8520]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升500點"
},
	[8521]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100點"
},
	[8522]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊降低30%"
},
	[8523]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低800點"
},
	[8524]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊機率降低50%"
},
	[8525]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>承傷加深30%"
},
	[8526]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升60%"
},
	[8527]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升800點"
},
	[8528]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>速度降低60%"
},
	[8529]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊傷害降低50%"
},
	[8530]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低25%，攻擊降低25%"
},
	[8531]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的護盾效果降低60%，且技能傷害降低20%"
},
	[8532]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的治療效果降低40%"
},
	[8533]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊降低25%"
},
	[8534]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊抗性降低30%"
},
	[8535]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>傷害降低20%"
},
	[8536]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低30%"
},
	[8537]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低25%"
},
	[8538]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的護盾效果降低40%"
},
	[8539]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>速度降低60%"
},
	[8540]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊傷害降低30%"
},
	[8541]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>格擋機率降低40%"
},
	[8601]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且生命、攻擊提升50%"
},
	[86011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且生命、攻擊提升50%"
},
	[8602]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且生命、攻擊提升75%"
},
	[86021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且生命、攻擊提升75%"
},
	[8603]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且生命、攻擊提升100%"
},
	[86031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升50%，且生命、攻擊提升100%"
},
	[8604]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升75%，且生命、攻擊提升100%"
},
	[86041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升75%，且生命、攻擊提升100%"
},
	[8605]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升75%，且生命、攻擊提升125%"
},
	[86051]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升75%，且生命、攻擊提升125%"
},
	[8606]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升150%"
},
	[86061]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升150%"
},
	[8607]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>直擊抗性降低25%，但其他抗性提升25%"
},
	[8608]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>直擊抗性降低50%，但其他抗性提升50%"
},
	[8609]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>騁電抗性降低25%，但其他抗性提升25%"
},
	[8610]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>騁電抗性降低50%，但其他抗性提升50%"
},
	[8611]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>轟炎抗性降低25%，但其他抗性提升25%"
},
	[8612]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>轟炎抗性降低50%，但其他抗性提升50%"
},
	[8613]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>寒霜抗性降低25%，但其他抗性提升25%"
},
	[8614]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>寒霜抗性降低50%，但其他抗性提升50%"
},
	[8615]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生蘊抗性降低25%，但其他抗性提升25%"
},
	[8616]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生蘊抗性降低50%，但其他抗性提升50%"
},
	[8617]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>量蝕抗性降低25%，但其他抗性提升25%"
},
	[8618]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>量蝕抗性降低50%，但其他抗性提升50%"
},
	[8619]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低500點"
},
	[8620]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低30%"
},
	[8621]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>速度降低80點"
},
	[8622]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>承傷加深25%"
},
	[8623]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊降低25%"
},
	[8624]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>獲得的護盾效果降低60%"
},
	[8625]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升600點"
},
	[8626]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊機率提升60%"
},
	[8627]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊抗性提升50%"
},
	[8628]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升60%"
},
	[8629]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升80%"
},
	[8630]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升120點"
},
	[8631]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>受到攻擊傷害時將對攻擊方反彈12%的傷害"
},
	[8632]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害加深40%"
},
	[86321]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害加深40%"
},
	[8633]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>獲得50%吸血加成"
},
	[8634]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>無視防禦提升50%"
},
	[8635]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>技能傷害提升30%，且每次攻擊有50%機率對目標造成致殘效果(目標獲得的吸血、治療效果降低40%)，持續1回合"
},
	[86351]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>技能傷害提升30%，且每次攻擊有50%機率對目標造成致殘效果(目標獲得的吸血、治療效果降低40%)，持續1回合"
},
	[86352]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=5000, is_effect_inc=1, damage_source=8, desc="<color=#f05009>「敵方」</color>技能傷害提升30%，且每次攻擊有50%機率對目標造成致殘效果(目標獲得的吸血、治療效果降低40%)，持續1回合"
},
	[8636]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升140點，且攻擊有50%機率對目標造成重傷效果(目標獲得的護盾與治療效果降低50%)，持續1回合"
},
	[86361]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升140點，且攻擊有50%機率對目標造成重傷效果(目標獲得的護盾與治療效果降低50%)，持續1回合"
},
	[86362]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=5000, is_effect_inc=1, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升140點，且攻擊有50%機率對目標造成重傷效果(目標獲得的護盾與治療效果降低50%)，持續1回合"
},
	[8637]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升125%"
},
	[86371]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>韌性上限提升100%，且生命、攻擊提升125%"
},
	[8701]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命提升50%"
},
	[8702]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%"
},
	[8703]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命提升75%"
},
	[8704]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%"
},
	[8705]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命、攻擊提升50%"
},
	[8706]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命提升100%"
},
	[8707]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升100%"
},
	[8708]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命、攻擊提升75%"
},
	[8709]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升100%"
},
	[8710]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命、防禦提升75%"
},
	[8711]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升125%"
},
	[8712]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命提升125%"
},
	[8713]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命、攻擊提升100%"
},
	[8714]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升500點"
},
	[8715]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升50%"
},
	[8716]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升80點"
},
	[8717]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每回合開始時獲得自身攻擊180%的護盾，持續1回合"
},
	[87171]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>每回合開始時獲得自身攻擊180%的護盾，持續1回合"
},
	[8718]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊機率提升50%"
},
	[8719]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊抗性提升40%"
},
	[8720]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>傷害減免提升25%"
},
	[8721]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>受到攻擊傷害時將對攻擊方反彈12%的傷害"
},
	[8722]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100點"
},
	[8723]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升600點"
},
	[8724]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>獲得35%吸血加成"
},
	[8725]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升60%"
},
	[8726]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升700點"
},
	[8727]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>獲得40%吸血加成"
},
	[8728]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>生命上限降低30%"
},
	[8729]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊機率降低40%"
},
	[8730]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低600點"
},
	[8731]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>速度降低80點"
},
	[8732]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊降低25%"
},
	[8733]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>受到的治療效果降低50%"
},
	[8734]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>暴擊傷害降低50%"
},
	[8735]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>獲得的護盾效果降低50%"
},
	[8736]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>防禦降低800點"
},
	[8737]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>獲得50%吸血加成"
},
	[8801]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>進入戰場時防禦將降低25%"
},
	[8802]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊時有60%機率傷害降低20%"
},
	[88021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=17, trigger_num={}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>攻擊時有60%機率傷害降低20%"
},
	[8803]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>每回合開始時有30%機率速度降低至1點"
},
	[88031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=3000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>每回合開始時有30%機率速度降低至1點"
},
	[8804]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>每回合結束時將流失18%的最大生命"
},
	[8805]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>進入戰場時攻擊將降低25%，且受到的治療效果降低30%"
},
	[8806]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>進入戰場時防禦降低25%，且受到傷害提高25%"
},
	[8807]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>技能傷害降低20%，且受到的治療和護盾效果降低30%"
},
	[8808]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升50點"
},
	[8809]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升300點"
},
	[8810]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>傷害提升15%"
},
	[8811]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊機率提升35%"
},
	[8812]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害提高25%"
},
	[88121]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害提高25%"
},
	[8813]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升20%"
},
	[8814]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升30%"
},
	[8815]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升60點"
},
	[8816]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>屬性抗性提升15%"
},
	[8817]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升360點"
},
	[8818]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊抗性提升20%"
},
	[8819]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊機率提升40%"
},
	[8820]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升30%"
},
	[8821]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升300點"
},
	[8822]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊機率提升45%"
},
	[8823]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升35%"
},
	[8824]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>屬性抗性提升20%"
},
	[8825]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升420點"
},
	[8826]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊抗性提升25%"
},
	[8827]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升80點"
},
	[8828]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害提高35%"
},
	[88281]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害提高35%"
},
	[8829]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊機率提升50%"
},
	[8830]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升35%"
},
	[8831]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升400點"
},
	[8832]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害提高40%"
},
	[88321]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害提高40%"
},
	[8833]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升480點"
},
	[8834]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>傷害提升30%"
},
	[8835]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升40%"
},
	[8836]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100點"
},
	[8837]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>屬性抗性提升25%"
},
	[8838]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊抗性提升30%"
},
	[8839]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升500點"
},
	[8840]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升550點"
},
	[8841]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升45%"
},
	[8842]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升120點"
},
	[8843]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>屬性抗性提升30%"
},
	[8844]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊抗性提升35%"
},
	[8845]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊機率提升60%"
},
	[8846]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升40%"
},
	[8847]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦提升600點"
},
	[8848]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害提高50%"
},
	[88481]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>對護盾目標傷害提高50%"
},
	[8849]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>防禦穿透提升640點"
},
	[8850]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>傷害提升35%"
},
	[8851]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>格擋機率提升50%"
},
	[8852]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升140點"
},
	[8853]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>屬性抗性提升35%"
},
	[8854]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>暴擊抗性提升40%"
},
	[8900]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=77, trigger_num={3,99}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89002]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8901]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>進入戰場時生命上限降低20%。<color=#f05009>「怪物」</color>基礎攻擊提升25%，韌性上限提升100%，但天賦2效果失效"
},
	[8902]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>在戰鬥開始時將獲得基於自身攻擊800%的護盾，持續2回合。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>在戰鬥開始時將獲得基於自身攻擊800%的護盾，持續2回合。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8903]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊生命高於50%的目標時傷害提升40%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89031]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊生命高於50%的目標時傷害提升40%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8904]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方造成自身攻擊60%的反擊傷害。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89041]={ target_rule=27, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方造成自身攻擊60%的反擊傷害。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8905]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊相同首要目標時，傷害將逐次提高20%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89051]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊相同首要目標時，傷害將逐次提高20%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8906]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方反彈受到傷害的18%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8907]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>格擋機率提升50%，防禦穿透提升600點。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8908]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>在生命低於15%時，攻擊提升100%"
},
	[89081]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="硬直上限提升100%"
},
	[8911]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>在攻擊生命高於50%的目標時暴擊幾率提升60%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89111]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>在攻擊生命高於50%的目標時暴擊幾率提升60%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8921]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每次攻擊會降低目標80點防禦，持續2回合，最多疊加5層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89211]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每次攻擊會降低目標80點防禦，持續2回合，最多疊加5層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8931]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>在攻擊時會將傷害量的35%轉化為自身生命回復。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8941]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>格擋幾率提升50%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8912]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊護盾目標時傷害提升40%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89121]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊護盾目標時傷害提升40%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8922]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每回合開始時獲得1層穿透效果(防禦穿透提升200點)，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89221]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每回合開始時獲得1層穿透效果(防禦穿透提升200點)，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8932]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊生命低於50%的目標時暴擊幾率提升80%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89321]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊生命低於50%的目標時暴擊幾率提升80%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8942]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每次攻擊會對目標附加1層{印記}(自身攻擊滿層印記下的目標，傷害提升100%，效果觸發後印記消失)，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89421]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每次攻擊會對目標附加1層{印記}(自身攻擊滿層印記下的目標，傷害提升100%，效果觸發後印記消失)，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89422]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每次攻擊會對目標附加1層{印記}(自身攻擊滿層印記下的目標，傷害提升100%，效果觸發後印記消失)，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89423]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每次攻擊會對目標附加1層{印記}(自身攻擊滿層印記下的目標，傷害提升100%，效果觸發後印記消失)，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89424]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每次攻擊會對目標附加1層{印記}(自身攻擊滿層印記下的目標，傷害提升100%，效果觸發後印記消失)，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89425]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每次攻擊會對目標附加1層{印記}(自身攻擊滿層印記下的目標，傷害提升100%，效果觸發後印記消失)，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8913]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將降低攻擊方15%防禦，持續1回合，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89131]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將降低攻擊方15%防禦，持續1回合，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8923]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方附加1層{詛咒}效果(回合結束時對目標造成最大生命7.5%的真實傷害)，持續1回合，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89231]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方附加1層{詛咒}效果(回合結束時對目標造成最大生命7.5%的真實傷害)，持續1回合，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8933]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對敵方全體附加1層{毒咒}效果(目標受到的治療效果降低10%)，持續2回合，最多疊加6層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89331]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對敵方全體附加1層{毒咒}效果(目標受到的治療效果降低10%)，持續2回合，最多疊加6層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8943]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方附加1層{霜凍}效果(目標攻擊降低5%，速度降低5%)，持續2回合，最多疊加8層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89431]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方附加1層{霜凍}效果(目標攻擊降低5%，速度降低5%)，持續2回合，最多疊加8層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8914]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊首要目標時會造成濺射效果(首要目標九宮格範圍的單位會受到原傷害60%的真實傷害)。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89141]={ target_rule=38, damage_area=6, damage_num=1, trigger_type=94, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊首要目標時會造成濺射效果(首要目標九宮格範圍的單位會受到原傷害60%的真實傷害)。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8924]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>傷害提升20%，且每降低10%生命，傷害額外提升8%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89241]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>傷害提升20%，且每降低10%生命，傷害額外提升8%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8934]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每行動1次，自身暴擊幾率提升10%，暴擊傷害提升20%，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89341]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>每行動1次，自身暴擊幾率提升10%，暴擊傷害提升20%，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8944]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊相同首要目標時，自身防禦穿透將逐次提高300點(最多提升900點)。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89441]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>攻擊相同首要目標時，自身防禦穿透將逐次提高300點(最多提升900點)。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8915]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時會觸發激怒效果(傷害減免提升7.5%，傷害提升15%)，持續1回合，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89151]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時會觸發激怒效果(傷害減免提升7.5%，傷害提升15%)，持續1回合，最多疊加4層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8925]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方附加1層仇恨印記(友方在攻擊仇恨印記下的目標時，攻擊提升10%*印記層數，暴擊幾率提升10%*印記層數)，持續1回合，最多疊加5層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89251]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方附加1層仇恨印記(友方在攻擊仇恨印記下的目標時，攻擊提升10%*印記層數，暴擊幾率提升10%*印記層數)，持續1回合，最多疊加5層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89252]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方附加1層仇恨印記(友方在攻擊仇恨印記下的目標時，攻擊提升10%*印記層數，暴擊幾率提升10%*印記層數)，持續1回合，最多疊加5層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89253]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對攻擊方附加1層仇恨印記(友方在攻擊仇恨印記下的目標時，攻擊提升10%*印記層數，暴擊幾率提升10%*印記層數)，持續1回合，最多疊加5層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8935]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對敵方全體附加1層{抑制}效果(目標受到的治療和護盾效果降低8%)，持續2回合，最多疊加10層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89351]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時將對敵方全體附加1層{抑制}效果(目標受到的治療和護盾效果降低8%)，持續2回合，最多疊加10層。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8945]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時有50%幾率吸收本次傷害並回復等量生命，每回合最多觸發3次。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[89451]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>受到攻擊時有50%幾率吸收本次傷害並回復等量生命，每回合最多觸發3次。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8916]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>暴擊幾率提升60%，暴傷抗性提升30%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8926]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>無視防禦提升50%，攻擊提升30%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8936]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>傷害減免提升30%，攻擊提升30%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8946]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>傷害提升25%，屬性抗性提升30%。且第3回合開始，<color=#f05009>「怪物」</color>每次行動後將獲得25%的攻擊強化"
},
	[8950]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="硬直上限提升50%"
},
	[8951]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>進入戰場時承傷降低25%，且韌性擊破效率提升40%"
},
	[8952]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>天賦2失效，但其暴擊機率提升50%，韌性上限提升50%"
},
	[8953]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>天賦2失效，但其格擋機率提升50%，韌性上限提升50%"
},
	[8954]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>天賦2失效，但其暴擊抗性提升30%，韌性上限提升50%"
},
	[8955]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>天賦2失效，但其無視防禦提升50%，韌性上限提升50%"
},
	[8956]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>天賦2失效，但其技能傷害提升35%，韌性上限提升50%"
},
	[8957]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「怪物」</color>天賦2失效，但其傷害減免提升20%，韌性上限提升50%"
},
	[8990]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="攻擊附帶致殘效果(目標的吸血效果與回復效果降低40%)，持續2回合"
},
	[89901]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="攻擊附帶致殘效果(目標的吸血效果與回復效果降低40%)，持續2回合"
},
	[8991]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「BOSS」</color>在戰場中暴擊機率提升50%，且攻擊附帶致殘效果(目標的吸血效果與回復效果降低40%)，持續2回合"
},
	[8992]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方戰員」</color>進入戰場時承傷加深25%，但韌性擊破效率提升40%"
},
	[8993]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「BOSS」</color>在戰場中不會死亡，暴擊機率提升50%，且攻擊附帶致殘效果(目標的吸血效果與回復效果降低40%)，持續2回合"
},
	[9300]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性上限提高10000點"
},
	[9301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="韌性上限降低40%"
},
	[9302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="首回合傷害提升100%"
},
	[9401]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方騁電、轟炎型戰員造成傷害提高30%"
},
	[9402]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方轟炎、生蘊型戰員造成傷害提高30%"
},
	[9501]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="無法攻擊"
},
	[950101]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標回復30%最大生命)"
},
	[9501011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標回復30%最大生命)"
},
	[9501012]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=44, trigger_num={1,950101}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標回復30%最大生命)"
},
	[9501013]={ target_rule=34, damage_area=2, damage_num=0, trigger_type=151, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標回復30%最大生命)"
},
	[950102]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標回復30%最大生命)"
},
	[9501021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標回復30%最大生命)"
},
	[9502]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="無法攻擊"
},
	[950201]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標攻擊提升20%)，持續2回合"
},
	[9502011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標攻擊提升20%)，持續2回合"
},
	[9502012]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=44, trigger_num={1,950201}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標攻擊提升20%)，持續2回合"
},
	[9502013]={ target_rule=34, damage_area=2, damage_num=0, trigger_type=151, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標攻擊提升20%)，持續2回合"
},
	[950202]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標攻擊提升20%)，持續2回合"
},
	[9502021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標攻擊提升20%)，持續2回合"
},
	[9503]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="無法攻擊"
},
	[950301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標防禦提升50%)，持續2回合"
},
	[9503011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標防禦提升50%)，持續2回合"
},
	[9503012]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=44, trigger_num={1,950301}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標防禦提升50%)，持續2回合"
},
	[9503013]={ target_rule=34, damage_area=2, damage_num=0, trigger_type=151, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標防禦提升50%)，持續2回合"
},
	[950302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標防禦提升50%)，持續2回合"
},
	[9503021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標防禦提升50%)，持續2回合"
},
	[9504]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="無法攻擊"
},
	[950401]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標韌性擊破效率提升60%)，持續2回合"
},
	[9504011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=2, trigger_num={0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標韌性擊破效率提升60%)，持續2回合"
},
	[9504012]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=44, trigger_num={1,950401}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標韌性擊破效率提升60%)，持續2回合"
},
	[9504013]={ target_rule=34, damage_area=2, damage_num=0, trigger_type=151, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標韌性擊破效率提升60%)，持續2回合"
},
	[950402]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標韌性擊破效率提升60%)，持續2回合"
},
	[9504021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="2回合後撤離戰場，且為友方全體附加{{鼓舞}}(目標韌性擊破效率提升60%)，持續2回合"
},
	[9510]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="#N/A"
},
	[9511]={ target_rule=26, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="龍卷(逆時)"
},
	[95111]={ target_rule=26, damage_area=12, damage_num=1, trigger_type=5, trigger_num={9511}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="龍卷(逆時)"
},
	[9512]={ target_rule=26, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="龍卷(順時)"
},
	[95121]={ target_rule=26, damage_area=12, damage_num=1, trigger_type=5, trigger_num={9512}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="龍卷(順時)"
},
	[9513]={ target_rule=26, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="龍卷(隨機)"
},
	[95131]={ target_rule=26, damage_area=12, damage_num=1, trigger_type=5, trigger_num={9513}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="龍卷(隨機)"
},
	[9514]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="被動效果：開局進入暗形態"
},
	[95141]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=35, trigger_num={1,9514}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="暗形態觸發"
},
	[95142]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=99, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="暗形態補充能量"
},
	[95143]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="永久無法行動"
},
	[95144]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,95142}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="切換為光形態釋放額外技能"
},
	[95145]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="光形態額外技能動作"
},
	[9515]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,95141}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="被動效果：加光形態的時候移除暗形態"
},
	[95151]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="移除暗形態buff"
},
	[95152]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="進入光形態"
},
	[9516]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,95141}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="被動效果：移除光的時候額外釋放技能"
},
	[95161]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="移除能量buff標識"
},
	[95162]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="移除能量buff1"
},
	[95163]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="移除能量buff2"
},
	[95164]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="移除能量buff3"
},
	[95165]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="進入暗形態"
},
	[9517]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="開局加隱匿buff"
},
	[9518]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=200, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="光球在暗形態下時，怪物獲得隱匿效果，無法成為首要目標"
},
	[95181]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=201, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="退出隱匿"
},
	[9519]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=200, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="光球在暗形態下時，怪物獲得免傷效果"
},
	[95191]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=201, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="移除免傷"
},
	[9520]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc=""
},
	[9521]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9522]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9523]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9524]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9525]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9526]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9527]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9528]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9529]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9530]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9531]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9532]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9533]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9534]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9535]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9536]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9537]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9538]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9539]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9540]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9541]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9542]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每回合結束時觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[9543]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="獲得一次隱匿"
},
	[9544]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="獲得一次免傷"
},
	[9700]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="全體戰員傷害提升4%"
},
	[9701]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="全體戰員防禦提升15%"
},
	[9702]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="全體戰員暴擊抗性提升10%"
},
	[9703]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="全體戰員無視防禦提升10%"
},
	[9704]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="全體戰員恢復效果提升12%"
},
	[9705]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="全體戰員攻擊提升6%"
},
	[9706]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="全體戰員速度提升8%"
},
	[9800]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={0,1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="隊列中直擊戰員數量>=2：直擊戰員普攻和源能技會對敵方附加1層<u><color=#ffb136><link=['title':'流血效果', 'des':'120071']>流血效果</link></color></u>，持續2回合，最多疊加8層"
},
	[9810]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={0,1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="隊列中騁電戰員數量>=2：騁電戰員普攻和源能技會對敵方附加1層<u><color=#ffb136><link=['title':'感電效果', 'des':'120007']>感電效果</link></color></u>，持續1回合，最多疊加5層"
},
	[9820]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={0,1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="隊列中轟炎戰員數量>=2：轟炎戰員普攻和源能技會對敵方附加1層<u><color=#ffb136><link=['title':'灼傷效果', 'des':'120013']>灼傷效果</link></color></u>，持續2回合，最多疊加10層"
},
	[9830]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={0,1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="隊列中寒霜戰員數量>=2：寒霜戰員普攻和源能技會對敵方附加1層<u><color=#ffb136><link=['title':'漸凍效果', 'des':'120009']>漸凍效果</link></color></u>，持續2回合，最多疊加6層"
},
	[9840]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={0,1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="隊列中生蘊戰員數量>=2：生蘊戰員普攻和源能技會對敵方附加1層<u><color=#ffb136><link=['title':'蘊蝕效果', 'des':'120034']>蘊蝕效果</link></color></u>，持續2回合，最多疊加5層"
},
	[9850]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={0,1}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="隊列中量蝕戰員數量>=2：量蝕戰員普攻和源能技會對敵方附加1層<u><color=#ffb136><link=['title':'輻射效果', 'des':'120002']>輻射效果</link></color></u>，最多疊加4層"
},
	[9999]={ target_rule=37, damage_area=2, damage_num=0, trigger_type=77, trigger_num={6,0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="6回合開始生效的疲勞buff(承傷加深30%，治療效果降低25%，持續疊加buff)"
},
	[9998]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="血量無法低於1，傷害照常顯示"
},
	[9997]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時血量提升400%，持續2回合"
},
	[9996]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時攻擊提升200%，持續1回合"
},
	[10000]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=0, desc="直擊戰員與騁電戰員獲得強化(生命、攻擊獲得提升，承傷降低)"
},
	[10001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=0, desc="直擊戰員與騁電戰員獲得強化(生命、攻擊獲得提升，承傷降低)"
},
	[10002]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=0, desc="轟炎戰員與量蝕戰員獲得強化(生命、攻擊獲得提升，承傷降低)"
},
	[10005]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=0, desc="轟炎戰員與量蝕戰員獲得強化(生命、攻擊獲得提升，承傷降低)"
},
	[10003]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=0, desc="生蘊戰員與寒霜戰員獲得強化(生命、攻擊獲得提升，承傷降低)"
},
	[10004]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=0, desc="生蘊戰員與寒霜戰員獲得強化(生命、攻擊獲得提升，承傷降低)"
},
	[20000]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員每次行動時恢復10%最大生命"
},
	[20025]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員對首領敵人的傷害+25%"
},
	[20026]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員對首領敵人的傷害+50%"
},
	[20027]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員對精英敵人的傷害+15%"
},
	[20028]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員對精英敵人的傷害+30%"
},
	[20033]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員每回合開始時獲得50%源能補充"
},
	[20034]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員在攻擊受到控制的敵方時傷害提升40%"
},
	[20035]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員在攻擊受到控制的敵方時傷害提升80%"
},
	[20036]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="出戰隊伍中每有1名不同屬性的戰員，所有戰員的攻擊+20%"
},
	[20037]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="出戰隊伍中每存在1名轟炎戰員，則所有轟炎戰員的生命、攻擊+15%"
},
	[20038]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="出戰隊伍中每存在1名騁電戰員，則所有騁電戰員的生命、攻擊+15%"
},
	[20039]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="出戰隊伍中每存在1名寒霜戰員，則所有寒霜戰員的生命、攻擊+15%"
},
	[20040]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="出戰隊伍中每存在1名量蝕戰員，則所有量蝕戰員的生命、攻擊+15%"
},
	[20041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="出戰隊伍中每存在1名生蘊戰員，則所有生蘊戰員的生命、攻擊+15%"
},
	[20042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="出戰隊伍中每存在1名直擊戰員，則所有直擊戰員的生命、攻擊+15%"
},
	[20043]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="出戰戰員每經過1回合，攻擊+15%，防禦+25%，最多疊加4層"
},
	[20044]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次戰鬥會隨機一個出場位置，該位置上的我方單位每回合開始時會恢復10%最大生命"
},
	[20045]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次戰鬥會隨機一個出場位置，該位置上的我方單位攻擊+20%，暴擊機率+25%"
},
	[20046]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="每次戰鬥會隨機一個出場位置，該位置上的我方單位戰鬥開始時獲得一個自身最大生命50%的護盾"
},
	[20047]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員生命值越高攻擊越高，100%生命值時達到最大攻擊提升(75%)"
},
	[20048]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員生命值越低攻擊越高，10%生命值時達到最大攻擊提升(100%)"
},
	[20049]={ target_rule=10, damage_area=2, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方全體戰員戰鬥開始時獲得一個基於自身最大生命20%的護盾"
},
	[20050]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員攻擊+25%，但速度-20%"
},
	[200501]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員攻擊+25%，但速度-20%"
},
	[20051]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員生命+50%，但防禦-40%"
},
	[200511]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員生命+50%，但防禦-40%"
},
	[20052]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="源能技造成的感電層數+1"
},
	[20053]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="源能技造成的灼傷層數+1"
},
	[20054]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="源能技造成的漸凍層數+1"
},
	[20055]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="源能技造成的蘊蝕層數+1"
},
	[20056]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="源能技造成的輻射層數+1"
},
	[20057]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="源能技造成的流血層數+1"
},
	[20058]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員源能爆發傷害提升25%"
},
	[20059]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員源能爆發傷害提升50%"
},
	[20060]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員普攻傷害提升75%"
},
	[20061]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員防禦提升500點"
},
	[20062]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員攻擊提升30%，但生命上限降低-20%"
},
	[200621]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員攻擊提升30%，但生命上限降低-20%"
},
	[20063]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員生命上限提升20%"
},
	[20064]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員生命上限提升40%"
},
	[20065]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員獲得50%吸血加成"
},
	[20066]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員生命上限提升80%"
},
	[20067]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰員受擊時源能轉化效率提升40%"
},
	[20068]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰員首回合獲得50%源能補充"
},
	[20200]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方戰員死亡時會為其他戰員恢復15%的最大生命"
},
	[20208]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="當我方只剩1名戰員時，該戰員的攻擊+80%，速度+50%"
},
	[20209]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方所有戰員攻擊、生命+25%"
},
	[20210]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，使隨機1名戰員在本局內攻擊+60%"
},
	[20211]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="戰鬥開始時，我方隨機1名戰員受到最大生命50%的真實傷害，但攻擊提升50%，持續至戰鬥結束"
},
	[202111]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，我方隨機1名戰員受到最大生命50%的真實傷害，但攻擊提升50%，持續至戰鬥結束"
},
	[20110]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="所有敵方單位騁電、寒霜抗性+40%"
},
	[20111]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="所有敵方單位直擊、量蝕抗性+40%"
},
	[20112]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="所有敵方單位轟炎、生蘊抗性+40%"
},
	[20151]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物防禦提升400點，屬性抗性提升15%"
},
	[20152]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物韌性上限提升75%，暴擊抗性提升30%"
},
	[201521]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物韌性上限提升75%，暴擊抗性提升30%"
},
	[20153]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物生命上限提升100%，暴擊機率提升50%"
},
	[20154]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="所有敵方單位攻擊+25%，且攻擊附帶重傷(目標受到的護盾和治療效果降低25%)，持續1回合"
},
	[201541]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="所有敵方單位攻擊+25%，且攻擊附帶重傷(目標受到的護盾和治療效果降低25%)，持續1回合"
},
	[20155]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="所有敵方單位攻擊+75%，且招募SR及以上的戰員希望消耗+2"
},
	[20156]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="所有敵方單位攻擊+100%，且攻擊無視目標30%防禦"
},
	[20296]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="理智-10，但我方全體戰員攻擊+5%"
},
	[20297]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="理智-10，但我方全體戰員生命+6%"
},
	[20298]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="理智-10，但我方全體戰員防禦+8%"
},
	[20299]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="理智-10，但我方全體戰員速度+4%"
},
	[20300]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="理智-10，且所有敵方單位攻擊提升25%"
},
	[20301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="理智-15，且所有敵方單位速度提升50%"
},
	[20302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="理智-30，且所有敵方單位防禦提升100%"
},
	[20400]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="騁點型戰員造成的感電傷害增加100%"
},
	[20401]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="轟炎型戰員對灼傷下的目標傷害增加8%*灼傷層數"
},
	[204011]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="轟炎型戰員對灼傷下的目標傷害增加8%*灼傷層數"
},
	[20402]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="寒霜型戰員攻擊處於漸凍下的敵人時有15%的機率對其賦予冰凍效果，且每層漸凍額外增加5%的冰凍機率"
},
	[204021]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=1500, is_effect_inc=0, damage_source=8, desc="寒霜型戰員攻擊處於漸凍下的敵人時有15%的機率對其賦予冰凍效果，且每層漸凍額外增加5%的冰凍機率"
},
	[20403]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={9850}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="量蝕型戰員造成的輻射傷害提升100%"
},
	[20404]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="戰鬥開始時，隨機1名戰員將獲得600點防禦穿透，且受到的護盾和治療效果提升50%"
},
	[9001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="冰凍自己"
},
	[90011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="冰凍自己"
},
	[9002]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="損失一定最大生命值上限"
},
	[220000]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="損失一定最大生命值上限"
},
	[19000]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>騁電戰員攻擊提升（40%），速度降低（50%）"
},
	[19001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>戰員攻擊提升(25%)，韌性擊破效率降低(40%)"
},
	[19002]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>生命上限降低(20%)，騁電傷害提高（40%）"
},
	[19003]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>速度降低（40%），生命上限降低（20%）"
},
	[19004]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>防禦降低（40%），治療效果降低（40%）"
},
	[19005]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>速度降低（40%），防禦降低（40%）"
},
	[19006]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>速度降低（40%），受到護盾效果降低（40%）"
},
	[19007]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>受到的治療效果降低（60%），速度降低25%"
},
	[19008]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>受到的治療效果降低（60%），速度降低25%"
},
	[19009]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190091]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190092]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190093]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190094]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190095]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190096]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[19010]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190101]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190102]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190103]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190104]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190105]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[19011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190111]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190112]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190113]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190114]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190115]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190116]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[19012]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190121]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190122]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190123]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190124]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190125]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[19013]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次對相同首要目標攻擊後，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190131]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次對相同首要目標攻擊後，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190132]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次對相同首要目標攻擊後，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190133]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次對相同首要目標攻擊後，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190134]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次對相同首要目標攻擊後，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190135]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，免傷狀態下的「敵方」每次對相同首要目標攻擊後，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[19014]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190141]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190142]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190143]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190144]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190145]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190146]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升50%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[19015]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190151]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190152]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190153]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190154]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190155]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[190156]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次攻擊為目標附加1層印記，印記滿3層後轉化為[憤激]，持續1回合，攻擊帶有[憤激]的目標時傷害加深60%"
},
	[19016]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190161]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190162]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190163]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190164]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[190165]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的敵方攻擊額外提升50%，且攻擊後排角色時，暴擊機率提升60%"
},
	[19017]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次對相同首要目標攻擊時，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190171]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次對相同首要目標攻擊時，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190172]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次對相同首要目標攻擊時，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190173]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次對相同首要目標攻擊時，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190174]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次對相同首要目標攻擊時，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[190175]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，免傷狀態下的「敵方」每次對相同首要目標攻擊時，攻擊將提升[20]%，最多疊加3層,回合結束或切換首要目標後清空專注效果"
},
	[19018]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」每次行動後獲得1層【沸騰】，提升25%暴擊，25%無視防禦，最多疊加3層，隱匿解除時移除【沸騰】"
},
	[190181]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」每次行動後獲得1層【沸騰】，提升25%暴擊，25%無視防禦，最多疊加3層，隱匿解除時移除【沸騰】"
},
	[190182]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」每次行動後獲得1層【沸騰】，提升25%暴擊，25%無視防禦，最多疊加3層，隱匿解除時移除【沸騰】"
},
	[190183]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」每次行動後獲得1層【沸騰】，提升25%暴擊，25%無視防禦，最多疊加3層，隱匿解除時移除【沸騰】"
},
	[190184]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」每次行動後獲得1層【沸騰】，提升25%暴擊，25%無視防禦，最多疊加3層，隱匿解除時移除【沸騰】"
},
	[190185]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」每次行動後獲得1層【沸騰】，提升25%暴擊，25%無視防禦，最多疊加3層，隱匿解除時移除【沸騰】"
},
	[190186]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」每次行動後獲得1層【沸騰】，提升25%暴擊，25%無視防禦，最多疊加3層，隱匿解除時移除【沸騰】"
},
	[190187]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」每次行動後獲得1層【沸騰】，提升25%暴擊，25%無視防禦，最多疊加3層，隱匿解除時移除【沸騰】"
},
	[19019]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，自身死亡時，對場上剩餘全體造成自身攻擊100%的傷害，但同時為全體友方附加【復仇】印記，提升40%攻擊，40%暴擊率，持續1回合"
},
	[190191]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，自身死亡時，對場上剩餘全體造成自身攻擊100%的傷害，但同時為全體友方附加【復仇】印記，提升40%攻擊，40%暴擊率，持續1回合"
},
	[190192]={ target_rule=37, damage_area=2, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=5, desc="<color=#f05009>「敵方」</color>攻擊提升75%，自身死亡時，對場上剩餘全體造成自身攻擊100%的傷害，但同時為全體友方附加【復仇】印記，提升40%攻擊，40%暴擊率，持續1回合"
},
	[190193]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，自身死亡時，對場上剩餘全體造成自身攻擊100%的傷害，但同時為全體友方附加【復仇】印記，提升40%攻擊，40%暴擊率，持續1回合"
},
	[190194]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=1, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，自身死亡時，對場上剩餘全體造成自身攻擊100%的傷害，但同時為全體友方附加【復仇】印記，提升40%攻擊，40%暴擊率，持續1回合"
},
	[19020]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190201]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190202]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190203]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190204]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190205]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[190206]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊提升75%，隱匿狀態下的「敵方」攻擊時，對目標附加1層[因]，持續1回合，攻擊帶有[因]的目標時，獲得50%暴擊機率"
},
	[19021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>免傷狀態下的「敵方」獲得50%的無視防禦"
},
	[190211]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>免傷狀態下的「敵方」獲得50%的無視防禦"
},
	[190212]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>免傷狀態下的「敵方」獲得50%的無視防禦"
},
	[190213]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>免傷狀態下的「敵方」獲得50%的無視防禦"
},
	[19022]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>隱匿狀態下的「敵方」獲得50%的吸血加成"
},
	[190221]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>隱匿狀態下的「敵方」獲得50%的吸血加成"
},
	[190222]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10001, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>隱匿狀態下的「敵方」獲得50%的吸血加成"
},
	[190223]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10002, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>隱匿狀態下的「敵方」獲得50%的吸血加成"
},
	[19023]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化100%，免傷狀態下的「敵方」對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190231]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化100%，免傷狀態下的「敵方」對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190232]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化100%，免傷狀態下的「敵方」對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190233]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={190133}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化100%，免傷狀態下的「敵方」對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[19024]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化100%，隱匿狀態下的「敵方」，額外提升500防禦力"
},
	[190241]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化100%，隱匿狀態下的「敵方」，額外提升500防禦力"
},
	[190242]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化100%，隱匿狀態下的「敵方」，額外提升500防禦力"
},
	[190243]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化100%，隱匿狀態下的「敵方」，額外提升500防禦力"
},
	[190244]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化100%，隱匿狀態下的「敵方」，額外提升500防禦力"
},
	[19025]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%的無視防禦"
},
	[190251]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%的無視防禦"
},
	[190252]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%的無視防禦"
},
	[190253]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%的無視防禦"
},
	[190254]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%的無視防禦"
},
	[19026]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」獲得60%的吸血加成"
},
	[190261]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」獲得60%的吸血加成"
},
	[190262]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」獲得60%的吸血加成"
},
	[190263]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」獲得60%的吸血加成"
},
	[190264]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」獲得60%的吸血加成"
},
	[19027]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%無視防禦,對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190271]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%無視防禦,對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190272]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%無視防禦,對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190273]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%無視防禦,對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190274]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%無視防禦,對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190275]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%無視防禦,對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190276]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%無視防禦,對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[190277]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={190173}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」獲得50%無視防禦,對相同首要目標攻擊時，攻擊提升效果增加至[35]%,回合結束或切換首要目標後清空專注效果"
},
	[19028]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，且隱匿狀態下的「敵方」隱匿解除時只會移除1層【沸騰】"
},
	[190281]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，且隱匿狀態下的「敵方」隱匿解除時只會移除1層【沸騰】"
},
	[190282]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，且隱匿狀態下的「敵方」隱匿解除時只會移除1層【沸騰】"
},
	[190283]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={190187}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，且隱匿狀態下的「敵方」隱匿解除時只會移除1層【沸騰】"
},
	[19029]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」無視防禦提升50%，且【復仇】印記持續時間延長至2回合"
},
	[190291]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」無視防禦提升50%，且【復仇】印記持續時間延長至2回合"
},
	[190292]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」無視防禦提升50%，且【復仇】印記持續時間延長至2回合"
},
	[190293]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」無視防禦提升50%，且【復仇】印記持續時間延長至2回合"
},
	[190294]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9519}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」無視防禦提升50%，且【復仇】印記持續時間延長至2回合"
},
	[190295]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」無視防禦提升50%，且【復仇】印記持續時間延長至2回合"
},
	[190296]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」無視防禦提升50%，且【復仇】印記持續時間延長至2回合"
},
	[190297]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={190191,190192,190193}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，免傷狀態下的「敵方」無視防禦提升50%，且【復仇】印記持續時間延長至2回合"
},
	[19030]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」防禦提升800，攻擊帶有[因]的目標時，額外造成自身攻擊100%的傷害"
},
	[190301]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」防禦提升800，攻擊帶有[因]的目標時，額外造成自身攻擊100%的傷害"
},
	[190302]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」防禦提升800，攻擊帶有[因]的目標時，額外造成自身攻擊100%的傷害"
},
	[190303]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=4, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」防禦提升800，攻擊帶有[因]的目標時，額外造成自身攻擊100%的傷害"
},
	[190304]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」防禦提升800，攻擊帶有[因]的目標時，額外造成自身攻擊100%的傷害"
},
	[190305]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=44, trigger_num={1,9518}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度強化150%，隱匿狀態下的「敵方」防禦提升800，攻擊帶有[因]的目標時，額外造成自身攻擊100%的傷害"
},
	[19031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>精英怪物每回合結束時有概率觸發分裂效果(分裂成兩隻相同的分裂體，生命繼承母體最大生命的50%)，最多觸發2輪"
},
	[19032]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>寒霜戰員攻擊提升（40%），速度降低（50%）"
},
	[190321]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>寒霜戰員攻擊提升（40%），速度降低（50%）"
},
	[19033]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>戰員攻擊提升(25%)，但韌性擊破效率降低(40%)"
},
	[190331]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>戰員攻擊提升(25%)，但韌性擊破效率降低(40%)"
},
	[19034]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>生命上限降低(20%)，但寒霜傷害提高（40%）"
},
	[190341]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>生命上限降低(20%)，但寒霜傷害提高（40%）"
},
	[19035]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>速度降低（50%），生命上限降低（20%）"
},
	[190351]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>速度降低（50%），生命上限降低（20%）"
},
	[19036]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>防禦降低（40%），獲得護盾效果降低（40%）"
},
	[190361]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>防禦降低（40%），獲得護盾效果降低（40%）"
},
	[19037]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>防禦降低（40%），受到的治療效果降低（40%）"
},
	[190371]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>防禦降低（40%），受到的治療效果降低（40%）"
},
	[19038]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>韌性擊破效率降低(60%)，生命上限降低(20%)"
},
	[190381]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>韌性擊破效率降低(60%)，生命上限降低(20%)"
},
	[19039]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>攻擊降低（40%），受到護盾效果降低(40%)"
},
	[190391]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#3575f3>「我方」</color>攻擊降低（40%），受到護盾效果降低(40%)"
},
	[19040]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化50%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[190401]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化50%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[190402]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化50%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[190403]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化50%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[190404]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={1,3}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化50%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[19041]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化50%，每回合結束後，為自身提高15%暴擊機率，10%暴擊傷害，最多4層，持續至戰鬥結束"
},
	[190411]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化50%，每回合結束後，為自身提高15%暴擊機率，10%暴擊傷害，最多4層，持續至戰鬥結束"
},
	[190412]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化50%，每回合結束後，為自身提高15%暴擊機率，10%暴擊傷害，最多4層，持續至戰鬥結束"
},
	[19042]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，對帶有護盾的目標傷害提升100%"
},
	[190421]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，對帶有護盾的目標傷害提升100%"
},
	[190422]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，對帶有護盾的目標傷害提升100%"
},
	[19043]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命強化50%，攻擊強化60%，獲得反傷光環，受到攻擊時對攻擊方反彈15%傷害"
},
	[190431]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命強化50%，攻擊強化60%，獲得反傷光環，受到攻擊時對攻擊方反彈15%傷害"
},
	[19044]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[190441]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[190442]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[190443]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[190444]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={1,3}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值10%的真實傷害"
},
	[19045]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，每回合結束後，為自身提高15%暴擊機率，10%暴擊傷害，最多4層，持續至戰鬥結束"
},
	[190451]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，每回合結束後，為自身提高15%暴擊機率，10%暴擊傷害，最多4層，持續至戰鬥結束"
},
	[190452]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化60%，每回合結束後，為自身提高15%暴擊機率，10%暴擊傷害，最多4層，持續至戰鬥結束"
},
	[19046]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時有15%概率眩暈目標1回合"
},
	[190461]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時有15%概率眩暈目標1回合"
},
	[190462]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=1500, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時有15%概率眩暈目標1回合"
},
	[19047]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，對帶有護盾的目標傷害提升100%"
},
	[190471]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，對帶有護盾的目標傷害提升100%"
},
	[190472]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，對帶有護盾的目標傷害提升100%"
},
	[19048]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，每回合結束後，為自身提高15%暴擊機率，10%暴擊傷害，最多4層，持續至戰鬥結束"
},
	[190481]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，每回合結束後，為自身提高15%暴擊機率，10%暴擊傷害，最多4層，持續至戰鬥結束"
},
	[190482]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，每回合結束後，為自身提高15%暴擊機率，10%暴擊傷害，最多4層，持續至戰鬥結束"
},
	[19049]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命加成75%，攻擊強化60%，獲得反傷光環，受到攻擊時對攻擊方反彈15%傷害"
},
	[190491]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>生命加成75%，攻擊強化60%，獲得反傷光環，受到攻擊時對攻擊方反彈15%傷害"
},
	[19050]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值15%的真實傷害"
},
	[190501]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值15%的真實傷害"
},
	[190502]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值15%的真實傷害"
},
	[190503]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值15%的真實傷害"
},
	[190504]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={1,3}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時為目標附加1層印記，持續1回合，技能攻擊最後一擊命中帶有印記的目標時，有50%的概率造成目標最大生命值15%的真實傷害"
},
	[19051]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時為目標附加1層印記，降低20%速度，行動後損失10%當前生命，持續2回合，最高疊加3層"
},
	[190511]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時為目標附加1層印記，降低20%速度，行動後損失10%當前生命，持續2回合，最高疊加3層"
},
	[190512]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>攻擊強化75%，攻擊時為目標附加1層印記，降低20%速度，行動後損失10%當前生命，持續2回合，最高疊加3層"
},
	[19052]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，每回合開始提高10%暴擊機率，最多5層，持續至戰鬥結束"
},
	[190521]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，每回合開始提高10%暴擊機率，最多5層，持續至戰鬥結束"
},
	[190522]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，每回合開始提高10%暴擊機率，最多5層，持續至戰鬥結束"
},
	[19053]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，受到攻擊後額外提升15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190531]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，受到攻擊後額外提升15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190532]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，受到攻擊後額外提升15%無視防禦，最多5層，持續至戰鬥結束"
},
	[19054]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，技能攻擊帶有印記的目標時，額外獲得50%吸血加成"
},
	[190541]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，技能攻擊帶有印記的目標時，額外獲得50%吸血加成"
},
	[190542]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，技能攻擊帶有印記的目標時，額外獲得50%吸血加成"
},
	[19055]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，每回合結束額外獲得15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190551]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，每回合結束額外獲得15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190552]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升75%，每回合結束額外獲得15%無視防禦，最多5層，持續至戰鬥結束"
},
	[19056]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，攻擊時眩暈目標的概率提升至22.5%"
},
	[190561]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，攻擊時眩暈目標的概率提升至22.5%"
},
	[190562]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，攻擊時眩暈目標的概率提升至22.5%"
},
	[190563]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={190462}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，攻擊時眩暈目標的概率提升至22.5%"
},
	[19057]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，每回合開始提高15%暴擊機率，最多5層，持續至戰鬥結束"
},
	[190571]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，每回合開始提高15%暴擊機率，最多5層，持續至戰鬥結束"
},
	[190572]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，每回合開始提高15%暴擊機率，最多5層，持續至戰鬥結束"
},
	[19058]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，每回合結束額外獲得15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190581]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，每回合結束額外獲得15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190582]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，每回合結束額外獲得15%無視防禦，最多5層，持續至戰鬥結束"
},
	[19059]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，反傷光環效果提升至20%，受到攻擊後額外提升15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190591]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，反傷光環效果提升至20%，受到攻擊後額外提升15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190592]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，反傷光環效果提升至20%，受到攻擊後額外提升15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190593]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，反傷光環效果提升至20%，受到攻擊後額外提升15%無視防禦，最多5層，持續至戰鬥結束"
},
	[190594]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，反傷光環效果提升至20%，受到攻擊後額外提升15%無視防禦，最多5層，持續至戰鬥結束"
},
	[19060]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，技能攻擊帶有印記的目標時，額外獲得50%吸血加成"
},
	[190601]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，技能攻擊帶有印記的目標時，額外獲得50%吸血加成"
},
	[190602]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，技能攻擊帶有印記的目標時，額外獲得50%吸血加成"
},
	[19061]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，回合開始時獲得自身攻擊200%的護盾，持續1回合，護盾存在時，額外提升40%暴擊率"
},
	[190611]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，回合開始時獲得自身攻擊200%的護盾，持續1回合，護盾存在時，額外提升40%暴擊率"
},
	[190612]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，回合開始時獲得自身攻擊200%的護盾，持續1回合，護盾存在時，額外提升40%暴擊率"
},
	[190613]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，回合開始時獲得自身攻擊200%的護盾，持續1回合，護盾存在時，額外提升40%暴擊率"
},
	[190614]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=35, trigger_num={1,190611}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敵方」</color>速度提升100%，回合開始時獲得自身攻擊200%的護盾，持續1回合，護盾存在時，額外提升40%暴擊率"
},
	[22000]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="不死之身，收到傷害不會死亡"
},
	[22001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=77, trigger_num={3,0}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="第三回合开始，怪物每次行动后获得25%攻击强化，且生命低于10%时，攻击额外提升100%"
},
	[220011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=107, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="第三回合开始，怪物每次行动后获得25%攻击强化，且生命低于10%时，攻击额外提升100%"
},
	[220012]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="第三回合开始，怪物每次行动后获得25%攻击强化，且生命低于10%时，攻击额外提升100%"
},
	[23000]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="选择空天工程方向，接受来自极北科学考察队的协助，为你提供科技：人工天气\n[战斗中主动使用：消耗100能量对敌方全体造成20000点真实伤害并移除其当前生命的20%，并有60%几率对敌方附加冰冻效果，持续1回合]"
},
	[230001]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=158, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="选择空天工程方向，接受来自极北科学考察队的协助，为你提供科技：人工天气\n[战斗中主动使用：消耗100能量对敌方全体造成20000点真实伤害并移除其当前生命的20%，并有60%几率对敌方附加冰冻效果，持续1回合]"
},
	[230002]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=158, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="选择空天工程方向，接受来自极北科学考察队的协助，为你提供科技：人工天气\n[战斗中主动使用：消耗100能量对敌方全体造成20000点真实伤害并移除其当前生命的20%，并有60%几率对敌方附加冰冻效果，持续1回合]"
},
	[230003]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="选择空天工程方向，接受来自极北科学考察队的协助，为你提供科技：人工天气\n[战斗中主动使用：消耗100能量对敌方全体造成20000点真实伤害并移除其当前生命的20%，并有60%几率对敌方附加冰冻效果，持续1回合]"
},
	[23001]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="选择仿生生命方向，接受来自莱福尔生命科学研究院的协助，为你提供科技：代谢反应\n[战斗中主动使用：消耗100能量为我方全体回复其最大生命20%的生命值，并使其格挡几率提升25%，持续至战斗结束，最多叠加2层]"
},
	[230011]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=158, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="选择仿生生命方向，接受来自莱福尔生命科学研究院的协助，为你提供科技：代谢反应\n[战斗中主动使用：消耗100能量为我方全体回复其最大生命20%的生命值，并使其格挡几率提升25%，持续至战斗结束，最多叠加2层]"
},
	[23002]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="选择机械科学方向，接受来自劳顿机械仿生研究所的协助，为你提供科技：等量交换\n[战斗中主动使用：消耗100能量对敌方全体造成20000点真实伤害并移除其最大生命的15%，并降低目标15%的属性抗性，持续2回合]"
},
	[230021]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=158, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="选择机械科学方向，接受来自劳顿机械仿生研究所的协助，为你提供科技：等量交换\n[战斗中主动使用：消耗100能量对敌方全体造成20000点真实伤害并移除其最大生命的15%，并降低目标15%的属性抗性，持续2回合]"
},
	[230022]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=158, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="选择机械科学方向，接受来自劳顿机械仿生研究所的协助，为你提供科技：等量交换\n[战斗中主动使用：消耗100能量对敌方全体造成20000点真实伤害并移除其最大生命的15%，并降低目标15%的属性抗性，持续2回合]"
},
	[23003]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=1, desc="选择自然地质方向，接受来自大地之母教派的协助，为你提供科技：营力共振\n[战斗中主动使用：消耗100能量对敌方全体造成等同于我方护盾值25%的真实伤害，并使其防御降低50%，持续2回合]"
},
	[230031]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=158, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="选择自然地质方向，接受来自大地之母教派的协助，为你提供科技：营力共振\n[战斗中主动使用：消耗100能量对敌方全体造成等同于我方护盾值25%的真实伤害，并使其防御降低50%，持续2回合]"
},
	[23010]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=163, trigger_num={23000,1,9904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{人工天气}施加控制成功时，将为友方全体赋予1层增益(伤害提升10%，效果命中提升5%)，最多叠加3层"
},
	[23011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击时，若目标生命低于50%，则效果命中提升4%"
},
	[23012]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击时，若目标生命低于50%，则效果命中提升6%"
},
	[23013]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击时，若目标生命低于50%，则效果命中提升10%"
},
	[23014]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对处于控制下的目标伤害提升10%（可叠加）"
},
	[23015]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对处于控制下的目标伤害提升20%（可叠加）"
},
	[23016]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对处于控制下的目标伤害提升40%（可叠加）"
},
	[23017]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对处于控制下的目标暴击伤害提升15%（可叠加）"
},
	[23018]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对处于控制下的目标暴击伤害提升30%（可叠加）"
},
	[23019]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对处于控制下的目标暴击伤害提升50%（可叠加）"
},
	[23020]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对处于控制下的目标暴击提升8%（可叠加）"
},
	[23021]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对处于控制下的目标暴击提升12%（可叠加）"
},
	[23022]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对处于控制下的目标暴击提升20%（可叠加）"
},
	[23023]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="敌方被控制时，全属性抗性降低15%（可叠加）"
},
	[230231]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,9904,230001}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="敌方被控制时，全属性抗性降低15%（可叠加）"
},
	[23024]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="敌方被控制时，全属性抗性降低18%（可叠加）"
},
	[230241]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,9904,230001}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="敌方被控制时，全属性抗性降低18%（可叠加）"
},
	[23025]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="敌方被控制时，全属性抗性降低25%（可叠加）"
},
	[230251]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=104, trigger_num={1,9904,230001}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="敌方被控制时，全属性抗性降低25%（可叠加）"
},
	[23026]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=158, trigger_num={23000}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="释放{人工天气}后，将为友方全体赋予1层护盾(护盾值为目标最大生命的50%+10000)，持续2回合"
},
	[23027]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员效果命中提升4%（可叠加）"
},
	[23028]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员效果命中提升5%（可叠加）"
},
	[23029]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员效果命中提升6%（可叠加）"
},
	[23030]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=94, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对首要目标造成伤害时，对其他目标造成本次伤害10%的真实伤害（可叠加）"
},
	[23031]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=94, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对首要目标造成伤害时，对其他目标造成本次伤害15%的真实伤害（可叠加）"
},
	[23032]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=94, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员对首要目标造成伤害时，对其他目标造成本次伤害25%的真实伤害（可叠加）"
},
	[23033]={ target_rule=27, damage_area=2, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=8000, is_effect_inc=0, damage_source=8, desc="战斗开始时有80%几率对敌方全体造成冰冻效果，持续1回合"
},
	[23034]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=3000, is_effect_inc=0, damage_source=8, desc="我方战员在释放源能爆发后，有30%几率为友方全体提供1层攻击增益(攻击提升5%)，持续2回合，最多叠加3层（可叠加）"
},
	[23035]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=3000, is_effect_inc=0, damage_source=8, desc="我方战员在释放源能爆发后，有30%几率为友方全体提供1层攻击增益(攻击提升8%)，持续2回合，最多叠加3层（可叠加）"
},
	[23036]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=3000, is_effect_inc=0, damage_source=8, desc="我方战员在释放源能爆发后，有30%几率为友方全体提供1层攻击增益(攻击提升12%)，持续2回合，最多叠加3层（可叠加）"
},
	[23037]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=800, is_effect_inc=0, damage_source=8, desc="我方战员对敌方造成伤害时，有8%几率使目标陷入冰冻状态，持续1回合（无视敌方效果抵抗）"
},
	[23038]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=163, trigger_num={23000,1,9904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{人工天气}施加控制成功时，将为友方全体赋予1层免伤效果(伤害减免提升15%)，最多叠加3层"
},
	[23039]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="敌方每次受到攻击时，效果抵抗降低1%，最多叠加6层，持续2回合（不同等级可叠加）"
},
	[23040]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="敌方每次受到攻击时，效果抵抗降低1.5%，最多叠加6层，持续2回合（不同等级可叠加）"
},
	[23041]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="敌方每次受到攻击时，效果抵抗降低2.5%，最多叠加6层，持续2回合（不同等级可叠加）"
},
	[23042]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{人工天气}恢复75%能量。当{人工天气}施加控制成功时，立即获得25%能量"
},
	[230421]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=163, trigger_num={23000,1,9904}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{人工天气}恢复75%能量。当{人工天气}施加控制成功时，立即获得25%能量"
},
	[23110]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=159, trigger_num={23001}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{代谢反应}释放时，我方全体将获得1层增益(受到治疗效果提升5%，生命上限提升5%)，最多叠加3层"
},
	[23111]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员治疗效果提升10%（可叠加）"
},
	[23112]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员治疗效果提升20%（可叠加）"
},
	[23113]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员治疗效果提升35%（可叠加）"
},
	[23114]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=48, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在受到治疗时会获得等同于治疗量15%的护盾效果（可叠加）"
},
	[23115]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=48, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在受到治疗时会获得等同于治疗量25%的护盾效果（可叠加）"
},
	[23116]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=48, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在受到治疗时会获得等同于治疗量40%的护盾效果（可叠加）"
},
	[23117]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员受到攻击时将降低敌方20点硬直"
},
	[23118]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员受到攻击时将降低敌方30点硬直"
},
	[23119]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员受到攻击时将降低敌方50点硬直"
},
	[23120]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=52, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在治疗友方时，将提高友方全体2%的格挡几率，持续2回合，最多叠加5层（可叠加）"
},
	[23121]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=52, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在治疗友方时，将提高友方全体3%的格挡几率，持续2回合，最多叠加5层（可叠加）"
},
	[23122]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=52, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在治疗友方时，将提高友方全体5%的格挡几率，持续2回合，最多叠加5层（可叠加）"
},
	[23123]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=48, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员受到治疗时，暴伤抗性将提升4%，持续2回合，最多叠加5层（可叠加）"
},
	[23124]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=48, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员受到治疗时，暴伤抗性将提升5%，持续2回合，最多叠加5层（可叠加）"
},
	[23125]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=48, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员受到治疗时，暴伤抗性将提升6%，持续2回合，最多叠加5层（可叠加）"
},
	[23126]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=52, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在治疗友方时，会对敌方附加1层生命损失效果(每层效果可在己方释放技能时触发，使目标损失最大生命2%的血量，损失上限为触发者最大生命的6%)，持续2回合，最多叠加5层"
},
	[231261]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在治疗友方时，会对敌方附加1层生命损失效果(每层效果可在己方释放技能时触发，使目标损失最大生命2%的血量，损失上限为触发者最大生命的6%)，持续2回合，最多叠加5层"
},
	[231262]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在治疗友方时，会对敌方附加1层生命损失效果(每层效果可在己方释放技能时触发，使目标损失最大生命2%的血量，损失上限为触发者最大生命的6%)，持续2回合，最多叠加5层"
},
	[23127]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在释放源能爆发时将会赋予友方全体生命增幅效果(生命上限提升2%)，持续至战斗结束，最多叠加8层（可叠加）"
},
	[23128]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在释放源能爆发时将会赋予友方全体生命增幅效果(生命上限提升3%)，持续至战斗结束，最多叠加8层（可叠加）"
},
	[23129]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=5, trigger_num={3}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在释放源能爆发时将会赋予友方全体生命增幅效果(生命上限提升5%)，持续至战斗结束，最多叠加8层（可叠加）"
},
	[23130]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员生命低于50%时，自身伤害减免将提高5%（可叠加）"
},
	[23131]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员生命低于50%时，自身伤害减免将提高8%（可叠加）"
},
	[23132]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员生命低于50%时，自身伤害减免将提高12%（可叠加）"
},
	[23133]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击敌方时，将会对敌方附加自身当前生命20%的额外伤害"
},
	[23134]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在治疗生命低于50%的战员时，治疗效果将额外提升5%（可叠加）"
},
	[23135]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在治疗生命低于50%的战员时，治疗效果将额外提升10%（可叠加）"
},
	[23136]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在治疗生命低于50%的战员时，治疗效果将额外提升15%（可叠加）"
},
	[23137]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=159, trigger_num={23001}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{代谢反应}释放时，将驱散我方全体的负面效果"
},
	[23138]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{代谢反应}拥有60%能量。当我方战员治疗时，立即获得5%能量"
},
	[231381]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{代谢反应}拥有60%能量。当我方战员治疗时，立即获得5%能量"
},
	[231382]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=161, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{代谢反应}拥有60%能量。当我方战员治疗时，立即获得5%能量"
},
	[23139]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员生命高于50%时，自身技能伤害提升15%（可叠加）"
},
	[23140]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员生命高于50%时，自身技能伤害提升25%（可叠加）"
},
	[23141]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员生命高于50%时，自身技能伤害提升40%（可叠加）"
},
	[23142]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=40, trigger_num={}, trigger_rate=1500, is_effect_inc=0, damage_source=8, desc="我方战员对敌方造成伤害时，有15%几率回复自身10%最大生命"
},
	[23210]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=158, trigger_num={23002}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{等量交换}释放后，我方全体将获得1层增益(暴击伤害提升5%，攻击提升5%)，最多叠加3层"
},
	[23211]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员伤害加深提升5%（可叠加）"
},
	[23212]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员伤害加深提升8%（可叠加）"
},
	[23213]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员伤害加深提升12%（可叠加）"
},
	[23214]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击时会获得10%的吸血加成（可叠加）"
},
	[23215]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击时会获得15%的吸血加成（可叠加）"
},
	[23216]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击时会获得25%的吸血加成（可叠加）"
},
	[23217]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员受到攻击时将获得1层仇恨效果(攻击提升4%，暴击几率提升2%)，持续2回合，最多叠加4层（可叠加）"
},
	[23218]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员受到攻击时将获得1层仇恨效果(攻击提升5%，暴击几率提升3%)，持续2回合，最多叠加4层（可叠加）"
},
	[23219]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员受到攻击时将获得1层仇恨效果(攻击提升6%，暴击几率提升4%)，持续2回合，最多叠加4层（可叠加）"
},
	[23220]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击敌方时会附加1层重伤效果(目标获得的护盾效果降低2%)，持续2回合，最多叠加4层（可叠加）"
},
	[23221]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击敌方时会附加1层重伤效果(目标获得的护盾效果降低3%)，持续2回合，最多叠加4层（可叠加）"
},
	[23222]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击敌方时会附加1层重伤效果(目标获得的护盾效果降低5%)，持续2回合，最多叠加4层（可叠加）"
},
	[23223]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击时，暴击伤害将提升6%（可叠加）"
},
	[23224]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击时，暴击伤害将提升9%（可叠加）"
},
	[23225]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=10, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击时，暴击伤害将提升15%（可叠加）"
},
	[23226]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击时，会对敌方附加1层虚弱效果(每层效果可降低目标10%的暴伤抗性)，持续2回合，最多叠加5层"
},
	[23227]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员每损失10%生命，自身伤害减免提升1.5%，最多叠加5层（可叠加）"
},
	[23228]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员每损失10%生命，自身伤害减免提升2.5%，最多叠加5层（可叠加）"
},
	[23229]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员每损失10%生命，自身伤害减免提升4%，最多叠加5层（可叠加）"
},
	[23230]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员源能爆发伤害提升15%（可叠加）"
},
	[23231]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员源能爆发伤害提升25%（可叠加）"
},
	[23232]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员源能爆发伤害提升40%（可叠加）"
},
	[23233]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员击败敌方时，将立即获得50%源能"
},
	[23234]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击护盾目标时，伤害提升10%（可叠加）"
},
	[23235]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击护盾目标时，伤害提升15%（可叠加）"
},
	[23236]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击护盾目标时，伤害提升25%（可叠加）"
},
	[23237]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=159, trigger_num={23002}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{等量交换}释放时将移除目标50%护盾值，且使其承伤加深8%，持续2回合"
},
	[232371]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=159, trigger_num={23002}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{等量交换}释放时将移除目标50%护盾值，且使其承伤加深8%，持续2回合"
},
	[23238]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{等量交换}拥有50%能量。当我方战员释放源能技和源能爆发时，有80%几率立即获得5%能量"
},
	[232381]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{等量交换}拥有50%能量。当我方战员释放源能技和源能爆发时，有80%几率立即获得5%能量"
},
	[232382]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=5, trigger_num={1,3}, trigger_rate=8000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{等量交换}拥有50%能量。当我方战员释放源能技和源能爆发时，有80%几率立即获得5%能量"
},
	[23239]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员生命高于50%时，自身技能伤害提升15%（可叠加）"
},
	[23240]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员生命高于50%时，自身技能伤害提升25%（可叠加）"
},
	[23241]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员生命高于50%时，自身技能伤害提升40%（可叠加）"
},
	[23242]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=40, trigger_num={}, trigger_rate=1500, is_effect_inc=0, damage_source=8, desc="我方战员对敌方造成伤害时，有15%几率回复自身10%最大生命"
},
	[23310]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=158, trigger_num={23003}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{营力共振}释放后，我方全体将获得1层增益(属性伤害提升5%，无视防御提升5%)，最多叠加3层"
},
	[23311]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员获得的护盾效果提升4%（可叠加）"
},
	[23312]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员获得的护盾效果提升6%（可叠加）"
},
	[23313]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员获得的护盾效果提升10%（可叠加）"
},
	[23314]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在存在护盾时会获得7.5%的格挡几率（可叠加）"
},
	[23315]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在存在护盾时会获得9%的格挡几率（可叠加）"
},
	[23316]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在存在护盾时会获得13.5%的格挡几率（可叠加）"
},
	[23317]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在释放护盾时护盾增强8%（可叠加）"
},
	[23318]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在释放护盾时护盾增强10%（可叠加）"
},
	[23319]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在释放护盾时护盾增强12%（可叠加）"
},
	[23320]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在击败敌方时有50%几率为友方全体附加1层抵挡盾(可抵挡敌方攻击伤害)（不同等级可叠加次数）"
},
	[233201]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="我方战员在击败敌方时有50%几率为友方全体附加1层抵挡盾(可抵挡敌方攻击伤害)（不同等级可叠加次数）"
},
	[23321]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在击败敌方时有50%几率为友方全体附加2层抵挡盾(可抵挡敌方攻击伤害)（不同等级可叠加次数）"
},
	[233211]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="我方战员在击败敌方时有50%几率为友方全体附加2层抵挡盾(可抵挡敌方攻击伤害)（不同等级可叠加次数）"
},
	[23322]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=8, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在击败敌方时有50%几率为友方全体附加3层抵挡盾(可抵挡敌方攻击伤害)（不同等级可叠加次数）"
},
	[233221]={ target_rule=26, damage_area=2, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=5000, is_effect_inc=0, damage_source=8, desc="我方战员在击败敌方时有50%几率为友方全体附加3层抵挡盾(可抵挡敌方攻击伤害)（不同等级可叠加次数）"
},
	[23323]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击时，无视防御将提升4%（可叠加）"
},
	[23324]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击时，无视防御将提升6%（可叠加）"
},
	[23325]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=5, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击时，无视防御将提升10%（可叠加）"
},
	[23326]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在攻击时附带额外伤害效果(消耗自身20%护盾值转化为附加伤害）"
},
	[23327]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员每次护盾消失时，自身属性伤害将提升2.5%，持续2回合，最多叠加3层（可叠加）"
},
	[23328]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员每次护盾消失时，自身属性伤害将提升5%，持续2回合，最多叠加3层（可叠加）"
},
	[23329]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员每次护盾消失时，自身属性伤害将提升7.5%，持续2回合，最多叠加3层（可叠加）"
},
	[23330]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员普攻伤害提升10%（可叠加）"
},
	[23331]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员普攻伤害提升15%（可叠加）"
},
	[23332]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员普攻伤害提升25%（可叠加）"
},
	[23333]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=159, trigger_num={23003}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{营力共振}释放时，我方全体将获得基于自身最大生命50%的护盾，持续2回合"
},
	[23334]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员存在护盾时，自身攻击将提升4%（可叠加）"
},
	[23335]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员存在护盾时，自身攻击将提升6%（可叠加）"
},
	[23336]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员存在护盾时，自身攻击将提升10%（可叠加）"
},
	[23337]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{营力共振}对敌方造成伤害时附加虚弱效果(攻击降低25%，回复效果降低40%)，持续2回合"
},
	[233371]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=74, trigger_num={23003}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{营力共振}对敌方造成伤害时附加虚弱效果(攻击降低25%，回复效果降低40%)，持续2回合"
},
	[23338]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{营力共振}拥有25%能量。当我方战员施加护盾时，立即获得10%能量"
},
	[233381]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{营力共振}拥有25%能量。当我方战员施加护盾时，立即获得10%能量"
},
	[233382]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=160, trigger_num={5}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="战斗开始时，{营力共振}拥有25%能量。当我方战员施加护盾时，立即获得10%能量"
},
	[23339]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员存在护盾时，自身伤害减免提升5%（可叠加）"
},
	[23340]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员存在护盾时，自身伤害减免提升8%（可叠加）"
},
	[23341]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员存在护盾时，自身伤害减免提升12%（可叠加）"
},
	[23342]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="{营力共振}释放时，我方每有1名战员存在护盾，{营力共振}伤害提升20%"
},
	[23500]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="进入战斗时，使链尉官技能的能量恢复至上限"
},
	[23503]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="进入战斗时，敌方全体受到等同于各自生命上限15%的真实伤害"
},
	[23505]={ target_rule=26, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="进入战斗后，角色失去所有电量"
},
	[23600]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员攻击的最后一击将附加目标最大生命4%的额外伤害"
},
	[23601]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在受到攻击伤害时，会获得一层反击增幅效果（每层增幅可使自身下次行动时攻击提升8%，防御穿透提升120点，最多叠加3层）"
},
	[236011]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=13, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在受到攻击伤害时，会获得一层反击增幅效果（每层增幅可使自身下次行动时攻击提升8%，防御穿透提升120点，最多叠加3层）"
},
	[23602]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=11, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在受到速度高于自身的敌人攻击时，格挡几率提升25%，且每回合结束时自身速度提高10点，持续至战斗结束"
},
	[236021]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=6, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员在受到速度高于自身的敌人攻击时，格挡几率提升25%，且每回合结束时自身速度提高10点，持续至战斗结束"
},
	[23603]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员初始生命提升25%，且生命首次低于60%时，激活1次净化（驱散自身所有负面效果），每场战斗仅触发一次"
},
	[236031]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员初始生命提升25%，且生命首次低于60%时，激活1次净化（驱散自身所有负面效果），每场战斗仅触发一次"
},
	[236032]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=0, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="我方战员初始生命提升25%，且生命首次低于60%时，激活1次净化（驱散自身所有负面效果），每场战斗仅触发一次"
},
	[23700]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物基础速度+50,硬直上限提升50%,怪物基础生命+50%,怪物基础攻击+50%,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[237001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物基础速度+50,硬直上限提升50%,怪物基础生命+50%,怪物基础攻击+50%,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[23701]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物基础速度+100,硬直上限提升75%,怪物基础生命+75%,怪物基础攻击+75%,怪物格挡几率+50%;怪物攻击时有25%几率对目标附加噩梦效果(攻击降低15%,且承伤加深10%),持续1回合，最多叠加2层,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[237011]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=2500, is_effect_inc=1, damage_source=8, desc="怪物基础速度+100,硬直上限提升75%,怪物基础生命+75%,怪物基础攻击+75%,怪物格挡几率+50%;怪物攻击时有25%几率对目标附加噩梦效果(攻击降低15%,且承伤加深10%),持续1回合，最多叠加2层,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[237012]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物基础速度+100,硬直上限提升75%,怪物基础生命+75%,怪物基础攻击+75%,怪物格挡几率+50%;怪物攻击时有25%几率对目标附加噩梦效果(攻击降低15%,且承伤加深10%),持续1回合，最多叠加2层,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[23702]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物基础速度+150,硬直上限提升100%,怪物基础生命+100%,怪物基础攻击+100%,怪物格挡几率+50%,怪物无视防御+50%;怪物攻击时有40%几率对目标附加噩梦效果(攻击降低15%，且承伤加深10%),持续1回合,最多叠加2层;怪物攻击时有25%几率对目标附加束缚效果(无法释放源能爆发,且受到治疗和护盾效果降低40%),持续1回合,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[237021]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=4000, is_effect_inc=1, damage_source=8, desc="怪物基础速度+150,硬直上限提升100%,怪物基础生命+100%,怪物基础攻击+100%,怪物格挡几率+50%,怪物无视防御+50%;怪物攻击时有40%几率对目标附加噩梦效果(攻击降低15%，且承伤加深10%),持续1回合,最多叠加2层;怪物攻击时有25%几率对目标附加束缚效果(无法释放源能爆发,且受到治疗和护盾效果降低40%),持续1回合,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[237022]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=2500, is_effect_inc=1, damage_source=8, desc="怪物基础速度+150,硬直上限提升100%,怪物基础生命+100%,怪物基础攻击+100%,怪物格挡几率+50%,怪物无视防御+50%;怪物攻击时有40%几率对目标附加噩梦效果(攻击降低15%，且承伤加深10%),持续1回合,最多叠加2层;怪物攻击时有25%几率对目标附加束缚效果(无法释放源能爆发,且受到治疗和护盾效果降低40%),持续1回合,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[237023]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物基础速度+150,硬直上限提升100%,怪物基础生命+100%,怪物基础攻击+100%,怪物格挡几率+50%,怪物无视防御+50%;怪物攻击时有40%几率对目标附加噩梦效果(攻击降低15%，且承伤加深10%),持续1回合,最多叠加2层;怪物攻击时有25%几率对目标附加束缚效果(无法释放源能爆发,且受到治疗和护盾效果降低40%),持续1回合,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[23703]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物基础速度+200,硬直上限提升150%,怪物基础生命+200%,怪物基础攻击+150%,怪物格挡几率+50%,怪物无视防御+50%，无视防御抵抗+50%;怪物攻击时有50%几率对目标附加噩梦效果(攻击降低15%,防御降低20%,且承伤加深10%),持续1回合,最多叠加2层;怪物攻击时有35%几率对目标附加束缚效果(无法释放源能爆发,且受到治疗和护盾效果降低40%),持续1回合,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[237031]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=5000, is_effect_inc=1, damage_source=8, desc="怪物基础速度+200,硬直上限提升150%,怪物基础生命+200%,怪物基础攻击+150%,怪物格挡几率+50%,怪物无视防御+50%，无视防御抵抗+50%;怪物攻击时有50%几率对目标附加噩梦效果(攻击降低15%,防御降低20%,且承伤加深10%),持续1回合,最多叠加2层;怪物攻击时有35%几率对目标附加束缚效果(无法释放源能爆发,且受到治疗和护盾效果降低40%),持续1回合,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[237032]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=3500, is_effect_inc=1, damage_source=8, desc="怪物基础速度+200,硬直上限提升150%,怪物基础生命+200%,怪物基础攻击+150%,怪物格挡几率+50%,怪物无视防御+50%，无视防御抵抗+50%;怪物攻击时有50%几率对目标附加噩梦效果(攻击降低15%,防御降低20%,且承伤加深10%),持续1回合,最多叠加2层;怪物攻击时有35%几率对目标附加束缚效果(无法释放源能爆发,且受到治疗和护盾效果降低40%),持续1回合,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[237033]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="怪物基础速度+200,硬直上限提升150%,怪物基础生命+200%,怪物基础攻击+150%,怪物格挡几率+50%,怪物无视防御+50%，无视防御抵抗+50%;怪物攻击时有50%几率对目标附加噩梦效果(攻击降低15%,防御降低20%,且承伤加深10%),持续1回合,最多叠加2层;怪物攻击时有35%几率对目标附加束缚效果(无法释放源能爆发,且受到治疗和护盾效果降低40%),持续1回合,该环境下,施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[23710]={ target_rule=27, damage_area=2, damage_num=0, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="该环境下，施法者提供的攻击力加成上限为自身基础攻击的100%"
},
	[23800]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="精英与首领韧性提升100%"
},
	[24001]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="该遗迹中的怪物获得16%效果抵抗和12%伤害减免提升"
},
	[24002]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="该遗迹中的怪物获得35%暴击几率和50%暴击伤害提升"
},
	[24003]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="该遗迹中的怪物获得30%暴伤抗性和15%暴击抵抗提升"
},
	[24004]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="该遗迹中的怪物获得15%属性抗性和25%无视防御抵抗"
},
	[24005]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击有35%几率对目标附加1层水压效果(速度降低40点)，持续1回合，最多叠加3层"
},
	[240051]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=3500, is_effect_inc=1, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击有35%几率对目标附加1层水压效果(速度降低40点)，持续1回合，最多叠加3层"
},
	[24006]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击对目标附加1层冲击效果(处于冲击下的目标受到攻击时，有20%几率转化为眩晕效果，每层冲击提高5%的转化几率)，持续1回合，最多叠加2层"
},
	[240061]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=17, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击对目标附加1层冲击效果(处于冲击下的目标受到攻击时，有20%几率转化为眩晕效果，每层冲击提高5%的转化几率)，持续1回合，最多叠加2层"
},
	[240062]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击对目标附加1层冲击效果(处于冲击下的目标受到攻击时，有20%几率转化为眩晕效果，每层冲击提高5%的转化几率)，持续1回合，最多叠加2层"
},
	[240063]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=40, trigger_num={}, trigger_rate=1500, is_effect_inc=1, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击对目标附加1层冲击效果(处于冲击下的目标受到攻击时，有20%几率转化为眩晕效果，每层冲击提高5%的转化几率)，持续1回合，最多叠加2层"
},
	[240064]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击对目标附加1层冲击效果(处于冲击下的目标受到攻击时，有20%几率转化为眩晕效果，每层冲击提高5%的转化几率)，持续1回合，最多叠加2层"
},
	[240065]={ target_rule=0, damage_area=0, damage_num=0, trigger_type=32, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>攻击对目标附加1层冲击效果(处于冲击下的目标受到攻击时，有20%几率转化为眩晕效果，每层冲击提高5%的转化几率)，持续1回合，最多叠加2层"
},
	[24007]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>战斗开始时获得自身最大生命15%的护盾，持续2回合；且每回合开始时有60%几率获得影遁效果(速度提升40%)，持续1回合"
},
	[240071]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>战斗开始时获得自身最大生命15%的护盾，持续2回合；且每回合开始时有60%几率获得影遁效果(速度提升40%)，持续1回合"
},
	[240072]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>战斗开始时获得自身最大生命15%的护盾，持续2回合；且每回合开始时有60%几率获得影遁效果(速度提升40%)，持续1回合"
},
	[240073]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=3, trigger_num={}, trigger_rate=6000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>战斗开始时获得自身最大生命15%的护盾，持续2回合；且每回合开始时有60%几率获得影遁效果(速度提升40%)，持续1回合"
},
	[24008]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>受到攻击伤害时将会对攻击方反弹17%的伤害，且生命每降低20%，自身获得10%的吸血加成"
},
	[240081]={ target_rule=10, damage_area=1, damage_num=1, trigger_type=7, trigger_num={}, trigger_rate=10000, is_effect_inc=0, damage_source=8, desc="<color=#f05009>「敌方」</color>受到攻击伤害时将会对攻击方反弹17%的伤害，且生命每降低20%，自身获得10%的吸血加成"
}
}

return effect_data