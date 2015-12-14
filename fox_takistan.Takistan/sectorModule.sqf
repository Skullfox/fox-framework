//===================================================================================================================
// This script is called to place a sector module on the map for the players to assualt/ defend.
// How to use: Execute this in an execution/init box of a item or trigger
//              null = [sectorMrk,sectorSize,side1,side2,defaultOwner,costAir,costInfantry,costPlayers,
//                      costTracked,costWater,costWheeled,designation,name,onOwnerChange,ownerLimit,
//                      scoreReward,taskDescription,taskOwner,taskTitle] execVM "sectorModule.sqf";
// Variable Explination:
//              sectorMrk     = name of the marker where the sector must be spawned. Ex "sectorMarker" **Critical Variable**
//              trgSize         = Size of the secor that should be spawned. **Optional, Default: 500**
//              side1 & side 2  = is the sides that will contend for the sector. **Optional, Default: east**
//              defaultOwner    = is the default owner the sector. "-1"= None, "0"= West, "1" = East, "2"= Indi **Optional, String, Default: "-1"**
//              costAir         = The cost for the side if an air unit is destroyed. **Optional, Default: "2"**
//              costInfantry    = Cost per infantry unit killed for side. **Optional, Default: "1"**
//              costPlayers     = Cost per player killed for side. **Optional, Default:"2"**
//              costTracked     = Cost per tracked,ie tanks, unit killed. **Optional, Default:"4"**
//              costWater       = Cost per water type unit killed. **Optional, Default:"0"**
//              costWheeled     = Cost per wheeled unit, ie Light Armor, killed. **Optional, Default:"2"**
//              designation     = Designation for the sector. **Optional, Default:"A"**
//              name            = Name for the sector. **Optional, Default:"Alpha"**
//              onOwnerChange   = Script/trigger to activate when ownership change. **Optional, Default:""**
//              ownerLimit      = **Optional, Default:"0"**
//              scoreReward     = **Optional, Default:"0"**
//              taskDescription = Task description. **Optional, Default:"Capture Alpha by eliminating the enemies"**
//              taskOwner       = To whom must the task be assigned. **Optional, Default:"3"**
//              taskTitle       = Title of task. **Optional, Default:"Capture Alpha"**
//
//===================================================================================================================

//Exit if we are not the server 
if !( isServer ) exitWith {}; 

private ["_pos","_trgSize","_side1","_side2","_defaultOwner","_costAir","_costInfantry",
		"_costPlayers","_costTracked","_costWater","_costWheeled","_designation",
		"_name","_onOwnerChange","_ownerLimit","_scoreReward","_taskDescription","_taskOwner","_taskTitle"];

//Default setting,  which are optional
_pos            = _this select 0;
_pos 		  = _pos call BIS_fnc_position; 
_trgSize        = [_this,1,500,[[],objNull,""],2] call BIS_fnc_param;   //A size for the trigger 
_side1          = [_this,2,east,[[],objNull,""],1] call BIS_fnc_param;
_side2          = [_this,3,west,[[],objNull,""],1] call BIS_fnc_param;
_defaultOwner   = [_this,4,"-1",[[],objNull,""],1] call BIS_fnc_param;
_costAir        = [_this,5,"2",[[],objNull,""],1] call BIS_fnc_param;
_costInfantry   = [_this,6,"1",[[],objNull,""],1] call BIS_fnc_param;
_costPlayers    = [_this,7,"2",[[],objNull,""],1] call BIS_fnc_param;
_costTracked    = [_this,8,"4",[[],objNull,""],1] call BIS_fnc_param;
_costWater      = [_this,9,"0",[[],objNull,""],1] call BIS_fnc_param;
_costWheeled    = [_this,10,"2",[[],objNull,""],1] call BIS_fnc_param;
_designation    = [_this,11,"A",[[],objNull,""],1] call BIS_fnc_param;
_name           = [_this,12,"Alpha",[[],objNull,""],1] call BIS_fnc_param;
_onOwnerChange  = [_this,13,"",[[],objNull,""],1] call BIS_fnc_param;
_ownerLimit     = [_this,14,"0",[[],objNull,""],1] call BIS_fnc_param;
_scoreReward    = [_this,15,"0",[[],objNull,""],1] call BIS_fnc_param;
_taskDescription= [_this,16,"Capture Alpha by eliminating the enemies",[[],objNull,""],1] call BIS_fnc_param;
_taskOwner      = [_this,17,"3",[[],objNull,""],1] call BIS_fnc_param;
_taskTitle      = [_this,18,"Capture Alpha",[[],objNull,""],1] call BIS_fnc_param;

//Create the sector logic 
_logic = (createGroup sideLogic) createUnit ["ModuleSector_F",_pos,[],0,"NONE"]; 

//Sector settings
_logic setVariable ["CostAir",_costAir]; 
_logic setVariable ["CostInfantry",_costInfantry]; 
_logic setVariable ["CostPlayers",_costPlayers]; 
_logic setVariable ["CostTracked",_costTracked]; 
_logic setVariable ["CostWater",_costWater]; 
_logic setVariable ["CostWheeled",_costWheeled]; 
_logic setVariable ["DefaultOwner",_defaultOwner]; 
_logic setVariable ["Designation",_designation]; 
_logic setVariable ["Name",_name]; 
_logic setVariable ["OnOwnerChange",_onOwnerChange]; 
_logic setVariable ["OwnerLimit",_ownerLimit]; 
_logic setVariable ["ScoreReward",_scoreReward]; 
_logic setVariable ["TaskDescription",_taskDescription]; 
_logic setVariable ["TaskOwner",_taskOwner]; 
_logic setVariable ["TaskTitle",_taskTitle]; 

//Set the sides for the sector 
_logic setVariable ["sides",[ _side1, _side2 ]]; 

//Wait until sector is initialised 
waitUntil { 
    !isNil { _logic getVariable [ "finalized", nil ] } && 
    { !( _logic getVariable [ "finalized", true ] ) } 
}; 

//Set the trigger size on the sector 
_logic setVariable [ "size", _trgSize ]; 
//Make the module update its trigger 
[ _logic, [], true, "area" ] call BIS_fnc_moduleSector; 

//Unfortunately the sector has not been written to also update its marker so.. 
//Get the modules trigger 
_trg = ( _logic getVariable "areas" ) select 0; 
//Get the triggers marker 
_mrk = ( _trg getVariable "markers" ) select 0; 
//Update the markers size 
_mrk setMarkerSize [ _trgSize, _trgSize ];  