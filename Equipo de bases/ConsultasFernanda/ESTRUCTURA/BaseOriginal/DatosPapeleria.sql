
--VALORES CATEGORIA 
-- INSERCION DE VALORES TABLA CATEGORIA
INSERT INTO CATEGORIA(nom_Categoria)
VALUES('Regalo');

INSERT INTO CATEGORIA(nom_Categoria)
VALUES('Impresión');

INSERT INTO CATEGORIA(nom_Categoria)
VALUES( 'Recarga');

INSERT INTO CATEGORIA(nom_Categoria)
VALUES( 'Oficina');

INSERT INTO CATEGORIA(nom_Categoria)
VALUES('Papel');

INSERT INTO CATEGORIA(nom_Categoria)
VALUES('Tecnología');

INSERT INTO CATEGORIA(nom_Categoria)
VALUES('Accesorios');

INSERT INTO CATEGORIA(nom_Categoria)
VALUES('Escolar');

INSERT INTO CATEGORIA(nom_Categoria)
VALUES('Mercería');

INSERT INTO CATEGORIA(nom_Categoria)
VALUES('Almacenamiento');

--SELECT * FROM CATEGORIA

--------------Valores proveedor
INSERT INTO PROVEEDOR (rs_Prov, nombre_Prov, apPat_Prov, apMat_Prov, edo_Prov, col_Prov, calle_Prov, num_Prov, cp_Prov)
VALUES 
('Nuveen New York Municipal Value Fund 2', 'Caye',	'Boultwood', 'Duckhouse', 'Florida', 'Haas', 'Scofield', 8639, 34114),
('Community First Bancshares, Inc.', 'Shoshanna','Kitcat', 'Wiseman', 'New Mexico',	'Park Meadow',	'New Castle', 9459,	87190),
('Deutsch Bk Contingent Cap Tr V',	'Bathsheba','Matyushonok',	'Juniper',	'New York',	'5th',	'Evergreen',64,	11220),
('Consolidated Communications Holdings, Inc.',	'Karlie',	'Smalley',	'Prinnett',	'Florida',	'Arizona', 'Longview', 77 ,33647),
('CDW Corporation','Ulrick','Earsman','McGrah','Nebraska', 'Ridgeway', 'Starling', 359, 68510),
('Provident Financial Holdings, Inc.', 'Kylie', 'Enion','Vedntyev',	'Texas', 'Myrtle', 'Esker',	1919, 76310),
('Ares Dynamic Credit Allocation Fund, Inc.', 'Preston', 'Edmed', 'O Cuddie', 'Kentucky' , 'Fuller'	, 'Eliot', 57, 40266),
('INTL FCStone Inc.', ' Rici', 'Hawarden', 'Darcey', 'Michigan', 'Fair Oaks', 'Anzinger', 92888, 48275),
('Global Indemnity Limited', 'Nyssa', 'Haddrell',	'Bartles',	'Iowa',	'Mockingbird',	'Saint Paul',	716, 52410),
('Hilton Grand Vacations Inc.', 'Nada', 'Allardyce', 'Bisseker', 'California', 'Sullivan', 'Truax', 31, 92648),
('iFresh Inc.', 'Agna', 'Stichall', 'Hartford', 'West Virginia', 'Portage',	'Kim', 129,	25770),
('Coca-Cola Company (The)', 'Les',	'Olrenshaw', 'Connelly', 'Massachusetts', 'Moland',	'Menomonie',5090, 1654),
('Eagle Pharmaceuticals, Inc.', 'Reinaldo',	'Normansell',	'Feldmus',	'Wisconsin', 'Carpenter',	'Loeprich',	2465,		54313),
('Nuance Communications, Inc.', 'Mignon', 'Loseby',	'Mabson', 'New York','Meadow Valley',	'Golf',	5108, 11241),
('J. Alexanders Holdings, Inc.', 'Marshal',	'Cobain','Mcmanaman', 'California','Westport', 'Cottonwood', 8, 94622),
('Hamilton Lane Incorporated', 'Gib', 'Heinzler', 'Jerome', 'Kansas', 'Hollow Ridge', 'Atwood', 23,	67215),
('First Trust Nasdaq Pharmaceuticals ETF', 'Susannah', 'Santer', 'Coetzee',	'Illinois',	'Petterle',	'Iowa',	8770,62776),
('Calamos Dynamic Convertible & Income Fund', 'Rosemonde','Loseke','Shelbourne'	,'Alabama','Lindbergh','Acker', 6737, 36134),
('Cohen & Steers Reit and Preferred Income Fund Inc',	'Lefty', 'Beranek',	'Makepeace', 'Wisconsin', 'Shopko',	'Mayfield',	79, 53205),
('Vishay Precision Group, Inc.','Minny','Enterle', 'Duffrie', 'Hawaii', 'Schiller', 'Vahlen', 84529, 96845);

