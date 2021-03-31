//Récupère la liste de tous les marqueurs LUCY pour les masquer et les blacklister pour GDC_fnc_chooseSpawnPos
private _tbMrk = allMapMarkers select {["mrk", _x, true] call BIS_fnc_inString};

//Masque les marqueurs
{_x setMarkerAlpha 0.0} forEach _tbMrk;

//LUCY (-> lancé dans l'init.sqf)
[0.5,"mkr_spawn_static_unit",true,600.0,false,3600.0,true,true,"COLONEL"] call GDC_fnc_lucyInit;

// Shared global variables
opside = opfor;

//Cargo caisse de départ
private _pos = getMarkerPos "mk_spawn";

cargoCrate = objNull;
decoObj_1 = objNull;
decoObj_2 = objNull;
decoObj_3 = objNull;
decoObj_4 = objNull;

if (isServer) then {
   cargoCrate = "CUP_USBasicWeapons_EP1" createVehicle _pos;
   waitObject = "Land_TentSolar_01_olive_F" createVehicle _pos;
   decoObj_1 = "Land_TentSolar_01_folded_sand_F" createVehicle _pos;
   decoObj_2 = "Land_TentSolar_01_folded_sand_F" createVehicle _pos;
   decoObj_3 = "Land_TentSolar_01_folded_sand_F" createVehicle _pos;
   decoObj_4 = "Land_TentSolar_01_folded_sand_F" createVehicle _pos;
   publicVariable "waitObject";
};

[
   cargoCrate,
   true,
   [
      ["CUP_B_GER_Backpack_MG3",5],
      ["SatchelCharge_Remote_Mag", 4],
      ["DemoCharge_Remote_Mag", 6],
      ["ACE_M26_Clacker",2],
      ["ACE_Clacker",2],
      ["CUP_30Rnd_556x45_PMAG_QP_Tan",20],
      ["CUP_17Rnd_9x19_glock17", 30],
      ["CUP_HandGrenade_M67",10],
      ["CUP_launch_M136",4],
      ["ACE_wirecutter",5],
      ["ACE_EntrenchingTool",5],
      ["ACE_EarPlugs",10],
      ["ACE_packingBandage",20],
      ["ACE_quikclot",10],
      ["ACE_elasticBandage",10],
      ["ACE_fieldDressing",20],
      ["ACE_salineIV_250",5],
      ["ACE_salineIV_500",5],
      ["ACE_salineIV",2],
      ["ACE_morphine",10],
      ["ACE_atropine",5],
      ["ACE_tourniquet",8],
      ["ACE_splint",10]
   ]
] call int_fnc_addCargo;

_tbObjSpawn = [cargoCrate, waitObject, decoObj_1, decoObj_2, decoObj_3, decoObj_4] + playableUnits + switchableUnits;

//Spawn au choix sur 3 positions
["mk_spawn", _tbObjSpawn, "CAPTAIN", nil, nil, 5, 1, ["mk_spawn_1", "mk_spawn_2", "mk_spawn_3"]] call int_fnc_chooseSpawnPos;

//Extraction héliportée
["ACRE_PRC148",5,blufor,"CUP_B_UH1D_slick_GER_KSK_Des", "marker_objective"] call GDC_fnc_extra;

//Actions ACE
//-Choix du moment de l'opération
_action_wait_dustStorm = [ 
 "wait_dust", 
 "Attendre que le Sirocco se lève (16h)", 
 "", 
 { 
	//hint "Attendre que le sirocco";
   [16, true] spawn int_fnc_waitMoment;
 
 }, 
 {(isNil "al_duststorm_on") || {!al_duststorm_on}} 
] call ace_interact_menu_fnc_createAction;

_action_wait_end_dustStorm = [ 
 "wait_end_dust", 
 "Attendre que le Sirocco retombe (19h30)", 
 "", 
 { 
	//hint "Attendre que le sirocco";
   [19.30, false] spawn int_fnc_waitMoment;
 }, 
 {!(isNil "al_duststorm_on") && {al_duststorm_on}} 
] call ace_interact_menu_fnc_createAction;

_action_wait_night = [ 
 "wait_night", 
 "Attendre la nuit profonde (2h00)", 
 "", 
 { 
	//hint "Attendre jusqu'à la nuit";
   [2, false] spawn int_fnc_waitMoment;
 }, 
 {true} 
] call ace_interact_menu_fnc_createAction;

_action_wait_day = [ 
 "wait_day", 
 "Attendre l'aube (4h45)", 
 "", 
 { 
   [4.45, false] spawn int_fnc_waitMoment;
 }, 
 {true} 
] call ace_interact_menu_fnc_createAction;

[waitObject, 0, ["ACE_MainActions"], _action_wait_dustStorm] call ace_interact_menu_fnc_addActionToObject;
[waitObject, 0, ["ACE_MainActions"], _action_wait_end_dustStorm] call ace_interact_menu_fnc_addActionToObject;
[waitObject, 0, ["ACE_MainActions"], _action_wait_night] call ace_interact_menu_fnc_addActionToObject;
[waitObject, 0, ["ACE_MainActions"], _action_wait_day] call ace_interact_menu_fnc_addActionToObject;

//Lance le briefing
execVM "briefing.sqf";
