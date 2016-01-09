_targetArray = _this select 0;



[_targetArray] call fox_fnc_missionCreateMarker; 
[_targetArray] call fox_fnc_missionCreateTask; 

[position (_targetArray select 0),3,320] call fox_fnc_spawnBunker;
[_targetArray] call fox_fnc_missionSpawnEnemies;  
[_targetArray] call fox_fnc_missionCreateDummyUnit; 
[_targetArray] call fox_fnc_missionTrigger;

//[_markerstr,target,hq_logic_papa] call mission_enemy_support;

_g = server getVariable "mission_support_object";
_g = hq;
//waitUntil { (kt == kb) AND (damage _g > 0.8 )  };
waitUntil { kt == kb };
hint "done";

[] call fox_fnc_missionCleanUp;
[] call fox_fnc_missionEnd;