
private ["_tgt","_pos","_grp","_ds"];
sleep 10;
// [getPosASL GookStation2,vcinf2] exec "add-gooks.sqs";

if (pmcnoenemy==1) exitWith{};

_pos = _this select 0;
_grp = _this select 1;
_tgt = getPosASL leader assault1;

// if the damned group is still alive somewhere, we exit
if (alive leader _grp) exitWith
{
	player sidechat format["too many gooks: %1 / %2",_pos,_grp];
};

_ds = [_pos select 0,_pos select 1,_tgt select 0,_tgt select 1] call compile preprocessFileLineNumbers "getdistance.sqf";

// if assault team is too far away, hmm.
if (_ds > 2000) then
{
	_tgt=_pos;
};

"VTE_vcofficer" createUnit [_pos, _grp, "", 0.3, "SERGEANT"];
"VTE_vcsoldier" createUnit [_pos, _grp, "", 0.2, "CORPORAL"];
"VTE_vcsoldier2" createUnit [_pos, _grp, "", 0.2, "CORPORAL"];
"VTE_vcsoldier3" createUnit [_pos, _grp, "", 0.2, "CORPORAL"];
"VTE_vcsoldier4" createUnit [_pos, _grp, "", 0.2, "CORPORAL"];
"VTE_vcmg" createUnit [_pos, _grp, "", 1, "CORPORAL"];
"VTE_vcmedic" createUnit [_pos, _grp, "", 0.2, "CORPORAL"];
"VTE_vcmortar" createUnit [_pos, _grp, "", 0.2, "CORPORAL"];
"VTE_vcrpg" createUnit [_pos, _grp, "", 0.2, "private"];
"VTE_vcat" createUnit [_pos, _grp, "", 0.2, "private"];
"VTE_vcengineer" createUnit [_pos, _grp, "", 0.2, "private"];
"VTE_vcmg" createUnit [_pos, _grp, "", 1, "private"];

_grp setbehaviour "aware";
_grp setcombatmode "red";
_grp setspeedmode "full";
_grp setformation "wedge";

[_grp, 0] setWPPos _tgt;
[_grp, 1] setWPPos _tgt;
[_grp, 2] setWPPos _tgt;
