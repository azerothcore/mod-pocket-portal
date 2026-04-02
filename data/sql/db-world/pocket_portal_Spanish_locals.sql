-- --------------------------------------------------------------------------------------
-- Pocket Portal esES
-- --------------------------------------------------------------------------------------

SET @GOSSIP_MENU := 92000;
SET @ACTION_MENU := 1200000; -- Submenus

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` BETWEEN @GOSSIP_MENU AND (@GOSSIP_MENU + 5);
DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` BETWEEN @ACTION_MENU AND (@ACTION_MENU + 16);

-- Menú principal
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@GOSSIP_MENU, 1, 'esES', 'Capitales', ''),
(@GOSSIP_MENU, 2, 'esES', 'Mazmorras Clásicas 1', ''),
(@GOSSIP_MENU, 3, 'esES', 'Mazmorras Clásicas 2', ''),
(@GOSSIP_MENU, 4, 'esES', 'Mazmorras BC', ''),
(@GOSSIP_MENU, 5, 'esES', 'Mazmorras WotLK', ''),
(@GOSSIP_MENU, 6, 'esES', 'Bandas 1', ''),
(@GOSSIP_MENU, 7, 'esES', 'Bandas 2', ''),
(@GOSSIP_MENU, 8, 'esES', 'Varios', '');

-- Submenú de capitales
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@GOSSIP_MENU + 1, 1, 'esES', 'Capitales de la Alianza', ''),
(@GOSSIP_MENU + 1, 2, 'esES', 'Capitales de la Horda', ''),
(@GOSSIP_MENU + 1, 3, 'esES', 'Capitales neutrales', '');

-- Submenú Varios
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@GOSSIP_MENU + 2, 1, 'esES', 'Pueblos de la Alianza', ''),
(@GOSSIP_MENU + 2, 2, 'esES', 'Pueblos de la Horda', ''),
(@GOSSIP_MENU + 2, 3, 'esES', 'Tierras salvajes 1', ''),
(@GOSSIP_MENU + 2, 4, 'esES', 'Tierras salvajes 2', ''),
(@GOSSIP_MENU + 2, 5, 'esES', 'Tierras salvajes 3', ''),
(@GOSSIP_MENU + 2, 6, 'esES', 'Terrallende salvaje', ''),
(@GOSSIP_MENU + 2, 7, 'esES', 'Rasganorte salvaje', ''),
(@GOSSIP_MENU + 2, 8, 'esES', 'Tierras domesticadas', '');

-- Capitales de la Alianza
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 0, 1, 'esES', 'Llévame a: Ventormenta', ''),
(@ACTION_MENU + 0, 2, 'esES', 'Llévame a: Darnassus', ''),
(@ACTION_MENU + 0, 3, 'esES', 'Llévame a: Forjaz', ''),
(@ACTION_MENU + 0, 4, 'esES', 'Llévame a: El Exodar', '');

-- Capitales de la Horda
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 1, 1, 'esES', 'Orgrimmar', ''),
(@ACTION_MENU + 1, 2, 'esES', 'Cima del Trueno', ''),
(@ACTION_MENU + 1, 3, 'esES', 'Entrañas', ''),
(@ACTION_MENU + 1, 4, 'esES', 'Lunargenta', '');

-- Capitales neutrales
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 2, 1, 'esES', 'Shattrath', ''),
(@ACTION_MENU + 2, 2, 'esES', 'Dalaran', ''),
(@ACTION_MENU + 2, 3, 'esES', 'Bahía del Botín', ''),
(@ACTION_MENU + 2, 4, 'esES', 'Gadgetzan', ''),
(@ACTION_MENU + 2, 5, 'esES', 'Puesto de Avanzada', ''),
(@ACTION_MENU + 2, 6, 'esES', 'Área 52', '');

