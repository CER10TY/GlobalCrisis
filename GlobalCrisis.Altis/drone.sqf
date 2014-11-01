_drone = _this select 0;
_dir = getDir _drone;
_pos = getposATL _drone;
_height = getPosATL _drone select 2;

_drone enableSimulation true;

while {alive _drone} do {
	_drone setPosATL _pos;
	_drone setDir _dir;
};