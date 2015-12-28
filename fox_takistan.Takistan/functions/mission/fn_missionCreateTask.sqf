_targetArray = _this select 0;

_name = _targetArray select 1;

_missionId = server getVariable "missionId";

_id = format["missionTaskId_%1",_missionId]; 

_text = [server] call getTaskTranslation;

_title = _text select 0; 
_desc = _text select 1; 

[_id,_title + " - " + str(_name),_desc] call SHK_Taskmaster_add;

