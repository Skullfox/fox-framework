diag_log format ["#######%1 start client#######",missionName + "_" + worldname];

/*
cutText ["Warte auf Server","BLACK FADED"];
sleep 5;
cutText ["Lade...","BLACK IN",3];
*/
systemChat "Start Client";


if(!dev)then{

   [] call fox_fnc_clientIntro;

}else{
	 ["Intro skipped"] call fox_fnc_log;
};

profileNamespace setVariable["fox_uid",getPlayerUID player];

/* Local params */
_allPlayerMedics = "allPlayerMedicsParam" call BIS_fnc_getParamValue;

if(_allPlayerMedics isEqualTo 1)then{

	player setvariable ["ace_medical_medicClass", 1, true];

//ACE_IsEngineer

};

/* Spawn with custom loadout */

_customLoadout = "spawnCustomLoadoutParam" call BIS_fnc_getParamValue;

if(_customLoadout isEqualTo 1)then{

	[player] call fox_fnc_clientCustomLoadout;

};


[] spawn{
  while {true} do{
    "client_fps" setMarkerText format ["Client FPS: %1", (floor diag_fps)];
    sleep 3;
  }
};


/* ------------ */
player setVariable ["BIS_noCoreConversations", true];
murshun_easywayout_canSuicide = true;

[] call fox_fnc_sandEffects;
//[] call fox_fnc_cheatMenu;

[] call fox_fnc_clientInteractionAce;
//[] call fox_fnc_modulesJerryCan;
systemChat "Client ready";
[] call fox_fnc_clientRegisterPilots;
#include "SHK_Fastrope.sqf"
