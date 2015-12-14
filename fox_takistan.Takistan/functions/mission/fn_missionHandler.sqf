//Set mission no active to block new ones

//server setVariable ["missionActive",true,true];

_missionId = server getVariable "missionId";
_missionId = _missionId + 1;
server setVariable ["missionId",_missionId,true];

server setVariable ["missionEnd",false,true];

publicVariable "server";

