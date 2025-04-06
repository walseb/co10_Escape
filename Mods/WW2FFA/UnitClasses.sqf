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
  // "SPE_Binocular_GER"
]; //Items to randomly remove from units and to remove from guards

//Disable NVGs parameter for the whole SPE version.
missionNamespace setvariable["A3E_Param_NoNightvision",1];

allies_static_f39100 = 
  [
  // static ind weapons:
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


sov_planes_a36948 = [
  "lib_li2"
  ,"lib_p39"
  ,"lib_pe2"
  ,"lib_pe2_2"
  ,"lib_li2"
  ,"fokkere3_ottoman_green"
  ,"fokkere3_ottoman"
  ,"fokkere3"
  ,"fokkerdr1_red_baron"
  ,"fokkerdr1_lothar"
  ,"fokkerdr1"
  ,"fokkerdr1_edelweiss"
  ,"albatross_diii_jaune"
  ,"albatross_diii_white"
  ,"albatross_diii_red_baron"
  ,"albatross_diii_jasta2"
  ,"albatross_diii_brauneck"
  ,"albatross_diii"
  ,"fokkere3_austrian_green"
  ];

allies_planes_0ae895 = [
  "lib_p47"
  ,"spe_p47"
  ,"fow_va_f6f"
  ,"fow_va_f6f_kick"
  ,"fow_va_f6f_sweet"
  ,"fow_va_f6f_c"
  ,"fow_va_f6f_c_death"
  ,"fow_va_f6f_c_kick"
  ,"fow_va_f6f_c_sweet"
  ,"lib_us_nac_p39_2"
  ,"lib_us_nac_p39_3"
  ,"lib_us_nac_p39"
  ,"lib_raaf_p39"
  ,"lib_aci_p39"

  ,"lib_cg4_waco"
  // ,"lib_ra_p39_2"
  // ,"lib_ra_p39_3"
  ];

ger_planes_f762dc = [
	"spe_fw190f8"
	,"lib_dak_fw190f8"
	,"lib_dak_fw190f8_desert2"
	,"lib_fw190f8"
	,"lib_fw190f8_4"
	,"lib_fw190f8_5"
	,"lib_fw190f8_2"
	,"lib_fw190f8_3"
	,"lib_fw190f8_2_w"
	,"lib_fw190f8_3_w"
	,"lib_fw190f8_w"
	,"lib_dak_ju87"
	,"lib_ju87"
	,"lib_ju87_w"
	,"lib_ju87_italy"
	,"lib_mkhl_ju87"
	,"fow_va_a6m_green"
	,"fow_va_a6m_white"
	,"se5a_red_devil"
	,"se5a_g"
	,"se5a_bishop"
	,"se5a"
	,"nieuport11_russia"
	,"nieuport11_barraca"
	,"nieuport11_italy"
	,"nieuport11"
	,"nieuport11_nungesser"
	,"caudron_g4_b"
	,"caudron_g4"
	];

ger_recon_inf_345c1c = [
  "spe_fsj_hmg_ammobearer"
  ,"spe_fsj_at_soldier_assistant"
  ,"spe_fsj_assist_squadlead"
  ,"spe_fsj_at_grenadier"
  ,"spe_fsj_lat_soldier"
  ,"spe_fsj_at_soldier"
  ,"spe_fsj_grenadier"
  ,"spe_fsj_mortar_gunner"
  ,"spe_fsj_hmgunner2"
  ,"spe_fsj_hmgunner"
  ,"spe_fsj_mgunner2"
  ,"spe_fsj_mgunner"
  ,"spe_fsj_medic"
  ,"spe_fsj_radioman"
  ,"spe_fsj_soldier"
  ,"spe_fsj_soldier_fg42"
  ,"spe_fsj_soldier_stg44"
  ,"spe_fsj_sapper"
  ,"spe_fsj_sapper_gefr"
  ,"spe_fsj_sniper"
  ,"spe_fsj_sniper_fg42"
  ,"spe_fsj_squadlead"
  ,"spe_fsj_at_soldier_squadlead"
  ,"lib_ger_scout_smgunner"
  ,"lib_ger_scout_lieutenant"
  ,"lib_ger_scout_mgunner"
  ,"lib_ger_scout_ober_rifleman"
  ,"lib_ger_soldier_camo_base"
  ,"lib_ger_soldier_camo2_base"
  ,"lib_ger_soldier_camo3_base"
  ,"lib_ger_soldier_camo4_base"
  ,"lib_ger_soldier_camo5_base"
  ,"lib_ger_scout_rifleman"
  ,"lib_ger_scout_sniper"
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

allies_combat_unarmored_ca42d6 = [
  "lib_us_willys_mb_hood"
  ,"lib_uk_willys_mb_hood"
  ,"lib_willys_mb"
  ,"lib_us_willys_mb"
  ,"spe_m20_auc"
  ,"spe_m8_lac"
  ,"spe_m8_lac_ringmount"
  ,"spe_ffi_r200_mg34"
  ,"lib_us_willys_mb_m1919"
  ,"lib_uk_willys_mb_m1919"
  ,"spe_us_g503_mb_m1919"
  ,"spe_us_g503_mb_m1919_armoured"
  ,"spe_us_g503_mb_m2"
  ,"spe_us_g503_mb_m2_armoured"
  ];

allies_vehicles_0d7fd7 = [
  "lib_willys_mb"
  ,"spe_m20_auc"
  ,"lib_scout_m3"
  ,"lib_willys_mb"
  ,"lib_us_willys_mb"
  ,"spe_ffi_r200_hood"
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
  ,"lib_us_willys_mb_hood"
  ,"lib_uk_willys_mb_hood"
  ,"fow_v_m5a1_usa"
  ,"fow_v_m4a2_usa"
  ,"fow_v_cromwell_uk"
  ,"fow_v_universalcarrier"
  ,"fa_daimlermk2"
  ,"fa_t17e1"
  ,"fa_t17e1"
  ,"fa_t17e1"
  ,"fa_daimlermk2_dr"
  // boat:
  ,"lib_lci"

  ]
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6
    + allies_combat_unarmored_ca42d6;

sov_static_ba213a = [
  "lib_zis3"
  ,"lib_maxim_m30_base"
  ,"lib_maxim_m30_base"
  ,"lib_maxim_m30_trench"
  ,"lib_bm37"
  ,"lib_su_searchlight"
  ,"lib_61k"
  ,"lib_zis3"
  ,"lib_maxim_m30_base"
  ,"lib_maxim_m30_trench"
  ,"wwi_mg08_low"
  ,"wwi_mg08"
  ,"wwi_mg08_noarmour"
  ,"krupp_280_coastal"
  ,"fk96na_2016"
  ,"wwi_lmg1914_aa"
  ,"flak14"
  ,"wwi_37mm_revolver"
  ,"37mm_tak"
  ,"sfh1893_2016"
  ,"75mm_skoda"
  ,"wwi_tkvz24mg"
  ];


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
  ,"fa_ba1om"
  ,"fa_ba64"
  ,"lib_su85"
  ,"lib_us6_tent"
  ,"lib_us6_open"
  ,"lib_us6_ammo"
  ,"lib_us6_bm13"
  ,"wwi_markimalecaptured"
  ,"wwi_a7v_nu"
  ,"daimler_marienfeld_benne"
  ,"daimler_marienfeld_bache"
  ,"daimler_marienfeld_arceau"
  ,"ehrhardt"

  // Increase chances of machinegun vehicles
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"ehrhardt"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ,"wwi_a7v_nu"
  ,"ehrhardt"
  ];

civ_vehicles_df526f = 
  [
    "lib_civ_ffi_citc4"
    ,"lib_civ_ffi_citc4_4"
    ,"lib_civ_ffi_citc4_2"
    ,"lib_civ_ffi_citc4_2"
    ,"lib_civ_ffi_citc4_3"
    ,"lib_civ_ffi_citc4_5"
    ,"renault_ag_1910_red"
    ,"peugeot_bebe_1916_open_yellow"
    ,"peugeot_bebe_1916_open_white"
    ,"peugeot_bebe_1916_open_red"
    ,"peugeot_bebe_1916_open_grey"
    ,"peugeot_bebe_1916_open"
    ,"peugeot_bebe_1916_open_brown"
    ,"peugeot_bebe_1916_open_blue"
    ,"peugeot_bebe_1916_yellow"
    ,"peugeot_bebe_1916_white"
    ,"peugeot_bebe_1916_red"
    ,"peugeot_bebe_1916_grey"
    ,"peugeot_bebe_1916"
    ,"peugeot_bebe_1916_brown"
    ,"peugeot_bebe_1916_blue"
    ,"peugeot_500cc"
    ,"mercedes_race_1914"
    ,"legano_1908_open"
    ,"legano_1908"
    ,"fordt_truck_tonneau"
    ,"fordt_truck_benne"
    ,"fordt_truck_bache"
    ,"charette_cheval"
    // ,"charette" // Chariot without horse
    // ,"charette2"
    ,"cadillac1903_truck"
    ,"cadillac1903_4seat"
    ,"cadillac1903_2seat"
    ,"berlier_cba"
  ];

sov_infantry_24c563 = [
  "lib_sov_soldier_ppsh41"
  ,"lib_sov_soldier_mosin_rifle_0"
  ,"lib_sov_sergeant_ppsh41_0"
  ,"lib_sov_lieutenant_ppsh41"
  ,"lib_sov_rifleman"
  ,"lib_sov_smgunner"
  ,"lib_sov_lc_rifleman"
  ,"lib_sov_mgunner"
  ,"lib_sov_medic"
  ,"lib_sov_at_soldier"
  ,"lib_sov_at_grenadier"
  ,"lib_sov_staff_sergeant"
  ,"lib_sov_sergeant"
  ,"lib_sov_p_officer"
  ,"lib_sov_lieutenant"
  ,"lib_sov_first_lieutenant"
  ,"lib_sov_captain"
  ,"lib_sov_scout_rifleman"
  ,"lib_sov_scout_smgunner"
  ,"lib_sov_scout_mgunner"
  ,"lib_sov_scout_sergeant"
  ,"lib_sov_scout_p_officer"
  ,"lib_sov_scout_lieutenant"
  ,"lib_sov_scout_sniper"
  ,"lib_sov_operator"
  ,"lib_sov_sapper"
  ,"lib_sov_assault_smgunner"
  ,"lib_sov_assault_mgunner"
  ,"lib_sov_assault_sergeant"
  ,"lib_sov_rifleman_ads"
  ,"wwi_gesoldier23"
  ,"wwi_gesoldier21"
  ,"wwi_gesoldier22"
  ,"wwi_gesoldier24"
  ,"wwi_ger_pilot"
  ,"wwi_gesoldier5"
  ,"wwi_gesoldier9"
  ,"wwi_gesoldier2"
  ,"wwi_gesoldier1"
  ,"wwi_gesoldier31"
  ,"wwi_gesoldier6"
  ,"wwi_gesoldier8"
  ,"wwi_gesoldier71"
  ,"wwi_gesoldier4"
  ,"wwi_gesoldier3"
  ,"wwi_aurtichien1"
  ,"wwi_aurtichien2"
  ,"wwi_aurtichien3"
  ];

sov_transport_1be340 = [
  "lib_sdkfz251_captured"
  ,"lib_sdkfz251_captured_ffv"
  ,"lib_zis5v"
  ,"lib_sov_m3_halftrack"
  ,"lib_gazm1_sov"
  ,"lib_gazm1_sov_camo_sand"
  ];

allies_transport_5a712a = [
  "lib_us6_open"
  ,"spe_us_m3_halftrack_unarmed"
  ,"spe_us_m3_halftrack"
  ,"spe_fr_m3_halftrack_unarmed"
  ,"spe_fr_m3_halftrack"
  ,"lib_us_m3_halftrack"
  ,"lib_us_scout_m3"
  ,"lib_us_scout_m3_ffv"
  ,"lib_us_gmc_tent"
  ,"lib_us_gmc_open"
  ,"spe_us_m3_halftrack"	
  ,"spe_us_m3_halftrack_unarmed"	
  ,"spe_cckw_353"	
  ,"spe_cckw_353_open"	
  ,"spe_fr_m3_halftrack_unarmed"
  ,"spe_fr_m3_halftrack_unarmed_open"
  ];


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

// Random array. General infantry types. E.g. village patrols, ambient infantry, etc. (for ammo depot guards and communication center guards see further down in this file at fn_InitGuardedLocations)
a3e_arr_Escape_InfantryTypes = [
  "spe_sturmtrooper_sapper"
  ,"spe_sturmtrooper_sapper"
  ,"spe_sturmtrooper_sapper_gefr"
  ,"spe_sturmtrooper_medic"
  ,"spe_sturmtrooper_mortar_ammobearer"
  ,"spe_sturmtrooper_hmg_ammobearer"
  ,"spe_sturmtrooper_ahmgunner"
  ,"spe_sturmtrooper_mortar_agunner"
  ,"spe_sturmtrooper_mortar_gunner"
  ,"spe_sturmtrooper_at_grenadier"
  ,"spe_sturmtrooper_lat_klein_rifleman"
  ,"spe_sturmtrooper_lat_30m_rifleman"
  ,"spe_sturmtrooper_lat_rifleman"
  ,"spe_sturmtrooper_hmgunner2"
  ,"spe_sturmtrooper_hmgunner"
  ,"spe_sturmtrooper_mgunner2"
  ,"spe_sturmtrooper_mgunner"
  ,"spe_sturmtrooper_amgunner"
  ,"spe_sturmtrooper_sniper"
  ,"spe_sturmtrooper_rifleman"
  ,"spe_sturmtrooper_ober_rifleman"
  ,"spe_sturmtrooper_rifleman_lite"
  ,"spe_sturmtrooper_ober_grenadier"
  ,"spe_sturmtrooper_stggunner"
  ,"spe_sturmtrooper_untersturmfuhrer"
  ,"spe_sturmtrooper_radioman"
  ,"spe_sturmtrooper_flamethrower_operator"
  ,"spe_sturmtrooper_obersturmfuhrer"
  ,"spe_sturmtrooper_standartenfuhrer"
  ,"spe_sturmtrooper_hauptsturmfuhrer"
  ,"spe_sturmtrooper_assist_squadlead"
  ,"spe_sturmtrooper_squadlead"
  ,"spe_st_at_soldier_assistant"
  ,"spe_st_at_soldier"
  ,"spe_st_sentry_k98k"
  ,"spe_st_sentry_mp35"
  ,"spe_st_sentry_mp40"
  ,"spe_st_at_soldier_squadlead"
  ,"spe_st_driver"
  ,"spe_st_driver_lite"
  ,"lib_ger_at_soldier"
  ,"lib_ger_at_grenadier"
  ,"lib_ger_hauptmann"
  ,"lib_ger_smgunner"
  ,"lib_ger_ober_lieutenant"
  ,"lib_ger_unterofficer"
  ,"lib_ger_mgunner"
  ,"lib_ger_medic"
  ,"lib_ger_ober_rifleman"
  ,"lib_ger_soldier2_base"
  ,"lib_ger_soldier3_base"
  ,"lib_ger_stggunner"
  ,"spe_ger_mortar_ammobearer"
  ,"spe_ger_hmg_ammobearer"
  ,"spe_ger_mortar_agunner"
  ,"spe_ger_ahmgunner"
  ,"spe_ger_mortar_gunner"
  ,"spe_ger_hmgunner2"
  ,"spe_ger_hmgunner"
  ,"spe_ger_amgunner"
  ,"spe_ger_mgunner"
  ,"spe_ger_mgunner2"
  ,"spe_ger_medic"
  ,"spe_ger_rifleman"
  ,"spe_ger_rifleman_2"
  ,"spe_ger_ober_rifleman"
  ,"spe_ger_rifleman_lite"
  ,"spe_ger_stggunner"
  ,"spe_ger_sapper"
  ,"spe_ger_sapper_gefr"
  ,"spe_ger_lieutenant"
  ,"spe_ger_ober_grenadier"
  ,"spe_ger_at_grenadier"
  ,"spe_ger_lat_klein_rifleman"
  ,"spe_ger_lat_rifleman"
  ,"spe_ger_flamethrower_operator"
  ,"spe_ger_ober_lieutenant"
  ,"spe_ger_hauptmann"
  ,"spe_ger_radioman"
  ,"spe_ger_assist_squadlead"
  ,"spe_ger_squadlead"
  ,"spe_ger_at_soldier_assistant"
  ,"spe_ger_at_soldier"
  ,"spe_ger_sentry_k98k"
  ,"spe_ger_sentry_mp40"
  ,"spe_ger_at_soldier_squadlead"
  ,"sg_sturmtrooper_at_soldier"
  ,"sg_sturmtrooper_at_grenadier"
  ,"sg_sturmtrooper_smgunner"
  ,"sg_sturmtrooper_mgunner"
  ,"sg_sturmtrooper_medic"
  ,"sg_sturmtrooper_radioman"
  ,"sg_sturmtrooper_ober_rifleman"
  ,"sg_sturmtrooper_rifleman"
  ,"sg_sturmtrooper_sapper"
  ,"sg_sturmtrooper_sapper_gefr"
  ,"sg_sturmtrooper_lieutenant"
  ,"sg_sturmtrooper_unterofficer"
  ,"sg_sturmtrooper_sniper"
  ,"sg_sturmtrooper_stggunner"
  ,"lib_ger_soldier_camo_mp40"
  ,"lib_ger_soldier_camo_mp40_with_grenades"
  ,"lib_ger_soldier_camo_k98"
  ,"lib_ger_soldier_camo_k98_with_grenades"
  ,"lib_ger_soldier_mp40"
  ,"lib_ger_soldier_k98"
  ,"lib_ger_inf_officer_0"
  ,"lib_ger_inf_officer_1"
  ,"lib_ger_rifleman"
  ,"lib_ger_recruit"
  ,"lib_ger_lieutenant"
  ,"lib_ger_oberst"
  ,"lib_ger_scout_rifleman"
  ,"lib_ger_scout_ober_rifleman"
  ,"lib_ger_scout_mgunner"
  ,"lib_ger_scout_smgunner"
  ,"lib_ger_scout_unterofficer"
  ,"lib_ger_scout_lieutenant"
  ,"lib_ger_scout_sniper"
  ,"lib_ger_radioman"
  ,"lib_ger_sapper"
  ,"lib_ger_sapper_gefr"
  ,"lib_ger_gun_unterofficer"
  ,"lib_ger_gun_lieutenant"
  ,"lib_ger_tank_officer"
  ,"lib_ger_spg_unterofficer"
  ,"lib_ger_spg_lieutenant"
  ,"lib_ger_rifleman_ads"
  ,"lib_ger_tank_unterofficer"
  ,"lib_ger_tank_lieutenant"
  ,"lnrd_luftwaffe_rifleman"
  ,"lnrd_luftwaffe_flaksoldat"
  ,"lnrd_luftwaffe_ober_rifleman"
  ,"lnrd_luftwaffe_mgunner"
  ,"lnrd_luftwaffe_at_soldier"
  ,"lnrd_luftwaffe_at_grenadier"
  ,"lnrd_luftwaffe_stggunner"
  ,"lnrd_luftwaffe_smgunner"
  ,"lnrd_luftwaffe_sniper"
  ,"lnrd_luftwaffe_medic"
  ,"lnrd_luftwaffe_radioman"
  ,"sg_sturmpanzer_unterofficer"
  ,"sg_sturmpanzer_officer"
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
  ,"wwi_fr_soldier3_coat"
  ,"wwi_fr_soldier1_coat"
  ,"wwi_fr_soldier2_bag"
  ,"wwi_fr_soldier3_bag"
  ,"wwi_fr_pilot"
  ,"wwi_fr_soldier4_coat_sniper"
  ,"wwi_fr_soldier_coat_1914"
  ,"wwi_fr_soldier5_coat_chauchat"
  ,"wwi_fr_soldier_coat_1914_kepi"
  ,"wwi_italsoldier2"
  ,"wwi_italsoldier3"
  ,"wwi_tankiste"
  ,"wwi_italsoldier1"
  ,"wwi_fr_nco2"
  ,"wwi_fr_soldier_senegalais"
  ,"wwi_fr_nco1"
  ,"wwi_ensoldier3"
  ,"wwi_ensoldier2"
  ,"wwi_ensoldier1"
  ,"wwi_russ_soldier1"
	];

a3e_arr_Escape_StartPositionGuardTypes = a3e_arr_Escape_InfantryTypes + sov_infantry_24c563;
	
// Prison backpacks
a3e_arr_PrisonBackpacks = [
	"B_SPE_US_M36"
	,"B_SPE_CIV_satchel"
	,"B_SPE_CIV_musette"];
// Prison backpack secondary weapon (and corresponding magazine type).
a3e_arr_PrisonBackpackWeapons = [];
a3e_arr_PrisonBackpackWeapons pushback ["LIB_Binocular_SU","LIB_7Rnd_9x19"];
a3e_arr_PrisonBackpackWeapons pushback ["SPE_M1A1_Bazooka","SPE_1Rnd_60mm_M6"];
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
      // ,"lib_zis5v_med"
      // ,"lib_us_gmc_tent"
      // ,"lib_us_m3_halftrack"
      // ,"lib_us_scout_m3"
      // ,"lib_uk_willys_mb"
      // ,"lib_uk_willys_mb_hood"
      // ,"lib_willys_mb_ambulance"
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
      ,"fow_v_truppenfahrrad_ger_heer"
      ,"fow_v_truppenfahrrad_ger_ss"
      ,"fow_v_truppenfahrrad_ger_heer"
      ,"fow_v_truppenfahrrad_ger_ss"
      ,"fow_v_truppenfahrrad_ger_heer"
      ,"fow_v_truppenfahrrad_ger_ss"
      ,"fow_v_truppenfahrrad_ger_heer"
      ,"fow_v_truppenfahrrad_ger_ss"
      // ,"lib_gazm1_ffi"
      // ,"lib_gazm1_ffi_camo_sand"
      // ,"lib_gazm1_ffi_camo"
      // ,"lib_gazm1_ffi_sand"
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
  ,"lib_sdkfz_7_w"
  ,"lib_opelblitz_open_g_camo_w"
  ,"lib_opelblitz_open_y_camo_w"
	];

