_targetArray = _this select 0;
_type = _this select 1;

_check = false;
_check = [] call fox_fnc_missionHandler; // activat emission and set ao status true if return false report


//waitUntil {_check};

//if(dev)then {sleep 2; }else{sleep 30 };
[_type,3] call fox_fnc_log;
[_targetArray,_type] call (missionNamespace getVariable format["fox_fnc_missionFile%1",_type]);