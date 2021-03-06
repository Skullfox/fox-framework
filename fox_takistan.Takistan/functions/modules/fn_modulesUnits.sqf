/*
 * Define enemy
 *
 * 0 Taliban = taliban
 * 1 African Militia = amilitia
 * 2 AAF Vanilla = aaf
 * 3 RHS MSV = rhsmsv
 */


//eos_enemy = 4;
//_module = _this select 0;

_enemyParam = "forceUnitsParam" call BIS_fnc_getParamValue;

if(_enemyParam isEqualTo 0 )then{

  switch (worldName) do {
    case ("Takistan"): {enemyFaction = 3;};
    case ("Chernarus"): {enemyFaction = 2;};
    case ("MBG_nam"): {enemyFaction = 3;};
  	case ("Sara_dbe1"): {enemyFaction = 4;};

    default {  enemyFaction = 0;};
  };

}else{
  enemyFaction = "eosUnitsParam" call BIS_fnc_getParamValue;
};

/*
switch (enemyFaction) do {

    case 0: {

      enemySide = east;
      enemySupportHeli = "O_Heli_Transport_04_covered_F";
      enemySupportParas = [
                          "O_Soldier_SL_F",
                          "O_HeavyGunner_F",
                          "O_soldier_M_F",
                          "O_Soldier_LAT_F",
                          "O_Soldier_AR_F",
                          "O_Soldier_AAR_F",
                          "O_Sharpshooter_F",
                          "O_medic_F"
                          ];

      enemySideStr = "east";
      enemyTriggerStr = "east";
      enemySideFactionEos = east;

      enemyDummyUnit = "O_Mortar_01_F";

      enememyGroupXL = [
                          "O_Soldier_SL_F",
                          "O_HeavyGunner_F",
                          "O_soldier_M_F",
                          "O_Soldier_LAT_F",
                          "O_Soldier_AR_F",
                          "O_Soldier_AAR_F",
                          "O_Sharpshooter_F",
                          "O_medic_F"
                          ];

        enememyGroupSM = [
                          "O_Soldier_TL_F",
                          "O_Soldier_GL_F",
                          "O_Soldier_AR_F",
                          "O_Soldier_LAT_F"
                          ];

    };

  };

*/

  switch (enemyFaction) do {

      case 0: {

      enemySide = resistance;
      enemySupportHeli = "RHS_Mi8amt_chdkz"; // need cargo for enemySupportPars array  !
  	enemySupportParas = ["rhs_g_Soldier_SL_F","rhs_g_Soldier_TL_F","rhs_g_Soldier_AR_F","rhs_g_Soldier_F", "rhs_g_Soldier_LAT_F", "rhs_g_medic_F", "rhs_g_Soldier_F", "rhs_g_Soldier_F", "rhs_g_Soldier_F"];
  	enemySideStr = "resistance";
  	enemyTriggerStr = "GUER";
  	enemySideFactionEos = INDEPENDENT;

      enemyDummyUnit = "B_G_Mortar_01_F";

  	eos_InfPool =	["LOP_AM_Infantry_TL","LOP_AM_Infantry_AT","LOP_AM_Infantry_AR","LOP_AM_Infantry_Rifleman","LOP_AM_Infantry_SL","LOP_AM_Infantry_Corpsman","LOP_AM_Infantry_Marksman","LOP_AM_Infantry_Engineer","LOP_AM_Infantry_GL"];
  	eos_ArmPool =	["LOP_AM_BTR60","LOP_AM_M113_W","LOP_AM_T72BA"];
  	eos_MotPool =	["LOP_AM_Landrover_M2","LOP_AM_Offroad","LOP_AM_Offroad_M2","LOP_AM_Truck"];
  	eos_ACHPool =	[];
  	eos_CHPool =	["LOP_UA_Mi8MT_Cargo"];
  	eos_uavPool =	[];
  	eos_stPool =	["B_G_Mortar_01_F"];
  	eos_shipPool =	[];
  	eos_diverPool =	[];
  	eos_crewPool =	["LOP_AM_Infantry_SL"];
  	eos_heliCrew =	["LOP_AM_Infantry_SL"];

      };

      case 1: {

      enemySide = resistance;
  	enemySupportHeli = "I_Heli_Transport_02_F"; // need cargo for enemySupportPars array  !
  	enemySupportParas = ["rhs_g_Soldier_SL_F","rhs_g_Soldier_TL_F","rhs_g_Soldier_AR_F","rhs_g_Soldier_F", "rhs_g_Soldier_LAT_F", "rhs_g_medic_F", "rhs_g_Soldier_F", "rhs_g_Soldier_F", "rhs_g_Soldier_F"];
  	enemySideStr = "resistance";
  	enemyTriggerStr = "GUER";
  	enemySideFactionEos = INDEPENDENT;

      enemyDummyUnit = "LOP_AFR_Landrover";

  	eos_InfPool =	["LOP_AFR_Infantry_TL","LOP_AFR_Infantry_SL","LOP_AFR_Infantry_Corpsman","LOP_AFR_Infantry_Marksman","LOP_AFR_Infantry_AR","LOP_AFR_Infantry_Rifleman","LOP_AFR_Infantry_GL"];
  	eos_ArmPool =	["LOP_AFR_T72BA","LOP_AFR_M113_W","LOP_AFR_BTR60"];
  	eos_MotPool =	["LOP_AFR_Landrover_M2","LOP_AFR_Offroad_M2","LOP_AFR_Truck"];
  	eos_ACHPool =	["B_Heli_Light_01_armed_F"];
  	eos_CHPool =	["B_Heli_Transport_01_ca"];
  	eos_uavPool =	[];
  	eos_stPool =	[];
  	eos_shipPool =	[];
  	eos_diverPool =	[];
  	eos_crewPool =	["LOP_AFR_Infantry_Rifleman"];
  	eos_heliCrew =	["LOP_AFR_Infantry_Rifleman"];

      };

      case 2: {

      enemySide = resistance;
  	enemySupportHeli = "I_Heli_Transport_02_F"; // need cargo for enemySupportPars array  !
  	enemySupportParas = ["I_Soldier_A_F","I_Soldier_A_F","I_Soldier_A_F","I_Soldier_A_F", "I_Soldier_A_F", "rhs_g_medic_F", "I_Soldier_A_F", "I_Soldier_A_F", "I_Soldier_A_F"];
  	enemySideStr = "resistance";
  	enemyTriggerStr = "GUER";
  	enemySideFactionEos = INDEPENDENT;

      enemyDummyUnit = "I_Mortar_01_F";

  	eos_InfPool=	["I_engineer_F","I_Soldier_A_F","I_Soldier_AA_F","I_Soldier_AAA_F","I_Soldier_AAR_F","I_Soldier_AAT_F","I_Soldier_AR_F","I_Soldier_AT_F","I_Soldier_exp_F","I_soldier_F","I_Soldier_GL_F","I_Soldier_repair_F"];
  	eos_ArmPool=	["I_APC_Wheeled_03_cannon_F"];
  	eos_MotPool=	["I_MRAP_03_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Truck_02_medical_F"];
  	eos_ACHPool=	[];
  	eos_CHPool=	["I_Heli_Transport_02_F","B_Heli_Light_02_unarmed_F"];
  	eos_uavPool=	["I_UAV_01_F","I_UAV_02_CAS_F","I_UGV_01_rcws_F"];
  	eos_stPool=	["I_Mortar_01_F"];
  	eos_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
  	eos_diverPool=	[];
  	eos_crewPool=	["I_crew_F"];
  	eos_heliCrew=	["I_helicrew_F","I_helipilot_F"];

      };


      //asdf abändern in einheiten abkürzung
      case 3: {

      enemySide = east;
      enemySupportHeli = "RHS_Mi8mt_Cargo_vdv"; // need cargo for enemySupportPars array  !
  	enemySupportParas = ["rhs_msv_emr_rifleman","rhs_msv_emr_medic","rhs_msv_emr_engineer","rhs_msv_emr_machinegunner", "rhs_msv_emr_machinegunner_assistant", "rhs_msv_emr_rifleman", "rhs_msv_emr_rifleman", "rhs_msv_emr_rifleman", "rhs_msv_emr_rifleman"];
  	enemySideStr = "east";
  	enemyTriggerStr = "east";
  	enemySideFactionEos = east;

      enemyDummyUnit = "RHS_NSV_TriPod_MSV";

  	eos_InfPool =	["rhs_msv_emr_rifleman","rhs_msv_emr_medic","rhs_msv_emr_engineer","rhs_msv_emr_machinegunner", "rhs_msv_emr_machinegunner_assistant", "rhs_msv_emr_rifleman", "rhs_msv_emr_rifleman", "rhs_msv_emr_rifleman", "rhs_msv_emr_rifleman","rhs_msv_emr_marksman","rhs_msv_emr_at"];
  	eos_ArmPool =	["rhs_bmp1_msv","rhs_bmp2_msv","rhs_bmp3_msv","rhs_btr70_msv","rhs_btr80a_msv"];
  	eos_MotPool =	["rhs_tigr_msv","rhs_tigr_ffv_3camo_msv","RHS_UAZ_MSV_01","rhs_uaz_open_MSV_01","rhs_gaz66_msv","RHS_Ural_MSV_01","RHS_Ural_Open_MSV_01"];
  	eos_ACHPool =	["RHS_Mi8MTV3_UPK23_vdv"];
  	eos_CHPool =	["RHS_Mi8mt_Cargo_vdv"];
  	eos_uavPool =	[];
  	eos_stPool =	[];
  	eos_shipPool =	[];
  	eos_diverPool =	[];
  	eos_crewPool =	["rhs_msv_emr_driver_armored"];
  	eos_heliCrew =	["rhs_msv_emr_officer"];

      };


  	case 4: {
      enemySide = east;
      enemySupportHeli = "RHS_Mi8mt_Cargo_vdv"; // need cargo for enemySupportPars array  !
  	enemySupportParas = ["O_mas_med_Insu_AR_F","O_mas_med_Insu_LAT_F","O_mas_med_Insu_MG_F","O_mas_med_Insu_F", "O_mas_med_Insu_F", "O_mas_med_Insu_F", "O_mas_med_Insu_F", "O_mas_med_Insu_F", "O_mas_med_Insu_GL_F"];
  	enemySideStr = "east";
  	enemyTriggerStr = "east";
  	enemySideFactionEos = east;

      enemyDummyUnit = "RHS_NSV_TriPod_MSV";

  	eos_InfPool =	["O_mas_med_Insu_F","O_mas_med_Insu_SL_F","O_mas_med_Insu_TL_F","O_mas_med_Insu_AR_F", "O_mas_med_Insu_LAT_F", "O_mas_med_Insu_MG_F", "O_mas_med_Insu_MEDIC_F", "O_mas_med_Insu_F", "O_mas_med_Insu_F","O_mas_med_Insu_AR_F","O_mas_med_Insu_GL_F"];
  	eos_ArmPool =	["CUP_O_BRDM2_TKA","CUP_O_BMP1_TKA"];
  	eos_MotPool =	["CUP_O_LR_MG_TKM","CUP_O_LR_SPG9_TKM","RHS_UAZ_MSV_01","rhs_uaz_open_MSV_01","rhs_gaz66_msv","RHS_Ural_MSV_01","RHS_Ural_Open_MSV_01"];
  	eos_ACHPool =	["RHS_Mi8MTV3_UPK23_vdv"];
  	eos_CHPool =	["RHS_Mi8mt_Cargo_vdv"];
  	eos_uavPool =	["I_UAV_01_F"];
  	eos_stPool =	["I_Mortar_01_F"];
  	eos_shipPool =	["O_Boat_Armed_01_hmg_F"];
  	eos_diverPool =	[];
  	eos_crewPool =	["O_mas_med_Insu_TL_F"];
  	eos_heliCrew =	["O_mas_med_Insu_TL_F"];

      };

      case 5: {

        enemySide = resistance;
    	enemySupportHeli = "I_Heli_Transport_02_F"; // need cargo for enemySupportPars array  !
    	enemySupportParas = ["I_Soldier_A_F","I_Soldier_A_F","I_Soldier_A_F","I_Soldier_A_F", "I_Soldier_A_F", "rhs_g_medic_F", "I_Soldier_A_F", "I_Soldier_A_F", "I_Soldier_A_F"];
    	enemySideStr = "resistance";
    	enemyTriggerStr = "GUER";
    	enemySideFactionEos = INDEPENDENT;

        enemyDummyUnit = "I_Mortar_01_F";

    	eos_InfPool =	[
      "I_mas_med_Rebelhd8a_F",
      "I_mas_med_Rebelhd2_F",
      "I_mas_med_Rebelhd3_F",
      "I_mas_med_Rebelhd5_F",
      "I_mas_med_Rebelhd7_F",
      "I_mas_med_Rebelhd6_F",
      "I_mas_med_Rebelhd8_F",
      "I_mas_med_Rebelhd4_F"
      ];
    	eos_ArmPool=	["I_APC_Wheeled_03_cannon_F"];
    	eos_MotPool=	["I_MRAP_03_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Truck_02_medical_F"];
    	eos_ACHPool=	[];
    	eos_CHPool=	["I_Heli_Transport_02_F","B_Heli_Light_02_unarmed_F"];
    	eos_uavPool=	["I_UAV_01_F","I_UAV_02_CAS_F","I_UGV_01_rcws_F"];
    	eos_stPool=	["I_Mortar_01_F"];
    	eos_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
    	eos_diverPool=	[];
    	eos_crewPool=	["I_crew_F"];
    	eos_heliCrew=	["I_helicrew_F","I_helipilot_F"];

      };


  	//asdf abändern in einheiten abkürzung
      case 6: {



      enemySide = east;
      enemySupportHeli = "RHS_Mi8mt_Cargo_vdv"; // need cargo for enemySupportPars array  !
  	enemySupportParas = ["rhs_msv_rifleman","rhs_msv_rifleman","rhs_msv_rifleman","rhs_msv_medic", "rhs_msv_LAT", "rhs_msv_strelok_rpg_assist", "rhs_msv_grenadier_rpg", "rhs_msv_efreitor", "rhs_msv_grenadier_rpg"];
  	enemySideStr = "east";
  	enemyTriggerStr = "east";
  	enemySideFactionEos = east;

      enemyDummyUnit = "RHS_NSV_TriPod_MSV";

  	eos_InfPool =	[
  		"rhs_msv_sergeant",
  		"rhs_msv_efreitor",
  		"rhs_msv_grenadier_rpg",
  		"rhs_msv_strelok_rpg_assist",
  		"rhs_msv_machinegunner",
  		"rhs_msv_LAT",
  		"rhs_msv_strelok_rpg_assist",
  		"rhs_msv_medic",
  		"rhs_msv_rifleman"
  	];


  	eos_ArmPool =	["rhs_bmp1_msv","rhs_bmp2_msv","rhs_bmp3_msv","rhs_btr70_msv","rhs_btr80a_msv"];
  	eos_MotPool =	["rhs_tigr_msv","rhs_tigr_ffv_3camo_msv","RHS_UAZ_MSV_01","rhs_uaz_open_MSV_01","rhs_gaz66_msv","RHS_Ural_MSV_01","RHS_Ural_Open_MSV_01"];
  	eos_ACHPool =	["RHS_Mi8MTV3_UPK23_vdv"];
  	eos_CHPool =	["RHS_Mi8mt_Cargo_vdv"];
  	eos_uavPool =	[];
  	eos_stPool =	[];
  	eos_shipPool =	[];
  	eos_diverPool =	[];
  	eos_crewPool =	["rhs_msv_driver"];
  	eos_heliCrew =	["rhs_msv_sergeant"];

      };

      default {  hint "NO UNIT CONFIG FOUND";};
  };

server setvariable ["enemyDummyUnit",enemyDummyUnit, true];
