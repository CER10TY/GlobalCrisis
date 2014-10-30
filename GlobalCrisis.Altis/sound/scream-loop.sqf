_screams = ["01","02","03","04","05","06","07"];
waitUntil {player distance fug < 300};
while {alive fug} do {
_scream = format ["a3\sounds_f\characters\human-sfx\P01\Max_Hit_%1.wss",_screams select floor(random 6.99)];
playSound3D [_scream,fug];
sleep 15;
};