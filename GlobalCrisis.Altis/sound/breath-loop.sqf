// Breath loop for fugitive
while {alive fug2} do {
_breaths = ["Low_01","Low_02","Low_03","Low_04","Low_05","Max_01","Max_02","Max_03","Max_04","Max_05","Mid_01","Mid_02","Mid_03","Mid_04","Mid_05"];
_breath = format ["a3\sounds_f\characters\human-sfx\P01\Soundbreathinjured_%1.wss",_breaths select floor(random (count _breaths - 1))];
playsound3D [_breath,fug2];
sleep 2;
};