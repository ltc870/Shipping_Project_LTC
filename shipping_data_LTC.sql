USE shipping;

INSERT INTO port(portName, city, country)
VALUES
('Port Aqua', 'Oceanview', 'Sealand'),
('Harbor Vista', 'Baytown', 'Maritania'),
('Coastal Junction', 'Shoreline City', 'Aquatica'),
('Seabreeze Harbor', 'Coastalville', 'Maritopia'),
('Nautical Bay', 'Portside', 'Oceanland');

INSERT INTO ships(shipName, displacement, captainName, numberOfCrew, portName, yearBuilt)
VALUES
('Ocean Voyager', 1200.75, 'Griffin Storm', 750, 'Port Aqua', 2000),
('Celestial Horizon', 1800.50, 'Seraphina Black', 1000, 'Harbor Vista', 2015),
('Aurora Serenity', 1500.25, 'Magnus Tide', 1500, 'Coastal Junction', 2010),
('Sea Harmony', 2200.00, 'Isabella Corsair', 500, 'Seabreeze Harbor', 2018),
('Eternal Wave', 1600.50, 'Orion Gale', 830, 'Nautical Bay', 2013),
('Golden Odyssey', 2000.75, 'Lila Frost', 1200, 'Port Aqua', 2017),
('Emerald Destiny', 1900.25, 'Thorne Maverick', 900, 'Harbor Vista', 2011),
('Silver Crest', 1400.00, 'Astrid Oceanborn', 675, 'Coastal Junction', 2014),
('Mystic Wind', 2100.75, 'Rowan Wave', 1775, 'Seabreeze Harbor', 2016),
('Radiant Falcon', 1700.50, 'Freya Starling', 910, 'Nautical Bay', 2019);

INSERT INTO containers(containerID, height, width, length, weight, shipName)
VALUES
(1, 96, 84, 120, 5000, 'Ocean Voyager'),
(2, 108, 96, 144, 7000, 'Celestial Horizon'),
(3, 120, 72, 96, 4500, 'Aurora Serenity'),
(4, 144, 120, 168, 9000, 'Sea Harmony'),
(5, 132, 108, 132, 6500, 'Eternal Wave'),
(6, 120, 84, 156, 8000, 'Golden Odyssey'),
(7, 96, 60, 120, 4000, 'Emerald Destiny'),
(8, 144, 96, 180, 10000, 'Silver Crest'),
(9, 108, 72, 144, 6000, 'Mystic Wind'),
(10, 120, 84, 168, 7500, 'Radiant Falcon'),
(11, 132, 120, 156, 8500, 'Ocean Voyager'),
(12, 96, 72, 132, 5500, 'Celestial Horizon'),
(13, 108, 60, 144, 5000, 'Aurora Serenity'),
(14, 168, 144, 192, 12000, 'Sea Harmony'),
(15, 120, 96, 156, 8500, 'Eternal Wave'),
(16, 144, 120, 180, 9500, 'Golden Odyssey'),
(17, 132, 108, 144, 7000, 'Emerald Destiny'),
(18, 96, 60, 108, 3500, 'Silver Crest'),
(19, 156, 120, 192, 11000, 'Mystic Wind'),
(20, 108, 72, 156, 8000, 'Radiant Falcon');

