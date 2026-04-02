-- --------------------------------------------------------------------------------------
-- Pocket Portal
-- --------------------------------------------------------------------------------------

SET @GOSSIP_MENU := 92000;
SET @ACTION_MENU := 1200000; -- Submenus

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` BETWEEN @GOSSIP_MENU AND (@GOSSIP_MENU + 5);
DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` BETWEEN @ACTION_MENU AND (@ACTION_MENU + 16);

INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@GOSSIP_MENU, 1, 'frFR', 'Capitales', ''),
(@GOSSIP_MENU, 2, 'frFR', 'Donjons Classiques 1', ''),
(@GOSSIP_MENU, 3, 'frFR', 'Donjons Classiques 2', ''),
(@GOSSIP_MENU, 4, 'frFR', 'Donjons BC', ''),
(@GOSSIP_MENU, 5, 'frFR', 'Donjons WotLK', ''),
(@GOSSIP_MENU, 6, 'frFR', 'Raids 1', ''),
(@GOSSIP_MENU, 7, 'frFR', 'Raids 2', ''),
(@GOSSIP_MENU, 8, 'frFR', 'Divers', '');

-- Cities Submenu
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@GOSSIP_MENU + 1, 1, 'frFR', 'Capitales de l’Alliance', ''),
(@GOSSIP_MENU + 1, 2, 'frFR', 'Capitales de la Horde', ''),
(@GOSSIP_MENU + 1, 3, 'frFR', 'Capitales neutres', '');

-- Sous-menu Divers
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@GOSSIP_MENU + 2, 1, 'frFR', 'Villes de l’Alliance', ''),
(@GOSSIP_MENU + 2, 2, 'frFR', 'Villes de la Horde', ''),
(@GOSSIP_MENU + 2, 3, 'frFR', 'Étendues sauvages 1', ''),
(@GOSSIP_MENU + 2, 4, 'frFR', 'Étendues sauvages 2', ''),
(@GOSSIP_MENU + 2, 5, 'frFR', 'Étendues sauvages 2', ''),
(@GOSSIP_MENU + 2, 6, 'frFR', 'L’Outreterre Sauvage', ''),
(@GOSSIP_MENU + 2, 7, 'frFR', 'Norfendre Sauvage', ''),
(@GOSSIP_MENU + 2, 8, 'frFR', 'Apprivoisées Sauvage', '');

-- Capitales de l’Alliance
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 0, 1, 'frFR', 'Emmène-moi à : Hurlevent', ''),
(@ACTION_MENU + 0, 2, 'frFR', 'Emmène-moi à : Darnassus', ''),
(@ACTION_MENU + 0, 3, 'frFR', 'Emmène-moi à : Forgefer', ''),
(@ACTION_MENU + 0, 4, 'frFR', 'Emmène-moi à : L’Exodar', '');

-- Capitales de la Horde
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 1, 1, 'frFR', 'Orgrimmar', ''),
(@ACTION_MENU + 1, 2, 'frFR', 'Les Pitons-du-Tonnerre', ''),
(@ACTION_MENU + 1, 3, 'frFR', 'Fossoyeuse', ''),
(@ACTION_MENU + 1, 4, 'frFR', 'Lune-d’Argent', '');

-- Zones neutres
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 2, 1, 'frFR', 'Shattrath', ''),
(@ACTION_MENU + 2, 2, 'frFR', 'Dalaran', ''),
(@ACTION_MENU + 2, 3, 'frFR', 'Baie-du-Butin', ''),
(@ACTION_MENU + 2, 4, 'frFR', 'Gadgetzan', ''),
(@ACTION_MENU + 2, 5, 'frFR', 'Long-guet', ''),
(@ACTION_MENU + 2, 6, 'frFR', 'Zone 52', '');

