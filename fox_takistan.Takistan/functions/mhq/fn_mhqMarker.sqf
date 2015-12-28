_mhqMarker = "mhqMobileMarker";

[mhq,_mhqMarker] spawn {
    
    _mhq = _this select 0;
    _mhqMarker = _this select 1;
    
    while{alive _mhq}do{
        
       _mhqMarker setMarkerPos getpos _mhq;
       sleep 3;
    }
    
};

