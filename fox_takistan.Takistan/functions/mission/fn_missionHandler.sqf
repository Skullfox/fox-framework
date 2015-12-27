//Set mission no active to block new ones
// 0 - Mission Type
// 1 --
server setVariable ["missionType",_this select 0 ,true];
server setVariable ["missionActive",true,true];
server setVariable ["missionId","fox_id_"+ str(floor(time)) ,true];
publicVariable "server";

