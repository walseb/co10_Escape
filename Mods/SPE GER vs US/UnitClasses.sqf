// SPE
// US Army vs GER Wehrmacht


/*
 * Description: This file contains the vehicle types and unit types for the units spawned in the mission, and the weapons and magazines found in ammo boxes/cars.
 * "Random array" (used below) means that array will be used to spawn units, and that chance is 1/n that each element will be spawned on each spawn. The array can contain 
 * many elements of the same type, so the example array ["Offroad_DSHKM_INS", "Pickup_PK_INS", "Pickup_PK_INS"] will spawn an Offroad with 1/3 probability, and a 
 * Pickup with 2/3 probability.
 */

private ["_enemyFrequency"];

_enemyFrequency = _this select 0;

A3E_VAR_Side_Blufor = east;	//player side SPE US Army
A3E_VAR_Side_Opfor = west; //SPE GER Sturmtruppen
A3E_VAR_Side_Ind = resistance; //SPE GER Wehrmacht

A3E_VAR_Flag_Opfor = "\WW2\SPE_Core_t\Data_t\Flags\flag_GER_co.paa";
A3E_VAR_Flag_Ind = "\WW2\SPE_Core_t\Data_t\Flags\flag_GER_co.paa";

A3E_VAR_Side_Blufor_Str = format["%1",A3E_VAR_Side_Blufor];
A3E_VAR_Side_Opfor_Str = format["%1",A3E_VAR_Side_Opfor];
A3E_VAR_Side_Ind_Str = format["%1",A3E_VAR_Side_Ind];

A3E_ItemsToBeRemoved = ["SPE_GER_ItemCompass_deg","SPE_GER_ItemCompass","SPE_Binocular_GER"]; //Items to randomly remove from units and to remove from guards

//Disable NVGs parameter for the whole SPE version.
missionNamespace setvariable["A3E_Param_NoNightvision",1];


//////////////////////////////////////////////////////////////////
// fn_createStartPos.sqf
// Array of templates to use for prisons
//////////////////////////////////////////////////////////////////
A3E_PrisonTemplates = [
	"a3e_fnc_BuildPrison1"
	,"a3e_fnc_BuildPrison2"
	,"a3e_fnc_BuildPrison3"
	,"a3e_fnc_BuildPrison4"
	,"a3e_fnc_BuildPrison5"
	];

// Random array. Start position guard types around the prison
a3e_arr_Escape_StartPositionGuardTypes = [
	"SPE_Milice_FG_Sentry"
	,"SPE_Milice_FG_Sentry_Sten"
	,"SPE_Milice_FG_SquadLead"
	,"SPE_Milice_FG_Rifleman"
	,"SPE_Milice_FG_Assist_Autorifleman"
	,"SPE_Milice_FG_Autorifleman"];
	
// Prison backpacks
a3e_arr_PrisonBackpacks = [
	"B_SPE_US_M36"
	,"B_SPE_CIV_satchel"
	,"B_SPE_CIV_musette"];
// Prison backpack secondary weapon (and corresponding magazine type).
a3e_arr_PrisonBackpackWeapons = [];
a3e_arr_PrisonBackpackWeapons pushback ["SPE_P08","SPE_8Rnd_9x19_P08"];
a3e_arr_PrisonBackpackWeapons pushback ["SPE_P08","SPE_8Rnd_9x19_P08"];
a3e_arr_PrisonBackpackWeapons pushback ["SPE_M1911","SPE_7Rnd_45ACP_1911"];
a3e_arr_PrisonBackpackWeapons pushback ["SPE_M1911","SPE_7Rnd_45ACP_1911"];
a3e_arr_PrisonBackpackWeapons pushback ["SPE_Fusil_Mle_208_12_Sawedoff","SPE_2Rnd_12x65_Pellets"];

// Random array. Civilian vehicle classes for ambient traffic.
a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses = [
      "SPE_ST_R200_Hood"
      ,"SPE_ST_OpelBlitz"
  ];

