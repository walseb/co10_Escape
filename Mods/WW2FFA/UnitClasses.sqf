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

A3E_ItemsToBeRemoved = [
  // "SPE_GER_ItemCompass_deg","SPE_GER_ItemCompass",
  "SPE_Binocular_GER"
]; //Items to randomly remove from units and to remove from guards

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
// "LIB_WP_Strzelec"
// ,"LIB_WP_Starszy_strzelec"
// ,"LIB_WP_Mgunner"
// ,"LIB_WP_AT_grenadier"
// ,"LIB_WP_Stggunner"
// ,"LIB_WP_Sierzant"
// ,"LIB_WP_Porucznic"
// ,"LIB_WP_Sniper"
// ,"LIB_WP_Medic"
// ,"LIB_WP_Radioman"
// ,"LIB_WP_Saper"
// ,"LIB_WP_Starszy_saper"
// ,"LIB_WP_Strzelec_ADS"

a3e_arr_Escape_StartPositionGuardTypes = a3e_arr_Escape_InfantryTypes + sov_infantry_24c563;
	
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
a3e_arr_PrisonBackpackWeapons pushback ["LIB_Colt_M1911","LIB_7Rnd_45ACP"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_M1895","LIB_7Rnd_762x38"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_M1896","LIB_10Rnd_9x19_M1896"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_P08","LIB_8Rnd_9x19_P08"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_P38","LIB_8Rnd_9x19"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_TT33","LIB_8Rnd_762x25"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_WaltherPPK","LIB_7Rnd_9x19"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_Colt_M1911","LIB_7Rnd_45ACP"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_M1895","LIB_7Rnd_762x38"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_M1896","LIB_10Rnd_9x19_M1896"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_P08","LIB_8Rnd_9x19_P08"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_P38","LIB_8Rnd_9x19"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_TT33","LIB_8Rnd_762x25"];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_WaltherPPK","LIB_7Rnd_9x19"];

civ_vehicles_df526f = 
  [
    "lib_civ_ffi_citc4"
    ,"lib_civ_ffi_citc4_4"
    ,"lib_civ_ffi_citc4_2"
    ,"lib_civ_ffi_citc4_2"
    ,"lib_civ_ffi_citc4_3"
    ,"lib_civ_ffi_citc4_5"
    ,"Renault_AG_1910_Red"
    ,"Peugeot_bebe_1916_open_yellow"
    ,"Peugeot_bebe_1916_open_white"
    ,"Peugeot_bebe_1916_open_red"
    ,"Peugeot_bebe_1916_open_grey"
    ,"Peugeot_bebe_1916_open"
    ,"Peugeot_bebe_1916_open_brown"
    ,"Peugeot_bebe_1916_open_blue"
    ,"Peugeot_bebe_1916_yellow"
    ,"Peugeot_bebe_1916_white"
    ,"Peugeot_bebe_1916_red"
    ,"Peugeot_bebe_1916_grey"
    ,"Peugeot_bebe_1916"
    ,"Peugeot_bebe_1916_brown"
    ,"Peugeot_bebe_1916_blue"
    ,"peugeot_500cc"
    ,"Mercedes_race_1914"
    ,"legano_1908_open"
    ,"legano_1908"
    ,"fordT_truck_tonneau"
    ,"fordT_truck_benne"
    ,"fordT_truck_bache"
    ,"charette_cheval"
    ,"charette"
    ,"charette2"
    ,"Cadillac1903_truck"
    ,"Cadillac1903_4seat"
    ,"Cadillac1903_2seat"
    ,"Berlier_cba"
  ];

// Random array. Civilian vehicle classes for ambient traffic.
a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses = [
      "spe_st_r200_hood"
      // ,"spe_st_opelblitz"
      ,"lib_gazm1"
      ,"lib_gazm1_dirty"
      ,"lib_gazm1_sov_camo_sand"
      // ,"lib_zis6_parm"
      // ,"lib_zis5v"
      ,"lib_zis5v_fuel"
      ,"lib_zis5v_med"
      // ,"lib_us_gmc_tent"
      // ,"lib_us_m3_halftrack"
      // ,"lib_us_scout_m3"
      // ,"lib_uk_willys_mb"
      ,"lib_uk_willys_mb_hood"
      ,"lib_willys_mb_ambulance"
      ,"lib_us6_ammo"
      // ,"lib_us6_open"
      // ,"lib_us6_open_cargo"
      // ,"lib_us6_tent"
      // ,"lib_us6_tent_cargo"
      // ,"lib_willys_mb"
      // ,"lib_willys_mb_hood"
      // ,"lib_opelblitz_open_y_camo"
      // ,"lib_opelblitz_open_g_camo"
      // ,"lib_opelblitz_tent_y_camo"
      // ,"lib_opelblitz_fuel"
      // ,"lib_opelblitz_ambulance"
      // ,"lib_opelblitz_parm"
      // ,"lib_opelblitz_ammo"
      ,"fow_v_truppenfahrrad_ger_heer"
      ,"fow_v_truppenfahrrad_ger_ss"
      ,"fow_v_truppenfahrrad_ger_heer"
      ,"fow_v_truppenfahrrad_ger_ss"
      ,"fow_v_truppenfahrrad_ger_heer"
      ,"fow_v_truppenfahrrad_ger_ss"
      ,"fow_v_truppenfahrrad_ger_heer"
      ,"fow_v_truppenfahrrad_ger_ss"
      ,"lib_gazm1_ffi"
      ,"lib_gazm1_ffi_camo_sand"
      ,"lib_gazm1_ffi_camo"
      ,"lib_gazm1_ffi_sand"
  ] + civ_vehicles_df526f;

// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
a3e_arr_Escape_ReinforcementTruck_vehicleClasses = [
  "spe_st_opelblitz_open"
  ,"spe_st_opelblitz"
  ,"spe_cckw_353"
  ,"spe_cckw_353_open"
  ,"spe_cckw_353_m2"
  ,"lib_kfz1"
  ,"lib_kfz1_hood"
  ,"lib_sdkfz251_ffv"
  ,"lib_sdkfz251"
  ,"lib_opelblitz_tent_y_camo"
  ,"lib_opelblitz_open_y_camo"
  ,"spe_opelblitz_open"
  ,"spe_opelblitz"
  ,"spe_ger_r200_hood"
  ,"spe_ger_r200_mg34"
  ,"spe_st_r200_hood"
  ,"fow_v_truppenfahrrad_ger_heer"
  ,"fow_v_truppenfahrrad_ger_ss"
  ,"LIB_SdKfz_7_w"
  ,"spe_opelblitz_open_g_camo_w"
  ,"spe_opelblitz_open_y_camo_w"
	];

sov_transport_1be340 = [
  "LIB_SdKfz251_captured"
  ,"LIB_SdKfz251_captured_FFV"
  ,"LIB_Zis5v"
  ,"LIB_SOV_M3_Halftrack"
  ,"LIB_GazM1_SOV"
  ,"LIB_GazM1_SOV_camo_sand"
  ];

allies_transport_5a712a = [
  "LIB_US6_open"
  ,"Lib_Willys_MB"
  ,"SPE_US_M3_Halftrack_Unarmed"
  ,"SPE_US_M3_Halftrack"
  ,"SPE_FR_M3_Halftrack_Unarmed"
  ,"SPE_FR_M3_Halftrack"
  ,"LIB_US_M3_Halftrack"
  ,"LIB_US_Scout_M3"
  ,"LIB_US_Scout_M3_FFV"
  ,"LIB_US_Willys_MB"
  ,"LIB_US_GMC_Tent"
  ,"LIB_US_GMC_Open"
  ,"SPE_FFI_R200_Hood"
  ,"SPE_US_M3_Halftrack"	
  ,"SPE_US_M3_Halftrack_Unarmed"	
  ,"SPE_CCKW_353"	
  ,"SPE_CCKW_353_Open"	
  ,"SPE_M20_AUC"
  ,"spe_fr_m3_halftrack_unarmed"
  ,"spe_fr_m3_halftrack_unarmed_open"
  ];

a3e_arr_Escape_ReinforcementTruck_vehicleClasses_Ind = sov_transport_1be340 + allies_transport_5a712a;

