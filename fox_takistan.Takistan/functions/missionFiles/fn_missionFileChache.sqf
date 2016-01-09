_targetArray = _this select 0;

_crates = [_targetArray,3] call fox_fnc_missionCreateRandomCrates;

[_targetArray] call fox_fnc_missionCreateMarker; 

[_targetArray] call fox_fnc_missionCreateTask; 
[position (_targetArray select 0),3,320] call fox_fnc_spawnBunker;
[_targetArray] call fox_fnc_missionSpawnEnemies; 



waitUntil { (!alive ((server getVariable "missionChaches") select 0) ) AND (!alive ((server getVariable "missionChaches") select 1) ) AND (!alive ((server getVariable "missionChaches") select 2 )) };
[] call fox_fnc_missionCleanUp; 
[] call fox_fnc_missionEnd; 