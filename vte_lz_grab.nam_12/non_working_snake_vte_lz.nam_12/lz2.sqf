
private ["_pos","_hq","_WaitTime","_grp","_pln","_helopos","_abox1","_abox2","_flg1","_unit1","_unit2"];
_pos = getPosASL leader assault1;
_hq = getPosASL base_rock;

_WaitTime=60;

"PMC_mklz2" setmarkerpos _pos;
"PMC_mklz2" setmarkercolor "ColorBlue";
"PMC_mklz2" setmarkertype "Marker";
_grp = objNull;
_grp = createGroup east;
waitUntil {!(isNull _grp)};

_unit1 = _grp createunit ["vte_acpilot", _hq, [], 1, "FORM"];
_unit2 = _grp createunit ["vte_acpilot", _hq, [], 1, "FORM"];

_pln = "VTE_ch47ca" createvehicle _hq;

_unit1 moveindriver _pln;
_unit2 moveingunner _pln;

_grp setspeedmode "full";
_grp setbehaviour "aware";
_grp setcombatmode "green";

leader _grp move _pos;
sleep 5;

waitUntil {unitready leader _grp};

_pln land "land";

while {getPosASL _pln select 2 < 2} do
{
	sleep 0.5;
};

_pln flyinheight 0;

sleep 5;
_helopos = getPosASL _pln;

// put some decor in
_abox1 = "VTE_AmmoBoxNVA" createvehicle _helopos;
_abox1 setdir random 360;
sleep _WaitTime;
_abox2 = "VTE_AmmoBoxUS" createvehicle _helopos;
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

leader _grp sidechat "RESUPPLIES DELIVERED. WE ARE RTB. OVER.";

PMC_lz2=1;

_pln flyinheight 50;
leader _grp move _hq;

waitUntil
{
        sleep 0.1;
        (unitready leader _grp || !alive _pln);
};

//#LZ_Security
{
	deletevehicle _x;
} foreach units _grp;
deletevehicle _pln;
if (PMC_debug) then
{
	leader assault1 sidechat "helo just got deleted...";
};

["PMC_mklz2",usinf1] execVM "lz-security.sqf";
