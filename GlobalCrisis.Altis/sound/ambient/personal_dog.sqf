while {player distance getmarkerpos "hangar" < 200} do {
_noise = ["dog1","dog2","dog3","dog4"];
_sound = format ["a3\sounds_f\ambient\animals\%1.wss",_noise select floor(random 3.9)];
playsound3D [_sound,clog];
sleep 5;
};