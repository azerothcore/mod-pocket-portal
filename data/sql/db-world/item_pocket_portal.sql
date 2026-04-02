-- --------------------------------------------------------------------------------------
-- Pocket Portal
-- --------------------------------------------------------------------------------------
SET
@ITEMENTRY      := 701002,
@NAME           := "Pocket Portal",
@QUALITY        := 7,
@FLAGS          := 134217728, -- BOA
@FLAGSEXTRA     := 0,
@SOURCETYPE     := 0,
@COOLDOWN       := 0,
@SPELL          := 51371,
@BUYPRICE       := 5000000,
@SCRIPTNAME     := 'pocket_portal';

-- Add the item to Magical Goods Vendor in Dalaran
-- https://www.wowhead.com/wotlk/npc=28715/endora-moorehead
DELETE FROM `npc_vendor` WHERE `entry` = 28715 AND `item` = @ITEMENTRY;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES (28715, 0, @ITEMENTRY, 0, 0, 0, 0);

-- --------------------------------------------------------------------------------------
-- Teleporter Item
-- --------------------------------------------------------------------------------------
DELETE FROM `item_template` WHERE (`entry`= @ITEMENTRY);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `VerifiedBuild`)
VALUES (@ITEMENTRY, 0, 0, @NAME, 28862, @QUALITY, @FLAGS, @FLAGSEXTRA, 1, @BUYPRICE, 10000, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @SPELL, 0, 0, 0, @COOLDOWN, 1193, @COOLDOWN, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @SCRIPTNAME, 0, 0, 0, 0, 12340);

SET @ENTRY       := 128;
SET @NAME_NPC    := 'Jeffery';
SET @GOSSIP_MENU := 92000;
SET @ACTION_MENU := 1200000; -- Submenus
SET @TEXT_ID     := 90000;
SET @SSID        := 140;
SET @LINK        := 0;
SET @SCALE       := 0.8;
SET @EVENTTYPE   := 25;     -- 25 = SMART_EVENT_RESET (After spawn, respawn, etc.)
SET @ACTIONTYPE  := 41;     -- 41 = SMART_ACTION_FORCE_DESPAWN
SET @APARM1      := 30000;  -- Milliseconds until despawn occurs
SET @TTYPE       := 19;     -- 19 - SMART_TARGET_CLOSEST_CREATURE
SET @TPARM1      := 128;    -- SMART_TARGET CREATURE ID
SET @NOTE        := "Personal Teleporter";

-- --------------------------------------------------------------------------------------
-- Teleporter NPC
--
-- `modelid` = 30076 (Jeeves), 27320 (Goblin Mechanic), 21572 (Elven Portal Master)
--
-- --------------------------------------------------------------------------------------
DELETE FROM `creature_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `Healthmodifier`, `Manamodifier`, `Armormodifier`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `rank`, `damagemodifier`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`) VALUES(@ENTRY, @NAME_NPC, "", 'Directions', @GOSSIP_MENU, 60, 60, 1.56, 1.56, 1.56, 35, 3, 1, 1.14286, 1, 1, 1, 2, 7, 138936390, 1, 2, 'SmartAI');

DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY) AND (`source_type`=@SOURCETYPE) AND (`id` = @SSID);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,@SOURCETYPE,@SSID,@LINK,@EVENTTYPE,0,100,0,0,0,0,0,@ACTIONTYPE,@APARM1,0,0,0,0,0,@TTYPE,@TPARM1,0,0,0.0,0.0,0.0,0.0,@NOTE);
-- NPC MODEL
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@ENTRY, 0, 30076, 1, 1, 0);

-- creature_template_movement
DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (@Entry);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(@ENTRY, 1, 1, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------------------------------------
-- Update Creature SmartAI
-- --------------------------------------------------------------------------------------
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
-- --------------------------------------------------------------------------------------
-- Gossip_Menus
-- Insert into the database the gossip menus necessary for the NPC to speak.
-- --------------------------------------------------------------------------------------

DELETE FROM `gossip_menu` WHERE `MenuID` BETWEEN @GOSSIP_MENU AND (@GOSSIP_MENU + 5);
DELETE FROM `gossip_menu_option` WHERE `MenuID` BETWEEN @GOSSIP_MENU AND (@GOSSIP_MENU + 5);
DELETE FROM `gossip_menu_option` WHERE `MenuID` BETWEEN @ACTION_MENU AND (@ACTION_MENU + 16);

-- MAIN MENU
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`) VALUES
(@GOSSIP_MENU, 1, 0, 'Cities', 1, 1, @GOSSIP_MENU + 1),
(@GOSSIP_MENU, 2, 0, 'Classic Dungeons 1', 1, 1, @ACTION_MENU + 3),
(@GOSSIP_MENU, 3, 0, 'Classic Dungeons 2', 1, 1, @ACTION_MENU + 4),
(@GOSSIP_MENU, 4, 0, 'TBC Dungeons', 1, 1, @ACTION_MENU + 5),
(@GOSSIP_MENU, 5, 0, 'WotLK Dungeons', 1, 1, @ACTION_MENU + 6),
(@GOSSIP_MENU, 6, 0, 'Raids 1', 1, 1, @ACTION_MENU + 7),
(@GOSSIP_MENU, 7, 0, 'Raids 2', 1, 1, @ACTION_MENU + 8),
(@GOSSIP_MENU, 8, 0, 'Miscellaneous', 1, 1, @GOSSIP_MENU + 2);

-- Cities Submenu
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`) VALUES
(@GOSSIP_MENU + 1, 1, 0, 'Alliance Cities', 1, 1, @ACTION_MENU + 0),
(@GOSSIP_MENU + 1, 2, 0, 'Horde Cities', 1, 1, @ACTION_MENU + 1),
(@GOSSIP_MENU + 1, 3, 0, 'Neutral Cities', 1, 1, @ACTION_MENU + 2);

