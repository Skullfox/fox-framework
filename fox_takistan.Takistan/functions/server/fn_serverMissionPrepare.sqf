_type = _this select 0;
_params = _this select 1;


private ["_type", "_params","_mtype"];

_mtype = _type;
_targetArray = [] call fox_fnc_missionGetRandomLocation;

[_targetArray] call fox_fnc_log;

_check = [] call fox_fnc_missionHandler; // activat emission and set ao status true if return false report

if(dev)then {sleep 2; }else{sleep 30 };

[_targetArray] call (missionNamespace getVariable format["fox_fnc_missionFile%1",_mtype]);

//[[_targetArray,_type], "fox_fnc_serverMissionLoad", false] call BIS_fnc_MP;
//[[_targetArray,_type]] remoteExecCall ["fox_fnc_serverMissionLoad", 2];
//_center = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");

