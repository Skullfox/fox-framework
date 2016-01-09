
if (getMarkerColor "storage" == "") exitWith {

	hint "Storage marker not found";

};
//B_Slingload_01_Cargo_F , B_Truck_01_box_F , Misc_cargo_cont_net3
_containerClass = "B_Slingload_01_Cargo_F";

_container = _containerClass createVehicle getmarkerPos "storage";

_container setVariable ["R3F_LOG_disabled", true];

_d = markerDir  "storage";
_container setDir _d ;
_container allowDamage false;


_sign = "Sign_Arrow_Green_F" createVehicle getmarkerPos "storage";
_sign setVariable["container",_container];
if(_containerClass isEqualTo "B_Truck_01_box_F")then{

	_pos = _container modelToWorld [0,-7,1];
};
	_pos = _container modelToWorld [0,-7,1];

//container = _container;
//sign = _sign;

_sign setPos _pos;
_sign hideObject true;
_sign attachTo [_container];

[_container,_sign] call fox_fnc_storageAction;

