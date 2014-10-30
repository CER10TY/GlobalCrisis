// Lights
[] spawn {
private ["_f1","_fL","_f2","_fL2","_fL3","_f3"];
/*
_b = boat;
_l = "#lightpoint" createVehicle getposATL _b;
_l setLightIntensity 1;
_l setLightColor [255,0,0];
_l setLightAmbient [255,0,0];
_l setLightUseFlare true;
_l setLightFlareSize 10;
_l setLightFlareMaxDistance 500;
_l lightAttachObject [_b,[0,0,1]];
lightpoint = _l;
*/
_f1 = flood1;
_fL = "#lightpoint" createVehicle getposATL _f1;
_fL setLightIntensity 1;
_fL setLightColor [255,255,255]; 
_fL setLightAmbient [255,255,255];
_fL lightAttachObject [_f1,[0,0,0]];
_f2 = flood2;
_fL2 = "#lightpoint" createVehicle getposATL _f2;
_fL2 setLightIntensity 1;
_fL2 setLightColor [255,255,255]; 
_fL2 setLightAmbient [255,255,255];
_fL2 lightAttachObject [_f2,[0,0,0]];
_f3 = flood3;
_fL3 = "#lightpoint" createVehicle getposATL _f3;
_fL3 setLightIntensity 1;
_fL3 setLightColor [255,255,255]; 
_fL3 setLightAmbient [255,255,255];
_fL3 lightAttachObject [_f3,[0,0,0]];
};
// Guns
[] spawn {
private ["_t","_l","_wph","_wph2","_wph3","_wph4"];
_t = camptable;
_l = tsmall;
_wph = createVehicle ["GroundWeaponHolder",getposATL _t, [], 0, "CAN_COLLIDE"];
_wph addWeaponCargo ["RH_M16A4",1];
_wph addItemCargo ["RH_sakerb",1];
_wph setPosATL [getposATL _t select 0, getposATL _t select 1, 1.05];
_wph setVectorDir [0,1,0];
_wph2 = createVehicle ["GroundWeaponHolder",getposATL _t,[], 0, "CAN_COLLIDE"];
_wph2 addWeaponCargo ["RH_SAMR",1];
_wph2 addItemCargo ["RH_spr_mbs",1];
_wph2 setVectorDir [0,1,0];
_wph2 setposATL [(getposATL _t select 0) - 0.5, (getposATL _t select 1) + 0.25, 1.05];
_wph3 = createVehicle ["GroundWeaponHolder",getposATL _t,[],0,"CAN_COLLIDE"];
_wph3 addWeaponCargo ["hlc_rifle_ak47",1];
_wph3 addItemCargo ["hlc_muzzle_762SUP_AK",1];
_wph3 setposATL [(getposATL _t select 0) + 0.5, (getposATL _t select 1) - 0.25, 1.05];
_wph4 = createVehicle ["GroundWeaponHolder",getposATL _l, [], 0, "CAN_COLLIDE"];
_wph4 addItemCargo ["B_UAVTerminal",1];
_wph4 setPosATL [getposATL _l select 0, getposATL _l select 1, 1.05];
_wph4 setDir 180;
};

// == Backpack for table (Not possible to attach visually without weapon holder)
[] spawn {
private ["_t","_u","_wph","_wph2","_wph3"];
_t = ct3;
_u = mtp;
_wph = createVehicle ["GroundWeaponHolder",getposATL _t,[],0,"CAN_COLLIDE"];
_wph addBackpackCargo ["B_Carryall_oli",1];
_wph attachTo [_t,[0.6,.25,1.05]];
_wph2 = createVehicle ["GroundWeaponHolder",getposATL _t,[],0,"CAN_COLLIDE"];
_wph2 addWeaponCargo ["V_Chestrig_rgr",1];
//_wph2 attachTo [_t,[-0.6,0,1.05]];
_wph2 setPosATL [(getposATL _t select 0) + 0.5, (getposATL _t select 1) - 0.75, 0.35];
_wph2 setVectorDirAndUp [[0,0,1],[0,-1,0]];
/*
_wph3 = createVehicle ["groundWeaponHolder",getposATL _t,[],0,"CAN_COLLIDE"];
_wph3 addWeaponCargo ["U_B_CombatUniform_mcam_worn",1];
_wph3 attachTo [_t,[0,0,1.05]];
*/
_u attachTo [_t,[0,0,1.05]];
};

// == Set Unit Insignia to CIA for BLUFOR (forgot to earlier)
{
	if (side _x == WEST) then {
		if (typeOf _x == "B_officer_F") then {
		[_x,"DEVGRU"] call BIS_fnc_setUnitInsignia;
		} else {
		[_x,"CIA"] call BIS_fnc_setUnitInsignia;
		};
	};
} foreach allUnits;