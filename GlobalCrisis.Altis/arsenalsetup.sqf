// Setting up Virtual Arsenal
_box = arsenal;

["AmmoboxInit",_box] spawn BIS_fnc_arsenal;

[_box,["RH_M4","RH_M16A1","RH_M16A2","RH_M16A3","RH_M16A4","RH_SAMR","HLC_Rifle_AK74","HLC_Rifle_AK47","HLC_Rifle_AKM","HLC_Rifle_AKS74U"]] call BIS_fnc_addVirtualWeaponCargo;
[_box,["30RND_556x45_STANAG","30rnd_556x45_STANAG_Tracer_Red","hlc_30Rnd_762x39_b_ak"]] call BIS_fnc_addVirtualMagazineCargo;
[_box,["RH_eotech553","RH_sakerb","hlc_muzzle_762SUP_AK","hlc_muzzle_545SUP_AK","RH_saker"]] call BIS_fnc_addVirtualItemCargo;