a3e_arr_Escape_ReinforcementTruck_vehicleClasses_Ind = allies_transport_5a712a;

ger_armored_370313 = [
  "spe_st_r200_mg34"
  ,"spe_st_sdkfz250_1"
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
  ,"lib_sdkfz251"
  ,"lib_sdkfz_7"
  ,"lib_sdkfz_7_aa"
  ,"lib_flakpanzeriv_wirbelwind"
  ,"lib_stug_iii_g"
  ,"lib_pzkpfwiv_h"
  ,"lib_flakpanzeriv"
  ,"lib_pzkpfwv"
  ,"lib_sdkfz124"
  ,"lib_dak_flakpanzeriv_wirbelwind"
  ,"lib_dak_sdkfz251"
  ,"spe_stug_iii_g_early"
  ,"spe_stug_iii_g_late"
  ,"spe_stug_iii_g_skb"
  ,"spe_stuh_42"
  ,"spe_jagdpanther_g1"
  ,"spe_nashorn"
  ,"lib_stug_iii_g_w"
  ,"lib_stug_iii_g_ws_w"
  ,"fow_v_panther_ger_heer"
  ,"fow_v_panther_camo_foliage_ger_heer"
  ,"fa_sdkfz231"
  ,"fa_sdkfz234"
  ,"fa_sdkfz234_4"
  ,"lib_pzkpfwv_w"
  ,"lib_sdkfz_7_aa_w"
  ,"lib_sdkfz251_ffv_w"
  ,"lib_sdkfz251_w"
  ,"wwi_ft17_tsf"
  ,"wwi_ft17_8mm_girod"
  ,"wwi_ft17_75bs"
  ,"wwi_ft17_2018"
  ,"wwi_ft17_37mm_girod"
  ,"fow_ija_type95_hago_1_ija"
  ,"fow_ija_type95_hago_2_ija"
  ,"fow_ija_type95_hago_3_ija"

  ,"fow_ija_type95_hago_1_ija"
  ,"fow_ija_type95_hago_2_ija"
  ,"fow_ija_type95_hago_3_ija"
  ,"fow_ija_type95_hago_1_ija"
  ,"fow_ija_type95_hago_2_ija"
  ,"fow_ija_type95_hago_3_ija"
  ,"fow_ija_type95_hago_1_ija"
  ,"fow_ija_type95_hago_2_ija"
  ,"fow_ija_type95_hago_3_ija"
  ];

