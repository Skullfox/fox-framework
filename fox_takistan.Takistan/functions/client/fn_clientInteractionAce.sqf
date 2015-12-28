_hq_menu = ['hq_menu','Hauptquartier','',{},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _hq_menu] call ace_interact_menu_fnc_addActionToObject;


_abort = ['abort','Mission abbrechen','',{createDialog "missionDialog"; },{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","hq_menu"], _abort] call ace_interact_menu_fnc_addActionToObject;


_chache = ['chache','Waffenlager zerstören','',{["Chache",player] call fox_fnc_clientRequestMission},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "hq_menu"], _chache] call ace_interact_menu_fnc_addActionToObject;

_city = ['clean_village','Stadt säubern','',{["CleanVillage",player] call fox_fnc_clientRequestMission},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "hq_menu"], _city] call ace_interact_menu_fnc_addActionToObject;

/* Custom Actions */

_selfInteraction = ['fox_self','Interagieren','',{},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _selfInteraction] call ace_interact_menu_fnc_addActionToObject;

_joinGroup = ['abort','Komm in meine Gruppe','',{ [player] call fox_fnc_clientActionJoinGroup },{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","fox_self"], _joinGroup] call ace_interact_menu_fnc_addActionToObject;


