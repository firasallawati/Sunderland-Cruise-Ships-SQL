CREATE DATABASE sunderland_cruise_ships;

USE sunderland_cruise_ships;

CREATE TABLE passenger_details ( # Creates passenger_details Table
    passenger_id VARCHAR(10) NOT NULL PRIMARY KEY, # Identifies Attribute As Primary Key
    passenger_name VARCHAR(50) NOT NULL,
    cabin VARCHAR(25) NOT NULL
);

CREATE TABLE cruise_details ( # Creates cruise_details Table
    cruise_no INT NOT NULL PRIMARY KEY, # Identifies Attribute As Primary Key
    cruise_name VARCHAR(50) NOT NULL
);

CREATE TABLE port_details ( # Creates port_details Table
    port_id INT NOT NULL PRIMARY KEY, # Identifies Attribute As Primary Key
    port VARCHAR(50) NOT NULL
);

CREATE TABLE excursion_leader_details ( # Creates excursion_leader_details Table
    excursion_leader_id VARCHAR(10) NOT NULL PRIMARY KEY, # Identifies Attribute As Primary Key
    excursion_leader VARCHAR(50) NOT NULL
);

CREATE TABLE excursion_details ( # Creates excursion_details Table
    excursion_no VARCHAR(10) NOT NULL PRIMARY KEY, # Identifies Attribute As Primary Key
    excursion_leader_id VARCHAR(10) NOT NULL,
    port_id INT NOT NULL,
    excursion VARCHAR(50) NOT NULL,
    price_per_excursion DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (excursion_leader_id) REFERENCES excursion_leader_details(excursion_leader_id), # Identifies Attribute As Foreign Key
    FOREIGN KEY (port_id) REFERENCES port_details(port_id) # Identifies Attribute As Foreign Key
);

CREATE TABLE order_details ( # Creates order_details Table
    order_id VARCHAR(10) NOT NULL PRIMARY KEY, # Identifies Attribute As Primary Key
    passenger_id VARCHAR(10) NOT NULL,
    cruise_no INT NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES passenger_details(passenger_id), # Identifies Attribute As Foreign Key
    FOREIGN KEY (cruise_no) REFERENCES cruise_details(cruise_no) # Identifies Attribute As Foreign Key
);

CREATE TABLE order_amount_details ( # Creates order_amount_details Table
    order_id VARCHAR(10) NOT NULL,
    excursion_no VARCHAR(10) NOT NULL,
    qty INT NOT NULL,
    PRIMARY KEY(order_id,excursion_no),
    FOREIGN KEY (order_id) REFERENCES order_details(order_id), # Identifies Attribute As Foreign Key
    FOREIGN KEY (excursion_no) REFERENCES excursion_details(excursion_no) # Identifies Attribute As Foreign Key
);


INSERT INTO passenger_details (passenger_id, passenger_name, cabin) VALUES # Inserts Values Into passenger_details Table
('P001', 'Laila Allen', '2824'),
('P002', 'Jack Harris', '1409'),
('P003', 'Charlie Nelson', '5506'),
('P004', 'Poppy Turner', '5012'),
('P005', 'Muhammad Hall', '4657'),
('P006', 'Sophia Hall', '3286'),
('P007', 'Mason White', '2679'),
('P008', 'Sara Young', '9935'),
('P009', 'Omar Bell', '2424'),
('P010', 'Ali Jones', '7912'),
('P011', 'Violet Reed', '1520'),
('P012', 'Sophia Edwards', '1488'),
('P013', 'Yusuf Martin', '2535'),
('P014', 'Sophia Turner', '4582'),
('P015', 'Logan Young', '4811'),
('P016', 'Muhammad Murphy', '9279'),
('P017', 'Layla Harris', '1434'),
('P018', 'Fatima Scott', '4257'),
('P019', 'Laila Cox', '9928'),
('P020', 'George Harris', '7873'),
('P021', 'Harry Scott', '4611'),
('P022', 'Aiden Young', '8359'),
('P023', 'Noah White', '5557'),
('P024', 'Nora Bailey', '1106'),
('P025', 'Liam White', '3615'),
('P026', 'Ali Campbell', '7924'),
('P027', 'Aiden Cook', '6574'),
('P028', 'Nathan Taylor', '5552'),
('P029', 'Mia Wilson', '3547'),
('P030', 'Isabella Cooper', '4527'),
('P031', 'Layla Edwards', '6514'),
('P032', 'Mia Cooper', '2674'),
('P033', 'Leah Perez', '2519'),
('P034', 'Leah Carter', '7224'),
('P035', 'Lucas Harris', '2584'),
('P036', 'Alfie Parker', '6881'),
('P037', 'Ava Garcia', '6635'),
('P038', 'Tariq Brown', '5333'),
('P039', 'Jacob Taylor', '1711'),
('P040', 'Muhammad Anderson', '8527'),
('P041', 'Fatima Perez', '9785'),
('P042', 'Violet Jones', '3045'),
('P043', 'Logan Nelson', '7201'),
('P044', 'Violet Turner', '2291'),
('P045', 'Chloe Thompson', '5803'),
('P046', 'Layla Smith', '6925'),
('P047', 'Fatima Rivera', '4150'),
('P048', 'Jacob Bell', '2139'),
('P049', 'Zoe Richardson', '1750'),
('P050', 'Poppy Cox', '4733'),
('P051', 'Fiona Clarke', '3301'),
('P052', 'Finn Bradley', '4402'),
('P053', 'Fiona Bennett', '5503'),
('P054', 'Firas Hassan', '6604'),
('P055', 'Fiona Morgan', '7705');


