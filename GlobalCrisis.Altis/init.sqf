// == Environmental placement.
[] execVM "missionintro.sqf";
// == AddAction for boat.
//boat addAction ["Throw out light", {0 = [_this select 2] spawn {deleteVehicle lightpad; boat removeAction (_this select 0)}}]; // Scrapped boat part in Rev0985
// == Sounds
[] execVM "sound\scream-loop.sqf";
[] execVM "sound\breath-loop.sqf";
[] execVM "death\fugitive.sqf";
//[] execVM "sound\ambient\birds.sqf"; // == Annoying, inefficient loop, performance draining.
// == Mission marker alpha.
"africanwedding" setMarkerAlpha 0;
"athirasweep" setmarkeralpha 0;

// == Global variables.
honkEH = false;
athsweep = false;
execTimes = 0;

// == Virtual Arsenal
[] execVM "arsenalsetup.sqf";

// == Briefing
[] execVM "briefing.sqf";