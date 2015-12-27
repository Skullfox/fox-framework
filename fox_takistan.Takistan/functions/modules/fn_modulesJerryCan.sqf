


		_objectToAddActionTo = "Fuel_can";
		_actionName = "fuelcan"; //Doesn't really matter.. something unique with no spaces.
		_actionText = "Umfüllen";
		_actionIcon = ""; 
		_actionCode = { hint "this is called, not spawned"; }; // Code called when action is activated
		_actionParams = []; //parameters for _actionCode
		_condition = { true }; //condition (like addAction)
		_position = [0,0,0]; //or selection name in model or code
		_distance = 10; //distance for the action
		[_objectToAddActionTo, 0, [], [_actionName,_actionText,"",_actionCode, _condition , {}, _actionParams, _position, _distance] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToClass;
