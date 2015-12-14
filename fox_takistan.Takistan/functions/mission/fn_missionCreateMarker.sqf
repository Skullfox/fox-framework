_targetArray = _this select 0;

_pos = _targetArray select 0;

_id = server getVariable "missionId";

_markerstr = createMarker ["markerMissionId_" + str(_id), position _pos ];
_markerstr setMarkerShape "ELLIPSE";
_markerstr setMarkerBrush missionMarkerBrush;
_markerstr setMarkerSize missionMarkerSize;
_markerstr setMarkerColor missionMarkerColor;

_markerstr