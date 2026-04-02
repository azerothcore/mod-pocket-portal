-- --------------------------------------------------------------------------------------
-- Pocket Portal deDE
-- --------------------------------------------------------------------------------------

SET @GOSSIP_MENU := 92000;
SET @ACTION_MENU := 1200000; -- Submenus

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` BETWEEN @GOSSIP_MENU AND (@GOSSIP_MENU + 5);
DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` BETWEEN @ACTION_MENU AND (@ACTION_MENU + 16);

-- Hauptmenü
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@GOSSIP_MENU, 1, 'deDE', 'Hauptstädte', ''),
(@GOSSIP_MENU, 2, 'deDE', 'Klassische Dungeons 1', ''),
(@GOSSIP_MENU, 3, 'deDE', 'Klassische Dungeons 2', ''),
(@GOSSIP_MENU, 4, 'deDE', 'BC Dungeons', ''),
(@GOSSIP_MENU, 5, 'deDE', 'WotLK Dungeons', ''),
(@GOSSIP_MENU, 6, 'deDE', 'Raids 1', ''),
(@GOSSIP_MENU, 7, 'deDE', 'Raids 2', ''),
(@GOSSIP_MENU, 8, 'deDE', 'Verschiedenes', '');

-- Hauptstadt-Untermenü
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@GOSSIP_MENU + 1, 1, 'deDE', 'Hauptstädte der Allianz', ''),
(@GOSSIP_MENU + 1, 2, 'deDE', 'Hauptstädte der Horde', ''),
(@GOSSIP_MENU + 1, 3, 'deDE', 'Neutrale Hauptstädte', '');

-- Verschiedenes-Untermenü
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@GOSSIP_MENU + 2, 1, 'deDE', 'Dörfer der Allianz', ''),
(@GOSSIP_MENU + 2, 2, 'deDE', 'Dörfer der Horde', ''),
(@GOSSIP_MENU + 2, 3, 'deDE', 'Wildnis 1', ''),
(@GOSSIP_MENU + 2, 4, 'deDE', 'Wildnis 2', ''),
(@GOSSIP_MENU + 2, 5, 'deDE', 'Wildnis 3', ''),
(@GOSSIP_MENU + 2, 6, 'deDE', 'Scherbenwelt Wildnis', ''),
(@GOSSIP_MENU + 2, 7, 'deDE', 'Nordend Wildnis', ''),
(@GOSSIP_MENU + 2, 8, 'deDE', 'Gezähmte Wildnis', '');

-- Hauptstädte der Allianz
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 0, 1, 'deDE', 'Bring mich nach: Sturmwind', ''),
(@ACTION_MENU + 0, 2, 'deDE', 'Bring mich nach: Darnassus', ''),
(@ACTION_MENU + 0, 3, 'deDE', 'Bring mich nach: Eisenschmiede', ''),
(@ACTION_MENU + 0, 4, 'deDE', 'Bring mich nach: Die Exodar', '');

-- Hauptstädte der Horde
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 1, 1, 'deDE', 'Orgrimmar', ''),
(@ACTION_MENU + 1, 2, 'deDE', 'Donnerfels', ''),
(@ACTION_MENU + 1, 3, 'deDE', 'Unterstadt', ''),
(@ACTION_MENU + 1, 4, 'deDE', 'Silbermond', '');

-- Neutrale Hauptstädte
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 2, 1, 'deDE', 'Shattrath', ''),
(@ACTION_MENU + 2, 2, 'deDE', 'Dalaran', ''),
(@ACTION_MENU + 2, 3, 'deDE', 'Beutebucht', ''),
(@ACTION_MENU + 2, 4, 'deDE', 'Gadgetzan', ''),
(@ACTION_MENU + 2, 5, 'deDE', 'Ewige Warte', ''),
(@ACTION_MENU + 2, 6, 'deDE', 'Area 52', '');

