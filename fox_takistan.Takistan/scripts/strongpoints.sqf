_array = nearestLocations [position server, ["StrongpointArea"], 50000];

_max = 3;
_min = 1;
_c = 1;


_natonames = [
					"Alpha",
					"Bravo",
					"Charlie",
					"Delta",
					"Echo",
					"Foxtrot",
					"Golf",
					"Hotel",
					"India",
					"Juliet",
					"Kilo",
					"Lima",
					"Mike",
					"November",
					"Oscar",
					"Papa",
					"Quebec",
					"Romeo",
					"Sierra",
					"Tango",
					"Uniform",
					"Victor",
					"Whiskey",
					"X-Ray",
					"Yankee",
					"Zulu"
				];



{
	if(_c == _max)exitWith {hint format["All placed, %1",_c];};
	
	_pos = position _x distance2D getMarkerPos "hq_spawn";
	if(_pos > 4000)then {
	
	
	if(dev)then{
		_crate_marker = createMarker ["aas_" + str( _x),position _x]; 
		_crate_marker setMarkerShape "ICON";
		_crate_marker setMarkerType "Minefield";
		_crate_marker setMarkerColor "ColorGreen";
	};

	_null = [position _x,"compositions\strongpoint.sqf"] execVM "compositions\compositionMapper.sqf";
	sleep 10;
  
	_markerstr = createMarker ["str_" + str(_x), position _x ];
	_markerstr setMarkerShape "ELLIPSE";
	_markerstr setMarkerBrush "Solid";
	_markerstr setMarkerSize [30,30];
	_markerstr setMarkerColor "ColorRed";

	_str = _natonames call BIS_fnc_selectRandom;
	
	// null = [_markerstr,100,east,west,"-1","2","1","2","4","0","2","A",_str + "/"+  str(floor (random 999))] execVM "sectorModule.sqf";

	//[ ["str_" + str(_x)],[1,2],[2,3],[0,0],[0],[0],[0,0],[5,1,enemySpawnZoneEosDistance,enemySideFactionEos ,TRUE,eosDev]] call EOS_Spawn;
	
	_c = _c + 1;
	
	}else{
	//too close
	};
}forEach _array;
