//_center = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");

//get all villages on map
_center = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");

if(dev)then{
	mapCenterMarker =createMarker ["mapCenterMarker", _center ];
	mapCenterMarker setMarkerShape "ICON";
	mapCenterMarker setMarkerType "Minefield";
};

_locArray = nearestLocations [_center, locationList, 80000];   

_loc = _locArray call BIS_fnc_selectRandom; 

_locName = text _loc; 

while {true} do {

	_loc = _locArray call BIS_fnc_selectRandom; 
	_locName = text _loc; 

	if ( (locationBlacklist find _locName) == -1) exitWith {}

};

locationBlacklist pushBack _locName;

_array = [_loc,_locName];

_array