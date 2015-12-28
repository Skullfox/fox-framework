
_pos = _targetArray select 0;



_p = position _pos;
_center = [_p select 0,_p select 1];

_position = _center findEmptyPosition [0,350,"O_Truck_03_ammo_F"];

systemChat format["Pos: %1",_position];

_vehicle = createVehicle [enemyDummyUnit, _position, [], 0, "NONE"];

createVehicleCrew _vehicle;

_vehicle setVectorUp surfaceNormal position _vehicle;
