_type = _this select 0,
_requester = _this select 1;



/*
[
        [
                ["Anfrage an HQ","<t align = 'center' size = '0.7'>%1</t><br/>"], 
                ["...","<t align = 'center' size = '0.7'>%1</t>"]
        ]
] spawn BIS_fnc_typeText;
*/

[2, [_type,_requester], { [_this select 0, _this select 1] remoteExecCall ["fox_fnc_serverMissionStatus", 2]}, {hint "Abgebrochen!"}, "Anfrage an HQ ..."] call ace_common_fnc_progressBar

