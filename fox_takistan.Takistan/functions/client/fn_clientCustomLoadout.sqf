_player = _this select 0;

/* Arsenal import code */

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
_player forceAddUniform "U_BG_Guerilla1_1";
_player addItemToUniform "ACE_morphine";
_player addItemToUniform "rhs_mag_rgd5";

comment "Add weapons";
_player addWeapon "Binocular";

comment "Add items";
_player linkItem "ItemMap";
_player linkItem "ItemCompass";
_player linkItem "ItemWatch";
_player linkItem "tf_anprc152_1";
_player linkItem "ItemGPS";
_player linkItem "ACE_NVG_Gen1";

comment "Set identity";
_player setFace "GreekHead_A3_01";
_player setSpeaker "ACE_NoVoice";