// Random arrays. Enemy vehicle classes for ambient traffic.
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
switch (_enemyFrequency) do {
    case 1: {//Few (1-3)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"SPE_US_G503_MB_Open"
		,"SPE_US_G503_MB_Open"
		,"SPE_US_G503_MB"
		,"SPE_US_G503_MB"
		,"SPE_US_G503_MB_Armoured"
		,"SPE_US_G503_MB_Ambulance"
		,"SPE_US_G503_MB_M1919"
		,"SPE_US_G503_MB_M1919_Armoured"
		,"SPE_US_G503_MB_M2"
		,"SPE_US_G503_MB_M2_Armoured"
		,"SPE_US_G503_MB_M1919_PATROL"
		,"SPE_US_G503_MB_M2_PATROL"
		,"SPE_CCKW_353"
		,"SPE_CCKW_353"
		,"SPE_CCKW_353_Open"
		,"SPE_CCKW_353_Open"
		,"SPE_CCKW_353_M2"
		,"SPE_CCKW_353_M2"
		,"SPE_CCKW_353_Ambulance"
		,"SPE_CCKW_353_Ammo"
		,"SPE_CCKW_353_Fuel"
		,"SPE_CCKW_353_Repair"
		,"SPE_US_M16_Halftrack"
		,"SPE_US_M3_Halftrack_Unarmed"
		,"SPE_US_M3_Halftrack_Unarmed_Open"
		,"SPE_US_M3_Halftrack"
		,"SPE_US_M3_Halftrack_Ambulance"
		,"SPE_US_M3_Halftrack_Ammo"
		,"SPE_US_M3_Halftrack_Fuel"
		,"SPE_US_M3_Halftrack_Repair"
		,"SPE_M20_AUC"
		,"SPE_M20_AUC"
		,"SPE_M20_AUC"
		,"SPE_M8_LAC"
		,"SPE_M8_LAC"
		,"SPE_M8_LAC_ringMount"
		,"SPE_M8_LAC_ringMount"
		,"SPE_M10"
		,"SPE_M18_Hellcat"
		,"SPE_M4A0_75_Early"
		,"SPE_M4A0_75"
		,"SPE_M4A0_composite"
		,"SPE_M4A0_105"
		,"SPE_M4A1_75_erla"
		,"SPE_M4A1_75"
		,"SPE_M4A1_T34_Calliope_Direct"
		,"SPE_M4A1_T34_Calliope"
		,"SPE_M4A3_75"
		,"SPE_M4A3_105"
		,"SPE_ST_R200_Unarmed"
		,"SPE_ST_R200_Hood"
		,"SPE_ST_R200_MG34"
		,"SPE_ST_OpelBlitz"
		,"SPE_ST_OpelBlitz"
		,"SPE_ST_OpelBlitz_Open"
		,"SPE_ST_OpelBlitz_Open"
		,"SPE_ST_OpelBlitz_Ambulance"
		,"SPE_ST_OpelBlitz_Ammo"
		,"SPE_ST_OpelBlitz_Fuel"
		,"SPE_ST_OpelBlitz_Repair"
		,"SPE_ST_SdKfz250_1"
		,"SPE_ST_SdKfz250_1"
		,"SPE_ST_SdKfz250_1"
		,"SPE_ST_OpelBlitz_Flak38"
		,"SPE_ST_StuG_III_G_Early"
		,"SPE_ST_StuG_III_G_Late"
		,"SPE_ST_StuG_III_G_SKB"
		,"SPE_ST_StuH_42"
		,"SPE_ST_Jagdpanther_G1"
		,"SPE_ST_PzKpfwIII_J"
		,"SPE_ST_PzKpfwIII_L"
		,"SPE_ST_PzKpfwIII_M"
		,"SPE_ST_PzKpfwIII_N"
		,"SPE_ST_PzKpfwIV_G"
		,"SPE_ST_PzKpfwV_G"
		,"SPE_ST_PzKpfwVI_H1"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"SPE_FFI_SdKfz250_1"
		,"SPE_FFI_R200_Unarmed"
		,"SPE_FFI_R200_Hood"
		,"SPE_FFI_R200_MG34"
		,"SPE_FFI_OpelBlitz"
		,"SPE_FFI_OpelBlitz_Open"
		,"SPE_FFI_OpelBlitz_Ambulance"
		,"SPE_FFI_OpelBlitz_Ammo"
		,"SPE_FFI_OpelBlitz_Fuel"
		,"SPE_FFI_OpelBlitz_Repair"
		,"SPE_FR_M16_Halftrack"
		,"SPE_FR_M3_Halftrack_Unarmed"
		,"SPE_FR_M3_Halftrack"
		,"SPE_FR_M3_Halftrack_Ambulance"
		,"SPE_FR_M3_Halftrack_Ammo"
		,"SPE_FR_M3_Halftrack_Fuel"
		,"SPE_FR_M3_Halftrack_Repair"
		,"SPE_FR_M20_AUC"
		,"SPE_FR_M8_LAC"
		,"SPE_FR_M8_LAC_ringMount"
		,"SPE_FR_M4A0_105"
		,"SPE_FR_M10"
		,"SPE_FR_M4A0_75_Early"
		,"SPE_FR_M4A0_75_mid"
		,"SPE_FR_M4A1_75"
		,"SPE_FR_M4A1_76"
		,"SPE_GER_R200_Unarmed"
		,"SPE_GER_R200_Hood"
		,"SPE_GER_R200_MG34"
		,"SPE_OpelBlitz_Open"
		,"SPE_OpelBlitz_Open"
		,"SPE_OpelBlitz"
		,"SPE_OpelBlitz"
		,"SPE_OpelBlitz_Ambulance"
		,"SPE_OpelBlitz_Ammo"
		,"SPE_OpelBlitz_Fuel"
		,"SPE_OpelBlitz_Repair"
		,"SPE_SdKfz250_1"
		,"SPE_SdKfz250_1"
		,"SPE_OpelBlitz_Flak38"
		,"SPE_StuG_III_G_Early"
		,"SPE_StuG_III_G_Late"
		,"SPE_StuG_III_G_SKB"
		,"SPE_StuH_42"
		,"SPE_Jagdpanther_G1"
		,"SPE_PzKpfwIII_J"
		,"SPE_PzKpfwIII_L"
		,"SPE_PzKpfwIII_M"
		,"SPE_PzKpfwIII_N"
		,"SPE_PzKpfwIV_G"
		,"SPE_PzKpfwV_G"
		,"SPE_PzKpfwVI_H1"
		,"SPE_Nashorn"];
    };
    case 2: {//Some (4-6)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"SPE_US_G503_MB_Open"
		,"SPE_US_G503_MB_Open"
		,"SPE_US_G503_MB"
		,"SPE_US_G503_MB"
		,"SPE_US_G503_MB_Armoured"
		,"SPE_US_G503_MB_Ambulance"
		,"SPE_US_G503_MB_M1919"
		,"SPE_US_G503_MB_M1919_Armoured"
		,"SPE_US_G503_MB_M2"
		,"SPE_US_G503_MB_M2_Armoured"
		,"SPE_US_G503_MB_M1919_PATROL"
		,"SPE_US_G503_MB_M2_PATROL"
		,"SPE_CCKW_353"
		,"SPE_CCKW_353"
		,"SPE_CCKW_353_Open"
		,"SPE_CCKW_353_Open"
		,"SPE_CCKW_353_M2"
		,"SPE_CCKW_353_M2"
		,"SPE_CCKW_353_Ambulance"
		,"SPE_CCKW_353_Ammo"
		,"SPE_CCKW_353_Fuel"
		,"SPE_CCKW_353_Repair"
		,"SPE_US_M16_Halftrack"
		,"SPE_US_M3_Halftrack_Unarmed"
		,"SPE_US_M3_Halftrack_Unarmed_Open"
		,"SPE_US_M3_Halftrack"
		,"SPE_US_M3_Halftrack_Ambulance"
		,"SPE_US_M3_Halftrack_Ammo"
		,"SPE_US_M3_Halftrack_Fuel"
		,"SPE_US_M3_Halftrack_Repair"
		,"SPE_M20_AUC"
		,"SPE_M20_AUC"
		,"SPE_M20_AUC"
		,"SPE_M8_LAC"
		,"SPE_M8_LAC"
		,"SPE_M8_LAC_ringMount"
		,"SPE_M8_LAC_ringMount"
		,"SPE_M8_LAC_ringMount"
		,"SPE_M10"
		,"SPE_M10"
		,"SPE_M10"
		,"SPE_M18_Hellcat"
		,"SPE_M18_Hellcat"
		,"SPE_M18_Hellcat"
		,"SPE_M4A0_75_Early"
		,"SPE_M4A0_75"
		,"SPE_M4A0_composite"
		,"SPE_M4A0_105"
		,"SPE_M4A1_75_erla"
		,"SPE_M4A1_75"
		,"SPE_M4A1_76"
		,"SPE_M4A1_T34_Calliope_Direct"
		,"SPE_M4A1_T34_Calliope"
		,"SPE_M4A3_75"
		,"SPE_M4A3_76"
		,"SPE_M4A3_105"
		,"SPE_M4A3_T34_Calliope_Direct"
		,"SPE_M4A3_T34_Calliope"
		,"SPE_ST_R200_Unarmed"
		,"SPE_ST_R200_Hood"
		,"SPE_ST_R200_MG34"
		,"SPE_ST_R200_MG34"
		,"SPE_ST_R200_MG34"
		,"SPE_ST_OpelBlitz"
		,"SPE_ST_OpelBlitz"
		,"SPE_ST_OpelBlitz_Open"
		,"SPE_ST_OpelBlitz_Open"
		,"SPE_ST_OpelBlitz_Ambulance"
		,"SPE_ST_OpelBlitz_Ammo"
		,"SPE_ST_OpelBlitz_Fuel"
		,"SPE_ST_OpelBlitz_Repair"
		,"SPE_ST_SdKfz250_1"
		,"SPE_ST_SdKfz250_1"
		,"SPE_ST_OpelBlitz_Flak38"
		,"SPE_ST_StuG_III_G_Early"
		,"SPE_ST_StuG_III_G_Late"
		,"SPE_ST_StuG_III_G_SKB"
		,"SPE_ST_StuH_42"
		,"SPE_ST_Jagdpanther_G1"
		,"SPE_ST_PzKpfwIII_J"
		,"SPE_ST_PzKpfwIII_L"
		,"SPE_ST_PzKpfwIII_M"
		,"SPE_ST_PzKpfwIII_N"
		,"SPE_ST_PzKpfwIV_G"
		,"SPE_ST_PzKpfwV_G"
		,"SPE_ST_PzKpfwVI_H1"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"SPE_FFI_SdKfz250_1"
		,"SPE_FFI_R200_Unarmed"
		,"SPE_FFI_R200_Hood"
		,"SPE_FFI_R200_MG34"
		,"SPE_FFI_OpelBlitz"
		,"SPE_FFI_OpelBlitz_Open"
		,"SPE_FFI_OpelBlitz_Ambulance"
		,"SPE_FFI_OpelBlitz_Ammo"
		,"SPE_FFI_OpelBlitz_Fuel"
		,"SPE_FFI_OpelBlitz_Repair"
		,"SPE_FR_M16_Halftrack"
		,"SPE_FR_M3_Halftrack_Unarmed"
		,"SPE_FR_M3_Halftrack"
		,"SPE_FR_M3_Halftrack_Ambulance"
		,"SPE_FR_M3_Halftrack_Ammo"
		,"SPE_FR_M3_Halftrack_Fuel"
		,"SPE_FR_M3_Halftrack_Repair"
		,"SPE_FR_M20_AUC"
		,"SPE_FR_M8_LAC"
		,"SPE_FR_M8_LAC_ringMount"
		,"SPE_FR_M4A0_105"
		,"SPE_FR_M4A3_75"
		,"SPE_FR_M10"
		,"SPE_FR_M4A0_75_Early"
		,"SPE_FR_M4A0_75_mid"
		,"SPE_FR_M4A1_75"
		,"SPE_FR_M4A1_76"
		,"SPE_GER_R200_Unarmed"
		,"SPE_GER_R200_Hood"
		,"SPE_GER_R200_MG34"
		,"SPE_GER_R200_MG34"
		,"SPE_GER_R200_MG34"
		,"SPE_OpelBlitz_Open"
		,"SPE_OpelBlitz_Open"
		,"SPE_OpelBlitz"
		,"SPE_OpelBlitz"
		,"SPE_OpelBlitz_Ambulance"
		,"SPE_OpelBlitz_Ammo"
		,"SPE_OpelBlitz_Fuel"
		,"SPE_OpelBlitz_Repair"
		,"SPE_SdKfz250_1"
		,"SPE_SdKfz250_1"
		,"SPE_OpelBlitz_Flak38"
		,"SPE_StuG_III_G_Early"
		,"SPE_StuG_III_G_Late"
		,"SPE_StuG_III_G_SKB"
		,"SPE_StuH_42"
		,"SPE_Jagdpanther_G1"
		,"SPE_PzKpfwIII_J"
		,"SPE_PzKpfwIII_L"
		,"SPE_PzKpfwIII_M"
		,"SPE_PzKpfwIII_N"
		,"SPE_PzKpfwIV_G"
		,"SPE_PzKpfwV_G"
		,"SPE_PzKpfwVI_H1"
		,"SPE_Nashorn"];
    };
    default {//A lot (7-8)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"SPE_ST_R200_Unarmed"
		,"SPE_ST_R200_Hood"
		,"SPE_ST_R200_MG34"
		,"SPE_ST_OpelBlitz"
		,"SPE_ST_OpelBlitz"
		,"SPE_ST_OpelBlitz_Open"
		,"SPE_ST_OpelBlitz_Open"
		,"SPE_ST_OpelBlitz_Ambulance"
		,"SPE_ST_OpelBlitz_Ammo"
		,"SPE_ST_OpelBlitz_Fuel"
		,"SPE_ST_OpelBlitz_Repair"
		,"SPE_ST_SdKfz250_1"
		,"SPE_ST_OpelBlitz_Flak38"
		,"SPE_ST_StuG_III_G_Early"
		,"SPE_ST_StuG_III_G_Late"
		,"SPE_ST_StuG_III_G_SKB"
		,"SPE_ST_StuH_42"
		,"SPE_ST_Jagdpanther_G1"
		,"SPE_ST_PzKpfwIII_J"
		,"SPE_ST_PzKpfwIII_L"
		,"SPE_ST_PzKpfwIII_M"
		,"SPE_ST_PzKpfwIII_N"
		,"SPE_ST_PzKpfwIV_G"
		,"SPE_ST_PzKpfwIV_G"
		,"SPE_ST_PzKpfwV_G"
		,"SPE_ST_PzKpfwV_G"
		,"SPE_ST_PzKpfwVI_H1"
		,"SPE_US_G503_MB_Open"
		,"SPE_US_G503_MB"
		,"SPE_US_G503_MB_Armoured"
		,"SPE_US_G503_MB_Ambulance"
		,"SPE_US_G503_MB_M1919"
		,"SPE_US_G503_MB_M1919_Armoured"
		,"SPE_US_G503_MB_M2"
		,"SPE_US_G503_MB_M2_Armoured"
		,"SPE_US_G503_MB_M1919_PATROL"
		,"SPE_US_G503_MB_M2_PATROL"
		,"SPE_CCKW_353"
		,"SPE_CCKW_353_Open"
		,"SPE_CCKW_353_M2"
		,"SPE_CCKW_353_M2"
		,"SPE_CCKW_353_Ambulance"
		,"SPE_CCKW_353_Ammo"
		,"SPE_CCKW_353_Fuel"
		,"SPE_CCKW_353_Repair"
		,"SPE_US_M16_Halftrack"
		,"SPE_US_M3_Halftrack_Unarmed"
		,"SPE_US_M3_Halftrack_Unarmed_Open"
		,"SPE_US_M3_Halftrack"
		,"SPE_US_M3_Halftrack_Ambulance"
		,"SPE_US_M3_Halftrack_Ammo"
		,"SPE_US_M3_Halftrack_Fuel"
		,"SPE_US_M3_Halftrack_Repair"
		,"SPE_M20_AUC"
		,"SPE_M20_AUC"
		,"SPE_M8_LAC"
		,"SPE_M8_LAC"
		,"SPE_M8_LAC_ringMount"
		,"SPE_M8_LAC_ringMount"
		,"SPE_M8_LAC_ringMount"
		,"SPE_M10"
		,"SPE_M10"
		,"SPE_M18_Hellcat"
		,"SPE_M18_Hellcat"
		,"SPE_M4A0_75_Early"
		,"SPE_M4A0_75"
		,"SPE_M4A0_composite"
		,"SPE_M4A0_105"
		,"SPE_M4A1_75_erla"
		,"SPE_M4A1_75"
		,"SPE_M4A1_76"
		,"SPE_M4A1_T34_Calliope_Direct"
		,"SPE_M4A1_T34_Calliope"
		,"SPE_M4A3_75"
		,"SPE_M4A3_76"
		,"SPE_M4A3_105"
		,"SPE_M4A3_T34_Calliope_Direct"
		,"SPE_M4A3_T34_Calliope"
		];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"SPE_GER_R200_Unarmed"
		,"SPE_GER_R200_Hood"
		,"SPE_GER_R200_MG34"
		,"SPE_OpelBlitz_Open"
		,"SPE_OpelBlitz_Open"
		,"SPE_OpelBlitz"
		,"SPE_OpelBlitz"
		,"SPE_OpelBlitz_Ambulance"
		,"SPE_OpelBlitz_Ammo"
		,"SPE_OpelBlitz_Fuel"
		,"SPE_OpelBlitz_Repair"
		,"SPE_SdKfz250_1"
		,"SPE_SdKfz250_1"
		,"SPE_OpelBlitz_Flak38"
		,"SPE_StuG_III_G_Early"
		,"SPE_StuG_III_G_Late"
		,"SPE_StuG_III_G_SKB"
		,"SPE_StuH_42"
		,"SPE_Jagdpanther_G1"
		,"SPE_PzKpfwIII_J"
		,"SPE_PzKpfwIII_L"
		,"SPE_PzKpfwIII_M"
		,"SPE_PzKpfwIII_N"
		,"SPE_PzKpfwIV_G"
		,"SPE_PzKpfwV_G"
		,"SPE_PzKpfwVI_H1"
		,"SPE_Nashorn"
		,"SPE_FFI_SdKfz250_1"
		,"SPE_FFI_R200_Unarmed"
		,"SPE_FFI_R200_Hood"
		,"SPE_FFI_R200_MG34"
		,"SPE_FFI_OpelBlitz"
		,"SPE_FFI_OpelBlitz_Open"
		,"SPE_FFI_OpelBlitz_Ambulance"
		,"SPE_FFI_OpelBlitz_Ammo"
		,"SPE_FFI_OpelBlitz_Fuel"
		,"SPE_FFI_OpelBlitz_Repair"
		,"SPE_FR_M16_Halftrack"
		,"SPE_FR_M3_Halftrack_Unarmed"
		,"SPE_FR_M3_Halftrack"
		,"SPE_FR_M3_Halftrack_Ambulance"
		,"SPE_FR_M3_Halftrack_Ammo"
		,"SPE_FR_M3_Halftrack_Fuel"
		,"SPE_FR_M3_Halftrack_Repair"
		,"SPE_FR_M20_AUC"
		,"SPE_FR_M8_LAC"
		,"SPE_FR_M8_LAC_ringMount"
		,"SPE_FR_M4A0_105"
		,"SPE_FR_M4A3_75"
		,"SPE_FR_M4A3_76"
		,"SPE_FR_M10"
		,"SPE_FR_M4A0_75_Early"
		,"SPE_FR_M4A0_75_mid"
		,"SPE_FR_M4A1_75"
		,"SPE_FR_M4A1_76"
		];
    };
};