-- Klassische Dungeons 1
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 3, 1, 'deDE', 'Der Flammenschlund', ''),
(@ACTION_MENU + 3, 2, 'deDE', 'Die Todesminen', ''),
(@ACTION_MENU + 3, 3, 'deDE', 'Die Höhlen des Wehklagens', ''),
(@ACTION_MENU + 3, 4, 'deDE', 'Das Verlies', ''),
(@ACTION_MENU + 3, 5, 'deDE', 'Burg Schattenfang', ''),
(@ACTION_MENU + 3, 6, 'deDE', 'Tiefschwarze Grotte', ''),
(@ACTION_MENU + 3, 7, 'deDE', 'Gnomeregan', ''),
(@ACTION_MENU + 3, 8, 'deDE', 'Das Scharlachrote Kloster', ''),
(@ACTION_MENU + 3, 9, 'deDE', 'Kral der Klingenhauer', ''),
(@ACTION_MENU + 3, 10, 'deDE', 'Hügel der Klingenhauer', '');

-- Klassische Dungeons 2
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 4, 1, 'deDE', 'Uldaman', ''),
(@ACTION_MENU + 4, 2, 'deDE', "Zul'Farrak", ''),
(@ACTION_MENU + 4, 3, 'deDE', 'Maraudon', ''),
(@ACTION_MENU + 4, 4, 'deDE', "Der Tempel von Atal'Hakkar", ''),
(@ACTION_MENU + 4, 5, 'deDE', 'Schwarzfelstiefen', ''),
(@ACTION_MENU + 4, 6, 'deDE', 'Der Schwarzfelsspitze', ''),
(@ACTION_MENU + 4, 7, 'deDE', 'Düsterbruch', ''),
(@ACTION_MENU + 4, 8, 'deDE', 'Scholomance', ''),
(@ACTION_MENU + 4, 9, 'deDE', 'Stratholme', '');

-- BC Dungeons
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 5, 1, 'deDE', 'Höllenfeuerzitadelle', ''),
(@ACTION_MENU + 5, 2, 'deDE', 'Der Echsenkessel', ''),
(@ACTION_MENU + 5, 3, 'deDE', 'Auchindoun', ''),
(@ACTION_MENU + 5, 4, 'deDE', 'Höhlen der Zeit', ''),
(@ACTION_MENU + 5, 5, 'deDE', 'Die Botanika', ''),
(@ACTION_MENU + 5, 6, 'deDE', 'Der Mechanar', ''),
(@ACTION_MENU + 5, 7, 'deDE', 'Terrasse der Magister', '');

-- WotLK Dungeons
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 6, 1, 'deDE', 'Burg Utgarde', ''),
(@ACTION_MENU + 6, 2, 'deDE', 'Der Nexus', ''),
(@ACTION_MENU + 6, 3, 'deDE', 'Grube von Narjun', ''),
(@ACTION_MENU + 6, 4, 'deDE', "Feste Drak'Tharon", ''),
(@ACTION_MENU + 6, 5, 'deDE', 'Das Violette Hold', ''),
(@ACTION_MENU + 6, 6, 'deDE', 'Gundrak', ''),
(@ACTION_MENU + 6, 7, 'deDE', 'Die Hallen des Steins', ''),
(@ACTION_MENU + 6, 8, 'deDE', 'Die Hallen der Blitze', ''),
(@ACTION_MENU + 6, 9, 'deDE', 'Das Ausmerzen von Stratholme', ''),
(@ACTION_MENU + 6, 10, 'deDE', 'Prüfung des Champions', ''),
(@ACTION_MENU + 6, 11, 'deDE', 'Turm Utgarde', ''),
(@ACTION_MENU + 6, 12, 'deDE', 'Die Eiskammern', '');

-- Raids 1
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 7, 1, 'deDE', 'Pechschwingenhort', ''),
(@ACTION_MENU + 7, 2, 'deDE', 'Geschmolzener Kern', ''),
(@ACTION_MENU + 7, 3, 'deDE', "Zul'Gurub", ''),
(@ACTION_MENU + 7, 4, 'deDE', "Ruinen von Ahn'Qiraj", ''),
(@ACTION_MENU + 7, 5, 'deDE', "Tempel von Ahn'Qiraj", ''),
(@ACTION_MENU + 7, 6, 'deDE', 'Sonnenbrunnenplateau', ''),
(@ACTION_MENU + 7, 7, 'deDE', 'Die Festung der Stürme', ''),
(@ACTION_MENU + 7, 8, 'deDE', 'Der Schwarze Tempel', ''),
(@ACTION_MENU + 7, 9, 'deDE', 'Höhle des Schlangenschreins', ''),
(@ACTION_MENU + 7, 10, 'deDE', 'Hyjalgipfel', '');