-- Mazmorras Clásicas 1
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 3, 1, 'esES', 'Sima Ígnea', ''),
(@ACTION_MENU + 3, 2, 'esES', 'Las Minas de la Muerte', ''),
(@ACTION_MENU + 3, 3, 'esES', 'Cuevas de los Lamentos', ''),
(@ACTION_MENU + 3, 4, 'esES', 'Las Mazmorras', ''),
(@ACTION_MENU + 3, 5, 'esES', 'Castillo de Colmillo Oscuro', ''),
(@ACTION_MENU + 3, 6, 'esES', 'Profundidades de Brazanegra', ''),
(@ACTION_MENU + 3, 7, 'esES', 'Gnomeregan', ''),
(@ACTION_MENU + 3, 8, 'esES', 'Monasterio Escarlata', ''),
(@ACTION_MENU + 3, 9, 'esES', 'Zahúrda Rajacieno', ''),
(@ACTION_MENU + 3, 10, 'esES', 'Cañada de los Fangorroca', '');

-- Mazmorras Clásicas 2
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 4, 1, 'esES', 'Uldaman', ''),
(@ACTION_MENU + 4, 2, 'esES', "Zul'Farrak", ''),
(@ACTION_MENU + 4, 3, 'esES', 'Maraudon', ''),
(@ACTION_MENU + 4, 4, 'esES', "Templo de Atal'Hakkar", ''),
(@ACTION_MENU + 4, 5, 'esES', 'Profundidades de Roca Negra', ''),
(@ACTION_MENU + 4, 6, 'esES', 'Cumbre de Roca Negra', ''),
(@ACTION_MENU + 4, 7, 'esES', 'La Masacre', ''),
(@ACTION_MENU + 4, 8, 'esES', 'Scholomance', ''),
(@ACTION_MENU + 4, 9, 'esES', 'Stratholme', '');

-- Mazmorras BC
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 5, 1, 'esES', 'Ciudadela del Fuego Infernal', ''),
(@ACTION_MENU + 5, 2, 'esES', 'Reserva Colmillo Torcido', ''),
(@ACTION_MENU + 5, 3, 'esES', 'Auchindoun', ''),
(@ACTION_MENU + 5, 4, 'esES', 'Cavernas del Tiempo', ''),
(@ACTION_MENU + 5, 5, 'esES', 'El Invernáculo', ''),
(@ACTION_MENU + 5, 6, 'esES', 'El Mechanar', ''),
(@ACTION_MENU + 5, 7, 'esES', 'Terraza de Magister', '');

-- Mazmorras WotLK
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 6, 1, 'esES', 'Fortaleza de Utgarde', ''),
(@ACTION_MENU + 6, 2, 'esES', 'El Nexo', ''),
(@ACTION_MENU + 6, 3, 'esES', 'Foso de Narjun', ''),
(@ACTION_MENU + 6, 4, 'esES', "Fortaleza de Drak'Tharon", ''),
(@ACTION_MENU + 6, 5, 'esES', 'El Bastión Violeta', ''),
(@ACTION_MENU + 6, 6, 'esES', 'Gundrak', ''),
(@ACTION_MENU + 6, 7, 'esES', 'Cámaras de Piedra', ''),
(@ACTION_MENU + 6, 8, 'esES', 'Cámaras de Relámpagos', ''),
(@ACTION_MENU + 6, 9, 'esES', 'La Matanza de Stratholme', ''),
(@ACTION_MENU + 6, 10, 'esES', 'Prueba del Campeón', ''),
(@ACTION_MENU + 6, 11, 'esES', 'Pináculo de Utgarde', ''),
(@ACTION_MENU + 6, 12, 'esES', 'Las Cámaras Heladas', '');

-- Bandas 1
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 7, 1, 'esES', 'Guarida de Alanegra', ''),
(@ACTION_MENU + 7, 2, 'esES', 'Núcleo de Magma', ''),
(@ACTION_MENU + 7, 3, 'esES', "Zul'Gurub", ''),
(@ACTION_MENU + 7, 4, 'esES', "Ruinas de Ahn'Qiraj", ''),
(@ACTION_MENU + 7, 5, 'esES', "Ahn'Qiraj", ''),
(@ACTION_MENU + 7, 6, 'esES', 'Meseta de La Fuente del Sol', ''),
(@ACTION_MENU + 7, 7, 'esES', 'El Castillo de la Tempestad', ''),
(@ACTION_MENU + 7, 8, 'esES', 'El Templo Oscuro', ''),
(@ACTION_MENU + 7, 9, 'esES', 'Caverna Santuario Serpiente', ''),
(@ACTION_MENU + 7, 10, 'esES', 'La Cima Hyjal', '');

