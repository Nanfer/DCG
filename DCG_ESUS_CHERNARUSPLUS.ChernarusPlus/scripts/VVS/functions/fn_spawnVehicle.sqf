/*
	File: fn_spawnVehicle.sqf
	Author: Bryan "Tonic" Boardwine

	Edits by SENSEI

	Description:
	Spawns the selected vehicle, if a vehicle is already on the spawn point
	then it deletes the vehicle from the spawn point.
*/

disableSerialization;
private["_position","_direction","_className","_displayName","_spCheck","_cfgInfo","_spClear"];
if(lnbCurSelRow 38101 isEqualTo -1) exitWith {hint "You did not select a vehicle to spawn!"};

if (player getVariable ["SEN_inProgress",false]) exitWith {};
player setVariable ["SEN_inProgress",true];

_className = lnbData[38101,[(lnbCurSelRow 38101),0]];
_displayName = lnbData[38101,[(lnbCurSelRow 38101),1]];
_position = getMarkerPos VVS_SP;
_direction = markerDir VVS_SP;
if (isNil "_position") exitWith {
	hint "The spawn position marker doesn't exist?";
	player setVariable ["SEN_inProgress",false];
};

closeDialog 0;
player setVariable ["SEN_inProgress",false];

{deleteVehicle _x} count (nearestObjects [_position,["All","AllVehicles"],(7 max (ceil(sizeOf _className)))]);
_cfgInfo = [_className] call VVS_fnc_cfgInfo;
_vehicle = _className createVehicle [_position select 0,_position select 1,50];
_vehicle setDir _direction;
if !(surfaceIsWater _position) then {
	_vehicle setPosATL _position;
} else {
	_vehicle setPosASL _position;
};
_vehicle setVectorUp surfaceNormal position _vehicle;//_vehicle setVectorUp [0,0,1];
_vehicle enableSimulationGlobal true; // test for exploding vehicle bug

if((_cfgInfo select 4) isEqualTo "Autonomous") then {
	createVehicleCrew _vehicle;
};
if(VVS_Checkbox) then {
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
};
if (getNumber (configfile >> "CfgVehicles" >> _className >> "attendant") isEqualTo 1) then {
	_vehicle setVariable ["ace_medical_isMedicalFacility", true, true];
};

//playSound "SEN_drill";