
if(dev)then{
	_str = param [0, ""];
	_type = param [1, 1];
	
	switch (_type) do {
		case 1: { systemChat format["%1",_str];};
		case 2: { hint format ["%1",_str] };
		case 3: { ["%1",_str] call BIS_fnc_error; };
		default { hint "fn_log" };
	};
	
};