// Random array. General infantry types. E.g. village patrols, ambient infantry, etc. (for ammo depot guards and communication center guards see further down in this file at fn_InitGuardedLocations)
a3e_arr_Escape_InfantryTypes = [
	"SPE_sturmtrooper_sapper"
	,"SPE_sturmtrooper_sapper"
	,"SPE_sturmtrooper_sapper_gefr"
	,"SPE_sturmtrooper_medic"
	,"SPE_sturmtrooper_medic"
	,"SPE_sturmtrooper_medic"
	,"SPE_sturmtrooper_Mortar_AmmoBearer"
	,"SPE_sturmtrooper_HMG_AmmoBearer"
	,"SPE_sturmtrooper_ahmgunner"
	,"SPE_sturmtrooper_Mortar_AGunner"
	,"SPE_sturmtrooper_Mortar_Gunner"
	,"SPE_sturmtrooper_AT_grenadier"
	,"SPE_sturmtrooper_LAT_Klein_Rifleman"
	,"SPE_sturmtrooper_LAT_30m_Rifleman"
	,"SPE_sturmtrooper_LAT_rifleman"
	,"SPE_sturmtrooper_hmgunner2"
	,"SPE_sturmtrooper_hmgunner"
	,"SPE_sturmtrooper_mgunner2"
	,"SPE_sturmtrooper_mgunner"
	,"SPE_sturmtrooper_amgunner"
	,"SPE_sturmtrooper_sniper"
	,"SPE_sturmtrooper_rifleman"
	,"SPE_sturmtrooper_ober_rifleman"
	,"SPE_sturmtrooper_rifleman_lite"
	,"SPE_sturmtrooper_ober_grenadier"
	,"SPE_sturmtrooper_stggunner"
	,"SPE_sturmtrooper_untersturmfuhrer"
	,"SPE_sturmtrooper_radioman"
	,"SPE_sturmtrooper_Flamethrower_Operator"
	,"SPE_sturmtrooper_obersturmfuhrer"
	,"SPE_sturmtrooper_standartenfuhrer"
	,"SPE_sturmtrooper_hauptsturmfuhrer"
	,"SPE_sturmtrooper_Assist_SquadLead"
	,"SPE_sturmtrooper_SquadLead"
	,"SPE_ST_AT_Soldier_Assistant"
	,"SPE_ST_AT_Soldier"
	,"SPE_ST_Sentry_K98k"
	,"SPE_ST_Sentry_MP35"
	,"SPE_ST_Sentry_MP40"
	,"SPE_ST_AT_Soldier_SquadLead"
	,"SPE_ST_Driver"
	,"SPE_ST_Driver_Lite"
	,"SPE_US_Engineer"
	,"SPE_US_Engineer"
	,"SPE_US_Engineer"
	,"SPE_US_Medic"
	,"SPE_US_Medic"
	,"SPE_US_Medic"
	,"SPE_US_Rifleman_AmmoBearer"
	,"SPE_US_Mortar_AmmoBearer"
	,"SPE_US_HMG_AmmoBearer"
	,"SPE_US_Assist_Autorifleman"
	,"SPE_US_AHMGunner"
	,"SPE_US_Assist_SquadLead"
	,"SPE_US_Mortar_AGunner"
	,"SPE_US_AT_Soldier"
	,"SPE_US_AT_Soldier"
	,"SPE_US_AT_Soldier"
	,"SPE_US_Autorifleman"
	,"SPE_US_Autorifleman"
	,"SPE_US_Captain"
	,"SPE_US_Driver"
	,"SPE_US_First_Lieutenant"
	,"SPE_US_Flamethrower_Operator"
	,"SPE_US_Grenadier"
	,"SPE_US_Grenadier"
	,"SPE_US_Mortar_Gunner"
	,"SPE_US_HMGunner"
	,"SPE_US_Radioman"
	,"SPE_US_Rifleman"
	,"SPE_US_Rifleman"
	,"SPE_US_Rifleman"
	,"SPE_US_Second_Lieutenant"
	,"SPE_US_Sniper"
	,"SPE_US_SquadLead"
	,"SPE_US_HMG_AmmoBearer_M2"
	,"SPE_US_AHMGunner_M2"
	,"SPE_US_HMGunner_M2"
	,"SPE_US_Sentry_Carbine"
	,"SPE_US_Sentry"
	];
a3e_arr_Escape_InfantryTypes_Ind = [
	"SPE_GER_Mortar_AmmoBearer"
	,"SPE_GER_HMG_AmmoBearer"
	,"SPE_GER_Mortar_AGunner"
	,"SPE_GER_ahmgunner"
	,"SPE_GER_Mortar_Gunner"
	,"SPE_GER_hmgunner2"
	,"SPE_GER_hmgunner"
	,"SPE_GER_amgunner"
	,"SPE_GER_mgunner"
	,"SPE_GER_mgunner2"
	,"SPE_GER_medic"
	,"SPE_GER_medic"
	,"SPE_GER_rifleman"
	,"SPE_GER_rifleman_2"
	,"SPE_GER_ober_rifleman"
	,"SPE_GER_rifleman_lite"
	,"SPE_GER_stggunner"
	,"SPE_GER_sapper"
	,"SPE_GER_sapper_gefr"
	,"SPE_GER_lieutenant"
	,"SPE_GER_ober_grenadier"
	,"SPE_GER_AT_grenadier"
	,"SPE_GER_LAT_Klein_Rifleman"
	,"SPE_GER_LAT_Rifleman"
	,"SPE_GER_Flamethrower_Operator"
	,"SPE_GER_ober_lieutenant"
	,"SPE_GER_hauptmann"
	,"SPE_GER_radioman"
	,"SPE_GER_Assist_SquadLead"
	,"SPE_GER_SquadLead"
	,"SPE_GER_AT_Soldier_Assistant"
	,"SPE_GER_AT_Soldier"
	,"SPE_GER_Sentry_K98k"
	,"SPE_GER_Sentry_MP40"
	,"SPE_GER_AT_Soldier_SquadLead"
	,"SPE_GER_Driver"
	,"SPE_GER_Driver_Lite"
	,"SPE_FFI_CellLeader"
	,"SPE_FFI_Doctor"
	,"SPE_FFI_Doctor"
	,"SPE_FFI_Fighter_G43"
	,"SPE_FFI_Fighter_Garand"
	,"SPE_FFI_Fighter"
	,"SPE_FFI_Fighter_Carbine"
	,"SPE_FFI_Fighter_M3"
	,"SPE_FFI_Fighter_MP40"
	,"SPE_FFI_Fighter_Sten"
	,"SPE_FFI_Grenadier"
	,"SPE_FFI_Autorifleman"
	,"SPE_FFI_MGunner"
	,"SPE_FFI_Militia"
	,"SPE_FFI_Militia_Shotgun"
	,"SPE_FFI_Saboteur_M3A1"
	,"SPE_FFI_Saboteur"
	,"SPE_FFI_Sapper"
	,"SPE_FFI_Sapper_Mle208"
	,"SPE_FFI_Sniper"
	,"SPE_FFI_Tankhunter"
	,"SPE_FFI_Tankhunter"
	,"SPE_FFI_TeamLeader"
	,"SPE_FFI_TeamLeader_Sten"
	,"SPE_FFI_Fighter_No3"
	,"SPE_FFI_Autorifleman_303_LMG"
	,"SPE_FFI_Militia_M37_Shotgun"
	,"SPE_FFI_Militia_No3"
	];
a3e_arr_recon_InfantryTypes = [
	"SPE_FSJ_Mortar_AmmoBearer"
	,"SPE_FSJ_HMG_AmmoBearer"
	,"SPE_FSJ_AT_Soldier_Assistant"
	,"SPE_FSJ_Assist_SquadLead"
	,"SPE_FSJ_Mortar_AGunner"
	,"SPE_FSJ_ahmgunner"
	,"SPE_FSJ_AT_grenadier"
	,"SPE_FSJ_LAT_Soldier"
	,"SPE_FSJ_AT_soldier"
	,"SPE_FSJ_grenadier"
	,"SPE_FSJ_Mortar_Gunner"
	,"SPE_FSJ_hmgunner2"
	,"SPE_FSJ_hmgunner"
	,"SPE_FSJ_amgunner"
	,"SPE_FSJ_Mgunner2"
	,"SPE_FSJ_Mgunner"
	,"SPE_FSJ_medic"
	,"SPE_FSJ_radioman"
	,"SPE_FSJ_Soldier"
	,"SPE_FSJ_Soldier_FG42"
	,"SPE_FSJ_Soldier_STG44"
	,"SPE_FSJ_sapper"
	,"SPE_FSJ_sapper_gefr"
	,"SPE_FSJ_Lieutenant"
	,"SPE_FSJ_Sniper"
	,"SPE_FSJ_Sniper_FG42"
	,"SPE_FSJ_SquadLead"
	,"SPE_FSJ_AT_Soldier_SquadLead"
	,"SPE_US_Rangers_Rifleman_AmmoBearer"
	,"SPE_US_Rangers_Assist_Autorifleman"
	,"SPE_US_Rangers_AHMGunner"
	,"SPE_US_Rangers_Assist_SquadLead"
	,"SPE_US_Rangers_AT_soldier"
	,"SPE_US_Rangers_Autorifleman"
	,"SPE_US_Rangers_captain"
	,"SPE_US_Rangers_engineer"
	,"SPE_US_Rangers_engineer_bangalore"
	,"SPE_US_Rangers_first_lieutenant"
	,"SPE_US_Rangers_Flamethrower_Operator"
	,"SPE_US_Rangers_grenadier"
	,"SPE_US_Rangers_HMGunner"
	,"SPE_US_Rangers_medic"
	,"SPE_US_Rangers_radioman"
	,"SPE_US_Rangers_rifleman"
	,"SPE_US_Rangers_second_lieutenant"
	,"SPE_US_Rangers_SquadLead"
	];
a3e_arr_recon_I_InfantryTypes = [
	"SPE_GER_scout_SquadLead"
	,"SPE_GER_scout_Assist_SquadLead"
	,"SPE_GER_scout_ober_grenadier"
	,"SPE_GER_scout_amgunner"
	,"SPE_GER_scout_mgunner2"
	,"SPE_GER_scout_mgunner"
	,"SPE_GER_scout_rifleman"
	,"SPE_GER_scout_ober_rifleman"
	,"SPE_GER_scout_lieutenant"
	,"SPE_GER_scout_sniper"
	,"SPE_GER_scout_SquadLead"
	,"SPE_GER_scout_Halftrack_Driver"
	,"SPE_FR_Assist_Autorifleman"
	,"SPE_FR_AHMGunner"
	,"SPE_FR_Assist_SquadLead"
	,"SPE_FR_AT_Soldier"
	,"SPE_FR_Autorifleman"
	,"SPE_FR_Captain"
	,"SPE_FR_Engineer"
	,"SPE_FR_Flamethrower_Operator"
	,"SPE_FR_Grenadier"
	,"SPE_FR_HMGunner"
	,"SPE_FR_Medic"
	,"SPE_FR_Radioman"
	,"SPE_FR_Rifleman"
	,"SPE_FR_Rifleman_Carbine"
	,"SPE_FR_Sniper"
	,"SPE_FR_SquadLead"
	,"SPE_FR_Mortar_AmmoBearer"
	,"SPE_FR_HMG_AmmoBearer"
	,"SPE_FR_Mortar_AGunner"
	,"SPE_FR_Mortar_Gunner"
	,"SPE_FR_Sentry_Carbine"
	,"SPE_FR_Sentry"
	];

