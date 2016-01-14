call compile preprocessfilelinenumbers "lib\shk_taskmaster.sqf";
call compile preprocessfilelinenumbers "lib\fox_randomHousePos.sqf";

remoteExecCall ["fox_fnc_missionSettings"];
remoteExecCall ["fox_fnc_modulesUnits"];

/* place all execVM  in the "VM/init.sqf" */
[]execVM "VM\init.sqf";
[-1] call BIS_fnc_paramGuerFriendly;
[] call fox_fnc_hcInit;
