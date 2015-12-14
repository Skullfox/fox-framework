_type = _this select 0,
_requester = _this select 1;

if(dev)then{
	hint format["%1 %2",_type,_requester];
};

[
        [
                ["Anfrage an HQ","<t align = 'center' size = '0.7'>%1</t><br/>"], 
                ["...","<t align = 'center' size = '0.7'>%1</t>"]
        ]
] spawn BIS_fnc_typeText;

[_type,_requester] remoteExecCall ["fox_fnc_serverMissionStatus", 2];