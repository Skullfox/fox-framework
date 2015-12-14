_str1 = _this select 0;
_str2 = _this select 1;

[
        [
                [_str1,"<t align = 'center' size = '0.7'>%1</t><br/>"], 
                [_str2,"<t align = 'center' size = '0.7'>%1</t>"]
        ]
] spawn BIS_fnc_typeText;