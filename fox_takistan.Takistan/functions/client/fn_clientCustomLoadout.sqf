_player = _this select 0;

comment "Exported from Arsenal by Shiragami";

comment "Remove existing items";
removeAllWeapons _player;
removeAllItems _player;
removeAllAssignedItems _player;
removeUniform _player;
removeVest _player;
removeBackpack _player;
removeHeadgear _player;
removeGoggles _player;

comment "Add containers";
_player forceAddUniform "Tiger_GS_Camo_SS";
for "_i" from 1 to 10 do {_player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 10 do {_player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 10 do {_player addItemToUniform "ACE_epinephrine";};
_player addItemToUniform "ACE_EarPlugs";
_player addItemToUniform "ACE_Flashlight_XL50";
_player addItemToUniform "ACE_IR_Strobe_Item";
_player addItemToUniform "ACE_MapTools";
_player addHeadgear "H_Beret_blk";

comment "Add weapons";
_player addWeapon "Binocular";

comment "Add items";
_player linkItem "ItemMap";
_player linkItem "ItemCompass";
_player linkItem "tf_microdagr";
_player linkItem "tf_anprc148jem_1";

comment "Set identity";
[_player,"insignia_fox"] call bis_fnc_setUnitInsignia;
