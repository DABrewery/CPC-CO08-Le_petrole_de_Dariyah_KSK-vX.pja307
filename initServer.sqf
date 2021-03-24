//PLUTO Opfor
[
	opfor,		        //0 camp
	[1000,2000,6000],	//1 revealRange [man,land,air]
	[1500,2000,3000],	//2 sensorRange [man,land,air]
	120,			    //3 QRFtimeout
	[1000,2000,12000],	//4 QRFrange [man,land,air]
	[60,90,120],		//5 QRFdelay [min,mid,max]
	240,			    //6 ARTYtimeout
	[20,30,60],		    //7 ARTYdelay [min,mid,max]
	[1,2,4],		    //8 ARTYrounds [min,mid,max]
	[0,40,100]		    //9 ARTYerror [min,mid,max]
] call GDC_fnc_pluto;

gdc_plutoDebug = true;

/* Group definition */
//Takistan units
	private _fsl_ENI    = "CUP_O_TK_Soldier";
	private _lat_ENI    = "CUP_O_TK_Soldier_LAT";
	private _aa_ENI     = "CUP_O_TK_Soldier_AA";
	private _at_ENI     = "CUP_O_TK_Soldier_HAT";
	private _ass_at_ENI = "CUP_O_TK_Soldier_AAT";
	private _lmg_ENI    = "CUP_O_TK_Soldier_AR";
	private _mg_ENI     = "CUP_O_TK_Soldier_MG";
	private _ass_mg_ENI = "CUP_O_TK_Soldier_AMG";
	private _gl_ENI     = "CUP_O_TK_Soldier_GL";
	private _tl_ENI     = "CUP_O_TK_Soldier_SL";
	private _sl_ENI     = "CUP_O_TK_Officer";
	private _medic_ENI  = "CUP_O_TK_Medic";

//2 à 3
GROUPE_ENI_PETIT = [
	[_gl_ENI, _fsl_ENI],
	[_lmg_ENI, _fsl_ENI],
	[_tl_ENI, _fsl_ENI, _fsl_ENI],
	[_tl_ENI, _lat_ENI, _fsl_ENI],
	[_tl_ENI, _lmg_ENI, _fsl_ENI]
];

//4 à 5
GROUPE_ENI_MOYEN = [
	[_gl_ENI, _fsl_ENI, _fsl_ENI, _lat_ENI],
	[_lmg_ENI, _fsl_ENI,_fsl_ENI, _fsl_ENI],
	[_tl_ENI, _mg_ENI, _ass_mg_ENI, _fsl_ENI, _fsl_ENI],
	[_tl_ENI, _lat_ENI, _fsl_ENI, _fsl_ENI, _gl_ENI],
	[_tl_ENI, _lmg_ENI, _fsl_ENI, _at_ENI, _fsl_ENI]
];

//4 à 5
GROUPE_ENI_GRAND =
	[_sl_ENI, _medic_ENI, _tl_ENI, _gl_ENI, _fsl_ENI, _fsl_ENI, _tl_ENI, _mg_ENI, _ass_mg_ENI, _lat_ENI, _fsl_ENI];

isBluforDetected = false;

/* AI spawn */
execVM "spawn_IA\spawnPatrol_1.sqf";
execVM "spawn_IA\spawnPatrol_2.sqf";
execVM "spawn_IA\spawnPatrol_3.sqf";
execVM "spawn_IA\spawnPetrolStation.sqf";
execVM "spawn_IA\spawnReinf.sqf";