a3e_units_civilian_InfantryTypes = [
	"SPE_CIV_Citizen_1"
	,"SPE_CIV_Citizen_1_tie"
	,"SPE_CIV_Citizen_1_trop"
	,"SPE_CIV_Citizen_2"
	,"SPE_CIV_Citizen_2_tie"
	,"SPE_CIV_Citizen_2_trop"
	,"SPE_CIV_Citizen_3"
	,"SPE_CIV_Citizen_3_tie"
	,"SPE_CIV_Citizen_3_trop"
	,"SPE_CIV_Citizen_4"
	,"SPE_CIV_Citizen_4_tie"
	,"SPE_CIV_Citizen_4_trop"
	,"SPE_CIV_Citizen_5"
	,"SPE_CIV_Citizen_5_tie"
	,"SPE_CIV_Citizen_5_trop"
	,"SPE_CIV_Citizen_6"
	,"SPE_CIV_Citizen_6_tie"
	,"SPE_CIV_Citizen_6_trop"
	,"SPE_CIV_Citizen_7"
	,"SPE_CIV_Citizen_7_tie"
	,"SPE_CIV_Citizen_7_trop"
	,"SPE_CIV_pak2_zwart"
	,"SPE_CIV_pak2_zwart_alt"
	,"SPE_CIV_pak2_zwart_tie"
	,"SPE_CIV_pak2_zwart_tie_alt"
	,"SPE_CIV_pak2_zwart_swetr"
	,"SPE_CIV_pak2_bruin"
	,"SPE_CIV_pak2_bruin_tie"
	,"SPE_CIV_pak2_bruin_swetr"
	,"SPE_CIV_pak2_grijs"
	,"SPE_CIV_pak2_grijs_tie"
	,"SPE_CIV_pak2_grijs_swetr"
	,"SPE_CIV_Swetr_1"
	,"SPE_CIV_Swetr_1_vest"
	,"SPE_CIV_Swetr_2"
	,"SPE_CIV_Swetr_2_vest"
	,"SPE_CIV_Swetr_3"
	,"SPE_CIV_Swetr_3_vest"
	,"SPE_CIV_Swetr_4"
	,"SPE_CIV_Swetr_4_vest"
	,"SPE_CIV_Swetr_5"
	,"SPE_CIV_Swetr_5_vest"
	,"SPE_CIV_Worker_Coverall_1"
	,"SPE_CIV_Worker_Coverall_1_trop"
	,"SPE_CIV_Worker_Coverall_2"
	,"SPE_CIV_Worker_Coverall_2_trop"
	,"SPE_CIV_Worker_Coverall_3"
	,"SPE_CIV_Worker_Coverall_3_trop"
	,"SPE_CIV_Worker_1"
	,"SPE_CIV_Worker_1_tie"
	,"SPE_CIV_Worker_1_trop"
	,"SPE_CIV_Worker_2"
	,"SPE_CIV_Worker_2_tie"
	,"SPE_CIV_Worker_2_trop"
	,"SPE_CIV_Worker_3"
	,"SPE_CIV_Worker_3_tie"
	,"SPE_CIV_Worker_3_trop"
	,"SPE_CIV_Worker_4"
	,"SPE_CIV_Worker_4_tie"
	,"SPE_CIV_Worker_4_trop"
	,"SPE_CIV_Citizen_1"
	,"SPE_CIV_Citizen_1_tie"
	,"SPE_CIV_Citizen_1_trop"
	,"SPE_CIV_Citizen_2"
	,"SPE_CIV_Citizen_2_tie"
	,"SPE_CIV_Citizen_2_trop"
	,"SPE_CIV_Citizen_3"
	,"SPE_CIV_Citizen_3_tie"
	,"SPE_CIV_Citizen_3_trop"
	,"SPE_CIV_Citizen_4"
	,"SPE_CIV_Citizen_4_tie"
	,"SPE_CIV_Citizen_4_trop"
	,"SPE_CIV_Citizen_5"
	,"SPE_CIV_Citizen_5_tie"
	,"SPE_CIV_Citizen_5_trop"
	,"SPE_CIV_Citizen_6"
	,"SPE_CIV_Citizen_6_tie"
	,"SPE_CIV_Citizen_6_trop"
	,"SPE_CIV_Citizen_7"
	,"SPE_CIV_Citizen_7_tie"
	,"SPE_CIV_Citizen_7_trop"
	,"SPE_CIV_pak2_zwart"
	,"SPE_CIV_pak2_zwart_alt"
	,"SPE_CIV_pak2_zwart_tie"
	,"SPE_CIV_pak2_zwart_tie_alt"
	,"SPE_CIV_pak2_zwart_swetr"
	,"SPE_CIV_pak2_bruin"
	,"SPE_CIV_pak2_bruin_tie"
	,"SPE_CIV_pak2_bruin_swetr"
	,"SPE_CIV_pak2_grijs"
	,"SPE_CIV_pak2_grijs_tie"
	,"SPE_CIV_pak2_grijs_swetr"
	,"SPE_CIV_Swetr_1"
	,"SPE_CIV_Swetr_1_vest"
	,"SPE_CIV_Swetr_2"
	,"SPE_CIV_Swetr_2_vest"
	,"SPE_CIV_Swetr_3"
	,"SPE_CIV_Swetr_3_vest"
	,"SPE_CIV_Swetr_4"
	,"SPE_CIV_Swetr_4_vest"
	,"SPE_CIV_Swetr_5"
	,"SPE_CIV_Swetr_5_vest"
	,"SPE_CIV_Worker_Coverall_1"
	,"SPE_CIV_Worker_Coverall_1_trop"
	,"SPE_CIV_Worker_Coverall_2"
	,"SPE_CIV_Worker_Coverall_2_trop"
	,"SPE_CIV_Worker_Coverall_3"
	,"SPE_CIV_Worker_Coverall_3_trop"
	,"SPE_CIV_Worker_1"
	,"SPE_CIV_Worker_1_tie"
	,"SPE_CIV_Worker_1_trop"
	,"SPE_CIV_Worker_2"
	,"SPE_CIV_Worker_2_tie"
	,"SPE_CIV_Worker_2_trop"
	,"SPE_CIV_Worker_3"
	,"SPE_CIV_Worker_3_tie"
	,"SPE_CIV_Worker_3_trop"
	,"SPE_CIV_Worker_4"
	,"SPE_CIV_Worker_4_tie"
	,"SPE_CIV_Worker_4_trop"

	];

//////////////////////////////////////////////////////////////////
// fn_RoadBlocks.sqf
// Array of templates to use for roadblocks
//////////////////////////////////////////////////////////////////
A3E_RoadblockTemplates = [
	"rb_spe_rb1"];

// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
a3e_arr_Escape_RoadBlock_MannedVehicleTypes = [
	"SPE_ST_R200_MG34"
	,"SPE_ST_SdKfz250_1"
	,"SPE_ST_SdKfz250_1"
	,"SPE_ST_OpelBlitz_Flak38"
	,"SPE_ST_leFH18_AT"
	,"SPE_ST_Pak40"
	,"SPE_ST_Pak40"
	,"SPE_ST_PzKpfwIII_M"
	,"SPE_ST_StuG_III_G_Early"
	,"SPE_ST_Jagdpanther_G1"
	,"SPE_US_G503_MB_M1919"
	,"SPE_US_G503_MB_M2"
	,"SPE_US_G503_MB_M1919_Armoured"
	,"SPE_US_G503_MB_M2_Armoured"
	,"SPE_US_G503_MB_M1919_PATROL"
	,"SPE_US_G503_MB_M2_PATROL"
	,"SPE_US_M3_Halftrack"
	,"SPE_US_M3_Halftrack"
	,"SPE_US_M3_Halftrack"
	,"SPE_US_M3_Halftrack"
	,"SPE_US_M16_Halftrack"
	,"SPE_US_M16_Halftrack"
	,"SPE_US_M16_Halftrack"
	,"SPE_M20_AUC"
	,"SPE_M8_LAC"
	,"SPE_M8_LAC_ringMount"
	,"SPE_M1_81"
	,"SPE_M1_81"
	,"SPE_M1_81"
	,"SPE_M10"
	,"SPE_M18_Hellcat"
	];
a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind = [
	"SPE_GER_R200_MG34"
	,"SPE_GER_R200_MG34"
	,"SPE_SdKfz250_1"
	,"SPE_OpelBlitz_Flak38"
	,"SPE_OpelBlitz_Flak38"
	,"SPE_leFH18_AT"
	,"SPE_FlaK_30"
	,"SPE_FlaK_38"
	,"SPE_Pak40"
	,"SPE_PzKpfwIII_J"
	,"SPE_StuG_III_G_Early"
	,"SPE_FFI_R200_MG34"
	,"SPE_FFI_R200_MG34"
	,"SPE_FFI_SdKfz250_1"
	,"SPE_FFI_SdKfz250_1"
	,"SPE_FR_M3_Halftrack"
	,"SPE_FR_M16_Halftrack"
	,"SPE_FR_M20_AUC"
	,"SPE_FR_57mm_M1"
	,"SPE_FR_M45_Quadmount"
	,"SPE_FR_M10"
	];

// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
a3e_arr_Escape_ReinforcementTruck_vehicleClasses = [
	"SPE_ST_OpelBlitz_Open"
	,"SPE_ST_OpelBlitz"
	,"SPE_CCKW_353"
	,"SPE_CCKW_353_Open"
	,"SPE_CCKW_353_M2"
	,"SPE_US_M3_Halftrack_Unarmed"
	,"SPE_US_M3_Halftrack_Unarmed"
	,"SPE_US_M3_Halftrack"
	];
a3e_arr_Escape_ReinforcementTruck_vehicleClasses_Ind = [
	"SPE_OpelBlitz_Open"
	,"SPE_OpelBlitz"
	,"SPE_GER_R200_Hood"
	,"SPE_FR_M3_Halftrack_Unarmed"
	,"SPE_FR_M3_Halftrack_Unarmed"
	,"SPE_FR_M3_Halftrack"
	];


// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses = [
	"SPE_GER_R200_MG34"
	,"SPE_OpelBlitz_Open"
	,"SPE_OpelBlitz"
	,"SPE_US_M3_Halftrack"
	,"SPE_US_M16_Halftrack"
	,"SPE_US_M16_Halftrack"
	,"SPE_M20_AUC"
	,"SPE_M8_LAC"
	,"SPE_M8_LAC_ringMount"
	,"SPE_M4A0_75_Early"
	];

//////////////////////////////////////////////////////////////////
// fn_createMotorPools.sqf
// Array of templates to use for motor pool
//////////////////////////////////////////////////////////////////
A3E_MotorPoolTemplates = [
	"A3E_fnc_BuildMotorPool_SPE"
	];

// A communication center is guarded by vehicles depending on variable _enemyFrequency. 1 = a random light armor. 2 = a random heavy armor. 3 = a random 
// light *and* a random heavy armor.

//////////////////////////////////////////////////////////////////
// fn_createComCenters.sqf
// Array of templates to use for com centers
//////////////////////////////////////////////////////////////////
A3E_ComCenterTemplates = [
	"a3e_fnc_BuildComCenter_spe1"
	,"a3e_fnc_BuildComCenter_spe_ger1"
	,"a3e_fnc_BuildComCenter_spe1"
	];

// Random array. Light armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_lightArmorClasses = [
	"SPE_ST_PzKpfwIII_J"
	,"SPE_ST_PzKpfwIII_L"
	,"SPE_ST_StuG_III_G_SKB"
	,"SPE_ST_Jagdpanther_G1"
	,"SPE_M8_LAC"
	,"SPE_M8_LAC_ringMount"
	,"SPE_M10"
	,"SPE_M18_Hellcat"
	,"SPE_ST_PzKpfwIII_N"
	,"SPE_ST_PzKpfwIV_G"
	,"SPE_ST_PzKpfwV_G"
	,"SPE_ST_PzKpfwVI_H1"
	,"SPE_M4A0_75_Early"
	,"SPE_M4A0_75"
	,"SPE_M4A0_composite"
	,"SPE_M4A0_105"
	,"SPE_M4A1_76"
	,"SPE_M4A1_75"
	,"SPE_M4A1_75_erla"
	,"SPE_M4A3_105"
	,"SPE_M4A3_75"
	,"SPE_M4A3_76"
	,"SPE_M4A1_T34_Calliope_Direct"
	];
// Random array. Heavy armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_heavyArmorClasses = [
	"SPE_ST_PzKpfwIII_N"
	,"SPE_ST_PzKpfwIV_G"
	,"SPE_ST_PzKpfwV_G"
	,"SPE_ST_PzKpfwVI_H1"
	,"SPE_M4A0_75_Early"
	,"SPE_M4A0_75"
	,"SPE_M4A0_composite"
	,"SPE_M4A0_105"
	,"SPE_M4A1_76"
	,"SPE_M4A1_75"
	,"SPE_M4A1_75_erla"
	,"SPE_M4A3_105"
	,"SPE_M4A3_75"
	,"SPE_M4A3_76"
	,"SPE_M4A1_T34_Calliope_Direct"
	];

// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
//For SPE templates only the bipod variants
a3e_arr_ComCenStaticWeapons = [
	"SPE_ST_MG34_Bipod"
	,"SPE_ST_MG42_Bipod"
	,"SPE_M1919A6_Bipod"];
// A communication center have two parked and empty vehicles of the following possible types.
a3e_arr_ComCenParkedVehicles = [
	"SPE_ST_R200_Unarmed"
	,"SPE_ST_R200_Hood"
	,"SPE_ST_R200_MG34"
	,"SPE_ST_OpelBlitz_Open"
	,"SPE_ST_OpelBlitz_Open"
	,"SPE_ST_OpelBlitz"
	,"SPE_ST_OpelBlitz"
	,"SPE_ST_OpelBlitz_Ambulance"
	,"SPE_ST_OpelBlitz_Ammo"
	,"SPE_ST_OpelBlitz_Fuel"
	,"SPE_ST_OpelBlitz_Repair"
	,"SPE_ST_OpelBlitz_Flak38"
	,"SPE_ST_SdKfz250_1"
	,"SPE_ST_SdKfz250_1"
	,"SPE_ST_Pak40"
	,"SPE_ST_Pak40"
	,"SPE_ST_StuG_III_G_Early"
	,"SPE_ST_PzKpfwIII_J"
	,"SPE_ST_PzKpfwIII_M"
	,"SPE_US_G503_MB_Open"
	,"SPE_US_G503_MB"
	,"SPE_US_G503_MB_Armoured"
	,"SPE_US_G503_MB_M1919"
	,"SPE_US_G503_MB_M1919_Armoured"
	,"SPE_US_G503_MB_M2"
	,"SPE_US_G503_MB_M2_Armoured"
	,"SPE_US_G503_MB_M1919_PATROL"
	,"SPE_US_G503_MB_M2_PATROL"
	,"SPE_CCKW_353"
	,"SPE_CCKW_353_Open"
	,"SPE_CCKW_353_M2"
	,"SPE_CCKW_353_Ambulance"
	,"SPE_CCKW_353_Ammo"
	,"SPE_CCKW_353_Fuel"
	,"SPE_CCKW_353_Repair"
	,"SPE_US_M3_Halftrack_Unarmed"
	,"SPE_US_M3_Halftrack_Unarmed"
	,"SPE_US_M3_Halftrack"
	,"SPE_US_M3_Halftrack"
	,"SPE_US_M3_Halftrack_Ambulance"
	,"SPE_US_M3_Halftrack_Ammo"
	,"SPE_US_M3_Halftrack_Fuel"
	,"SPE_US_M3_Halftrack_Repair"
	,"SPE_US_M16_Halftrack"
	,"SPE_M20_AUC"
	,"SPE_M8_LAC"
	,"SPE_M8_LAC_ringMount"
	,"SPE_M4A0_105"
	,"SPE_M4A0_75_Early"
	,"SPE_M18_Hellcat"
	];

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types may be used.
//Should be civilian, as there are no civ vehicles its a normal enemy truck
a3e_arr_Escape_EnemyCivilianCarTypes = [
	"SPE_ST_R200_Hood"
	,"SPE_ST_OpelBlitz"
	,"SPE_FFI_OpelBlitz"
	,"SPE_FFI_R200_Hood"
	];

// Vehicles, weapons and ammo at ammo depots

// Random array. An ammo depot contains one static weapon of the following types:
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses = [
	"SPE_ST_MG34_Lafette_low_Deployed"
	,"SPE_ST_MG42_Lafette_low_Deployed"
	,"SPE_ST_MG34_Lafette_Deployed"
	,"SPE_GER_SearchLight"
	,"SPE_FlaK_30"
	,"SPE_FlaK_38"
	,"SPE_Pak40"
	,"SPE_leFH18_AT"
	,"SPE_M1919_M2"
	,"SPE_M1919_M2"
	,"SPE_M2_M3"
	,"SPE_57mm_M1"
	,"SPE_M45_Quadmount"

	];
// An ammo depot have one parked and empty vehicle of the following possible types.
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses = [
	"SPE_ST_R200_Unarmed"
	,"SPE_ST_R200_Hood"
	,"SPE_ST_R200_Hood"
	,"SPE_ST_R200_MG34"
	,"SPE_ST_R200_MG34"
	,"SPE_ST_OpelBlitz_Open"
	,"SPE_ST_OpelBlitz_Open"
	,"SPE_ST_OpelBlitz"
	,"SPE_ST_OpelBlitz"
	,"SPE_ST_OpelBlitz_Ambulance"
	,"SPE_ST_OpelBlitz_Ammo"
	,"SPE_ST_OpelBlitz_Fuel"
	,"SPE_ST_OpelBlitz_Repair"
	,"SPE_ST_OpelBlitz_Flak38"
	,"SPE_ST_SdKfz250_1"
	,"SPE_ST_SdKfz250_1"
	,"SPE_ST_Pak40"
	,"SPE_ST_Pak40"
	,"SPE_ST_StuG_III_G_Early"
	,"SPE_ST_PzKpfwIII_J"
	,"SPE_US_G503_MB_Open"
	,"SPE_US_G503_MB"
	,"SPE_US_G503_MB_Armoured"
	,"SPE_US_G503_MB_M1919"
	,"SPE_US_G503_MB_M1919_Armoured"
	,"SPE_US_G503_MB_M2"
	,"SPE_US_G503_MB_M2_Armoured"
	,"SPE_US_G503_MB_M1919_PATROL"
	,"SPE_US_G503_MB_M2_PATROL"
	,"SPE_CCKW_353"
	,"SPE_CCKW_353_Open"
	,"SPE_CCKW_353_M2"
	,"SPE_CCKW_353_Ambulance"
	,"SPE_CCKW_353_Ammo"
	,"SPE_CCKW_353_Fuel"
	,"SPE_CCKW_353_Repair"
	,"SPE_US_M3_Halftrack_Unarmed"
	,"SPE_US_M3_Halftrack_Unarmed"
	,"SPE_US_M3_Halftrack"
	,"SPE_US_M3_Halftrack"
	,"SPE_US_M3_Halftrack_Ambulance"
	,"SPE_US_M3_Halftrack_Ammo"
	,"SPE_US_M3_Halftrack_Fuel"
	,"SPE_US_M3_Halftrack_Repair"
	,"SPE_US_M16_Halftrack"
	,"SPE_M20_AUC"
	,"SPE_M8_LAC"
	,"SPE_M8_LAC_ringMount"
	];

//Random array. Types of helicopters to spawn
a3e_arr_O_attack_heli = [
	"SPE_FW190F8"
	,"SPE_P47"];
a3e_arr_O_transport_heli = [
	"SPE_FW190F8",
	"SPE_P47"];
a3e_arr_O_pilots = [
	"SPE_GER_pilot"
	,"SPE_US_Pilot"
	,"SPE_US_Pilot_2"
	];
a3e_arr_I_transport_heli = [
	"SPE_FW190F8"
	, "SPE_P47"];
a3e_arr_I_pilots = [
	"SPE_GER_pilot",
	"SPE_US_Pilot_Unequipped"];
	
//////////////////////////////////////////////////////////////////
// fn_createAmmoDepots.sqf
// Array of templates to usefor ammo depots
//////////////////////////////////////////////////////////////////
A3E_AmmoDepotTemplates = [
	"A3E_fnc_AmmoDepot_spe1"
	,"A3E_fnc_AmmoDepot_spe2"
	,"A3E_fnc_AmmoDepot_spe3"
	,"A3E_fnc_AmmoDepot_spe1"
	,"A3E_fnc_AmmoDepot_spe2"
	,"A3E_fnc_AmmoDepot_spe3"
	];
	
//Ammo Depot Crates
// classnames to be used for the crates that are placed at an ammo depot
a3e_arr_AmmoDepotCrate_Basic = ["SPE_Weaponcrate_MP40_GER", "SPE_BasicWeaponsBox_US"];
a3e_arr_AmmoDepotCrate_Special = ["SPE_BasicAmmunitionBox_GER", "SPE_US_2x_Open_Ammocrate_alt_Rifle_Ball"];
a3e_arr_AmmoDepotCrate_Launchers = ["SPE_4Rnd_Panzerfaust30", "SPE_BasicWeaponsBox_US"];
a3e_arr_AmmoDepotCrate_Ordnance = ["SPE_Mine_Ammo_Box_Ger", "SPE_Mine_AmmoBox_US"];
a3e_arr_AmmoDepotCrate_Vehicle = ["SPE_AmmoCrate_VehicleAmmo_GER", "SPE_AmmoCrate_VehicleAmmo_US"];
a3e_arr_AmmoDepotCrate_Items = ["SPE_AmmoCrate_Mortar_FLARE_GER", "SPE_BasicAmmunitionBox_US"];
a3e_arr_AmmoDepotCrate_Random = ["SPE_Weaponcrate_K98_GER", "SPE_BasicWeaponsBox_US"];
a3e_arr_AmmoDepotCrate_RandomInf = ["SPE_Weaponcrate_MP40_GER", "SPE_BasicWeaponsBox_US"];
a3e_arr_AmmoDepotCrate_Car = ["SPE_AmmoCrate_Mortar_FLARE_GER", "SPE_US_Open_Ammocrate_Rifle_Ball"];
a3e_arr_AmmoDepotCrate_CrashSite = ["SPE_A5_Dropbag_Container_Weapons", "SPE_Weaponcrate_MP40_GER"];
a3e_arr_AmmoDepotCrate_Extra1 = ["SPE_Weaponcrate_K98_GER", "SPE_Hay_WeaponCache_FFI"];
a3e_arr_AmmoDepotCrate_Extra2 = ["SPE_BasicWeaponsBox_GER", "SPE_Hay_WeaponCache_FFI"];

// The following arrays define weapons and ammo contained at the ammo depots
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.

// Weapons and ammo in the basic weapons box
a3e_arr_AmmoDepotBasicWeapons = [];
// CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_P08", 50, 4, 8, ["SPE_8Rnd_9x19_P08"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_K98", 50, 4, 8, ["SPE_5Rnd_792x57"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_K98_Late_Bayonet", 100, 2, 4, ["SPE_5Rnd_792x57"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_MP40", 50, 2, 4, ["SPE_32Rnd_9x19"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_MP35", 40, 2, 4, ["SPE_32Rnd_MP35_9x19"], 8];
// non-CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_Fusil_Mle_208_12", 30, 1, 3, ["SPE_2Rnd_12x65_Pellets","SPE_2Rnd_12x65_Slug"], 20];

// CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_M1911", 50, 4, 8, ["SPE_7Rnd_45ACP_1911"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_M1_Carbine", 50, 4, 8, ["SPE_15Rnd_762x33"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_M1_Garand", 100, 2, 4, ["SPE_8Rnd_762x63"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_M1918A2_BAR", 30, 2, 4, ["SPE_20Rnd_762x63"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_M1918A0_BAR", 20, 2, 4, ["SPE_20Rnd_762x63"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_M1918A2_erla_BAR", 20, 2, 4, ["SPE_20Rnd_762x63"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_M1A1_Thompson", 30, 2, 4, ["SPE_30Rnd_Thompson_45ACP"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_M3_GreaseGun", 50, 2, 4, ["SPE_30Rnd_M3_GreaseGun_45ACP"], 8];
// non-CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_K98_Late", 30, 1, 3, ["SPE_5Rnd_792x57"], 16];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_K98_GW", 30, 1, 3, ["SPE_5Rnd_792x57", "SPE_1Rnd_G_SPRGR_30", "SPE_1Rnd_G_NBGR_42", "SPE_1Rnd_G_FLGR"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_No3_Mk1_Enfield_M1917_Bayonet", 30, 1, 3, ["SPE_5Rnd_770x56", "SPE_5Rnd_770x56_MKVIII", "SPE_5Rnd_770x56_AP_MKI"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_Fusil_Mle_208_12", 50, 1, 3, ["SPE_2Rnd_12x65_Pellets","SPE_2Rnd_12x65_Slug"], 20];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_MP40", 30, 1, 3, ["SPE_32Rnd_9x19"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_MAS_36", 30, 1, 3, ["SPE_5Rnd_75x54","SPE_5Rnd_75x54_35P_AP"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["SPE_G43", 30, 1, 3, ["SPE_10Rnd_792x57"], 8];

