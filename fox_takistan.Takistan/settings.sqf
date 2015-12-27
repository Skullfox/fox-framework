dev = true;
eosDev = false;

 
 

leightsCiv = [];
leightsVeh = [];


/* Mission types*/

missionTypes = ["chaches","hvt","clean_village"];

/* Class Settings */

mhqArray = ["CUP_B_HMMWV_Transport_USA",376,"mhq_spawn","mhqMobileMarker"];
hqArray = ["Land_BagBunker_Large_F",90,"hq_spawn"];

locationBlacklist = ["Panochori"];
locationList = ["NameVillage"];

enemySpawnZoneEosDistance = 2000;
enemyEosMarkerSize = [450,450];

/* Mission vars*/

missionClassCrates = ["B_supplyCrate_F"];

/* Marker */
missionMarkerSize = [400,400];
missionMarkerColor = "ColorRed";
missionMarkerBrush = "FDiagonal";

/* Dummy unit */
missionDummyUnitBox = "O_Truck_02_covered_F";


server setVariable ["bs_supportObject","PowGen_Big"];

//COS
showTownLabel = false;// Show town information when entering COS zones
debugCOS=false;// Show spawned units on the map
COSpedestrians=true; //Spawn pedestrians
COScars=false;// Spawn Cars
COSparked=true;// Spawn parked cars


uidsMissionAccess = ["76561198000979502"];
uidsAdminAccess = ["76561198000979502"];