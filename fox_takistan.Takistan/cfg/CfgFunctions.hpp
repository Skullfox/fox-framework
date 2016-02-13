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
			class clientRegisterPilots{};
			class clientSwitchToPilot{};
			class clientSwitchReturn{};
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
			class missionGetRandomLocation{};
			class missionHandler{};
			class missionCreateTask{};
			class missionCreateMarker{};
			class missionCreateDummyUnit{};
			class missionCreateRandomCrates{};
			class missionEnd{};
			class missionSetTaskState{};
			class missionSpawnEnemies{};
			class missionTrigger{};
			class missionCleanUp{};
		};
		class missionFiles
		{
			class missionFileChache{};
			class missionFileCleanVillage{};
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

		class objects
		{
			class spawnBunker{};
		};
		class storage
		{
			class storageContainer{};
			class storageObjects{};
			class storageAction{};
			class storageCreate{};

		};

		class hc
		{
			class hcInit{};
		};

		class marker
		{
			class markerFollow{};
		};

		class service
		{
			class vehicleService{};
		};

	};
