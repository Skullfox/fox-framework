_targetArray = _this select 0;

_crates = false;
_crates = [_targetArray,3] call fox_fnc_missionCreateRandomCrates;

[_targetArray] call fox_fnc_missionCreateTask; 
[_targetArray] call fox_fnc_missionCreateMarker; 

[_targetArray] call fox_fnc_missionSpawnEnemies; 
[_targetArray] call fox_fnc_missionCreateDummyUnit; 


waitUntil { (!alive ((server getVariable "missionChaches") select 0) ) AND (!alive ((server getVariable "missionChaches") select 1) ) AND (!alive ((server getVariable "missionChaches") select 2 )) };
[] call fox_fnc_missionEnd; 