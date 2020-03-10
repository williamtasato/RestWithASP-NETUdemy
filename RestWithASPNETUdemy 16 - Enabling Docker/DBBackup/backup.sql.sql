﻿-- Script was generated by Devart dbForge Studio for MySQL, Version 6.0.128.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 10/03/2020 08:52:33
-- Server version: 5.6.21
-- Client version: 4.1

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

-- 
-- Set default database
--
USE resp_with_asp_net_udemy;

--
-- Definition for table books
--
DROP TABLE IF EXISTS books;
CREATE TABLE books (
  Id INT(10) NOT NULL AUTO_INCREMENT,
  Author LONGTEXT DEFAULT NULL,
  LaunchDate DATETIME NOT NULL,
  Price DECIMAL(65, 2) NOT NULL,
  Title LONGTEXT DEFAULT NULL,
  PRIMARY KEY (Id)
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 5461
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table changelog
--
DROP TABLE IF EXISTS changelog;
CREATE TABLE changelog (
  id INT(11) NOT NULL AUTO_INCREMENT,
  type TINYINT(4) DEFAULT NULL,
  version VARCHAR(50) DEFAULT NULL,
  description VARCHAR(200) NOT NULL,
  name VARCHAR(300) NOT NULL,
  checksum VARCHAR(32) DEFAULT NULL,
  installed_by VARCHAR(100) NOT NULL,
  installed_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  success TINYINT(1) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 18
AVG_ROW_LENGTH = 963
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table persons
--
DROP TABLE IF EXISTS persons;
CREATE TABLE persons (
  Id INT(10) NOT NULL AUTO_INCREMENT,
  FirstName VARCHAR(50) DEFAULT NULL,
  LastName VARCHAR(50) DEFAULT NULL,
  Adress VARCHAR(50) DEFAULT NULL,
  Gender VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (Id)
)
ENGINE = INNODB
AUTO_INCREMENT = 303
AVG_ROW_LENGTH = 162
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table users
--
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  Id INT(10) NOT NULL AUTO_INCREMENT,
  Login VARCHAR(50) NOT NULL,
  AcessKey VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id),
  UNIQUE INDEX Login (Login)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

-- 
-- Dumping data for table books
--
INSERT INTO books VALUES
(1, 'Michel C. Feathers', '2017-11-29 13:50:00', 49.00, 'Working effectivily with legacy code'),
(2, 'Sreve McConnell', '2017-11-07 15:09:00', 65.00, 'Code Complete'),
(3, 'CrockFord', '2017-11-07 15:09:00', 67.00, 'Javascript');

-- 
-- Dumping data for table changelog
--
INSERT INTO changelog VALUES
(1, 2, '0', 'Empty schema found: resp_with_asp_net_udemy.', 'resp_with_asp_net_udemy', '', 'root', '2020-02-05 14:49:38', 1),
(2, 0, '1', '0  1  Create  Table  Persons', 'V1__0__1__Create__Table__Persons.sql', '5C5CB325B58A0F5EBBB39AD96383EA89', 'root', '2020-02-05 14:50:45', 1),
(3, 0, '2', '0  1  Alter  Table  Persons', 'V2__0__1__Alter__Table__Persons.sql', 'DAF83CFD9EA418DF983445AA94547677', 'root', '2020-02-05 14:50:49', 1),
(4, 0, '3', '0  3  Create  Table  Books', 'V3__0__3__Create__Table__Books.sql', '5C5CB325B58A0F5EBBB39AD96383EA89', 'root', '2020-02-05 14:55:23', 0),
(5, 0, '3', '0  3  Create  Table  Books', 'V3__0__3__Create__Table__Books.sql', 'CD785742554AAB24ED5258825764A831', 'root', '2020-02-05 15:00:42', 0),
(6, 0, '3', '0  3  Create  Table  Books', 'V3__0__3__Create__Table__Books.sql', '53CB43EB8D60C1A90F8C73F6EC76AA08', 'root', '2020-02-05 15:01:07', 1),
(7, 0, '4', '0  4  Drop  Table  Books', 'V4__0__4__Drop__Table__Books.sql', '53CB43EB8D60C1A90F8C73F6EC76AA08', 'root', '2020-02-05 17:10:29', 1),
(8, 0, '5', '0  5  Recreate  Table  Books', 'V5__0__5__Recreate__Table__Books.sql', 'AC35EB6832539384693AA7D2B8C2EDA8', 'root', '2020-02-05 17:10:29', 0),
(9, 0, '5', '0  5  Recreate  Table  Books', 'V5__0__5__Recreate__Table__Books.sql', '5A807913D53BAA4D683550A443C83024', 'root', '2020-02-05 17:11:16', 0),
(10, 0, '5', '0  5  Recreate  Table  Books', 'V5__0__5__Recreate__Table__Books.sql', '5A807913D53BAA4D683550A443C83024', 'root', '2020-02-05 17:11:29', 0),
(11, 0, '5', '0  5  Recreate  Table  Books', 'V5__0__5__Recreate__Table__Books.sql', '5A807913D53BAA4D683550A443C83024', 'root', '2020-02-05 17:11:33', 0),
(12, 0, '5', '0  5  Recreate  Table  Books', 'V5__0__5__Recreate__Table__Books.sql', '5A807913D53BAA4D683550A443C83024', 'root', '2020-02-05 17:13:03', 0),
(13, 0, '5', '0  5  Recreate  Table  Books', 'V5__0__5__Recreate__Table__Books.sql', '5A807913D53BAA4D683550A443C83024', 'root', '2020-02-05 17:14:26', 1),
(14, 0, '6', '0  6  Insert  Table  Book', 'V6__0__6__Insert__Table__Book.sql', 'F64E104013A22136C9E3CF8C6BB843F6', 'root', '2020-02-05 17:14:26', 0),
(15, 0, '6', '0  6  Insert  Table  Book', 'V6__0__6__Insert__Table__Book.sql', 'BBF3C86A4C17DF85BEB3FEF37D560C9C', 'root', '2020-02-05 17:17:56', 1),
(16, 0, '7', '0  7  Create  Table  Users', 'V7__0__7__Create__Table__Users.sql', 'FCC3A12436887533B8016DB5049464C0', 'root', '2020-02-06 16:43:43', 1),
(17, 0, '8', '0  8  Insert  data in  Users', 'V8__0__8__Insert__data_in__Users.sql', '677880766C3D6DE75EEF72ABD6971A18', 'root', '2020-02-06 16:49:26', 1);

-- 
-- Dumping data for table persons
--
INSERT INTO persons VALUES
(1, 'Marcos', 'Pereira', 'Uberlandia - Minas Gerais - Brasil', 'Male'),
(2, 'Leandro', 'Costa', 'Uberlandia - Minas Gerais - Brasil', 'Male'),
(3, 'Leigh', 'Bramford', '17695 Raven Pass', 'Female'),
(4, 'Lauritz', 'Mulholland', '604 Lake View Lane', 'Male'),
(5, 'Timothy', 'Brendish', '6026 Waxwing Plaza', 'Male'),
(6, 'Lilith', 'Goadby', '4 Kinsman Parkway', 'Female'),
(7, 'Morten', 'Alsop', '840 Scofield Lane', 'Male'),
(8, 'Dell', 'Brasseur', '113 Oxford Center', 'Male'),
(9, 'Horton', 'Pudan', '9127 Fordem Trail', 'Male'),
(10, 'Ripley', 'Fearby', '48827 Carey Terrace', 'Male'),
(11, 'Norby', 'Rodgers', '4 American Alley', 'Male'),
(12, 'Chick', 'Jerzykiewicz', '25 Caliangt Point', 'Male'),
(13, 'Brandy', 'Records', '1876 Bartelt Court', 'Male'),
(14, 'Jeff', 'Diamond', '4 Jackson Drive', 'Male'),
(15, 'Beck', 'Chitham', '195 American Point', 'Male'),
(16, 'Elisabet', 'O''Corhane', '4665 Manitowish Circle', 'Female'),
(17, 'Flem', 'Brandino', '0 Westport Terrace', 'Male'),
(18, 'Ignacius', 'Tregonna', '33643 Vermont Street', 'Male'),
(19, 'Petrina', 'Goad', '4 Starling Circle', 'Female'),
(20, 'Travis', 'Grichukhanov', '8222 Pankratz Hill', 'Male'),
(21, 'Viola', 'Ineson', '8929 Golf Avenue', 'Female'),
(22, 'Dorian', 'Sprason', '401 Coleman Plaza', 'Female'),
(23, 'Patten', 'Cunnow', '26228 Sachtjen Terrace', 'Male'),
(24, 'Tabor', 'Honack', '9 Delladonna Place', 'Male'),
(25, 'Xenia', 'Thorburn', '11 Pearson Street', 'Female'),
(26, 'Cosette', 'Gobert', '7884 Transport Parkway', 'Female'),
(27, 'Cathie', 'Sachno', '87834 Red Cloud Court', 'Female'),
(28, 'Salvidor', 'Tubble', '602 Oxford Trail', 'Male'),
(29, 'Doralynne', 'Emmett', '6887 Amoth Terrace', 'Female'),
(30, 'Kaleb', 'Bonds', '1442 Maple Wood Drive', 'Male'),
(31, 'Celie', 'Mee', '724 Luster Crossing', 'Female'),
(32, 'Hobart', 'McCowan', '77542 Kings Hill', 'Male'),
(33, 'Giulio', 'Harteley', '8 Fallview Hill', 'Male'),
(34, 'Fay', 'Paxeford', '094 Sullivan Plaza', 'Female'),
(35, 'Kandy', 'Webster', '39 Quincy Pass', 'Female'),
(36, 'Fowler', 'Kroger', '28 Arizona Road', 'Male'),
(37, 'Josee', 'Romans', '32 Londonderry Crossing', 'Female'),
(38, 'Claretta', 'Haslen', '845 Jackson Center', 'Female'),
(39, 'Son', 'Gave', '8075 Nelson Way', 'Male'),
(40, 'Avrit', 'Jeacop', '06 Northridge Place', 'Female'),
(41, 'Costa', 'Connop', '69 Blue Bill Park Street', 'Male'),
(42, 'Katinka', 'Barnwall', '378 Prentice Trail', 'Female'),
(43, 'Floria', 'Scrine', '90141 Hollow Ridge Circle', 'Female'),
(44, 'Fidole', 'Ohms', '9429 American Center', 'Male'),
(45, 'Kermit', 'Vedeneev', '37 Schiller Avenue', 'Male'),
(46, 'Ramona', 'Reicherz', '749 Gateway Circle', 'Female'),
(47, 'Vidovic', 'Wilshin', '640 Hansons Junction', 'Male'),
(48, 'Hazel', 'Marc', '5207 Bunting Road', 'Female'),
(49, 'Ricky', 'Lawie', '663 Independence Hill', 'Female'),
(50, 'Pietro', 'Kehir', '4817 Arrowood Crossing', 'Male'),
(51, 'Emmet', 'Eric', '57151 East Street', 'Male'),
(52, 'Leonhard', 'Plom', '87252 Farragut Street', 'Male'),
(53, 'Shirline', 'Ellaman', '5080 Hazelcrest Court', 'Female'),
(54, 'Frances', 'Muscat', '94580 Old Shore Road', 'Female'),
(55, 'Pet', 'Leckenby', '78264 Fisk Place', 'Female'),
(56, 'Henrik', 'Strasse', '58089 Mallard Court', 'Male'),
(57, 'Worden', 'Kures', '103 3rd Plaza', 'Male'),
(58, 'Raff', 'Courtois', '0067 Little Fleur Hill', 'Male'),
(59, 'Derrek', 'Gallamore', '25 Carey Parkway', 'Male'),
(60, 'Hervey', 'Jest', '09 Duke Parkway', 'Male'),
(61, 'Rivi', 'Jeanet', '86 David Pass', 'Female'),
(62, 'Lexie', 'Carvell', '65 Mitchell Trail', 'Female'),
(63, 'Bellina', 'Janse', '7 7th Road', 'Female'),
(64, 'Nil', 'Blackshaw', '1 Lunder Court', 'Male'),
(65, 'Joanna', 'Drowsfield', '05 Northport Place', 'Female'),
(66, 'Jedd', 'Parsell', '71361 Crest Line Plaza', 'Male'),
(67, 'Korie', 'Caren', '92 Novick Pass', 'Female'),
(68, 'Anabelle', 'LeEstut', '7504 Thompson Circle', 'Female'),
(69, 'Reyna', 'Dalli', '32 Fisk Court', 'Female'),
(70, 'Dionisio', 'Pinniger', '583 Service Park', 'Male'),
(71, 'Casandra', 'Cushelly', '42 Holy Cross Junction', 'Female'),
(72, 'Miguelita', 'Cowling', '99749 Emmet Lane', 'Female'),
(73, 'Jorgan', 'Jannequin', '84172 Crescent Oaks Junction', 'Male'),
(74, 'Dukey', 'Iley', '7 Dahle Terrace', 'Male'),
(75, 'Vanya', 'Bonifazio', '455 Summit Alley', 'Male'),
(76, 'Tabbie', 'Forestel', '6742 Holy Cross Alley', 'Female'),
(77, 'Arie', 'Rootham', '86073 Corscot Center', 'Male'),
(78, 'Misha', 'Wilce', '376 Muir Lane', 'Female'),
(79, 'Cord', 'Tourry', '850 Coolidge Point', 'Male'),
(80, 'Shelbi', 'Gockelen', '39546 Tony Avenue', 'Female'),
(81, 'Franchot', 'Whoolehan', '68 Delladonna Hill', 'Male'),
(82, 'Ira', 'Strippel', '5 Bellgrove Avenue', 'Male'),
(83, 'Edith', 'Kettlestringes', '530 Pleasure Place', 'Female'),
(84, 'Harriett', 'Tripett', '24257 Erie Place', 'Female'),
(85, 'Merralee', 'O''Hickee', '12371 Cardinal Hill', 'Female'),
(86, 'Moses', 'Faragher', '3402 Sycamore Place', 'Male'),
(87, 'Hetti', 'O''Cannovane', '1422 Browning Road', 'Female'),
(88, 'Ernestine', 'Bacon', '1 Fallview Point', 'Female'),
(89, 'Jessee', 'Ellison', '1 Sommers Alley', 'Male'),
(90, 'Ferdinand', 'Hriinchenko', '6057 Prentice Terrace', 'Male'),
(91, 'Aldric', 'Farmiloe', '83 Graceland Parkway', 'Male'),
(92, 'Dita', 'Kamiyama', '4869 Straubel Place', 'Female'),
(93, 'Hasty', 'Spaven', '08 Emmet Road', 'Male'),
(94, 'Katalin', 'Gunstone', '95 Manufacturers Hill', 'Female'),
(95, 'Billie', 'Dyhouse', '2 Morning Drive', 'Male'),
(96, 'Aubrey', 'Janota', '89 Barby Plaza', 'Male'),
(97, 'Corrinne', 'Comello', '4 Old Gate Park', 'Female'),
(98, 'Brittan', 'Coat', '154 Miller Alley', 'Female'),
(99, 'Shawna', 'Swateridge', '0 Oneill Road', 'Female'),
(100, 'Gwenneth', 'Gosdin', '3 5th Parkway', 'Female'),
(101, 'Elwyn', 'Hawthorn', '409 Wayridge Court', 'Male'),
(102, 'Eva', 'Jaskowicz', '86 Kedzie Crossing', 'Female'),
(103, 'Mona', 'Castro', '4142 Lighthouse Bay Terrace', 'Female'),
(104, 'Creighton', 'Parkins', '7 Northridge Court', 'Male'),
(105, 'Sonnnie', 'Clampett', '5 Wayridge Park', 'Female'),
(106, 'Mick', 'Stannion', '24305 Barnett Pass', 'Male'),
(107, 'Dedie', 'Longstaffe', '37378 Onsgard Plaza', 'Female'),
(108, 'Kasey', 'Neely', '33933 Northland Way', 'Female'),
(109, 'Frederik', 'Burrus', '30 Arizona Center', 'Male'),
(110, 'Carolyn', 'Bascombe', '55 Daystar Terrace', 'Female'),
(111, 'Will', 'Butler-Bowdon', '50767 Towne Pass', 'Male'),
(112, 'Dud', 'MacGinlay', '0 Veith Center', 'Male'),
(113, 'Rosabel', 'Akast', '134 Sunnyside Road', 'Female'),
(114, 'Ulysses', 'Flintoft', '96150 Meadow Vale Road', 'Male'),
(115, 'Fanya', 'De Filippis', '394 Claremont Place', 'Female'),
(116, 'Karlotta', 'Fairlam', '3 Kensington Park', 'Female'),
(117, 'Brittan', 'Manuaud', '16514 Pierstorff Alley', 'Female'),
(118, 'Phelia', 'Kunzel', '2 Buhler Point', 'Female'),
(119, 'Beatriz', 'Boc', '6 Manley Trail', 'Female'),
(120, 'Hobey', 'Chadney', '89716 Lindbergh Court', 'Male'),
(121, 'Nikolas', 'Goodbanne', '1463 Steensland Drive', 'Male'),
(122, 'Margit', 'Wrigglesworth', '71711 Shoshone Center', 'Female'),
(123, 'Patrick', 'Whyberd', '4903 Mifflin Hill', 'Male'),
(124, 'Ilaire', 'Feige', '26577 Susan Crossing', 'Male'),
(125, 'Kit', 'Mawby', '216 Grasskamp Alley', 'Female'),
(126, 'Erskine', 'Stearn', '70539 Sutherland Parkway', 'Male'),
(127, 'Ian', 'Newson', '03889 Anderson Plaza', 'Male'),
(128, 'Kaylyn', 'Cruden', '5 International Terrace', 'Female'),
(129, 'Jase', 'Walstow', '6936 Eliot Hill', 'Male'),
(130, 'Odetta', 'Furlong', '889 Ludington Pass', 'Female'),
(131, 'Currie', 'Dunwoody', '33277 Esker Circle', 'Male'),
(132, 'Alex', 'Hillin', '32 Scoville Alley', 'Female'),
(133, 'Loni', 'Berkeley', '5827 Lien Hill', 'Female'),
(134, 'Abner', 'Southey', '749 Golf View Road', 'Male'),
(135, 'Biddy', 'Borleace', '89405 Springview Hill', 'Female'),
(136, 'Hilliary', 'Calafate', '0290 Rigney Terrace', 'Female'),
(137, 'Stacee', 'Baxstare', '67 Scott Drive', 'Female'),
(138, 'Fred', 'Eate', '9 Stephen Pass', 'Female'),
(139, 'Linn', 'Puleque', '907 Di Loreto Place', 'Male'),
(140, 'Peyter', 'Crosher', '9 Atwood Hill', 'Male'),
(141, 'Zacharie', 'Croux', '4 Warrior Point', 'Male'),
(142, 'Dan', 'Tomasoni', '4 East Terrace', 'Male'),
(143, 'Patrizius', 'Folds', '8945 Beilfuss Trail', 'Male'),
(144, 'Zach', 'Fidelus', '006 Truax Alley', 'Male'),
(145, 'Joan', 'Lavelle', '9 Scott Drive', 'Female'),
(146, 'Lexis', 'Conti', '755 Pine View Drive', 'Female'),
(147, 'Lenora', 'Coen', '0 Emmet Pass', 'Female'),
(148, 'Dinah', 'Pauling', '25377 Park Meadow Way', 'Female'),
(149, 'Dania', 'Mieville', '59756 Oak Trail', 'Female'),
(150, 'Kacy', 'Rapi', '98201 High Crossing Street', 'Female'),
(151, 'Flossie', 'Oswald', '856 Prairie Rose Circle', 'Female'),
(152, 'Annabal', 'Bramley', '5 Lindbergh Plaza', 'Female'),
(153, 'Tobe', 'Jobbings', '58 Homewood Road', 'Male'),
(154, 'Heywood', 'Glave', '7 Harper Way', 'Male'),
(155, 'Marigold', 'Flann', '84420 Evergreen Road', 'Female'),
(156, 'Claudelle', 'Huller', '77164 Rusk Parkway', 'Female'),
(157, 'Constancia', 'Demsey', '8 Division Point', 'Female'),
(158, 'Gallagher', 'Joret', '6 Fallview Crossing', 'Male'),
(159, 'Rowe', 'O''Flannery', '07330 Warrior Court', 'Female'),
(160, 'Avictor', 'Feltham', '27948 Cody Road', 'Male'),
(161, 'Tim', 'Logue', '1573 Pankratz Center', 'Male'),
(162, 'Neils', 'Adamek', '72340 International Junction', 'Male'),
(163, 'Lorrayne', 'Trinbey', '7887 South Lane', 'Female'),
(164, 'Barnebas', 'Stilgoe', '277 Forest Way', 'Male'),
(165, 'Jordana', 'Ackery', '5 Aberg Trail', 'Female'),
(166, 'Elnora', 'Pendleton', '51 High Crossing Point', 'Female'),
(167, 'Adaline', 'Tyhurst', '1 Coolidge Parkway', 'Female'),
(168, 'Georgetta', 'Seamer', '4057 Anniversary Street', 'Female'),
(169, 'Jerald', 'Dignon', '95 North Plaza', 'Male'),
(170, 'Darby', 'Tomes', '972 Karstens Crossing', 'Male'),
(171, 'Elle', 'Davidescu', '80670 Lukken Pass', 'Female'),
(172, 'Shawnee', 'Melin', '9168 Talmadge Point', 'Female'),
(173, 'Leonelle', 'Benditt', '1 Loomis Plaza', 'Female'),
(174, 'Joceline', 'Luckings', '66714 Roxbury Point', 'Female'),
(175, 'Ignatius', 'Dyter', '0 Dakota Junction', 'Male'),
(176, 'Flossi', 'Bilham', '63 Dapin Hill', 'Female'),
(177, 'Arly', 'Brambell', '72 Logan Avenue', 'Female'),
(178, 'Allissa', 'Pretsel', '3 Larry Junction', 'Female'),
(179, 'Viki', 'Mowsdale', '3440 Sugar Pass', 'Female'),
(180, 'Alford', 'Ferrie', '10243 Johnson Place', 'Male'),
(181, 'Jessi', 'Rawdales', '4159 Dennis Junction', 'Female'),
(182, 'Brandea', 'Townrow', '0 Oakridge Way', 'Female'),
(183, 'Jordan', 'Fearneley', '244 Maple Wood Parkway', 'Female'),
(184, 'Elset', 'McCoy', '772 Stephen Lane', 'Female'),
(185, 'Aleda', 'Edison', '1 Utah Road', 'Female'),
(186, 'Lothario', 'Skelhorn', '55074 American Ash Plaza', 'Male'),
(187, 'Merrill', 'Lamberts', '5 Graedel Junction', 'Female'),
(188, 'Tad', 'Symcoxe', '260 Alpine Circle', 'Male'),
(189, 'Cly', 'Finnie', '4 Hoepker Place', 'Male'),
(190, 'Elmer', 'Fidock', '13149 Badeau Place', 'Male'),
(191, 'Josiah', 'Coxon', '56417 Springview Center', 'Male'),
(192, 'Casie', 'Qusklay', '2 Namekagon Place', 'Female'),
(193, 'Arline', 'Abells', '2 Larry Avenue', 'Female'),
(194, 'Haze', 'Maryska', '42 Butterfield Avenue', 'Male'),
(195, 'Way', 'Bjerkan', '4665 Coolidge Parkway', 'Male'),
(196, 'Lutero', 'O''Loughlin', '5457 Rieder Way', 'Male'),
(197, 'Curr', 'Terlinden', '7 Talmadge Crossing', 'Male'),
(198, 'Lemuel', 'Cisec', '8 Lakewood Way', 'Male'),
(199, 'Reginald', 'Worsnop', '176 Victoria Point', 'Male'),
(200, 'Coral', 'Bottelstone', '5 Ryan Alley', 'Female'),
(201, 'Juieta', 'Ughetti', '88602 Huxley Circle', 'Female'),
(202, 'Yevette', 'Ingledew', '81284 Macpherson Hill', 'Female'),
(203, 'Kaia', 'Tickle', '3 Farmco Alley', 'Female'),
(204, 'Malva', 'Janak', '08 Heath Trail', 'Female'),
(205, 'Lizzy', 'Stych', '99 Artisan Terrace', 'Female'),
(206, 'Paulette', 'Ferreira', '98482 Mendota Crossing', 'Female'),
(207, 'Zared', 'Isgar', '6 Annamark Drive', 'Male'),
(208, 'Valaria', 'Yeabsley', '69 Corben Center', 'Female'),
(209, 'Kiel', 'Loader', '398 Jay Center', 'Male'),
(210, 'Farah', 'Ivantsov', '43 Hazelcrest Crossing', 'Female'),
(211, 'Arline', 'Akker', '04224 Buell Plaza', 'Female'),
(212, 'Lind', 'Bisacre', '62 Corry Center', 'Female'),
(213, 'Ferdie', 'Boggish', '38909 Mayer Alley', 'Male'),
(214, 'Mikel', 'Goodbody', '456 New Castle Drive', 'Male'),
(215, 'Tabbie', 'Askell', '4 Golf Road', 'Female'),
(216, 'Tymothy', 'Halbert', '490 Comanche Court', 'Male'),
(217, 'Teddie', 'Breitling', '913 Carberry Center', 'Male'),
(218, 'Livvie', 'Santostefano.', '67 Paget Parkway', 'Female'),
(219, 'Lenette', 'Goody', '87 Schmedeman Avenue', 'Female'),
(220, 'Delano', 'MacCartney', '7 Hazelcrest Alley', 'Male'),
(221, 'Lyndsie', 'Hew', '1308 Colorado Court', 'Female'),
(222, 'Gaven', 'Aspell', '67 Mallard Hill', 'Male'),
(223, 'Sianna', 'Snary', '32 Northport Center', 'Female'),
(224, 'Blondy', 'Pulsford', '993 Pepper Wood Terrace', 'Female'),
(225, 'Rose', 'Stowers', '9 Declaration Park', 'Female'),
(226, 'Anya', 'Crichmere', '97 Ramsey Hill', 'Female'),
(227, 'Yvon', 'Finker', '7 Memorial Circle', 'Male'),
(228, 'Broddie', 'Hugo', '780 International Terrace', 'Male'),
(229, 'Dori', 'Kilpatrick', '100 Atwood Way', 'Female'),
(230, 'Sande', 'Rodden', '760 Trailsway Parkway', 'Female'),
(231, 'Moll', 'Hetterich', '863 Forest Dale Trail', 'Female'),
(232, 'Adelle', 'Idney', '24314 Burrows Point', 'Female'),
(233, 'Brandon', 'Fraczak', '490 Warrior Hill', 'Male'),
(234, 'Ebeneser', 'Penddreth', '4 Summit Circle', 'Male'),
(235, 'Waite', 'Spira', '6 Lukken Junction', 'Male'),
(236, 'Barbabas', 'Franklin', '80 Ridgeway Trail', 'Male'),
(237, 'Reyna', 'Battershall', '79 Nevada Park', 'Female'),
(238, 'Luelle', 'Eaglestone', '78566 American Ash Center', 'Female'),
(239, 'Town', 'Marwick', '87 Cambridge Avenue', 'Male'),
(240, 'Myrna', 'Hymas', '665 Commercial Road', 'Female'),
(241, 'Bail', 'Walework', '0 Southridge Avenue', 'Male'),
(242, 'Dirk', 'Sharram', '4376 Summer Ridge Point', 'Male'),
(243, 'Asher', 'Siaskowski', '2485 Lukken Alley', 'Male'),
(244, 'Laina', 'Danell', '5818 Sycamore Park', 'Female'),
(245, 'Celesta', 'Rutherford', '5 Green Plaza', 'Female'),
(246, 'Chancey', 'Reed', '2 Lukken Crossing', 'Male'),
(247, 'Clayson', 'Cowdroy', '2503 Judy Circle', 'Male'),
(248, 'Eada', 'Janus', '6 Hanover Way', 'Female'),
(249, 'Brenn', 'Durdan', '3 Lakewood Way', 'Female'),
(250, 'Bambie', 'Moreing', '637 Pepper Wood Park', 'Female'),
(251, 'Breanne', 'Bingle', '6514 Pond Terrace', 'Female'),
(252, 'Sim', 'Pitchford', '46 Bay Place', 'Male'),
(253, 'Dalton', 'Welton', '737 American Ash Way', 'Male'),
(254, 'Pate', 'Fairbairn', '55696 Harper Park', 'Male'),
(255, 'Saundra', 'Pawden', '072 Rowland Point', 'Male'),
(256, 'Karil', 'Ovenell', '8706 Chinook Alley', 'Female'),
(257, 'Alyss', 'Dunkerly', '7 Iowa Plaza', 'Female'),
(258, 'Charlton', 'Kemmons', '72 Bultman Center', 'Male'),
(259, 'Kimble', 'Richemond', '231 Barby Place', 'Male'),
(260, 'Barret', 'Pressland', '84 Boyd Street', 'Male'),
(261, 'Hermon', 'Tomek', '1 Manitowish Way', 'Male'),
(262, 'Radcliffe', 'Roxburch', '66 Brickson Park Hill', 'Male'),
(263, 'Roseann', 'Tzarkov', '254 Fremont Center', 'Female'),
(264, 'Jessalyn', 'Robjohns', '4707 Thackeray Crossing', 'Female'),
(265, 'Haydon', 'Livett', '202 Myrtle Place', 'Male'),
(266, 'Alice', 'Kirby', '7450 Ludington Avenue', 'Female'),
(267, 'Pattie', 'Easom', '22 Sheridan Park', 'Male'),
(268, 'Mae', 'Holtom', '41 Eastlawn Crossing', 'Female'),
(269, 'Mikol', 'Pessolt', '748 Merry Road', 'Male'),
(270, 'Mick', 'Brownlea', '14 Crownhardt Point', 'Male'),
(271, 'Teddie', 'Seeds', '0 Birchwood Alley', 'Male'),
(272, 'Brigham', 'Anand', '42 Buhler Junction', 'Male'),
(273, 'Demeter', 'Aloway', '37 Arrowood Lane', 'Female'),
(274, 'Quintilla', 'Wyldbore', '92 Lakewood Gardens Plaza', 'Female'),
(275, 'Moise', 'Vaughan', '6245 Main Circle', 'Male'),
(276, 'Louisette', 'Spriggin', '52 Amoth Terrace', 'Female'),
(277, 'Bette-ann', 'Gaffney', '75953 Magdeline Way', 'Female'),
(278, 'Dewitt', 'Brewse', '9 Rigney Park', 'Male'),
(279, 'Inga', 'Kleanthous', '2333 Kim Terrace', 'Female'),
(280, 'Paige', 'Chirm', '76 Loftsgordon Avenue', 'Female'),
(281, 'Siward', 'Rosewarne', '2481 Arizona Terrace', 'Male'),
(282, 'Emelina', 'McConway', '16 North Trail', 'Female'),
(283, 'Donovan', 'Marwood', '9 Gerald Court', 'Male'),
(284, 'Ignace', 'Roper', '5306 American Ash Street', 'Male'),
(285, 'Christoper', 'Romaines', '219 Hanson Terrace', 'Male'),
(286, 'Cecily', 'Vicent', '7 Russell Center', 'Female'),
(287, 'Linn', 'Yann', '6013 Pierstorff Alley', 'Female'),
(288, 'Harriett', 'Nears', '36 Cardinal Avenue', 'Female'),
(289, 'Carmon', 'Cullity', '5 Pierstorff Road', 'Female'),
(290, 'Lora', 'Elgy', '552 Eastwood Court', 'Female'),
(291, 'Audrey', 'McKerton', '25328 Forster Way', 'Female'),
(292, 'Laurene', 'Craske', '366 Springs Junction', 'Female'),
(293, 'Clevie', 'Percifer', '1493 Stone Corner Junction', 'Male'),
(294, 'Vikki', 'Mangeon', '4254 Summit Alley', 'Female'),
(295, 'Dallas', 'Trask', '2619 Bunting Point', 'Male'),
(296, 'Hailey', 'Berrill', '2 Buena Vista Center', 'Male'),
(297, 'Gabriello', 'Wentworth', '1 Carpenter Center', 'Male'),
(298, 'Roxine', 'Peltzer', '2825 Fairview Trail', 'Female'),
(299, 'Lorin', 'Derbyshire', '380 Steensland Avenue', 'Male'),
(300, 'Berky', 'McEniry', '130 Crownhardt Pass', 'Male'),
(301, 'Gabie', 'Maine', '0587 Fairview Crossing', 'Male'),
(302, 'Brody', 'Klimpke', '23 Arkansas Junction', 'Male');

-- 
-- Dumping data for table users
--
INSERT INTO users VALUES
(1, 'leandro', 'admin123'),
(2, 'flavio', 'user123');

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;