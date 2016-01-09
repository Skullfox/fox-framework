
_pos = _this select 0;
_amount = _this select 1;
_maxRad = _this select 2;

_dev = false;

if(_dev)then{
	_crate_marker1 = createMarker ["_center",_pos];
	_crate_marker1 setMarkerShape "ICON";
	_crate_marker1 setMarkerType "loc_Tree";
	_crate_marker1 setMarkerColor "ColorBlue";
	_crate_marker1 setmarkerText "Center";
};

_p = [_pos select 0, _pos select 1];

_lastBunker = [0,0];

_i = 0;
_timeout = 0;

while {true} do {

	_position = _p findEmptyPosition [10,_maxRad,"Land_BagBunker_Large_F"];

	_distance = _lastBunker distance2D _position;

	//systemChat format["Distance - %1 ",_distance];


	if(_distance > 40) then{

	_bunker = createVehicle ["Land_BagBunker_Large_F", _position , [], 0, "NONE"];
	_lastBunker = _bunker;
	_bunker setVectorUp surfaceNormal position _bunker;

	_i = _i + 1;

		if(_dev)then{

			_crate_marker1 = createMarker ["_bunker" + str( time ) + "_"+ str( random(9999) ),_position];
			_crate_marker1 setMarkerShape "ICON";
			_crate_marker1 setMarkerType "loc_Tree";
			_crate_marker1 setMarkerColor "ColorBlue";
			_crate_marker1 setmarkerText "Bunker" + str(_i);

		};

	}else{

		if(_dev)then{
			systemChat "try again" + str _timeout;
		};
	};
	
	_timeout = _timeout + 1;

	if( (_i == _amount) OR (_timeout == 20) )exitWith {};

};
