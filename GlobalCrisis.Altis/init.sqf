// == Environmental placement.
[] execVM "missionintro.sqf";
// == AddAction for boat.
boat addAction ["Throw out light", {0 = [_this select 2] spawn {deleteVehicle lightpad; boat removeAction (_this select 0)}}];
// == Sounds
[] execVM "sound\scream-loop.sqf";
[] execVM "sound\breath-loop.sqf";
[] execVM "death\fugitive.sqf";
[] execVM "sound\ambient\birds.sqf";
// == Mission marker alpha.
"africanwedding" setMarkerAlpha 0;