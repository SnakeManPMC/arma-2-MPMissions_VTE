
// just a test...
waitUntil { !isnil "bis_fnc_init" };

diag_log "At Triggers_For_Sides.sqf !";

private
[
	"_targetpoint",
	"_triggerArea"
];

// center of the map
_targetpoint = [6400, 6400, 0];
_triggerArea = 12800;

diag_log format["_targetpoint: %1, _triggerArea: %2", _targetpoint, _triggerArea];

// BLUFOR
pmc_blufor_list = createTrigger ["EmptyDetector", _targetpoint];
pmc_blufor_list setTriggerActivation ["WEST", "PRESENT", true];
pmc_blufor_list setTriggerArea [_triggerArea, _triggerArea, 0, true];
pmc_blufor_list setTriggerTimeout [0, 0, 0, false];
pmc_blufor_list setTriggerStatements ["this", "", ""];

diag_log format["Created pmc_blufor_list, which is: %1", pmc_blufor_list];

// OPFOR
pmc_opfor_list = createTrigger ["EmptyDetector", _targetpoint];
pmc_opfor_list setTriggerActivation ["EAST", "PRESENT", true];
pmc_opfor_list setTriggerArea [_triggerArea, _triggerArea, 0, true];
pmc_opfor_list setTriggerTimeout [0, 0, 0, false];
pmc_opfor_list setTriggerStatements ["this", "", ""];

diag_log format["Created pmc_opfor_list, which is: %1", pmc_opfor_list];

// IND / Guer / Resistance
pmc_ind_list = createTrigger ["EmptyDetector", _targetpoint];
pmc_ind_list setTriggerActivation ["Guer", "PRESENT", true]; // resistance didn't work??
pmc_ind_list setTriggerArea [_triggerArea, _triggerArea, 0, true];
pmc_ind_list setTriggerTimeout [0, 0, 0, false];
pmc_ind_list setTriggerStatements ["this", "", ""];

diag_log format["Created pmc_ind_list, which is: %1", pmc_ind_list];

// Anybody, DEBUG!
pmc_list = createTrigger ["EmptyDetector", _targetpoint];
pmc_list setTriggerActivation ["ANY", "PRESENT", true];
pmc_list setTriggerArea [_triggerArea, _triggerArea, 0, true];
pmc_list setTriggerTimeout [0, 0, 0, false];
pmc_list setTriggerStatements ["this", "", ""];

diag_log format["Created pmc_list, which is: %1", pmc_list];
