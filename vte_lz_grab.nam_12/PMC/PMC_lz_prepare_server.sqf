
private ["_grp","_hq","_pos","_vcl","_WaitTime","_tmp"];

_pos = _this select 0;
//_hq = getPosASL _this select 1;
// fuck this shit :)
_hq = getPosASL usaflag;
_WaitTime = 5;

// create new group for this helo
_grp = objNull;
_grp = createGroup west;
waitUntil {!(isNull _grp)};

"VTE_acpilot" createUnit [_hq, _grp, "", (random 1), "LIEUTENANT"];
"VTE_acpilot" createUnit [_hq, _grp, "", (random 1), "SERGEANT"];
"VTE_acpilot" createUnit [_hq, _grp, "", (random 1), "SERGEANT"];

_vcl = "VTE_ch47ca" createVehicle _hq;
(units _grp select 0) moveInDriver _vcl;
(units _grp select 1) moveinTurret [_vcl, [0]];
(units _grp select 2) moveinTurret [_vcl, [1]];

// fly fast, do not engage anyone except on self defence.
_grp setSpeedMode "FULL";
_grp setBehaviour "AWARE";
_grp setCombatMode "GREEN";

leader _grp move _pos;
sleep 5;

// until we are there or cant move anymore (shot down etc).
waitUntil
{
	sleep 2;
	( (unitReady leader _grp) || (!canMove _vcl) );
};

// check if they are dead or not
if (!alive _vcl || !canMove _vcl) exitWith
{
	player sideChat "Helo mission failed. Over.";
	diag_log "Helo mission failed. Over.";

	// delete the units in the group, group and helo vehicle
	{
		deleteVehicle _x;
	} forEach units _grp;
	deleteGroup _grp;
	deleteVehicle _vcl;
};

// land the helo, shut down engine
_vcl land "land";
waitUntil
{
	sleep 0.1;
	(getPos _vcl select 2 < 2);
};

_vcl flyInHeight 0;
sleep _WaitTime;

// put some decor in
_tmp = "VTE_AmmoBoxUS" createVehicle _pos;
_tmp setDir random 360;
sleep _WaitTime;
_tmp = "VTE_WeaponBoxUS" createVehicle _pos;
_tmp setDir random 360;

sleep _WaitTime;
_tmp = "FlagCarrierUSA" createVehicle _pos;
sleep _WaitTime;

_tmp = "MASH" createVehicle _pos;
sleep _WaitTime;
_tmp = "land_Fire" createVehicle _pos;
sleep _WaitTime;
_tmp = "HeliH" createVehicle _pos;
sleep _WaitTime;
_tmp = "barrels" createVehicle _pos;
sleep _WaitTime;

// if we are server side... this is not show on clients ;)
//leader _grp sideChat "Resupplies delivered, take good care of them. We are RTB. Over.";

// fly the helo back to base
_vcl flyInHeight 100;
leader _grp move _hq;
sleep 5;

waitUntil
{
	sleep 2;
	( (unitReady leader _grp) || (!canMove _vcl) );
};

// delete the units in the group, group and helo vehicle
{
	deleteVehicle _x;
} forEach units _grp;
deleteGroup _grp;
deleteVehicle _vcl;

// somewhere here, launch the helo ferry loop script.
[_pos] execVM "PMC\PMC_lz_security.sqf";