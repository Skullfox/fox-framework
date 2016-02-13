_hq = _this select 0;

_hq addAction["<t color='#ff1111'>Arsenal</t>", {["Open",true] call BIS_fnc_arsenal}];
_hq addAction [ "Strategische Karte", {_this call fox_fnc_hqStrategicMap;} ];

if (isClass (configFile >> "CfgPatches" >> "XLA_FixedArsenal")) then{

	_hq addAction["<t color='#11ff11'>Improved Arsenal</t>", {["Open",true] spawn xla_fnc_arsenal}];


};


if (!isNil {profileNamespace getVariable "bis_fnc_saveInventory_data"}) then {
	private ["_name_index","_VA_Loadouts_Count"];
	_VA_Loadouts_Count = count (profileNamespace getVariable "bis_fnc_saveInventory_data");
	_name_index = 0;
	for "_i" from 0 to (_VA_Loadouts_Count/2) -1 do	{
		[_i,_name_index] spawn {
			private ["_name_index","_loadout_name"];
			_name_index = _this select 1;
			_loadout_name = profileNamespace getVariable "bis_fnc_saveInventory_data" select _name_index;
			_id = hq addAction [("<t color=""#00ff6a"">") + ("Load " + format ["%1",_loadout_name]) + "</t>","lib\=BTC=_addAction.sqf",[[player,[profileNamespace, format ["%1", _loadout_name]]],BIS_fnc_loadInventory],8,true,true,"","true"];

		};
		_name_index = _name_index + 2;
	};
};

/* todo
hq addAction ["Load...","client\load.sqf"];
hq addAction ["Module","client\loadDev.sqf"];
*/
