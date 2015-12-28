_pos = _targetArray select 0;


systemChat format["%1",_pos];


kt = str( floor( time ) ) + "_" + str ( floor( random( 999 ) ) );
kb = 'birdistheword'; 

_trigger = createTrigger ["EmptyDetector", position _pos ];
_trigger setTriggerArea [400, 400, 0, true];
_trigger setTriggerActivation [enemyTriggerStr, "NOT PRESENT", true];
_trigger setTriggerStatements ["this",format["kb = '%1'",kt], ""];

server setVariable ["mission_trigger",_trigger];
server setVariable ["mission_cleaned",kt];