INSERT INTO cruise_details (cruise_no, cruise_name) VALUES # Inserts Values Into cruise_details Table
(1001, 'Adriatic Jewels A1'),
(1002, 'Caribbean Bliss B1'),
(1003, 'Fjords Explorer C1'),
(1004, 'Arctic Adventure D1'),
(1005, 'Pacific Odyssey E1'),
(1006, 'Mediterranean Dream F1'),
(1007, 'Northern Lights G1'),
(1008, 'Baltic Highlights H1'),
(1009, 'Black Sea Discovery I1'),
(1010, 'Iberian Gem J1'),
(1011, 'Black Sea Discovery K1'),
(1012, 'Arctic Adventure L1'),
(1013, 'Southern Cross M1'),
(1014, 'Canary Islands Escape N1'),
(1015, 'Mediterranean Dream O1'),
(1016, 'Southern Cross P1'),
(1017, 'Iberian Gem Q1'),
(1018, 'Fjords Explorer R1'),
(1019, 'Scandinavian Saga S1'),
(1020, 'Adriatic Jewels T1'),
(1021, 'Arctic Adventure U1'),
(1022, 'Scandinavian Saga V1'),
(1023, 'Adriatic Jewels W1'),
(1024, 'Southern Cross X1'),
(1025, 'Eastern Spice Y1'),
(1026, 'Atlantic Voyage Z1'),
(1027, 'Mediterranean Dream A2'),
(1028, 'Caribbean Bliss B2'),
(1029, 'Canary Islands Escape C2'),
(1030, 'Mediterranean Dream D2'),
(1031, 'Southern Cross E2'),
(1032, 'Canary Islands Escape F2'),
(1033, 'Iberian Gem G2'),
(1034, 'Southern Cross H2'),
(1035, 'Iberian Gem I2'),
(1036, 'Baltic Highlights J2'),
(1037, 'Eastern Spice K2'),
(1038, 'Caribbean Bliss L2'),
(1039, 'Northern Lights M2'),
(1040, 'Baltic Highlights N2'),
(1041, 'Fjords Explorer O2'),
(1042, 'Iberian Gem P2'),
(1043, 'Caribbean Bliss Q2'),
(1044, 'Iberian Gem R2'),
(1045, 'Scandinavian Saga S2'),
(1046, 'Canary Islands Escape T2'),
(1047, 'Arctic Adventure U2'),
(1048, 'Atlantic Voyage V2'),
(1049, 'Baltic Highlights W2'),
(1050, 'Atlantic Voyage X2');