ger_combat_unarmored_1c04c5 = [
  "spe_st_r200_mg34"
  ,"lib_kfz1_mg42"
  ,"lib_sdkfz251"
  ,"lib_sdkfz_7"
  ,"lib_sdkfz_7_aa"
  ,"lib_sdkfz251_ffv"
  ,"lib_kfz1_mg42_camo"
  ,"lib_dak_kfz1_mg42"
  ,"fow_v_sdkfz_222_camo_ger_ss"
  ,"fow_v_sdkfz_251_camo_ger_heer"
  ,"fa_sdkfz231_dak"
  ,"fa_sdkfz231"
  ,"spe_st_r200_mg34"
  ,"lib_kfz1_mg42"
  ,"lib_sdkfz251"
  ,"lib_sdkfz_7"
  ,"lib_sdkfz_7_aa"
  ,"lib_sdkfz251_ffv"
  ,"lib_kfz1_mg42_camo"
  ,"lib_dak_kfz1_mg42"
  ,"fow_v_sdkfz_222_camo_ger_ss"
  ,"fow_v_sdkfz_251_camo_ger_heer"
  ,"fa_sdkfz231_dak"
  ,"fa_sdkfz231"
  ];

// Random arrays. Enemy vehicle classes for ambient traffic.
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
  "spe_st_r200_unarmed"
  ,"spe_st_opelblitz_ambulance"
  ,"spe_st_opelblitz_ammo"
  ,"spe_st_opelblitz_fuel"
  ,"spe_st_opelblitz_repair"
  ,"spe_st_opelblitz_flak38"
  ,"lib_opelblitz_parm"
  ,"lib_opelblitz_ambulance"
  ,"lib_opelblitz_ammo"
  ,"lib_opelblitz_fuel"
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
  ,"lib_pzkpfwvi_b"
  ,"lib_pzkpfwvi_b_w"
  ,"lib_pzkpfwvi_b_camo_w"
  ,"lib_pzkpfwv_no_lods"
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
  ,"spe_pzkpfwiii_j"
  ,"spe_pzkpfwiii_l"
  ,"spe_pzkpfwiii_m"
  ,"spe_pzkpfwiii_n"
  ,"spe_pzkpfwiv_g"
  ,"spe_pzkpfwv_g"
  ,"spe_pzkpfwvi_h1"
  ,"lib_opelblitz_open_y_camo"
  ,"lib_opelblitz_open_g_camo"
  ,"lib_opelblitz_tent_y_camo"
  ,"lib_stug_iii_g_ws"
  ,"lib_dak_scout_m3"
  ,"lib_dak_pzkpfwiv_h"
  ,"lib_sdkfz_7_aa_w_dlv"
  ,"lib_pzkpfwvi_e_w"
  ,"fa_t26_captured"
  ,"fa_pz38t"
  ,"lib_pzkpfwiv_h_w"
  ,"lib_flakpanzeriv_wirbelwind_w"
  ,"fow_v_sdkfz_222_ger_heer"
  ,"fow_v_sdkfz_222_foliage_ger_heer"
  ,"fow_v_sdkfz_234_1"
  ,"fa_panzer2_dak"
  ,"fa_valentinemk3_captured"
  ,"fow_v_sdkfz_250_9_ger_heer"
  ,"fow_v_type97_truck_utility_ija"
  ,"fa_ba10m_captured"
  ,"fa_ba64_captured"
  ,"fow_v_type97_truck_fuel_ija"
  ,"fow_v_type97_truck_open_ija"
  ,"fow_v_type97_truck_ija"
  ,"lib_kfz1_w"
  ,"lib_kfz1_hood_w"
  ,"wwi_markimale_toit"
  ,"wwi_markimale_poulie"
  ,"wwi_markimale_nocart"
  ,"wwi_markimale_desert"
  ,"wwi_markimale"
  ,"rollsroyceac"
  ,"ford_t_mg"
  ,"fiat_omsky"
  ,"lancia_1zm"
  ,"lancia_1z"
  ,"fiat15_ter_tonneau"
  ,"fiat15_ter_decapote"
  ,"fiat15_ter_amb"
  ,"fiat15_ter"
  ,"wwi_schneider_ca1"
  ,"peugeot_1914"
  ,"renault_french_army_ag_1910_red"
  ,"berlier_cba_fr"
  
  ,"rollsroyceac"
  ,"rollsroyceac"
  ,"rollsroyceac"
  
  ] + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + ger_combat_unarmored_1c04c5
    + a3e_arr_Escape_ReinforcementTruck_vehicleClasses + ger_armored_370313;