-- Bandas 2
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 8, 1, 'esES', "Guarida de Magtheridon", ''),
(@ACTION_MENU + 8, 2, 'esES', "Guarida de Gruul", ''),
(@ACTION_MENU + 8, 3, 'esES', "Zul'Aman", ''),
(@ACTION_MENU + 8, 4, 'esES', "Karazhan", ''),
(@ACTION_MENU + 8, 5, 'esES', "La Cámara de Archavon", ''),
(@ACTION_MENU + 8, 6, 'esES', "Guarida de Onyxia", ''),
(@ACTION_MENU + 8, 7, 'esES', "Naxxramas", ''),
(@ACTION_MENU + 8, 8, 'esES', "Prueba del Cruzado", ''),
(@ACTION_MENU + 8, 9, 'esES', "El Ojo de la Eternidad", ''),
(@ACTION_MENU + 8, 10, 'esES', "Ulduar", ''),
(@ACTION_MENU + 8, 11, 'esES', "El Sagrario Obsidiana", ''),
(@ACTION_MENU + 8, 12, 'esES', "Ciudadela de la Corona de Hielo", '');

-- Pueblos de la Alianza
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 9, 1, 'esES', 'Villadorada', ''),
(@ACTION_MENU + 9, 2, 'esES', 'Kharanos', ''),
(@ACTION_MENU + 9, 3, 'esES', 'Colina del Centinela', ''),
(@ACTION_MENU + 9, 4, 'esES', 'Isla Bruma Azur', ''),
(@ACTION_MENU + 9, 5, 'esES', 'Costa Oscura', ''),
(@ACTION_MENU + 9, 6, 'esES', 'Villa del Lago', ''),
(@ACTION_MENU + 9, 7, 'esES', 'Villa Oscura', ''),
(@ACTION_MENU + 9, 8, 'esES', "Isla de Quel'Danas", '');

-- Pueblos de la Horda
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 10, 1, 'esES', 'La Vega de Tuercespina', ''),
(@ACTION_MENU + 10, 2, 'esES', 'Rémol', ''),
(@ACTION_MENU + 10, 3, 'esES', 'Tranquillien', ''),
(@ACTION_MENU + 10, 4, 'esES', 'Dolanaar', ''),
(@ACTION_MENU + 10, 5, 'esES', 'Poblado Pezuña de Sangre', ''),
(@ACTION_MENU + 10, 6, 'esES', 'El Cruce', ''),
(@ACTION_MENU + 10, 7, 'esES', "Isla de Quel'Danas", '');

-- Tierras salvajes 1
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 11, 1, 'esES', 'Bosque de Argénteos', ''),
(@ACTION_MENU + 11, 2, 'esES', 'Isla Bruma Azur', ''),
(@ACTION_MENU + 11, 3, 'esES', 'Loch Modan', ''),
(@ACTION_MENU + 11, 4, 'esES', 'Bosque Canción Eterna', ''),
(@ACTION_MENU + 11, 5, 'esES', 'Los Humedales', ''),
(@ACTION_MENU + 11, 6, 'esES', 'Laderas de Trabalomas', ''),
(@ACTION_MENU + 11, 7, 'esES', 'Montañas de Alterac', ''),
(@ACTION_MENU + 11, 8, 'esES', 'Tierras Altas de Arathi', ''),
(@ACTION_MENU + 11, 9, 'esES', 'Vega de Tuercespina', ''),
(@ACTION_MENU + 11, 10, 'esES', 'Las Tierras Baldías', ''),
(@ACTION_MENU + 11, 11, 'esES', 'Marjal Revolcafango', ''),
(@ACTION_MENU + 11, 12, 'esES', 'Las Tierras del Interior', '');

