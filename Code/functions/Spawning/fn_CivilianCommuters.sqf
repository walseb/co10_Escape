private _maxGroups = 15;
private _MinSpawnCircleDistance = missionNamespace getvariable ["A3E_MinSpawnCircleDistance",800];
private _MaxSpawnCircleDistance = missionNamespace getvariable ["A3E_MaxSpawnCircleDistance",1500];
private _removalDistance = missionNamespace getvariable ["A3E_UnitRemovalDistance",2000];

private _groups = missionNamespace getvariable ["A3E_CivilianCommuterGroups",[]];

private _plist = [] call A3E_fnc_GetPlayers;

//Reduce spawn distance in first 10 seconds of mission
if(time<10) then {
	_MinSpawnCircleDistance = _MinSpawnCircleDistance/2;
	_MaxSpawnCircleDistance = _MaxSpawnCircleDistance/2;
};

//Cleanup first
{
private _group = _x;
	if(count(units _x)==0) then {
		[format["Empty Group %1 deleted",_group],["AmbientAI","Spawning"]] call A3E_fnc_Log;
		deletegroup _x;
		_groups set [_foreachIndex,grpNull];
	} else {
		_leader = ((units _x) select 0);
		private _nearest = [getpos _leader,_plist] call A3E_fnc_NearestObjectDis;
		if(_nearest>_removalDistance) then {
			private _vehicles = [];
			{
				if(vehicle _x != _x) then {
					private _veh = (vehicle _x);
					_veh deletevehiclecrew _x;
					_vehicles pushBackUnique _veh;
				} else {
					deletevehicle _x;
				};
			} foreach units _x;
			{deletevehicle _x;} foreach _vehicles;
			
			[format["Group (Civilian Commuter) %1 deleted (too far)",_group],["CivilianCommuters","Spawning"],[["NearestPlayer",_nearest]]] call A3E_fnc_Log;
			deletegroup _x;
			_groups set [_foreachIndex,grpNull];
		};
	};
} foreach _groups;

//Remove deletes entries from array
_groups = _groups select {!(isNull _x)};

//Exit if no civilian vehicles are configured
if(count(missionnamespace getvariable ["a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses",[]])==0) exitwith {};


if(count(_groups)<_maxGroups) then {

	//Get a spawnpos around the players
	private _spawnpos = [_MinSpawnCircleDistance,_MaxSpawnCircleDistance,"ROAD"] call A3E_fnc_GetCircularSpawnPos;

	if(count(_spawnpos)==3) then {//If spawnpos failed it has <3 elements
		private _group = [_spawnpos] call A3E_fnc_SpawnCivilianVehicle;
		["Military Traffic created",["CivilianCommuters","Spawning"],[_group,_spawnpos,count(units _group)]] call A3E_fnc_Log;
		_groups pushBack _group;
		[_group] spawn A3E_fnc_CivilianCommuter;
		[_group] spawn A3E_fnc_TrackGroup_Add;
	};
};
missionNamespace setvariable ["A3E_CivilianCommuterGroups",_groups];
