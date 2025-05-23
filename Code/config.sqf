//SearchLeader

a3e_var_knownPositionHelperObject = "Land_HelipadEmpty_F";
a3e_var_knownPositionMinDistance = 100;


//Patrols
a3e_var_maxSearchRange = 1000;
a3e_var_investigationChance = 60;

//Debug
a3e_debug_overwrite = false;
//a3e_debug_EnemyPosition = false;
//a3e_debug_Waypoints = false;
//a3e_debug_MapAndCompass = false;
//a3e_debug_immortal = false;
//a3e_debug_lastKnownPosition = false;
a3e_debug_artillery = false;
//a3e_debug_aistate = false;

A3E_SystemLog = true;

//Artillery
//a3e_var_artillery_units  = [arti_1,arti_2,arti_3,arti_4,arti_5,arti_6,arti_7,arti_8,arti_9,arti_10,arti_11,arti_12,arti_13,arti_14];
a3e_var_artillery_units = []; //Filled by Mortar Site
a3e_var_artilleryTimeThreshold = 100;
a3e_var_artillery_cooldown = 100; //600
a3e_var_artillery_rounds = 6;
a3e_var_artillery_dispersion = 80;
a3e_var_artillery_chance = 20;
a3e_var_artillery_chance_cooldown = 60;
a3e_var_artillery_fleeingDistance = 400;

//Default mission values

missionNamespace setvariable["MinSpawnDistance",1500];
missionNamespace setvariable["MaxSpawnDistance",1800];

//Roadblocks
missionNamespace setvariable["DebugRoadblocks",false];
missionNamespace setvariable["MinRoadblockSpawnDistance",1000];
missionNamespace setvariable["MaxRoadblockSpawnDistance",1800];
missionNamespace setvariable["MinRoadblockDistance",1000];
missionNamespace setvariable["MaxNumberOfRoadblocks",15];


//Crashsites
missionNamespace setvariable["CrashSiteCountMax",10];
