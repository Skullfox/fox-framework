getTaskTranslation = {
	
	_type  = server getVariable "missionType";

	_title = localize format["str_%1_title",_type];
	_desc = localize format["str_%1_desc",_type];

	_text = [_title,_desc];

	_text

};

getTranslation = {
	
	_str = _this select 0;

	_text = localize format["str_",_str];

	_text

};


getHousesWiPositions = {

	_pos = _this select 0;
	_rad = _this select 1;
	
	_debug = false;

	_allHousesArray = nearestObjects [_pos, ["house"], _rad];

	_hasBuildingPositions = [];

	{
	    _currentHouseAllPositionsArray = [_x] call BIS_fnc_buildingPositions;

	    _currentHouseAllPositionsCounter = count _currentHouseAllPositionsArray;

	    if(_currentHouseAllPositionsCounter isEqualTo 0 )then{
	      //meh
	    }else{
	      _hasBuildingPositions pushBack _x; // at least 1 position in da house
	    };

	} forEach _allHousesArray;

	{

	  if(_debug)then{

	    _crate_marker = createMarker ["hasHousePosition" + str( time ) + "_"+ str( random(9999) ),_x];
	    _crate_marker setMarkerShape "ICON";
	    _crate_marker setMarkerType "loc_Tree";
	    _crate_marker setMarkerColor "ColorRed";
	    _crate_marker setmarkerText "House";

	  };

	  _hposCounter = [_x] call BIS_fnc_buildingPositions;

	  _i = 0;

	  {

	    if(_debug)then{

	      _crate_marker1 = createMarker ["hasHousePosition11" + str( time ) + "_"+ str( random(9999) ),_x];
	      _crate_marker1 setMarkerShape "ICON";
	      _crate_marker1 setMarkerType "loc_Tree";
	      _crate_marker1 setMarkerColor "ColorBlue";
	      _crate_marker1 setmarkerText "Hp" + str(_i);

	      createVehicle ["Sign_Sphere200cm_F", _x, [], 0, "NONE"];

	    };

	    _i = _i + 1;

	  }foreach _hposCounter;


	}foreach _hasBuildingPositions;


	_hasBuildingPositions
};
