@echo off
set KOPI=copy c:\armap\arma2\Users\SnakeMan\scripts\pmc\

echo "PMC COOP 32 Targets!"
%KOPI%PMC_corpses.sqf
%KOPI%PMC_killed.sqf
%KOPI%PMC_viewdistance_flagpole.sqf
%KOPI%PMC_viewdistance_Set.sqf
%KOPI%PMC_weather.sqf
%KOPI%PMC_weather_forecast.sqf
%KOPI%PMC_weather_to_string.sqf
%KOPI%Vehicle_respawn.sqf
pause
exit
