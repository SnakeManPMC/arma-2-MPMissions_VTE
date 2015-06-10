waitUntil {!(isNull player)};
waitUntil {player == player};

switch (side player) do
{
	case WEST:
	{
// 6
		player createDiaryRecord
		[
			"Diary",
			[
  				"DIARY",
  				"Vietnam: The Experience"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"SUPPORT",
				"n/a"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"ORDERS",
				"US <marker name='start'>start</marker> in US HQ. NVA/VC <marker name='target1'>attacks</marker> the base and you must defend it. After you're done, proceed to capture <marker name='target2'>hilltop</marker>, <marker name='target3'>bridge</marker>, <marker name='target4'>village</marker>, <marker name='target5'>village 2</marker>, <marker name='target6'>village 3</marker>, <marker name='target7'>ruins</marker>, <marker name='target8'>town</marker> objectives."
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"TACTICAL",
				"n/a"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"INTEL",
				"The objective areas are defended with NVA/VC forces, only light infantry, no vehicles."
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"GEN SITREP",
				"n/a"
			]
		];

/*
		pmc_briefing_text = format["Reach %1 KIA's", PMC_VictoryCondition];
		PMC_objective1 = player createSimpleTask [ pmc_briefing_text ];
		PMC_objective1 setSimpleTaskDescription [ pmc_briefing_text, pmc_briefing_text, pmc_briefing_text ];
		player setCurrentTask PMC_objective1;
*/
	};

	case EAST:
	{
	};

	case RESISTANCE:
	{
	};

	case CIVILIAN:
	{
	};
};
