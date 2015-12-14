_hq = _this select 0;

_hq addAction["<t color='#ff1111'>Arsenal Box</t>", {["Open",true] call BIS_fnc_arsenal}];
_hq addAction [ "Strategische Karte", {_this call fox_fnc_hqStrategicMap;} ];


/* todo
hq addAction ["Load...","client\load.sqf"];
hq addAction ["Module","client\loadDev.sqf"];
*/