// This script is run on the server only and updates each weather trigger and large marker
// of the same shape and angle.
_counter = 0;
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{	

	if ((position rainy select 0) > 21944) then // this line detects when the trigger has reached the point at where we want it to shift all the way back to the west.
	{	// East to west makes the best sence to me because the actual cloud effect seems to move this way too. but it could be reversed.
		// These three lines determin a random point within limits of north and south to respawn this rain trigger once it has traveld to far to the east. 
		// The limits insure the rain is near players. and not off at sea somwhere to far north or south.
		_randx = 2000;
		_randy = 4463+(random 11857);
		_rnddir = (random 359);
		rainy setpos [_randx,_randy,0];
	};
	if ((position rainy2 select 0) > 21944) then
	{
		_randx = 2000;
		_randy = 4463+(random 11857);
		_rnddir = (random 359);
		rainy2 setpos [_randx,_randy,0];
	};
	if ((position rainy3 select 0) > 21944) then
	{
		_randx = 2000;
		_randy = 4463+(random 11857);
		_rnddir = (random 359);
		rainy3 setpos [_randx,_randy,0];
	};	
	if ((position rainy4 select 0) > 21944) then
	{
		_randx = 2000;
		_randy = 4463+(random 11857);
		_rnddir = (random 359);
		rainy4 setpos [_randx,_randy,0];
	};	
	// these three lines are for every loop they shift the rain triggers and large markers west to east every second
	rainy  setpos [(position rainy select 0)+10,(position rainy select 1),0];"rainmark" setMarkerPos position rainy;
	rainy2 setpos [(position rainy2 select 0)+10,(position rainy2 select 1),0];"rainmark2" setMarkerPos position rainy2;
	rainy3 setpos [(position rainy3 select 0)+10,(position rainy3 select 1),0];"rainmark3" setMarkerPos position rainy3; 
	rainy4 setpos [(position rainy4 select 0)+10,(position rainy4 select 1),0];"rainmark4" setMarkerPos position rainy4;
	if(_counter == 0) then // a counter counts how meny times the loop has run and if it has run for 600 times (at one second a time = 10 minuits) the fog will move
	{
		_randx = 8000+(random 12000); // In this case these numbers select a random place in the north of the island.
		_randy = 12000+(random 3000);
		_rnddir = (random 359);
		foggy setpos [_randx,_randy,0];"fogmark" setMarkerPos position foggy; // sets the trigger and marker to the new position.
		_counter = 600; // sets the counter back to 600
	};
	_counter = (_counter - 1); // decrements the counter by 1 on the first run _counter now equels 599, next run of the loop it will be 598 after this point
	sleep 1.011;
};