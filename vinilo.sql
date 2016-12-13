BEGIN TRANSACTION;
CREATE TABLE "track" (
	`trackindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`tracktitle`	TEXT,
	`tracknum`	INTEGER DEFAULT 0,
	`trackartist`	INTEGER,
	`trackalbum`	INTEGER,
	`trackgenre`	INTEGER,
	`trackyear`	INTEGER DEFAULT 0000,
	`trackbits`	INTEGER,
	`trackchanels`	INTEGER,
	`tracklength`	INTEGER,
	`tracksample`	INTEGER,
	`tracktimemeta`	TEXT,
	`tracktimefile`	TEXT,
	`trackpath`	TEXT,
	`trackdirectory`	TEXT,
	`trackname`	TEXT,
	`trackextension`	INTEGER,
	`trackversion`	INTEGER,
	`tracksize`	INTEGER,
	`trackcrc32`	TEXT,
	FOREIGN KEY(`trackartist`) REFERENCES `artist` ( `artistindx` ),
	FOREIGN KEY(`trackalbum`) REFERENCES `album` ( `albumindx` ),
	FOREIGN KEY(`trackgenre`) REFERENCES `genre` ( `genreindx` ),
	FOREIGN KEY(`trackextension`) REFERENCES `filesclass` ( `fcsindx` ),
	FOREIGN KEY(`trackversion`) REFERENCES `filesversion` ( `fverindx` )
);
CREATE TABLE "genre" (
	`genreindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`genrename`	TEXT NOT NULL UNIQUE
);
INSERT INTO `genre` VALUES (1,'Rock');
INSERT INTO `genre` VALUES (2,'Pop');
INSERT INTO `genre` VALUES (3,'Electrónica');
INSERT INTO `genre` VALUES (4,'Rap');
INSERT INTO `genre` VALUES (5,'Rock alternativo');
INSERT INTO `genre` VALUES (6,'Hip-Hop');
INSERT INTO `genre` VALUES (7,'Reggae');
INSERT INTO `genre` VALUES (8,'Bachata');
INSERT INTO `genre` VALUES (9,'Reggaeton');
INSERT INTO `genre` VALUES (10,'Rock and roll');
INSERT INTO `genre` VALUES (11,'Clasica');
INSERT INTO `genre` VALUES (12,'Rock progresivo');
INSERT INTO `genre` VALUES (13,'Banda');
INSERT INTO `genre` VALUES (14,'Trash metal');
INSERT INTO `genre` VALUES (15,'Balada');
INSERT INTO `genre` VALUES (16,'Salsa');
INSERT INTO `genre` VALUES (17,'Punk');
INSERT INTO `genre` VALUES (18,'Jazz');
INSERT INTO `genre` VALUES (19,'Rock sinfonico');
INSERT INTO `genre` VALUES (20,'Grunge');
INSERT INTO `genre` VALUES (21,'Cumbia');
INSERT INTO `genre` VALUES (22,'Ska');
INSERT INTO `genre` VALUES (23,'Dance');
INSERT INTO `genre` VALUES (24,'Tecno');
INSERT INTO `genre` VALUES (25,'Disco');
INSERT INTO `genre` VALUES (26,'Country');
INSERT INTO `genre` VALUES (27,'Blues');
INSERT INTO `genre` VALUES (28,'Rhythm and Blues');
INSERT INTO `genre` VALUES (29,'Ópera');
INSERT INTO `genre` VALUES (30,'House');
INSERT INTO `genre` VALUES (31,'Tango');
INSERT INTO `genre` VALUES (32,'Vallenato');
INSERT INTO `genre` VALUES (33,'Ranchero');
INSERT INTO `genre` VALUES (34,'Acid rock');
INSERT INTO `genre` VALUES (35,'Samba');
INSERT INTO `genre` VALUES (36,'Rock mestizo');
INSERT INTO `genre` VALUES (37,'Soul');
INSERT INTO `genre` VALUES (38,'Trance');
INSERT INTO `genre` VALUES (39,'Mambo');
INSERT INTO `genre` VALUES (40,'Merengue tipico');
INSERT INTO `genre` VALUES (41,'Art-rock');
INSERT INTO `genre` VALUES (42,'Electroacustica');
INSERT INTO `genre` VALUES (43,'Flamenco');
INSERT INTO `genre` VALUES (44,'Sicodelica');
INSERT INTO `genre` VALUES (45,'Bolero');
INSERT INTO `genre` VALUES (46,'Trip-hop');
INSERT INTO `genre` VALUES (47,'Dancehall');
INSERT INTO `genre` VALUES (48,'Underground');
INSERT INTO `genre` VALUES (49,'Folk');
INSERT INTO `genre` VALUES (50,'Merengue urbano');
INSERT INTO `genre` VALUES (51,'Swing');
INSERT INTO `genre` VALUES (52,'Deep house');
INSERT INTO `genre` VALUES (53,'Cancion de protesta');
INSERT INTO `genre` VALUES (54,'Trova');
INSERT INTO `genre` VALUES (55,'New age');
INSERT INTO `genre` VALUES (56,'Free-Jazz');
INSERT INTO `genre` VALUES (57,'Bossa nova');
INSERT INTO `genre` VALUES (58,'Ambient');
INSERT INTO `genre` VALUES (59,'Cool-Jazz');
INSERT INTO `genre` VALUES (60,'World music');
INSERT INTO `genre` VALUES (61,'Adult orient rock');
INSERT INTO `genre` VALUES (62,'Etno-rock');
INSERT INTO `genre` VALUES (63,'Trancecore');
INSERT INTO `genre` VALUES (64,'Nueva onda');
INSERT INTO `genre` VALUES (65,'Musica minimalista');
INSERT INTO `genre` VALUES (66,'Arena filtres');
INSERT INTO `genre` VALUES (67,'Acid');
INSERT INTO `genre` VALUES (68,'Candombia');
INSERT INTO `genre` VALUES (69,'Ragtime');
INSERT INTO `genre` VALUES (70,'Ye-yé');
INSERT INTO `genre` VALUES (71,'Bebop');
INSERT INTO `genre` VALUES (72,'Woogie');
INSERT INTO `genre` VALUES (73,'Gabber');
INSERT INTO `genre` VALUES (74,'Break-beat');
INSERT INTO `genre` VALUES (75,'Garage');
INSERT INTO `genre` VALUES (76,'Musica concreta');
INSERT INTO `genre` VALUES (77,'Acid Jazz');
INSERT INTO `genre` VALUES (78,'Agropop');
INSERT INTO `genre` VALUES (79,'Calypso');
INSERT INTO `genre` VALUES (80,'Zarzuela');
INSERT INTO `genre` VALUES (81,'Eurobeat');
CREATE TABLE "filesversion" (
	`fvnindx`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`fvnname`	TEXT NOT NULL UNIQUE,
	`fvnshort`	TEXT
);
INSERT INTO `filesversion` VALUES (1,'Audio file with ID3 version 2.3.0','1');
INSERT INTO `filesversion` VALUES (2,'Audio file with ID3 version 2.3.0. contains','1');
INSERT INTO `filesversion` VALUES (3,'Ogg data. Vorbis audio. stereo. 44100 Hz. ~192000 bps. created by','1');
INSERT INTO `filesversion` VALUES (4,'Audio file with ID3 version 2.3.0, contains',NULL);
INSERT INTO `filesversion` VALUES (5,'Ogg data, Vorbis audio, stereo, 44100 Hz, ~192000 bps, created by',NULL);
CREATE TABLE `filesclass` (
	`fcsindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`fcsname`	TEXT UNIQUE
);
INSERT INTO `filesclass` VALUES (1,'2016-12-12#01:17:52.402');
INSERT INTO `filesclass` VALUES (2,'mp3');
INSERT INTO `filesclass` VALUES (3,'ogg');
CREATE TABLE "country" (
	`ctryindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`ctrycode2`	TEXT NOT NULL UNIQUE,
	`ctrycode3`	TEXT NOT NULL UNIQUE,
	`ctryname`	TEXT NOT NULL,
	`ctrynameiso`	TEXT,
	`ctrycapital`	TEXT,
	`ctryremark`	TEXT
);
INSERT INTO `country` VALUES (1,'XX','XXX','None','','None','');
INSERT INTO `country` VALUES (2,'AF','AFG','Afghanistan','','Kabul','');
INSERT INTO `country` VALUES (3,'AL','ALB','Albania','','Tirana','');
INSERT INTO `country` VALUES (4,'DZ','DZA','Algeria','','Algiers','');
INSERT INTO `country` VALUES (5,'AS','ASM','American Samoa','','Pago Pago','');
INSERT INTO `country` VALUES (6,'AD','AND','Andorra','','Andorra la Vella','');
INSERT INTO `country` VALUES (7,'AO','AGO','Angola','','Luanda','');
INSERT INTO `country` VALUES (8,'AI','AIA','Anguilla','','The Valley','');
INSERT INTO `country` VALUES (9,'AQ','ATA','Antarctica','','','');
INSERT INTO `country` VALUES (10,'AR','ARG','Argentina','','Buenos Aires','');
INSERT INTO `country` VALUES (11,'AM','ARM','Armenia','','Yerevan','');
INSERT INTO `country` VALUES (12,'AW','ABW','Aruba','','Oranjestad','');
INSERT INTO `country` VALUES (13,'AU','AUS','Australia','','Canberra','');
INSERT INTO `country` VALUES (14,'AT','AUT','Austria','','Vienna','');
INSERT INTO `country` VALUES (15,'AZ','AZE','Azerbaijan','','Baku','');
INSERT INTO `country` VALUES (16,'BS','BHS','Bahamas','','Nassau','');
INSERT INTO `country` VALUES (17,'BH','BHR','Bahrain','','Manama','');
INSERT INTO `country` VALUES (18,'BD','BGD','Bangladesh','','Dhaka','');
INSERT INTO `country` VALUES (19,'BB','BRB','Barbados','','Bridgetown','');
INSERT INTO `country` VALUES (20,'BY','BLR','Belarus','','Minsk','');
INSERT INTO `country` VALUES (21,'BE','BEL','Belgium','','Brussels','');
INSERT INTO `country` VALUES (22,'BZ','BLZ','Belize','','Belmopan','');
INSERT INTO `country` VALUES (23,'BJ','BEN','Benin','','Porto-Novo','');
INSERT INTO `country` VALUES (24,'BM','BMU','Bermuda','','Hamilton','');
INSERT INTO `country` VALUES (25,'BT','BTN','Bhutan','','Thimphu','');
INSERT INTO `country` VALUES (26,'BO','BOL','Bolivia','','La Paz','');
INSERT INTO `country` VALUES (27,'BA','BIH','Bosnia and Herzegovina','','Sarajevo','');
INSERT INTO `country` VALUES (28,'BW','BWA','Botswana','','Gaborone','');
INSERT INTO `country` VALUES (29,'BR','BRA','Brazil','','Brasília','');
INSERT INTO `country` VALUES (30,'VG','VGB','British Virgin Islands','','Road Town','');
INSERT INTO `country` VALUES (31,'BN','BRN','Brunei','','Bandar Seri Begawan','');
INSERT INTO `country` VALUES (32,'BG','BGR','Bulgaria','','Sofia','');
INSERT INTO `country` VALUES (33,'BF','BFA','Burkina Faso','','Ouagadougou','');
INSERT INTO `country` VALUES (34,'BI','BDI','Burundi','','Bujumbura','');
INSERT INTO `country` VALUES (35,'KH','KHM','Cambodia','','Phnom Penh','');
INSERT INTO `country` VALUES (36,'CM','CMR','Cameroon','','Yaoundé','');
INSERT INTO `country` VALUES (37,'CA','CAN','Canada','','Ottawa','');
INSERT INTO `country` VALUES (38,'CV','CPV','Cape Verde','','Praia','');
INSERT INTO `country` VALUES (39,'KY','CYM','Cayman Islands','','George Town','');
INSERT INTO `country` VALUES (40,'CF','CAF','Central African Republic','','Bangui','');
INSERT INTO `country` VALUES (41,'CL','CHL','Chile','','Santiago','');
INSERT INTO `country` VALUES (42,'CN','CHN','China','','Beijing','');
INSERT INTO `country` VALUES (43,'CO','COL','Colombia','','Bogotá','');
INSERT INTO `country` VALUES (44,'KM','COM','Comoros','','Moroni','');
INSERT INTO `country` VALUES (45,'CK','COK','Cook Islands','','Avarua','');
INSERT INTO `country` VALUES (46,'CR','CRI','Costa Rica','','San José','');
INSERT INTO `country` VALUES (47,'HR','HRV','Croatia','','Zagreb','');
INSERT INTO `country` VALUES (48,'CU','CUB','Cuba','','Havana','');
INSERT INTO `country` VALUES (49,'CW','CUW','Curacao','','Willemstad','');
INSERT INTO `country` VALUES (50,'CY','CYP','Cyprus','','Nicosia','');
INSERT INTO `country` VALUES (51,'CZ','CZE','Czech Republic','','Prague','');
INSERT INTO `country` VALUES (52,'CD','COD','Democratic Republic of Congo','','Kinshasa','');
INSERT INTO `country` VALUES (53,'DK','DNK','Denmark','','Copenhagen','');
INSERT INTO `country` VALUES (54,'DJ','DJI','Djibouti','','Djibouti','');
INSERT INTO `country` VALUES (55,'DM','DMA','Dominica','','Roseau','');
INSERT INTO `country` VALUES (56,'DO','DOM','Dominican Republic','','Santo Domingo','');
INSERT INTO `country` VALUES (57,'TL','TLS','East Timor','','Dili','');
INSERT INTO `country` VALUES (58,'EC','ECU','Ecuador','','Quito','');
INSERT INTO `country` VALUES (59,'EG','EGY','Egypt','','Cairo','');
INSERT INTO `country` VALUES (60,'SV','SLV','El Salvador','','San Salvador','');
INSERT INTO `country` VALUES (61,'GQ','GNQ','Equatorial Guinea','','Malabo','');
INSERT INTO `country` VALUES (62,'ER','ERI','Eritrea','','Asmara','');
INSERT INTO `country` VALUES (63,'EE','EST','Estonia','','Tallinn','');
INSERT INTO `country` VALUES (64,'ET','ETH','Ethiopia','','Addis Ababa','');
INSERT INTO `country` VALUES (65,'FK','FLK','Falkland Islands','','Stanley','');
INSERT INTO `country` VALUES (66,'FO','FRO','Faroe Islands','','Tórshavn','');
INSERT INTO `country` VALUES (67,'FJ','FJI','Fiji','','Suva','');
INSERT INTO `country` VALUES (68,'FI','FIN','Finland','','Helsinki','');
INSERT INTO `country` VALUES (69,'FR','FRA','France','','Paris','');
INSERT INTO `country` VALUES (70,'PF','PYF','French Polynesia','','Papeete','');
INSERT INTO `country` VALUES (71,'GA','GAB','Gabon','','Libreville','');
INSERT INTO `country` VALUES (72,'GM','GMB','Gambia','','Banjul','');
INSERT INTO `country` VALUES (73,'GE','GEO','Georgia','','Tbilisi','');
INSERT INTO `country` VALUES (74,'DE','DEU','Germany','','Berlin','');
INSERT INTO `country` VALUES (75,'GH','GHA','Ghana','','Accra','');
INSERT INTO `country` VALUES (76,'GI','GIB','Gibraltar','','Gibraltar','');
INSERT INTO `country` VALUES (77,'GR','GRC','Greece','','Athens','');
INSERT INTO `country` VALUES (78,'GL','GRL','Greenland','','Nuuk','');
INSERT INTO `country` VALUES (79,'GP','GLP','Guadeloupe','','Basse-Terre','');
INSERT INTO `country` VALUES (80,'GU','GUM','Guam','','Hagåtña','');
INSERT INTO `country` VALUES (81,'GT','GTM','Guatemala','','Guatemala City','');
INSERT INTO `country` VALUES (82,'GN','GIN','Guinea','','Conakry','');
INSERT INTO `country` VALUES (83,'GW','GNB','Guinea-Bissau','','Bissau','');
INSERT INTO `country` VALUES (84,'GY','GUY','Guyana','','Georgetown','');
INSERT INTO `country` VALUES (85,'HT','HTI','Haiti','','Port-au-Prince','');
INSERT INTO `country` VALUES (86,'HN','HND','Honduras','','Tegucigalpa','');
INSERT INTO `country` VALUES (87,'HK','HKG','Hong Kong','','Hong Kong','');
INSERT INTO `country` VALUES (88,'HU','HUN','Hungary','','Budapest','');
INSERT INTO `country` VALUES (89,'IS','ISL','Iceland','','Reykjavík','');
INSERT INTO `country` VALUES (90,'IN','IND','India','','New Delhi','');
INSERT INTO `country` VALUES (91,'ID','IDN','Indonesia','','Jakarta','');
INSERT INTO `country` VALUES (92,'IR','IRN','Iran','','Tehran','');
INSERT INTO `country` VALUES (93,'IQ','IRQ','Iraq','','Baghdad','');
INSERT INTO `country` VALUES (94,'IE','IRL','Ireland','','Dublin','');
INSERT INTO `country` VALUES (95,'IM','IMN','Isle of Man','','Douglas, Isle of Man','');
INSERT INTO `country` VALUES (96,'IL','ISR','Israel','','Jerusalem','');
INSERT INTO `country` VALUES (97,'IT','ITA','Italy','','Rome','');
INSERT INTO `country` VALUES (98,'CI','CIV','Ivory Coast','','Yamoussoukro','');
INSERT INTO `country` VALUES (99,'JM','JAM','Jamaica','','Kingston','');
INSERT INTO `country` VALUES (100,'JP','JPN','Japan','','Tokyo','');
INSERT INTO `country` VALUES (101,'JO','JOR','Jordan','','Amman','');
INSERT INTO `country` VALUES (102,'KZ','KAZ','Kazakhstan','','Astana','');
INSERT INTO `country` VALUES (103,'KE','KEN','Kenya','','Nairobi','');
INSERT INTO `country` VALUES (104,'KI','KIR','Kiribati','','Tarawa','');
INSERT INTO `country` VALUES (105,'XK','XKX','Kosovo','','Pristina','');
INSERT INTO `country` VALUES (106,'KW','KWT','Kuwait','','Kuwait City','');
INSERT INTO `country` VALUES (107,'KG','KGZ','Kyrgyzstan','','Bishkek','');
INSERT INTO `country` VALUES (108,'LA','LAO','Laos','','Vientiane','');
INSERT INTO `country` VALUES (109,'LV','LVA','Latvia','','Riga','');
INSERT INTO `country` VALUES (110,'LB','LBN','Lebanon','','Beirut','');
INSERT INTO `country` VALUES (111,'LS','LSO','Lesotho','','Maseru','');
INSERT INTO `country` VALUES (112,'LR','LBR','Liberia','','Monrovia','');
INSERT INTO `country` VALUES (113,'LY','LBY','Libya','','Tripolis','');
INSERT INTO `country` VALUES (114,'LI','LIE','Liechtenstein','','Vaduz','');
INSERT INTO `country` VALUES (115,'LT','LTU','Lithuania','','Vilnius','');
INSERT INTO `country` VALUES (116,'LU','LUX','Luxembourg','','Luxembourg','');
INSERT INTO `country` VALUES (117,'MO','MAC','Macau','','Macao','');
INSERT INTO `country` VALUES (118,'MK','MKD','Macedonia','','Skopje','');
INSERT INTO `country` VALUES (119,'MG','MDG','Madagascar','','Antananarivo','');
INSERT INTO `country` VALUES (120,'MW','MWI','Malawi','','Lilongwe','');
INSERT INTO `country` VALUES (121,'MY','MYS','Malaysia','','Kuala Lumpur','');
INSERT INTO `country` VALUES (122,'MV','MDV','Maldives','','Malé','');
INSERT INTO `country` VALUES (123,'ML','MLI','Mali','','Bamako','');
INSERT INTO `country` VALUES (124,'MT','MLT','Malta','','Valletta','');
INSERT INTO `country` VALUES (125,'MH','MHL','Marshall Islands','','Majuro','');
INSERT INTO `country` VALUES (126,'MR','MRT','Mauritania','','Nouakchott','');
INSERT INTO `country` VALUES (127,'MU','MUS','Mauritius','','Port Louis','');
INSERT INTO `country` VALUES (128,'MX','MEX','Mexico','','Mexico City','');
INSERT INTO `country` VALUES (129,'FM','FSM','Micronesia','','Palikir','');
INSERT INTO `country` VALUES (130,'MD','MDA','Moldova','','Chişinău','');
INSERT INTO `country` VALUES (131,'MC','MCO','Monaco','','Monaco','');
INSERT INTO `country` VALUES (132,'MN','MNG','Mongolia','','Ulan Bator','');
INSERT INTO `country` VALUES (133,'ME','MNE','Montenegro','','Podgorica','');
INSERT INTO `country` VALUES (134,'MS','MSR','Montserrat','','Plymouth','');
INSERT INTO `country` VALUES (135,'MA','MAR','Morocco','','Rabat','');
INSERT INTO `country` VALUES (136,'MZ','MOZ','Mozambique','','Maputo','');
INSERT INTO `country` VALUES (137,'MM','MMR','Myanmar','','Nay Pyi Taw','');
INSERT INTO `country` VALUES (138,'NA','NAM','Namibia','','Windhoek','');
INSERT INTO `country` VALUES (139,'NR','NRU','Nauru','','Yaren','');
INSERT INTO `country` VALUES (140,'NP','NPL','Nepal','','Kathmandu','');
INSERT INTO `country` VALUES (141,'NL','NLD','Netherlands','','Amsterdam','');
INSERT INTO `country` VALUES (142,'NC','NCL','New Caledonia','','Nouméa','');
INSERT INTO `country` VALUES (143,'NZ','NZL','New Zealand','','Wellington','');
INSERT INTO `country` VALUES (144,'NI','NIC','Nicaragua','','Managua','');
INSERT INTO `country` VALUES (145,'NE','NER','Niger','','Niamey','');
INSERT INTO `country` VALUES (146,'NG','NGA','Nigeria','','Abuja','');
INSERT INTO `country` VALUES (147,'NU','NIU','Niue','','Alofi','');
INSERT INTO `country` VALUES (148,'NF','NFK','Norfolk Island','','Kingston','');
INSERT INTO `country` VALUES (149,'KP','PRK','North Korea','','Pyongyang','');
INSERT INTO `country` VALUES (150,'MP','MNP','Northern Mariana Islands','','Saipan','');
INSERT INTO `country` VALUES (151,'NO','NOR','Norway','','Oslo','');
INSERT INTO `country` VALUES (152,'OM','OMN','Oman','','Muscat','');
INSERT INTO `country` VALUES (153,'PK','PAK','Pakistan','','Islamabad','');
INSERT INTO `country` VALUES (154,'PW','PLW','Palau','','Melekeok','');
INSERT INTO `country` VALUES (155,'PA','PAN','Panama','','Panama City','');
INSERT INTO `country` VALUES (156,'PG','PNG','Papua New Guinea','','Port Moresby','');
INSERT INTO `country` VALUES (157,'PY','PRY','Paraguay','','Asunción','');
INSERT INTO `country` VALUES (158,'PE','PER','Peru','','Lima','');
INSERT INTO `country` VALUES (159,'PH','PHL','Philippines','','Manila','');
INSERT INTO `country` VALUES (160,'PN','PCN','Pitcairn Islands','','Adamstown','');
INSERT INTO `country` VALUES (161,'PL','POL','Poland','','Warsaw','');
INSERT INTO `country` VALUES (162,'PT','PRT','Portugal','','Lisbon','');
INSERT INTO `country` VALUES (163,'PR','PRI','Puerto Rico','','San Juan','');
INSERT INTO `country` VALUES (164,'QA','QAT','Qatar','','Doha','');
INSERT INTO `country` VALUES (165,'CG','COG','Republic of the Congo','','Brazzaville','');
INSERT INTO `country` VALUES (166,'RE','REU','Reunion','','Saint-Denis','');
INSERT INTO `country` VALUES (167,'RO','ROU','Romania','','Bucharest','');
INSERT INTO `country` VALUES (168,'RU','RUS','Russia','','Moscow','');
INSERT INTO `country` VALUES (169,'RW','RWA','Rwanda','','Kigali','');
INSERT INTO `country` VALUES (170,'BL','BLM','Saint Barthélemy','','Gustavia','');
INSERT INTO `country` VALUES (171,'SH','SHN','Saint Helena','','Jamestown','');
INSERT INTO `country` VALUES (172,'KN','KNA','Saint Kitts and Nevis','','Basseterre','');
INSERT INTO `country` VALUES (173,'LC','LCA','Saint Lucia','','Castries','');
INSERT INTO `country` VALUES (174,'MF','MAF','Saint Martin','','Marigot','');
INSERT INTO `country` VALUES (175,'PM','SPM','Saint Pierre and Miquelon','','Saint-Pierre','');
INSERT INTO `country` VALUES (176,'VC','VCT','Saint Vincent and the Grenadines','','Kingstown','');
INSERT INTO `country` VALUES (177,'WS','WSM','Samoa','','Apia','');
INSERT INTO `country` VALUES (178,'SM','SMR','San Marino','','San Marino','');
INSERT INTO `country` VALUES (179,'ST','STP','Sao Tome and Principe','','São Tomé','');
INSERT INTO `country` VALUES (180,'SA','SAU','Saudi Arabia','','Riyadh','');
INSERT INTO `country` VALUES (181,'SN','SEN','Senegal','','Dakar','');
INSERT INTO `country` VALUES (182,'RS','SRB','Serbia','','Belgrade','');
INSERT INTO `country` VALUES (183,'SC','SYC','Seychelles','','Victoria','');
INSERT INTO `country` VALUES (184,'SL','SLE','Sierra Leone','','Freetown','');
INSERT INTO `country` VALUES (185,'SG','SGP','Singapore','','Singapur','');
INSERT INTO `country` VALUES (186,'SK','SVK','Slovakia','','Bratislava','');
INSERT INTO `country` VALUES (187,'SI','SVN','Slovenia','','Ljubljana','');
INSERT INTO `country` VALUES (188,'SB','SLB','Solomon Islands','','Honiara','');
INSERT INTO `country` VALUES (189,'SO','SOM','Somalia','','Mogadishu','');
INSERT INTO `country` VALUES (190,'ZA','ZAF','South Africa','','Pretoria','');
INSERT INTO `country` VALUES (191,'KR','KOR','South Korea','','Seoul','');
INSERT INTO `country` VALUES (192,'SS','SSD','South Sudan','','Juba','');
INSERT INTO `country` VALUES (193,'ES','ESP','Spain','','Madrid','');
INSERT INTO `country` VALUES (194,'LK','LKA','Sri Lanka','','Colombo','');
INSERT INTO `country` VALUES (195,'SD','SDN','Sudan','','Khartoum','');
INSERT INTO `country` VALUES (196,'SR','SUR','Suriname','','Paramaribo','');
INSERT INTO `country` VALUES (197,'SZ','SWZ','Swaziland','','Mbabane','');
INSERT INTO `country` VALUES (198,'SE','SWE','Sweden','','Stockholm','');
INSERT INTO `country` VALUES (199,'CH','CHE','Switzerland','','Berne','');
INSERT INTO `country` VALUES (200,'SY','SYR','Syria','','Damascus','');
INSERT INTO `country` VALUES (201,'TW','TWN','Taiwan','','Taipei','');
INSERT INTO `country` VALUES (202,'TJ','TJK','Tajikistan','','Dushanbe','');
INSERT INTO `country` VALUES (203,'TZ','TZA','Tanzania','','Dodoma','');
INSERT INTO `country` VALUES (204,'TH','THA','Thailand','','Bangkok','');
INSERT INTO `country` VALUES (205,'TG','TGO','Togo','','Lomé','');
INSERT INTO `country` VALUES (206,'TK','TKL','Tokelau','','','');
INSERT INTO `country` VALUES (207,'TT','TTO','Trinidad and Tobago','','Port of Spain','');
INSERT INTO `country` VALUES (208,'TN','TUN','Tunisia','','Tunis','');
INSERT INTO `country` VALUES (209,'TR','TUR','Turkey','','Ankara','');
INSERT INTO `country` VALUES (210,'TM','TKM','Turkmenistan','','Ashgabat','');
INSERT INTO `country` VALUES (211,'TV','TUV','Tuvalu','','Funafuti','');
INSERT INTO `country` VALUES (212,'UG','UGA','Uganda','','Kampala','');
INSERT INTO `country` VALUES (213,'UA','UKR','Ukraine','','Kiev','');
INSERT INTO `country` VALUES (214,'AE','ARE','United Arab Emirates','','Abu Dhabi','');
INSERT INTO `country` VALUES (215,'GB','GBR','United Kingdom','','London','');
INSERT INTO `country` VALUES (216,'US','USA','United States','','Washington','');
INSERT INTO `country` VALUES (217,'UY','URY','Uruguay','','Montevideo','');
INSERT INTO `country` VALUES (218,'UZ','UZB','Uzbekistan','','Tashkent','');
INSERT INTO `country` VALUES (219,'VU','VUT','Vanuatu','','Port Vila','');
INSERT INTO `country` VALUES (220,'VA','VAT','Vatican','','Vatican City','');
INSERT INTO `country` VALUES (221,'VE','VEN','Venezuela','','Caracas','');
INSERT INTO `country` VALUES (222,'VN','VNM','Vietnam','','Hanoi','');
INSERT INTO `country` VALUES (223,'EH','ESH','Western Sahara','','El-Aaiun','');
INSERT INTO `country` VALUES (224,'YE','YEM','Yemen','','San‘a’','');
INSERT INTO `country` VALUES (225,'ZM','ZMB','Zambia','','Lusaka','');
INSERT INTO `country` VALUES (226,'ZW','ZWE','Zimbabwe','','Harare','');
CREATE TABLE "artist" (
	`artistindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`artistname`	TEXT NOT NULL UNIQUE,
	`artistcountry`	INTEGER NOT NULL DEFAULT 1,
	FOREIGN KEY(`artistcountry`) REFERENCES `country` ( `ctryindx` )
);
CREATE TABLE "album" (
	`albumindx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`albumname`	TEXT NOT NULL UNIQUE,
	`albumyear`	INTEGER NOT NULL DEFAULT 0,
	`albumartist`	INTEGER NOT NULL DEFAULT 1,
	FOREIGN KEY(`albumartist`) REFERENCES `artist` ( `artistindx` )
);
CREATE VIEW "view_song" AS
select
trackindx,
tracktitle,
tracknum,
albumname as trackalbum,
trackalbum as trackalbumid,
artistname as trackartist,
trackartist as trackartistid,
ctrycode2 as trackctrycode2,
ctryname as trackctryname,
artistcountry as trackctryid,
genrename as trackgenre,
trackgenre as trackgenreid,
trackyear,
trackdirectory,
trackname,
tracklength,
trackbits,
tracksample,
fvnname as trackversion,
fcsname as trackclass

from track

left join  album on trackalbum=albumindx
left join  artist on trackartist=artistindx
left join  country on artistcountry=ctryindx
left join  genre on trackgenre=genreindx
left join  filesclass on trackextension=fcsindx
left join  filesversion on trackversion=fvnindx;
CREATE VIEW "view_dirs_albums" AS
select
albumname as album,
albumindx as albumkey,
trackdirectory as folder

from track

left join  album on trackalbum=albumindx
group by album;
CREATE VIEW "view_albums" AS
select
albumname as album,
albumindx as albumkey,
albumyear,
artistname as artist,
artistindx as artistkey,
trackpath as folder

from track

left join  album on trackalbum=albumindx
left join  artist on trackartist=artistindx
group by trackartist,trackalbum;
COMMIT;
