_hq = _this select 0;

_hq addAction["<t color='#ff1111'>Arsenal</t>", {["Open",true] call BIS_fnc_arsenal}];
_hq addAction [ "Strategische Karte", {_this call fox_fnc_hqStrategicMap;} ];

if (isClass (configFile >> "CfgPatches" >> "XLA_FixedArsenal")) then{

	_hq addAction["<t color='#11ff11'>Improved Arsenal</t>", {["Open",true] spawn xla_fnc_arsenal}];


};

/* todo
hq addAction ["Load...","client\load.sqf"];
hq addAction ["Module","client\loadDev.sqf"];
*/