-- Misc Submenu
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`) VALUES
(@GOSSIP_MENU + 2, 1, 0, 'Alliance Townships', 1, 1, @ACTION_MENU + 9),
(@GOSSIP_MENU + 2, 2, 0, 'Horde Townships', 1, 1, @ACTION_MENU + 10),
(@GOSSIP_MENU + 2, 3, 0, 'Wilderness 1', 1, 1, @ACTION_MENU + 11),
(@GOSSIP_MENU + 2, 4, 0, 'Wilderness 2', 1, 1, @ACTION_MENU + 12),
(@GOSSIP_MENU + 2, 5, 0, 'Wilderness 2', 1, 1, @ACTION_MENU + 13),
(@GOSSIP_MENU + 2, 6, 0, 'Outland Wilderness', 1, 1, @ACTION_MENU + 14),
(@GOSSIP_MENU + 2, 7, 0, 'Northrend Wilderness', 1, 1, @ACTION_MENU + 15),
(@GOSSIP_MENU + 2, 8, 0, 'Tamed Wilderness', 1, 1, @ACTION_MENU + 16);


-- Alliance Cities Added + 0 for easier highlighting
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 0, 1, 0, 'Take me to: Stormwind City', 1, 1),
(@ACTION_MENU + 0, 2, 0, 'Take me to: Darnassus', 1, 1),
(@ACTION_MENU + 0, 3, 0, 'Take me to: Ironforge', 1, 1),
(@ACTION_MENU + 0, 4, 0, 'Take me to: The Exodar', 1, 1);

-- Horde Cities
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 1, 1, 0, 'Orgrimmar', 1, 1),
(@ACTION_MENU + 1, 2, 0, 'Thunderbluff', 1, 1),
(@ACTION_MENU + 1, 3, 0, 'Undercity', 1, 1),
(@ACTION_MENU + 1, 4, 0, 'Silvermoon', 1, 1);


-- Neutral Zones
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 2, 1, 0, 'Shattrath', 1, 1),
(@ACTION_MENU + 2, 2, 0, 'Dalaran', 1, 1),
(@ACTION_MENU + 2, 3, 0, 'Booty Bay', 1, 1),
(@ACTION_MENU + 2, 4, 0, 'Gadgetzan', 1, 1),
(@ACTION_MENU + 2, 5, 0, 'Everlook', 1, 1),
(@ACTION_MENU + 2, 6, 0, 'Area 52', 1, 1);

-- Classic Dungeons 1
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 3, 1, 0, 'Ragefire Chasm', 1, 1),
(@ACTION_MENU + 3, 2, 0, 'The Deadmines', 1, 1),
(@ACTION_MENU + 3, 3, 0, 'The Wailing Caverns', 1, 1),
(@ACTION_MENU + 3, 4, 0, 'The Stockades', 1, 1),
(@ACTION_MENU + 3, 5, 0, 'Shadowfang Keep', 1, 1),
(@ACTION_MENU + 3, 6, 0, 'Blackfathom Deeps', 1, 1),
(@ACTION_MENU + 3, 7, 0, 'Gnomergan', 1, 1),
(@ACTION_MENU + 3, 8, 0, 'Scarlet Monastery', 1, 1),
(@ACTION_MENU + 3, 9, 0, 'Razorfen Kraul', 1, 1),
(@ACTION_MENU + 3, 10, 0, 'Razorfen Downs', 1, 1);

-- Classic Dungeons 2
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 4, 1, 0, 'Uldaman', 1, 1),
(@ACTION_MENU + 4, 2, 0, "Zul'Farrak", 1, 1),
(@ACTION_MENU + 4, 3, 0, 'Maraudon', 1, 1),
(@ACTION_MENU + 4, 4, 0, "The Temple of Atal'Hakkar", 1, 1),
(@ACTION_MENU + 4, 5, 0, 'Blackrock Depths', 1, 1),
(@ACTION_MENU + 4, 6, 0, 'Blackrock Spire', 1, 1),
(@ACTION_MENU + 4, 7, 0, 'Dire Maul', 1, 1),
(@ACTION_MENU + 4, 8, 0, 'Scholomance', 1, 1),
(@ACTION_MENU + 4, 9, 0, 'Stratholme', 1, 1);

-- TBC Dungeons
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 5, 1, 0, 'Hellfire Citadel', 1, 1),
(@ACTION_MENU + 5, 2, 0, 'Coilfang Reservoir', 1, 1),
(@ACTION_MENU + 5, 3, 0, 'Auchindoun', 1, 1),
(@ACTION_MENU + 5, 4, 0, 'Caverns of Time', 1, 1),
(@ACTION_MENU + 5, 5, 0, 'The Botanica', 1, 1),
(@ACTION_MENU + 5, 6, 0, 'The Mechanar', 1, 1),
(@ACTION_MENU + 5, 7, 0, "Magisters' Terrace", 1, 1);

-- WOTLK Dungeons
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 6, 1, 0, 'Utgarde Keep', 1, 1),
(@ACTION_MENU + 6, 2, 0, 'The Nexus', 1, 1),
(@ACTION_MENU + 6, 3, 0, 'The Pit of Narjun', 1, 1),
(@ACTION_MENU + 6, 4, 0, "Drak'Tharon Keep", 1, 1),
(@ACTION_MENU + 6, 5, 0, 'The Violet Hold', 1, 1),
(@ACTION_MENU + 6, 6, 0, 'Gundrak', 1, 1),
(@ACTION_MENU + 6, 7, 0, 'The Halls of Stone', 1, 1),
(@ACTION_MENU + 6, 8, 0, 'The Halls of Lightning', 1, 1),
(@ACTION_MENU + 6, 9, 0, 'The Culling of Stratholme', 1, 1),
(@ACTION_MENU + 6, 10, 0, 'Trial of the Champion', 1, 1),
(@ACTION_MENU + 6, 11, 0, 'Utgarde Pinnacle', 1, 1),
(@ACTION_MENU + 6, 12, 0, 'The Frozen Halls', 1, 1);

-- Raids 1
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 7, 1, 0, 'Blackwing Lair', 1, 1),
(@ACTION_MENU + 7, 2, 0, 'The Molten Core', 1, 1),
(@ACTION_MENU + 7, 3, 0, "Zul'Gurub", 1, 1),
(@ACTION_MENU + 7, 4, 0, "The Ruins of Ahn'Qiraj", 1, 1),
(@ACTION_MENU + 7, 5, 0, "Ahn'Qiraj", 1, 1),
(@ACTION_MENU + 7, 6, 0, 'The Sunwell Plateau', 1, 1),
(@ACTION_MENU + 7, 7, 0, 'The Tempest Keep', 1, 1),
(@ACTION_MENU + 7, 8, 0, 'The Black Temple', 1, 1),
(@ACTION_MENU + 7, 9, 0, 'Serpentshrine Cavern', 1, 1),
(@ACTION_MENU + 7, 10, 0, 'Hyjal Summit', 1, 1);

-- Raids 2
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 8, 1, 0, "Magtheridon's Lair", 1, 1),
(@ACTION_MENU + 8, 2, 0, "Gruul's Lair", 1, 1),
(@ACTION_MENU + 8, 3, 0, "Zul'Aman", 1, 1),
(@ACTION_MENU + 8, 4, 0, "Karazhan", 1, 1),
(@ACTION_MENU + 8, 5, 0, 'The Vault of Archavon', 1, 1),
(@ACTION_MENU + 8, 6, 0, "Onyxia's Lair", 1, 1),
(@ACTION_MENU + 8, 7, 0, 'Naxxramas', 1, 1),
(@ACTION_MENU + 8, 8, 0, 'The Trial of the Crusader', 1, 1),
(@ACTION_MENU + 8, 9, 0, 'The Eye of Eternity', 1, 1),
(@ACTION_MENU + 8, 10, 0, 'Ulduar', 1, 1),
(@ACTION_MENU + 8, 11, 0, 'The Obsidian Sanctum', 1, 1),
(@ACTION_MENU + 8, 12, 0, 'Icecrown Citadel', 1, 1);

-- Alliance Townships
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 9, 1, 0, 'Goldshire', 1, 1),
(@ACTION_MENU + 9, 2, 0, 'Kharanos', 1, 1),
(@ACTION_MENU + 9, 3, 0, 'Sentinel Hill', 1, 1),
(@ACTION_MENU + 9, 4, 0, 'Bloodmyst Isle', 1, 1),
(@ACTION_MENU + 9, 5, 0, 'Darkshore', 1, 1),
(@ACTION_MENU + 9, 6, 0, 'Lakeshire', 1, 1),
(@ACTION_MENU + 9, 7, 0, 'Darkshire', 1, 1),
(@ACTION_MENU + 9, 8, 0, "The Isle of Quel'Danas", 1, 1);

-- Horde Townships
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 10, 1, 0, 'Razor Hill', 1, 1),
(@ACTION_MENU + 10, 2, 0, 'Brill', 1, 1),
(@ACTION_MENU + 10, 3, 0, 'Tranquillien', 1, 1),
(@ACTION_MENU + 10, 4, 0, 'Dolanaar', 1, 1),
(@ACTION_MENU + 10, 5, 0, 'Bloodhoof Village', 1, 1),
(@ACTION_MENU + 10, 6, 0, 'The Crossroads', 1, 1),
(@ACTION_MENU + 10, 7, 0, "The Isle of Quel'Danas", 1, 1);

-- Wilderness 1
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 11, 1, 0, 'Silverpine Forest', 1, 1),
(@ACTION_MENU + 11, 2, 0, 'Azuremyst Isle', 1, 1),
(@ACTION_MENU + 11, 3, 0, 'Loch Modan', 1, 1),
(@ACTION_MENU + 11, 4, 0, 'Eversong Woods', 1, 1),
(@ACTION_MENU + 11, 5, 0, 'The Wetlands', 1, 1),
(@ACTION_MENU + 11, 6, 0, 'Hillsbrad Foothills', 1, 1),
(@ACTION_MENU + 11, 7, 0, 'Alterac Mountains', 1, 1),
(@ACTION_MENU + 11, 8, 0, 'Arathi Highlands', 1, 1),
(@ACTION_MENU + 11, 9, 0, 'Stranglethorn Vale', 1, 1),
(@ACTION_MENU + 11, 10, 0, 'The Badlands', 1, 1),
(@ACTION_MENU + 11, 11, 0, 'The Swamp of Sorrows', 1, 1),
(@ACTION_MENU + 11, 12, 0, 'The Hinterlands', 1, 1);

-- Wilderness 2
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 12, 1, 0, 'Ashenvale', 1, 1),
(@ACTION_MENU + 12, 2, 0, 'Stonetalon Mountains', 1, 1),
(@ACTION_MENU + 12, 3, 0, 'Thousand Needles', 1, 1),
(@ACTION_MENU + 12, 4, 0, 'Desolace', 1, 1),
(@ACTION_MENU + 12, 5, 0, 'Searing Gorge', 1, 1),
(@ACTION_MENU + 12, 6, 0, 'The Blasted Lands', 1, 1),
(@ACTION_MENU + 12, 7, 0, 'The Burning Steppes', 1, 1),
(@ACTION_MENU + 12, 8, 0, 'Western Plaguelands', 1, 1);

-- Wilderness 3
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 13, 1, 0, "Light's Hope Chapel", 1, 1),
(@ACTION_MENU + 13, 2, 0, 'Gurubashi Arena', 1, 1),
(@ACTION_MENU + 13, 3, 0, 'Dustwallow Marsh', 1, 1),
(@ACTION_MENU + 13, 4, 0, 'Feralas', 1, 1),
(@ACTION_MENU + 13, 5, 0, 'Azshara', 1, 1),
(@ACTION_MENU + 13, 6, 0, 'Felwood', 1, 1),
(@ACTION_MENU + 13, 7, 0, "Un'Goro Crater", 1, 1),
(@ACTION_MENU + 13, 8, 0, 'Cenarion Hold', 1, 1);

-- Outland Wilderness
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 14, 1, 0, 'Hellfire Peninsula', 1, 1),
(@ACTION_MENU + 14, 2, 0, 'Cenarion Refuge', 1, 1),
(@ACTION_MENU + 14, 3, 0, 'Terokkar Forest', 1, 1),
(@ACTION_MENU + 14, 4, 0, 'Halaa', 1, 1),
(@ACTION_MENU + 14, 5, 0, "Blade's Edge Mountains", 1, 1),
(@ACTION_MENU + 14, 6, 0, 'Shadowmoon Valley', 1, 1);

-- Northrend Wilderness
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 15, 1, 0, 'Borean Tundra', 1, 1),
(@ACTION_MENU + 15, 2, 0, 'Howling Fjord', 1, 1),
(@ACTION_MENU + 15, 3, 0, "Dragonblight - Moa'ki Harbor", 1, 1),
(@ACTION_MENU + 15, 4, 0, 'Grizzly Hills', 1, 1),
(@ACTION_MENU + 15, 5, 0, "Zul'Drak", 1, 1),
(@ACTION_MENU + 15, 6, 0, 'Sholazar Basin - Nesingwary Base Camp', 1, 1),
(@ACTION_MENU + 15, 7, 0, 'Crystalsong Forest', 1, 1),
(@ACTION_MENU + 15, 8, 0, 'The Storm Peaks - K3', 1, 1),
(@ACTION_MENU + 15, 9, 0, 'Icecrown - The Shadow Vault', 1, 1);

-- Tamed Wilderness
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`) VALUES
(@ACTION_MENU + 16, 1, 0, 'Sunrock Retreat', 1, 1),
(@ACTION_MENU + 16, 2, 0, 'Fishing Resort', 1, 1),
(@ACTION_MENU + 16, 3, 0, "Koiter's Shrine", 1, 1),
(@ACTION_MENU + 16, 4, 0, "Dead King's Crypt", 1, 1),
(@ACTION_MENU + 16, 5, 0, "Honor's Stand", 1, 1),
(@ACTION_MENU + 16, 6, 0, 'Shatterspear Vale', 1, 1);
-- --------------------------------------------------------------------------------------
-- Smart Scripts
-- These have been moved a lot to reflect changes in the menu. But the actual smartID's ID I did not bother to change. You'll notice the 3rd value in each row is way out of order.
-- Don't try to change these destinations in keira, but edit the coordinates in this script itself for custom changes.
-- Accepting PR to anyone who wants to move the smartscript IDs so they're in order from 1-x.
-- --------------------------------------------------------------------------------------
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY) AND (`event_type`=62);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 1, 0, 62, 0, 100, 0, @ACTION_MENU + 0, 1, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8842.09, 626.358, 94.0867, 3.61363, "Stormwind City"),
(@ENTRY, 0, 7, 0, 62, 0, 100, 0, @ACTION_MENU + 0, 2, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 9869.91, 2493.58, 1315.88, 2.78897, "Darnassus"),
(@ENTRY, 0, 8, 0, 62, 0, 100, 0, @ACTION_MENU + 0, 3, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -4900.47, -962.585, 501.455, 5.40538, "Ironforge"),
(@ENTRY, 0, 9, 0, 62, 0, 100, 0, @ACTION_MENU + 0, 4, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -3864.92, -11643.7, -137.644, 5.50862, "The Exodar"),

