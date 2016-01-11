class Params
{
	class missionOrderParam
	{
		title = "Mission Order";
		values[] = {0,1};
		texts[] = {"Random","Request"};
		default = 1;
	};

	class cosParam
	{
		title = "Zivilisten";
		values[] = {0,1};
		texts[] = {"Aus","Ein"};
		default = 0;
	};

	class ambientHeliParam
	{
		title = "Ambient Heli";
		values[] = {0,1};
		texts[] = {"Aus","Ein"};
		default = 1;
	};

	class iedsParam
	{
		title = "Ieds";
		values[] = {0,1};
		texts[] = {"Aus","Ein"};
		default = 0;
	};


	class eosForceUnitsParam
	{
		title = "Einheiten via Parameter";
		values[] = {0,1,};
		texts[] = {"Nein ","Ja"};
		default = 0;
	};

	class eosUnitsParam
	{
		title = "Feindeinheiten";
		values[] = {0,1,2,3,4,5};
		texts[] = {"Taliban ","African Militia","AAF Vanilla","RHS MSV","0","Massi Wood"};
		default = 5;
	};

	class eosSupportTimerParam
	{
		title = "Timer für Support Einheiten";
		values[] = {300,600,900};
		texts[] = {"300s","600s","900s"};
		default = 900;
	};

	class allPlayerMedicsParam
	{
		title = "Alle Spieler sind Sanitäter";
		values[] = {0,1};
		texts[] = {"Nein,Ja"};
		default = 1;
	};

	class spawnCustomLoadoutParam
	{
		title = "Spawn mit Custom Loadout";
		values[] = {0,1};
		texts[] = {"Nein,Ja"};
		default = 0;
	};

};