// Random arrays. Enemy vehicle classes for ambient traffic.
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
  "spe_st_r200_unarmed"
  ,"spe_st_r200_mg34"
  ,"spe_st_opelblitz_ambulance"
  ,"spe_st_opelblitz_ammo"
  ,"spe_st_opelblitz_fuel"
  ,"spe_st_opelblitz_repair"
  ,"spe_st_sdkfz250_1"
  ,"spe_st_opelblitz_flak38"
  ,"spe_st_stug_iii_g_early"
  ,"spe_st_stug_iii_g_late"
  ,"spe_st_stug_iii_g_skb"
  ,"spe_st_stuh_42"
  ,"spe_st_jagdpanther_g1"
  ,"spe_st_pzkpfwiii_j"
  ,"spe_st_pzkpfwiii_l"
  ,"spe_st_pzkpfwiii_m"
  ,"spe_st_pzkpfwiii_n"
  ,"spe_st_pzkpfwiv_g"
  ,"spe_st_pzkpfwv_g"
  ,"spe_st_pzkpfwvi_h1"
  ,"lib_kfz1_mg42"
  ,"lib_opelblitz_parm"
  ,"lib_opelblitz_ambulance"
  ,"lib_opelblitz_ammo"
  ,"lib_opelblitz_fuel"
  ,"lib_sdkfz251"
  ,"lib_sdkfz_7"
  ,"lib_sdkfz_7_aa"
  ,"lib_flakpanzeriv_wirbelwind"
  ,"lib_stug_iii_g"
  ,"lib_pzkpfwiv_h"
  ,"lib_pzkpfwiv_h_tarn51c"
  ,"lib_pzkpfwiv_h_tarn51d"
  ,"lib_pzkpfwvi_b_tarn51c"
  ,"lib_pzkpfwvi_b_tarn51d"
  ,"lib_pzkpfwvi_b_camo"
  ,"lib_pzkpfwvi_e"
  ,"lib_pzkpfwvi_e_1"
  ,"lib_pzkpfwvi_e_2"
  ,"lib_pzkpfwvi_e_tarn51c"
  ,"lib_dak_pzkpfwvi_e"
  ,"lib_dak_m3_halftrack"
  ,"lib_flakpanzeriv"
  ,"lib_pzkpfwv"
  ,"lib_pzkpfwvi_b"
  ,"lib_pzkpfwvi_b_w"
  ,"lib_pzkpfwvi_b_camo_w"
  ,"lib_pzkpfwv_no_lods"
  ,"lib_sdkfz124"
  ,"lib_dak_flakpanzeriv_wirbelwind"
  ,"lib_dak_sdkfz251"
  ,"lib_sdkfz_7_aa_koth"
  ,"lib_dak_sdkfz_7_aa"
  ,"lib_pzkpfwvi_e_tarn51d"
  ,"lib_pzkpfwvi_e_tarn52c"
  ,"lib_pzkpfwvi_e_tarn52d"
  ,"spe_ger_r200_unarmed"
  ,"spe_opelblitz_ambulance"
  ,"spe_opelblitz_ammo"
  ,"spe_opelblitz_fuel"
  ,"spe_opelblitz_repair"
  ,"spe_sdkfz250_1"
  ,"spe_opelblitz_flak38"
  ,"spe_stug_iii_g_early"
  ,"spe_stug_iii_g_late"
  ,"spe_stug_iii_g_skb"
  ,"spe_stuh_42"
  ,"spe_jagdpanther_g1"
  ,"spe_pzkpfwiii_j"
  ,"spe_pzkpfwiii_l"
  ,"spe_pzkpfwiii_m"
  ,"spe_pzkpfwiii_n"
  ,"spe_pzkpfwiv_g"
  ,"spe_pzkpfwv_g"
  ,"spe_pzkpfwvi_h1"
  ,"spe_nashorn"
  ,"lib_sdkfz251_ffv"
  ,"lib_stug_iii_g_w"
  ,"lib_stug_iii_g_ws_w"
  ,"lib_opelblitz_open_y_camo"
  ,"lib_opelblitz_open_g_camo"
  ,"lib_opelblitz_tent_y_camo"
  ,"lib_stug_iii_g_ws"
  ,"lib_kfz1_mg42_camo"
  ,"lib_dak_kfz1_mg42"
  ,"lib_dak_scout_m3"
  ,"lib_dak_pzkpfwiv_h"
  ,"lib_sdkfz_7_aa_w_dlv"
  ,"lib_pzkpfwvi_e"
  ,"lib_pzkpfwvi_e_w"
  ,"fa_t26_captured"
  ,"fa_pz38t"
  ,"lib_pzkpfwv"
  ,"lib_pzkpfwvi_b_tarn51d"
  ,"lib_sdkfz124"
  ,"lib_pzkpfwiv_h_w"
  ,"lib_flakpanzeriv_wirbelwind_w"
  ,"lib_stug_iii_g_w"
  ,"fow_v_sdkfz_222_camo_ger_ss"
  ,"fow_v_sdkfz_222_ger_heer"
  ,"fow_v_sdkfz_222_foliage_ger_heer"
  ,"fow_v_sdkfz_234_1"
  ,"fow_v_truppenfahrrad_ger_heer"
  ,"fow_v_truppenfahrrad_ger_ss"
  ,"fow_v_truppenfahrrad_ger_heer"
  ,"fow_v_truppenfahrrad_ger_ss"
  ,"fow_v_truppenfahrrad_ger_heer"
  ,"fow_v_truppenfahrrad_ger_ss"
  ,"fow_v_truppenfahrrad_ger_heer"
  ,"fow_v_truppenfahrrad_ger_ss"
  ,"fow_ija_type95_hago_2_ija"
  ,"fow_ija_type95_hago_1_ija"
  ,"fa_panzer2_dak"
  ,"fa_valentinemk3_captured"
  ,"fow_v_sdkfz_250_9_ger_heer"
  ,"fow_v_sdkfz_251_camo_ger_heer"
  ,"fow_v_panther_ger_heer"
  ,"fow_v_panther_camo_foliage_ger_heer"
  ,"fow_v_type97_truck_utility_ija"
  ,"fow_ija_type95_hago_3_ija"
  ,"FA_Sdkfz231_DAK"
  ,"FA_BA10M_Captured"
  ,"FA_Sdkfz231"
  ,"FA_Sdkfz234"
  ,"FA_Sdkfz234_4"
  ,"FA_BA64_Captured"
  ,"LIB_PzKpfwV"
  ,"lib_pzkpfwv_w"
  ,"lib_pzkpfwvi_b_camo_w"
  ,"fow_v_type97_truck_fuel_ija"
  ,"fow_v_type97_truck_utility_ija"
  ,"fow_v_type97_truck_open_ija"
  ,"fow_v_type97_truck_ija"
  ,"fow_ija_type95_hago_1_jja"
  ,"fow_ija_type95_hago_2_jja"
  ,"fow_ija_type95_hago_3_jja"
  ,"lib_SdKfz_7_AA_w"
  ,"lib_SdKfz251_FFV_w"
  ,"lib_SdKfz251_w"
  ,"LIB_Kfz1_w"
  ,"LIB_Kfz1_hood_w"
  ,"wwi_MarkIMale_toit"
  ,"wwi_MarkIMale_poulie"
  ,"wwi_MarkIMale_nocart"
  ,"wwi_MarkIMale_desert"
  ,"wwi_MarkIMale"
  ,"rollsroyceac"
  ,"Ford_T_MG"
  ,"fiat_Omsky"
  ,"lancia_1zM"
  ,"lancia_1z"
  ,"fiat15_ter_tonneau"
  ,"fiat15_ter_decapote"
  ,"fiat15_ter_amb"
  ,"fiat15_ter"
  ,"wwi_schneider_ca1"
  ,"wwi_ft17_tsf"
  ,"wwi_ft17_8mm_girod"
  ,"wwi_ft17_75BS"
  ,"wwi_ft17_2018"
  ,"wwi_ft17_37mm_girod"
  ,"peugeot_1914"
  ,"Renault_french_army_AG_1910_Red"
  ,"Berlier_cba_fr"
  ] + a3e_arr_Escape_ReinforcementTruck_vehicleClasses;

sov_vehicles_125ff9 = [
  "lib_zis5v"
  ,"lib_zis5v_med"
  ,"lib_zis6_parm"
  ,"lib_zis5v_fuel"
  ,"lib_sov_m3_halftrack"
  ,"lib_t34_76"
  ,"lib_t34_85"
  ,"lib_m4a2_sov"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"lib_zis5v_61k"
  ,"lib_su85"
  ,"lib_js2_43"
  ,"lib_zis5v_61k_dlv"
  ,"fa_t26"
  ,"fa_kv1"
  ,"fa_valentinemk3_sov"
  ,"FA_BA1OM"
  ,"FA_BA64"
  ,"LIB_SU85"
  ,"lib_us6_tent"
  ,"lib_us6_open"
  ,"lib_us6_ammo"
  ,"lib_us6_bm13"
  ,"wwi_MarkIMaleCaptured"
  ,"wwi_A7v_nu"
  ,"Daimler_marienfeld_benne"
  ,"Daimler_marienfeld_bache"
  ,"Daimler_marienfeld_arceau"
  ,"Ehrhardt"
  ];

