// Kill fugitive after 2 mins 
waitUntil {player distance fug < 300};
for "_i" from 0 to 2 do {
	if (_i == 2) then {
	fug setDamage 1;
	if (player distance fug < 50) then {
	titleText ["*Breathing his last bit of air, the civilian without limbs falls dead to the floor*","PLAIN DOWN"];
	};
sleep 60;
_i = _i + 1;
};