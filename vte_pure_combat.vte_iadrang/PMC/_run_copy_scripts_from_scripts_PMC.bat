@echo off
set KOPI=copy c:\armap\arma2\Users\SnakeMan\scripts\pmc\

echo "PMC Pure Combat!"
%KOPI%PMC_corpses.sqf
%KOPI%PMC_Create_NVA_static_weapon.sqf
%KOPI%PMC_Create_Zones.sqf
%KOPI%PMC_groupRecycle.sqf
%KOPI%PMC_killed.sqf
%KOPI%PMC_plotWaypoints.sqf
%KOPI%PMC_sector_seized.sqf
%KOPI%PMC_targets.sqf
%KOPI%PMC_weather.sqf
%KOPI%PMC_weather_forecast.sqf
%KOPI%PMC_weather_to_string.sqf
%KOPI%time_used_update.sqf
%KOPI%Vehicle_respawn.sqf
pause
exit