allies_vehicles_0d7fd7 = [
  "lib_willys_mb"
  ,"lib_scout_m3"
  ,"spe_cckw_353"
  ,"spe_cckw_353_open"
  ,"spe_cckw_353_ambulance"
  ,"spe_cckw_353_ammo"
  ,"spe_cckw_353_fuel"
  ,"spe_cckw_353_repair"
  ,"spe_us_m16_halftrack"
  ,"spe_us_m3_halftrack_unarmed"
  ,"spe_us_m3_halftrack_unarmed_open"
  ,"spe_us_m3_halftrack"
  ,"spe_us_m3_halftrack_ambulance"
  ,"spe_us_m3_halftrack_ammo"
  ,"spe_us_m3_halftrack_fuel"
  ,"spe_us_m3_halftrack_repair"
  ,"spe_m20_auc"
  ,"spe_m8_lac"
  ,"spe_m8_lac_ringmount"
  ,"spe_m10"
  ,"spe_m18_hellcat"
  ,"spe_m4a0_75_early"
  ,"spe_m4a0_75"
  ,"spe_m4a0_composite"
  ,"spe_m4a0_105"
  ,"spe_m4a1_75_erla"
  ,"spe_m4a1_75"
  ,"spe_m4a1_76"
  ,"spe_m4a1_t34_calliope_direct"
  ,"spe_m4a1_t34_calliope"
  ,"spe_m4a3_75"
  ,"spe_m4a3_76"
  ,"spe_m4a3_105"
  ,"spe_m4a3_t34_calliope_direct"
  ,"spe_m4a3_t34_calliope"
  ,"lib_us6_bm13_singlefire"
  ,"lib_scout_m3_ffv"
  ,"lib_willys_mb"
  ,"spe_ffi_sdkfz250_1"
  ,"spe_ffi_r200_unarmed"
  ,"spe_ffi_r200_hood"
  ,"spe_ffi_r200_mg34"
  ,"spe_ffi_opelblitz"
  ,"spe_ffi_opelblitz_open"
  ,"spe_ffi_opelblitz_ambulance"
  ,"spe_opelblitz_ambulance_w"
  ,"spe_opelblitz_ammo_w"
  ,"spe_opelblitz_fuel_w"
  ,"spe_opelblitz_parm_w"
  ,"spe_ffi_opelblitz_ammo"
  ,"spe_ffi_opelblitz_fuel"
  ,"spe_ffi_opelblitz_repair"
  ,"spe_fr_m16_halftrack"
  ,"spe_fr_m3_halftrack"
  ,"spe_fr_m3_halftrack_ambulance"
  ,"spe_fr_m3_halftrack_ammo"
  ,"spe_fr_m3_halftrack_fuel"
  ,"spe_fr_m3_halftrack_repair"
  ,"spe_fr_m20_auc"
  ,"spe_fr_m8_lac"
  ,"spe_fr_m8_lac_ringmount"
  ,"spe_fr_m4a0_105"
  ,"spe_fr_m4a3_75"
  ,"spe_fr_m4a3_76"
  ,"spe_fr_m10"
  ,"spe_fr_m4a0_75_early"
  ,"spe_fr_m4a0_75_mid"
  ,"spe_fr_m4a1_75"
  ,"spe_fr_m4a1_76"
  ,"lib_us_m3_halftrack"
  ,"lib_us_gmc_tent"
  ,"lib_us_gmc_ambulance"
  ,"lib_us_gmc_ammo"
  ,"lib_us_gmc_fuel"
  ,"lib_us_gmc_open"
  ,"lib_us_gmc_parm"
  ,"lib_us_scout_m3"
  ,"lib_us_scout_m3_ffv"
  ,"lib_us_willys_mb"
  ,"lib_m8_greyhound"
  ,"lib_m3a3_stuart"
  ,"lib_m4a3_75"
  ,"lib_m4a3_75_tubes"
  ,"lib_m4a4_firefly"
  ,"lib_m4a3_76"
  ,"lib_m4a3_76_hvss"
  ,"lib_m5a1_stuart"
  ,"lib_universalcarrier"
  ,"lib_universalcarrier_desert"
  ,"lib_cromwell_mk4"
  ,"lib_churchill_mk7"
  ,"lib_churchill_mk7_crocodile"
  ,"lib_churchill_mk7_avre"
  ,"lib_churchill_mk7_howitzer"
  ,"lib_us6_tent_cargo"
  ,"lib_us6_open_cargo"
  ,"lib_willys_mb_hood"
  ,"lib_us_willys_mb_hood"
  ,"lib_uk_willys_mb_hood"
  ,"lib_willys_mb_ambulance"
  ,"lib_us_willys_mb_ambulance"
  ,"lib_uk_willys_mb_ambulance"
  ,"lib_us_willys_mb_m1919"
  ,"lib_uk_willys_mb_m1919"
  ,"spe_us_g503_mb_open"
  ,"spe_us_g503_mb"
  ,"spe_us_g503_mb_armoured"
  ,"spe_us_g503_mb_ambulance"
  ,"spe_us_g503_mb_m1919"
  ,"spe_us_g503_mb_m1919_armoured"
  ,"spe_us_g503_mb_m2"
  ,"spe_us_g503_mb_m2_armoured"
  ,"spe_us_g503_mb_m1919_patrol"
  ,"spe_us_g503_mb_m2_patrol"
  ,"spe_fr_m45_quadmount"
  ,"lib_universalcarrier_base"
  ,"lib_churchill_mk7_avre_desert"
  ,"lib_churchill_mk7_desert"
  ,"lib_us_nac_scout_m3"
  ,"lib_us_nac_m4a3_75"
  ,"lib_uk_dr_m4a3_75"
  ,"lib_uk_italy_m4a3_75"
  ,"lib_us_nac_m3_halftrack"
  ,"lib_uk_m3_halftrack"
  ,"lib_uk_dr_m3_halftrack"
  ,"lib_churchill_mk7_crocodile_desert"
  ,"lib_churchill_mk7_howitzer_desert"
  ,"fa_m26"
  ,"fa_valentinemk3"
  ,"fow_v_m5a1_usa"
  ,"fow_v_m4a2_usa"
  ,"fow_v_cromwell_uk"
  ,"fow_v_universalcarrier"
  ,"FA_DaimlerMk2"
  ,"FA_T17E1"
  ,"FA_DaimlerMk2_DR"
  // Boat:
  ,"lib_lci"
  ];

sov_static_ba213a = [
  "LIB_Zis3"
  ,"LIB_Maxim_M30_base"
  ,"LIB_Maxim_m30_base"
  ,"LIB_Maxim_m30_trench"
  ,"LIB_BM37"
  ,"LIB_SU_SearchLight"
  ,"lib_61k"
  ,"lib_zis3"
  ,"lib_maxim_m30_base"
  ,"lib_maxim_m30_trench"
  ,"wwi_MG08_low"
  ,"wwi_MG08"
  ,"wwi_MG08_noarmour"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Krupp_280_coastal"
  ,"Fk96na_2016"
  ,"wwi_lmg1914_aa"
  ,"Flak14"
  ,"wwi_37mm_revolver"
  ,"37mm_tak"
  ,"sfh1893_2016"
  ,"75mm_Skoda"
  ,"wwi_tkvz24mg"
  ];

a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND =
  sov_static_ba213a + sov_vehicles_125ff9 + allies_vehicles_0d7fd7 + sov_transport_1be340 + allies_transport_5a712a;

