
// number ieds; values between [0,4]
// 0 - no ieds
// 4 - max. possible according to the minimum distance between two ieds
fox_number_ieds = 2;

fox_min_distance_between_ieds = 1000;

fox_ied_container = [
	"SatchelCharge_Remote_Mag"
];


fox_ied_boomlist = ["M_Mo_120mm_AT","Bo_GBU12_LGB_MI10","Sh_122_HE"];

//comment out the next line if no greenzone should be established
fox_ied_greenzone = [getmarkerpos "hq_spawn",1100]; // [position,radius] no IED shall spawn


if(!isServer || fox_number_ieds == 0) exitWith {};

private ["_iedpos","_offset","_ied"];


_roads = [1500,1500,0] nearRoads 25000;

if(not isNil "fox_ied_greenzone") then {
	_roads = _roads - ((fox_ied_greenzone select 0) nearRoads (fox_ied_greenzone select 1));
};


_number_ieds = ceil ((count _roads / fox_min_distance_between_ieds) * fox_number_ieds);


_created_ieds = [];

while{count _roads > 0 && count _created_ieds < _number_ieds} do {
	_j = (count _roads - 1) min (round random (count _roads));
	_iedpos = _roads select _j;
	_roads = _roads - [_iedpos]; // in each step _roads get smaller, hence deterministic

	if({_x distance _iedpos < fox_min_distance_between_ieds} count _created_ieds == 0 && count roadsConnectedTo _iedpos >= 2) then {

		_j = (count fox_ied_container - 1) min (round random (count fox_ied_container));
		//_ied = (fox_ied_container select _j) createVehicle getpos _iedpos;
		_ied = ("Land_Tyres_F") createVehicle getpos _iedpos;
		
		_created_ieds = _created_ieds + [_ied];

		_offset = if(random 2 > 1) then {-7.5 - random 10} else {7.5 + random 10};
		_iedpos = _iedpos modelToWorld [_offset,0,0];
		_ied setPos [_iedpos select 0, _iedpos select 1, 0];


		_explosive = [_ied, _ied modelToWorldVisual [0,0, 0], 0,"IEDUrbanSmall_Remote_Mag", "PressurePlate", []] call ACE_Explosives_fnc_placeExplosive;
		
		_e = createVehicle ["CUP_IED_V1",position _ied,[], 0, "CAN_COLLIDE"];

		_e addEventHandler ["Explosion",{hint format ["%1 was killed by %2",_this select 0,_this select 1];];


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


		//deleteVehicle _ied;
		
		_markerstr = createMarker ["str_" + str(_iedpos),  _iedpos ];
		_markerstr setMarkerShape "ELLIPSE";
		_markerstr setMarkerBrush "Solid";
		_markerstr setMarkerSize [15,15];
		_markerstr setMarkerColor "ColorYellow";
		
	};
};

diag_log format["[%1]  ##### TFOR IEDs INITIALIZED; number ieds created: %2 #####",time,count _created_ieds];


