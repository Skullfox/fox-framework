private ["_pos","_radius","_collection","_startingInt","_c","_final"];

_pos = param [0, (position player)];
_radius = param [1, 250];
_startingInt = param [2, 0];

_collection = nearestObjects [_pos, ["All"], _radius];

if (count _collection > 0) then {
	_c = _startingInt;
	_final = "";
	
	{
		private ["_obj","_class","_sim"];
		
		_obj = _x;
		_class = typeOf _obj;
		_sim = getText (configFile >> "CfgVehicles" >> _class >> "simulation");
		
		if !(_sim in ["soldier","invisible","curator"]) then {
			private ["_pos","_dir","_fuel","_damage"];
			
			_pos = position _obj;
			_dir = getDir _obj;
			_fuel = fuel _obj;
			_damage = damage _obj;
			
			_br = toString [13,10];
			_buildStr = format ["_vehicle_%1 = objNull; if (true) then { _this = createVehicle ['%2', %3, [], 0, 'CAN_COLLIDE']; _vehicle_%1 = _this; _this setDir %4; _this setPos %3; };", _c, _class, _pos, _dir];
			_final = _final + _br + _buildStr;
			
			_c = _c + 1;
		};
	} forEach _collection;
	
	copyToClipboard _final;
	hint "Copied to Clipboard";
};