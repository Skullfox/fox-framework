

if( (  _uid in uidsAdminAccess  )  OR (_uid  == "_SP_PLAYER_" ) )then{


	_menu = ['hacky','Cheat Menü','',{},{true}] call ace_interact_menu_fnc_createAction;

	[player, 1, ["ACE_SelfActions"], _menu] call ace_interact_menu_fnc_addActionToObject;


	_teleMenu = ['hacky_porter','Teleport','',{[player] call fncLib_teleport;},{true}] call ace_interact_menu_fnc_createAction;
	_neutralMenu = ['hacky_neutral','Neutral','',{[player] call fncLib_captive;},{true}] call ace_interact_menu_fnc_createAction;

	[player, 1, ["ACE_SelfActions", "hacky"], _teleMenu] call ace_interact_menu_fnc_addActionToObject;
	[player, 1, ["ACE_SelfActions", "hacky"], _neutralMenu] call ace_interact_menu_fnc_addActionToObject;

};


