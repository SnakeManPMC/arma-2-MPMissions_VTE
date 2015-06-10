
private ["_pos","_hq","_WaitTime","_grp","_pln","_helopos","_abox1","_abox2","_flg1","_unit1","_unit2"];
_pos = getPosASL leader assault1;
_hq = getPosASL base_rock;

_WaitTime=60;

"PMC_mklz1" setMarkerPos _pos;
"PMC_mklz1" setMarkerColor "ColorBlue";
"PMC_mklz1" setMarkerType "Marker";

_grp = objNull;
_grp = createGroup west;
waitUntil {!(isNull _grp)};

_unit1 = _grp createUnit ["vte_acpilot", _hq, [], 1, "FORM"];
_unit2 = _grp createUnit ["vte_acpilot", _hq, [], 1, "FORM"];

_pln = "VTE_ch47ca" createVehicle _hq;

_unit1 moveindriver _pln;
_unit2 moveingunner _pln;

_grp setspeedmode "full";
_grp setbehaviour "aware";
_grp setcombatmode "green";

leader _grp move _pos;
sleep 5;

waitUntil
{
	unitReady leader _grp;
};

_pln land "land";

while {getPosASL _pln select 2 < 2} do
{
	sleep 0.5;
};

_pln flyInHeight 0;

sleep 5;
_helopos = getPosASL _pln;

// put some decor in
_abox1 = "VTE_AmmoBoxNVA" createVehicle _helopos;
_abox1 setdir random 360;
sleep _WaitTime;
_abox2 = "VTE_AmmoBoxUS" createVehicle _helopos;
_abox2 setdir random 360;

sleep _WaitTime;
_flg1 = "FlagCarrier" createVehicle _helopos;
_flg1 setflagtexture "usa_vlajka.pac";
sleep _WaitTime;

"MASH" createVehicle _helopos;
sleep _WaitTime;
"Land_Campfire" createVehicle _helopos;
sleep _WaitTime;
"HeliHEmpty" createVehicle _helopos;
sleep _WaitTime;
"barrels" createVehicle _helopos;
sleep _WaitTime;

leader _grp sideChat "RESUPPLIES DELIVERED. WE ARE RTB. OVER.";

PMC_lz1=1;

_pln flyInHeight 50;
leader _grp move _hq;

waitUntil
{
	(unitReady leader _grp || !alive _pln);
};

/*
#LZ_Security
{
	deletevehicle _x;
} foreach units _grp;
deletevehicle _pln;
if (PMC_debug) then
{
	leader assault1 sidechat "helo just got deleted...";
};
*/

["PMC_mklz1",usinf1] execVM "lz-security.sqf";
