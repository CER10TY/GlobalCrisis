// Mission Control Switch 

_mission = _this select 0;

switch _mission do {
	case "athiradrone":
	{
		// == Initial mission - Pick up Terminal, Strike Athira
		"africanwedding" setMarkerAlpha 1;
		_uavp = player createSimpleTask ["uavp"];
		_uavp setSimpleTaskDescription ["To start off, pick up your handheld UAV Terminal.","Pick up handheld Terminal","UAV Terminal"];
		_uavp setSimpleTaskDestination (getposatl tsmall);
		["TaskAssigned",["","African Wedding"]] call BIS_fnc_showNotification;
		_uavp setTaskState "ASSIGNED";
		player setCurrentTask _uavp;
		waitUntil {"B_UavTerminal" in (assignedItems player)};
		_uavp setTaskState "SUCCEEDED";
		_afrwedd = player createSimpleTask ["afrwed"];
		_afrwedd setSimpleTaskDescription ["This is a straight-forward mission. A high profile target is meeting with the local garrison commander in Athira, so this is the time to strike. Be vigilant, as the meeting may have already ended when you connect, so both parties may be scattered throughout Athira. Keep an eye out for a Hatchback, as that is the VIP's car. Civilian casualties are expected.", "Drone Strike - Athira", "Drone Strike"];
		_afrwedd setSimpleTaskDestination (getmarkerPos "africanwedding");
		_afrwedd setTaskState "ASSIGNED";
		player setCurrentTask _afrwedd;
			[_afrwedd] spawn {
			// == Looping UAV Control, to prevent player getting into driver seat.
			while {alive player && taskState (_this select 0) == "Assigned"} do {
				_drone = ciadrone;
				_ctrl = UAVControl _drone;
				_seat = _ctrl select 1;
					if (_seat == "driver") then {
						player connectTerminalToUAV objNull;
						createDialog "droneAcc";
					};
			};
			};
		waitUntil {!alive general && !alive VIP};
		_afrwedd setTaskState "SUCCEEDED";
		["TaskSucceeded",["","African Wedding"]] call BIS_fnc_showNotification;
		_r = player addRating 999999; // To prevent player going rogue if he hit the civie mass.
		// == Second part (Riding through Athira)
	};
};