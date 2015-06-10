
private ["_marker","_reinf","_pos","_hq","_RanP","_grp","_pln","_pos1","_pos2"];
_marker = _this select 0;
_reinf = _this select 1;
_pos = getmarkerpos _marker;
_hq = getPosASL base_rock;
//random patrol radius
_RanP = 250;

_grp = grpnull;

"vte_acpilot" createunit [_hq, transp1, "che1 = this", 1, "SERGEANT"];
[che1] join grpnull;
_grp = group che1;

"vte_acpilot" createunit [_hq, _grp, "che2 = this", 1, "CORPORAL"];

_pln = "VTE_uh1" createvehicle _hq;

che1 moveindriver _pln;
che2 moveingunner _pln;

_grp setbehaviour "aware";
_grp setcombatmode "yellow";
_grp setspeedmode "full";

"VTE_acofficer" createunit [_hq, _reinf, "", 0.7, "SERGEANT"];
"VTE_acsoldier" createunit [_hq, _reinf, "", 0.5, "SERGEANT"];
"VTE_acsoldierrto" createunit [_hq, _reinf, "", 0.4, "corporal"];
"VTE_acsoldiermg" createunit [_hq, _reinf, "", 1, "corporal"];
"VTE_acsoldierlaw" createunit [_hq, _reinf, "", 0.4, "corporal"];
"VTE_acsoldierm79" createunit [_hq, _reinf, "", 0.4, "corporal"];
"VTE_acsoldiermedic" createunit [_hq, _reinf, "", 0.3, "private"];
"VTE_acsoldier" createunit [_hq, _reinf, "", 0.3, "private"];
"VTE_acsoldier" createunit [_hq, _reinf, "", 0.3, "private"];
"VTE_acsoldier" createunit [_hq, _reinf, "", 0.3, "private"];
"VTE_acsoldier" createunit [_hq, _reinf, "", 0.3, "private"];
"VTE_acsoldier" createunit [_hq, _reinf, "", 0.3, "private"];

{
	_x moveincargo _pln;
} foreach units _reinf;

_pos1 = getmarkerpos _marker select 0;
_pos2 = getmarkerpos _marker select 1;

[_reinf, 0] setwppos _pos;
[_reinf, 1] setwppos [_pos1 - _RanP + (random _RanP) * 2,_pos2 - _RanP + (random _RanP) * 2];
[_reinf, 2] setwppos [_pos1 - _RanP + (random _RanP) * 2,_pos2 - _RanP + (random _RanP) * 2];
[_reinf, 3] setwppos [_pos1 - _RanP + (random _RanP) * 2,_pos2 - _RanP + (random _RanP) * 2];
[_reinf, 4] setwppos [_pos1 - _RanP + (random _RanP) * 2,_pos2 - _RanP + (random _RanP) * 2];
[_reinf, 5] setwppos _pos;

leader _grp move _pos;
sleep 5;

waitUntil
{
	(!alive _pln || unitready leader _grp);
};

_pln land "land";

waitUntil
{
	(!alive _pln || getPosASL _pln select 2 < 2);
};

_pln flyinheight 0;

{
	unassignvehicle _x;
        [_x] orderGetIn false;
} foreach units _reinf;
sleep 15;

// here was a wait loop which had broken code... but we dont need any.

_pln flyinheight 70;
leader _grp move _hq;

waitUntil
{
	(!alive _pln || unitready leader _grp);
};

deletevehicle _pln;
{
	deleteVehicle _x;
} foreach units _grp;
