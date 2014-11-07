_mission = _this select 0;

switch _mission do {
case "athirastrike":
{
	waitUntil {dialog};
	_lbID = 1500;
	_ind = lbAdd [_lbID,"Athira - Drone Strike on VIP Target"];
	lbSetData [_lbID,_ind,"athiradrone"];
};
case "athirasweep":
{
	waitUntil {dialog};
	_listbox = 1500;
	lbDelete [_listbox,0];
	_id = lbAdd [_listbox,"Athira - Scan for contacts"];
	lbSetData [_listbox,_id,"athirasweep"];
};
/*
case "examplemission":
{
	waitUntil {dialog};
	_listbox = 1500;
	//lbDelete [_listbox,0]; // Use this to delete first entry in the list.
	_id = lbADd [_listbox,"Example Mission"];
	lbSetData [_listbox,_id,"examplemission"];
};
*/
};