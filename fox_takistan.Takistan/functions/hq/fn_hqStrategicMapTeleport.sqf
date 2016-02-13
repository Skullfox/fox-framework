_arg = _this select 0;
_pos = _arg select 0;
_player = _arg select 1;
_veh = _arg select 2;

hint format["%1",_pos];

if(alive _veh)then{
	_player moveincargo _veh;
}else{
	hint "Fahrzeug ist nicht verfügbar";
};
