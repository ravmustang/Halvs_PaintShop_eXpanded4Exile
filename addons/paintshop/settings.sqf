/*
	Vehicle & backpack Paintshop
	By Halv
	
	Copyright (C) 2015  Halvhjearne > README.md

	Halv's Paintshop eXpanded 4 Exile 
	by DirtySanchez
	DonkeyPunch.INFO
	https://discord.me/eXpoch
*/


//these are the classnames of buildings that will activate the paintshop
_paintshopbuildings = ["Land_CarService_F","Land_Repair_center","Exile_Construction_Flag_Static"];

//add textures and preset colors here
_textures = [
	//Halv's Paintshop eXpanded 4 Exile by DirtySanchez
	["Armor","addons\paintshop\skins\armor.jpg"],
	["Devil's Camo","addons\paintshop\skins\blackredwhite.paa"],
	["Blue Camo","addons\paintshop\skins\bluecamo.jpg"],
	["Camo Camo","addons\paintshop\skins\camo.jpg"],
	["DirtySanchez Camo","addons\paintshop\skins\camo1.jpg"],
	["Aqua Camo","addons\paintshop\skins\camoaqua.jpg"],
	["Desert Camo","addons\paintshop\skins\camodesert.jpg"],
	["Silver Camo","addons\paintshop\skins\camogrey.jpg"],
	["Pink Camo","addons\paintshop\skins\camopink.jpg"],
	["Red Camo","addons\paintshop\skins\camored.jpg"],
	["Smooth Camo","addons\paintshop\skins\camosmooth.jpg"],
	["Tie Die Camo","addons\paintshop\skins\camotiedie.jpg"],
	["Digital Camo","addons\paintshop\skins\digital.jpg"],
	["Fire Camo","addons\paintshop\skins\fire.jpg"],
	["Flat Green Camo","addons\paintshop\skins\flatgreen.jpg"],
	["Pink Hair Camo","addons\paintshop\skins\pink-hair.jpg"],
	["Safari Camo","addons\paintshop\skins\safari.jpg"],
	["Shield Camo","addons\paintshop\skins\shield.jpg"],
	["Skull Camo","addons\paintshop\skins\skullcamo.jpg"],
	["Neon Camo","addons\paintshop\skins\spilled_neon.jpg"],
	["Urban Camo","addons\paintshop\skins\urbancamo.jpg"],
	["Zebra Camo","addons\paintshop\skins\zebracamo.paa"],
//original halv textures from here down and commented out below
	["Eagle","\a3\data_f_curator\Eagle\Data\eagle_co.paa"],
	//preset colors
	["Red","#(argb,8,8,3)color(1,0,0,1)"],
	["Green","#(argb,8,8,3)color(0,1,0,1)"],
	["Blue","#(argb,8,8,3)color(0,0,1,1)"],
	["Black","#(argb,8,8,3)color(0,0,0,0.6)"],
	["Pink","#(argb,8,8,3)color(1,0.75,0.84,0.2)"],
	["Tan","#(argb,8,8,3)color(0.8,0.7,0.5,0.2)"]
];

