private ["_building", "_positions", "_i"];


_debug = false;

_allHousesArray = nearestObjects [player, ["house"], 300];

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




_debugExt = true;
_maxCrates = 3;
_maxCratesfix = _maxCrates + 1;

_arrayContainer = [];

while {count _arrayContainer != _maxCrates} do {
  
    sleep 1;
    
    _r = _hasBuildingPositions call BIS_fnc_selectRandom;

    if(_r in _arrayContainer)then{
        //do nothing
      }else{
      _arrayContainer pushBack _r ;
    };

};


_i = 1;

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
  createVehicle ["Sign_Sphere200cm_F", _unpos, [], 0, "NONE"];



};

_i = _i + 1;

}foreach _arrayContainer;

//_position = position player findEmptyPosition [50,350,"CUP_B_HMMWV_Crows_M2_USA"];hint format["%1",_position];createVehicle ["CUP_B_HMMWV_Crows_M2_USA", [_position select 0,_position select 1], [], 0, "NONE"];





















/*
if(count _maxBPos isEqualTo 0 )then{

  hint "house has no position available";

}else{
  
  hint "house has position available";

  _pos = _maxBPos call BIS_fnc_selectRandom;

  _classCrate = missionClassCrates call BIS_fnc_selectRandom; 
  _crate = createVehicle [_classCrate, _pos, [], 0, "NONE"]; 
  _crate setVectorUp [0,0,1];

  _crate_marker = createMarker ["aas_" + str( time ), _pos];
  _crate_marker setMarkerShape "ICON";
  _crate_marker setMarkerType "loc_Tree";
  _crate_marker setMarkerColor "ColorRed";
  _crate_marker setmarkerText "Kiste";


}

*/