a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND =
  sov_static_ba213a + sov_vehicles_125ff9 + allies_vehicles_0d7fd7 + sov_transport_1be340 + allies_transport_5a712a;

a3e_arr_Escape_InfantryTypes_Ind = [
  "spe_us_rangers_rifleman_ammobearer"
  ,"spe_us_rangers_assist_autorifleman"
  ,"spe_us_rangers_ahmgunner"
  ,"spe_us_rangers_assist_squadlead"
  ,"spe_us_rangers_at_soldier"
  ,"spe_us_rangers_autorifleman"
  ,"spe_us_rangers_captain"
  ,"spe_us_rangers_engineer"
  ,"spe_us_rangers_engineer_bangalore"
  ,"spe_us_rangers_first_lieutenant"
  ,"spe_us_rangers_flamethrower_operator"
  ,"spe_us_rangers_grenadier"
  ,"spe_us_rangers_hmgunner"
  ,"spe_us_rangers_medic"
  ,"spe_us_rangers_radioman"
  ,"spe_us_rangers_rifleman"
  ,"spe_us_rangers_second_lieutenant"
  ,"spe_us_rangers_squadlead"
  ,"spe_us_engineer"
  ,"spe_us_medic"
  ,"spe_us_rifleman_ammobearer"
  ,"spe_us_mortar_ammobearer"
  ,"spe_us_hmg_ammobearer"
  ,"spe_us_assist_autorifleman"
  ,"spe_us_ahmgunner"
  ,"spe_us_assist_squadlead"
  ,"spe_us_mortar_agunner"
  ,"spe_us_at_soldier"
  ,"spe_us_autorifleman"
  ,"spe_us_captain"
  ,"spe_us_first_lieutenant"
  ,"spe_us_flamethrower_operator"
  ,"spe_us_grenadier"
  ,"spe_us_mortar_gunner"
  ,"spe_us_hmgunner"
  ,"spe_us_radioman"
  ,"spe_us_rifleman"
  ,"spe_us_second_lieutenant"
  ,"spe_us_sniper"
  ,"spe_us_squadlead"
  ,"spe_us_hmg_ammobearer_m2"
  ,"spe_us_ahmgunner_m2"
  ,"spe_us_hmgunner_m2"
  ,"spe_us_sentry_carbine"
  ,"spe_us_sentry"
  ,"spe_ffi_cellleader"
  ,"spe_ffi_doctor"
  ,"spe_ffi_fighter_g43"
  ,"spe_ffi_fighter_garand"
  ,"spe_ffi_fighter"
  ,"spe_ffi_fighter_carbine"
  ,"spe_ffi_fighter_m3"
  ,"spe_ffi_fighter_mp40"
  ,"spe_ffi_fighter_sten"
  ,"spe_ffi_grenadier"
  ,"spe_ffi_autorifleman"
  ,"spe_ffi_mgunner"
  ,"spe_ffi_militia"
  ,"spe_ffi_militia_shotgun"
  ,"spe_ffi_saboteur_m3a1"
  ,"spe_ffi_saboteur"
  ,"spe_ffi_sapper"
  ,"spe_ffi_sapper_mle208"
  ,"spe_ffi_sniper"
  ,"spe_ffi_tankhunter"
  ,"spe_ffi_teamleader"
  ,"spe_ffi_teamleader_sten"
  ,"spe_ffi_fighter_no3"
  ,"spe_ffi_autorifleman_303_lmg"
  ,"spe_ffi_militia_m37_shotgun"
  ,"spe_ffi_militia_no3"
  ,"lib_us_at_soldier"
  ,"lib_us_captain"
  ,"lib_us_engineer"
  ,"lib_us_first_lieutenant"
  ,"lib_us_grenadier"
  ,"lib_us_mgunner"
  ,"lib_us_medic"
  ,"lib_us_radioman"
  ,"lib_us_corporal"
  ,"lib_us_fc_rifleman"
  ,"lib_us_rifleman"
  ,"lib_us_second_lieutenant"
  ,"lib_us_sniper"
  ,"lib_us_smgunner"
  ,"spe_fr_assist_autorifleman"
  ,"spe_fr_ahmgunner"
  ,"spe_fr_assist_squadlead"
  ,"spe_fr_at_soldier"
  ,"spe_fr_autorifleman"
  ,"spe_fr_captain"
  ,"spe_fr_engineer"
  ,"spe_fr_flamethrower_operator"
  ,"spe_fr_grenadier"
  ,"spe_fr_hmgunner"
  ,"spe_fr_medic"
  ,"spe_fr_radioman"
  ,"spe_fr_rifleman"
  ,"spe_fr_rifleman_carbine"
  ,"spe_fr_sniper"
  ,"spe_fr_squadlead"
  ,"spe_fr_mortar_ammobearer"
  ,"spe_fr_hmg_ammobearer"
  ,"spe_fr_mortar_agunner"
  ,"spe_fr_mortar_gunner"
  ,"spe_fr_sentry_carbine"
  ,"spe_fr_sentry"
  ,"lib_us_101ab_at_soldier"
  ,"lib_us_82ab_co"
  ,"lib_us_82ab_mgunner_assistant"
  ,"lib_us_82ab_mgunner"
  ,"lib_us_82ab_medic"
  ,"lib_us_82ab_radioman"
  ,"lib_us_82ab_corporal"
  ,"lib_us_82ab_fc_rifleman"
  ,"lib_us_82ab_rifleman"
  ,"lib_us_82ab_smgunner"
  ,"lib_us_82ab_nco"
  ,"lib_wp_strzelec"
  ,"lib_wp_starszy_strzelec"
  ,"lib_wp_mgunner"
  ,"lib_wp_at_grenadier"
  ,"lib_wp_stggunner"
  ,"lib_wp_sierzant"
  ,"lib_wp_porucznic"
  ,"lib_wp_sniper"
  ,"lib_wp_medic"
  ,"lib_wp_radioman"
  ,"lib_wp_saper"
  ,"lib_wp_starszy_saper"
  ,"lib_wp_strzelec_ads"
  ,"lib_us_rifleman_ads"
	];


