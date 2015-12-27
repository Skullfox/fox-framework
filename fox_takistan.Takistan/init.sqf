call compile preprocessfilelinenumbers "lib\shk_taskmaster.sqf";
call compile preprocessfilelinenumbers "lib\fox_randomHousePos.sqf";

remoteExecCall ["fox_fnc_missionSettings"];
remoteExecCall ["fox_fnc_modulesUnits"];

/* place all execVM  in the "VM/init.sqf" */
_handler = []execVM "VM\init.sqf";

[-1] call BIS_fnc_paramGuerFriendly;

waitUntil { scriptDone _handler };
systemChat "init.sqf done";