-- Raids 2
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 8, 1, 'deDE', "Magtheridons Kammer", ''),
(@ACTION_MENU + 8, 2, 'deDE', "Gruuls Unterschlupf", ''),
(@ACTION_MENU + 8, 3, 'deDE', "Zul'Aman", ''),
(@ACTION_MENU + 8, 4, 'deDE', "Karazhan", ''),
(@ACTION_MENU + 8, 5, 'deDE', "Archavons Kammer", ''),
(@ACTION_MENU + 8, 6, 'deDE', "Onyxias Hort", ''),
(@ACTION_MENU + 8, 7, 'deDE', "Naxxramas", ''),
(@ACTION_MENU + 8, 8, 'deDE', "Prüfung des Kreuzfahrers", ''),
(@ACTION_MENU + 8, 9, 'deDE', "Das Auge der Ewigkeit", ''),
(@ACTION_MENU + 8, 10, 'deDE', "Ulduar", ''),
(@ACTION_MENU + 8, 11, 'deDE', "Das Obsidiansanktum", ''),
(@ACTION_MENU + 8, 12, 'deDE', "Die Eiskronenzitadelle", '');

-- Dörfer der Allianz
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 9, 1, 'deDE', 'Goldhain', ''),
(@ACTION_MENU + 9, 2, 'deDE', 'Kharanos', ''),
(@ACTION_MENU + 9, 3, 'deDE', 'Späherkuppe', ''),
(@ACTION_MENU + 9, 4, 'deDE', 'Azurmythosinsel', ''),
(@ACTION_MENU + 9, 5, 'deDE', 'Dunkelküste', ''),
(@ACTION_MENU + 9, 6, 'deDE', 'Seenhain', ''),
(@ACTION_MENU + 9, 7, 'deDE', 'Dunkelhain', ''),
(@ACTION_MENU + 9, 8, 'deDE', "Insel von Quel'Danas", '');

-- Dörfer der Horde
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 10, 1, 'deDE', 'Razor Hill', ''),
(@ACTION_MENU + 10, 2, 'deDE', 'Brill', ''),
(@ACTION_MENU + 10, 3, 'deDE', 'Tristessa', ''),
(@ACTION_MENU + 10, 4, 'deDE', 'Dolanaar', ''),
(@ACTION_MENU + 10, 5, 'deDE', 'Bluthufdorf', ''),
(@ACTION_MENU + 10, 6, 'deDE', 'Das Kreuz', ''),
(@ACTION_MENU + 10, 7, 'deDE', "Insel von Quel'Danas", '');

-- Wildnis 1
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 11, 1, 'deDE', 'Silberwald', ''),
(@ACTION_MENU + 11, 2, 'deDE', 'Azurmythosinsel', ''),
(@ACTION_MENU + 11, 3, 'deDE', 'Loch Modan', ''),
(@ACTION_MENU + 11, 4, 'deDE', 'Immersangwald', ''),
(@ACTION_MENU + 11, 5, 'deDE', 'Sumpfland', ''),
(@ACTION_MENU + 11, 6, 'deDE', 'Vorgebirge von Hillsbrad', ''),
(@ACTION_MENU + 11, 7, 'deDE', 'Alteracgebirge', ''),
(@ACTION_MENU + 11, 8, 'deDE', 'Arathihochland', ''),
(@ACTION_MENU + 11, 9, 'deDE', 'Schlingendorntal', ''),
(@ACTION_MENU + 11, 10, 'deDE', 'Ödland', ''),
(@ACTION_MENU + 11, 11, 'deDE', 'Sümpfe des Elends', ''),
(@ACTION_MENU + 11, 12, 'deDE', 'Hinterland', '');

