_lap = _this select 0;

re = {

	_l = _this select 0;
	_l removeAction 0;

};

en = {
	_l = _this select 0;
	_l setObjectTexture [0, "error.jpg"];
};

[ [_lap ],"re" ] call BIS_fnc_MP;


_str1 = "Download";

_str2 = "läuft....";


[
[
[_str1,"<t align = 'center' size = '0.7'>%1</t><br/>"],[_str2,"<t align = 'center' size = '0.7'>%1</t>"]]
] spawn BIS_fnc_typeText;
sleep 15;

_str1 = "35%";

_str2 = "";


[
[
[_str1,"<t align = 'center' size = '0.7'>%1</t><br/>"],[_str2,"<t align = 'center' size = '0.7'>%1</t>"]]
] spawn BIS_fnc_typeText;
sleep 15;

_str1 = "70%";

_str2 = "";


[
[
[_str1,"<t align = 'center' size = '0.7'>%1</t><br/>"],[_str2,"<t align = 'center' size = '0.7'>%1</t>"]]
] spawn BIS_fnc_typeText;
sleep 15;
_str1 = "Download";

_str2 = "vollständig";


[
[
[_str1,"<t align = 'center' size = '0.7'>%1</t><br/>"],[_str2,"<t align = 'center' size = '0.7'>%1</t>"]]
] spawn BIS_fnc_typeText;


sleep 3;
[ [_lap ],"en" ] call BIS_fnc_MP;