// Most likely to spawn recon types, but can spawn normal infantry
a3e_arr_recon_InfantryTypes = sov_infantry_24c563;
// ger_recon_inf_345c1c + ger_recon_inf_345c1c + ger_recon_inf_345c1c + ger_recon_inf_345c1c + a3e_arr_Escape_InfantryTypes;

// Spawn in Soviets as independent recon
a3e_arr_recon_I_InfantryTypes = sov_infantry_24c563;
// a3e_arr_Escape_InfantryTypes_Ind

a3e_units_civilian_InfantryTypes = [
  "spe_civ_citizen_1"
  ,"spe_civ_citizen_1_tie"
  ,"spe_civ_citizen_1_trop"
  ,"spe_civ_citizen_2"
  ,"spe_civ_citizen_2_tie"
  ,"spe_civ_citizen_2_trop"
  ,"spe_civ_citizen_3"
  ,"spe_civ_citizen_3_tie"
  ,"spe_civ_citizen_3_trop"
  ,"spe_civ_citizen_4"
  ,"spe_civ_citizen_4_tie"
  ,"spe_civ_citizen_4_trop"
  ,"spe_civ_citizen_5"
  ,"spe_civ_citizen_5_tie"
  ,"spe_civ_citizen_5_trop"
  ,"spe_civ_citizen_6"
  ,"spe_civ_citizen_6_tie"
  ,"spe_civ_citizen_6_trop"
  ,"spe_civ_citizen_7"
  ,"spe_civ_citizen_7_tie"
  ,"spe_civ_citizen_7_trop"
  ,"spe_civ_pak2_zwart"
  ,"spe_civ_pak2_zwart_alt"
  ,"spe_civ_pak2_zwart_tie"
  ,"spe_civ_pak2_zwart_tie_alt"
  ,"spe_civ_pak2_zwart_swetr"
  ,"spe_civ_pak2_bruin"
  ,"spe_civ_pak2_bruin_tie"
  ,"spe_civ_pak2_bruin_swetr"
  ,"spe_civ_pak2_grijs"
  ,"spe_civ_pak2_grijs_tie"
  ,"spe_civ_pak2_grijs_swetr"
  ,"spe_civ_swetr_1"
  ,"spe_civ_swetr_1_vest"
  ,"spe_civ_swetr_2"
  ,"spe_civ_swetr_2_vest"
  ,"spe_civ_swetr_3"
  ,"spe_civ_swetr_3_vest"
  ,"spe_civ_swetr_4"
  ,"spe_civ_swetr_4_vest"
  ,"spe_civ_swetr_5"
  ,"spe_civ_swetr_5_vest"
  ,"spe_civ_worker_coverall_1"
  ,"spe_civ_worker_coverall_1_trop"
  ,"spe_civ_worker_coverall_2"
  ,"spe_civ_worker_coverall_2_trop"
  ,"spe_civ_worker_coverall_3"
  ,"spe_civ_worker_coverall_3_trop"
  ,"spe_civ_worker_1"
  ,"spe_civ_worker_1_tie"
  ,"spe_civ_worker_1_trop"
  ,"spe_civ_worker_2"
  ,"spe_civ_worker_2_tie"
  ,"spe_civ_worker_2_trop"
  ,"spe_civ_worker_3"
  ,"spe_civ_worker_3_tie"
  ,"spe_civ_worker_3_trop"
  ,"spe_civ_worker_4"
  ,"spe_civ_worker_4_tie"
  ,"spe_civ_worker_4_trop"
  ,"spe_civ_citizen_1"
  ,"spe_civ_citizen_1_tie"
  ,"spe_civ_citizen_1_trop"
  ,"spe_civ_citizen_2"
  ,"spe_civ_citizen_2_tie"
  ,"spe_civ_citizen_2_trop"
  ,"spe_civ_citizen_3"
  ,"spe_civ_citizen_3_tie"
  ,"spe_civ_citizen_3_trop"
  ,"spe_civ_citizen_4"
  ,"spe_civ_citizen_4_tie"
  ,"spe_civ_citizen_4_trop"
  ,"spe_civ_citizen_5"
  ,"spe_civ_citizen_5_tie"
  ,"spe_civ_citizen_5_trop"
  ,"spe_civ_citizen_6"
  ,"spe_civ_citizen_6_tie"
  ,"spe_civ_citizen_6_trop"
  ,"spe_civ_citizen_7"
  ,"spe_civ_citizen_7_tie"
  ,"spe_civ_citizen_7_trop"
  ,"spe_civ_pak2_zwart"
  ,"spe_civ_pak2_zwart_alt"
  ,"spe_civ_pak2_zwart_tie"
  ,"spe_civ_pak2_zwart_tie_alt"
  ,"spe_civ_pak2_zwart_swetr"
  ,"spe_civ_pak2_bruin"
  ,"spe_civ_pak2_bruin_tie"
  ,"spe_civ_pak2_bruin_swetr"
  ,"spe_civ_pak2_grijs"
  ,"spe_civ_pak2_grijs_tie"
  ,"spe_civ_pak2_grijs_swetr"
  ,"spe_civ_swetr_1"
  ,"spe_civ_swetr_1_vest"
  ,"spe_civ_swetr_2"
  ,"spe_civ_swetr_2_vest"
  ,"spe_civ_swetr_3"
  ,"spe_civ_swetr_3_vest"
  ,"spe_civ_swetr_4"
  ,"spe_civ_swetr_4_vest"
  ,"spe_civ_swetr_5"
  ,"spe_civ_swetr_5_vest"
  ,"spe_civ_worker_coverall_1"
  ,"spe_civ_worker_coverall_1_trop"
  ,"spe_civ_worker_coverall_2"
  ,"spe_civ_worker_coverall_2_trop"
  ,"spe_civ_worker_coverall_3"
  ,"spe_civ_worker_coverall_3_trop"
  ,"spe_civ_worker_1"
  ,"spe_civ_worker_1_tie"
  ,"spe_civ_worker_1_trop"
  ,"spe_civ_worker_2"
  ,"spe_civ_worker_2_tie"
  ,"spe_civ_worker_2_trop"
  ,"spe_civ_worker_3"
  ,"spe_civ_worker_3_tie"
  ,"spe_civ_worker_3_trop"
  ,"spe_civ_worker_4"
  ,"spe_civ_worker_4_tie"
  ,"spe_civ_worker_4_trop"
  ,"wwi_civ_rich_man"
  ,"wwi_civ_rich_man2"
	];

