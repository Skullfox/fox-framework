_taskId = format["missionTaskId_%1",missionId];
_state =  _this select 0;
_message = _this select 1;
_showMessage = _this select 2;

if(_showMessage)then{

	[_message,"..."] remoteExec ["fox_fnc_clientCustomMessage"];

};

[_taskId,_state] call SHK_Taskmaster_upd;
