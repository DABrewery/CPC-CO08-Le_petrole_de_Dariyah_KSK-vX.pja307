
[] spawn {

	while { !isBluforDetected } do {

		waitUntil {isBluforDetected};
		
		//systemChat "Renforts déclenchés.";

		sleep 300;

		_nearestPlayerPos = [getPos leader grpHeli] call int_fnc_findUnloadPos;

		[
			grpHeli,
			_nearestPlayerPos#1,
			10,
			"SAD",
			"NORMAL",
			"AWARE",
			"RED",
			"RANDOM"
		] call GDC_fnc_lucyAddWaypoint;
		
		private _goMeca = {
			params ["_mrkSpawn"];
			//On trouve le point d'unload pour le méca : à 500 m. du joueur le plus proche
			private _tbPosUnload = [getMarkerPos _mrkSpawn, nil, 500] call int_fnc_findUnloadPos;
			_mrkUnload = _tbPosUnload#2;
			_mrkUnload = createMarkerLocal ["mrk" + str floor (random 10000), getMarkerPos (_tbPosUnload#2)];
			_mrkUnload setMarkerTypeLocal "hd_destroy";
			_mrkSAD = createMarkerLocal ["mrk" + str floor (random 10000), _tbPosUnload#1];
			_mrkSAD setMarkerTypeLocal "hd_destroy";

			//Et on envoie la cavalerie
			[[_mrkSpawn, _mrkUnload, _mrkSAD], opfor, GROUPE_ENI_GRAND, "CUP_O_M113_TKA"] spawn int_fnc_spawnMechInfantry;
		};

		sleep 900;
		["mrkSpawnMeca_1"] call _goMeca;
		sleep 300;
		["mrkSpawnMeca_2"] call _goMeca;

	};

};
