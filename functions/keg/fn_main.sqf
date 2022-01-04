// MAIN FUNCTION

// USAGE EXAMPLE
/*
	// IN INIT.SQF

	call PREFIX_fnc_main;
*/

// PREFIX
private _prefix = "KEG";
//

// SETTINGS
private _delay = 1;
	// DELAY FOR THE MAIN LOOP
//


if (false) exitWith {};

call compile ("
	['" + _prefix + "', 'init'] call " + _prefix + "_fnc_callFunctions;
");

while {true} do {

	call compile ("
		['" + _prefix + "', 'loop'] call " + _prefix + "_fnc_callFunctions;
	");

	sleep _delay;
	
};