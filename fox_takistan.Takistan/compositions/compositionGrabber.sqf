//===================================================================================================================
// This script is called to "grab" any zeus placed objects around the marker position. It is stored to the clipboard.
// How to use: Execute this in an execution box or through addAction command 
//             null = ["anchorMrk",size] execVM "compositionGrabber.sqf";
//             "anchorMrk" = is the name of the marker which serves as the reference point from which the objects 
//                            are copied. 
//              size = is the maximum raduis from the reference point that any object is copied 
//===================================================================================================================

hint "Grabbing compilations";
_markerName       = _this select 0;
_size             = _this select 1;
0 = [getMarkerPos _markerName, _size] call BIS_fnc_objectsGrabber;