INSERT INTO port_details (port_id, port) VALUES # Inserts Values Into port_details Table
(1, 'Copenhagen'),
(2, 'Oslo'),
(3, 'St Petersburg'),
(4, 'Bergen'),
(5, 'Holden'),
(6, 'Amsterdam'),
(7, 'Hamburg'),
(8, 'Lisbon'),
(9, 'Barcelona'),
(10, 'Venice'),
(11, 'Athens'),
(12, 'Istanbul'),
(13, 'Dubrovnik'),
(14, 'Helsinki'),
(15, 'Stockholm'),
(16, 'Tallinn'),
(17, 'Riga'),
(18, 'Gdansk'),
(19, 'Dublin'),
(20, 'Reykjavik'),
(21, 'Tromso'),
(22, 'Stavanger'),
(23, 'Malaga'),
(24, 'Valencia'),
(25, 'Marseille'),
(26, 'Genoa'),
(27, 'Naples'),
(28, 'Palermo'),
(29, 'Split'),
(30, 'Kotor'),
(31, 'Santorini'),
(32, 'Rhodes'),
(33, 'Heraklion'),
(34, 'Valletta'),
(35, 'Tunis'),
(36, 'Casablanca'),
(37, 'Tangier'),
(38, 'Cadiz'),
(39, 'Vigo'),
(40, 'Porto'),
(41, 'Bordeaux'),
(42, 'Le Havre'),
(43, 'Calais'),
(44, 'Dover'),
(45, 'Southampton'),
(46, 'Plymouth'),
(47, 'Cork'),
(48, 'Galway'),
(49, 'Belfast'),
(50, 'Limerick');


INSERT INTO excursion_leader_details (excursion_leader_id, excursion_leader) VALUES # Inserts Values Into excursion_leader_details Table
('L001', 'Kevin Garcia'),
('L002', 'Laura Rivera'),
('L003', 'Donna Jones'),
('L004', 'Tony Edwards'),
('L005', 'Sandra Wilson'),
('L006', 'Paul Morgan'),
('L007', 'Alex Collins'),
('L008', 'Chris Thompson'),
('L009', 'Wendy Morris'),
('L010', 'Fiona White'),
('L011', 'Gary Richardson'),
('L012', 'Brian Murphy'),
('L013', 'Tom Bailey'),
('L014', 'Lisa Carter'),
('L015', 'Simon Cook'),
('L016', 'Amy Roberts'),
('L017', 'Wendy Roberts'),
('L018', 'Anna Martin'),
('L019', 'Dan Jones'),
('L020', 'Nina Johnson'),
('L021', 'Diane Collins'),
('L022', 'Dan Sanchez'),
('L023', 'Dan Smith'),
('L024', 'David Bailey'),
('L025', 'Peter Brown'),
('L026', 'Dan Jones'),
('L027', 'Mike Green'),
('L028', 'David Parker'),
('L029', 'Claire Young'),
('L030', 'Simon Campbell'),
('L031', 'Lucy Edwards'),
('L032', 'Paul Rivera'),
('L033', 'Kevin Stewart'),
('L034', 'Alex Martin'),
('L035', 'Alex Mitchell'),
('L036', 'Tom Miller'),
('L037', 'James Morgan'),
('L038', 'Fiona Baker'),
('L039', 'Fiona Mitchell'),
('L040', 'Tina Rivera'),
('L041', 'Emma Bell'),
('L042', 'Janet Cook'),
('L043', 'James Brown'),
('L044', 'Zara Rivera'),
('L045', 'Nina Miller'),
('L046', 'Claire Jackson'),
('L047', 'Tom Edwards'),
('L048', 'Sam Wilson'),
('L049', 'Fiona Thomas'),
('L050', 'Helen Turner');