//////////////////////////////////////////////////////////////////
// fn_RoadBlocks.sqf
// Array of templates to use for roadblocks
//////////////////////////////////////////////////////////////////
A3E_RoadblockTemplates = [
	"rb_spe_rb1"
	// ,"rb_bis_rb1"
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
  ,"lib_flak_30_w"
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
  ,"lib_lefh18_at"
  ,"lib_nebelwerfer41"
  ,"lib_nebelwerfer41_camo"
  ,"fow_w_6pounder_ija"
  ,"wwi_vickers_mk1"
  ,"qf18_pounder"
  ,"wwi_russ_maxim_hmg"
  ,"76mm_putilov_m1909"
  ,"wwi_fiat_rivelli"
  ,"75mm_deport_1911"
  ,"wwi_st_etienne_mg"
  ,"wwi_hotckiss_mg_aa"
  ,"wwi_hotckiss_mg1914"
  ,"wwi_hotckiss_mg"
  ,"75mm_1897_field_gun"
  ,"65mm_mountain"
  ,"wwi_52mm_crapouillot"
  ,"47mm_hotckiss_rapidfire"
  ,"155mm_long_debange_trench"
  ,"155mm_long_debange_siege"
  ,"155mm_long_debange_trench_green"
  ,"155mm_long_debange_green"
  ,"155mm_long_debange"
	];

// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
a3e_arr_Escape_RoadBlock_MannedVehicleTypes = a3e_arr_ComCenStaticWeapons + a3e_arr_ComCenStaticWeapons + a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses;

a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind =
  allies_static_f39100 + allies_static_f39100 + allies_vehicles_0d7fd7;

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
a3e_arr_ComCenDefence_heavyArmorClasses = ger_armored_370313;

// A communication center have two parked and empty vehicles of the following possible types.
a3e_arr_ComCenParkedVehicles = a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses + a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND;

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types may be used.
//Should be civilian, as there are no civ vehicles its a normal enemy truck
a3e_arr_Escape_EnemyCivilianCarTypes = civ_vehicles_df526f;

// Weapons that may show up in civilian cars

// Index 0: Weapon classname.
// Index 1: Magazine classname.
// Index 2: Number of magazines.
a3e_arr_CivilianCarWeapons = [
  ["SPE_P08", "SPE_8Rnd_9x19_P08", 3]
  ,["SPE_M1911", "SPE_7Rnd_45ACP_1911", 5]
  ,["SPE_Fusil_Mle_208_12_Sawedoff", "SPE_2Rnd_12x65_Pellets", 6]
  ,["SPE_Fusil_Mle_208_12_Sawedoff", "SPE_2Rnd_12x65_No4_Buck", 6]
  ,["SPE_Fusil_Mle_208_12", "SPE_2Rnd_12x65_Slug", 6]
  ,["SPE_Fusil_Mle_208_12", "SPE_2Rnd_12x65_Pellets", 6]
  ,["SPE_K98_Late", "SPE_5Rnd_792x57", 6]
  ,["SPE_PzFaust_30m", "SPE_1Rnd_PzFaust_30m", 1]
  ,["SPE_M1903A3_Springfield", "SPE_5Rnd_762x63_M1", 6]
  ,["SPE_M1A1_Carbine", "SPE_15Rnd_762x33_t", 6]
  ,["SPE_No3_Mk1_Enfield_M1917_Bayonet", "SPE_5Rnd_770x56", 6]
  ,["SPE_MAS_36", "SPE_5Rnd_75x54", 6]
  ,["SPE_MP40", "SPE_32Rnd_9x19", 6]
  ,["SPE_MP35", "SPE_32rnd_MP35_9x19_t", 6]
  ,["SPE_STG44", "SPE_30Rnd_792x33", 12]
  ,["SPE_FM_24_M29", "SPE_25Rnd_75x54", 12]
  ,["SPE_Faustpatrone", "SPE_1Rnd_Faustpatrone", 1]
  ,["SPE_Sten_Mk2_Suppressed", "SPE_32Rnd_9x19_Sten", 8]
  ,["SPE_GER_FirstAidKit",  "SPE_1Rnd_Faustpatrone", 0]
  ,["SPE_US_Medkit", "SPE_1Rnd_Faustpatrone", 0]
  ,["SPE_ToolKit", "SPE_1Rnd_Faustpatrone", 0]
  ,["SPE_Binocular_US", "SPE_1Rnd_Faustpatrone", 0]
  ,["LIB_M1_Garand", "LIB_8Rnd_762x63", 9]
  ,["LIB_MP40", "lib_32Rnd_9x19", 6]
  ,["LIB_K98ZF39", 75, 2, 4, "lib_5Rnd_792x57", 4]
  ,["LIB_K98ZF39", 75, 2, 4, "lib_10Rnd_792x57", 4]
  ,["LIB_M1_Carbine", "LIB_15Rnd_762x33", 6]
  ,["LIB_M1903A3_Springfield", "LIB_5Rnd_762x63", 6]
  ,["LIB_M1903A4_Springfield", "LIB_5Rnd_762x63", 6]
  ,["LIB_M1A1_Thompson", "LIB_30Rnd_45ACP", 6]
  ,["LIB_DELISLE", "LIB_7Rnd_45ACP", 6]
  ,["LIB_Bagpipes", "LIB_7Rnd_45ACP", 6]
  ,["SPE_P08", "SPE_8Rnd_9x19_P08", 5]
  ,["SPE_M1911", "SPE_7Rnd_45ACP_1911", 5]
  ,["SPE_Fusil_Mle_208_12_Sawedoff", "SPE_2Rnd_12x65_Pellets", 6]
  ,["SPE_Fusil_Mle_208_12_Sawedoff", "SPE_2Rnd_12x65_No4_Buck", 6]
  ,["SPE_Fusil_Mle_208_12", "SPE_2Rnd_12x65_Slug", 6]
  ,["SPE_Fusil_Mle_208_12", "SPE_2Rnd_12x65_Pellets", 6]
  ,["SPE_Model_37_Riotgun", "SPE_5Rnd_12x70_Pellets", 6]
  ,["SPE_Model_37_Riotgun", "SPE_5Rnd_12x70_No4_Buck", 6]
  ,["SPE_K98_Late", "SPE_5Rnd_792x57", 10]
  ,["SPE_PzFaust_30m", "SPE_1Rnd_PzFaust_30m", 1]
  ,["SPE_M1903A3_Springfield", "SPE_5Rnd_762x63_M1", 6]
  ,["SPE_No3_Mk1_Enfield_M1917_Bayonet", "SPE_5Rnd_770x56", 6]
  ,["SPE_MP40", "SPE_32Rnd_9x19", 8]
  ,["SPE_STG44", "SPE_30Rnd_792x33", 12]
  ,["SPE_FM_24_M29", "SPE_25Rnd_75x54", 12]
  ,["SPE_Faustpatrone", "SPE_1Rnd_Faustpatrone", 1]
  ,["SPE_GER_FirstAidKit", "SPE_1Rnd_Faustpatrone", 0]
  ,["SPE_US_Medkit", "SPE_1Rnd_Faustpatrone", 0]
  ,["SPE_ToolKit", "SPE_1Rnd_Faustpatrone", 0]
  ,["SPE_Binocular_US", "SPE_1Rnd_Faustpatrone", 0]
  ,["LIB_M1_Garand", "LIB_8Rnd_762x63", 9]
  ,["LIB_MP40", "lib_32Rnd_9x19", 6]
  ,["LIB_M1_Carbine", "LIB_15Rnd_762x33", 6]
  ,["LIB_M1903A3_Springfield", "LIB_5Rnd_762x63", 6]
  ,["LIB_M1903A4_Springfield", "LIB_5Rnd_762x63", 6]
  ,["LIB_M1A1_Thompson", "LIB_30Rnd_45ACP", 6]
  ,["LIB_DELISLE", "LIB_7Rnd_45ACP", 6]
  ];

