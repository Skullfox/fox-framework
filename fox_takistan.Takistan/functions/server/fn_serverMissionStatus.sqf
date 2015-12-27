private ["_type", "_params","_data"];

_data = _this select 0;
_type = _data select 0;
_requester = _data select 1;

_name = name _requester;
_clientID = owner _requester;

if (!isServer) exitWith {systemChat "Your are not allowed to do this, Sir"};

_missionStatus = server getVariable "missionActive";

if (isNil "_missionStatus") then {
    _missionStatus = false; //is not defined
};

if(_missionStatus)then{
	
	[ _name,[] ] remoteExec ["fox_fnc_serverMissionDenied", _clientID];
	
}else{

	[_name,[]] remoteExec ["fox_fnc_serverMissionAllowed", _clientID];

	[_type,[]] remoteExec ["fox_fnc_serverMissionPrepare", 2];

};