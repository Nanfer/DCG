/*
Author: SENSEI

Last modified: 9/7/2015

Description: handles unit pools for AI in DCG

Notes:
	fill arrays with unit classnames
	if unit pools are empty, the arrays are filled with pre-determined units
	unit pool classnames must exist on server (also on HC if used)
	enemy unit pools are checked against the "Enemy Side" mission parameter, only classes of the selected side are used

Examples:
	fill unit pools with object classnames; these units will be used throughout DCG
		SEN_unitPoolWest = ["rhsusf_army_ucp_rifleman_101st","rhsusf_army_ucp_medic","rhsusf_army_ucp_explosives"];
		SEN_vehPoolWest = ["rhsusf_m1025_d_s_Mk19","rhsusf_m113_usarmy","rhsusf_m1025_w","rhsusf_m1025_w_m2"];

License:
	Copyright 2015 Nicholas Clark (SENSEI). All rights reserved.
	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
	To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
__________________________________________________________________*/
// EAST and INDEPENDENT UNITS
SEN_unitPool = ["LOP_ISTS_Infantry_TL",
"LOP_ISTS_Infantry_SL",
"LOP_ISTS_Infantry_Medic",
"LOP_ISTS_Infantry_AR",
"LOP_ISTS_Infantry_AT",
"LOP_ISTS_Infantry_Engineer",
"LOP_ISTS_Soldier",
"LOP_ISTS_Infantry_GL"];// infantry

SEN_vehPool = ["LOP_ISTS_Landrover",
"LOP_ISTS_Landrover_M2",
"LOP_ISTS_Offroad",
"LOP_ISTS_Offroad_M2",
"LOP_ISTS_Truck",
"LOP_ISTS_M113_W",
"LOP_ISTS_BTR60",
"LOP_ISTS_T72BA",
"LOP_ISTS_Static_M2",
"LOP_ISTS_Static_M2_MiniTripod",
"LOP_ISTS_Static_Mk19_TriPod"]; // ground vehicles

SEN_airPool = []; // air vehicles
SEN_sniperPool = ["LOP_ISTS_Infantry_Marksman"]; // snipers
SEN_officerPool = ["LOP_ISTS_Infantry_SL","LOP_ISTS_Infantry_TL"]; // officers

// WEST UNITS
SEN_unitPoolWest = []; // infantry
SEN_vehPoolWest = []; // ground vehicles
SEN_airPoolWest = []; // air vehicles, these vehicles are used for transport requests
SEN_sniperPoolWest = []; // snipers

// CIVILIAN UNITS
SEN_unitPoolCiv = []; // infantry
SEN_vehPoolCiv = []; // ground vehicles
SEN_airPoolCiv = []; // air vehicles

TRUE // set to FALSE to disable