// Random array. General infantry types. E.g. village patrols, ambient infantry, etc. (for ammo depot guards and communication center guards see further down in this file at fn_InitGuardedLocations)
a3e_arr_Escape_InfantryTypes = [
  "SPE_sturmtrooper_sapper"
  ,"SPE_sturmtrooper_sapper"
  ,"SPE_sturmtrooper_sapper_gefr"
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
  ,"LIB_GER_AT_soldier"
  ,"LIB_GER_AT_grenadier"
  ,"LIB_GER_hauptmann"
  ,"LIB_GER_smgunner"
  ,"LIB_GER_ober_lieutenant"
  ,"LIB_GER_unterofficer"
  ,"LIB_GER_mgunner"
  ,"LIB_GER_medic"
  ,"LIB_GER_ober_rifleman"
  ,"LIB_GER_Soldier2_base"
  ,"LIB_GER_Soldier3_base"
  ,"LIB_GER_stggunner"
  ,"SPE_GER_Mortar_AmmoBearer"
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
  ,"SG_sturmtrooper_AT_soldier"
  ,"SG_sturmtrooper_AT_grenadier"
  ,"SG_sturmtrooper_smgunner"
  ,"SG_sturmtrooper_mgunner"
  ,"SG_sturmtrooper_medic"
  ,"SG_sturmtrooper_radioman"
  ,"SG_sturmtrooper_ober_rifleman"
  ,"SG_sturmtrooper_rifleman"
  ,"SG_sturmtrooper_sapper"
  ,"SG_sturmtrooper_sapper_gefr"
  ,"SG_sturmtrooper_lieutenant"
  ,"SG_sturmtrooper_unterofficer"
  ,"SG_sturmtrooper_sniper"
  ,"SG_sturmtrooper_stggunner"
  ,"LIB_GER_soldier_camo_MP40"
  ,"LIB_GER_soldier_camo_MP40_with_grenades"
  ,"LIB_GER_soldier_camo_K98"
  ,"LIB_GER_soldier_camo_K98_with_grenades"
  ,"LIB_GER_soldier_MP40"
  ,"LIB_GER_soldier_K98"
  ,"LIB_GER_inf_officer_0"
  ,"LIB_GER_inf_officer_1"
  ,"LIB_GER_rifleman"
  ,"LIB_GER_recruit"
  ,"LIB_GER_lieutenant"
  ,"LIB_GER_oberst"
  ,"LIB_GER_scout_rifleman"
  ,"LIB_GER_scout_ober_rifleman"
  ,"LIB_GER_scout_mgunner"
  ,"LIB_GER_scout_smgunner"
  ,"LIB_GER_scout_unterofficer"
  ,"LIB_GER_scout_lieutenant"
  ,"LIB_GER_scout_sniper"
  ,"LIB_GER_radioman"
  ,"LIB_GER_sapper"
  ,"LIB_GER_sapper_gefr"
  ,"LIB_GER_gun_unterofficer"
  ,"LIB_GER_gun_lieutenant"
  ,"LIB_GER_tank_officer"
  ,"LIB_GER_spg_unterofficer"
  ,"LIB_GER_spg_lieutenant"
  ,"LIB_GER_rifleman_ADS"
  ,"LIB_GER_tank_unterofficer"
  ,"LIB_GER_tank_lieutenant"
  ,"LNRD_Luftwaffe_rifleman"
  ,"LNRD_Luftwaffe_flaksoldat"
  ,"LNRD_Luftwaffe_ober_rifleman"
  ,"LNRD_Luftwaffe_mgunner"
  ,"LNRD_Luftwaffe_AT_soldier"
  ,"LNRD_Luftwaffe_AT_grenadier"
  ,"LNRD_Luftwaffe_stggunner"
  ,"LNRD_Luftwaffe_smgunner"
  ,"LNRD_Luftwaffe_sniper"
  ,"LNRD_Luftwaffe_medic"
  ,"LNRD_Luftwaffe_radioman"
  ,"SG_sturmpanzer_unterofficer"
  ,"SG_sturmpanzer_officer"
  ,"fow_s_ija_rifleman"
  ,"fow_s_ija_rifleman_at"
  ,"fow_s_ija_radio_operator"
  ,"fow_s_ija_officer"
  ,"fow_s_ija_nco"
  ,"fow_s_ija_medic"
  ,"fow_s_ija_type99_gunner"
  ,"fow_s_ija_type99_asst"
  ,"fow_s_ija_snlf_rifleman"
  ,"fow_s_ija_snlf_radio_operator"
  ,"fow_s_ija_snlf_nco"
  ,"fow_s_ija_snlf_medic"
  ,"fow_s_ija_snlf_type99_gunner"
  ,"fow_s_ija_snlf_type99_asst"
  ,"fow_s_ija_f_rifleman"
  ,"fow_s_ija_f_rifleman_at"
  ,"fow_s_ija_f_radio_operator"
  ,"fow_s_ija_f_officer"
  ,"fow_s_ija_f_nco"
  ,"fow_s_ija_f_medic"
  ,"fow_s_ija_f_type99_gunner"
  ,"fow_s_ija_f_type99_asst"
  ,"wwi_fr_soldier3"
  ,"wwi_fr_soldier4"
  ,"wwi_fr_soldier5"
  ,"wwi_fr_soldier6"
  ,"wwi_fr_soldier1"
  ,"wwi_fr_soldier3.coat"
  ,"wwi_fr_soldier1.coat"
  ,"wwi_fr_soldier2.bag"
  ,"wwi_fr_soldier3.bag"
  ,"wwi_fr_pilot"
  ,"wwi_fr_soldier4.coat_sniper"
  ,"wwi_fr_soldier_coat_1914"
  ,"wwi_fr_soldier5.coat_chauchat"
  ,"wwi_fr_soldier_coat_1914_kepi"
  ,"WW1_italsoldier2"
  ,"WW1_italsoldier3"
  ,"WW1_tankiste"
  ,"WW1_italsoldier1"
  ,"WW1_fr_nco2"
  ,"WW1_fr_soldier_senegalais"
  ,"WW1_fr_nco1"
  ,"WW1_ensoldier3"
  ,"WW1_ensoldier2"
  ,"WW1_ensoldier1"
  ,"WW1_russ_soldier1"
	];

sov_infantry_24c563 = [
  "LIB_SOV_soldier_PPSH41"
  ,"LIB_SOV_soldier_mosin_rifle_0"
  ,"LIB_SOV_sergeant_PPSH41_0"
  ,"LIB_SOV_lieutenant_PPSH41"
  ,"LIB_SOV_rifleman"
  ,"LIB_SOV_smgunner"
  ,"LIB_SOV_LC_rifleman"
  ,"LIB_SOV_mgunner"
  ,"LIB_SOV_medic"
  ,"LIB_SOV_AT_soldier"
  ,"LIB_SOV_AT_grenadier"
  ,"LIB_SOV_staff_sergeant"
  ,"LIB_SOV_sergeant"
  ,"LIB_SOV_p_officer"
  ,"LIB_SOV_lieutenant"
  ,"LIB_SOV_first_lieutenant"
  ,"LIB_SOV_captain"
  ,"LIB_SOV_scout_rifleman"
  ,"LIB_SOV_scout_smgunner"
  ,"LIB_SOV_scout_mgunner"
  ,"LIB_SOV_scout_sergeant"
  ,"LIB_SOV_scout_p_officer"
  ,"LIB_SOV_scout_lieutenant"
  ,"LIB_SOV_scout_sniper"
  ,"LIB_SOV_operator"
  ,"LIB_SOV_sapper"
  ,"LIB_SOV_assault_smgunner"
  ,"LIB_SOV_assault_mgunner"
  ,"LIB_SOV_assault_sergeant"
  ,"LIB_SOV_rifleman_ADS"
  ,"WW1_gesoldier23"
  ,"WW1_gesoldier21"
  ,"WW1_gesoldier22"
  ,"WW1_gesoldier24"
  ,"wwi_ger_pilot"
  ,"WW1_gesoldier5"
  ,"WW1_gesoldier9"
  ,"WW1_gesoldier2"
  ,"WW1_gesoldier1"
  ,"WW1_gesoldier31"
  ,"WW1_gesoldier6"
  ,"WW1_gesoldier8"
  ,"WW1_gesoldier71"
  ,"WW1_gesoldier4"
  ,"WW1_gesoldier3"
  ,"WW1_aurtichien1"
  ,"WW1_aurtichien2"
  ,"WW1_aurtichien3"
  ];

a3e_arr_Escape_InfantryTypes_Ind = [
  "SPE_US_Rangers_Rifleman_AmmoBearer"
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
  ,"SPE_US_Engineer"
  ,"SPE_US_Medic"
  ,"SPE_US_Rifleman_AmmoBearer"
  ,"SPE_US_Mortar_AmmoBearer"
  ,"SPE_US_HMG_AmmoBearer"
  ,"SPE_US_Assist_Autorifleman"
  ,"SPE_US_AHMGunner"
  ,"SPE_US_Assist_SquadLead"
  ,"SPE_US_Mortar_AGunner"
  ,"SPE_US_AT_Soldier"
  ,"SPE_US_Autorifleman"
  ,"SPE_US_Captain"
  ,"SPE_US_First_Lieutenant"
  ,"SPE_US_Flamethrower_Operator"
  ,"SPE_US_Grenadier"
  ,"SPE_US_Mortar_Gunner"
  ,"SPE_US_HMGunner"
  ,"SPE_US_Radioman"
  ,"SPE_US_Rifleman"
  ,"SPE_US_Second_Lieutenant"
  ,"SPE_US_Sniper"
  ,"SPE_US_SquadLead"
  ,"SPE_US_HMG_AmmoBearer_M2"
  ,"SPE_US_AHMGunner_M2"
  ,"SPE_US_HMGunner_M2"
  ,"SPE_US_Sentry_Carbine"
  ,"SPE_US_Sentry"
  ,"SPE_FFI_CellLeader"
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
  ,"SPE_FFI_TeamLeader"
  ,"SPE_FFI_TeamLeader_Sten"
  ,"SPE_FFI_Fighter_No3"
  ,"SPE_FFI_Autorifleman_303_LMG"
  ,"SPE_FFI_Militia_M37_Shotgun"
  ,"SPE_FFI_Militia_No3"
  ,"LIB_US_AT_soldier"
  ,"LIB_US_captain"
  ,"LIB_US_engineer"
  ,"LIB_US_first_lieutenant"
  ,"LIB_US_grenadier"
  ,"LIB_US_mgunner"
  ,"LIB_US_medic"
  ,"LIB_US_radioman"
  ,"LIB_US_corporal"
  ,"LIB_US_FC_rifleman"
  ,"LIB_US_rifleman"
  ,"LIB_US_second_lieutenant"
  ,"LIB_US_sniper"
  ,"LIB_US_smgunner"
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
  ,"LIB_US_101AB_AT_soldier"
  ,"LIB_US_82AB_CO"
  ,"LIB_US_82AB_mgunner_assistant"
  ,"LIB_US_82AB_mgunner"
  ,"LIB_US_82AB_medic"
  ,"LIB_US_82AB_radioman"
  ,"LIB_US_82AB_corporal"
  ,"LIB_US_82AB_FC_rifleman"
  ,"LIB_US_82AB_rifleman"
  ,"LIB_US_82AB_smgunner"
  ,"LIB_US_82AB_NCO"
  ,"LIB_WP_Strzelec"
  ,"LIB_WP_Starszy_strzelec"
  ,"LIB_WP_Mgunner"
  ,"LIB_WP_AT_grenadier"
  ,"LIB_WP_Stggunner"
  ,"LIB_WP_Sierzant"
  ,"LIB_WP_Porucznic"
  ,"LIB_WP_Sniper"
  ,"LIB_WP_Medic"
  ,"LIB_WP_Radioman"
  ,"LIB_WP_Saper"
  ,"LIB_WP_Starszy_saper"
  ,"LIB_WP_Strzelec_ADS"
  ,"LIB_US_rifleman_ADS"
	];

