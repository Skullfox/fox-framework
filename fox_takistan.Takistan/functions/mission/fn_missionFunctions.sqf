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

spawnChaches = {


_hasBuildingPositions = _this select 0;

_maxCrates = _this select 1;




_debugExt = true;

_arrayContainer = [];


while {count _arrayContainer != _maxCrates} do {
  
    [_hasBuildingPositions] call fox_fnc_log;
    _r = _hasBuildingPositions call BIS_fnc_selectRandom;

    if(_r in _arrayContainer)then{
        //do nothing
      }else{
      _arrayContainer pushBack _r ;
    };

};


_i = 1;


_crateContainer = [];

{


	if(_debugExt)then{

	_crate_marker1 = createMarker ["hasHousePosition11" + str( time ) + "_"+ str( random(9999) ),_x];
	_crate_marker1 setMarkerShape "ICON";
	_crate_marker1 setMarkerType "loc_Tree";
	_crate_marker1 setMarkerColor "ColorBlue";
	_crate_marker1 setmarkerText "Haus" + str(_i);


	_posArray = [_x] call BIS_fnc_buildingPositions;

	_unpos = _posArray call BIS_fnc_selectRandom;

	_crate_marker11 = createMarker ["hasHousePosition11" + str( time ) + "_"+ str( random(9999) ),_unpos];
	_crate_marker11 setMarkerShape "ICON";
	_crate_marker11 setMarkerType "loc_Tree";
	_crate_marker11 setMarkerColor "ColorBlue";
	_crate_marker11 setmarkerText "Unique";
	//createVehicle ["Sign_Sphere200cm_F", _unpos, [], 0, "NONE"];

	_classCrate = missionClassCrates call BIS_fnc_selectRandom; 
	_crate = createVehicle [_classCrate, _unpos, [], 0, "NONE"];  
	_crate addEventHandler ["killed", { [format ["Kiste zerstört von %1",name (_this select 1)],""] remoteExec ["fox_fnc_clientCustomMessage"];}];
	_crateContainer pushBack _crate;
};

_i = _i + 1;

}foreach _arrayContainer;	

_crateContainer

};