INSERT INTO excursion_details (excursion_no, excursion_leader_id, port_id, excursion, price_per_excursion) VALUES # Inserts Values Into excursion_details Table
('EX001', 'L004', 38, 'City Walking Tour', 300),
('EX002', 'L048', 35, 'Castle Visit', 350),
('EX003', 'L004', 48, 'Wine Tasting', 30),
('EX004', 'L021', 4, 'Whale Watching', 100),
('EX005', 'L004', 38, 'Kayaking Adventure', 250),
('EX006', 'L031', 33, 'Museum Trail', 300),
('EX007', 'L034', 11, 'Cooking Class', 300),
('EX008', 'L004', 33, 'Bike Ride', 120),
('EX009', 'L006', 12, 'Boat Cruise', 30),
('EX010', 'L005', 39, 'Hiking Trek', 25),
('EX011', 'L005', 44, 'Art Gallery Tour', 175),
('EX012', 'L016', 26, 'Food Market Visit', 120),
('EX013', 'L008', 37, 'Volcano Hike', 300),
('EX014', 'L016', 38, 'Snorkelling Trip', 25),
('EX015', 'L039', 3, 'Dolphin Watch', 30),
('EX016', 'L040', 6, 'Historic Quarter Tour', 350),
('EX017', 'L027', 43, 'Lighthouse Visit', 250),
('EX018', 'L038', 37, 'Beach Excursion', 300),
('EX019', 'L034', 21, 'Viking Museum', 50),
('EX020', 'L017', 14, 'Opera House Tour', 40),
('EX021', 'L043', 46, 'Cliff Walk', 80),
('EX022', 'L021', 16, 'Fishing Trip', 100),
('EX023', 'L017', 26, 'Cultural Dance Show', 100),
('EX024', 'L009', 43, 'Falconry Experience', 50),
('EX025', 'L042', 20, 'Hot Spring Dip', 300),
('EX026', 'L030', 21, 'Waterfall Hike', 80),
('EX027', 'L049', 5, 'Glacier Walk', 350),
('EX028', 'L001', 30, 'Northern Lights Tour', 25),
('EX029', 'L040', 37, 'Folk Village Visit', 40),
('EX030', 'L007', 5, 'Spice Market Tour', 80),
('EX031', 'L035', 14, 'Night City Tour', 25),
('EX032', 'L033', 17, 'Sunset Cruise', 80),
('EX033', 'L009', 23, 'Cave Exploration', 60),
('EX034', 'L005', 16, 'Puffin Watching', 350),
('EX035', 'L024', 19, 'Reindeer Safari', 250),
('EX036', 'L011', 29, 'Brewery Tour', 250),
('EX037', 'L035', 46, 'Distillery Visit', 100),
('EX038', 'L020', 40, 'Street Art Walk', 60),
('EX039', 'L042', 34, 'Panorama Cable Car', 80),
('EX040', 'L001', 43, 'Salt Flat Tour', 200),
('EX041', 'L036', 20, 'Jazz Quarter Walk', 200),
('EX042', 'L043', 7, 'Cathedral Tour', 250),
('EX043', 'L009', 17, 'Royal Palace Visit', 120),
('EX044', 'L008', 7, 'Botanical Garden', 175),
('EX045', 'L048', 36, 'Harbour Ferry', 200),
('EX046', 'L010', 18, 'Windmill Tour', 100),
('EX047', 'L019', 39, 'Tulip Field Visit', 40),
('EX048', 'L014', 46, 'Cheese Farm Tour', 50),
('EX049', 'L022', 14, 'Christmas Market', 60),
('EX050', 'L044', 41, 'Birdwatching Walk', 50),
('EX051', 'L001', 1, 'Copenhagen City Tour', 120.00),
('EX052', 'L002', 1, 'Tivoli Gardens Visit', 95.00),
('EX053', 'L003', 1, 'Nyhavn Canal Walk', 75.00),
('EX054', 'L004', 1, 'Royal Palace Tour', 110.00),
('EX055', 'L005', 1, 'Little Mermaid Walk', 85.00),
('EX056', 'L006', 2, 'Oslo Fjord Cruise', 150.00),
('EX057', 'L007', 2, 'Viking Ship Museum', 80.00),
('EX058', 'L008', 2, 'Vigeland Sculpture Park', 65.00),
('EX059', 'L009', 3, 'Hermitage Museum Tour', 200.00),
('EX060', 'L010', 3, 'St Petersburg Canal Cruise', 175.00),
('EX061', 'L011', 3, 'Catherine Palace Visit', 190.00),
('C001', 'L012', 9, 'Barcelona City Highlights', 110.00);