ger_recon_inf_345c1c = [
  "SPE_FSJ_HMG_AmmoBearer"
  ,"SPE_FSJ_AT_Soldier_Assistant"
  ,"SPE_FSJ_Assist_SquadLead"
  ,"SPE_FSJ_AT_grenadier"
  ,"SPE_FSJ_LAT_Soldier"
  ,"SPE_FSJ_AT_soldier"
  ,"SPE_FSJ_grenadier"
  ,"SPE_FSJ_Mortar_Gunner"
  ,"SPE_FSJ_hmgunner2"
  ,"SPE_FSJ_hmgunner"
  ,"SPE_FSJ_Mgunner2"
  ,"SPE_FSJ_Mgunner"
  ,"SPE_FSJ_medic"
  ,"SPE_FSJ_radioman"
  ,"SPE_FSJ_Soldier"
  ,"SPE_FSJ_Soldier_FG42"
  ,"SPE_FSJ_Soldier_STG44"
  ,"SPE_FSJ_sapper"
  ,"SPE_FSJ_sapper_gefr"
  ,"SPE_FSJ_Sniper"
  ,"SPE_FSJ_Sniper_FG42"
  ,"SPE_FSJ_SquadLead"
  ,"SPE_FSJ_AT_Soldier_SquadLead"
  ,"LIB_GER_scout_smgunner"
  ,"LIB_GER_scout_lieutenant"
  ,"LIB_GER_scout_mgunner"
  ,"LIB_GER_scout_ober_rifleman"
  ,"LIB_GER_soldier_camo_base"
  ,"LIB_GER_soldier_camo2_base"
  ,"LIB_GER_soldier_camo3_base"
  ,"LIB_GER_soldier_camo4_base"
  ,"LIB_GER_soldier_camo5_base"
  ,"LIB_GER_scout_rifleman"
  ,"LIB_GER_scout_sniper"
  ,"fow_s_ija_f_type99_gunner"
  ,"fow_s_ija_f_type99_asst"
  ,"fow_s_ija_f_rifleman"
  ,"fow_s_ija_f_rifleman_at"
  ,"fow_s_ija_snlf_type99_gunner"
  ,"fow_s_ija_snlf_type99_asst"
  ,"fow_s_ija_snlf_nco"
  ,"fow_s_ija_snlf_radio_operator"
  ,"fow_s_ija_snlf_rifleman"
  ,"fow_s_ija_type99_gunner"
  ,"fow_s_ija_rifleman"
  ,"fow_s_ija_nco"
  ,"fow_s_ija_officer"
  ,"fow_s_ija_rifleman_at"
  ];

// Most likely to spawn recon types, but can spawn normal infantry
a3e_arr_recon_InfantryTypes = ger_recon_inf_345c1c + ger_recon_inf_345c1c + ger_recon_inf_345c1c + ger_recon_inf_345c1c + a3e_arr_Escape_InfantryTypes;

a3e_arr_recon_I_InfantryTypes = a3e_arr_Escape_InfantryTypes_Ind;

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
  ,"ww1_civ_rich_man"
  ,"ww1_civ_rich_man2"
	];

//////////////////////////////////////////////////////////////////
// fn_RoadBlocks.sqf
// Array of templates to use for roadblocks
//////////////////////////////////////////////////////////////////
A3E_RoadblockTemplates = [
	"rb_spe_rb1"
	,"rb_bis_rb1"
	,"rb_bis_rb2"
	,"rb_bis_rb3"
	];

// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
//For SPE templates only the bipod variants
a3e_arr_ComCenStaticWeapons = [
  "lib_flak_36"
  ,"lib_flak_36_w"
  ,"lib_flak_36_aa"
  ,"spe_st_mg34_bipod"
  ,"spe_st_mg42_bipod"
  ,"lib_mg42_lafette_deployed"
  ,"spe_st_mg34_lafette_low_deployed"
  ,"spe_st_mg42_lafette_low_deployed"
  ,"spe_st_mg34_lafette_deployed"
  ,"spe_ger_searchlight"
  ,"spe_flak_30"
  ,"spe_flak_30_w"
  ,"spe_flak_38"
  ,"spe_pak40"
  ,"spe_lefh18_at"
  ,"lib_kfz1_mg42"
  ,"lib_pak40"
  ,"lib_mg34_lafette_deployed"
  ,"lib_flak_30"
  ,"lib_ger_searchlight"
  ,"lib_mg42_lafette"
  ,"lib_mg42_lafette_trench"
  ,"lib_mg42_lafette_low"
  ,"lib_flak_38"
  ,"lib_flak_38_w"
  ,"lib_flakvierling_38"
  ,"lib_flakvierling_38_w"
  ,"lib_pak40_g"
  ,"spe_st_lefh18_at"
  ,"spe_st_pak40"
  ,"spe_st_pak40_w"
  ,"lib_lefh18_at"
  ,"lib_nebelwerfer41"
  ,"lib_nebelwerfer41_camo"
  ,"fow_w_6pounder_ija"
  ,"wwi_Vickers_MK1"
  ,"QF18_pounder"
  ,"wwi_russ_maxim_hmg"
  ,"76mm_putilov_m1909"
  ,"wwi_Fiat_Rivelli"
  ,"75mm_deport_1911"
  ,"wwi_St_etienne_mg"
  ,"wwi_hotchkiss_mg_AA"
  ,"wwi_hotchkiss_mg1914"
  ,"wwi_hotchkiss_mg"
  ,"75mm_1897_field_gun"
  ,"65mm_Mountain"
  ,"wwi_52mm_crapouillot"
  ,"47mm_Hotchkiss_rapidfire"
  ,"155mm_long_debange_trench"
  ,"155mm_long_debange_siege"
  ,"155mm_long_debange_trench_green"
  ,"155mm_long_debange_green"
  ,"155mm_long_debange"
	];

// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
a3e_arr_Escape_RoadBlock_MannedVehicleTypes = a3e_arr_ComCenStaticWeapons;

allies_static_f39100 = 
  [
  // Static IND weapons:
  "lib_m1919_m2"
  ,"spe_m1919a6_bipod"
  ,"spe_m1919_m2"
  ,"spe_m2_m3"
  ,"spe_57mm_m1"
  ,"spe_m45_quadmount"
  ,"i_g_hmg_02_high_f"
  ,"fow_w_vickers_uk"
  ,"spe_105mm_m3"
  ,"spe_105mm_m3_direct"
  // // mortar
  // ,"lib_bm37"
  // ,"spe_m1_81"
  // ,"lib_m2_60"
  // ,"fow_w_6pounder_usa"
  // ,"fow_w_m2_mortar_usa"
  ];

a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind =
  allies_static_f39100;

// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses = a3e_arr_Escape_ReinforcementTruck_vehicleClasses;

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
	];

// Random array. Light armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_lightArmorClasses = a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses + a3e_arr_ComCenStaticWeapons + a3e_arr_ComCenStaticWeapons;
// Random array. Heavy armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_heavyArmorClasses = a3e_arr_ComCenDefence_lightArmorClasses;

// A communication center have two parked and empty vehicles of the following possible types.
a3e_arr_ComCenParkedVehicles = a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses + a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND;

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types may be used.
//Should be civilian, as there are no civ vehicles its a normal enemy truck
a3e_arr_Escape_EnemyCivilianCarTypes = civ_vehicles_df526f;

// Vehicles, weapons and ammo at ammo depots

// Random array. An ammo depot contains one static weapon of the following types:
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses = a3e_arr_ComCenStaticWeapons;