/*
// Use these below as examples of how to add other textures from MODS or from the mission file pbo :)
//Epoch
	//Epoch["Bear","\x\addons\a3_epoch_assets\textures\bear\bear_co.paa"],
	//Epoch["Candy","\x\addons\a3_epoch_assets\textures\candy\candy_ca.paa"],
	//Epoch["Circuit","\x\addons\a3_epoch_assets\textures\circuit\circuit_co.paa"],
	//Epoch["Concrete","\x\addons\a3_epoch_assets\textures\concrete_ca.paa"],
	//Epoch["Wood","\x\addons\a3_epoch_assets\textures\wood_co.paa"],
	//Epoch["Supply crate","\x\addons\a3_epoch_assets_1\textures\supply_crate_co.paa"],
	//Epoch["Carry Tent","\x\addons\a3_epoch_assets_3\carnival\carnyTent_co.paa"],
//custom textures (have to be in your mission pbo)
	//custom["Linux","trader\trader.jpg"],
	//custom["DK Flag","custom\dkflag.jpg"],
	//custom["Load Screen","custom\loadscreen.jpg"],
	//custom["Problem Solving","custom\problemsolving.jpg"],
	//custom["Union Jack","custom\unionjack.jpg"],
	//custom["Carbon","custom\carbon.jpg"],
	//custom["Stars and Bars","custom\confederate.jpg"],
	//custom["Leopard skin","custom\leopard.jpg"],
	//custom["Stars and Stripes","custom\murica.jpg"],
	//custom["Rainbow","custom\rainbow.jpg"],
	//custom["Shark Teeths","custom\shark.jpg"],
	//custom["Camo Light Green","custom\lightgreen.jpg"]
//default arma 3 textures
	["Debriefing background","\a3\Ui_f\data\gui\cfg\Debriefing\debriefingbackground_co.paa"],
	["CommunityGuide background 1","\a3\Ui_f\data\gui\cfg\CommunityGuide\airassault_co.paa"],
	["CommunityGuide background 2","\a3\Ui_f\data\gui\cfg\CommunityGuide\basicinfantrycombat_co.paa"],
	["CommunityGuide background 3","\a3\Ui_f\data\gui\cfg\CommunityGuide\combinedarms_co.paa"],
	["CommunityGuide background 4","\a3\Ui_f\data\gui\cfg\CommunityGuide\groundvehiclecrew_co.paa"],
	["CommunityGuide background 5","\a3\Ui_f\data\gui\cfg\CommunityGuide\guerrillawarfare_co.paa"],
	["CommunityGuide background 6","\a3\Ui_f\data\gui\cfg\CommunityGuide\helicopters_co.paa"],
	["CommunityGuide background 7","\a3\Ui_f\data\gui\cfg\CommunityGuide\introduction_co.paa"],
	["CommunityGuide background 8","\a3\Ui_f\data\gui\cfg\CommunityGuide\sniperslaunchers_co.paa"],
	["CommunityGuide background 9","\a3\Ui_f\data\gui\cfg\CommunityGuide\zeus_co.paa"],
	["LoadingScreens 1","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_06_co.paa"],
	["LoadingScreens 2","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_07_co.paa"],
	["LoadingScreens 3","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_10_co.paa"],
	["LoadingScreens 4","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_14_co.paa"],
	["LoadingScreens 5","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_16_co.paa"],
	["LoadingScreens 6","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_17_co.paa"],
	["LoadingScreens 7","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_18_co.paa"],
	["LoadingScreens 8","\a3\Ui_f\data\gui\cfg\LoadingScreens\loading_01_co.paa"],
	["Bootcamp Background","\a3\Ui_f\data\gui\Rsc\RscDisplayBootcampMsgBox\bootcampmsgbox_background_ca.paa"],
	["Workshop defaultimage","\a3\Ui_f\data\gui\Rsc\RscDisplayPublishMission\steamworksdefaultimage_co.paa"],
	["WelcomeScreens 1","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome1_ca.paa"],
	["WelcomeScreens 2","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome2_ca.paa"],
	["WelcomeScreens 3","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome3_ca.paa"],
	["WelcomeScreens 4","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome4_ca.paa"],
//karts pics
	["Karts Content","\a3\data_f_kart\images\karts_contentbrowserpicture_co.paa"],
	["Karts illustration 1","\a3\data_f_kart\images\karts_illustration_01_ca.paa"],
	["Karts illustration 2","\a3\data_f_kart\images\karts_illustration_02_ca.paa"],
	["Karts illustration 3","\a3\data_f_kart\images\karts_illustration_03_ca.paa"],
	["Karts illustration 4","\a3\data_f_kart\images\karts_illustration_04_ca.paa"],
	["Karts illustration 5","\a3\data_f_kart\images\karts_illustration_05_ca.paa"],
	["Karts illustration 6","\a3\data_f_kart\images\karts_illustration_06_ca.paa"],
	["Karts Overview","\a3\data_f_kart\images\karts_overviewpicture_co.paa"],
	["Karts Flag 1","\a3\data_f_kart\Flags\flag_bluking1_co.paa"],
	["Karts Flag 2","\a3\data_f_kart\Flags\flag_bluking2_co.paa"],
	["Karts Flag 3","\a3\data_f_kart\Flags\flag_fuel1_co.paa"],
	["Karts Flag 4","\a3\data_f_kart\Flags\flag_fuel2_co.paa"],
	["Karts Flag 5","\a3\data_f_kart\Flags\flag_koke1_co.paa"],
	["Karts Flag 6","\a3\data_f_kart\Flags\flag_koke2_co.paa"],
	["Karts Flag 7","\a3\data_f_kart\Flags\flag_redburger_co.paa"],
	["Karts Flag 8","\a3\data_f_kart\Flags\flag_redstone_co.paa"],
	["Karts Flag 9","\a3\data_f_kart\Flags\flag_suatmm_co.paa"],

//other
	["Heli Content","\a3\data_f_heli\images\heli_overviewpicture_co.paa"],
*/