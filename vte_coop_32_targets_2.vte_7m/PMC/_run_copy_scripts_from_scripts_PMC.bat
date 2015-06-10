@echo off
set KOPI=copy c:\armap\arma2\Users\SnakeMan\scripts\pmc\

echo "PMC COOP 32 Targets 2 (random enemies)!"
%KOPI%PMC_corpses.sqf
%KOPI%PMC_Create_Crew_VTE_OPFOR.sqf
rem nope, we made it unique
rem %KOPI%PMC_Create_NVA_static_weapon.sqf
%KOPI%PMC_Create_Squad_NVA.sqf
%KOPI%PMC_Create_Squad_VC.sqf
%KOPI%PMC_groupRecycle.sqf
%KOPI%PMC_killed.sqf
%KOPI%PMC_Patrol_Inf_Waypoints.sqf
%KOPI%PMC_Sentry_Inf_Waypoints.sqf
%KOPI%PMC_targets.sqf
%KOPI%PMC_viewdistance_flagpole.sqf
%KOPI%PMC_viewdistance_Set.sqf
%KOPI%PMC_weather.sqf
%KOPI%PMC_weather_forecast.sqf
%KOPI%PMC_weather_to_string.sqf
%KOPI%PMC_weather_with_mp_parameter.sqf
%KOPI%Vehicle_respawn.sqf
pause
exit