// An ammo depot have one parked and empty vehicle of the following possible types.
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses = a3e_arr_ComCenParkedVehicles;

ger_planes_f762dc = [
	"SPE_FW190F8"
	,"LIB_DAK_FW190F8"
	,"LIB_DAK_FW190F8_desert2"
	,"LIB_FW190F8"
	,"LIB_FW190F8_4"
	,"LIB_FW190F8_5"
	,"LIB_FW190F8_2"
	,"LIB_FW190F8_3"
	,"LIB_FW190F8_2_w"
	,"LIB_FW190F8_3_w"
	,"LIB_FW190F8_w"
	,"LIB_dak_Ju87"
	,"LIB_Ju87"
	,"LIB_Ju87_w"
	,"LIB_Ju87_Italy"
	,"LIB_MKHL_Ju87"
	,"fow_va_a6m_green"
	,"fow_va_a6m_white"
	,"SE5a_red_devil"
	,"SE5a_G"
	,"SE5a_bishop"
	,"SE5a"
	,"Nieuport11_Russia"
	,"Nieuport11_Barraca"
	,"Nieuport11_Italy"
	,"Nieuport11"
	,"Nieuport11_Nungesser"
	,"Caudron_G4_b"
	,"Caudron_G4"
	];

//Random array. Types of helicopters to spawn
a3e_arr_O_attack_heli = ger_planes_f762dc;
a3e_arr_O_transport_heli = [
	"LIB_Ju52"
	// ,"LIB_Li2"
	];
a3e_arr_O_pilots = [
	"LIB_GER_pilot"
	,"SPE_GER_pilot"
	];

sov_planes_a36948 = [
  "LIB_Li2"
  ,"LIB_P39"
  ,"LIB_Pe2"
  ,"LIB_Pe2_2"
  ,"LIB_Li2"
  ,"FokkerE3_Ottoman_green"
  ,"FokkerE3_Ottoman"
  ,"FokkerE3"
  ,"FokkerDR1_Red_Baron"
  ,"FokkerDR1_Lothar"
  ,"FokkerDR1"
  ,"FokkerDR1_Edelweiss"
  ,"Albatross_DIII_jaune"
  ,"Albatross_DIII_white"
  ,"Albatross_DIII_red_baron"
  ,"Albatross_DIII_jasta2"
  ,"Albatross_DIII_brauneck"
  ,"Albatross_DIII"
  ,"FokkerE3_Austrian_green"
  ];

allies_planes_0ae895 = [
  "LIB_P47"
  ,"SPE_P47"
  ,"fow_va_f6f"
  ,"fow_va_f6f_kick"
  ,"fow_va_f6f_sweet"
  ,"fow_va_f6f_c"
  ,"fow_va_f6f_c_death"
  ,"fow_va_f6f_c_kick"
  ,"fow_va_f6f_c_sweet"
  ,"LIB_US_NAC_P39_2"
  ,"LIB_US_NAC_P39_3"
  ,"LIB_US_NAC_P39"
  ,"LIB_RAAF_P39"
  ,"LIB_ACI_P39"

  ,"lib_cg4_waco"
  // ,"LIB_RA_P39_2"
  // ,"LIB_RA_P39_3"
  ];

a3e_arr_I_transport_heli = [
        // Only transport planes from allies
	"LIB_HORSA"
	,"LIB_C47_Skytrain"
	] + sov_planes_a36948 + allies_planes_0ae895;

a3e_arr_I_pilots = [
	"LIB_US_Pilot"
	,"LIB_US_Pilot_2"
	,"LIB_US_Bomber_Pilot"
	,"LIB_US_Bomber_Crew"
	];
	