INSERT INTO order_details (order_id, passenger_id, cruise_no) VALUES # Inserts Values Into order_details Table
('ORD001', 'P017', 1033),
('ORD002', 'P032', 1017),
('ORD003', 'P004', 1006),
('ORD004', 'P041', 1028),
('ORD005', 'P018', 1003),
('ORD006', 'P001', 1022),
('ORD007', 'P050', 1009),
('ORD008', 'P041', 1017),
('ORD009', 'P011', 1048),
('ORD010', 'P029', 1036),
('ORD011', 'P046', 1028),
('ORD012', 'P036', 1001),
('ORD013', 'P008', 1005),
('ORD014', 'P045', 1010),
('ORD015', 'P035', 1003),
('ORD016', 'P024', 1038),
('ORD017', 'P036', 1010),
('ORD018', 'P028', 1009),
('ORD019', 'P003', 1020),
('ORD020', 'P024', 1003),
('ORD021', 'P023', 1014),
('ORD022', 'P044', 1016),
('ORD023', 'P043', 1007),
('ORD024', 'P023', 1050),
('ORD025', 'P036', 1027),
('ORD026', 'P040', 1048),
('ORD027', 'P010', 1016),
('ORD028', 'P011', 1012),
('ORD029', 'P027', 1002),
('ORD030', 'P012', 1048),
('ORD031', 'P022', 1027),
('ORD032', 'P043', 1048),
('ORD033', 'P016', 1018),
('ORD034', 'P011', 1045),
('ORD035', 'P007', 1025),
('ORD036', 'P003', 1031),
('ORD037', 'P015', 1013),
('ORD038', 'P030', 1023),
('ORD039', 'P020', 1015),
('ORD040', 'P015', 1002),
('ORD041', 'P043', 1013),
('ORD042', 'P026', 1022),
('ORD043', 'P018', 1005),
('ORD044', 'P050', 1018),
('ORD045', 'P023', 1042),
('ORD046', 'P033', 1026),
('ORD047', 'P044', 1035),
('ORD048', 'P022', 1002),
('ORD049', 'P008', 1017),
('ORD050', 'P012', 1038),
('ORD051', 'P001', 1001),
('ORD052', 'P002', 1002),
('ORD053', 'P003', 1003),
('ORD054', 'P004', 1004),
('ORD055', 'P005', 1005),
('ORD056', 'P006', 1006),
('ORD057', 'P007', 1007),
('ORD058', 'P008', 1008),
('ORD059', 'P009', 1009),
('ORD060', 'P010', 1010),
('ORD061', 'P051', 1011),
('ORD062', 'P052', 1012),
('ORD063', 'P053', 1013),
('ORD064', 'P054', 1014),
('ORD065', 'P055', 1015);


INSERT INTO order_amount_details (order_id, excursion_no, qty) VALUES # Inserts Values Into order_amount_details Table
('ORD017', 'EX003', 2),
('ORD039', 'EX028', 6),
('ORD047', 'EX021', 7),
('ORD039', 'EX033', 2),
('ORD025', 'EX037', 4),
('ORD046', 'EX028', 1),
('ORD034', 'EX035', 4),
('ORD024', 'EX028', 2),
('ORD043', 'EX022', 10),
('ORD021', 'EX043', 2),
('ORD047', 'EX020', 9),
('ORD020', 'EX043', 7),
('ORD021', 'EX026', 5),
('ORD036', 'EX009', 4),
('ORD027', 'EX043', 7),
('ORD044', 'EX048', 3),
('ORD040', 'EX037', 5),
('ORD026', 'EX036', 1),
('ORD020', 'EX019', 4),
('ORD028', 'EX038', 10),
('ORD042', 'EX021', 8),
('ORD029', 'EX029', 4),
('ORD033', 'EX031', 3),
('ORD043', 'EX006', 5),
('ORD033', 'EX043', 10),
('ORD022', 'EX006', 4),
('ORD044', 'EX020', 4),
('ORD013', 'EX010', 1),
('ORD003', 'EX016', 8),
('ORD040', 'EX050', 2),
('ORD030', 'EX027', 10),
('ORD013', 'EX046', 7),
('ORD032', 'EX026', 4),
('ORD010', 'EX042', 1),
('ORD049', 'EX050', 2),
('ORD050', 'EX028', 4),
('ORD012', 'EX045', 9),
('ORD030', 'EX004', 9),
('ORD016', 'EX008', 8),
('ORD009', 'EX030', 9),
('ORD036', 'EX039', 6),
('ORD049', 'EX029', 10),
('ORD047', 'EX033', 7),
('ORD036', 'EX029', 3),
('ORD048', 'EX031', 8),
('ORD017', 'EX049', 4),
('ORD041', 'EX018', 9),
('ORD032', 'EX041', 4),
('ORD018', 'EX029', 2),
('ORD046', 'EX019', 4),
('ORD051', 'EX056', 2),
('ORD052', 'EX057', 3),
('ORD053', 'EX058', 1),
('ORD054', 'EX059', 2),
('ORD055', 'EX060', 4),
('ORD056', 'C001', 5),
('ORD057', 'C001', 7),
('ORD058', 'C001', 9),
('ORD059', 'C001', 6),
('ORD060', 'C001', 8),
('ORD061', 'EX001', 2),
('ORD062', 'EX002', 3),
('ORD063', 'EX003', 1),
('ORD064', 'EX004', 4),
('ORD065', 'EX005', 2);

