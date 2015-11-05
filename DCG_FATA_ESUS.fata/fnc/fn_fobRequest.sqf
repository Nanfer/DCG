/*
Author: SENSEI

Last modified: 8/8/2015

Description:  sends request for FOB control

Return: nothing
__________________________________________________________________*/
if (getMarkerColor "sen_fob_mrk" isEqualTo "") exitWith {
	hintSilent "Debes desplegar el FOB Pirelli antes de solicitar permisos de edicion.";
};

if (player isEqualTo (getAssignedCuratorUnit SEN_curatorFOB)) exitWith {
	hintSilent "Controlas actualmente el FOB.";
};

//player setVariable ["SEN_inProgress",true];

if (isNull (getAssignedCuratorUnit SEN_curatorFOB)) exitWith {
	missionNamespace setVariable ["SEN_fobRequest",[player,1]];
	publicVariableServer "SEN_fobRequest";
};

missionNamespace setVariable ["SEN_fobRequest",[player]];
publicVariableServer "SEN_fobRequest";