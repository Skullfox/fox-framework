

_container = _this select 0;
_sign =  _this select 1;

_objectsArray = [] call fox_fnc_storageObjects;

_player = player,
{

	_array = _x;

	_class = _x select 0;
	_title = _x select 1;
	
	_container addAction [_title,{ [5, _this select 3, { call fox_fnc_storageCreate  }, {hint "Aborted"}, "Preparing " + str( (_this select 3) select 0 ) ] call ace_common_fnc_progressBar; [[ _this select 1 ,"AmovPercMstpSrasWrflDnon_gear"],"playMove"] call BIS_fnc_MP; },[_class,_sign], 0, false, true, "", "player distance _target < 6 AND vehicle player == player"];

}foreach _objectsArray;