-- Donjons classiques 1
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 3, 1, 'frFR', 'Gouffre de Ragefeu', ''),
(@ACTION_MENU + 3, 2, 'frFR', 'Les Mortemines', ''),
(@ACTION_MENU + 3, 3, 'frFR', 'Cavernes des Lamentations', ''),
(@ACTION_MENU + 3, 4, 'frFR', 'La Prison', ''),
(@ACTION_MENU + 3, 5, 'frFR', 'Donjon d’Ombrecroc', ''),
(@ACTION_MENU + 3, 6, 'frFR', 'Profondeurs de Brassenoire', ''),
(@ACTION_MENU + 3, 7, 'frFR', 'Gnomeregan', ''),
(@ACTION_MENU + 3, 8, 'frFR', 'Monastère écarlate', ''),
(@ACTION_MENU + 3, 9, 'frFR', 'Kraal de Tranchebauge', ''),
(@ACTION_MENU + 3, 10, 'frFR', 'Souilles de Tranchebauge', '');

-- Donjons classiques 2
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 4, 1, 'frFR', 'Uldaman', ''),
(@ACTION_MENU + 4, 2, 'frFR', "Zul'Farrak", ''),
(@ACTION_MENU + 4, 3, 'frFR', 'Maraudon', ''),
(@ACTION_MENU + 4, 4, 'frFR', "Temple d'Atal'Hakkar", ''),
(@ACTION_MENU + 4, 5, 'frFR', 'Profondeurs de Blackrock', ''),
(@ACTION_MENU + 4, 6, 'frFR', 'Pic Blackrock', ''),
(@ACTION_MENU + 4, 7, 'frFR', 'Hache-tripes', ''),
(@ACTION_MENU + 4, 8, 'frFR', 'Scholomance', ''),
(@ACTION_MENU + 4, 9, 'frFR', 'Stratholme', '');

-- Donjons BC
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 5, 1, 'frFR', 'Citadelle des Flammes infernales', ''),
(@ACTION_MENU + 5, 2, 'frFR', 'Réservoir de Glissecroc', ''),
(@ACTION_MENU + 5, 3, 'frFR', 'Auchindoun', ''),
(@ACTION_MENU + 5, 4, 'frFR', 'Grottes du temps', ''),
(@ACTION_MENU + 5, 5, 'frFR', 'La Botanica', ''),
(@ACTION_MENU + 5, 6, 'frFR', 'Le Méchanar', ''),
(@ACTION_MENU + 5, 7, 'frFR', 'Terrasse des Magistères', '');

-- Donjons WotLK
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 6, 1, 'frFR', 'Donjon d’Utgarde', ''),
(@ACTION_MENU + 6, 2, 'frFR', 'Le Nexus', ''),
(@ACTION_MENU + 6, 3, 'frFR', 'Fosse de Narjun', ''),
(@ACTION_MENU + 6, 4, 'frFR', "Donjon de Drak'Tharon", ''),
(@ACTION_MENU + 6, 5, 'frFR', 'L’Occulus', ''),
(@ACTION_MENU + 6, 6, 'frFR', 'Gundrak', ''),
(@ACTION_MENU + 6, 7, 'frFR', 'Les salles de Pierre', ''),
(@ACTION_MENU + 6, 8, 'frFR', 'Les salles de Foudre', ''),
(@ACTION_MENU + 6, 9, 'frFR', 'L’Épuration de Stratholme', ''),
(@ACTION_MENU + 6, 10, 'frFR', 'L’épreuve du champion', ''),
(@ACTION_MENU + 6, 11, 'frFR', 'Cime d’Utgarde', ''),
(@ACTION_MENU + 6, 12, 'frFR', 'Les salles gelées', '');

-- Raids 1
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 7, 1, 'frFR', 'Repaire de l’Aile noire', ''),
(@ACTION_MENU + 7, 2, 'frFR', 'Cœur du Magma', ''),
(@ACTION_MENU + 7, 3, 'frFR', "Zul'Gurub", ''),
(@ACTION_MENU + 7, 4, 'frFR', "Ruines d'Ahn'Qiraj", ''),
(@ACTION_MENU + 7, 5, 'frFR', "Ahn'Qiraj", ''),
(@ACTION_MENU + 7, 6, 'frFR', 'Plateau du Puits de soleil', ''),
(@ACTION_MENU + 7, 7, 'frFR', 'Donjon de la Tempête', ''),
(@ACTION_MENU + 7, 8, 'frFR', 'Le Temple noir', ''),
(@ACTION_MENU + 7, 9, 'frFR', 'Caverne du sanctuaire du Serpent', ''),
(@ACTION_MENU + 7, 10, 'frFR', 'Sommet d’Hyjal', '');

