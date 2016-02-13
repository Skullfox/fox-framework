[] execVM "R3F_LOG\init.sqf";
[] execVM "eos\OpenMe.sqf";
[] execVM "VM\missionFunctions.sqf";
[] execVM "lib\sa_ropes.sqf";




/*
waitUntil { !isNil "T8U_var_useHC" };
waitUntil { !isNil "T8U_var_InitDONE" };


__allowEXEC(__FILE__);

sleep 5;

_kleineGruppe = [ "O_soldier_TL_F", "O_medic_F", "O_soldier_F" ];
_grosseGruppe = [ "O_soldier_SL_F", "O_medic_F", "O_soldier_F", "O_soldier_AR_F", "O_soldier_TL_F", "O_soldier_F", "O_soldier_F", "O_soldier_LAT_F" ];


T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = [];

einheitenTherisa =
[
	[ [ _kleineGruppe, "t1" ], [ "PATROL_URBAN" ] ],
	[ [ _kleineGruppe, "t1_1" ], [ "PATROL_URBAN" ] ],
	[ [ _grosseGruppe, "t1_2" ], [ "GARRISON" ] ]
];

einheitenArifield =
[
	[ [ _kleineGruppe, "t1_3" ], [ "DEFEND" ] ],
	[ [ _kleineGruppe, "t1_4" ], [ "DEFEND" ] ],
	[ [ _kleineGruppe, "t1_5" ], [ "PATROL" ] ],
	[ [ _kleineGruppe, "t1_6" ], [ "PATROL_AROUND" ] ]
];


[ einheitenTherisa ] spawn T8U_fnc_Spawn;


[ "einheitenArifield", "markerArifield", "EAST", "WEST", 800 ] spawn T8U_fnc_Zone;

*/