-- Wildnis 2
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 12, 1, 'deDE', 'Eschental', ''),
(@ACTION_MENU + 12, 2, 'deDE', 'Steinkrallengebirge', ''),
(@ACTION_MENU + 12, 3, 'deDE', 'Tausend Nadeln', ''),
(@ACTION_MENU + 12, 4, 'deDE', 'Desolace', ''),
(@ACTION_MENU + 12, 5, 'deDE', 'Sengende Schlucht', ''),
(@ACTION_MENU + 12, 6, 'deDE', 'Verwüstete Lande', ''),
(@ACTION_MENU + 12, 7, 'deDE', 'Brennende Steppe', ''),
(@ACTION_MENU + 12, 8, 'deDE', 'Westliche Pestländer', '');

-- Wildnis 3
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 13, 1, 'deDE', 'Kapelle des hoffnungsvollen Lichts', ''),
(@ACTION_MENU + 13, 2, 'deDE', 'Gurubashi Arena', ''),
(@ACTION_MENU + 13, 3, 'deDE', 'Düstermarschen', ''),
(@ACTION_MENU + 13, 4, 'deDE', 'Feralas', ''),
(@ACTION_MENU + 13, 5, 'deDE', 'Azshara', ''),
(@ACTION_MENU + 13, 6, 'deDE', 'Teufelswald', ''),
(@ACTION_MENU + 13, 7, 'deDE', 'Krater von Un\'Goro', ''),
(@ACTION_MENU + 13, 8, 'deDE', 'Cenarische Feste', '');

-- Scherbenwelt Wildnis
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 14, 1, 'deDE', 'Höllenfeuerhalbinsel', ''),
(@ACTION_MENU + 14, 2, 'deDE', 'Cenarionzuflucht', ''),
(@ACTION_MENU + 14, 3, 'deDE', 'Wälder von Terokkar', ''),
(@ACTION_MENU + 14, 4, 'deDE', 'Halaa', ''),
(@ACTION_MENU + 14, 5, 'deDE', 'Schergrat', ''),
(@ACTION_MENU + 14, 6, 'deDE', 'Schattenmondtal', '');

-- Nordend Wildnis
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 15, 1, 'deDE', 'Boreanische Tundra', ''),
(@ACTION_MENU + 15, 2, 'deDE', 'Der heulende Fjord', ''),
(@ACTION_MENU + 15, 3, 'deDE', 'Drachenöde - Moa\'ki-Hafen', ''),
(@ACTION_MENU + 15, 4, 'deDE', 'Grizzlyhügel', ''),
(@ACTION_MENU + 15, 5, 'deDE', 'Zul\'Drak', ''),
(@ACTION_MENU + 15, 6, 'deDE', 'Sholazarbecken - Nesingwary-Lager', ''),
(@ACTION_MENU + 15, 7, 'deDE', 'Kristallsangwald', ''),
(@ACTION_MENU + 15, 8, 'deDE', 'Sturmgipfel - K3', ''),
(@ACTION_MENU + 15, 9, 'deDE', 'Eiskrone - Schattengewölbe', '');

-- Gezähmte Wildnis
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 16, 1, 'deDE', 'Sonnenfelszuflucht', ''),
(@ACTION_MENU + 16, 2, 'deDE', 'Angelherberge', ''),
(@ACTION_MENU + 16, 3, 'deDE', 'Koiter\'s Schrein', ''),
(@ACTION_MENU + 16, 4, 'deDE', 'Gruft des toten Königs', ''),
(@ACTION_MENU + 16, 5, 'deDE', 'Ehrenfeste', ''),
(@ACTION_MENU + 16, 6, 'deDE', 'Bruchkralental', '');

-- Zurück-Button
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES
(@GOSSIP_MENU + 1, 99, 'deDE', 'Zurück', ''),
(@GOSSIP_MENU + 2, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 0, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 1, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 2, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 3, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 4, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 5, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 6, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 7, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 8, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 9, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 10, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 11, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 12, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 13, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 14, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 15, 99, 'deDE', 'Zurück', ''),
(@ACTION_MENU + 16, 99, 'deDE', 'Zurück', '');