-- Raids 2
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 8, 1, 'frFR', "Repaire de Magtheridon", ''),
(@ACTION_MENU + 8, 2, 'frFR', "Repaire de Gruul", ''),
(@ACTION_MENU + 8, 3, 'frFR', "Zul'Aman", ''),
(@ACTION_MENU + 8, 4, 'frFR', "Karazhan", ''),
(@ACTION_MENU + 8, 5, 'frFR', "Caveau d’Archavon", ''),
(@ACTION_MENU + 8, 6, 'frFR', "Repaire d’Onyxia", ''),
(@ACTION_MENU + 8, 7, 'frFR', "Naxxramas", ''),
(@ACTION_MENU + 8, 8, 'frFR', "L’épreuve du croisé", ''),
(@ACTION_MENU + 8, 9, 'frFR', "L’Œil de l’éternité", ''),
(@ACTION_MENU + 8, 10, 'frFR', "Ulduar", ''),
(@ACTION_MENU + 8, 11, 'frFR', "Le sanctum Obsidien", ''),
(@ACTION_MENU + 8, 12, 'frFR', "Citadelle de la Couronne de glace", '');

-- Bourgs de l’Alliance
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 9, 1, 'frFR', 'Comté-de-l’Or', ''),
(@ACTION_MENU + 9, 2, 'frFR', 'Kharanos', ''),
(@ACTION_MENU + 9, 3, 'frFR', 'Colline-aux-Sentinelles', ''),
(@ACTION_MENU + 9, 4, 'frFR', 'Île de Brume-Azur', ''),
(@ACTION_MENU + 9, 5, 'frFR', 'Sombrivage', ''),
(@ACTION_MENU + 9, 6, 'frFR', 'Austrivage', ''),
(@ACTION_MENU + 9, 7, 'frFR', 'Sombre-comté', ''),
(@ACTION_MENU + 9, 8, 'frFR', "Île de Quel'Danas", '');

-- Bourgs de la Horde
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 10, 1, 'frFR', 'La Tranchée', ''),
(@ACTION_MENU + 10, 2, 'frFR', 'Brill', ''),
(@ACTION_MENU + 10, 3, 'frFR', 'Tranquillien', ''),
(@ACTION_MENU + 10, 4, 'frFR', 'Dolanaar', ''),
(@ACTION_MENU + 10, 5, 'frFR', 'Sabot-de-Sang', ''),
(@ACTION_MENU + 10, 6, 'frFR', 'La Croisée', ''),
(@ACTION_MENU + 10, 7, 'frFR', "Île de Quel'Danas", '');

-- Étendues sauvages 1
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 11, 1, 'frFR', 'Forêt des Pins argentés', ''),
(@ACTION_MENU + 11, 2, 'frFR', 'Île de Brume-Azur', ''),
(@ACTION_MENU + 11, 3, 'frFR', 'Loch Modan', ''),
(@ACTION_MENU + 11, 4, 'frFR', 'Bois des Chants éternels', ''),
(@ACTION_MENU + 11, 5, 'frFR', 'Les Paluns', ''),
(@ACTION_MENU + 11, 6, 'frFR', 'Contreforts de Hautebrande', ''),
(@ACTION_MENU + 11, 7, 'frFR', 'Montagnes d’Alterac', ''),
(@ACTION_MENU + 11, 8, 'frFR', 'Hautes-terres Arathies', ''),
(@ACTION_MENU + 11, 9, 'frFR', 'Vallée de Strangleronce', ''),
(@ACTION_MENU + 11, 10, 'frFR', 'Terres Ingrates', ''),
(@ACTION_MENU + 11, 11, 'frFR', 'Marais des Chagrins', ''),
(@ACTION_MENU + 11, 12, 'frFR', 'Les Hinterlands', '');

