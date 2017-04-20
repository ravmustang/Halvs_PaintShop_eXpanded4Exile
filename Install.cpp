Halv's Paintshop eXpanded 4 Exile
# by DirtySanchez at DonkeyPunch Community Gaming
Copyright (C) 2017  DirtySanchez/Halvhjearne
All skins provided in this pack are the property of DonkeyPunch Community Gaming and DirtySanchez/=RAV=MusTanG

Installation

STEP 0:
	--Move the addons folder into your mission file


STEP 1:
 	--Run this query on your database
 	ALTER TABLE `construction` ADD `paintshop` TEXT NOT NULL;


STEP 2:
 	--add this to the description.ext 
 	#include "addons\paintshop\Halv_defines.hpp"
 	#include "addons\paintshop\paintshop.hpp"


STEP 3:	
 	--add to init.sqf
 	if(hasInterface)then
 	{
 		[] execVM "addons\paintshop\paintshop.sqf";
 	};
 	[] execVM "addons\paintshop\paintshop_serveraddon.sqf";


STEP 4:
 	--add this to your exile.ini
 	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 	;;	Halv's PaintShop eXpanded 4 Exile
 	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
 	[updateBasePaint]
 	SQL1_1 = UPDATE construction SET paintshop = ?  WHERE id = ?
 	Number of Inputs = 2
 	SQL1_INPUTS = 1,2


STEP 5:
 	--change this in the exile.ini
 	[loadConstruction]
 	SQL1_1 = SELECT id,class,account_uid,spawned_at,position_x,position_y,position_z,direction_x,direction_y,direction_z,up_x,up_y,up_z,is_locked,pin_code,territory_id,deleted_at,damage,paintshop FROM construction WHERE id = ?
 	Number Of Inputs = 1
 	SQL1_INPUTS = 1 
 	OUTPUT = 1,2-STRING,3-STRING,4-STRING,5,6,7,8,9,10,11,12,13,14,15-STRING,16,17,18,19


STEP 6a:
 	--add class Paint to your CfgInteractionMenus under class Construction >> Actions
 	class Construction
 	{
 		targetType = 2;
 		target = "Exile_Construction_Abstract_Static";
 
 		class Actions 
 		{
 			class Paint : ExileAbstractAction
 			{
 				title = "Paint Base Part";
 				condition = "call ExileClient_util_world_isInOwnTerritory";
 				action = "ExileClientInteractionObject call HALV_paintshop_opendialog";
 			};


STEP 6b 6c and 6d:
 	--add class Paint to your CfgInteractionMenus
 	class Car and class Air and class Boat
 
 		class Actions 

 			class Paint : ExileAbstractAction
 			{
 				title = "Paint Vehicle";
 				condition = "((locked ExileClientInteractionObject) isEqualTo 0) && ((locked ExileClientInteractionObject) != 1) && (ExileClientNearPaintShop)";
 				action = "ExileClientInteractionObject call HALV_paintshop_opendialog";
 			};


Step 7:
 	--add this to your CfgExileCustomCode
 	class CfgExileCustomCode 
 	{
 		ExileServer_object_construction_database_load = "addons\paintshop\ExileServer_object_construction_database_load.sqf";

	
STEP 8:
 	if using infiStar add allowed IDDs 6666
