_targetArray = _this select 0;

_pos = _targetArray select 0;

_missionId = server getVariable "missionId";

_markerstr = createMarker ["markerMissionEosId_" + str(_missionId), position _pos ];
_markerstr setMarkerShape "ELLIPSE";
_markerstr setMarkerBrush missionMarkerBrush;
_markerstr setMarkerSize missionMarkerSize;
_markerstr setMarkerColor missionMarkerColor;

_params = ["markerMissionEosId_" + str(_missionId)],[5,3],[6,3],[3,1],[2],[0],[0,0],[5,1,enemySpawnZoneEosDistance,enemySideFactionEos ,TRUE,eosDev];
[ _params ] call EOS_Spawn;

/*
if(false)then{

  _params remoteExec ["EOS_Spawn",hcId];
  	["hc active",3] call "fox_fnc_log";
}else{

  [ _params ] call EOS_Spawn;
  	["hc not active",3] call "fox_fnc_log";
}
*/
