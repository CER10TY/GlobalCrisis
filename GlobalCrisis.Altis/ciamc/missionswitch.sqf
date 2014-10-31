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
		"africanwedding" setMarkerAlpha 0;
		_afrwedd setTaskState "SUCCEEDED";
		["TaskSucceeded",["","African Wedding"]] call BIS_fnc_showNotification;
		_r = player addRating 999999; // To prevent player going rogue if he hit the civie mass.
		// == Adding second part 
		_listbox = 1500;
		_id = lbAdd [_listbox,"Athira - Scan for remaining hostile contacts"];
		lbSetData [_listbox,_id,"athirasweep"];
	};
	case "athirasweep":
	{
		// == Sweeping through Athira
		"athirasweep" setmarkeralpha 1;
		_car = player createSimpleTask ["car"];
		_car setSimpleTaskDescription ["To start the mission, enter a car and pick up the DEVGRU Team outside.","Enter car and pick up team","Car"];
		_car setSimpleTaskDestination (getposATL car1);
		["TaskAssigned",["","Athiran Sweep"]] call BIS_fnc_showNotification;
		_car setTaskState "Assigned";
		player setCurrentTask _car;
		waitUntil {vehicle player != player};
		titleText ["Now pick up the team waiting outside!","PLAIN DOWN"];
		_car setSimpleTaskDestination (getposATL off1);
		waitUntil {vehicle player distance off1 < 5};
		titleText ["Looks like they're asleep.. Try honking at them. (Use H)","PLAIN DOWN"];
		honkEH = false;
		_honk = (findDisplay 46) displayAddEventHandler ["KeyDown",{
		if (_this select 1 == 0x23) then {
		honkEH = true; // == Have to use global variable because local var == private var to scope.
		playSound3D ["a3\sounds_f\vehicles\soft\noises\horn_big_car.wss",vehicle player];
		} else {
		false;
		}}];
		waitUntil {honkEH};
		honkEH = ""; // Terminate var in some way (well whatever it's really just useless)
		_offgrp = group off1;
		_offgrp addVehicle (vehicle player);
		(units _offgrp) orderGetin true;
		waitUntil {(vehicle player) emptyPositions "cargo" == 0};
		(units _offgrp) joinSilent (group player);
		(findDisplay 46) displayRemoveEventHandler ["KeyDown",_honk]; // == Remove Honk EH.
		// == Car task succeded
		_car setTaskState "Succeeded";
		_ath = player createSimpleTask ["ath"];
		_ath setSimpleTaskDescription ["Alright, here's the deal - after that drone strike, we've got to go close up and clean up. Verify your targets, kill the remaining forces and move out again.","Sweep Athira - Verify, kill, leave","Athira"];
		_ath setSimpleTaskDestination (getmarkerpos "athirasweep");
		_ath setTaskState "assigned";
		player setCurrentTask _ath;
	};
};