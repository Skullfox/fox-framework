
_marker = "gservice_marker";

_class  = groundServiceClass;

_c = _class createVehicle getmarkerPos _marker;

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker];
_trg setTriggerArea [10, 10, 0, false];
_trg setTriggerActivation ["ANY", "PRESENT", true];
_trg setTriggerStatements ["(""LandVehicle"" countType thislist  > 0) && ((getpos (thislist select 0)) select 2 < 1)", "_xhandle= (thislist select 0) execVM ""lib\x_reload.sqf"";", ""];




_marker = "aservice_marker";
_trg = createTrigger ["EmptyDetector", getMarkerPos _marker];
_trg setTriggerArea [10, 10, 0, false];
_trg setTriggerActivation ["ANY", "PRESENT", true];

_trg setTriggerStatements ["(""Air"" countType thislist  > 0) && ((getpos (thislist select 0)) select 2 < 1)", "_xhandle= (thislist select 0) execVM ""lib\x_reload.sqf"";", ""];

hint "Service Online";

_pad = "Land_HelipadCircle_F" createVehicle getmarkerPos _marker;
