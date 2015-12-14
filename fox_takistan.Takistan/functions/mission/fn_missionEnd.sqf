_status = "succeeded";
_message = ["",""];
_showFailMessage = false;
format["markerMissionId_%1",missionId] setMarkerColor "ColorGreen";

if(missionEnd)then{

	//forced ending
	_status = missionEndstatus select 0;
	_message = missionEndstatus select 1;
	_showFailMessage = true;
	missionEnd = FALSE;

	format["markerMissionId_%1",missionId] setMarkerColor "ColorBlue";

};
// false for custom message
[_status,_message,_showFailMessage] call fox_fnc_missionSetTaskState;


