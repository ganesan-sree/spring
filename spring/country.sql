CREATE TABLE DB2INST1.COUNTRY  ( 
	ISO3166        	CHARACTER(2) NOT NULL,
	NAME           	VARCHAR(60) NOT NULL,
	PHONECODE      	INTEGER NOT NULL,
	VALID          	SMALLINT NOT NULL,
	LANG           	CHARACTER(2) NOT NULL,
	CURRENCY       	CHARACTER(3) NOT NULL,
	USECARD        	SMALLINT NOT NULL,
	KEYWORD        	VARCHAR(16),
	HOTLINE        	VARCHAR(32),
	GMT            	REAL,
	PRICEREMINDER  	VARCHAR(16),
	PRICETIP       	VARCHAR(16),
	PRICEREGULAR   	VARCHAR(16),
	SMSNUMBER      	VARCHAR(16),
	SMSPRICEUNIT   	VARCHAR(16),
	MOBILECONNECTOR	VARCHAR(128),
	OPERATORS      	VARCHAR(1000) 
	);
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('AE', 'United Arab Emirates', 971, 1, 'EN', 'USD', 0, 'EMM', '', 4.0, '', '', '1.5', '61429883466', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'DU (EITC)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('AT', 'Austria', 43, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '2', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Mobilkom (Telekom,A1,PTA);Orange (ONE);T-Mobile Austria GmbH (Tele.Ring)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('BA', 'Bosnia Herzegovina', 387, 1, 'EN', '   ', 0, 'EMM', '', 1.0, '', '', '1.53', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'BH Telecom (GSMBIH);ERONET/HPT;RS Telecoms (m:tel,mobis)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('BE', 'Belgium', 32, 1, 'FR', '   ', 0, '', '', 1.0, '', '', '1.93', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'KPN Group (Base)(Dixitel);Mobistar;Proximus (Belgacom)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('BH', 'Bahrain', 973, 1, 'EN', '   ', 0, 'EMM', '', 3.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Batelco (BHR Mobile Plus);Zain (MTC Vodafone)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('BN', 'Brunei', 673, 1, 'EN', 'USD', 0, 'EMM', '', 8.0, '', '', '3', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'B-Mobile;DataStream Technology (DTSCom)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('BO', 'Bolivia', 591, 1, 'EN', '   ', 0, 'EMM', '', -4.0, '', '', '1', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Entel;Nuevatel');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('CA', 'Canada', 1, 1, 'EN', 'USD', 0, 'EMM', NULL, -5.0, NULL, NULL, NULL, NULL, NULL, 'com.easymed.notificationsManager.connector.upsideWireless.UpsideWireless', 'Bell;Rogers;Fido;Telus;SaskTel;WIND;regional and MVNO carriers');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('CH', 'Switzerland', 41, 1, 'FR', 'CHF', 1, 'EMM', '0227491500', 1.0, '30', '30', '2.25', '447624800477', 'cts', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Orange;Sunrise (TDC,diax);Swisscom (Migros);Tele2');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('CL', 'Chile', 56, 1, 'EN', 'USD', 0, 'EMM', '', -4.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Claro Chile SA (SmartCom);Entel Movil;Entel PCS');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('CN', 'China', 86, 0, 'EN', '   ', 0, 'EMM', '', 8.0, '', '', '', '', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', '');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('CO', 'Colombia', 57, 1, 'EN', '   ', 0, 'EMM', '', -5.0, '', '', '1.17', '447624800477', '', 'com.easymed.notificationsManager.connector.upsideWireless.UpsideWireless', 'Colombia Movil SA (Tigo);COMCEL 3GSM;Movistar');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('CR', 'Costa Rica', 506, 1, 'EN', 'USD', 0, 'EMM', '', -6.0, '', '', '3', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'ICE');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('CY', 'Cyprus', 357, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '1', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Areeba;CYTA (Vodafone)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('DK', 'Denmark', 45, 1, 'EN', '   ', 0, 'EMM', '', 1.0, '', '', '1', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Sonofon (Telenor);TDC (Tele Denmark);Tele2;Telia (Orange);Three (3, Hutchison)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('DZ', 'Algeria', 213, 1, 'EN', '   ', 0, 'EMM', '', 1.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Mobilis (AMN);Orascom (Djezzy);Wataniya (Nedjma)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('EC', 'Ecuador', 593, 1, 'EN', 'USD', 0, 'EMM', '', -5.0, '', '', '3', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Conecel (Porta)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('EE', 'Estonia', 372, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '1.93', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'EMT;Radiolinja (Elisa);Tele2 (Eesti)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('ES', 'Spain', 34, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '2.25', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Orange (France Telecom, Amena);Telefonica (Movistar);Vodafone (Airtel Movil);Xfera Moviles (Yoigo)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('FR', 'France', 33, 1, 'FR', 'EUR', 0, '', '', 1.0, '', '', '2.5', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Bouygues Telecom;Orange;SFR');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('GR', 'Greece', 30, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '2', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Cosmote;Vodafone (Panafon);Wind (TIM, QTelecom)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('GT', 'Guatemala', 502, 1, 'EN', 'USD', 0, 'EMM', '', -6.0, '', '', '1.5', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Sercom (Claro);Tigo (Comcel)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('HR', 'Croatia', 385, 1, 'EN', 'USD', 0, 'EMM', '', 1.0, '', '', '2.33', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'T-Mobile (HT Mobile,Cronet,Croatian Tele.);Tele2;VipNet');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('HU', 'Hungary', 36, 1, 'EN', '   ', 0, '', '', 1.0, '', '', '2.5', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Pannon GSM;T-Mobile (Magyar Telekom);Vodafone (V.R.A.M Tele.)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('IE', 'Ireland', 353, 1, 'EN', 'USD', 0, 'EMM', '', 0.0, '', '', '1.35', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Eircell (Vodafone);Hutchinson 3G;Meteor;O2 (Esat Digifone, Tesco)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('IL', 'Israel', 972, 1, 'EN', 'EUR', 0, '', '', 2.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Cellcom Israel Ltd;Mirs Comm;Orange (Partner)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('IS', 'Iceland', 354, 1, 'EN', 'EUR', 0, '', '', 0.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Landssimi (Siminn);Nova;Og Vodafone (Islandssimi);Viking Wireless(IMC)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('JO', 'Jordan', 962, 1, 'EN', 'EUR', 0, '', '', 2.0, '', '', '1.13', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Jordan Mobile Telephone (Zain);Petra (MobileCom, Orange);Umniah;XPress');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('JP', 'Japan', 81, 1, 'EN', 'EUR', 0, '', '', 9.0, '', '', '2.75', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'KDDI;NTT DoCoMo');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('KR', 'South Korea', 82, 1, 'EN', 'USD', 0, 'EMM', NULL, 9.0, NULL, NULL, NULL, '46737494591', NULL, 'com.easymed.notificationsManager.connector.clickatell.Clickatell', '');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('KW', 'Kuwait', 965, 1, 'EN', 'USD', 0, 'EMM', '', 3.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Wataniya Telecom');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('LB', 'Lebanon', 961, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'MTC Touch (LibanCell)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('LT', 'Lithuania', 370, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Bite GSM (UAB);Omnitel GSM;Tele2');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('LU', 'Luxembourg', 352, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '1', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'P&T LuxGSM (EPT);Tango (Millicom);VOX');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('LV', 'Latvia', 371, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '3', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Latvian Mobile Telephone (LMT);SIA Bite Latvija;Tele2 (Baltkom)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('MD', 'Moldova', 373, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '1.65', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'MoldCell;Orange (VoxTel)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('ME', 'Montenegro', 382, 1, 'EN', 'USD', 0, 'EMM', '', 1.0, '', '', '1.65', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'T-Mobile;Telenor (ProMonte)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('MT', 'Malta', 356, 1, 'EN', 'USD', 0, 'EMM', '', 1.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Melita Mobile Ltd. (3G Telecoms);Mobisle Communications (Go Mobile);Vodafone Malta Ltd');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('NL', 'Netherlands', 31, 1, 'EN', '   ', 0, 'EMM', '', 1.0, '', '', '2.2', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'KPN Mobile The Netherlands B.V.;T-Mobile (Orange);Tele2 (Netherlands) B.V.;Telfort (O2);Vodafone (Libertel)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('NO', 'Norway', 47, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '2.17', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'NetCom AS;Tele2 Norge AS;Telenor Mobil');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('NZ', 'New Zealand', 64, 1, 'EN', 'EUR', 0, '', '', 12.0, '', '', '1', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Telecom New Zealand;Vodafone (BellSouth)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('OM', 'Oman', 968, 1, 'EN', 'USD', 0, 'EMM', '', 4.0, '', '', '3', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Omantel;Qatari (NAWRAS)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('PK', 'Pakistan', 92, 1, 'EN', 'EUR', 0, '', '', 5.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'CMPak Limited (ZONG);Mobilink;Telenor;UFone (PAKTEL)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('PR', 'Puerto Rico', 1, 1, 'EN', 'USD', 0, 'EMM', '', -4.0, '', '', '1.5', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Centennial');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('PT', 'Portugal', 351, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '2.5', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Sonaecom (Optimus);TMN;Vodafone (Telecel)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('QA', 'Qatar', 974, 1, 'EN', '   ', 0, '', '', 3.0, '', '', '', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Vodafone; Qtel');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('RO', 'Romania', 40, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '3', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Cosmote (Cosmorom);Vodafone Romania S.A. (MobiFon, Connex)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('RS', 'Serbia', 381, 1, 'EN', 'USD', 0, 'EMM', '', 1.0, '', '', '1.17', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Telekom Srbija (MTS);Telenor Belgrade (MOBTEL);VIP');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('SA', 'Saudi Arabia', 966, 1, 'EN', 'USD', 0, 'EMM', '', 3.0, '', '', '1', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Etihad Etisalat (Mobily);Saudi Telecom (STC, Al Jawal)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('SG', 'Singapore', 65, 1, 'EN', 'USD', 0, 'EMM', '', 8.0, '', '', '1.37', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'M1;SingTel;StarHub Pte Ltd.');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('SI', 'Slovenia', 386, 1, 'EN', 'USD', 0, 'EMM', '', 1.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Mobitel;Si.Mobil (Vodafone);Tusmobil');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('SV', 'El Salvador', 503, 1, 'EN', 'USD', 0, 'EMM', '', -6.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Digicel;Tigo (Telemovil)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('TH', 'Thailand', 66, 1, 'EN', '   ', 0, 'EMM', '', 7.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'AIS (Advanced Info Service);TAC (DTAC);True Move (Orange)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('TN', 'Tunisia', 216, 1, 'EN', 'USD', 0, 'EMM', '', 1.0, '', '', '3', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Tunisiana (Osracom);Tunisie Telecom (Tunicell,Tuntel)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('TR', 'Turkey', 90, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '1.37', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Avea;Turkcell;Vodafone (Telsim)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('TW', 'Taiwan', 886, 1, 'EN', 'USD', 0, 'EMM', '', 8.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'FarEasTone;KGT (DCS);TransAsia;VIBO Telecom');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('US', 'USA', 1, 1, 'EN', 'USD', 0, 'EMM', NULL, -5.0, NULL, NULL, NULL, NULL, NULL, 'com.easymed.notificationsManager.connector.upsideWireless.UpsideWireless', 'T-Mobile;Virgin;Verizon;Nextel;Sprint;Dobson;MetroPCS;ATT;regional and MVNO carriers');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('UY', 'Uruguay', 598, 1, 'EN', 'USD', 0, 'EMM', '', -3.0, '', '', '1.25', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Abiatar (Movistar);America Movil Wireless (CTI)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('ZA', 'South Africa', 27, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '1', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Cell C;MTN');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('AR', 'Argentina', 54, 1, 'EN', '   ', 0, 'EMM', '', -3.0, '', '', '1.25', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'AMX(Claro);Nextel (iDEN);Telecom Personal;Telefonica Movistar (Unefon)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('CZ', 'Czech Republic', 420, 1, 'EN', '   ', 0, 'EMM', '', 1.0, '', '', '1.5', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'T-Mobile (Radiomobil);Telefonica O2 (EuroTel);Vodafone Czech Republic a.s. (OSKAR)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('EG', 'Egypt', 20, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'ECMS MobiNil;Etisalat Misr;Vodafone (Misrfone +CLICK GSM)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('GB', 'United Kingdom', 44, 1, 'EN', '   ', 0, 'EMM', '', 0.0, '', '', '', '', '', 'com.easymed.notificationsManager.connector.upsideWireless.UpsideWireless', 'T-Mobile;3;Orange;Vodafone;Hutchinson;O2;Virgin;regional and MVNO carriers');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('IN', 'India', 91, 1, 'EN', '   ', 0, '', '', 5.5, '', '', '', '919212420889', '', 'com.easymed.notificationsManager.connector.upsideWireless.UpsideWireless', 'Airtel;Reliance Communications;Vodafone;BSNL;Idea Cellular;Tata Teleservices;Aircel;MTNL;MTS India;Loop Mobile India;Uninor;HFCL InfotelStel');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('MA', 'Morocco', 212, 1, 'EN', '   ', 0, 'EMM', '', 0.0, '', '', '2.75', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Maroc Telecom (Itissallat al Maghrib);Medi Telecom');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('MY', 'Malaysia', 60, 1, 'EN', 'USD', 0, 'EMM', '', 8.0, '', '', '1.5', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Celcom (TMTouch);Digi;Maxis (Binariang, Timecel)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('RU', 'Russian Federation', 7, 1, 'EN', 'EUR', 0, '', '', 3.0, '', '', '1.13', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'BaykalWestCom;BM-Telecom;KB Impuls (Beeline);Kuban;MegaFon (North-West,JSC,Sonic Duo);Mobile TeleSystems;New telephone company;Nizhegorodskaya Cellular Communications;Prim Telephon;SMARTS (Zao);Tele2;TELECOM-XX1;Uralsviazinform;Vimpelcom;Yenisey Telecom');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('UA', 'Ukraine', 380, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '1.67', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Astelit (Life :);Kyivstar GSM;MTS (Ukranian Mobile Communications)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('VE', 'Venezuela', 58, 1, 'FR', '   ', 0, 'EMM', '', -4.0, '', '', '1.33', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Digitel;Infonet;Movilnet');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('AU', 'Australia', 61, 1, 'EN', '   ', 0, '', '', 10.0, '', '', '1.38', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Telstra;Vodafone;Vodafone Hutchison (Hutchison 3G);YES Optus (Singtel)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('BR', 'Brazil', 55, 1, 'EN', '   ', 0, 'EMM', '', -3.0, '', '', '1.35', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Brasil Telecom;Oi (TNL, Telemar);TIM;VIVO (Movistar)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('DE', 'Germany', 49, 1, 'EN', '   ', 0, '', '', 1.0, '', '', '2.5', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'E-Plus;O2 (Viag, E2);T-Mobil (D1,Detemobil);Vodafone (D2,Man.man,Mobilfunk)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('FI', 'Finland', 358, 1, 'EN', 'USD', 0, 'EMM', '', 2.0, '', '', '1.38', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Alands Mobiltelefon Ab;Dna Finland;Elisa Corporation;TeliaSonera');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('ID', 'Indonesia', 62, 1, 'EN', 'EUR', 0, '', '', 7.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'ExcelCom;Hutchison CPT (Three);PT Satelindo (Indosat)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('IT', 'Italy', 39, 1, 'EN', '   ', 0, '', '', 1.0, '', '', '2.13', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'TIM;TRE (H3G);Vodafone (Omnitel);WIND (BLU)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('LI', 'Liechtenstein', 423, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '1', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Mobilkom LIE AG;Orange (VIAG EuroPlatform);Swisscom (Telecom FL,Comfone);Tele2 AG (Tango)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('MX', 'Mexico', 52, 1, 'EN', 'EUR', 0, '', '', -6.0, '', '', '1', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Telcel (RadioMovil Dipsa GSM);Telefonica Movistar (Pegaso GSM)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('PL', 'Poland', 48, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '1.78', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Era (Polska, Heyah);Orange (Idea, PTK Centertel);Play (P4);PlusGSM (PolKomTel, SamiSwoi)');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('SE', 'Sweden', 46, 1, 'EN', 'EUR', 0, '', '', 1.0, '', '', '2.79', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Hi3G Access AB;Spring Mobile;Swefour AB;Tele2 (Comviq);Telenor (Vodafone);Telia (Sonera,Mobitel);Ventelo Sverige AB');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('BG', 'Bulgaria', 359, 1, 'EN', '   ', 0, 'EMM', '', 1.0, '', '', '3', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Cosmo Bulgaria Mobile (Globul);MobilTel AD;VivaTel');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('HK', 'Hong-Kong', 852, 1, 'EN', 'EUR', 0, '', '', 8.0, '', '', '0.8', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'CSL;Hong Kong Telecommunications (HKT) Limited (PCCW);Hutchison 3G;New World PCS;Peoples;SmarTone');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('PH', 'Philippines', 63, 1, 'EN', 'USD', 0, 'EMM', '', 8.0, '', '', '1.24', '46737494591', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'Digital (Sun Cellular);Globe Telecom;Islacom;Nextel Communications;Smart Communications');
INSERT INTO DB2INST1.COUNTRY(ISO3166, NAME, PHONECODE, VALID, LANG, CURRENCY, USECARD, KEYWORD, HOTLINE, GMT, PRICEREMINDER, PRICETIP, PRICEREGULAR, SMSNUMBER, SMSPRICEUNIT, MOBILECONNECTOR, OPERATORS)
  VALUES('SK', 'Slovakia', 421, 1, 'EN', 'USD', 0, 'EMM', '', 1.0, '', '', '1.17', '447624800477', '', 'com.easymed.notificationsManager.connector.clickatell.Clickatell', 'O2 (Telefonica);Orange (Globtel);T-Mobile (Eurotel)');
