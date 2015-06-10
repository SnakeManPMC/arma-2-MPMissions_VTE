/*

	Adds addAction to flag pole or other object,
	so add this to your flag pole object
	
Syntax:
this = [this] execVM "PMC\PMC_viewdistance_flagpole.sqf";

Requires:
PMC\PMC_viewdistance_Set.sqf

Returns:
-

*/

private
[
	"_pole"
];

_pole = _this select 0;
//_tero = 
_pole addAction ["ViewDistance 1000", "PMC\PMC_viewdistance_Set.sqf", 1000];
_pole addAction ["ViewDistance 1500", "PMC\PMC_viewdistance_Set.sqf", 1500];
_pole addAction ["ViewDistance 2000", "PMC\PMC_viewdistance_Set.sqf", 2000];
_pole addAction ["ViewDistance 2500", "PMC\PMC_viewdistance_Set.sqf", 2500];
_pole addAction ["ViewDistance 3000", "PMC\PMC_viewdistance_Set.sqf", 3000];
_pole addAction ["ViewDistance 4000", "PMC\PMC_viewdistance_Set.sqf", 4000];
_pole addAction ["ViewDistance 5000", "PMC\PMC_viewdistance_Set.sqf", 5000];
_pole addAction ["ViewDistance 6000", "PMC\PMC_viewdistance_Set.sqf", 6000];
_pole addAction ["ViewDistance 7000", "PMC\PMC_viewdistance_Set.sqf", 7000];
_pole addAction ["ViewDistance 8000", "PMC\PMC_viewdistance_Set.sqf", 8000];
_pole addAction ["ViewDistance 9000", "PMC\PMC_viewdistance_Set.sqf", 9000];
_pole addAction ["ViewDistance 10000", "PMC\PMC_viewdistance_Set.sqf", 10000];
