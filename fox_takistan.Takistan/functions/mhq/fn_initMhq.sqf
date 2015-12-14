_mhqClass = mhqArray select 0;
_mhqDir = mhqArray select 1;
_mhqMarker = mhqArray select 2;

mhq = _mhqClass createVehicle getmarkerPos _mhqMarker;
mhq setDir _mhqDir;

[west, mhq] call BIS_fnc_addRespawnPosition;

[] spawn fox_fnc_mhqMarker;

_id = mhq addEventHandler ["killed", {_this call fox_fnc_initMhq}];

["mhq",["MHQ","Available"]] call BIS_fnc_showNotification;

publicVariable "mhq";