/* Saute à une heure donnée et choisit un type de météo */

params [
	"_timeToSkipTo",
	["_dustStorm",false]
];

[0,"BLACK",3] call BIS_fnc_fadeEffect;  

if (_dustStorm) then {
	[[340,0,false,false,false],"external\AL_dust_storm\al_duststorm.sqf"] remoteExec ["execVM"]
} else {
	if (!(isNil "al_duststorm_on") && {al_duststorm_on}) then {
		al_duststorm_on = false;
		publicVariable "al_duststorm_on";
		//[0, 0] remoteExecCall ["setWindStr", 2];
	};
};

[(_timeToSkipTo - daytime + 24 ) % 24] remoteExecCall ["skipTime", 2];

[1,"BLACK",3] call BIS_fnc_fadeEffect;
