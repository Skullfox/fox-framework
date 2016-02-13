_mappos = [getMarkerpos "hq_spawn" select 0, getMarkerpos "hq_spawn" select 1, 1500];
[
    "",
    _mappos,
    [

        [
            getMarkerPos "mhqMobileMarker",
            { [_this select 9] call fox_fnc_hqStrategicMapTeleport},
            "Mobiles Hauptquartier",
            "Mobiler Respawn Punkt",
            "",
            "assets\img\base.jpg",
            1,
            [getMarkerPos "mhqMobileMarker",player,mhq]
        ],
        [
            getMarkerPos "mhq_air_marker",
            { [_this select 9] call fox_fnc_hqStrategicMapTeleport},
            "Mobiles Hauptquartier",
            "Medevac Respawn Punkt",
            "",
            "assets\img\medevac.jpg",
            1,
            [getMarkerPos "mhq_air_marker",player,mhqAir]
        ]
    ],
    [],
    [],
    [],
    0.2,
    false,
    2,
    true,
    "Strategische Karte",
    false,
    "\A3\Ui_f\data\Map\GroupIcons\badge_rotate_%1_gs.paa"
] call BIS_fnc_StrategicMapOpen;
