_drone = _this select 0;
_dir = getDir _drone;
_drone enablesimulation true;
_drone flyInHeight 2000;
_drone setPosATL [getmarkerpos "ciadronepos" select 0, getMarkerPos "ciadronepos" select 1, 2000];
_drone setDir _dir;
_grpdrone = group _drone;

_ltr = _grpdrone addWaypoint [getmarkerpos "africanwedding",0];
[_grpdrone,0] setWaypointType "LOITER";
[_grpdrone,0] setWaypointSpeed "NORMAL";
[_grpdrone,0] setWaypointBehaviour "STEALTH";
[_grpdrone,0] setWaypointCombatMode "BLUE";
[_grpdrone,0] setWaypointLoiterRadius 2000;
_grpDrone setCurrentWaypoint [_grpdrone,0];