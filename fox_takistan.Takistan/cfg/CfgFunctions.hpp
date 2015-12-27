	class fox
	{
		class settings
		{
			class missionSettings{preInit = 1;file = "settings.sqf";};
		};
		class modules{
			class modulesUnits{preInit = 1;};
			//class modulesIeds{};
			class modulesCivs{};
			//class modulesJerryCan{};
		};	

		class server
		{
			class serverMissionStatus{};
			class serverMissionDenied{};
			class serverMissionAllowed{};
			class serverMissionPrepare{};
			class serverMissionLoad{};
			class serverMissionAbort{};
		};

		class client
		{
			class clientIntro{};
			class clientInteractionAce{};
			class clientRequestMission{};
			class clientCustomMessage{};
			class clientActionJoinGroup{};
			class clientCustomLoadout{};
		};

		class effects
		{
			class sandEffects{};
			class hqEffects{};
		};

		class mhq
		{
			class teleportMhq{};
			class initMhq{}; 
			class mhqMarker{}; 
		};	

		class hq
		{
			class prepareActionsHq{};
			class initHq{};
			class hqStrategicMapTeleport{};
			class hqStrategicMap{};
		};	

		class admin
		{
			class cheatMenu{};
			class adminTeleport{};
			class adminCaptive{};
		};

		class mission
		{
			class missionFunctions{preInit = 1;};
			class supportMarkerHeli{};
			class initMissionVars{};
			class missionGetRandomLocation{};
			class missionHandler{};
			class missionCreateTask{};
			class missionCreateMarker{};
			class missionCreateDummyUnit{};
			class missionCreateRandomCrates{};
			class missionEnd{};
			class missionSetTaskState{};
			class missionSpawnEnemies{};
		};
		class missionFiles
		{
			class missionFileChache{};
		};
		class ares
		{
			class aresModules{postInit = 1;};
		};
		class zeus
		{
			class zeusModul{preInit = 1;};
		};
		class debug
		{
			class log{};
		};

	};