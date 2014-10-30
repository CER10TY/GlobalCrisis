class TRT_CIAMC
{
	idd = 11;
	movingenable = false;
class controls 
{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by tryteyker, v1.063, #Pumydi)
////////////////////////////////////////////////////////

class TRT_GUIBack: IGUIBack
{
	idc = 2200;
	x = 0.0151516;
	y = 0.0272727;
	w = 0.969697;
	h = 0.945455;
	colorbackground[]={0,0,0,0.5};
};
class TRT_CIALogo: RscPicture
{
	idc = 1200;
	text = "img\CIAlogo.paa";
	x = 0.681818;
	y = 0.0636363;
	w = 0.272727;
	h = 0.363636;
};
class TRT_CIATEXT: RscText
{
	idc = 1000;
	text = "CENTRAL INTELLIGENCE AGENCY"; //--- ToDo: Localize;
	x = 0.0454546;
	y = 0.0636364;
	w = 0.606061;
	h = 0.109091;
	sizeEx = 0.05;
};
class TRT_CtrListbox: RscListbox
{
	idc = 1500;
	x = 0.0757576;
	y = 0.318182;
	w = 0.393939;
	h = 0.436364;
};
class TRT_CtrText: RscText
{
	idc = 1001;
	text = "MISSION LIST"; //--- ToDo: Localize;
	x = 0.0757576;
	y = 0.209091;
	w = 0.181818;
	h = 0.0727273;
};
class TRT_Login: RscText
{
	idc = 1002;
	text = "LOGGED IN AS:"; //--- ToDo: Localize;
	x = 0.681818;
	y = 0.572727;
	w = 0.242424;
	h = 0.0727273;
};
class TRT_username: RscText
{
	idc = 1003;
	text = "dar.gal007"; //--- ToDo: Localize;
	x = 0.742424;
	y = 0.645455;
	w = 0.181818;
	h = 0.0363636;
};
class RscPicture_1201: RscPicture
{
	idc = 1201;
	text = "img\dariush.paa";
	x = 0.742424;
	y = 0.718182;
	w = 0.181818;
	h = 0.218182;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
};