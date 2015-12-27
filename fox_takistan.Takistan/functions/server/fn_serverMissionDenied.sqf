_name = _this select 0;
[
        [
                [str _name + ", anfrage verweigert","<t align = 'center' size = '0.7'>%1</t><br/>"], 
                ["","<t align = 'center' size = '0.7'>%1</t>"]
        ]
] spawn BIS_fnc_typeText;