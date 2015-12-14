



_explosive = [player, player modelToWorldVisual [0,0, 0], 0,"IEDUrbanSmall_Remote_Mag", "PressurePlate", []] call ACE_Explosives_fnc_placeExplosive;
_e = createVehicle ["Land_Tyres_F", position _explosive,[], 0, "CAN_COLLIDE"];
_e addEventHandler ["Explosion",{hint format ["%1 was killed by %2",_this select 0,_this select 1];deletevehicle (_this select 0) }];


//myaction = ["Talk","Talk","",{hint "Hello"},{true},{}] call ace_interact_menu_fnc_createAction;
//["Land_Fire_barrel_burning", 0, ["ACE_MainActions"], myaction] call ace_interact_menu_fnc_addActionToClass;

//_action = ["ace_MainActions", "Interactions", "", {true}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction;
//[_e, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

 //[5, [], {Hint "Finished!"}, {hint "Failure!"}, "My Title"] call ace_common_fnc_progressBar

_objectToAddActionTo = _e;
_actionName = "disarm"; //Doesn't really matter.. something unique with no spaces.
_actionText = "Überprüfen";
_actionIcon = ""; 
_actionCode = { hint "this is called, not spawned"; }; // Code called when action is activated
_actionParams = []; //parameters for _actionCode
_condition = { true }; //condition (like addAction)
_position = [0,0,0]; //or selection name in model or code
_distance = 5; //distance for the action
[_objectToAddActionTo, 0, [], [_actionName,_actionText,"",_actionCode, _condition , {}, _actionParams, _position, _distance] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;