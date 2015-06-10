/*
	gets distance between 2 coordinates, in xy only
*/

private ["_x", "_y", "_x2", "_y2", "_c"];

_x = _this select 0;
_y = _this select 1;
_x2 = _this select 2;
_y2 = _this select 3;

_x = _x2 - _x;
_y = _y2 - _y;
_c = sqrt((_x*_x) + (_y*_y));

_c
