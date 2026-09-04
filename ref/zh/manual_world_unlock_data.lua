-- from 107 图鉴配置表.xlsx

local manual_world_unlock_data=

{
	[1]={ titled="Leistance", script="An international campaign agency established by Star Council, responsible for handling Shogger and various events triggered by Shogger.", unlock_stage=1001, tag=2
},
	[2]={ titled="Joshburg", script="A young nation that rose after the Shogger Invasion War, less than 200 years old, strongly encourages innovation and development, promoting all measures beneficial to economic and technological progress.", unlock_stage=1002, tag=2
},
	[3]={ titled="ULFT", script="Its full name is [United Liberation Front of Taino], an organization united by a common belief—to destroy the Skyborne Barriers and regain normal life—viewed as an illegal organization by most mainstream factions.", unlock_stage=1003, tag=2
},
	[4]={ titled="Lissugen", script="An overseas enclave developed by Joshburg after the Shogger Invasion War, this coastal city attracts people from various nations with its open tariffs and excellent logistics, becoming the regional commercial and trade hub.", unlock_stage=1004, tag=2
},
	[5]={ titled="Neoscope Inc", script="A mega-corporation based in Joshburg's overseas enclave Lissugen, controlling over 80% of the city's economy through its logistics, retail, education, entertainment, and communication industries.", unlock_stage=1005, tag=2
},
	[6]={ titled="Dreams Consult", script="Located in Lissugen, it's said that you can get any information you want from this legendary intelligence merchant by paying the right price—big like a country's new policy direction, or small like a neighbor's divorce.", unlock_stage=1006, tag=2
},
	[7]={ titled="Lissugen Dungeons", script="The massive underground space beneath Lissugen, originally designed as civilian shelters during disasters or potential Shogger invasions, has evolved into a self-governing underworld over time.", unlock_stage=1007, tag=2
},
	[8]={ titled="ANTs", script="Gray forces entrenched in Lesugen's dungeon, led by the [Ant King,] who is the actual ruler of the current dungeon.", unlock_stage=1008, tag=2
},
	[9]={ titled="Burn Bear", script="Its full name is [Burn Bear Security Company], a slightly famous mercenary organization active in Lissugen, currently employed by Neoscope Inc.", unlock_stage=1009, tag=2
},
	[10]={ titled="Stellar Crystal", script="Mystical energy crystal named Stellar Crystal due to its starlike color, usually exists in mineral form and has self-proliferating traits. Initially circulated among the wealthy as rare collectibles, humanity later discovered its vast energy potential, triggering in-depth research and use in technology development. Despite significant utility, limited discovered mining hinders Stellar Crystal extraction under government control.", unlock_stage=1010, tag=3
},
	[11]={ titled="Void Particles", script="A unique particle capable of transforming organisms it contacts into [Mutant], with conversion rate dependent on the concentration of Void Particles. Life forms on Taino have coexisted with Void Particles for thousands of years, developing natural resistance, and won't transform under normal conditions.", unlock_stage=1101, tag=3
},
	[12]={ titled="Shogger", script="Alien beings from a higher universe yet to be fully understood by Taino people.\nThey possess various biological forms, share consciousness and spirit via a catalyst named Shogger network, organized like ant society.\nTheir bodies consist mostly of crystals, show tendencies to approach and ingest Stellar Crystals, and decompose upon death.", unlock_stage=1102, tag=3
},
	[13]={ titled="Anchor Space", script="A subspace created by Shogger when descended upon Taino Star, serving as a dimensional pathway between two universes for information conversion.\nSpatial concepts in Anchor Space are chaotic, often differing from reality, closer to conceptual, filled with Void Particles, only powers related to Stellar Crystal can effectively interfere with targets within the Anchor Panic Space.", unlock_stage=1103, tag=3
},
	[14]={ titled="Skyborne Barriers", script="Manufactured and launched during human warfare against Shogger, comprises an array barrier of 7,200 satellites in Taino Star's synchronous orbit, controlled by 18 ground bases and 72 affiliated bases, dynamically blurring Taino Star's cosmic coordinates within dimensional concepts, preventing accurate spatial invasion by Shogger.", unlock_stage=1104, tag=3
},
	[15]={ titled="Mutant", script="Collective term for life forms affected and transformed by Void Particless, often refers to human pollutants, for animal infection, some regions usedemon beasts.\nMutants usually lack intelligence, are aggressive, attracted to sound and light, seem to have an evolution system, and higher mutants may have special abilities.\nUpon death, mutants turn to dust, their nature akin to Stellar Crystal. Dust formed from mutant death is difficult to use directly, must await absorption by Stellar Crystal veins for conversion, and this process takes centuries.", unlock_stage=1105, tag=3
},
	[16]={ titled="AIMBS Operator", script="One of the products of the D-Blood Project, possessing a superpower named [Stellaron Resonance,] Feature additional resistance to Void Particless, super warriors capable of surviving in Anchor Space.", unlock_stage=1106, tag=3
},
	[17]={ titled="Kyuren", script="Neoscope Inc's president Jools's secretary, always wears a harmless smile, actually an Executive of the Coordinator Sect with the code name [Hundred Faces.]", unlock_stage=1107, tag=4
},
	[18]={ titled="Julia", script="Linker of Lissugen Branch of Leistance, beneath a cheerful appearance lies meticulous and pragmatic nature, an extreme activist.", unlock_stage=1108, tag=4
},
	[19]={ titled="Rubis", script="An AIMBS Operator paired with Julia for years, cold personality, resolutely follows Julia's orders—accompanied by sarcastic comments.", unlock_stage=1109, tag=4
},
	[20]={ titled="Isis", script="Director of the Lissugen Branch of Leistance, competent, assertive, efficiency-first, yet unexpectedly humane in some areas.", unlock_stage=1110, tag=4
},
	[21]={ titled="Jools", script="President of giant financial group Neoscope Inc in Lissugen, commands the livelihood of tens of thousands in Initiation Group, considered second to none, lord over thousands.", unlock_stage=1201, tag=4
},
	[22]={ titled="Ming", script="Head of Anti-Skyborne Barriers organization [ULFT] in Lissugen, fiery personality, distinct red hair, young yet called [Big Sis] by followers.", unlock_stage=1202, tag=4
},
	[23]={ titled="Maritimus", script="Real name Geer, third-generation leader of Burn Bear Security Company (also known as Burn Bear Mercenary Corps), inherited the name [Maritimus] from former leaders, tall stature, has an estranged wife and sick child.", unlock_stage=1203, tag=4
},
	[24]={ titled="Reina", script="Former biology professor at Lissugen University, joined Neoscope Inc for her son Nick, primarily researching biological Void Particles adaptability.", unlock_stage=1204, tag=4
},
	[25]={ titled="Nick", script="Reina's son, rare worldwide, affected by Void Particles pollution but not transformed into a mutant, undergoing treatment at Lesugen Initiation Group's hospital.", unlock_stage=1205, tag=4
},
	[26]={ titled="Marianne", script="Lissugen University student, current president of Lissugen University Historical Research Society.", unlock_stage=1206, tag=4
},
	[27]={ titled="Yanni", script="Lissugen University student, former president, current secretary of Lissugen University Historical Research Society.", unlock_stage=1207, tag=4
},
	[28]={ titled="Murphy", script="Mid-level member of Neoscope Inc, has long coveted higher positions, decided to initiate administrative rebellion under suspension from ULFT and strange individuals.", unlock_stage=1208, tag=4
},
	[29]={ titled="Andrea", script="Code named [Doctor], formerly managed medical work at Neoscope Inc mines, left after Void Particles infection, now works for the Coordinator Sect. Marian's brother.", unlock_stage=1209, tag=4
},
	[30]={ titled="Ant King", script="Leader of Lissugen dungeon gray forces [ANTs,] established a collaboration with the Coordinator Sect.", unlock_stage=1210, tag=4
},
	[31]={ titled="Flandre", script="A cadre of the mysterious organization [Coordinator Sect,] codenamed [Smoldering Wings,] has orchestrated numerous malicious incidents behind the scenes in Lissugen. Don't be fooled by her sweet and charming appearance.", unlock_stage=1301, tag=4
},
	[32]={ titled="Dean", script="A cadre of the mysterious organization [Coordinator Sect,]codenamed [Iron Knight,] often acts alone in Lissugen events, sibling relationship with AIMBS soldier Karanissa.", unlock_stage=1302, tag=4
},
	[33]={ titled="Lunin", script="Member of Joshburg Central Council, holds considerable prestige, but seems to conceal some sort of secret...", unlock_stage=1303, tag=4
}
}

return manual_world_unlock_data