/*
Author: SENSEI

Last modified: 6/25/2015

Description:  adds radios to player inventory

Return: nothing
__________________________________________________________________*/
if !(hasInterface) exitWith {};

if (SEN_acreEnabled) exitWith {
	[] spawn SEN_fnc_setRadioACRE;
};

if (SEN_tfarEnabled) exitWith {
	[] spawn SEN_fnc_setRadioTFAR;
};

hintSilent "No podemos asignarle una radio. ACRE2 o TFAR desactivado.";