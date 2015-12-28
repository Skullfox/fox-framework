_mhqClass = worldPreset select 1;

_mhqMarker = "mhq_spawn";

mhq = _mhqClass createVehicle getmarkerPos _mhqMarker;
_d = markerDir _mhqMarker;
mhq setDir _d;

[west, mhq] call BIS_fnc_addRespawnPosition;

[] spawn fox_fnc_mhqMarker;

_id = mhq addEventHandler ["killed", {_this call fox_fnc_initMhq}];

["mhq",["MHQ","Available"]] call BIS_fnc_showNotification;

publicVariable "mhq";