_hqClass = hqArray select 0;
_hqDir = hqArray select 1;
_hqMarker = hqArray select 2;

hq = _hqClass createVehicle getmarkerPos _hqMarker;
hq setDir _hqDir;

hq allowDamage false;

[west, hq] call BIS_fnc_addRespawnPosition;
[hq] remoteExecCall ["fox_fnc_prepareActionsHq"];
