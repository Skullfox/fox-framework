diag_log format ["#######%1 start client#######",missionName + "_" + worldname];

cutText ["Warte auf Server","BLACK FADED"];
sleep 5;
cutText ["Lade...","BLACK IN",3];

systemChat "Start Client";


if(!dev)then{

   [] call fox_fnc_clientIntro;

}else{
	["Intro skipped"] call fox_fnc_log;
};

_uid = getPlayerUID player;

/*
if( (typeOf player == "B_G_Soldier_TL_F" ) OR (typeOf player == "B_G_Soldier_TL_F" ) OR (  _uid in uidsMissionAccess  )  OR (_uid  == "_SP_PLAYER_") )then{
    
    //["player", [0x0F], -66, ["client\menu\menu.sqf", "main"]] call CBA_ui_fnc_add;
    
    execVM "client\menu\missions.sqf";
        
};
*/

/* Local params */
_allPlayerMedicsParam = "allPlayerMedicsParam" call BIS_fnc_getParamValue;

if(_allPlayerMedicsParam == 1)then{

	player setvariable ["ace_medical_medicClass", 1, true];

};
/* ------------ */

[] call fox_fnc_sandEffects;
[] call fox_fnc_cheatMenu;
[] call fox_fnc_clientInteractionAce;
[player] call fox_fnc_clientCustomLoadout;
systemChat "Client ready";





