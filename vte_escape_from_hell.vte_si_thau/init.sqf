
// if on server
if (isServer) then
{
	[] execVM "PMC\PMC_init.sqf";
}
else
{
	// set our weather using multiplayer parameter array
	[] execVM "PMC\PMC_weather_with_mp_parameter.sqf";
	
	player setVariable ["BIS_noCoreConversations", true];
};

enableSaving [ false, false ];

// wait little bit and then make the tasks
sleep 3;

[[
  ["task1", "Reach nearest FOB", "Reach nearest FOB, either <marker name='fob1'>FOB Rocker</marker> or <marker name='fob2'>FOB Demon</marker> depending on your crash site location."]
],[
  ["Mission", "CH-53 you were riding just crashed. Escape enemy forces and reach the nearest FOB."],
  ["Credits", "Vietnam: The Experience. Mission by Snake Man."]
]] call compile preprocessfilelinenumbers "PMC\shk_taskmaster.sqf";

hint "Briefing updated.";
