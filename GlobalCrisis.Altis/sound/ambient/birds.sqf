while {player distance (getmarkerpos "hangar") < 200} do {
_animals = ["1","2","3","4"];
_sort = ["birds","dog"];
_sound = format ["a3\sounds_f\ambient\animals\%1%2.wss",(_sort select floor(random 1.9)),(_animals select floor(random 3.9))];
_gl = [blog,dlog];
_sel = _gl select floor(random 1.9);
playsound3D [_sound,_sel,false, getposATL _sel, 1.5];
sleep 5;
};