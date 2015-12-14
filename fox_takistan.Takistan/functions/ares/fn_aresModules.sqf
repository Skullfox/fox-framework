if (isClass (configFile >> "CfgPatches" >> "Ares")) then
{
    // Ares is loaded, register the custom module.
   [
		"FOX",
		"Spawn My Vehicle",
		{
			"C_Offroad_01_F" createVehicle (_this select 0);
		}
	] call Ares_fnc_RegisterCustomModule;


    // Ares is loaded, register the custom module.
   [
		"FOX",
		"Sektor",
		{
			[(_this select 0),100] execVM "sectorModule.sqf";
		}
	] call Ares_fnc_RegisterCustomModule;


};