params["_zoneIndex"];

private _zone = A3E_Zones select _zoneIndex;
private _marker = _zone get "marker";
private _area = _zone get "zonearea";

// private _sides = [A3E_VAR_Side_Ind, A3E_VAR_Side_Ind, A3E_VAR_Side_Ind];
private _sides = [A3E_VAR_Side_Opfor];
// if(_zoneArea > 5000) then {
// 	_sides pushBack A3E_VAR_Side_Opfor;
// 	_sides pushBack A3E_VAR_Side_Opfor;
// };

private _patrolsPerSqmSqrt = 0.01;
private _spawnCount = missionNamespace getvariable ["A3E_Param_VillageSpawnCount",1];
private _spawnCount = 2;
switch (_spawnCount) do
{
	case 1: // 1-2 players
	{
	   _patrolsPerSqmSqrt = 0.01;
	};
	case 2: // 3-5 players
	{
	   _patrolsPerSqmSqrt = 0.018;
	};
	case 3: // 6-8 players
	{
	   _patrolsPerSqmSqrt = 0.029;
	};
	default // 6-8 players
	{
		_patrolsPerSqmSqrt = 0.01;
	};
};

private _edgeSum2 = ((getMarkerSize _marker # 0)+(getMarkerSize _marker # 1))/2;
private _patrolCount = ceil(_patrolsPerSqmSqrt * sqrt(_area))+round(_edgeSum2/100);
systemchat str _patrolCount;
private _groups = [];

//General purpose patrol groups
for "_x" from 1 to _patrolCount do {
	private _pos = [_marker] call BIS_fnc_randomPosTrigger;
	//private _unitCount = round((missionNamespace getvariable ["A3E_Param_EnemyFrequency",1])*2+(random(2)-1));
	private _unitCount = [] call a3e_fnc_getDynamicSquadSize;
	private _grp = [_pos,selectRandom _sides,_unitCount] call A3E_FNC_spawnPatrol;
	_groups pushBack _grp;
	_grp setvariable ["A3E_PatrolZone_Index",_zoneIndex];
	[_grp, _marker] call A3E_fnc_Patrol;
	[_grp] call A3E_fnc_TrackGroup_Add;

        // Vehicle
	if (random 100 < 40) then {
	  private _vehicleType = selectRandom a3e_arr_ComCenStaticWeapons;
	  private _pos_f8ab23 = _pos findEmptyPosition [3,15,_vehicleType];

	  private _result = [_pos_f8ab23, 0, _vehicleType, A3E_VAR_Side_Opfor] call BIS_fnc_spawnVehicle;

	  private _vehicle = _result select 0;

	  [_vehicle] call a3e_fnc_onVehicleSpawn;

	  private _vehiclesCrew = _result select 1;
	  private _group = _result select 2;

	  [_group] call A3E_fnc_onEnemyGroupSpawn;

	  {[_x] call A3E_fnc_onEnemySoldierSpawn;} foreach units _group;
	};

	if (random 100 < 80) then {
	  private _boxType_6bde84 = selectRandom (missionNamespace getvariable ["a3e_arr_AmmoDepotCrate_CrashSite",["Box_NATO_Wps_F"]]);
	  private _boxpos_bb273b = _pos findEmptyPosition [3,15,_boxType_6bde84];

	  if(count _boxpos_bb273b >0) then {



	      private _box_515545 = createVehicle [_boxType_6bde84, _boxpos_bb273b, [], 0, "NONE"];
	      clearWeaponCargoGlobal _box_515545;
	      clearMagazineCargoGlobal _box_515545;
	      clearItemCargoGlobal _box_515545;

	      private _weapon_0fe5ff = selectRandom a3e_arr_CrashSiteWeapons;
	      _box_515545 addWeaponCargoGlobal[(_weapon_0fe5ff select 0),1];
	      _box_515545 addMagazineCargoGlobal[(selectRandom (_weapon_0fe5ff select 4)),5];

	      private _weapon_0fe5fe = selectRandom a3e_arr_CrashSiteWeapons;
	      _box_515545 addWeaponCargoGlobal[(_weapon_0fe5fe select 0),1];
	      _box_515545 addMagazineCargoGlobal[(selectRandom (_weapon_0fe5fe select 4)),5];

	      private _weapon_0fe5fq = selectRandom a3e_arr_CrashSiteWeapons;
	      _box_515545 addWeaponCargoGlobal[(_weapon_0fe5fq select 0),1];
	      _box_515545 addMagazineCargoGlobal[(selectRandom (_weapon_0fe5fq select 4)),5];

	      private _intel_dd4afb = ["Files","FileTopSecret","FilesSecret","DocumentsSecret","Wallet_ID","FileNetworkStructure"];
	      _box_515545 addMagazineCargoGlobal[(selectRandom _intel_dd4afb),3];
	  };
	};

	if (random 100 < 25) then {
	  private _vehicleType_9d942d = selectRandom (a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses + a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND);

	  private _vehiclepos_bb273b = _pos findEmptyPosition [3,15,_vehicleType_9d942d];

	  if(count _vehiclepos_bb273b >0) then {
	      _5e5b0e = createVehicle [ _vehicleType_9d942d, _vehiclepos_bb273b, [], 0, "CAN_COLLIDE"];
	  };
	};
};

// //Spawn some civilians
// if(_patrolCount > 2) then {

// 	private _count = (_patrolCount)+selectRandom[-4,-3,-3,-2,-2,-2,-1,-1,0,0,0,0,0,1,1,1,1];
// 	_count = 0 max _count;

// 	for "_x" from 1 to (_count) do {
// 		private _pos = [_marker] call BIS_fnc_randomPosTrigger;
// 		private _grp = [_pos,selectRandom[1,1,1,1,1,2]] call A3E_FNC_spawnCivilianStroller;
	
// 		_groups pushBack _grp;
// 		_grp setvariable ["A3E_PatrolZone_Index",_zoneIndex];
// 		[_grp, _marker] call A3E_fnc_Stroll;
// 		[_grp] call A3E_fnc_TrackGroup_Add;
// 	};
// };

_zone set ["groups",_groups];


//["Zone "+str _zoneIndex+" populated with "+str count(_groups)+" groups",["Zones","Spawning"]] call A3E_fnc_Log;