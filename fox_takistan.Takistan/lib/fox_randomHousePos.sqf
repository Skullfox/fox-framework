fox_randomHousePos = {

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


_crateContainerPos = [];

{


	if(_debugExt)then{

	/*
	_crate_marker1 = createMarker ["hasHousePosition111" + str( time ) + "_"+ str( random(9999) ),_x];
	_crate_marker1 setMarkerShape "ICON";
	_crate_marker1 setMarkerType "loc_Tree";
	_crate_marker1 setMarkerColor "ColorBlue";
	_crate_marker1 setmarkerText "Haus" + str(_i);
*/

	_posArray = [_x] call BIS_fnc_buildingPositions;

	_unpos = _posArray call BIS_fnc_selectRandom;
/*
	_crate_marker11 = createMarker ["hasHousePosition11111" + str( time ) + "_"+ str( random(9999) ),_unpos];
	_crate_marker11 setMarkerShape "ICON";
	_crate_marker11 setMarkerType "loc_Tree";
	_crate_marker11 setMarkerColor "ColorBlue";
	_crate_marker11 setmarkerText "Unique";
*/
	_crateContainerPos pushBack _unpos;
};

_i = _i + 1;

}foreach _arrayContainer;	

_crateContainerPos


}

