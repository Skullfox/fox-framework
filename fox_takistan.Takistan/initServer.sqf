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

/* Mission params */
_missionOrderParam = "missionOrderParam" call BIS_fnc_getParamValue;
server setvariable ["database",missionName + "_" + worldName,true];

_eosSupportTimerParam = "eosSupportTimerParam" call BIS_fnc_getParamValue;
server setvariable ["supportTimer",_eosSupportTimerParam,true];


if(dev)then{
	//_null = [] execVM "scripts\strongpoints.sqf";
};


/* Setup vehicles & stuff */

[] call fox_fnc_initMissionVars;
[] call fox_fnc_initHq;
[] call fox_fnc_initMhq;
[] call fox_fnc_supportMarkerHeli;
[] call fox_fnc_modulesIeds;


serverReady = TRUE;


