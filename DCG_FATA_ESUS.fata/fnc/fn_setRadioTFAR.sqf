/*
Author: SENSEI

Last modified: 7/22/2015

Description:  assigns TFAR radio and channels

Return: nothing
__________________________________________________________________*/
private ["_role","_bItems"];

// remove any radios in inventory
{player unlinkItem _x} forEach (player call TFAR_fnc_radiosList);

_role = roleDescription player;
// if player on COMMAND Net - assign radio, set short wave channel (team ch) and set short wave additional channel (command ch)
if (player getvariable ["SEN_commNet",""] isEqualTo "command") exitWith {
	player linkItem SEN_TFAR_SW;
	waitUntil {sleep 0.1; count (player call TFAR_fnc_radiosList) > 0};
	[(call TFAR_fnc_activeSwRadio), SEN_tfar_ch_sw] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), SEN_tfar_add_sw] call TFAR_fnc_setAdditionalSwChannel;
	[(call TFAR_fnc_ActiveSWRadio), tf_default_radioVolume] call TFAR_fnc_setSwVolume;
	hintSilent format["%1:\nAcceso a la comunicaciones de MANDO y EQUIPO concedidas.",_role];
};

if (player getvariable ["SEN_commNet",""] isEqualTo "support") exitWith {
	player linkItem SEN_TFAR_SW;
	waitUntil {sleep 0.1; count (player call TFAR_fnc_radiosList) > 0};
	[(call TFAR_fnc_activeSwRadio), SEN_tfar_ch_sw] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), SEN_tfar_add_sw] call TFAR_fnc_setAdditionalSwChannel;
	_bItems = backpackItems player;
	removeBackpack player;
	player addbackpack SEN_TFAR_LR;
	{player addItemToBackpack _x} forEach _bItems;
	[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, SEN_tfar_ch_lr] call TFAR_fnc_setLrChannel;
	[(call TFAR_fnc_ActiveSWRadio), tf_default_radioVolume] call TFAR_fnc_setSwVolume;
	[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, tf_default_radioVolume] call TFAR_fnc_setLrVolume;
	hintSilent format["%1:\nAcceso a la comunicaciones de SOPORTE y EQUIPO concedidas.",_role];
};

if (player getvariable ["SEN_commNet",""] isEqualTo "squad") exitWith {
	player linkItem SEN_TFAR_SW;
	waitUntil {sleep 0.1; count (player call TFAR_fnc_radiosList) > 0};
	[(call TFAR_fnc_activeSwRadio), SEN_tfar_ch_sw] call TFAR_fnc_setSwChannel;
	[(call TFAR_fnc_activeSwRadio), SEN_tfar_add_sw] call TFAR_fnc_setAdditionalSwChannel;
	[(call TFAR_fnc_ActiveSWRadio), tf_default_radioVolume] call TFAR_fnc_setSwVolume;
	hintSilent format["%1:\nAcceso a la comunicacion de EQUIPO concedida.",_role];
};