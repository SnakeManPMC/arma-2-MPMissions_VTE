
	BUGS

--- lz-prepare.sqf:

this doesnt work because its run from radio trigger globally, on the clients...
and there is some random 360 stuff included.

Also it appears if you call setup LZ, then DISCONNECT from the server when you are alone, the chinook lands but then apparently the script is no longer ran or something as the chinook sits there in the LZ for long long time.


--- design

only mission placed units.

radio trigger 0-0-1 calls PMC\PMC_lz.sqf.

PMC_lz.sqf calls PMC_lz_prepare.sqf

PMC_lz_prepare.sqf calls PMC_lz_security.sqf


--- 07-03-11
- squint checked, all ok.
- splitted lz_prepare into two.
