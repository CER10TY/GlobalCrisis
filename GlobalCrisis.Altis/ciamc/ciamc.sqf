// CIA MC Dialog 
disableSerialization;
createDialog "TRT_CIAMC";
waitUntil {dialog};
execTimes = execTimes + 1;
switch execTimes do {
	case 1:
	{
		["athirastrike"] execVM "ciamc\add-mission.sqf";
	};
	case 2: 
	{
		["athirasweep"] execVM "ciamc\add-mission.sqf";
	};
};
[["Mission","NavMC"]] call BIS_fnc_advHint;
dialog_control_cia_mc = findDisplay 46 displayAddEventHandler ["KeyDown",{if (_this select 1 == 0x1C && _this select 2) then { nul = [lbData [1500,lbCurSel 1500],lbCurSel 1500] execVM "ciamc\missionswitch.sqf";}}];
