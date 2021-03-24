/* Destruction en chaîne de l'installation pétriolière */

// Créé une explosion, puis de grandes flammes et grosse fumée noire à la position de l'objet
private _bigExplo = {

	params [
		"_obj",
		["_offsetFire", 0]
	];

	sleep 3 + random 5;

	//Explosion
	_charge = "DemoCharge_Remote_Ammo_Scripted" createVehicle (getPos _obj);
	_charge setDamage 1;
	
	sleep 5;

	//Flammes
	private _pos1 = getPos (_obj); 
	private _pos2 = [(getPos (_obj))#0,(getPos (_obj))#1,_offsetFire]; 
	private _fire = "#particlesource" createVehicle (_pos2);
	_fire setParticleClass ("ace_cookoff_CookOff");
	_fire setParticleFire [0.1,1.5,0.05];
	private _refract = "#particlesource" createVehicle (_pos2);
	_refract setParticleClass ("ObjectDestructionRefractSmall");
	sleep 3;
	private _smoke = "#particlesource" createVehicle (_pos1);  
	_smoke setParticleClass ("fxp_CarFuelDestSmoke");
};

sleep 5;

[oil_tower, 3] call _bigExplo;

_tbLeakObj = [v_1, v_2, v_3, v_4, v_5, v_6, v_7, v_8, v_9, v_10, v_11, v_12, v_13, v_14, v_15, v_16, v_17, v_18];

{ 
  	sleep 3; 
  	private _fire = "#particlesource" createVehicle (getPos _x); 
  	_fire setParticleClass ("MediumDestructionFire");   
	private _smoke = "#particlesource" createVehicle (getPos _x);
  	_smoke setParticleClass ("ObjectDestructionSmoke1_2Smallx"); 
	private _smoke = "#particlesource" createVehicle (getPos _x);
} forEach _tbLeakObj;

sleep 10;

_tbExploObj = [v_18, v_19, v_20, v_21, v_22, v_23, v_24, v_25, v_26, v_27, v_28, v_29, v_30, v_31, v_32, v_33, v_34, v_35, v_36, v_37];

{
	[_x, 0.5] spawn _bigExplo;
	sleep random 5;
} forEach _tbExploObj;