(@ENTRY, 0, 2, 0, 62, 0, 100, 0, @ACTION_MENU + 1, 1, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1601.08, -4378.69, 9.9846, 2.14362, "Orgrimmar"),
(@ENTRY, 0, 10, 0, 62, 0, 100, 0, @ACTION_MENU + 1, 2, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -1274.45, 71.8601, 128.159, 2.80623, "Thunderbluff"),
(@ENTRY, 0, 11, 0, 62, 0, 100, 0, @ACTION_MENU + 1, 3, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1633.75, 240.167, -43.1034, 6.26128, "Undercity"),
(@ENTRY, 0, 12, 0, 62, 0, 100, 0, @ACTION_MENU + 1, 4, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 9738.28, -7454.19, 13.5605, 0.043914, "Silvermoon"),

(@ENTRY, 0, 4, 0, 62, 0, 100, 0, @ACTION_MENU + 2, 1, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -1887.62, 5359.09, -12.4279, 4.40435, "Shattrath"),
(@ENTRY, 0, 5, 0, 62, 0, 100, 0, @ACTION_MENU + 2, 2, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 5809.55, 503.975, 657.526, 2.38338, "Dalaran"),
(@ENTRY, 0, 3, 0, 62, 0, 100, 0, @ACTION_MENU + 2, 3, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -14281.9, 552.564, 8.90422, 0.860144, "Booty Bay"),
(@ENTRY, 0, 109, 0, 62, 0, 100, 0, @ACTION_MENU + 2, 4, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -6940.91, -3725.7, 48.9381, 3.11174, "Gadgetzan"),
(@ENTRY, 0, 114, 0, 62, 0, 100, 0, @ACTION_MENU + 2, 5, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 6658.57, -4553.48, 718.019, 5.18088, "Everlook"),
(@ENTRY, 0, 142, 0, 62, 0, 100, 0, @ACTION_MENU + 2, 6, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3271.2, 3811.61, 143.153, 3.44101, "Area 52"),

