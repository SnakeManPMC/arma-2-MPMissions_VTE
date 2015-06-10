// This script is run on the client only. It adjusts the weather if you are in a trigger according to your speed.
// Should you die in a trigger it will reset weather in 10 seconds. depending on the spawn style this may need to be adjusted
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	waitUntil {vehicle player in list foggy};
	if ((speed vehicle player) > 100) then
	{
		10 setFog 0.8;
	}
	else
	{
		if ((speed vehicle player) > 25) then
		{
			20 setFog 0.8;
		}
		else
		{
			if ((speed vehicle player) < 25) then
			{
				30 setFog 0.8;
			};
		};
	};
	waitUntil {not (vehicle player in list foggy) or not alive player};
	if (not alive player) then
	{
		10 setFog 0.0;
	}
	else
	{
	
		if ((speed vehicle player) > 100 or not alive player) then
		{
			10 setFog 0.0;
		}
		else
		{
			if ((speed vehicle player) > 25) then
			{
				20 setFog 0.0;
			}
			else
			{
				if ((speed vehicle player) < 25) then
				{
					30 setFog 0.0;
				};
			};
		};
	};
	sleep 1.0;
};
				