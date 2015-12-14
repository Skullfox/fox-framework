
_missionId = server getVariable "missionId";
_posDummy = getMarkerPos format["markerMissionId_%1",_missionId] findEmptyPosition [10,350,missionDummyUnitBox];
waitUntil {
	
	if (count _posDummy > 1) exitWith {true};  // has to return true to continue
	sleep 1;
	_posDummy = getMarkerPos format["markerMissionId_%1",_missionId] findEmptyPosition [10,350,missionDummyUnitBox];  
};

_vehicle = createVehicle [enemyDummyUnit , [ _posDummy select 0,  _posDummy select 1], [], 0, ""];

createVehicleCrew _vehicle;