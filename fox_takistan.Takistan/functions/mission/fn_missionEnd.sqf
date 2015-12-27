_status = "succeeded";
_message = ["",""];
_showFailMessage = false;

_missionId = server getVariable "missionId";

format["markerMissionId_%1",_missionId] setMarkerColor "ColorGreen";


_missionEnd = false;
if(_missionEnd)then{

	//forced ending
	_status = missionEndstatus select 0;
	_message = missionEndstatus select 1;
	_showFailMessage = true;
	_missionEnd = FALSE;

	format["markerMissionId_%1",_missionId] setMarkerColor "ColorBlue";

};

// false for custom message
[_status,_message,_showFailMessage] call fox_fnc_missionSetTaskState;

server setVariable ["missionActive",false,true];

publicVariable "server";

