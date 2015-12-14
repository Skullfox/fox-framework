_text = _this select 0;
_target = _this select 1;


[_text, _text,localize "str_kill_hvt_desc"] call SHK_Taskmaster_add;

_markerstr = [_target] call mission_marker;
_eosMarkerstr = [_target] call missionEosmarker;
target setpos getMarkerPos _markerstr;

[_markerstr] call mission_dummy_unit;

_pos_offi = [ target ] call fncLib_findHousePos;   

_class = eos_InfPool call BIS_fnc_selectRandom;

_offi = createVehicle [_class , _pos_offi , [], 0, ""];
_offi disableAI "MOVE";
_offi addEventHandler ["killed", {  [hq_logic_papa, "Feindlichen Offizier getötet"] call zp_globalCommandChatClients;}];

[_markerstr,target,hq_logic_papa] call mission_enemy_support;

systemChat "start eos";
[false,false,false] call missionCallEos;

[target] call mission_trigger;

/*
 * Setup Global Vars
 */

_g = server getVariable "bs_mission_support_object";
_r = server getVariable "bs_mission";


waitUntil { ( !alive _offi) AND (kt == kb) AND (damage _g > 0.8 ) OR (mission_abort) };

if( (_text == _r ) AND (!mission_abort))then{
    player sidechat format["%1 - %2",_text,_r];
    [_markerstr,_r] call mission_successful;
	sleep 5;
	execVM "server\mission\standby.sqf";
}else{
    //Mission abort
   
	_v = server getVariable "bs_mission";
    
	if(_v != "noActive")then{
        
    ['marker'] call fncLib_abortMissionVars;
    ['trigger'] call fncLib_abortMissionVars;
    ['support'] call fncLib_abortMissionVars;
    ['task'] call fncLib_abortMissionVars;

	}else{
        
        [hq_logic_papa, "Keine laufende Mision"] call zp_globalCommandChatClients;
        
    };
    
    
    
}