-----------------Valores cliente-------------
INSERT INTO CLIENTE 
(rs_Cliente, nombre_Cliente, apPat_Cliente, apMat_Cliente, edo_Cliente, col_Cliente, calle_Cliente, num_Cliente, cp_Cliente)
VALUES 
('WageWorks, Inc.', 'Randolph','Lenard', 'Lease', 'California', 'Welch', 'Jackson', 6516, 93584),
('Tanger Factory Outlet Centers, Inc.','Damon', 'Peres',	'Gauvain', 'Indiana','Stoughton', 'Crescent Oaks', 62,47737),
('Graphic Packaging Holding Company', 'Clemente', 'Burle', 'Cockran', 'Delaware', 'Talisman','Union',9, 19805),
('Acacia Research Corporation',	'Sutton',	'Milroy',	'Gladhill',	'Arizona',	'Amoth', 'Crownhardt', 7, 85383),
('Evogene Ltd.',	'Norean', 'Stack',	'Di Matteo', 'Texas', 'Kim'	, 'Dryden', 3, 78415),
('Qiagen N.V.' ,'Artus', 'Cutting', 'Scullard', 'North Carolina', 'Oriole', 'Ronald Regan', 87097, 27425),
('ADMA Biologics Inc', 'Simona', 'Cohen', 'Monini', 'Texas', 'Graedel', 'Randy',	34866, 78682),
('First Trust Emerging Markets Small Cap AlphaDEX Fund',	'Florian', 'Cawthery', 'MacDaid',	'Mississippi', 'Brentwood',	'Russell', 40, 39216),
('Astrotech Corporation', 'Ced', 'Craxford', 'Plewright', 'District of Columbia', 'Starling', 'Monument', 1, 20099),
('Oxbridge Re Holdings Limited', 'Lee', 'Vanichkov', 'Rooney', 'Connecticut', 'Ruskin', 'Glendale', 218, 6505),
('American Airlines Group, Inc.', 'Chanda',	'Lamcken',	'Aust', 'Hawaii', 'David', 'Anderson', 7, 96845),
('TICC Capital Corp.', 'Davine', 'Chambers',	'Carrel',	'Virginia',	'Monterey',	'Calypso'	,45	,23454),
('The Goodyear Tire & Rubber Company', 'Orella','Fahy', 'Addyman',	'Louisiana',	'Merchant',	'Victoria',	4339, 70160),
('Diamond Offshore Drilling, Inc.', 'Bucky', 'Kendell', 'Baber',	'Florida', 'Birchwood',	'Lakewood', 41,	32885),
('First Trust Mega Cap AlphaDEX Fund', 'Gene','Gillet',	'Higbin','New York', 'Artisan',	'Mallard',	58,	10184),
('Cementos Pacasmayo S.A.A.', 'Georgina', 'Phizaclea',	'Davern',	'Indiana',	'Anniversary','1st', 6,	46247),
('Belden Inc', 'Vinni',	'Kewish',	'Sacco'	, 'Indiana','Leroy', 'Spenser', 2, 46406),
('Targa Resources Partners LP','Rolland',	'Mabb','Livoir', 'Arizona', 'Coleman','Fordem',9591,85260),
('Citigroup Inc.',	'Massimiliano',	'Allawy', 'Fetters', 'New York',	'Quincy',	'Boyd',	6023,	10249),
('USA Truck, Inc.',	'Jilly', 'Brumby',	'Saw', 'Illinois',	'Kropf',	'Bellgrove',	9,	60652);

