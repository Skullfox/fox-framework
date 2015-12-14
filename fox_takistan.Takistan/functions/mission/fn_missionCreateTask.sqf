_targetArray = _this select 0;

_name = _targetArray select 1;

_missionId = server getVariable "missionId";

_id = format["missionTaskId_%1",_missionId]; 
_title = format["placeHolderTitle %1",_name]; 
_text = format["placeHolderText %1",_missionId]; 

[_id,_title,_text ] call SHK_Taskmaster_add;

