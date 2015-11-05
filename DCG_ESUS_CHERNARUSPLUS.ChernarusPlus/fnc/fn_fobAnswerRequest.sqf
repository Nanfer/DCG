/*
Author: SENSEI

Last modified: 8/8/2015

Description:  answer request for FOB control

Return: nothing
__________________________________________________________________*/
private ["_userName","_answer"];

_userName = _this select 0;
_answer = _this select 1;

call {
	if (_answer isEqualTo 0) exitWith {hintSilent (_userName + " ha rechazado la peticion de construccion.")};
	if (_answer isEqualTo 1) exitWith {
		hintSilent (_userName + " ha aceptado la peticion de construccion.");
		uiSleep 5;
		_key = (actionKeys "curatorInterface") select 0;
		if (!isNil "_key") then {
			hint format ["Presione la tecla de Zeus, %1, para editar FOB Pirelli.",keyName _key]
		} else {
			hint format ["Presione la tecla de Zeus, %1, para editar FOB Pirelli.",'UNBOUND'];
		};
	};
	hintSilent "Ninguna peticion para construccion FOB.";
};

//player setVariable ["SEN_inProgress",false];