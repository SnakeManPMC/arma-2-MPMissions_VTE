private
[
	"_tmp"
];
// debug on
PMC_debug = true;

PMC_corpses = [];
[75] execVM "PMC\PMC_corpses.sqf";

PMC_cu = 0;
publicVariable "PMC_cu";
PMC_helo_cv = 0;
publicVariable "PMC_helo_cv";

_tmp = [] execVM "PMC\PMC_targets.sqf";
waitUntil
{
	scriptDone _tmp;
};
[] execVM "PMC\PMC_war.sqf";
[] execVM "PMC\PMC_HeloBLUFOR.sqf";
