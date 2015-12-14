sleep 10;

_name = _this select 0;

[
        [
                [_name + ", anfrage verweigert","<t align = 'center' size = '0.7'>%1</t><br/>"], 
                ["...","<t align = 'center' size = '0.7'>%1</t>"]
        ]
] spawn BIS_fnc_typeText;