(@ENTRY, 0, 16, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 1, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1811.78, -4410.5, -18.4704, 5.20165, "Ragefire Chasm"),
(@ENTRY, 0, 14, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 2, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -11209.6, 1666.54, 24.6974, 1.42053, "The Deadmines"),
(@ENTRY, 0, 21, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 3, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -731.607, -2218.39, 17.0281, 2.78486, "The Wailing Caverns"),
(@ENTRY, 0, 15, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 4, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8763.84, 846.6199, 87.07, 0.6827, "The Stockades"),
(@ENTRY, 0, 20, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 5, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -234.675, 1561.63, 76.8921, 1.24031, "Shadowfang Keep"),
(@ENTRY, 0, 22, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 6, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 4249.99, 740.102, -25.671, 1.34062, "Blackfathom Deeps"),
(@ENTRY, 0, 13, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 7, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -5163.54, 925.423, 257.181, 1.57423, "Gnomergan"),
(@ENTRY, 0, 19, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 8, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 2873.15, -764.523, 160.332, 5.10447, "Scarlet Monastery"),
(@ENTRY, 0, 18, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 9, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -4470.28, -1677.77, 81.3925, 1.16302, "Razorfen Kraul"),
(@ENTRY, 0, 17, 0, 62, 0, 100, 0, @ACTION_MENU + 3, 10, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -4657.3, -2519.35, 81.0529, 4.54808, "Razorfen Downs"),

