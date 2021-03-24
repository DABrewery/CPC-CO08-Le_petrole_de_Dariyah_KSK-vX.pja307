//Le nom de la zone qui sera utilisé pour tous les spawns 
private _zn = "PetrolStation";
private _grpGarn = GROUPE_ENI_MOYEN;
private _nbPat = [1,2];
private _probaManedFW = 0.6;

//Spawn des patrouilles
[_zn, _nbPat, GROUPE_ENI_PETIT, opfor] spawn int_fnc_spawnRdmPatrols;

//Spawn des garnisons
[_zn, _grpGarn, opfor, nil, nil, 0.1, 1] spawn int_fnc_spawnGarnisons;

//Spawn des armes fixes
[_zn, opfor, "CUP_O_KORD_high_TK", "CUP_O_TK_Soldier", 1, _probaManedFW, 0.8] spawn int_fnc_spawnFixedWeapons;