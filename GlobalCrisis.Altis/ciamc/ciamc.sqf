// CIA MC Dialog 
disableSerialization;
createDialog "TRT_CIAMC";
waitUntil {dialog};
[["Mission","NavMC"]] call BIS_fnc_advHint;
findDisplay 46 displayAddEventHandler ["KeyDown",{if (_this select 1 == 0x1C && _this select 2) then { nul = [lbData [1500,lbCurSel 1500],lbCurSel 1500] execVM "ciamc\missionswitch.sqf";}}];