// Weapons and ammo in the special weapons box
a3e_arr_AmmoDepotSpecialWeapons = [];
// CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_G43", 50, 1, 2, ["SPE_10Rnd_792x57"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_STG44", 25, 1, 2, ["SPE_30Rnd_792x33"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_FG42_E", 25, 1, 2, ["SPE_20Rnd_792x57_t"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_K98ZF39", 40, 2, 4, ["SPE_5Rnd_792x57_SMK"], 20];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_K98_GW", 50, 1, 2, ["SPE_5Rnd_792x57", "SPE_1Rnd_G_SPRGR_30", "SPE_1Rnd_G_PZGR_40", "SPE_1Rnd_G_FLGR"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_K98_Late_GW", 50, 2, 4, ["SPE_5Rnd_792x57", "SPE_1Rnd_G_SPRGR_30", "SPE_1Rnd_G_PZGR_30", "SPE_1Rnd_G_FLGR"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_Flammenwerfer41", 20, 1, 2, ["SPE_Flammenwerfer41_Mag"], 6];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_MG34", 25, 1, 2, ["SPE_50Rnd_792x57_sS"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_MG42", 40, 1, 2, ["SPE_50Rnd_792x57"], 8];
// non-CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_Fusil_Mle_208_12_Sawedoff", 20, 2, 4, ["SPE_2Rnd_12x65_Pellets","SPE_2Rnd_12x65_No4_Buck"], 20];

// CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_Sten_Mk2", 50, 1, 2, ["SPE_32Rnd_9x19_Sten"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_Sten_Mk2_Suppressed", 25, 1, 2, ["SPE_32Rnd_9x19_Sten"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_Model_37_Riotgun", 25, 1, 2, ["SPE_5Rnd_12x70_Slug","SPE_5Rnd_12x70_Pellets","SPE_5Rnd_12x70_No4_Buck"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_Model_37_Trenchgun_M1917_Bayonet", 25, 1, 2, ["SPE_5Rnd_12x70_Slug","SPE_5Rnd_12x70_Pellets","SPE_5Rnd_12x70_No4_Buck"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_M1903A4_Springfield", 40, 2, 4, ["SPE_5Rnd_762x63_M1"], 20];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_M1_Garand_M7", 50, 1, 2, ["SPE_8Rnd_762x63_t", "SPE_1Rnd_G_Mk2", "SPE_1Rnd_G_M17A1"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_M1_Carbine_M8", 50, 2, 4, ["SPE_15Rnd_762x33_t", "SPE_1Rnd_G_M9A1", "SPE_1Rnd_G_M17A1"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_M2_Flamethrower", 20, 1, 2, ["SPE_M2_Flamethrower_Mag"], 6];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_M1_Carbine_M8", 20, 1, 2, ["SPE_15Rnd_762x33_t"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_M1919A4", 25, 1, 2, ["SPE_50Rnd_762x63_M1"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_M1919A6", 20, 1, 2, ["SPE_50Rnd_762x63_M2_AP"], 8];

// non-CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_FM_24_M29", 40, 2, 4, ["SPE_25Rnd_75x54"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_LMG_303_Mk2", 40, 2, 4, ["SPE_30Rnd_770x56"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_LMG_303_Mk2", 30, 2, 4, ["SPE_30Rnd_770x56_MKVIII","SPE_30Rnd_770x56_AP_MKI"], 6];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_K98ZF39", 20, 2, 4, ["SPE_5Rnd_792x57"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["SPE_Fusil_Mle_208_12_Sawedoff", 30, 2, 4, ["SPE_2Rnd_12x65_Pellets","SPE_2Rnd_12x65_No4_Buck"], 20];

// Weapons and ammo in the launchers box
a3e_arr_AmmoDepotLaunchers = [];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_PzFaust_30m", 50, 1, 2, ["SPE_1Rnd_PzFaust_30m"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_PzFaust_60m", 30, 1, 2, ["SPE_1Rnd_PzFaust_60m"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_Faustpatrone", 50, 1, 2, ["SPE_1Rnd_Faustpatrone"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_RPzB_43", 30, 1, 2, ["SPE_1Rnd_RPzBGr_4322"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_RPzB_54", 30, 1, 2, ["SPE_1Rnd_RPzBGr_4322"], 1];

a3e_arr_AmmoDepotLaunchers pushback ["SPE_M1A1_Bazooka", 50, 3, 5, ["SPE_1Rnd_60mm_M6"], 2];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_M9A1_Bazooka", 40, 3, 5, ["SPE_1Rnd_60mm_M6A3"], 2];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_M1_81_Barrel", 30, 1, 3, [objNull], 0];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_M1_81_Stand", 30, 1, 3, [objNull], 0];
// non-CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["SPE_PzFaust_30m", 20, 1, 2, ["SPE_1Rnd_PzFaust_30m"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_PzFaust_60m", 10, 1, 2, ["SPE_1Rnd_PzFaust_60m"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["SPE_Faustpatrone", 30, 1, 2, ["SPE_1Rnd_Faustpatrone"], 1];


// Weapons and ammo in the ordnance box
a3e_arr_AmmoDepotOrdnance = [];
// General weapons
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_Ladung_Small_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_Ladung_Big_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_Shg24x7_Improvised_Mine_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_TMI_42_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 20, 1, 1, ["SPE_SMI_35_Pressure_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 20, 1, 1, ["SPE_SMI_35_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 20, 1, 1, ["SPE_SMI_35_1_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 20, 1, 1, ["SPE_STMI_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_shumine_42_MINE_mag"], 5];

a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_US_TNT_half_pound_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_US_TNT_4pound_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_US_M1A1_ATMINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_US_Bangalore_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_US_M3_Pressure_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["SPE_US_M3_MINE_mag"], 5];

// Weapons and ammo in the vehicle box (the big one)
// Some high volumes (mostly for immersion)
a3e_arr_AmmoDepotVehicle = [];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_Shg24"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_Shg24_Frag"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_Shg24x7"], 20];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_NB39"], 20];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_NBK39b"], 20];
a3e_arr_AmmoDepotVehicle pushback [objNull, 80, 1, 1, ["SPE_Handrauchzeichen_Red", "SPE_Handrauchzeichen_Violet", "SPE_Handrauchzeichen_Yellow", "SPE_Rauchsichtzeichen_Orange"], 20];
//a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["SPE_1Rnd_G_SPRGR_30"], 20];	//HE
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["SPE_1Rnd_G_PZGR_30"], 20];	//HEAT
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["SPE_1Rnd_G_PZGR_40"], 20];	//HEAT
a3e_arr_AmmoDepotVehicle pushback [objNull, 100, 1, 1, ["SPE_1Rnd_G_FLGR"], 50];	//Flare
a3e_arr_AmmoDepotVehicle pushback [objNull, 80, 1, 1, ["SPE_1Rnd_G_NBGR_42"], 20];	//Smoke
//a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["1Rnd_HE_Grenade_shell", "3Rnd_HE_Grenade_shell"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_US_Mk_1"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_US_Mk_2"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_US_Mk_2_Yellow"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_US_Mk_3"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_M39"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["SPE_US_AN_M14"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 80, 1, 1, ["SPE_US_M15", "SPE_US_M18", "SPE_US_M18_Green", "SPE_US_M18_Red", "SPE_US_M18_Violet","SPE_US_M18_Yellow"], 20];
//a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["SPE_1Rnd_G_Mk2"], 20];	//HE
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["SPE_1Rnd_G_M9A1"], 20];	//HEAT
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["SPE_1Rnd_G_M2_AN_M14"], 20];	//Incendiary
a3e_arr_AmmoDepotVehicle pushback [objNull, 100, 1, 1, ["SPE_1Rnd_G_M17A1","SPE_1Rnd_G_M19A1","SPE_1Rnd_G_M21A1","SPE_1Rnd_G_M51A1"], 30];	//Flare
a3e_arr_AmmoDepotVehicle pushback [objNull, 80, 1, 1, ["SPE_1Rnd_G_M2_ANM8", "SPE_1Rnd_G_M2_M18_Red", "SPE_1Rnd_G_M2_M18_Green" ,"SPE_1Rnd_G_M2_M18_Yellow" ,"SPE_1Rnd_G_M2_M18_Violet"], 20];	//Smoke


