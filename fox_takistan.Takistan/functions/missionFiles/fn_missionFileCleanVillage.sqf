_targetArray = _this select 0;


hint "asdasdasd";
[_targetArray] call fox_fnc_missionCreateTask; 
[_targetArray] call fox_fnc_missionCreateMarker; 

//[_targetArray] call fox_fnc_missionSpawnEnemies; 
[_targetArray] call fox_fnc_missionCreateDummyUnit; 
[_targetArray] call fox_fnc_missionTrigger;


//[_markerstr,target,hq_logic_papa] call mission_enemy_support;

/*
 * Setup Global Vars
 */
_g = server getVariable "mission_support_object";
_g = hq;
//waitUntil { (kt == kb) AND (damage _g > 0.8 )  };
waitUntil { kt == kb };
hint "done";

[] call fox_fnc_missionCleanUp; 
[] call fox_fnc_missionEnd; 