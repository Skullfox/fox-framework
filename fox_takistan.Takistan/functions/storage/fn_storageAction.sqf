

_container = _this select 0;
_sign =  _this select 1;

_objectsArray = [] call fox_fnc_storageObjects;

_player = player,
{

	_array = _x;

	_class = _x select 0;
	_title = _x select 1;
	_container addAction [_title, { [_this select 3] call fox_storageCreate }, [_class,_this select 1] ];


}foreach _objectsArray;
