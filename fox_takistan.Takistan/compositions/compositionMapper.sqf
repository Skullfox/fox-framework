//===================================================================================================================
// This script is called to "map" any zeus saved objects around the marker position. It mapped compositions will be
// called from file with the format example below. The composition route should be clearly specified to the composition.sqf
// How to use: Execute this in an execution box or through addAction command 
//             null = ["anchorMrk","compPath"] execVM "compositionMapper.sqf";
//             "anchorMrk" = is the name of the marker which serves as the reference point from which the objects 
//                            are copied. 
//              "compPath" = is the composition directory path to the composition.sqf. Ex. "compositions\cityGravia_Comp1.sqf"
//===================================================================================================================
_anchorMrk  = _this select 0;
_compPath   = _this select 1;

hint "Placing compilations";
0 = [_anchorMrk, 0, call (compile (preprocessFileLineNumbers _compPath))] call BIS_fnc_ObjectsMapper;