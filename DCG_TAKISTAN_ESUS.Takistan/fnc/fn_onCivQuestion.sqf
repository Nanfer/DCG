/*
Author: SENSEI

Last modified: 7/28/2015

Description: question civilians

Return: nothing
__________________________________________________________________*/
private ["_civ","_nearEnemies","_range","_near","_enemy","_local"];

if (count SEN_civQuestioned >= 15) then {SEN_civQuestioned = []};
_range = SEN_range*0.2 max 1000;
_nearCivs = [];
_nearEnemies = [];
_near = getposATL player nearEntities ["Man", 10];

{if (side _x isEqualTo CIVILIAN && {!isPlayer _x}) then {_nearCivs pushBack _x}} forEach _near;
if (count _nearCivs isEqualTo 0) exitWith {hintSilent "No hay civiles cerca de ti."};
if (SEN_ApprovalCiv < 100) exitWith {hintSilent "La poblacio no confia lo suficiente en ti."};
_civ = _nearCivs select floor(random (count _nearCivs));
if (_civ in SEN_civQuestioned) exitWith {hintSilent format ["Ya has preguntado a %1.",name _civ]};
SEN_civQuestioned pushBack _civ;

if (random 100 < 85) then {
	_near = _civ nearEntities [["Man","LandVehicle","Ship"], _range];
	{if !(side _x isEqualTo WEST && {side _x isEqualTo CIVILIAN}) then {_nearEnemies pushBack _x}} forEach _near;
	if (count _nearEnemies isEqualTo 0) exitWith {hintSilent format ["%1 no tiene informacion relevante.",name _civ]};
	_enemy = _nearEnemies select floor(random (count _nearEnemies));
	_local = (nearestLocations [getposATL _enemy, ["NameCityCapital","NameCity","NameVillage"], (((_range/2) min 1000) max 500)]);
	if (count _local isEqualTo 0) exitWith {hintSilent format ["%1 no tiene informacion relevante.",name _civ]};
	hintSilent format ["%1 ha visto soldados cerca %2 no hace mucho.",name _civ,text (_local select 0)];
} else {
	hintSilent format ["%1 no tiene informacion relevante.",name _civ];
};