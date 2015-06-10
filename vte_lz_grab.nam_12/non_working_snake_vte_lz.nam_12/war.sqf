
private [
	"_RanP", "_xthing", "_p", "_pos1", "_pos2", "_grp"
];

// wait to let the guys get killed first...
sleep 10;

//(call format[{vcrecon%1},1])
//vcrecon1 -> vcrecon18 groups, 4 waypoints + cycle. meaning 0, 1, 2, 3, 4, 5 setwwpos.

//random patrol radius
_RanP = 1000;

_xthing = 0;

while {_xthing < 18} do
{
	_xthing = _xthing + 1;

	_p = getPosASL (call format [{GookStation%1}, _xthing]);
	_pos1 = _p select 0;
	_pos2 = _p select 1;

	_grp = (call format [{vcrecon%1}, _xthing]);
	"VTE_vcofficer" createunit [[6000, 6000, 0], _grp, "", 0.3, "PRIVATE"];
	leader _grp setpos _p;

/*
;"VTE_vcsoldier" createunit [[_pos1,_pos2], _grp, "", 0.2, "SERGEANT"];
;"VTE_vcsoldier2" createunit [[_pos1,_pos2], _grp, "", 0.2, "CORPORAL"];
;"VTE_vcsoldier3" createunit [[_pos1,_pos2], _grp, "", 0.2, "CORPORAL"];
;"VTE_vcsoldier4" createunit [[_pos1,_pos2], _grp, "", 0.2, "CORPORAL"];
;"VTE_vcmg" createunit [[_pos1,_pos2], _grp, "", 1, "CORPORAL"];
;"VTE_vcmedic" createunit [[_pos1,_pos2], _grp, "", 0.2, "CORPORAL"];
;"VTE_vcmortar" createunit [[_pos1,_pos2], _grp, "", 0.2, "CORPORAL"];
;"VTE_vcrpg" createunit [[_pos1,_pos2], _grp, "", 0.2, "private"];
;"VTE_vcat" createunit [[_pos1,_pos2], _grp, "", 0.2, "private"];
;"VTE_vcengineer" createunit [[_pos1,_pos2], _grp, "", 0.2, "private"];
;"VTE_vcmg" createunit [[_pos1,_pos2], _grp, "", 1, "private"];
*/

	_grp setbehaviour "safe";
	_grp setcombatmode "green";
	_grp setformation "stag column";
	_grp setspeedmode "limited";

	player sidechat format["%1 - %2", (call format [{vcrecon%1}, _xthing]), _xthing];

	[(call format [{vcrecon%1}, _xthing]), 0] setwppos _p;
        [(call format [{vcrecon%1}, _xthing]), 1] setwppos [_pos1 - _RanP + (random _RanP) * 2,_pos2 - _RanP + (random _RanP) * 2];
        [(call format [{vcrecon%1}, _xthing]), 2] setwppos [_pos1 - _RanP + (random _RanP) * 2,_pos2 - _RanP + (random _RanP) * 2];
        [(call format [{vcrecon%1}, _xthing]), 3] setwppos [_pos1 - _RanP + (random _RanP) * 2,_pos2 - _RanP + (random _RanP) * 2];
        [(call format [{vcrecon%1}, _xthing]), 4] setwppos [_pos1 - _RanP + (random _RanP) * 2,_pos2 - _RanP + (random _RanP) * 2];
	[(call format [{vcrecon%1}, _xthing]), 5] setwppos _p;
};

player sidechat format["exited war.sqf with _x being %1", _xthing];
