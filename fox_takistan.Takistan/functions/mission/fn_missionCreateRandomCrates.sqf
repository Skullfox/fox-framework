_targetArray = _this select 0;
_amountOfCrates = _this select 1;
_params = _this select 2;

_pos = _targetArray select 0;

_houses = [position _pos,400] call getHousesWiPositions;

if( (count _houses) isEqualTo 0) then{

	if(dev)then{
		["no house nearby"] call fox_fnc_log;
	};
	

	_crates = []; 

	for "_i" from 1 to _amountOfCrates do {

	_position = _pos findEmptyPosition [50,350,"O_Truck_03_ammo_F"];

	_crate = createVehicle ["O_Truck_03_ammo_F", [_position select 0,_position select 1], [], 0, "NONE"];
	_crate addEventHandler ["killed", { [format ["Kiste zerstört von %1",name (_this select 1)],""] remoteExec ["fox_fnc_clientCustomMessage"];}];
	_crate setVectorUp surfaceNormal position _crate;
	_crates pushBack _crate;

	};

}else{

	if(dev)then{
		["houses nearby"] call fox_fnc_log;
	};
	
	
	_cratesPos = [_houses,_amountOfCrates] call fox_randomHousePos;

	_crates = []; 

	{

	_crate = createVehicle ["Box_East_WpsSpecial_F", _x, [], 0, "NONE"];  
	_crate setVectorUp surfaceNormal position _crate;
	_crate addEventHandler ["killed", { [format ["Kiste zerstört von %1",name (_this select 1)],""] remoteExec ["fox_fnc_clientCustomMessage"];}];
	
	_crates pushBack _crate;

	}foreach _cratesPos;

	
};

server setVariable ["missionChaches",_crates,true];

true