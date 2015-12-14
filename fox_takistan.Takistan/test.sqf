/*      nul = ["safezone",number] call DES_fnc_getRndRoadPos;
*       safezone is a markerarea on the map with dir 0° in with
*       no roadpositions should be found.
*       return array of roadpositions outside of the safezone.
*/
//get variables (safezone, amount of road positions)
_safezone_marker = _this select 0;
_pos_count = (_this select 1)-1;
//get world data
_safezone_center = getMarkerPos _safezone_marker;
_safezone_size = getMarkerSize _safezone_marker;
_size = worldSize;
_mapcenter = [_size/2,_size/2,0];
//get all road positions
_near_roads = _mapcenter nearRoads _size;
_road_array = [];
_rnd_road = _near_roads call BIS_fnc_selectRandom;
_rnd_road = getPos _rnd_road;
//select road positions outside the safezone
while {_pos_count>= count _road_array} do
{
_rnd_road = _near_roads call BIS_fnc_selectRandom;
_rnd_road = getPos _rnd_road;
 
if( ( ( (_rnd_road select 0) < ((_safezone_center select 0) - (_safezone_size select 0)/2) ) || ( (_rnd_road select 0) > ((_safezone_center select 0) + (_safezone_size select 0)/2) ) ) &&( ( (_rnd_road select 1) < ((_safezone_center select 1) - (_safezone_size select 1)/2))||((_rnd_road select 1) > ((_safezone_center select 1) + (_safezone_size select 1)/2) ) ))then{_road_array pushback _rnd_road;};     
};
//return
 hint format["%1",_road_array];
//_road_array



{
_markerstr = createMarker ["markerMissionId_" + str(_x select 0),_x ];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "Minefield";
} forEach _road_array;