SELECT * FROM passenger_details;
SELECT * FROM cruise_details;
SELECT * FROM port_details;
SELECT * FROM excursion_leader_details;
SELECT * FROM excursion_details;
SELECT * FROM order_details;
SELECT * FROM order_amount_details;

-- i) Update the cost for excursions where the port is ‘Copenhagen’
-- so they are increased by a percentage equivalent to the 4th and 5th characters in your T-Number.
-- For example, if your T-Number is T003456 increase the excursion prices by 34%.
UPDATE excursion_details
SET price_per_excursion = price_per_excursion * 1.61
WHERE port_id = (SELECT port_id FROM port_details WHERE port = 'Copenhagen');
SELECT excursion_no, excursion, price_per_excursion
FROM excursion_details
WHERE port_id = (SELECT port_id FROM port_details WHERE port = 'Copenhagen');


-- ii) Create a list that shows the orderID, passenger number, and passenger name and passenger cabin.
-- The headings for the columns should be “Order ID”, “Passenger ID”, “Name of Passenger” and “Cabin”.
SELECT o.order_id AS "Order ID", p.passenger_id AS "Passenger ID", p.passenger_name AS "Name of Passenger", p.cabin AS "Cabin"
FROM order_details AS o
JOIN passenger_details AS p ON o.passenger_id = p.passenger_id;

-- iii) Display the passenger details for all passengers going on an excursion in St Petersburg or Oslo.
SELECT DISTINCT p.passenger_id, p.passenger_name, p.cabin
FROM passenger_details AS p
JOIN order_details AS o ON p.passenger_id = o.passenger_id
JOIN order_amount_details AS oa ON o.order_id = oa.order_id
JOIN excursion_details AS e ON oa.excursion_no = e.excursion_no
JOIN port_details AS pt ON e.port_id = pt.port_id
WHERE pt.port IN ('St Petersburg', 'Oslo');


-- iv) Display the order number, passenger name and who has bought more than 4 tickets on the C001 excursion.
SELECT o.order_id, p.passenger_name, oa.qty, oa.excursion_no
FROM passenger_details AS p
JOIN order_details AS o ON p.passenger_id = o.passenger_id
JOIN order_amount_details AS oa ON o.order_id = oa.order_id
WHERE oa.excursion_no = 'C001' AND oa.qty > 4;


-- v) If the last character in the T-Number is equal to 6,
-- produce the SQL to determine how many excursions are booked by cruise name.
SELECT c.cruise_name, COUNT(oa.excursion_no) AS total_excursions_booked
FROM cruise_details AS c
LEFT JOIN order_details AS o ON c.cruise_no = o.cruise_no
JOIN order_amount_details AS oa ON o.order_id = oa.order_id
GROUP BY c.cruise_name;

-- vi) Display the passenger details, excursion details for passengers
-- whose name starts with the first two letters of your first name
-- but do not include the last 2 letters of your last name.
SELECT DISTINCT p.passenger_name, p.passenger_id, p.cabin, e.excursion_no, e.excursion_leader_id, e.port_id, e.excursion, e.price_per_excursion
FROM passenger_details AS p
JOIN order_details AS o ON p.passenger_id = o.passenger_id
JOIN order_amount_details AS oa ON o.order_id = oa.order_id
JOIN excursion_details AS e ON oa.excursion_no = e.excursion_no
WHERE p.passenger_name LIKE 'Fi%' AND p.passenger_name NOT LIKE 'ti%';