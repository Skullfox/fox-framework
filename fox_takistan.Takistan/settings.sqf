dev = false;
eosDev = false;




leightsCiv = [];
leightsVeh = [];


/* Mission types*/

missionTypes = ["chaches","hvt","clean_village"];

/* Class Settings */

// Map, MHQ Class, HQ Class
desertMapPresets = [["Takistan"],"rhsusf_m113d_usarmy_medical","rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy","desert"];
woodMapPresets = [["Chernarus","Sara_dbe1"],"rhsusf_m113_usarmy_medical","Land_BagBunker_Large_F","woodland"];

locationBlacklist = ["Panochori","Pita"];
locationList = ["NameVillage"];

enemySpawnZoneEosDistance = 2000;
enemyEosMarkerSize = [450,450];

/* Mission vars*/

missionClassCrates = ["B_supplyCrate_F"];

/* Marker */
missionMarkerSize = [400,400];
missionMarkerColor = "ColorRed";
missionMarkerBrush = "FDiagonal";

server setVariable ["bs_supportObject","PowGen_Big"];

//COS
showTownLabel = false;// Show town information when entering COS zones
debugCOS=false;// Show spawned units on the map
COSpedestrians=true; //Spawn pedestrians
COScars=false;// Spawn Cars
COSparked=true;// Spawn parked cars


uidsMissionAccess = ["76561198000979502"];
uidsAdminAccess = ["76561198000979502"];
