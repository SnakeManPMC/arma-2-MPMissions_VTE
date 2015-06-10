
private ["_l"];
_l = _this select 0;
sleep 5;
{
	deletevehicle _x;
} foreach _l;
