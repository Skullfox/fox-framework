if (!isServer) exitWith {
	systemChat "Mehh youre not the server,go away";
};
systemChat "Start Server";
diag_log format ["#######%1 start server #######",missionName + "_" + worldname];

/*
[] spawn{
	
	while {true} do {
	  sleep 360;
	  [50000,["dropped","corpses","wrecks"] ] execVM "scripts\cleanup.sqf";

	};
	
};
*/


/* Select Preset */

if(worldname in (desertMapPresets select 0) )then{

	worldPreset = desertMapPresets;

}else{

	worldPreset = woodMapPresets;

};
publicVariable "worldPreset";

/* Mission params */

_missionOrderParam = "missionOrderParam" call BIS_fnc_getParamValue;
server setvariable ["database",missionName + "_" + worldName,true];

_eosSupportTimerParam = "eosSupportTimerParam" call BIS_fnc_getParamValue;
server setvariable ["supportTimer",_eosSupportTimerParam,true];



/* Module: IED*/
_ieds = "iedsParam" call BIS_fnc_getParamValue;
if(_ieds isEqualTo 1)then{

	//[] call fox_fnc_modulesIeds;

};

/* Module: Civs aka COS*/
_cos = "cosParam" call BIS_fnc_getParamValue;
if(_cos isEqualTo 1)then{

	[] call fox_fnc_modulesCivs;

};


/* Setup vehicles & stuff */

[] call fox_fnc_initHq;
[] call fox_fnc_initMhq;
[] call fox_fnc_storageContainer;
[] call fox_fnc_supportMarkerHeli;

serverReady = TRUE;