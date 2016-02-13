

_container addAction [_title,{

[_this select 3,"fox_fnc_storageCreate",false] call BIS_fnc_MP;

	[5, _this select 3, {



[[ _this select 1 ,"AmovPercMstpSrasWrflDnon_gear"],"playMove"] call BIS_fnc_MP; }];


_arg = _this select 0;

_class = _arg select 0;
_sign =  _arg select 1;

_psign = position _sign;


[{


},"BIS_fnc_spawn"] call BIS_fnc_MP;

[_sign] spawn{

	_sign = _this select 0;
	_container = _sign getVariable "container";

	_sign hideObject false;

	detach _sign;
	_height = 1.8;

	for "_i" from 0 to 20 do {

			_pos = _container modelToWorld [0,-7,_height];
			_sign setPos _pos;
			_height = _height - 0.125;
			sleep 0.5;

	};
	_sign hideObject true;
	_pos = _container modelToWorld [0,-7,1];
	_sign setPos _pos;
	_sign attachTo [_container];
};



_p = [_psign select 0, _psign select 1];

_obj = createVehicle [_class,_p,[],0,"CAN_COLLIDE"];

_obj setVectorUp surfaceNormal position _obj;
