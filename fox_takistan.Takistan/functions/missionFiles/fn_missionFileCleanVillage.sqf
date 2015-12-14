
//string town
_text = _this select 0;
//location town
_target = _this select 1;

//setup task
[_text, _text,localize "str_clean_city_desc" ] call SHK_Taskmaster_add;

//create marker
_markerstr = [_target] call mission_marker;
_eosMarkerstr = [_target] call missionEosmarker;

target setpos getMarkerPos _markerstr;

[_markerstr] call mission_dummy_unit;
[_markerstr,target,hq_logic_papa] call mission_enemy_support;

systemChat "start eos";
//[false,false,false] call missionCallEos;


[target] call mission_trigger;

/*
 * Setup Global Vars
 */
_g = server getVariable "bs_mission_support_object";
_r = server getVariable "bs_mission";

waitUntil { (kt == kb) AND (damage _g > 0.8 ) OR (mission_abort) };

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