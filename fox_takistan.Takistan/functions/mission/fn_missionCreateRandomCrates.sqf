_targetArray = _this select 0;
_amountOfCrates = _this select 1;
_params = _this select 2;

_pos = _targetArray select 0;

_houses = [position _pos,200] call getHousesWiPositions;
_crates = [_houses,_amountOfCrates] call spawnChaches; 