(@ENTRY, 0, 30, 0, 62, 0, 100, 0, @ACTION_MENU + 4, 1, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -6071.37, -2955.16, 209.782, 0.015708, "Uldaman"),
(@ENTRY, 0, 31, 0, 62, 0, 100, 0, @ACTION_MENU + 4, 2, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -6801.19, -2893.02, 9.00388, 0.158639, "Zul'Farrak"),
(@ENTRY, 0, 26, 0, 62, 0, 100, 0, @ACTION_MENU + 4, 3, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -1421.42, 2907.83, 137.415, 1.70718, "Maraudon"),
(@ENTRY, 0, 29, 0, 62, 0, 100, 0, @ACTION_MENU + 4, 4, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10177.9, -3994.9, -111.239, 6.01885, "The Temple of Atal'Hakkar"),
(@ENTRY, 0, 23, 0, 62, 0, 100, 0, @ACTION_MENU + 4, 5, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -7179.34, -921.212, 165.821, 5.09599, "Blackrock Depths"),
(@ENTRY, 0, 24, 0, 62, 0, 100, 0, @ACTION_MENU + 4, 6, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -7527.05, -1226.77, 285.732, 5.29626, "Blackrock Spire"),
(@ENTRY, 0, 25, 0, 62, 0, 100, 0, @ACTION_MENU + 4, 7, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -3520.14, 1119.38, 161.025, 4.70454, "Dire Maul"),
(@ENTRY, 0, 27, 0, 62, 0, 100, 0, @ACTION_MENU + 4, 8, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1269.64, -2556.21, 93.6088, 0.620623, "Scholomance"),
(@ENTRY, 0, 28, 0, 62, 0, 100, 0, @ACTION_MENU + 4, 9, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3352.92, -3379.03, 144.782, 6.25978, "Stratholme"),

(@ENTRY, 0, 35, 0, 62, 0, 100, 0, @ACTION_MENU + 5, 1, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -347.29, 3089.82, 21.394, 5.68114, "Hellfire Citadel"),
(@ENTRY, 0, 34, 0, 62, 0, 100, 0, @ACTION_MENU + 5, 2, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 738.865, 6865.77, -69.4659, 6.27655, "Coilfang Reservoir"),
(@ENTRY, 0, 32, 0, 62, 0, 100, 0, @ACTION_MENU + 5, 3, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -3324.49, 4943.45, -101.239, 4.63901, "Auchindoun"),
(@ENTRY, 0, 33, 0, 62, 0, 100, 0, @ACTION_MENU + 5, 4, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8369.65, -4253.11, -204.272, -2.70526, "Caverns of Time"),
(@ENTRY, 0, 131, 0, 62, 0, 100, 0, @ACTION_MENU + 5, 5, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3406.031, 1488.864, 182.837, 5.4055, "The Botanica"),
(@ENTRY, 0, 37, 0, 62, 0, 100, 0, @ACTION_MENU + 5, 6, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 2873.0334, 1556.0244, 252.06, 3.8159, "The Mechanar"),
(@ENTRY, 0, 36, 0, 62, 0, 100, 0, @ACTION_MENU + 5, 7, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 12884.6, -7317.69, 65.5023, 4.799, "Magisters' Terrace"),

