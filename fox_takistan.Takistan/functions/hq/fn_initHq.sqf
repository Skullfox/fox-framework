_hqClass = worldPreset select 2;

_hqMarker = "hq_spawn";

hq = _hqClass createVehicle getmarkerPos _hqMarker;
_d = markerDir _hqMarker;
hq setDir _d;

hq allowDamage false;

//[west, hq] call BIS_fnc_addRespawnPosition;

[hq] remoteExecCall ["fox_fnc_prepareActionsHq",0,true];

hq setVariable ["R3F_LOG_disabled", true];

if(_hqClass isEqualTo "rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy")then{

	hq animateDoor ["extend_shelter_source",1,true];
	hq lock true;
	hq setFuel 0;

};


/*Respawn West */

// CampEast_EP1 MASH
_sanClass = "MASH";
_mash = _sanClass createVehicle getmarkerPos "respawn_west";
_d = markerDir  "respawn_west";
_mash allowDamage false;

if(_sanClass isEqualTo "MASH")then{

	_mash setDir (_d - 180); //0° exit on north,we wont it on south , fix it with -180

}else{
	
	_mash setDir _d ;

};
