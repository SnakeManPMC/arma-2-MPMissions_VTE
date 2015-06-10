PAPABEAR=[West,"HQ"];

// debug on
PMC_debug = true;
// no gookstation creates
pmcnoenemy=0;

// mission specific init poop
{_x setmarkerpos [-100,-100,0]} forEach ["PMC_mklz1","PMC_mklz2","PMC_mklz3","PMC_mklz4"];
PMC_BodyCount=0;
PMC_LandingZones=[];

[] execVM "war.sqf";