// Vehicles, weapons and ammo at ammo depots

// Random array. An ammo depot contains one static weapon of the following types:
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses = a3e_arr_ComCenStaticWeapons;

// An ammo depot have one parked and empty vehicle of the following possible types.
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses = a3e_arr_ComCenParkedVehicles;

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
// Causes error with objNull, [], and [objNull]
// a3e_arr_AmmoDepotLaunchers pushback ["SPE_M1_81_Barrel", 30, 1, 3, [objNull] 0];
// a3e_arr_AmmoDepotLaunchers pushback ["SPE_M1_81_Stand", 30, 1, 3, [objNull] 0];
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




// Here is a list of scopes, might get randomly added to enemy patrols:
a3e_arr_Scopes = [
	"SPE_M1918A2_BAR_Handle"];
a3e_arr_Scopes_SMG = [];
a3e_arr_Scopes_Sniper = [];
a3e_arr_NightScopes = [];
a3e_arr_TWSScopes = [];

// Here is a list of bipods, might get randomly added to enemy patrols:
a3e_arr_Bipods = [
	"SPE_M1918A2_BAR_Bipod"
	,"SPE_M1918A2_BAR_Handle"
	,"SPE_ACC_M3_Suppressor_45acp"
	];

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
  // To enable later:
  "SPEX_LCVP"
  ,"LIB_LCM3_Armed"
  ,"LIB_LCVP"
  ,"fow_usmc_lcvp"
  ,"fow_usa_lcvp"
  ,"lib_lca"
  ,"lib_lci"
  ,"lib_uk_lca"
  ,"lib_uk_lci"
  ,"msub"
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
	,"SPE_ST_GrW278_1"
	,"SPE_ST_GrW278_1"
	// ,"LIB_GrWr34"
	// ,"lib_dak_flak_36_arty"
	// ,"lib_flak_36_arty"
	,"lib_flak_36_arty_w"
	// ,"fow_v_type97_mortar_adv_ija"
	// ,"lib_lefh18"
	// ,"wwi_stokes"
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

a3e_arr_CrashSiteWeapons pushback ["LIB_M1918A2_BAR", 50, 1, 1, ["SPE_Shg24_Frag","SPE_Shg24"], 10];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1918A2_BAR", 50, 1, 1, ["SPE_Shg24x7"], 10];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1918A2_BAR", 50, 1, 1, ["SPE_Handrauchzeichen_Red","SPE_Handrauchzeichen_Violet","SPE_Handrauchzeichen_Yellow"], 10];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1918A2_BAR", 50, 1, 1, ["SPE_US_Mk_1","SPE_US_Mk_2"], 10];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1918A2_BAR", 50, 1, 1, ["SPE_US_AN_M14"], 10];
a3e_arr_CrashSiteWeapons pushback ["LIB_M1918A2_BAR", 50, 1, 1, ["SPE_US_M18_Green","SPE_US_M18_Red","SPE_US_M18"], 10];

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
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf2_B", 50, 2, 3];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf2_G", 50, 1, 3];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf_G", 10, 1, 2];
a3e_arr_CrashSiteItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf_B", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["LIB_Binocular_SU", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["LIB_US_M36_Rope", 50, 1, 3];
a3e_arr_CrashSiteItems pushback ["LIB_US_M36", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["LIB_US_Backpack", 50, 1, 10];
a3e_arr_CrashSiteItems pushback ["G_LIB_Scarf2_B", 50, 2, 3];
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