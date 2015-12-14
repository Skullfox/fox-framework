	class notification
	{
		title = "Notification";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa";
		description = "%1";
		priority = 7;
		color[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
		colorIconPicture[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
		colorIconText[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
		sound = "defaultNotification";
		soundClose = "defaultNotificationClose";
	};

	class mhq : notification
	{
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa";
		description = "%2";
		title = "%1";
	};


