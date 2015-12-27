private ["_type", "_params","_mtype"];

_type = _this select 0;
_params = _this select 1;

_mtype = _type;
_targetArray = [] call fox_fnc_missionGetRandomLocation;

[_targetArray] call fox_fnc_log;

[_mtype] call fox_fnc_missionHandler; // activat emission and set ao status true if return false report

if(dev)then {sleep 4; }else{sleep 30 };

[_targetArray] call (missionNamespace getVariable format["fox_fnc_missionFile%1",_mtype]);

//_center = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");

