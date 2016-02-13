_mhqClass = worldPreset select 1;



if (getMarkerColor "mhq_spawn" == "") then {

		diag_log format["%1","mhq_spawn not found"];

    deleteMarker "mhqMobileMarker";

}else{

    _mhqMarker = "mhq_spawn";

    mhq = _mhqClass createVehicle getmarkerPos _mhqMarker;
    _d = markerDir _mhqMarker;
    mhq setDir _d;

    [west, mhq] call BIS_fnc_addRespawnPosition;

    ["mhqMobileMarker",mhq] spawn fox_fnc_markerFollow;

    ["mhq",["MHQ","Available"]] call BIS_fnc_showNotification;

    publicVariable "mhq";

};


if (getMarkerColor "mhq_air_spawn" == "") then {

		diag_log format["%1","mhq_air_spawn not found"];

    deleteMarker "mhq_air_marker";
}else{

  _mhqAirMarker = "mhq_air_spawn";

  _pad = "Land_HelipadRescue_F" createVehicle getmarkerPos _mhqAirMarker;

  mhqAir = "CUP_B_UH60M_Unarmed_FFV_MEV_US" createVehicle getmarkerPos _mhqAirMarker;
  _d = markerDir _mhqAirMarker;
  mhqAir setDir _d;

  [west, mhqAir] call BIS_fnc_addRespawnPosition;

  ["mhq_air_marker",mhqAir] spawn fox_fnc_markerFollow;

  ["mhq",["MHQ Air","Available"]] call BIS_fnc_showNotification;

  publicVariable "mhqAir";

};