-- Tierras salvajes 2
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 12, 1, 'esES', 'Vallefresno', ''),
(@ACTION_MENU + 12, 2, 'esES', 'Sierra Espolón', ''),
(@ACTION_MENU + 12, 3, 'esES', 'Las Mil Agujas', ''),
(@ACTION_MENU + 12, 4, 'esES', 'Desolace', ''),
(@ACTION_MENU + 12, 5, 'esES', 'La Garganta de Fuego', ''),
(@ACTION_MENU + 12, 6, 'esES', 'Las Tierras Devastadas', ''),
(@ACTION_MENU + 12, 7, 'esES', 'Las Estepas Ardientes', ''),
(@ACTION_MENU + 12, 8, 'esES', 'Tierras de la Peste del Oeste', '');

-- Tierras salvajes 3
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 13, 1, 'esES', 'Capilla de la Esperanza de la Luz', ''),
(@ACTION_MENU + 13, 2, 'esES', 'Arena Gurubashi', ''),
(@ACTION_MENU + 13, 3, 'esES', 'Marjal Rotapolvo', ''),
(@ACTION_MENU + 13, 4, 'esES', 'Feralas', ''),
(@ACTION_MENU + 13, 5, 'esES', 'Azshara', ''),
(@ACTION_MENU + 13, 6, 'esES', 'Frondavil', ''),
(@ACTION_MENU + 13, 7, 'esES', 'Cráter de Un’Goro', ''),
(@ACTION_MENU + 13, 8, 'esES', 'Fuerte Cenarion', '');

-- Terrallende salvaje
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 14, 1, 'esES', 'Península del Fuego Infernal', ''),
(@ACTION_MENU + 14, 2, 'esES', 'Refugio Cenarion', ''),
(@ACTION_MENU + 14, 3, 'esES', 'Bosque de Terokkar', ''),
(@ACTION_MENU + 14, 4, 'esES', 'Halaa', ''),
(@ACTION_MENU + 14, 5, 'esES', "Montañas Filospada", ''),
(@ACTION_MENU + 14, 6, 'esES', 'Valle Sombraluna', '');

-- Rasganorte salvaje
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 15, 1, 'esES', 'Tundra Boreal', ''),
(@ACTION_MENU + 15, 2, 'esES', 'Fiordo Aquilonal', ''),
(@ACTION_MENU + 15, 3, 'esES', "Cementerio de Dragones - Puerto Moa'ki", ''),
(@ACTION_MENU + 15, 4, 'esES', 'Colinas Pardas', ''),
(@ACTION_MENU + 15, 5, 'esES', "Zul'Drak", ''),
(@ACTION_MENU + 15, 6, 'esES', 'Cuenca de Sholazar - Campamento Nesingwary', ''),
(@ACTION_MENU + 15, 7, 'esES', 'Bosque Canto de Cristal', ''),
(@ACTION_MENU + 15, 8, 'esES', 'Las Cumbres Tormentosas - K3', ''),
(@ACTION_MENU + 15, 9, 'esES', 'Corona de Hielo - El Sagrario de las Sombras', '');

-- Tierras domesticadas
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES 
(@ACTION_MENU + 16, 1, 'esES', 'Retiro Roca del Sol', ''),
(@ACTION_MENU + 16, 2, 'esES', 'Posada de Pesca', ''),
(@ACTION_MENU + 16, 3, 'esES', "Santuario de Koiter", ''),
(@ACTION_MENU + 16, 4, 'esES', "Cripta del Rey Muerto", ''),
(@ACTION_MENU + 16, 5, 'esES', "Bastión del Honor", ''),
(@ACTION_MENU + 16, 6, 'esES', 'Valle Rompebrazo', '');

-- Botón Atrás
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES
(@GOSSIP_MENU + 1, 99, 'esES', 'Atrás', ''),
(@GOSSIP_MENU + 2, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 0, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 1, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 2, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 3, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 4, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 5, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 6, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 7, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 8, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 9, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 10, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 11, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 12, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 13, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 14, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 15, 99, 'esES', 'Atrás', ''),
(@ACTION_MENU + 16, 99, 'esES', 'Atrás', '');