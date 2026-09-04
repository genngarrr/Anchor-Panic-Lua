-- from 159 联合扫荡配置表.xlsx

local sweep_dup_data=

{
	[101]={ area_id=1, difficulty=1, stage_name=42001, dup_guard={43001,43002,43003,43004,43005}, boss_id=43002, formation_id=506, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,60}, suggest_ele={0,3}, pos_effect_id={3451,3452}
},
	[102]={ area_id=1, difficulty=2, stage_name=42001, dup_guard={43006,43007,43008,43009,43010}, boss_id=43010, formation_id=506, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,65}, suggest_ele={0,3}, pos_effect_id={3451,3452}
},
	[103]={ area_id=1, difficulty=3, stage_name=42001, dup_guard={43011,43012,43013,43014,43015}, boss_id=43012, formation_id=502, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,70}, suggest_ele={0,3}, pos_effect_id={3451,3452}
},
	[104]={ area_id=1, difficulty=4, stage_name=42001, dup_guard={43016,43017,43018,43019,43020}, boss_id=43018, formation_id=501, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,80}, suggest_ele={2,5}, pos_effect_id={3451,3452}
},
	[105]={ area_id=1, difficulty=5, stage_name=42001, dup_guard={43021,43022,43023,43024,43025}, boss_id=43024, formation_id=501, music_id=0, scene_id=605, recommend_force=5160, suggest_level={0,80}, suggest_ele={0,3}, pos_effect_id={3451,3452}
},
	[106]={ area_id=1, difficulty=6, stage_name=42001, dup_guard={43026,43027,43028,43029,43030}, boss_id=43030, formation_id=504, music_id=0, scene_id=605, recommend_force=6240, suggest_level={0,80}, suggest_ele={2,5}, pos_effect_id={3451,3452}
},
	[201]={ area_id=2, difficulty=1, stage_name=42002, dup_guard={43031,43032,43033,43034,43035}, boss_id=43032, formation_id=503, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,60}, suggest_ele={2,3}, pos_effect_id={3451,3453}
},
	[202]={ area_id=2, difficulty=2, stage_name=42002, dup_guard={43036,43037,43038,43039,43040}, boss_id=43037, formation_id=505, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,65}, suggest_ele={0,1}, pos_effect_id={3451,3453}
},
	[203]={ area_id=2, difficulty=3, stage_name=42002, dup_guard={43041,43042,43043,43044,43045}, boss_id=43042, formation_id=504, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,70}, suggest_ele={2,3}, pos_effect_id={3451,3453}
},
	[204]={ area_id=2, difficulty=4, stage_name=42002, dup_guard={43046,43047,43048,43049,43050}, boss_id=43049, formation_id=501, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,80}, suggest_ele={0,1}, pos_effect_id={3451,3453}
},
	[205]={ area_id=2, difficulty=5, stage_name=42002, dup_guard={43051,43052,43053,43054,43055}, boss_id=43055, formation_id=505, music_id=0, scene_id=605, recommend_force=5160, suggest_level={0,80}, suggest_ele={4,5}, pos_effect_id={3451,3453}
},
	[206]={ area_id=2, difficulty=6, stage_name=42002, dup_guard={43056,43057,43058,43059,43060}, boss_id=43057, formation_id=506, music_id=0, scene_id=605, recommend_force=6240, suggest_level={0,80}, suggest_ele={0,1}, pos_effect_id={3451,3453}
},
	[301]={ area_id=3, difficulty=1, stage_name=42003, dup_guard={43061,43062,43063,43064,43065}, boss_id=43065, formation_id=507, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,60}, suggest_ele={4,5}, pos_effect_id={3451,3454}
},
	[302]={ area_id=3, difficulty=2, stage_name=42003, dup_guard={43066,43067,43068,43069,43070}, boss_id=43068, formation_id=503, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,65}, suggest_ele={2,3}, pos_effect_id={3451,3454}
},
	[303]={ area_id=3, difficulty=3, stage_name=42003, dup_guard={43071,43072,43073,43074,43075}, boss_id=43075, formation_id=501, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,70}, suggest_ele={2,3}, pos_effect_id={3451,3454}
},
	[304]={ area_id=3, difficulty=4, stage_name=42003, dup_guard={43076,43077,43078,43079,43080}, boss_id=43076, formation_id=502, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,80}, suggest_ele={0,1}, pos_effect_id={3451,3454}
},
	[305]={ area_id=3, difficulty=5, stage_name=42003, dup_guard={43081,43082,43083,43084,43085}, boss_id=43083, formation_id=506, music_id=0, scene_id=605, recommend_force=5160, suggest_level={0,80}, suggest_ele={4,5}, pos_effect_id={3451,3454}
},
	[306]={ area_id=3, difficulty=6, stage_name=42003, dup_guard={43086,43087,43088,43089,43090}, boss_id=43090, formation_id=502, music_id=0, scene_id=605, recommend_force=6240, suggest_level={0,80}, suggest_ele={0,1}, pos_effect_id={3451,3454}
},
	[401]={ area_id=4, difficulty=1, stage_name=42004, dup_guard={43091,43092,43093,43094,43095}, boss_id=43094, formation_id=507, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,60}, suggest_ele={3,4}, pos_effect_id={3451,3455}
},
	[402]={ area_id=4, difficulty=2, stage_name=42004, dup_guard={43096,43097,43098,43099,43100}, boss_id=43100, formation_id=507, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,65}, suggest_ele={1,2}, pos_effect_id={3451,3455}
},
	[403]={ area_id=4, difficulty=3, stage_name=42004, dup_guard={43101,43102,43103,43104,43105}, boss_id=43103, formation_id=503, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,70}, suggest_ele={3,4}, pos_effect_id={3451,3455}
},
	[404]={ area_id=4, difficulty=4, stage_name=42004, dup_guard={43106,43107,43108,43109,43110}, boss_id=43107, formation_id=507, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,80}, suggest_ele={1,2}, pos_effect_id={3451,3455}
},
	[405]={ area_id=4, difficulty=5, stage_name=42004, dup_guard={43111,43112,43113,43114,43115}, boss_id=43113, formation_id=501, music_id=0, scene_id=605, recommend_force=5160, suggest_level={0,80}, suggest_ele={0,5}, pos_effect_id={3451,3455}
},
	[406]={ area_id=4, difficulty=6, stage_name=42004, dup_guard={43116,43117,43118,43119,43120}, boss_id=43120, formation_id=506, music_id=0, scene_id=605, recommend_force=6240, suggest_level={0,80}, suggest_ele={3,4}, pos_effect_id={3451,3455}
},
	[501]={ area_id=5, difficulty=1, stage_name=42005, dup_guard={43121,43122,43123,43124,43125}, boss_id=43124, formation_id=502, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,60}, suggest_ele={2,5}, pos_effect_id={3451,3456}
},
	[502]={ area_id=5, difficulty=2, stage_name=42005, dup_guard={43126,43127,43128,43129,43130}, boss_id=43128, formation_id=501, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,65}, suggest_ele={2,5}, pos_effect_id={3451,3456}
},
	[503]={ area_id=5, difficulty=3, stage_name=42005, dup_guard={43131,43132,43133,43134,43135}, boss_id=43132, formation_id=506, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,70}, suggest_ele={2,5}, pos_effect_id={3451,3456}
},
	[504]={ area_id=5, difficulty=4, stage_name=42005, dup_guard={43136,43137,43138,43139,43140}, boss_id=43140, formation_id=502, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,80}, suggest_ele={2,5}, pos_effect_id={3451,3456}
},
	[505]={ area_id=5, difficulty=5, stage_name=42005, dup_guard={43141,43142,43143,43144,43145}, boss_id=43143, formation_id=503, music_id=0, scene_id=605, recommend_force=5160, suggest_level={0,80}, suggest_ele={0,3}, pos_effect_id={3451,3456}
},
	[506]={ area_id=5, difficulty=6, stage_name=42005, dup_guard={43146,43147,43148,43149,43150}, boss_id=43148, formation_id=506, music_id=0, scene_id=605, recommend_force=6240, suggest_level={0,80}, suggest_ele={2,5}, pos_effect_id={3451,3456}
},
	[601]={ area_id=6, difficulty=1, stage_name=42006, dup_guard={43151,43152,43153,43154,43155}, boss_id=43154, formation_id=506, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,60}, suggest_ele={3,4}, pos_effect_id={3451,3457}
},
	[602]={ area_id=6, difficulty=2, stage_name=42006, dup_guard={43156,43157,43158,43159,43160}, boss_id=43158, formation_id=507, music_id=0, scene_id=605, recommend_force=3840, suggest_level={0,65}, suggest_ele={1,2}, pos_effect_id={3451,3457}
},
	[603]={ area_id=6, difficulty=3, stage_name=42006, dup_guard={43161,43162,43163,43164,43165}, boss_id=43162, formation_id=505, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,70}, suggest_ele={0,5}, pos_effect_id={3451,3457}
},
	[604]={ area_id=6, difficulty=4, stage_name=42006, dup_guard={43166,43167,43168,43169,43170}, boss_id=43166, formation_id=501, music_id=0, scene_id=605, recommend_force=4320, suggest_level={0,80}, suggest_ele={0,5}, pos_effect_id={3451,3457}
},
	[605]={ area_id=6, difficulty=5, stage_name=42006, dup_guard={43171,43172,43173,43174,43175}, boss_id=43175, formation_id=503, music_id=0, scene_id=605, recommend_force=5160, suggest_level={0,80}, suggest_ele={1,2}, pos_effect_id={3451,3457}
},
	[606]={ area_id=6, difficulty=6, stage_name=42006, dup_guard={43176,43177,43178,43179,43180}, boss_id=43179, formation_id=506, music_id=0, scene_id=605, recommend_force=6240, suggest_level={0,80}, suggest_ele={0,5}, pos_effect_id={3451,3457}
}
}

return sweep_dup_data