---Datos email 
INSERT INTO EMAIL 
(email, id_Cliente)
VALUES
('acaizley0@lulu.com',	1),
('rfall1@i2i.jp', 2),
('tdyshart2@mlb.com',	3),
('tbufton3@cloudflare.com',	4),
('smaccracken4@redcross.org', 5),
('cfarrans5@hp.com',	6),
('askains6@cbslocal.com',	7),
('rnunan7@smugmug.com',	8),
('lanning8@yale.edu',	9),
('istoffel9@apple.com',	10),
('vperilloa@wix.com',	11),
('omacandrewb@hp.com', 12),
('dbartlettc@dion.ne.jp',	13),
('sauklandd@fastcompany.com',	14),
('sbunyarde@wordpress.com',15),
('sjenkenf@icq.com',	16),
('bstrattong@plala.or.jp',	17),
('cduckhouseh@phoca.cz',18),
('cmordani@home.pl',19),
('gashallj@goo.gl',20);
----Datos ventas
INSERT INTO PRODUCTO( id_Prov, id_Categoria, marca, descripcion, precio)
VALUES
(	  1,	1,		'Tenaris S.A.', 'Oso de peluche',	61.88),
(	  2,	2,		'Arconic Inc.',	'Impresión de carteles',	147.97),
(	  3,	3,		'China Distance Education Holdings Limited',	'Recarga 150',	207.82),
(	  4,	4,		'Omega Flex, Inc.',    'Folder pasta dura',	73.33),
(	  5,	5,		'Macys Inc','Paquete de 1000 hojas',	153.2),
(	  6,	6,		'Hennessy Advisors, Inc.', 'Reloj digital',	113.59),
(	  7,	7,		'Green Plains, Inc.',	'Audifonos',	217.49),
(     8,	8,		'Invesco Bond Fund',	'Lapicera de colores',	283.16),
(	   9, 	9,		'Tuniu Corporation',	'Hilo elastico',	128.92),
(	10,	10,		'Landcadia Holdings, Inc.',    'USB de 100 gb',	161.17),
(	11,	1,		'Tuniu Corporation',	'Globos',	191.97),
(	12,	2,		'Invesco High Income Trust II',	'Impresión de playeras', 202.08),
(	13, 3,		'argenx SE',	'Recarga de 150 Telcel',	153.5),
(	14,	4,		'Liberty Broadband Corporation',	'Engrapadora',	209.37),
(	15,	5,		'Lumentum Holdings Inc.'	,'Paquete hoja A4', 113.89),
(	16,	6,		'Nanometrics Incorporated','Audifonos economicos', 80.59),
(	17,	7,		'Nuveen Select Tax Free Income Portfolio',	'Alcohol Gel',	180.14),
(	18,	8,		'Alphatec Holdings, Inc.','Carpeta universitaria',	181.38),
(	19,	9,		'Great Elm Capital Corp.', 'Hilo decoracion',	62.64),
(	20,	10,		'BGC Partners, Inc.', 'USB 16 GB',	87.59),
(	1,	1,	'KalVista Pharmaceuticals, Inc.','Chocolates personalizados',	214.24),
(	8,	8,		'H&E Equipment Services, Inc.','Cuadernos sin espiral',	233.28),
(	9,	9,		'Caladrius Biosciences, Inc.', 'Kit para dobladillos',	222.09),
(	10,	10,		'Post Holdings, Inc.', 'Contenedor 1 lt', 151.33);
--INSERCION DE VALORES TABLA TELÉFONO

INSERT INTO TELEFONO(telefono, id_Prov)
VALUES(923833832,1), 
(285669256,	2), 
(268757572,	3), 
(377785467,	4), 
(735227379,	5), 
(344286380,	6),
(487996057,	7), 
(898648647,	8),
(820892803,	9),
(770135302,	10),
(451455875, 11),
(561654156, 12),
(151658145, 13),
(751635415, 14),
(451545414, 15),
(874684584, 16),
(185236952, 17),
(325856323, 18),
(415136586, 19),
(365247895, 20);

-----Ingresar datos inventario
INSERT INTO INVENTARIO(cod_Barras, id_Prod, precio_Compra,precio_Venta, fecha_Llegada, stock)
Values 

