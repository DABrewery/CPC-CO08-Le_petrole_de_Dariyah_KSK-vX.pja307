/* Ajoute les objets à un conteneur (véhicule, caisse ou sac à dos)

Paramètres :
0: OBJ, vehicle to which items will be added
1: BOOL, true: container emptied
2: ARRAY of STRINGS, array of classnames to add to the vehicle
3: BOOL, true: empty backpack added to the container

*/

params [
	"_veh",
	["_clearContainer", true],
	"_tbClassNames",
	["_clearBackpacks", true]
];

if !(isServer) exitWith {};

//Clear container content
if (_clearContainer) then {
	clearItemCargoGlobal _veh;
	clearMagazineCargoGlobal _veh;
	clearWeaponCargoGlobal _veh;
	clearBackpackCargoGlobal _veh;
};

//Add items
{
	if ((_x#0) isKindOf "Bag_Base") then {
		_veh addBackpackCargoGlobal _x;
	} else {
		_veh addItemCargoGlobal _x;
	}
} forEach _tbClassNames;

//Clear backpack contents
if (_clearBackpacks) then {
	{
		clearItemCargoGlobal _x;
		clearMagazineCargoGlobal _x;
		clearWeaponCargoGlobal _x;
		clearBackpackCargoGlobal _x;
	} forEach everyBackpack _veh;
};

