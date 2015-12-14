_targetArray = _this select 0;
_amountOfCrates = _this select 1;
_params = _this select 2;

_pos = _targetArray select 0;

_posArray = [];

_nearesthouses = position _pos nearObjects ["House",350];
_houseList = [];

for "_i" from 1 to _amountOfCrates do {

{
    for "_i" from 0 to 20 do {
        if ( [(_x buildingPos _i), [0,0,0]] call BIS_fnc_arrayCompare ) exitWith {
            if (_i > 0) then {
                _houseList set [count _houseList, [_x, _i]];
            };
        };
    };    
}forEach _nearesthouses;

_randomHouse = _houseList select (floor (random (count _houseList)));
_housePos = (_randomHouse select 0) buildingPos (floor (random (_randomHouse select 1)));

if( dev )then{
    
_crate_marker = createMarker ["aas_" + str( time ), _housePos];
_crate_marker setMarkerShape "ICON";
_crate_marker setMarkerType "loc_Tree";
_crate_marker setMarkerColor "ColorRed";

};

_classCrate = missionClassCrates call BIS_fnc_selectRandom; 

_crate = createVehicle [_classCrate, _housePos, [], 0, "NONE"];  
_crate enableSimulationGlobal false;
_crate addEventHandler ["killed", { [format ["Kiste zerstört von %1",name (_this select 1)],""] remoteExec ["fox_fnc_clientCustomMessage"];}];

_tmp = [_crate,_housePos];
_posArray pushBack _tmp;

}; 

_posArray;