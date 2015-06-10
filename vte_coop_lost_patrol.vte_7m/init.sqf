

private ["_rainmarkt","_pos"];
[] execVM "briefing.sqf";

// Dynamic Weather - by KilJoy [SFG]
//
// I offer these scripts to anyone who wants to use them, credit free. 
//
// This script is run automatically when the mission starts
// It sets up the weather system on the client and server.

// NOTE:
// Other settings to take note of is to set the forecast in the mission to fair
// and to set current weather to fair. And like wise for fog and forecast fog.
// Where ever you place the triggers is where the weather is at mission start.
// All markers will fall into place automatically.
// You MUST place a Game Logic called server in your mission or it will not work!!

setterraingrid 25; //medium grass
setViewDistance 1200; //default mp viewdistance
_pos = [0,0,0]; // defining pos out of a closed statement.

if(isServer) then // only game logics are local to the server. This is how we prevent clients running server scripts.
{
	[] execVM "scripts\weathergen.sqf";
};

if (local player) then // player is only local to the client. This is how we prevent the server running client scripts.
{
	_rainmarkt = createMarkerLocal ["rainmarkt", _pos];
	_rainmarkt setMarkerTypeLocal "DOT";
	_rainmarkt setMarkerColorLocal "ColorBlack";
	_rainmarkt setMarkerTextLocal "R A I N";
	_rainmarkt setMarkerSizeLocal [0, 0];

	_rainmarkt = createMarkerLocal ["rainmarkt2", _pos];
	_rainmarkt setMarkerTypeLocal "DOT";
	_rainmarkt setMarkerColorLocal "ColorBlack";
	_rainmarkt setMarkerTextLocal "R A I N";
	_rainmarkt setMarkerSizeLocal [0, 0];

	_rainmarkt = createMarkerLocal ["rainmarkt3", _pos];
	_rainmarkt setMarkerTypeLocal "DOT";
	_rainmarkt setMarkerColorLocal "ColorBlack";
	_rainmarkt setMarkerTextLocal "R A I N";
	_rainmarkt setMarkerSizeLocal [0, 0];

	_rainmarkt = createMarkerLocal ["fogmarkt", _pos];
	_rainmarkt setMarkerTypeLocal "DOT";
	_rainmarkt setMarkerColorLocal "ColorBlack";
	_rainmarkt setMarkerTextLocal "F O G";
	_rainmarkt setMarkerSizeLocal [0, 0];

	_rainmarkt = createMarkerLocal ["rainmarkt4", _pos];
	_rainmarkt setMarkerTypeLocal "DOT";
	_rainmarkt setMarkerColorLocal "ColorBlack";
	_rainmarkt setMarkerTextLocal "R A I N";
	_rainmarkt setMarkerSizeLocal [0, 0];
	
	[] execVM "scripts\weatherrec.sqf";
	[] execVM "scripts\fog.sqf";
	[] execVM "scripts\rain.sqf";
};

// =============================================

enableSaving [ false, false ];