('SK54 3772 2355 7482 3156 1717',	1,		61.88, 71.15,	'05/11/2019',	48),
('LV88 TOYX DSO0 IHXZ 8LK0 0',	    2,		147.97, 170.16,	'06/03/2019',	77),
('SK57 2720 0365 1857 8838 3618',	3,		207.82,	238.993, '09/05/2019',	66),
('IE18 OVAS 5622 0407 2366 34',  	4,		73.33, 84.32,	'23/05/2019',	18),
('LI54 8712 8ZPZ 0GKL JUHZ X',	    5,		153.2,	176.18, '21/05/2019',	51),
('CZ29 3049 8021 4441 1380 1105',	6,		113.59,	130.62, '05/6/2019',	49),
('VG07 TNPB 3067 9679 3791 4978',	7,		217.49,	 250.11,'30/03/2019',	26),
('AL47 2753 8452 2UHT 2N9T XYYS HB7N',	8,		283.16,	325.63,'14/06/2019',	4),
('KZ95 931N JRGO 571H ZQYK',	    9,		128.92,	148.25,'12/05/2019',	53),
('BH94 ZAHC LVP5 6O4O WSX9 NH',	    10,		161.17,	200.12,'29/04/2019',	90),
('FR15 0426 2996 71UI PXE1 T1SE O86',	11,		191.97,	250.97,'10/02/2019',	67),
('FR09 2763 8619 10NZ ZAO1 Y3KI D85',	12,		202.08,	252.08,'01/01/2019',	93),
('MD02 P997 E0EW ID2V TARL OSQG',	13,		153.5, 210.5,	'02/06/2019',	89),
('SA32 57IF DFRW XYQU ONLJ GUMS',	14,		209.37,	258.37,'03/05/2019',	60),
('MK74 404S FVVH FAN3 J03',	        15, 	113.89,	195.89, '05/11/2019',	40),
('FR11 5418 3953 83NK J5OJ ZASG 563',	16,		80.59, 130.59,	'06/03/2019',	12),
('GT28 NYRO ZVT0 3QFV CTFT 3AKV RV8Q',	17,		180.14,	210.14, '09/05/2019',	53),
('KW63 OAKH F1ND VW3L FASS VISP IHWX 6J',18,		181.38,	236.38,'23/05/2019',	99),
('GE67 HV16 6467 3257 6999 19',	    19,		62.64, 150.64,	'21/05/2019',	91),
('SK57 2720 0365 1857 8838 3619',	20,		87.59, 130.59,	'05/6/2019',	96),
('IE18 OVAS 5622 0407 2366 33',     21,		214.24, 300,	'30/03/2019',	43),
('LI54 8712 8ZPZ 0GKL JUHZ Y',	    22,		172.88,	250,'14/06/2019',	23),
('CZ29 3049 8021 4441 1380 1115',	23,		64.63, 100,'12/05/2019',	73),
('VG07 TNPB 3067 9679 3791 49J8',	24,	165.95,	 200,'29/04/2019',	55);



 --Datos venta
INSERT INTO VENTA(id_Venta, id_Cliente, fecha_Venta)
VALUES
('VENT-001',	1,	'24/05/2015'),
('VENT-002',	2,	'15/12/2019'),
('VENT-003',	3,	'30/08/2019'),
('VENT-004',	4,	'11/6/2017'),
('VENT-005',	5,	'7/8/2015'),
('VENT-006',	6,	'25/11/2016'),
('VENT-007',	7,	'4/11/2017'),
('VENT-008',	8,	'16/06/2018'),
('VENT-009',	9,	'27/09/2016'),
('VENT-010',	10,	'12/5/2017'),
('VENT-011',	11, '2/4/2020'),
('VENT-012',	12,	'23/09/2019'),
('VENT-013',	13,	'31/03/2018'),
('VENT-014',	14,	'9/12/2016'),
('VENT-015',	15,	'27/12/2018'),
('VENT-016',	16,	'26/08/2015'),
('VENT-017',	17, '22/10/2019'),
('VENT-018',	18,	'30/01/2018'),
('VENT-019',	19,	'2/9/2019'),
('VENT-020',	20,	'19/07/2018'),
('VENT-021',	1,	'5/5/2019'),
('VENT-022',	2,	'24/01/2017'),
('VENT-023',	3,	'18/10/2016');