a3e_arr_AmmoDepotVehicleItems = [];
a3e_arr_AmmoDepotVehicleItems pushback ["SPE_ToolKit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["SPE_GER_Medkit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["SPE_GER_FirstAidKit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Dienst_Brille", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Sunglasses_GER_Red", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Sunglasses_GER_Brown", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Dust_Goggles", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Dust_Goggles_2", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["SPE_GER_Headset", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_GER_Headset", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Pipe_Sir_Winston", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Cigarette_Grundstein", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Cigarette_Belomorkanal", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Cigar_Moza", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Cigarette_Strike_Outs", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["SPE_ToolKit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["SPE_US_Medkit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["SPE_US_FirstAidKit", 100, 10, 50, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Sunglasses_US_Red", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Sunglasses_US_Yellow", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Polar_Goggles", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_SWDG_Goggles", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Ful_Vue", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Ful_Vue_Reinforced", 50, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Pipe_Sir_Winston", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Cigarette_Grundstein", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Cigarette_Belomorkanal", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Cigar_Moza", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["G_SPE_Cigarette_Strike_Outs", 20, 1, 3, [], 0];
a3e_arr_AmmoDepotVehicleBackpacks = ["B_SPE_US_M36","B_SPE_US_M36_Bandoleer","B_SPE_US_M2Flamethrower","B_SPE_US_Backpack_roll","B_SPE_GER_A_frame","B_SPE_GER_A_frame_Full","B_SPE_GER_Flammenwerfer_41","B_SPE_GER_Tonister41_Frame"];

// Items

// Index 0: Item classname.
// Index 1: Item's probability of presence (in percent, 0-100)..
// Index 2: Minimum amount.
// Index 3: Maximum amount.

a3e_arr_AmmoDepotItems = [];
//a3e_arr_AmmoDepotItems pushback ["Laserdesignator_02_ghex_F", 10, 1, 2];
/*if(A3E_Param_NoNightvision==0) then {
	a3e_arr_AmmoDepotItems pushback ["O_NVGoggles_ghex_F", 10, 1, 3];
};*/
a3e_arr_AmmoDepotItems pushback ["SPE_Binocular_GER", 50, 2, 3, [], 0];
a3e_arr_AmmoDepotItems pushback ["SPE_GER_ItemCompass_deg", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_GER_ItemCompass", 50, 1, 3];
//a3e_arr_AmmoDepotItems pushback ["ItemGPS", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["ItemRadio", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["SPE_GER_ItemWatch", 50, 1, 10];
//a3e_arr_AmmoDepotItems pushback ["acc_flashlight", 50, 1, 5];
//a3e_arr_AmmoDepotItems pushback ["acc_pointer_IR", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_ACC_K98_Bayo", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_ACC_GW_SB_Empty", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_Optic_ZFG42", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_Binocular_US", 50, 2, 3, [], 0];
a3e_arr_AmmoDepotItems pushback ["SPE_US_ItemCompass", 50, 1, 3];
//a3e_arr_AmmoDepotItems pushback ["ItemGPS", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["ItemRadio", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["SPE_US_ItemWatch", 50, 1, 10];
//a3e_arr_AmmoDepotItems pushback ["acc_flashlight", 50, 1, 5];
//a3e_arr_AmmoDepotItems pushback ["acc_pointer_IR", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_M1918A2_BAR_Handle", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_M1918A2_BAR_Bipod", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_ACC_M1_Bayo", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_ACC_M1905_Bayo", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_ACC_M1917_Bayo", 30, 1, 3];
a3e_arr_AmmoDepotItems pushback ["SPE_ACC_GL_M1", 30, 1, 3];	//Springfield
a3e_arr_AmmoDepotItems pushback ["SPE_ACC_GL_M7", 30, 1, 3];	//Garand
a3e_arr_AmmoDepotItems pushback ["SPE_ACC_GL_M8", 30, 1, 3];	//M1
a3e_arr_AmmoDepotItems pushback ["SPE_ACC_M3_Suppressor_45acp", 20, 1, 3];


// Weapons that may show up in civilian cars

// Index 0: Weapon classname.
// Index 1: Magazine classname.
// Index 2: Number of magazines.
a3e_arr_CivilianCarWeapons = [];
a3e_arr_CivilianCarWeapons pushback ["SPE_P08", "SPE_8Rnd_9x19_P08", 3];
a3e_arr_CivilianCarWeapons pushback ["SPE_M1911", "SPE_7Rnd_45ACP_1911", 5];
a3e_arr_CivilianCarWeapons pushback ["SPE_Fusil_Mle_208_12_Sawedoff", "SPE_2Rnd_12x65_Pellets", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_Fusil_Mle_208_12_Sawedoff", "SPE_2Rnd_12x65_No4_Buck", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_Fusil_Mle_208_12", "SPE_2Rnd_12x65_Slug", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_Fusil_Mle_208_12", "SPE_2Rnd_12x65_Pellets", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_K98_Late", "SPE_5Rnd_792x57", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_PzFaust_30m", "SPE_1Rnd_PzFaust_30m", 1];
a3e_arr_CivilianCarWeapons pushback ["SPE_M1903A3_Springfield", "SPE_5Rnd_762x63_M1", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_M1A1_Carbine", "SPE_15Rnd_762x33_t", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_No3_Mk1_Enfield_M1917_Bayonet", "SPE_5Rnd_770x56", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_MAS_36", "SPE_5Rnd_75x54", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_MP40", "SPE_32Rnd_9x19", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_MP35", "SPE_32rnd_MP35_9x19_t", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_STG44", "SPE_30Rnd_792x33", 12];
a3e_arr_CivilianCarWeapons pushback ["SPE_FM_24_M29", "SPE_25Rnd_75x54", 12];
a3e_arr_CivilianCarWeapons pushback ["SPE_Faustpatrone", "SPE_1Rnd_Faustpatrone", 1];
a3e_arr_CivilianCarWeapons pushback ["SPE_Sten_Mk2_Suppressed", "SPE_32Rnd_9x19_Sten", 8];
//a3e_arr_CivilianCarWeapons pushback ["SMG_01_Holo_F", "30Rnd_45ACP_Mag_SMG_01_Tracer_Green", 5];
//a3e_arr_CivilianCarWeapons pushback ["SMG_02_ACO_F", "30Rnd_9x21_Mag", 12];
//a3e_arr_CivilianCarWeapons pushback ["srifle_DMR_06_camo_khs_F", "20Rnd_762x51_Mag", 8];
//a3e_arr_CivilianCarWeapons pushback ["launch_RPG32_F", "RPG32_F", 2];
a3e_arr_CivilianCarWeapons pushback ["SPE_GER_FirstAidKit", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["SPE_US_Medkit", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["SPE_ToolKit", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["SPE_Binocular_US", objNull, 0];
a3e_arr_CivilianCarWeapons pushback [objNull, "SPE_US_TNT_4pound_mag", 2];
a3e_arr_CivilianCarWeapons pushback [objNull, "SPE_Shg24_Frag", 5];
a3e_arr_CivilianCarWeapons pushback [objNull, "SPE_Rauchsichtzeichen_Orange", 5];

a3e_arr_CivilianCarWeapons pushback ["SPE_P08", "SPE_8Rnd_9x19_P08", 5];
a3e_arr_CivilianCarWeapons pushback ["SPE_M1911", "SPE_7Rnd_45ACP_1911", 5];
a3e_arr_CivilianCarWeapons pushback ["SPE_Fusil_Mle_208_12_Sawedoff", "SPE_2Rnd_12x65_Pellets", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_Fusil_Mle_208_12_Sawedoff", "SPE_2Rnd_12x65_No4_Buck", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_Fusil_Mle_208_12", "SPE_2Rnd_12x65_Slug", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_Fusil_Mle_208_12", "SPE_2Rnd_12x65_Pellets", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_Model_37_Riotgun", "SPE_5Rnd_12x70_Pellets", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_Model_37_Riotgun", "SPE_5Rnd_12x70_No4_Buck", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_K98_Late", "SPE_5Rnd_792x57", 10];
a3e_arr_CivilianCarWeapons pushback ["SPE_PzFaust_30m", "SPE_1Rnd_PzFaust_30m", 1];
a3e_arr_CivilianCarWeapons pushback ["SPE_M1903A3_Springfield", "SPE_5Rnd_762x63_M1", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_No3_Mk1_Enfield_M1917_Bayonet", "SPE_5Rnd_770x56", 6];
a3e_arr_CivilianCarWeapons pushback ["SPE_MP40", "SPE_32Rnd_9x19", 8];
a3e_arr_CivilianCarWeapons pushback ["SPE_STG44", "SPE_30Rnd_792x33", 12];
a3e_arr_CivilianCarWeapons pushback ["SPE_FM_24_M29", "SPE_25Rnd_75x54", 12];
a3e_arr_CivilianCarWeapons pushback ["SPE_Faustpatrone", "SPE_1Rnd_Faustpatrone", 1];
//a3e_arr_CivilianCarWeapons pushback ["SMG_01_Holo_F", "30Rnd_45ACP_Mag_SMG_01_Tracer_Green", 5];
//a3e_arr_CivilianCarWeapons pushback ["SMG_02_ACO_F", "30Rnd_9x21_Mag", 12];
//a3e_arr_CivilianCarWeapons pushback ["srifle_DMR_06_camo_khs_F", "20Rnd_762x51_Mag", 8];
//a3e_arr_CivilianCarWeapons pushback ["launch_RPG32_F", "RPG32_F", 2];
a3e_arr_CivilianCarWeapons pushback ["SPE_GER_FirstAidKit", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["SPE_US_Medkit", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["SPE_ToolKit", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["SPE_Binocular_US", objNull, 0];
a3e_arr_CivilianCarWeapons pushback [objNull, "SPE_US_TNT_4pound_mag", 2];
a3e_arr_CivilianCarWeapons pushback [objNull, "SPE_Shg24_Frag", 5];
a3e_arr_CivilianCarWeapons pushback [objNull, "SPE_Rauchsichtzeichen_Orange", 5];


// Here is a list of scopes, might get randomly added to enemy patrols:
a3e_arr_Scopes = [
	"SPE_M1918A2_BAR_Handle"];
a3e_arr_Scopes_SMG = [];
a3e_arr_Scopes_Sniper = [];
a3e_arr_NightScopes = [];
a3e_arr_TWSScopes = [];

// Here is a list of bipods, might get randomly added to enemy patrols:
a3e_arr_Bipods = [
	"SPE_M1918A2_BAR_Bipod"];

//////////////////////////////////////////////////////////////////
// revive/functions/revive/fn_Check_Revive_FAK.sqf and fn_HandleRevive
// additional types of FAKs or Medkits that should work for revives
// arrays have to be global, because check is performed on client
//////////////////////////////////////////////////////////////////
private _faks = [
	"FirstAidKit"
	,"SPE_US_FirstAidKit"
	,"SPE_GER_FirstAidKit"];
missionNamespace setvariable ["a3e_arr_faks",_faks,true];
_medkits = [
	"Medikit"
	,"SPE_GER_Medkit"
	,"SPE_US_Medkit"];
missionNamespace setvariable ["a3e_arr_medkits",_medkits,true];

//////////////////////////////////////////////////////////////////
// fn_addIntel.sqf
// types of intel items you can find on enemies
//////////////////////////////////////////////////////////////////
A3E_IntelItems = [
	"Files"
	,"FileTopSecret"
	,"FilesSecret"
	//,"FlashDisk"
	,"DocumentsSecret"
	,"Wallet_ID"
	,"FileNetworkStructure"
	//,"MobilePhone"
	//,"SmartPhone"
	];

//////////////////////////////////////////////////////////////////
// SelectExtractionZone.sqf
// Which type of extractions are supported/preferred by this unitclasses version?
// Only if supported by terrain, so if corresponding markers are placed
// Basic fallback is always Heli extraction
// Available types: a3e_arr_extractiontypes = ["air","land","sea"];
//////////////////////////////////////////////////////////////////
if (isClass(configFile >> "CfgPatches" >> "spex_tem_utah_beach")) 
then {
	a3e_arr_extractiontypes = [
	"land"
	,"sea"];
		} 
else {
	a3e_arr_extractiontypes = [
	"land"];
	};

//////////////////////////////////////////////////////////////////
// RunExtraction.sqf
// Helicopters that come to pick you up
// always the fallback option, use BIS units if mod has no helicopters
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_chopper = [
	"O_Heli_Light_02_dynamicLoadout_F"
	, "B_Heli_Transport_01_F"];
a3e_arr_extraction_chopper_escort = [
	"O_Heli_Attack_02_dynamicLoadout_F"
	, "B_Heli_Attack_01_dynamicLoadout_F"];

//////////////////////////////////////////////////////////////////
// RunExtractionBoat.sqf
// Boats that come to pick you up
//////////////////////////////////////////////////////////////////
if (isClass(configFile >> "CfgPatches" >> "spex_tem_utah_beach")) 
then {
	a3e_arr_extraction_boat = [
		"SPEX_LCVP"];
	a3e_arr_extraction_boat_escort = [
		"SPEX_LCVP"];
		} 
else {
	a3e_arr_extraction_boat = [
		"O_T_Boat_Armed_01_hmg_F"];
	a3e_arr_extraction_boat_escort = [
		"O_T_Boat_Armed_01_hmg_F"];
	};

//////////////////////////////////////////////////////////////////
// RunExtractionLand.sqf
// Cars/APCs that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_car = [
	"SPE_US_M3_Halftrack"	//9
	,"SPE_US_M3_Halftrack_Unarmed"	//11
	,"SPE_CCKW_353"	//11
	,"SPE_CCKW_353_Open"	//11
	,"SPE_M20_AUC"];	//8
a3e_arr_extraction_car_escort = [
	"SPE_M10"
	,"SPE_M18_Hellcat"
	,"SPE_M4A0_75_Early"
	,"SPE_M4A0_75"
	,"SPE_M4A1_75"
	,"SPE_M4A1_76"
	,"SPE_M4A1_T34_Calliope_Direct"
	,"SPE_M4A3_105"
	,"SPE_M4A3_75"
	,"SPE_M4A3_76"
	,"SPE_SdKfz250_1"
	,"SPE_PzKpfwIII_J"
	,"SPE_PzKpfwIII_L"
	,"SPE_PzKpfwIII_M"
	,"SPE_PzKpfwIII_N"
	,"SPE_PzKpfwIV_G"
	,"SPE_PzKpfwV_G"
	,"SPE_PzKpfwVI_H1"
	];

//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf and CreateSearchDrone.sqf
// Classnames of drones
//////////////////////////////////////////////////////////////////
a3e_arr_searchdrone = ["SPE_P47"];

//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf
// Classnames of leaflet drones, disabled if array is created but empty 
//////////////////////////////////////////////////////////////////
a3e_arr_leafletdrone = [];

//////////////////////////////////////////////////////////////////
// CreateSearchChopper.sqf
// first chopper that's called when you escape
// Two arrays for "Easy" and "Hard" parameter, both used on stadard setting
//////////////////////////////////////////////////////////////////
a3e_arr_searchChopperEasy = [];
a3e_arr_searchChopperHard = [
	"SPE_FW190F8",
	"SPE_P47"];
a3e_arr_searchChopper_pilot = [
	"SPE_GER_pilot",
	"SPE_US_Pilot"];
a3e_arr_searchChopper_crew = [
	"SPE_GER_pilot",
	"SPE_US_Pilot_2"];

if(A3E_Param_SearchChopper==0) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy + a3e_arr_searchChopperHard;
};
if(A3E_Param_SearchChopper==1) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy;
};
if(A3E_Param_SearchChopper==2) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperHard;
};

//////////////////////////////////////////////////////////////////
// fn_AmbientInfantry
// only INS is used
//is this even used?
//////////////////////////////////////////////////////////////////
a3e_arr_AmbientInfantry_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_AmbientInfantry_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_InitGuardedLocations
// Units spawned to guard ammo camps and com centers
// Only INS used
//////////////////////////////////////////////////////////////////
a3e_arr_InitGuardedLocations_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_InitGuardedLocations_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_roadblocks
// units spawned on roadblocks
// Only INS used
// vehicle arrays not used, uses a3e_arr_Escape_RoadBlock_MannedVehicleTypes and a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind instead
//////////////////////////////////////////////////////////////////
a3e_arr_roadblocks_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_roadblocks_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

a3e_arr_roadblocks_Veh_INS = a3e_arr_Escape_RoadBlock_MannedVehicleTypes;
a3e_arr_roadblocks_Veh_GUE = a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_PopulateAquaticPatrol
// boats that are spawned
//////////////////////////////////////////////////////////////////
if (isClass(configFile >> "CfgPatches" >> "spex_tem_utah_beach")) 
then {
	a3e_arr_AquaticPatrols = ["SPEX_LCVP"];
		} 
else {
	a3e_arr_AquaticPatrols = [];
	};

//////////////////////////////////////////////////////////////////
// fn_AmmoDepot
// What kind of weapon boxes are spawned when the parameter "additional weapons" is activated
// use to add boxes from mods to the ammo depots
//////////////////////////////////////////////////////////////////
a3e_additional_weapon_box_1 = "SPE_BasicWeaponsBox_US";
a3e_additional_weapon_box_2 = "SPE_BasicWeaponsBox_GER";

//////////////////////////////////////////////////////////////////
// fn_createMortarSites.sqf
// Array of templates to usefor mortar sites
//////////////////////////////////////////////////////////////////
A3E_MortarSiteTemplates = [
	"A3E_fnc_MortarSite_spe1"
	];

//////////////////////////////////////////////////////////////////
// fn_MortarSite
// mortar spawned in the mortar camps
//////////////////////////////////////////////////////////////////
a3e_arr_MortarSite = [
	"SPE_ST_GrW278_1"
	, "SPE_M1_81"];

//////////////////////////////////////////////////////////////////
// fn_CallCAS.sqf
// Classnames of planes for the CAS module
//////////////////////////////////////////////////////////////////
a3e_arr_CASplane = [
	"SPE_FW190F8",
	"SPE_P47"];

//////////////////////////////////////////////////////////////////
// fn_CrashSite
// Random crashsite of west heli with west weapons
//////////////////////////////////////////////////////////////////
// The following arrays define weapons and ammo contained at crash sites
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.
a3e_arr_CrashSiteWrecks = [
	"SPE_P47_MRWreck",
	"SPE_FW190F8_MRWreck"];
if(isClass(configFile >> "CfgPatches" >> "spex_tem_utah_beach")) then {			//check if SPEX mod is loaded
	a3e_arr_CrashSiteWrecks pushback "SPEX_HORSA_Wreck";
	a3e_arr_CrashSiteWrecks pushback "SPEX_C47_Skytrain_wreck";
	a3e_arr_CrashSiteWrecks pushback "SPE_FW190F8_MRWreck";
	};

a3e_arr_CrashSiteCrew = [
	"SPE_US_Pilot"
	,"SPE_US_Pilot_2"
	,"SPE_GER_pilot"];
a3e_arr_CrashSiteWrecksCar = [
	];
a3e_arr_CrashSiteCrewCar = [
	];
// Weapons and ammo in crash site box
a3e_arr_CrashSiteWeapons = [];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1A1_Bazooka", 50, 1, 2, ["SPE_1Rnd_60mm_M6"], 1];
a3e_arr_CrashSiteWeapons pushback ["SPE_M9A1_Bazooka", 30, 1, 2, ["SPE_1Rnd_60mm_M6A3"], 1];
a3e_arr_CrashSiteWeapons pushback ["SPE_Sten_Mk2", 40, 1, 2, ["SPE_32Rnd_9x19_Sten"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_Sten_Mk2_Suppressed", 20, 1, 1, ["SPE_32Rnd_9x19_Sten"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_Model_37_Riotgun", 20, 1, 1, ["SPE_5Rnd_12x70_Pellets","SPE_5Rnd_12x70_Slug","SPE_5Rnd_12x70_No4_Buck"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_Model_37_Trenchgun_M1917_Bayonet", 20, 1, 1, ["SPE_5Rnd_12x70_Pellets","SPE_5Rnd_12x70_Slug","SPE_5Rnd_12x70_No4_Buck"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1_Garand_Bayonet", 15, 1, 3, ["SPE_8Rnd_762x63"], 10];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1903A3_Springfield", 100, 1, 2, ["SPE_5Rnd_762x63"], 12];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1903A3_Springfield_M1_GL", 50, 1, 2, ["SPE_5Rnd_762x63","SPE_1Rnd_G_Mk2","SPE_1Rnd_G_M9A1","SPE_1Rnd_G_M2_AN_M14","SPE_1Rnd_G_M2_ANM8","SPE_1Rnd_G_M17A1"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1_Garand_M7", 40, 2, 4, ["SPE_8Rnd_762x63","SPE_1Rnd_G_Mk2", "SPE_1Rnd_G_M9A1", "SPE_1Rnd_G_M2_AN_M14", "SPE_1Rnd_G_M19A1"], 6];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1903A4_Springfield", 50, 2, 4, ["SPE_5Rnd_762x63_M1"], 12];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1_Carbine", 30, 2, 4, ["SPE_15Rnd_762x33"], 10];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1A1_Carbine", 60, 2, 4, ["SPE_15Rnd_762x33_t"], 10];
a3e_arr_CrashSiteWeapons pushback ["SPE_M3_GreaseGun", 75, 1, 2, ["SPE_30Rnd_M3_GreaseGun_45ACP"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1A1_Thompson", 50, 1, 2, ["SPE_30Rnd_Thompson_45ACP_t"], 8];
//a3e_arr_CrashSiteWeapons pushback ["SPE_M2_Flamethrower", 25, 1, 2, ["SPE_M2_Flamethrower_Mag"], 4]; //needs proper backpack
a3e_arr_CrashSiteWeapons pushback ["SPE_M1919A4", 30, 1, 2, ["SPE_50Rnd_762x63"], 4];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1919A6", 20, 1, 2, ["SPE_50Rnd_762x63_M2_AP"], 4];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1918A2_BAR", 40, 1, 2, ["SPE_20Rnd_762x63_M2_AP"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1918A0_BAR", 30, 1, 2, ["SPE_20Rnd_762x63"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_M1918A2_erla_BAR", 20, 1, 2, ["SPE_20Rnd_762x63_M1"], 8];
a3e_arr_CrashSiteWeapons pushback [objNull, 50, 1, 1, ["SPE_US_Mk_1","SPE_US_Mk_2"], 10];
a3e_arr_CrashSiteWeapons pushback [objNull, 50, 1, 1, ["SPE_US_AN_M14"], 10];
a3e_arr_CrashSiteWeapons pushback [objNull, 50, 1, 1, ["SPE_US_M18_Green","SPE_US_M18_Red","SPE_US_M18"], 10];
a3e_arr_CrashSiteWeapons pushback ["SPE_PzFaust_30m", 50, 1, 2, ["SPE_1Rnd_PzFaust_30m"], 1];
a3e_arr_CrashSiteWeapons pushback ["SPE_PzFaust_60m", 40, 1, 2, ["SPE_1Rnd_PzFaust_60m"], 2];
a3e_arr_CrashSiteWeapons pushback ["SPE_Faustpatrone", 40, 1, 2, ["SPE_1Rnd_Faustpatrone"], 1];
a3e_arr_CrashSiteWeapons pushback ["SPE_RPzB_43", 30, 1, 2, ["SPE_1Rnd_RPzBGr_4322"], 1];
a3e_arr_CrashSiteWeapons pushback ["SPE_RPzB_54", 30, 1, 2, ["SPE_1Rnd_RPzBGr_4322"], 1];
a3e_arr_CrashSiteWeapons pushback ["SPE_K98_Bayonet", 15, 1, 2, ["SPE_5Rnd_792x57_sS"], 10];
a3e_arr_CrashSiteWeapons pushback ["SPE_K98_Late", 100, 1, 2, ["SPE_5Rnd_792x57"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_K98_GW", 50, 1, 2, ["SPE_5Rnd_792x57","SPE_1Rnd_G_SPRGR_30","SPE_1Rnd_G_PZGR_30","SPE_1Rnd_G_NBGR_42","SPE_1Rnd_G_FLGR"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_K98_Late_GW", 30, 2, 4, ["SPE_5Rnd_792x57", "SPE_1Rnd_G_PZGR_40", "SPE_1Rnd_G_NBGR_42", "SPE_1Rnd_G_FLGR"], 6];
a3e_arr_CrashSiteWeapons pushback ["SPE_K98ZF39", 75, 2, 4, ["SPE_5Rnd_792x57"], 12];
a3e_arr_CrashSiteWeapons pushback ["SPE_G43", 50, 2, 4, ["SPE_10Rnd_792x57", "SPE_10Rnd_792x57_T", "SPE_10Rnd_792x57_SMK"], 6];
a3e_arr_CrashSiteWeapons pushback ["SPE_MP40", 75, 1, 2, ["SPE_32Rnd_9x19"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_MP35", 75, 1, 2, ["SPE_32Rnd_MP35_9x19"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_STG44", 30, 1, 2, ["SPE_30Rnd_792x33"], 6];
a3e_arr_CrashSiteWeapons pushback ["SPE_FG42_E", 30, 1, 2, ["SPE_20Rnd_792x57"], 8];
a3e_arr_CrashSiteWeapons pushback ["SPE_Flammenwerfer41", 25, 1, 2, ["SPE_Flammenwerfer41_Mag"], 4];
a3e_arr_CrashSiteWeapons pushback ["SPE_MG34", 20, 1, 2, ["SPE_50Rnd_792x57_SMK"], 4];
a3e_arr_CrashSiteWeapons pushback ["SPE_MG42", 30, 1, 2, ["SPE_50Rnd_792x57"], 4];
a3e_arr_CrashSiteWeapons pushback [objNull, 50, 1, 1, ["SPE_Shg24_Frag","SPE_Shg24"], 10];
a3e_arr_CrashSiteWeapons pushback [objNull, 50, 1, 1, ["SPE_Shg24x7"], 10];
a3e_arr_CrashSiteWeapons pushback [objNull, 50, 1, 1, ["SPE_Handrauchzeichen_Red","SPE_Handrauchzeichen_Violet","SPE_Handrauchzeichen_Yellow"], 10];
// Attachments and other items in crash site box
a3e_arr_CrashSiteItems = [];
a3e_arr_CrashSiteItems pushback ["SPE_M1918A2_BAR_Handle", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_M1918A2_BAR_Bipod", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_ACC_M1_Bayo", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_ACC_M1905_Bayo", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_ACC_GL_M1", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_ACC_GL_M7", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_ACC_GL_M8", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_ACC_M3_Suppressor_45acp", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_ACC_K98_Bayo", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_ACC_GW_SB_Empty", 20, 1, 3];
a3e_arr_CrashSiteItems pushback ["SPE_Optic_ZFG42", 20, 1, 3];

//Mines and traps, fn_initTraps
A3E_Trap_Classes = [["roadside","SPE_shumine_42_MINE"],["roadside","SPE_SMI_35_Pressure_MINE"],["roadcenter","SPE_SMI_35_MINE"],["roadcenter","SPE_TMI_42_MINE"],["roadside","SPE_US_M3_Pressure_MINE"],["roadcenter","SPE_US_M3_MINE"],["roadcenter","SPE_US_M1A1_ATMINE"]];//Classnames of traps and mines. String or array in form [classname, trigger range, scriptcode]
A3E_Trap_Pathes = ["TRAIL","TRACK","ROAD","MAIN ROAD"]; //Classnames of roads and pathes for the traps to spawn