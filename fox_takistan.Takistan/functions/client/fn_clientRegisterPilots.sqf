
if(!isNil {player getVariable "fox_isPilot"})then {

  _fox_menu = ['fox_menu','Pilot','',{},{true}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions"], _fox_menu] call ace_interact_menu_fnc_addActionToObject;

  _pilot_p1 = ['pilot_1','Pilot 1','',{["pilot1",player] call fox_fnc_clientSwitchToPilot },{true}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions","fox_menu"], _pilot_p1] call ace_interact_menu_fnc_addActionToObject;

  _pilot_p2 = ['pilot_2','Pilot 2','',{ ["pilot2", player] call fox_fnc_clientSwitchToPilot },{true}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions","fox_menu"], _pilot_p2] call ace_interact_menu_fnc_addActionToObject;

  _pilot_p3 = ['pilot_3','Pilot 3','',{["pilot3",player] call fox_fnc_clientSwitchToPilot },{true}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions","fox_menu"], _pilot_p3] call ace_interact_menu_fnc_addActionToObject;

  _pilot_p4 = ['pilot_4','Pilot 4','',{["pilot4",player] call fox_fnc_clientSwitchToPilot },{true}] call ace_interact_menu_fnc_createAction;
  [player, 1, ["ACE_SelfActions","fox_menu"], _pilot_p4] call ace_interact_menu_fnc_addActionToObject;


};
