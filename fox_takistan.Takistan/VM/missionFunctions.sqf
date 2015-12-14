realFuel = {
	
	/* [_unit,_rate] call realFuel; */
	
	
	_unit = _this select 0;
	_rate = _this select 1;

	[_unit,_rate ] spawn{
	_unit = _this select 0;
	_rate = _this select 1;
	while {(alive _unit) and (fuel _unit > 0)} do { 

	if (isengineon _unit) then {
	_unit setFuel ( Fuel _unit -_rate);
	};
	sleep 1;
	};
	};


};
