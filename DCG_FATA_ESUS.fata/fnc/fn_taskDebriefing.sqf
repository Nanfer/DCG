/*
Author: SENSEI

Last modified: 9/14/2015

Description: debriefing task

Return: nothing
__________________________________________________________________*/
if !(isServer) exitWith {};

#include "..\data\define.hpp"

private ["_taskID","_taskText","_taskDescription"];

_taskID = "debriefing";
_taskText = "Informe (Misión completada)";
_taskDescription = "Vuelva a base e informe sobre el resultado de la misión";

SET_TASKWPOS(_taskID,_taskDescription,_taskText,getPosATL SEN_mob_laptop,"Default")