---Datos venta_Detalle
INSERT INTO REGISTRAR( id_Venta, cod_Barras, precio_Venta, cantidad, pago)
VALUES
('VENT-001',		'SK54 3772 2355 7482 3156 1717',		 71.15,		   1,		71.15),
('VENT-001',		'LV88 TOYX DSO0 IHXZ 8LK0 0',	         170.16,       7,		1191.12),
('VENT-002',		'SK57 2720 0365 1857 8838 3618',		 238.993,	    2,		477.986),
('VENT-002',		'IE18 OVAS 5622 0407 2366 34',		     84.32,		    7,		590.24),
('VENT-002',		'LI54 8712 8ZPZ 0GKL JUHZ X',		     176.18,	    3,		528.54),
('VENT-003',		'CZ29 3049 8021 4441 1380 1105',		 130.62, 	    6,		783.72),
('VENT-003',		'VG07 TNPB 3067 9679 3791 4978',		 250.11,		8,		2000.88),
('VENT-004',		'AL47 2753 8452 2UHT 2N9T XYYS HB7N',	 325.63,		10,		3256.3),
('VENT-005',		'KZ95 931N JRGO 571H ZQYK',		         148.25,		2,		296.5),
('VENT-005',		'BH94 ZAHC LVP5 6O4O WSX9 NH',		     200,		    1,		200),
('VENT-006',		'FR15 0426 2996 71UI PXE1 T1SE O86',	 250.97,		5,		1254.85),
('VENT-007',		'FR09 2763 8619 10NZ ZAO1 Y3KI D85',	 252.08,  	    5,		1260.4),
('VENT-008',		'MD02 P997 E0EW ID2V TARL OSQG',		 210.5,		    3,		631.5),
('VENT-009',		'SA32 57IF DFRW XYQU ONLJ GUMS',		 258.37,		4,		1033.48),
('VENT-010',		'MK74 404S FVVH FAN3 J03',		         195.89,	    1,		195.89),
('VENT-010',		'FR11 5418 3953 83NK J5OJ ZASG 563',	 130.59,		 3,		391.77),
('VENT-011',		'GT28 NYRO ZVT0 3QFV CTFT 3AKV RV8Q',	 210.14,		8,		1681.12),
('VENT-012',		'KW63 OAKH F1ND VW3L FASS VISP IHWX 6J', 236.38,		3,		709.14),
('VENT-013',		'GE67 HV16 6467 3257 6999 19',		     150.64,	    2,		301.28),
('VENT-014',		'SK57 2720 0365 1857 8838 3618',		 130.59,	    4,		522.36),
('VENT-015',		'IE18 OVAS 5622 0407 2366 34',		     250.24,		4,		1000.96),
('VENT-015',		'LI54 8712 8ZPZ 0GKL JUHZ X',	         200.88,		1,		200.88),
('VENT-016',		'CZ29 3049 8021 4441 1380 1105',		 130.62,		2,		201.26),
('VENT-017',		'VG07 TNPB 3067 9679 3791 4978',	     250.11,		1,		139.95),
('VENT-018',		'AL47 2753 8452 2UHT 2N9T XYYS HB7N',	 290.06,		1,		290.06),
('VENT-019',		'KZ95 931N JRGO 571H ZQYK',		         148.95,	    1,		148.95),
('VENT-020',		'BH94 ZAHC LVP5 6O4O WSX9 NH',		     200.12,		1,		200.12),
('VENT-021',		'FR15 0426 2996 71UI PXE1 T1SE O86',	 300.28,		2,		600.56),
('VENT-022',		'MD02 P997 E0EW ID2V TARL OSQG',		 210.5,		    3,		631.5),
('VENT-023',		'LI54 8712 8ZPZ 0GKL JUHZ X',	         200.88,		1,		200.88);



--Datos venta_Detalle
INSERT INTO REGISTRAR_PAGO(id_Venta, subtotal, IVA, total)
VALUES
('VENT-001', 1262.27, 201.9632, 1464.2332),
('VENT-002', 1596.766, 255.48256, 1852.24856),
('VENT-003', 2784.6, 445.536, 3230.136),
('VENT-004', 3256.3, 521.008, 	3777.308),
('VENT-005', 496.5, 79.44, 575.94),
('VENT-006', 1254.85, 200.776, 1455.626),
('VENT-007', 1260.4, 201.664, 1462.064),
('VENT-008', 631.5, 101.04, 732.54),
('VENT-009', 1033.48, 165.3568, 1198.8368),
('VENT-010', 587.66, 94.0256, 681.6856),
('VENT-011', 1681.12, 268.9792, 1950.0992),
('VENT-012', 709.14, 113.4624, 822.6024),
('VENT-013', 301.28, 48.2048, 349.4848),
('VENT-014', 522.36, 83.5776, 605.9376),
('VENT-015', 1201.84, 192.2944, 1394.1344),
('VENT-016', 201.26, 32.2016, 233.4616),
('VENT-017', 139.95, 22.392, 162.342),
('VENT-018', 290.06, 46.4096, 336.4696),
('VENT-019', 148.95, 23.832, 172.782),
('VENT-020', 200.12, 32.0192, 232.1392),
('VENT-021', 600.56, 96.0896, 696.6496),
('VENT-022', 631.5, 101.04, 732.54),
('VENT-023', 200.88, 32.1408, 233.0208);