(@ENTRY, 0, 48, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 1, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1203.41, -4868.59, 41.2486, 0.283237, "Utgarde Keep"),
(@ENTRY, 0, 44, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 2, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3782.89, 6965.23, 105.088, 6.14194, "The Nexus"),
(@ENTRY, 0, 38, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 3, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3707.86, 2150.23, 36.76, 3.22, "The Pit of Narjun"),
(@ENTRY, 0, 41, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 4, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 4765.59, -2038.24, 229.363, 0.887627, "Drak'Tharon Keep"),
(@ENTRY, 0, 45, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 5, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 5693.08, 502.588, 652.672, 4.0229, "The Violet Hold"),
(@ENTRY, 0, 42, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 6, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 6722.44, -4640.67, 450.632, 3.91123, "Gundrak"),
(@ENTRY, 0, 47, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 7, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 8922.12, -1009.16, 1039.56, 1.57044, "The Halls of Stone"),
(@ENTRY, 0, 46, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 8, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 9136.52, -1311.81, 1066.29, 5.19113, "The Halls of Lightning"),
(@ENTRY, 0, 39, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 9, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8756.39, -4440.68, -199.489, 4.66289, "The Culling of Stratholme"),
(@ENTRY, 0, 40, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 10, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 8590.95, 791.792, 558.235, 3.13127, "Trial of the Champion"),
(@ENTRY, 0, 49, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 11, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1267.24, -4857.3, 215.764, 3.22768, "Utgarde Pinnacle"),
(@ENTRY, 0, 43, 0, 62, 0, 100, 0, @ACTION_MENU + 6, 12, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 5643.16, 2028.81, 798.274, 4.60242, "The Frozen Halls"),

(@ENTRY, 0, 51, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 1, 0, 0, 62, 229, 0, 0, 0, 0, 0, 7, 0, 0, 0, 152.451, -474.881, 116.84, 0.001073, "Blackwing Lair"),
(@ENTRY, 0, 59, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 2, 0, 0, 62, 230, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1126.64, -459.94, -102.535, 3.46095, "The Molten Core"),
(@ENTRY, 0, 70, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 3, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -11916.7, -1215.72, 92.289, 4.72454, "Zul'Gurub"),
(@ENTRY, 0, 62, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 4, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8409.82, 1499.06, 27.7179, 2.51868, "The Ruins of Ahn'Qiraj"),
(@ENTRY, 0, 65, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 5, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8240.09, 1991.32, 129.072, 0.941603, "Ahn'Qiraj"),
(@ENTRY, 0, 63, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 6, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 12574.1, -6774.81, 15.0904, 3.13788, "The Sunwell Plateau"),
(@ENTRY, 0, 64, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 7, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3088.49, 1381.57, 184.863, 4.61973, "The Tempest Keep"),
(@ENTRY, 0, 50, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 8, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -3649.92, 317.469, 35.2827, 2.94285, "The Black Temple"),
(@ENTRY, 0, 53, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 9, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 797.855, 6865.77, -65.4165, 0.005938, "Serpentshrine Cavern"),
(@ENTRY, 0, 52, 0, 62, 0, 100, 0, @ACTION_MENU + 7, 10, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8177.89, -4181.23, -167.552, 0.913338, "Hyjal Summit"),

(@ENTRY, 0, 56, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 1, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -336.411, 3130.46, -102.928, 5.20322, "Magtheridon's Lair"),
(@ENTRY, 0, 55, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 2, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3530.06, 5104.08, 3.50861, 5.51117, "Gruul's Lair"),
(@ENTRY, 0, 71, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 3, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 6851.78, -7972.57, 179.242, 4.64691, "Zul'Aman"),
(@ENTRY, 0, 58, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 4, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -11118.9, -2010.33, 47.0819, 0.649895, "Karazhan"),
(@ENTRY, 0, 69, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 5, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 5453.72, 2840.79, 421.28, 0, "The Vault of Archavon"),
(@ENTRY, 0, 61, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 6, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -4708.27, -3727.64, 54.5589, 3.72786, "Onyxia's Lair"),
(@ENTRY, 0, 60, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 7, 0, 0, 62, 533, 0, 0, 0, 0, 0, 7, 0, 0, 0, 2979.6616, -3434.095, 299.14117, 3.187, "Naxxramas"),
(@ENTRY, 0, 54, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 8, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 8515.61, 714.153, 558.248, 1.57753, "The Trial of the Crusader"),
(@ENTRY, 0, 66, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 9, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3784.17, 7028.84, 161.258, 5.79993, "The Eye of Eternity"),
(@ENTRY, 0, 68, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 10, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 9222.88, -1113.59, 1216.12, 6.27549, "Ulduar"),
(@ENTRY, 0, 67, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 11, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3472.43, 264.923, -120.146, 3.27923, "The Obsidian Sanctum"),
(@ENTRY, 0, 57, 0, 62, 0, 100, 0, @ACTION_MENU + 8, 12, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 5855.22, 2102.03, 635.991, 3.57899, "Icecrown Citadel"),

(@ENTRY, 0, 72, 0, 62, 0, 100, 0, @ACTION_MENU + 9, 1, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -9449.06, 64.8392, 56.3581, 3.07047, "Goldshire"),
(@ENTRY, 0, 74, 0, 62, 0, 100, 0, @ACTION_MENU + 9, 2, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -5603.76, -482.704, 396.98, 5.23499, "Kharanos"),
(@ENTRY, 0, 79, 0, 62, 0, 100, 0, @ACTION_MENU + 9, 3, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10684.9, 1033.63, 32.5389, 6.07384, "Sentinel Hill"),
(@ENTRY, 0, 100, 0, 62, 0, 100, 0, @ACTION_MENU + 9, 4, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -2095.7, -11841.1, 51.1557, 6.19288, "Bloodmyst Isle"),
(@ENTRY, 0, 101, 0, 62, 0, 100, 0, @ACTION_MENU + 9, 5, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 6463.25, 683.986, 8.92792, 4.33534, "Darkshore"),
(@ENTRY, 0, 80, 0, 62, 0, 100, 0, @ACTION_MENU + 9, 6, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -9447.8, -2270.85, 71.8224, 0.283853, "Lakeshire"),
(@ENTRY, 0, 81, 0, 62, 0, 100, 0, @ACTION_MENU + 9, 7, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10531.7, -1281.91, 38.8647, 1.56959, "Darkshire"),
(@ENTRY, 0, 95, 0, 62, 0, 100, 0, @ACTION_MENU + 9, 8, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 12806.5, -6911.11, 41.1156, 2.22935, "The Isle of Quel'Danas"),

