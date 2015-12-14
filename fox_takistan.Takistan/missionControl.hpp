class missionDialog
{
idd = -1; //no need for the whole dialog to be referenced at any time.
movingEnable = TRUE; //not moving
moving = 1; // who the hell knows what this does????????
onLoad = ""; //code to run when it loads
onUnload = ""; //code to run when its closed
controls[] = {missionCcontinue,missionAbort,missionText }; //anything that doesn't fit into the category below
controlsBackground[] = {missionFrame}; //background things that can?t be interacted with////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Phil, v1.063, #Detaho)
	////////////////////////////////////////////////////////

	class missionFrame: RscFrame
	{
		idc = 1800;
		x = 24 * GUI_GRID_W + GUI_GRID_X;
		y = 0 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 7 * GUI_GRID_H;
	};
	class missionCcontinue: RscButton
	{
		onButtonClick = "closeDialog 0;[] remoteExec ['fox_fnc_serverMissionAbort', 2];";
		idc = 1802;
		text = "Ja"; //--- ToDo: Localize;
		x = 26 * GUI_GRID_W + GUI_GRID_X;
		y = 4 * GUI_GRID_H + GUI_GRID_Y;
		w = 5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class missionAbort: RscButton
	{

		onButtonClick = "closeDialog 0";
		idc = 1803;
		text = "Nein"; //--- ToDo: Localize;
		x = 32 * GUI_GRID_W + GUI_GRID_X;
		y = 4 * GUI_GRID_H + GUI_GRID_Y;
		w = 5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class missionText: RscText
	{
		idc = 1000;
		text = "Mission abbrechen ?"; //--- ToDo: Localize;
		x = 26 * GUI_GRID_W + GUI_GRID_X;
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 11 * GUI_GRID_W;
		h = 2.5 * GUI_GRID_H;
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////
}