// This script updates the position for the three RAIN and one FOG text local markers.
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	"rainmarkt" setMarkerPosLocal getMarkerPos "rainmark";	
	"rainmarkt2" setMarkerPosLocal getMarkerPos "rainmark2";	
	"rainmarkt3" setMarkerPosLocal getMarkerPos "rainmark3";
	"fogmarkt" setMarkerPosLocal getMarkerPos "fogmark";
	"rainmarkt4" setMarkerPosLocal getMarkerPos "rainmark4";
	sleep 1.010;
};