/*
Author: SENSEI

Last modified: 8/16/2015

Description: set number based on player count

Return: number
__________________________________________________________________*/
private ["_strength", "_playerCount"];

_playerCount = count (call SEN_fnc_getPlayers);
_strength = ceil ((_playerCount max 1) * abs(log(((_playerCount max 1)/3)/256)));

_strength

/*
for "_i" from 1 to 40 step 1 do {
	diag_log (format["PLAYER COUNT: %1, ENEMY COUNT:",_i] + str (ceil ((_i) * abs(log(((_i)/3)/256)))));
};
"PLAYER COUNT: 1, ENEMY COUNT:3"
"PLAYER COUNT: 2, ENEMY COUNT:6"
"PLAYER COUNT: 3, ENEMY COUNT:8"
"PLAYER COUNT: 4, ENEMY COUNT:10"
"PLAYER COUNT: 5, ENEMY COUNT:11"
"PLAYER COUNT: 6, ENEMY COUNT:13"
"PLAYER COUNT: 7, ENEMY COUNT:15"
"PLAYER COUNT: 8, ENEMY COUNT:16"
"PLAYER COUNT: 9, ENEMY COUNT:18"
"PLAYER COUNT: 10, ENEMY COUNT:19"
"PLAYER COUNT: 11, ENEMY COUNT:21"
"PLAYER COUNT: 12, ENEMY COUNT:22"
"PLAYER COUNT: 13, ENEMY COUNT:24"
"PLAYER COUNT: 14, ENEMY COUNT:25"
"PLAYER COUNT: 15, ENEMY COUNT:26"
"PLAYER COUNT: 16, ENEMY COUNT:27"
"PLAYER COUNT: 17, ENEMY COUNT:29"
"PLAYER COUNT: 18, ENEMY COUNT:30"
"PLAYER COUNT: 19, ENEMY COUNT:31"
"PLAYER COUNT: 20, ENEMY COUNT:32"
"PLAYER COUNT: 21, ENEMY COUNT:33"
"PLAYER COUNT: 22, ENEMY COUNT:34"
"PLAYER COUNT: 23, ENEMY COUNT:36"
"PLAYER COUNT: 24, ENEMY COUNT:37"
"PLAYER COUNT: 25, ENEMY COUNT:38"
"PLAYER COUNT: 26, ENEMY COUNT:39"
"PLAYER COUNT: 27, ENEMY COUNT:40"
"PLAYER COUNT: 28, ENEMY COUNT:41"
"PLAYER COUNT: 29, ENEMY COUNT:42"
"PLAYER COUNT: 30, ENEMY COUNT:43"
"PLAYER COUNT: 31, ENEMY COUNT:44"
"PLAYER COUNT: 32, ENEMY COUNT:45"
"PLAYER COUNT: 33, ENEMY COUNT:46"
"PLAYER COUNT: 34, ENEMY COUNT:47"
"PLAYER COUNT: 35, ENEMY COUNT:47"
"PLAYER COUNT: 36, ENEMY COUNT:48"
"PLAYER COUNT: 37, ENEMY COUNT:49"
"PLAYER COUNT: 38, ENEMY COUNT:50"
"PLAYER COUNT: 39, ENEMY COUNT:51"
"PLAYER COUNT: 40, ENEMY COUNT:52"
*/