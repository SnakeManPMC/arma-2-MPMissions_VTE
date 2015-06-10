/*

	Recycle groups by deleting empty one.

Syntax:
[group] execVM "PMC\PMC_groupRecycle.sqf";

*/

private
[
	"_grp"
];

_grp = _this select 0;

PMC_grpNum = PMC_grpNum + 1;
publicVariable "PMC_grpNum";

waitUntil
{
	// give a good delay as this definitely is not time essential check
	sleep 60;
	(count units _grp == 0);
};

deleteGroup _grp;
PMC_grpNum = PMC_grpNum - 1;
publicVariable "PMC_grpNum";