-- Étendues sauvages 2
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 12, 1, 'frFR', 'Orneval', ''),
(@ACTION_MENU + 12, 2, 'frFR', 'Les Serres-Rocheuses', ''),
(@ACTION_MENU + 12, 3, 'frFR', 'Mille Pointes', ''),
(@ACTION_MENU + 12, 4, 'frFR', 'Désolace', ''),
(@ACTION_MENU + 12, 5, 'frFR', 'Gorge des Vents brûlants', ''),
(@ACTION_MENU + 12, 6, 'frFR', 'Terres Foudroyées', ''),
(@ACTION_MENU + 12, 7, 'frFR', 'Steppes Ardentes', ''),
(@ACTION_MENU + 12, 8, 'frFR', 'Maleterres de l’ouest', '');

-- Étendues sauvages 3
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 13, 1, 'frFR', "Chapelle de l’Espoir de Lumière", ''),
(@ACTION_MENU + 13, 2, 'frFR', 'Arène de Gurubashi', ''),
(@ACTION_MENU + 13, 3, 'frFR', 'Marécage d’Âprefange', ''),
(@ACTION_MENU + 13, 4, 'frFR', 'Féralas', ''),
(@ACTION_MENU + 13, 5, 'frFR', 'Azshara', ''),
(@ACTION_MENU + 13, 6, 'frFR', 'Gangrebois', ''),
(@ACTION_MENU + 13, 7, 'frFR', "Cratère d’Un’Goro", ''),
(@ACTION_MENU + 13, 8, 'frFR', 'Fort cénarien', '');

-- Étendues sauvages de l’Outreterre
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 14, 1, 'frFR', 'Péninsule des Flammes infernales', ''),
(@ACTION_MENU + 14, 2, 'frFR', 'Refuge cénarien', ''),
(@ACTION_MENU + 14, 3, 'frFR', 'Forêt de Terokkar', ''),
(@ACTION_MENU + 14, 4, 'frFR', 'Halaa', ''),
(@ACTION_MENU + 14, 5, 'frFR', "Les Tranchantes", ''),
(@ACTION_MENU + 14, 6, 'frFR', 'Vallée d’Ombrelune', '');

-- Étendues sauvages du Norfendre
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 15, 1, 'frFR', 'Toundra Boréenne', ''),
(@ACTION_MENU + 15, 2, 'frFR', 'Fjord Hurlant', ''),
(@ACTION_MENU + 15, 3, 'frFR', "Désolation des dragons - Port Moa’ki", ''),
(@ACTION_MENU + 15, 4, 'frFR', 'Les Grisonnes', ''),
(@ACTION_MENU + 15, 5, 'frFR', "Zul’Drak", ''),
(@ACTION_MENU + 15, 6, 'frFR', 'Bassin de Sholazar - Campement Nesingwary', ''),
(@ACTION_MENU + 15, 7, 'frFR', 'Forêt du Chant de cristal', ''),
(@ACTION_MENU + 15, 8, 'frFR', 'Les Pics Foudroyés - K3', ''),
(@ACTION_MENU + 15, 9, 'frFR', 'La Couronne de glace - Le Caveau des Ombres', '');

-- Étendues apprivoisées
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 16, 1, 'frFR', 'Retraite de Roche-Soleil', ''),
(@ACTION_MENU + 16, 2, 'frFR', 'Auberge de pêche', ''),
(@ACTION_MENU + 16, 3, 'frFR', "Sanctuaire de Koiter", ''),
(@ACTION_MENU + 16, 4, 'frFR', "Crypte du roi mort", ''),
(@ACTION_MENU + 16, 5, 'frFR', "Halte de l’Honneur", ''),
(@ACTION_MENU + 16, 6, 'frFR', 'Val des Casse-bras', '');

-- Back Button

INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES
-- Sous-menus du menu principal
(@GOSSIP_MENU + 1, 99, 'frFR', 'Retour', ''),
(@GOSSIP_MENU + 2, 99, 'frFR', 'Retour', ''),

-- Tous les ACTION_MENUS (sous-menus de destinations)
(@ACTION_MENU + 0, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 1, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 2, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 3, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 4, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 5, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 6, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 7, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 8, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 9, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 10, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 11, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 12, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 13, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 14, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 15, 99, 'frFR', 'Retour', ''),
(@ACTION_MENU + 16, 99, 'frFR', 'Retour', '');
