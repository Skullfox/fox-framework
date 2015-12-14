_type = _this select 0;
_requester = _this select 1;

_name = name _requester;
_clientID = owner _requester;

if (!isServer) exitWith {systemChat "Your are not allowed to do this"};



_missionStatus = server getVariable "missionActive";

if(_missionStatus)then{

	//[[_name,[]], "fox_fnc_serverMissionDenied", _clientID] call BIS_fnc_MP;
	
	[ _name,[] ] remoteExec ["fox_fnc_serverMissionDenied", _clientID];
	
}else{



	[_name,[]] remoteExec ["fox_fnc_serverMissionAllowed", _clientID];
	[_type,[]] remoteExec ["fox_fnc_serverMissionPrepare", 2];

};