_marker = _this select 0;
_obj = _this select 1;

[_marker,_obj] spawn {

    _marker = _this select 0;
    _obj = _this select 1;

    while{alive _obj}do{

       _marker setMarkerPos getpos _obj;

       sleep 3;
    }

};
