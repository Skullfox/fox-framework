playMusic  "foxIntro";
[] spawn {

private ["_colorWest", "_colorEast"];

_colorWest = WEST call BIS_fnc_sideColor;
_colorEast = EAST call BIS_fnc_sideColor;
// set transparency for colors
{_x set [3, 0.73]} forEach [_colorWest, _colorEast];
[
    getPos player, // Target position (replace MARKERNAME)
    "Willkommen " + str(name player) + " in " + str(worldName), // SITREP text
    100,                    // 400m altitude
    100,                    // 200m radius
    0,                      // 0 degrees viewing angle
    1,                      // Clockwise movement
    [   // add Icon at player's position
        ["\A3\ui_f\data\map\markers\system\empty_ca.paa", _colorWest, getPos player, 1, 1, 0, "" , 0],
        // add Icon at enemy/target position
        ["\A3\ui_f\data\map\markers\system\empty_ca.paa", _colorEast, markerPos "MARKERNAME", 1, 1, 0, "Enemy Camp", 0]
    ]
] spawn BIS_fnc_establishingShot;

};