(@ENTRY, 0, 98, 0, 62, 0, 100, 0, @ACTION_MENU + 10, 1, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 228.978, -4741.87, 10.1027, 0.41683, "Razor Hill"),
(@ENTRY, 0, 75, 0, 62, 0, 100, 0, @ACTION_MENU + 10, 2, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 2274.95, 323.918, 34.1137, 4.24367, "Brill"),
(@ENTRY, 0, 76, 0, 62, 0, 100, 0, @ACTION_MENU + 10, 3, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 7595.73, -6819.6, 84.3718, 2.56561, "Tranquillien"),
(@ENTRY, 0, 97, 0, 62, 0, 100, 0, @ACTION_MENU + 10, 4, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 9889.03, 915.869, 1307.43, 1.9336, "Dolanaar"),
(@ENTRY, 0, 99, 0, 62, 0, 100, 0, @ACTION_MENU + 10, 5, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -2473.87, -501.225, -9.42465, 0.6525, "Bloodhoof Village"),
(@ENTRY, 0, 102, 0, 62, 0, 100, 0, @ACTION_MENU + 10, 6, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -575.772, -2652.45, 95.6384, 0.006469, "The Crossroads"),
(@ENTRY, 0, 141, 0, 62, 0, 100, 0, @ACTION_MENU + 10, 7, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 12806.5, -6911.11, 41.1156, 2.22935, "The Isle of Quel'Danas"),

(@ENTRY, 0, 78, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 1, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 505.126, 1504.63, 124.808, 1.77987, "Silverpine Forest"),
(@ENTRY, 0, 96, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 2, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -4192.62, -12576.7, 36.7598, 1.62813, "Azuremyst Isle"),
(@ENTRY, 0, 77, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 3, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -5405.85, -2894.15, 341.972, 5.48238, "Loch Modan"),
(@ENTRY, 0, 73, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 4, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 9024.37, -6682.55, 16.8973, 3.14131, "Eversong Woods"),
(@ENTRY, 0, 83, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 5, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -3517.75, -913.401, 8.86625, 2.60705, "The Wetlands"),
(@ENTRY, 0, 82, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 6, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -385.805, -787.954, 54.6655, 1.03926, "Hillsbrad Foothills"),
(@ENTRY, 0, 84, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 7, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 275.049, -652.044, 130.296, 0.502032, "Alterac Mountains"),
(@ENTRY, 0, 85, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 8, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -1581.45, -2704.06, 35.4168, 0.490373, "Arathi Highlands"),
(@ENTRY, 0, 86, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 9, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -11921.7, -59.544, 39.7262, 3.73574, "Stranglethorn Vale"),
(@ENTRY, 0, 87, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 10, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -6782.56, -3128.14, 240.48, 5.65912, "The Badlands"),
(@ENTRY, 0, 88, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 11, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10368.6, -2731.3, 21.6537, 5.29238, "The Swamp of Sorrows"),
(@ENTRY, 0, 89, 0, 62, 0, 100, 0, @ACTION_MENU + 11, 12, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 112.406, -3929.74, 136.358, 0.981903, "The Hinterlands"),

(@ENTRY, 0, 104, 0, 62, 0, 100, 0, @ACTION_MENU + 12, 1, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1919.77, -2169.68, 94.6729, 6.14177, "Ashenvale"),
(@ENTRY, 0, 103, 0, 62, 0, 100, 0, @ACTION_MENU + 12, 2, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1574.89, 1031.57, 137.442, 3.8013, "Stonetalon Mountains"),
(@ENTRY, 0, 105, 0, 62, 0, 100, 0, @ACTION_MENU + 12, 3, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -5375.53, -2509.2, -40.432, 2.41885, "Thousand Needles"),
(@ENTRY, 0, 106, 0, 62, 0, 100, 0, @ACTION_MENU + 12, 4, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -656.056, 1510.12, 88.3746, 3.29553, "Desolace"),
(@ENTRY, 0, 90, 0, 62, 0, 100, 0, @ACTION_MENU + 12, 5, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -6686.33, -1198.55, 240.027, 0.916887, "Searing Gorge"),
(@ENTRY, 0, 91, 0, 62, 0, 100, 0, @ACTION_MENU + 12, 6, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -11184.7, -3019.31, 7.29238, 3.20542, "The Blasted Lands"),
(@ENTRY, 0, 92, 0, 62, 0, 100, 0, @ACTION_MENU + 12, 7, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -7979.78, -2105.72, 127.919, 5.10148, "The Burning Steppes"),
(@ENTRY, 0, 93, 0, 62, 0, 100, 0, @ACTION_MENU + 12, 8, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1743.69, -1723.86, 59.6648, 5.23722, "Western Plaguelands"),

(@ENTRY, 0, 94, 0, 62, 0, 100, 0, @ACTION_MENU + 13, 1, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 2280.64, -5275.05, 82.0166, 4.7479, "Light's Hope Chapel"),
(@ENTRY, 0, 6, 0, 62, 0, 100, 0, @ACTION_MENU + 13, 2, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -13181.8, 339.356, 42.9805, 1.18013, "Gurubashi Arena"),
(@ENTRY, 0, 107, 0, 62, 0, 100, 0, @ACTION_MENU + 13, 3, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -3350.12, -3064.85, 33.0364, 5.12666, "Dustwallow Marsh"),
(@ENTRY, 0, 108, 0, 62, 0, 100, 0, @ACTION_MENU + 13, 4, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -4808.31, 1040.51, 103.769, 2.90655, "Feralas"),
(@ENTRY, 0, 110, 0, 62, 0, 100, 0, @ACTION_MENU + 13, 5, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3117.12, -4387.97, 91.9059, 5.49897, "Azshara"),
(@ENTRY, 0, 111, 0, 62, 0, 100, 0, @ACTION_MENU + 13, 6, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3898.8, -1283.33, 220.519, 6.24307, "Felwood"),
(@ENTRY, 0, 112, 0, 62, 0, 100, 0, @ACTION_MENU + 13, 7, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -6291.55, -1158.62, -258.138, 0.457099, "Un'Goro Crater"),
(@ENTRY, 0, 113, 0, 62, 0, 100, 0, @ACTION_MENU + 13, 8, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -6815.25, 730.015, 40.9483, 2.39066, "Cenarion Hold"),

