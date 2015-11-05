/*
Author: SENSEI

Last modified: 1/1/2015

Description: gets numbers to be used as percentages in approval related functionality

Return: array
__________________________________________________________________*/
private ["_return","_chance","_stance"];

_return = [];

// suicide attacks
_chance = [5.0,40.0,20.0,0.06] call SEN_fnc_getApprovalNumber;
_return pushBack _chance;

// rebel attacks
_chance = [15.0,80.0,50.0,0.2] call SEN_fnc_getApprovalNumber;
_return pushBack _chance;

// general civilian stance
call {
	if (SEN_approvalCiv <= -250) exitWith {
		_stance = "La poblacion local no les apoya";
	};
	if (SEN_approvalCiv > -250 && {SEN_approvalCiv <= -100}) exitWith {
		_stance = "La poblacion local esta disgustada con vosotros.";
	};
	if (SEN_approvalCiv > -100 && {SEN_approvalCiv <= 100}) exitWith {
		_stance = "La poblacion local es indiferente.";
	};
	if (SEN_approvalCiv > 100 && {SEN_approvalCiv <= 250}) exitWith {
		_stance = "La poblacion local esta contenta con vosotros.";
	};
	if (SEN_approvalCiv > 250) exitWith {
		_stance = "La poblacion local os apoya.";
	};

	_stance = "La poblacion local es indiferente.";
};

_return pushBack _stance;

_return