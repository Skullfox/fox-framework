_targetArray = _this select 0;


[_targetArray]  call fox_fnc_missionCreateTask; 

[_targetArray] remoteExec ["fox_fnc_missionCreateMarker", 2]; 
//[_targetArray] remoteExec ["fox_fnc_missionSpawnEnemies", 2]; 
//[_targetArray] remoteExec ["fox_fnc_missionCreateDummyUnit", 2]; 

/* 0 params 1 amount */
_crates = [_targetArray,3,[]] call fox_fnc_missionCreateRandomCrates;

//waitUntil { (!alive ((_crates select 0) select 0) ) AND (!alive ((_crates select 1)select 0)) AND (!alive ((_crates select 2)select 0)) };
//waitUntil { (!alive ((_crates select 0)select 0) ) AND (!alive ((_crates select 1)select 0)) AND (!alive ((_crates select 2)select 0)) OR ( missionEnd) };
//[] remoteExecCall ["fox_fnc_missionEnd", 2]; 