(@ENTRY, 0, 115, 0, 62, 0, 100, 0, @ACTION_MENU + 14, 1, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -207.335, 2035.92, 96.464, 1.59676, "Hellfire Peninsula"),
(@ENTRY, 0, 116, 0, 62, 0, 100, 0, @ACTION_MENU + 14, 2, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -220.297, 5378.58, 23.3223, 1.61718, "Cenarion Refuge"),
(@ENTRY, 0, 117, 0, 62, 0, 100, 0, @ACTION_MENU + 14, 3, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -2266.23, 4244.73, 1.47728, 3.68426, "Terokkar Forest"),
(@ENTRY, 0, 118, 0, 62, 0, 100, 0, @ACTION_MENU + 14, 4, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -1610.85, 7733.62, -17.2773, 1.33522, "Halaa"),
(@ENTRY, 0, 119, 0, 62, 0, 100, 0, @ACTION_MENU + 14, 5, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 2029.75, 6232.07, 133.495, 1.30395, "Blade's Edge Mountains"),
(@ENTRY, 0, 120, 0, 62, 0, 100, 0, @ACTION_MENU + 14, 6, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, -3681.01, 2350.76, 76.587, 4.25995, "Shadowmoon Valley"),

(@ENTRY, 0, 122, 0, 62, 0, 100, 0, @ACTION_MENU + 15, 1, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 2954.24, 5379.13, 60.4538, 2.55544, "Borean Tundra"),
(@ENTRY, 0, 123, 0, 62, 0, 100, 0, @ACTION_MENU + 15, 2, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 682.848, -3978.3, 230.161, 1.54207, "Howling Fjord"),
(@ENTRY, 0, 124, 0, 62, 0, 100, 0, @ACTION_MENU + 15, 3, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 2678.17, 891.826, 4.37494, 0.101121, "Dragonblight - Moa'ki Harbor"),
(@ENTRY, 0, 125, 0, 62, 0, 100, 0, @ACTION_MENU + 15, 4, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 4017.35, -3403.85, 290, 5.35431, "Grizzly Hills"),
(@ENTRY, 0, 126, 0, 62, 0, 100, 0, @ACTION_MENU + 15, 5, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 5560.23, -3211.66, 371.709, 5.55055, "Zul'Drak"),
(@ENTRY, 0, 127, 0, 62, 0, 100, 0, @ACTION_MENU + 15, 6, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 5614.67, 5818.86, -69.722, 3.60807, "Sholazar Basin - Nesingwary Base Camp"),
(@ENTRY, 0, 128, 0, 62, 0, 100, 0, @ACTION_MENU + 15, 7, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 5411.17, -966.37, 167.082, 1.57167, "Crystalsong Forest"),
(@ENTRY, 0, 129, 0, 62, 0, 100, 0, @ACTION_MENU + 15, 8, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 6120.46, -1013.89, 408.39, 5.12322, "The Storm Peaks - K3"),
(@ENTRY, 0, 130, 0, 62, 0, 100, 0, @ACTION_MENU + 15, 9, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 8323.28, 2763.5, 655.093, 2.87223, "Icecrown - The Shadow Vault"),

-- --------------------------------------------------------------------------------------
-- Special places as marked by previous commiters
-- --------------------------------------------------------------------------------------
(@ENTRY, 0, 132, 0, 62, 0, 100, 0, @ACTION_MENU +16, 1, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 966.147, 926.499, 104.649, 1.27231, "Sunrock Retreat"),
(@ENTRY, 0, 133, 0, 62, 0, 100, 0, @ACTION_MENU +16, 2, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10733.8, 2509.35, 5.88962, 0.899085, "Fishing Resort"),
(@ENTRY, 0, 134, 0, 62, 0, 100, 0, @ACTION_MENU +16, 3, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -396.86, -2183.42, 158.1, 0.162564, "Koiter's Shrine"),
(@ENTRY, 0, 135, 0, 62, 0, 100, 0, @ACTION_MENU +16, 4, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -6583.62, -3486.57, 318.362, 0.49825, "Dead King's Crypt"),
(@ENTRY, 0, 138, 0, 62, 0, 100, 0, @ACTION_MENU +16, 5, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -745.952, -989.286, 194.098, 2.01729, "Honor's Stand"),
(@ENTRY, 0, 139, 0, 62, 0, 100, 0, @ACTION_MENU +16, 6, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 7443.72, -1690.19, 194.643, 5.49535, "Shatterspear Vale");

-- --------------------------------------------------------------------------------------
-- Add return button for friendly navigation
-- --------------------------------------------------------------------------------------
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`) VALUES
(@GOSSIP_MENU + 1, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@GOSSIP_MENU + 2, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 0, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 1, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 2, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 3, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 4, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 5, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 6, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 7, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 8, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 9, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 10, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 11, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 12, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 13, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 14, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 15, 99, 6, 'Back', 1, 1, @GOSSIP_MENU),
(@ACTION_MENU + 16, 99, 6, 'Back', 1, 1, @GOSSIP_MENU);