//////////////////////////////////////////////////////////////////
// fn_createAmmoDepots.sqf
// Array of templates to usefor ammo depots
//////////////////////////////////////////////////////////////////
A3E_AmmoDepotTemplates = [
	"A3E_fnc_AmmoDepot_spe1"
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

a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_P08", 50, 2, 5, ["LIB_8Rnd_9x19_P08"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_MP40", 10, 1, 2, ["LIB_32Rnd_9x19"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_K98", 100, 3, 5, ["LIB_5Rnd_792x57"], 10];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_G3340", 50, 2, 4, ["LIB_5Rnd_792x57"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_G43", 75, 2, 4, ["LIB_10Rnd_792x57","LIB_5Rnd_792x57","LIB_5Rnd_792x57"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_MG42", 20, 1, 2, ["LIB_50Rnd_792x57"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_K98ZF39", 10, 1, 2, ["LIB_5Rnd_792x57_sS"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_MP44", 10, 2, 4, ["LIB_30Rnd_792x33"], 6];

// non-CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1919A4", 10, 2, 4, ["LIB_50Rnd_762x63"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1919A6", 10, 1, 3, ["LIB_50Rnd_762x63"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1928A1_Thompson", 10, 1, 2, ["LIB_30Rnd_45ACP"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1903A3_Springfield", 10, 3, 5, ["LIB_5Rnd_762x63","LIB_5Rnd_762x63"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1_Carbine", 20, 2, 4, ["LIB_15Rnd_762x33"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1_Garand", 20, 2, 4, ["LIB_8Rnd_762x63"], 8];

// CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_TT33", 50, 2, 5, ["LIB_8Rnd_762x25"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_PPSh41_m", 10, 1, 2, ["LIB_32Rnd_9x19"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M9130", 100, 3, 5, ["LIB_5Rnd_762x54"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_PPSh41_d", 50, 2, 4, ["LIB_71Rnd_762x25"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_PPSh41_m", 75, 2, 4, ["LIB_35Rnd_762x25","LIB_35Rnd_762x25_t","LIB_35Rnd_762x25_ap"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_DP28", 20, 1, 2, ["LIB_47Rnd_762x54"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M9130PU", 10, 1, 2, ["LIB_5Rnd_762x54"], 12];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_SVT_40", 10, 2, 4, ["LIB_10Rnd_762x54"], 10];

// non-CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M3_GreaseGun", 70, 1, 4, ["LIB_30Rnd_45ACP"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1928A1_Thompson", 20, 1, 2, ["LIB_50Rnd_45ACP"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1928_Thompson", 30, 1, 2, ["LIB_30Rnd_45ACP"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1A1_Thompson", 30, 1, 2, ["LIB_30Rnd_45ACP"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1903A3_Springfield", 60, 3, 5, ["LIB_5Rnd_762x63","LIB_5Rnd_762x63"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1_Carbine", 20, 2, 4, ["LIB_15Rnd_762x33"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1A1_Carbine", 20, 2, 4, ["LIB_15Rnd_762x33"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["LIB_M1_Garand", 40, 2, 4, ["LIB_8Rnd_762x63"], 12];

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


a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_MG34", 50, 2, 4, ["LIB_50Rnd_792x57"], 4];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_MG34_PT", 50, 1, 3, ["LIB_75Rnd_792x57"], 6];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_FG42G", 20, 1, 2, ["LIB_20Rnd_792x57"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_M2_Flamethrower", 20, 3, 5, ["LIB_M2_Flamethrower_Mag"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_G3340", 50, 2, 4, ["LIB_5Rnd_792x57"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_G43", 75, 2, 4, ["LIB_10Rnd_792x57","LIB_5Rnd_792x57","LIB_5Rnd_792x57"], 4];
// non-CAST weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_M1918A2_BAR", 10, 2, 4, ["LIB_20Rnd_762x63"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_M1903A4_Springfield", 10, 1, 2, ["LIB_5Rnd_762x63"], 8];


// CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_DT", 50, 2, 4, ["LIB_63Rnd_762x54d"], 4];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_DT_OPTIC", 50, 1, 3, ["LIB_63Rnd_762x54"], 6];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_SVT_40", 10, 1, 2, ["LIB_10Rnd_762x54_d"], 10];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_M38", 100, 3, 5, ["LIB_5Rnd_762x54_t46"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_PTRD", 50, 2, 4, ["LIB_1Rnd_145x114"], 15];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_M44", 75, 2, 4, ["LIB_5Rnd_762x54","LIB_5Rnd_762x54_D","LIB_5Rnd_762x54_b30"], 4];
// non-CAST weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_M1919A4", 10, 2, 4, ["LIB_50Rnd_762x63"], 4];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_M1919A6", 10, 1, 3, ["LIB_50Rnd_762x63"], 6];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_M1918A2_BAR", 10, 2, 4, ["LIB_20Rnd_762x63"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["LIB_M1903A4_Springfield", 10, 1, 2, ["LIB_5Rnd_762x63"], 8];

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


// CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["LIB_PzFaust_30m", 50, 1, 2, ["LIB_1Rnd_PzFaust_30m"], 3];
a3e_arr_AmmoDepotLaunchers pushback ["LIB_Faustpatrone", 50, 1, 2, ["LIB_1Rnd_Faustpatrone"], 3];
a3e_arr_AmmoDepotLaunchers pushback ["LIB_RPzB", 35, 1, 3, ["LIB_1Rnd_RPzB"], 3];

// non-CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["LIB_M1A1_Bazooka", 10, 1, 2, ["LIB_1Rnd_60mm_M6"], 2];

// CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["LIB_PzFaust_30m", 40, 1, 2, ["LIB_1Rnd_PzFaust_30m"], 3];
a3e_arr_AmmoDepotLaunchers pushback ["LIB_RPzB", 30, 1, 3, ["LIB_1Rnd_RPzB"], 3];
a3e_arr_AmmoDepotLaunchers pushback ["LIB_PTRD", 40, 1, 3, ["LIB_1Rnd_145x114"], 15];

// non-CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["LIB_M1A1_Bazooka", 30, 1, 2, ["LIB_1Rnd_60mm_M6"], 2];

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


a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["LIB_SMI_35_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["LIB_shumine_42_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["LIB_Ladung_Big_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["LIB_Ladung_Small_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 10, 1, 5, ["LIB_TM44_MINE_mag", "LIB_US_TNT_4pound_mag"], 1];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_US_M1A1_ATMINE_mag"], 2];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_M3_MINE_mag", "LIB_US_M3_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_PMD6_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_pomzec_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_shumine_42_MINE_mag"], 5];

// General weapons
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["LIB_SMI_35_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["LIB_shumine_42_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["LIB_SMI_35_1_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["LIB_US_TNT_4pound_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 10, 1, 5, ["LIB_TM44_MINE_mag", "LIB_US_TNT_4pound_mag"], 1];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_US_M1A1_ATMINE_mag"], 2];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_M3_MINE_mag", "LIB_US_M3_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_PMD6_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_pomzec_MINE_mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 5, ["LIB_shumine_42_MINE_mag"], 5];

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

a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_Rpg6"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_RDG"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_Rg42"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_nb39"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["LIB_US_Mk_2"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_1Rnd_G_DYAKONOV"], 20];

a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_shg24"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_shg24x7"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_m39"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_nb39"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["LIB_pwm"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_1Rnd_G_SPRGR_30"], 10];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["LIB_1Rnd_G_PZGR_30"], 10];
a3e_arr_AmmoDepotVehicle pushback [objNull, 30, 1, 1, ["LIB_1Rnd_G_PZGR_40"], 10];

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

a3e_arr_AmmoDepotVehicleItems pushback ["ToolKit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["Medikit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["FirstAidKit", 100, 10, 50, [], 0];

a3e_arr_AmmoDepotVehicleItems pushback ["ToolKit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["Medikit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["FirstAidKit", 100, 10, 50, [], 0];

a3e_arr_AmmoDepotVehicleBackpacks = ["B_LIB_SOV_RA_Rucksack2_Green","B_LIB_GER_Backpack","B_SPE_US_M36","B_SPE_US_M36_Bandoleer","B_SPE_US_M2Flamethrower","B_SPE_US_Backpack_roll","B_SPE_GER_A_frame","B_SPE_GER_A_frame_Full","B_SPE_GER_Flammenwerfer_41","B_SPE_GER_Tonister41_Frame"];

// Items

// Index 0: Item classname.
// Index 1: Item's probability of presence (in percent, 0-100)..
// Index 2: Minimum amount.
// Index 3: Maximum amount.

a3e_arr_AmmoDepotItems = [];
//a3e_arr_AmmoDepotItems pushback ["Laserdesignator_02_ghex_F", 10, 1, 2];
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

a3e_arr_AmmoDepotItems pushback ["LIB_GER_Gloves2", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Binoculars", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["LIB_Binocular_GER", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf2_B", 50, 2, 3, [], 0];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf2_G", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf_G", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf_B", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["ItemWatch", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["LIB_GER_Gloves2", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Binoculars", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["LIB_Binocular_GER", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf2_B", 50, 2, 3, [], 0];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf2_G", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf_G", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["LIB_ACC_GW_SB_Empty", 50, 1, 2];
a3e_arr_AmmoDepotItems pushback ["LIB_ACC_K98_Bayo", 75, 1, 5];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf_B", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["ItemWatch", 50, 1, 10];

a3e_arr_AmmoDepotItems pushback ["G_LIB_Mohawk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Binoculars", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["LIB_Binocular_SU", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf2_B", 50, 2, 3, [], 0];
a3e_arr_AmmoDepotItems pushback ["LIB_GER_Gloves4", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["G_LIB_GER_Gloves5", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Dust_Goggles", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["ItemWatch", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["LIB_Headwrap_gloves", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Binoculars", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["LIB_Binocular_SU", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf2_B", 50, 2, 3, [], 0];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf2_G", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["LIB_ACC_M1891_Bayo", 80, 1, 5];
a3e_arr_AmmoDepotItems pushback ["LIB_ACC_GL_DYAKONOV_Empty", 50, 1, 2];
a3e_arr_AmmoDepotItems pushback ["LIB_ACC_M1_Bayo", 50, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["G_LIB_Scarf_B", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["ItemWatch", 50, 1, 10];


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
a3e_arr_CivilianCarWeapons pushback ["LIB_M1_Garand", ["LIB_8Rnd_762x63"], 9];
a3e_arr_CivilianCarWeapons pushback ["LIB_MP40", ["lib_32Rnd_9x19"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_K98ZF39", 75, 2, 4, ["lib_5Rnd_792x57", "lib_10Rnd_792x57"], 4];
a3e_arr_CivilianCarWeapons pushback ["LIB_M1_Carbine", ["LIB_15Rnd_762x33"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_M1903A3_Springfield", ["LIB_5Rnd_762x63"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_M1903A4_Springfield", ["LIB_5Rnd_762x63"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_M1A1_Thompson", ["LIB_30Rnd_45ACP"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_DELISLE", ["LIB_7Rnd_45ACP"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_Bagpipes", ["LIB_7Rnd_45ACP"], 6];

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
a3e_arr_CivilianCarWeapons pushback ["LIB_M1_Garand", ["LIB_8Rnd_762x63"], 9];
a3e_arr_CivilianCarWeapons pushback ["LIB_MP40", ["lib_32Rnd_9x19"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_K98ZF39", 75, 2, 4, ["lib_5Rnd_792x57", "lib_10Rnd_792x57"], 4];
a3e_arr_CivilianCarWeapons pushback ["LIB_M1_Carbine", ["LIB_15Rnd_762x33"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_M1903A3_Springfield", ["LIB_5Rnd_762x63"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_M1903A4_Springfield", ["LIB_5Rnd_762x63"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_M1A1_Thompson", ["LIB_30Rnd_45ACP"], 6];
a3e_arr_CivilianCarWeapons pushback ["LIB_DELISLE", ["LIB_7Rnd_45ACP"], 6];


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
// _medkits = [
// 	// "Medikit"
// 	// ,"SPE_GER_Medkit"
// 	// ,"SPE_US_Medkit"
// 	];
// missionNamespace setvariable ["a3e_arr_medkits",_medkits,true];

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
a3e_arr_extractiontypes = [
  "land"
  ,"sea"
  ];

//////////////////////////////////////////////////////////////////
// RunExtraction.sqf
// Helicopters that come to pick you up
// always the fallback option, use BIS units if mod has no helicopters
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_chopper = [
	"O_Heli_Light_02_dynamicLoadout_F"
	,"B_Heli_Transport_01_F"
	,"B_Heli_Transport_01_F"];
a3e_arr_extraction_chopper_escort = [
	"O_Heli_Attack_02_dynamicLoadout_F"
	,"B_Heli_Attack_01_dynamicLoadout_F"];

//////////////////////////////////////////////////////////////////
// fn_PopulateAquaticPatrol
// boats that are spawned
//////////////////////////////////////////////////////////////////
a3e_arr_AquaticPatrols = [
  // "SPEX_LCVP"

  // To enable later:
  // "LIB_LCM3_Armed"
  // ,"LIB_LCVP"
  // ,"fow_usmc_lcvp"
  // ,"fow_usa_lcvp"
  // ,"lib_lca"
  // ,"lib_lci"
  // ,"lib_uk_lca"
  // ,"lib_uk_lci"

  "msub"
  ,"wwi_puffer"
  ,"wwi_ramona_steamer"
  ,"c_rubberboat"
  ];

//////////////////////////////////////////////////////////////////
// RunExtractionBoat.sqf
// Boats that come to pick you up
//////////////////////////////////////////////////////////////////
// Only boats from allies exist. That's why they are used here.
a3e_arr_extraction_boat = a3e_arr_AquaticPatrols;
a3e_arr_extraction_boat_escort = a3e_arr_AquaticPatrols;

//////////////////////////////////////////////////////////////////
// RunExtractionLand.sqf
// Cars/APCs that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_car = allies_transport_5a712a;	

a3e_arr_extraction_car_escort = allies_vehicles_0d7fd7;

//////////////////////////////////////////////////////////////////
// CreateSearchChopper.sqf
// first chopper that's called when you escape
// Two arrays for "Easy" and "Hard" parameter, both used on stadard setting
//////////////////////////////////////////////////////////////////
a3e_arr_searchChopperEasy = ["LIB_HORSA"];
a3e_arr_searchChopperHard = a3e_arr_O_attack_heli;
a3e_arr_searchChopper_pilot = [
	"SPE_GER_pilot"
	];
a3e_arr_searchChopper_crew = [
	"SPE_GER_pilot"
	];

// Random
if(A3E_Param_SearchChopper==0) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperHard;
};
// Easy
if(A3E_Param_SearchChopper==1) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy;
};
// Hard
if(A3E_Param_SearchChopper==2) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperHard;
};

//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf
// Classnames of leaflet drones, disabled if array is created but empty 
//////////////////////////////////////////////////////////////////
a3e_arr_leafletdrone = [];

//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf and CreateSearchDrone.sqf
// Classnames of drones
//////////////////////////////////////////////////////////////////
a3e_arr_searchdrone = ger_planes_f762dc;

//////////////////////////////////////////////////////////////////
// fn_AmbientInfantry
// only INS is used
//is this even used?
//////////////////////////////////////////////////////////////////
a3e_arr_AmbientInfantry_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_AmbientInfantry_Inf_GUE = sov_infantry_24c563;
// a3e_arr_AmbientInfantry_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

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
	,"A3E_fnc_MortarSite"
	];

//////////////////////////////////////////////////////////////////
// fn_MortarSite
// mortar spawned in the mortar camps
//////////////////////////////////////////////////////////////////
a3e_arr_MortarSite = [
	"SPE_ST_GrW278_1"
	// ,"LIB_GrWr34"
	,"lib_dak_flak_36_arty"
	,"lib_flak_36_arty"
	,"lib_flak_36_arty_w"
	// ,"fow_v_type97_mortar_adv_ija"
	// ,"lib_lefh18"
	,"wwi_stokes"
	];

//////////////////////////////////////////////////////////////////
// fn_CallCAS.sqf
// Classnames of planes for the CAS module
//////////////////////////////////////////////////////////////////
a3e_arr_CASplane = ger_planes_f762dc;

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
	"SPE_P47_MRWreck"
	,"SPE_FW190F8_MRWreck"
	,"LIB_HORSA_Wreck"
	,"LIB_CG4_WACO_Wreck2"
	,"LIB_CG4_WACO_Wreck"
	,"LIB_P47_MRWreck"
	,"LIB_C47_Skytrain_wreck"
	,"Land_HistoricalPlaneWreck_03_F"
	,"LIB_FW190F8_MRWreck"
	,"LIB_Ju87_MRWreck"
	,"LIB_JU52_wreck"
	,"SPEX_HORSA_Wreck"
	,"SPEX_C47_Skytrain_wreck"
	,"SPE_FW190F8_MRWreck"
	];

a3e_arr_CrashSiteCrew = [
	"SPE_US_Pilot"
	,"SPE_US_Pilot_2"
	,"SPE_GER_pilot"
	,"LIB_US_pilot"
	,"LIB_US_rifleman"
	,"LIB_GER_pilot"
	];

a3e_arr_CrashSiteWrecksCar = [
	"LIB_M4A3_75_wreck"
	,"LIB_us6_Wreck"
	,"LIB_StuG_III_G_wreck"
	,"LIB_SdKfz251_Wreck"
	,"LIB_PzKpfwVI_B_camo_wreck"
	,"LIB_PzKpfwVI_B_wreck"
	,"LIB_PzKpfwV_Wreck"
	,"LIB_PzKpfwIV_H_Wreck"
	,"LIB_OpelBlitz_2_Wreck"
	,"LIB_OpelBlitz_Wreck"
	,"LIB_kfz1_Wreck"
	];

a3e_arr_CrashSiteCrewCar = [
	"LIB_US_tank_crew"
	,"LIB_US_tank_second_lieutenant"
	,"LIB_US_tank_sergeant"
	,"LIB_GER_tank_crew"
	,"LIB_GER_tank_unterofficer"
	,"LIB_GER_tank_lieutenant"
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
a3e_arr_CrashSiteWeapons pushback ["LIB_M1918A2_BAR", 10, 2, 4, ["LIB_20Rnd_762x63","LIB_20Rnd_762x63"], 3];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1903A4_Springfield", 50, 1, 2, ["LIB_5Rnd_762x63"], 4];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1A1_Bazooka", 30, 1, 2, ["LIB_1Rnd_60mm_M6"], 2];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1919A4", 50, 2, 4, ["LIB_50Rnd_762x63"], 4];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1919A6", 50, 1, 3, ["LIB_50Rnd_762x63"], 6];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1928A1_Thompson", 10, 1, 2, ["LIB_30Rnd_45ACP"], 6];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1903A3_Springfield", 100, 3, 5, ["LIB_5Rnd_762x63","LIB_5Rnd_762x63"], 6];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1_Carbine", 50, 2, 4, ["LIB_15Rnd_762x33","LIB_15Rnd_762x33"], 4];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1_Garand", 75, 2, 4, ["LIB_8Rnd_762x63","LIB_8Rnd_762x63","LIB_8Rnd_762x63"], 4];

a3e_arr_CrashSiteWeapons pushback ["LIB_MG42", 10, 2, 4, ["LIB_50Rnd_792x57"], 4];
a3e_arr_CrashSiteWeapons pushback ["LIB_MG34", 10, 2, 4, ["LIB_50Rnd_792x57"], 4];
a3e_arr_CrashSiteWeapons pushback ["LIB_MG34_PT", 10, 2, 4, ["LIB_75Rnd_792x57"], 4];
a3e_arr_CrashSiteWeapons pushback ["LIB_K98ZF39", 50, 1, 2, ["LIB_5Rnd_792x57_sS"], 4];
a3e_arr_CrashSiteWeapons pushback ["LIB_G43", 30, 1, 2, ["LIB_10Rnd_792x57","LIB_5Rnd_792x57","LIB_5Rnd_792x57"], 4];
a3e_arr_CrashSiteWeapons pushback ["LIB_K98", 50, 2, 4, ["LIB_5Rnd_792x57"], 4];
a3e_arr_CrashSiteWeapons pushback ["LIB_MP40", 50, 1, 3, ["LIB_32Rnd_9x19"], 6];
a3e_arr_CrashSiteWeapons pushback ["LIB_MP44", 10, 1, 2, ["LIB_30Rnd_792x33"], 6];
a3e_arr_CrashSiteWeapons pushback ["LIB_G3340", 50, 2, 4, ["LIB_5Rnd_792x57"], 6];
a3e_arr_CrashSiteWeapons pushback ["LIB_M2_Flamethrower", 25, 2, 4, ["LIB_M2_Flamethrower_Mag"], 6];
a3e_arr_CrashSiteWeapons pushback ["LIB_FG42G", 25, 2, 4, ["LIB_20Rnd_792x57"], 8];
a3e_arr_CrashSiteWeapons pushback ["LIB_PzFaust_30m", 50, 1, 4, ["LIB_1Rnd_PzFaust_30m"], 2];
a3e_arr_CrashSiteWeapons pushback ["LIB_PzFaust_60m", 40, 1, 2, ["LIB_1Rnd_PzFaust_60m"], 2];
a3e_arr_CrashSiteWeapons pushback ["LIB_Faustpatrone", 50, 1, 4, ["LIB_1Rnd_Faustpatrone"], 2];
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
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf2_B", 50, 2, 3, [], 0];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf2_G", 50, 1, 3];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf_G", 10, 1, 2];
a3e_arr_CrashSiteItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf_B", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["LIB_Binocular_SU", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["LIB_US_M36_Rope", 50, 1, 3];
a3e_arr_CrashSiteItems pushback ["LIB_US_M36", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["LIB_US_Backpack", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf2_B", 50, 2, 3, [], 0];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf2_G", 50, 1, 3];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf_G", 10, 1, 2];
a3e_arr_CrashSiteItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf_B", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["LIB_Binocular_SU", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["LIB_US_M36_Rope", 50, 1, 3];
a3e_arr_CrashSiteItems pushback ["LIB_US_M36", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["LIB_US_Backpack", 50, 1, 10];

// //Mines and traps, fn_initTraps
// A3E_Trap_Classes = [["roadside","SPE_shumine_42_MINE"],["roadside","SPE_SMI_35_Pressure_MINE"],["roadcenter","SPE_SMI_35_MINE"],["roadcenter","SPE_TMI_42_MINE"],["roadside","SPE_US_M3_Pressure_MINE"],["roadcenter","SPE_US_M3_MINE"],["roadcenter","SPE_US_M1A1_ATMINE"]];//Classnames of traps and mines. String or array in form [classname, trigger range, scriptcode]
// A3E_Trap_Pathes = ["TRAIL","TRACK","ROAD","MAIN ROAD"]; //Classnames of roads and pathes for the traps to spawn