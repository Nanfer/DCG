/*
Author: SENSEI

Last modified: 8/25/2015

Description: set FOB, handles recon and approval influence

Return: nothing
__________________________________________________________________*/
if !(isServer) exitWith {};

private ["_unit","_pos","_radius","_reconRad","_addons","_addonsVeh","_mrk","_hq","_revealed","_mrkArray","_hour","_min","_format","_bonus"];

_unit = param [0,objNull];
_pos = param [1,[0,0,0]];
_radius = param [2,100];
_reconRad = SEN_range*0.17 max 2500;
_addons = ["A3_Structures_F_Mil_Cargo","A3_Structures_F_Mil_Fortification","A3_Structures_F_Mil_Helipads","A3_Structures_F_Mil_Shelters","A3_Structures_F_Civ_Lamps","A3_Structures_F_Mil_BagBunker","A3_Structures_F_Mil_BagFence","A3_Structures_F_Civ_Camping","ace_medical","rhsusf_c_weapons"];
//_addonsVeh = ["rhsusf_c_hmmwv","A3_Soft_F_MRAP_01","A3_Soft_F_HEMTT"];

_unit assignCurator SEN_curatorFOB;
SEN_curatorFOBUnitUID = getPlayerUID _unit;
(owner _unit) publicVariableClient "SEN_curatorFOBUnitUID";
SEN_flagFOB setposATL _pos;

waitUntil {sleep 0.1; !(isNull (getAssignedCuratorUnit SEN_curatorFOB))};
sleep 1;

_mrk = createMarker ["SEN_fob_mrk",_pos];
_mrk setMarkerType "b_hq";
_mrk setMarkerColor "ColorGrey";
_mrk setMarkerText "FOB Pirelli";

_mrk = createMarker ["SEN_fob_border_mrk",_pos];
_mrk setMarkerShape "ELLIPSE";
_mrk setMarkerSize [_radius,_radius];
_mrk setMarkerBrush "border";
_mrk setMarkerColor "ColorGrey";

_mrk = createMarker ["SEN_fob_recon_mrk",_pos];
_mrk setMarkerShape "ELLIPSE";
_mrk setMarkerSize [_reconRad,_reconRad];
_mrk setMarkerBrush "border";
_mrk setMarkerColor "ColorGrey";

removeAllCuratorAddons SEN_curatorFOB;
SEN_curatorFOB addCuratorPoints 1;
SEN_curatorFOB addCuratorEditingArea [0,_pos,_radius];
SEN_curatorFOB addCuratorCameraArea [0,_pos,_radius];
SEN_curatorFOB setCuratorCameraAreaCeiling 30;
SEN_curatorFOB addCuratorAddons _addons;
[SEN_curatorFOB] remoteExecCall ["SEN_fnc_fobSetEH", owner SEN_curatorFOB, false];

[_reconRad,_unit,SEN_curatorFOB] spawn {
	_hq = ["Land_Cargo_HQ_V1_F", "Land_Cargo_HQ_V2_F", "Land_Cargo_HQ_V3_F"];

	waitUntil {sleep 10; {typeOf _x in _hq} count (curatorEditableObjects (_this select 2)) > 0};

	"HQ desplegado.\nLa aprobacion local se verá influenciada por el FOB.\nRecon. aereo en linea." remoteExecCall ["hintSilent", owner (_this select 1), false];
	"SEN_fob_mrk" setMarkerColor "ColorWEST";
	"SEN_fob_border_mrk" setMarkerColor "ColorWEST";
	"SEN_fob_recon_mrk" setMarkerColor "ColorWEST";
	_revealed = [];
	_mrkArray = [];
	uiSleep 30;
	while {!(getMarkerColor "sen_fob_mrk" isEqualTo "")} do {
		if (SEN_patrol isEqualTo 1) then {
			{
				if (side _x isEqualTo SEN_enemySide && {!(group _x in _revealed)} && {random 1 < 0.7}) exitWith {
					_hour = str (date select 3);
					_min = str (date select 4);
					if (count _min < 2) then {_min = "0"+_min};
					_format = _hour + ":" + _min;
					_mrk = createMarker [format["SEN_fobRecon_%1_%2",getposATL (leader _x),time],getposATL (leader _x)];
					_mrk setMarkerColor "ColorEAST";
					_mrk setMarkerType "o_unknown";
					_mrk setMarkerText format["%1",_format];
					_mrk setMarkerSize [0.75,0.75];
					_mrkArray pushBack _mrk;
					_revealed pushBack (group _x);
				};
			} forEach ((getMarkerPos "sen_fob_mrk") nearEntities [["Man","LandVehicle","Ship"], (_this select 0)]);
		};
		_bonus = (ceil(abs(log((curatorPoints (_this select 2)) max .001))*17) min 15);
		SEN_approvalCiv = SEN_approvalCiv + _bonus;
		publicVariable "SEN_approvalCiv";
		["SEN_approvalBonus",[_bonus,'La disposicion del FOB otorga aprobacion extra.']] remoteExecCall ["BIS_fnc_showNotification", allPlayers, false];
		uiSleep 1800;
	};
	_mrkArray call SEN_fnc_cleanup;
};