# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.21)
# Database: elmas2
# Generation Time: 2021-05-31 10:41:00 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table audits
# ------------------------------------------------------------

DROP TABLE IF EXISTS `audits`;

CREATE TABLE `audits` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint unsigned NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  KEY `audits_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `code`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'US','United States',NULL,NULL),
	(2,'CA','Canada',NULL,NULL),
	(3,'AF','Afghanistan',NULL,NULL),
	(4,'AL','Albania',NULL,NULL),
	(5,'DZ','Algeria',NULL,NULL),
	(6,'AS','American Samoa',NULL,NULL),
	(7,'AD','Andorra',NULL,NULL),
	(8,'AO','Angola',NULL,NULL),
	(9,'AI','Anguilla',NULL,NULL),
	(10,'AQ','Antarctica',NULL,NULL),
	(11,'AG','Antigua and/or Barbuda',NULL,NULL),
	(12,'AR','Argentina',NULL,NULL),
	(13,'AM','Armenia',NULL,NULL),
	(14,'AW','Aruba',NULL,NULL),
	(15,'AU','Australia',NULL,NULL),
	(16,'AT','Austria',NULL,NULL),
	(17,'AZ','Azerbaijan',NULL,NULL),
	(18,'BS','Bahamas',NULL,NULL),
	(19,'BH','Bahrain',NULL,NULL),
	(20,'BD','Bangladesh',NULL,NULL),
	(21,'BB','Barbados',NULL,NULL),
	(22,'BY','Belarus',NULL,NULL),
	(23,'BE','Belgium',NULL,NULL),
	(24,'BZ','Belize',NULL,NULL),
	(25,'BJ','Benin',NULL,NULL),
	(26,'BM','Bermuda',NULL,NULL),
	(27,'BT','Bhutan',NULL,NULL),
	(28,'BO','Bolivia',NULL,NULL),
	(29,'BA','Bosnia and Herzegovina',NULL,NULL),
	(30,'BW','Botswana',NULL,NULL),
	(31,'BV','Bouvet Island',NULL,NULL),
	(32,'BR','Brazil',NULL,NULL),
	(33,'IO','British lndian Ocean Territory',NULL,NULL),
	(34,'BN','Brunei Darussalam',NULL,NULL),
	(35,'BG','Bulgaria',NULL,NULL),
	(36,'BF','Burkina Faso',NULL,NULL),
	(37,'BI','Burundi',NULL,NULL),
	(38,'KH','Cambodia',NULL,NULL),
	(39,'CM','Cameroon',NULL,NULL),
	(40,'CV','Cape Verde',NULL,NULL),
	(41,'KY','Cayman Islands',NULL,NULL),
	(42,'CF','Central African Republic',NULL,NULL),
	(43,'TD','Chad',NULL,NULL),
	(44,'CL','Chile',NULL,NULL),
	(45,'CN','China',NULL,NULL),
	(46,'CX','Christmas Island',NULL,NULL),
	(47,'CC','Cocos (Keeling) Islands',NULL,NULL),
	(48,'CO','Colombia',NULL,NULL),
	(49,'KM','Comoros',NULL,NULL),
	(50,'CG','Congo',NULL,NULL),
	(51,'CK','Cook Islands',NULL,NULL),
	(52,'CR','Costa Rica',NULL,NULL),
	(53,'HR','Croatia (Hrvatska)',NULL,NULL),
	(54,'CU','Cuba',NULL,NULL),
	(55,'CY','Cyprus',NULL,NULL),
	(56,'CZ','Czech Republic',NULL,NULL),
	(57,'CD','Democratic Republic of Congo',NULL,NULL),
	(58,'DK','Denmark',NULL,NULL),
	(59,'DJ','Djibouti',NULL,NULL),
	(60,'DM','Dominica',NULL,NULL),
	(61,'DO','Dominican Republic',NULL,NULL),
	(62,'TP','East Timor',NULL,NULL),
	(63,'EC','Ecudaor',NULL,NULL),
	(64,'EG','Egypt',NULL,NULL),
	(65,'SV','El Salvador',NULL,NULL),
	(66,'GQ','Equatorial Guinea',NULL,NULL),
	(67,'ER','Eritrea',NULL,NULL),
	(68,'EE','Estonia',NULL,NULL),
	(69,'ET','Ethiopia',NULL,NULL),
	(70,'FK','Falkland Islands (Malvinas)',NULL,NULL),
	(71,'FO','Faroe Islands',NULL,NULL),
	(72,'FJ','Fiji',NULL,NULL),
	(73,'FI','Finland',NULL,NULL),
	(74,'FR','France',NULL,NULL),
	(75,'FX','France, Metropolitan',NULL,NULL),
	(76,'GF','French Guiana',NULL,NULL),
	(77,'PF','French Polynesia',NULL,NULL),
	(78,'TF','French Southern Territories',NULL,NULL),
	(79,'GA','Gabon',NULL,NULL),
	(80,'GM','Gambia',NULL,NULL),
	(81,'GE','Georgia',NULL,NULL),
	(82,'DE','Germany',NULL,NULL),
	(83,'GH','Ghana',NULL,NULL),
	(84,'GI','Gibraltar',NULL,NULL),
	(85,'GR','Greece',NULL,NULL),
	(86,'GL','Greenland',NULL,NULL),
	(87,'GD','Grenada',NULL,NULL),
	(88,'GP','Guadeloupe',NULL,NULL),
	(89,'GU','Guam',NULL,NULL),
	(90,'GT','Guatemala',NULL,NULL),
	(91,'GN','Guinea',NULL,NULL),
	(92,'GW','Guinea-Bissau',NULL,NULL),
	(93,'GY','Guyana',NULL,NULL),
	(94,'HT','Haiti',NULL,NULL),
	(95,'HM','Heard and Mc Donald Islands',NULL,NULL),
	(96,'HN','Honduras',NULL,NULL),
	(97,'HK','Hong Kong',NULL,NULL),
	(98,'HU','Hungary',NULL,NULL),
	(99,'IS','Iceland',NULL,NULL),
	(100,'IN','India',NULL,NULL),
	(101,'ID','Indonesia',NULL,NULL),
	(102,'IR','Iran (Islamic Republic of)',NULL,NULL),
	(103,'IQ','Iraq',NULL,NULL),
	(104,'IE','Ireland',NULL,NULL),
	(105,'IL','Israel',NULL,NULL),
	(106,'IT','Italy',NULL,NULL),
	(107,'CI','Ivory Coast',NULL,NULL),
	(108,'JM','Jamaica',NULL,NULL),
	(109,'JP','Japan',NULL,NULL),
	(110,'JO','Jordan',NULL,NULL),
	(111,'KZ','Kazakhstan',NULL,NULL),
	(112,'KE','Kenya',NULL,NULL),
	(113,'KI','Kiribati',NULL,NULL),
	(114,'KP','Korea, Democratic People\'s Republic of',NULL,NULL),
	(115,'KR','Korea, Republic of',NULL,NULL),
	(116,'KW','Kuwait',NULL,NULL),
	(117,'KG','Kyrgyzstan',NULL,NULL),
	(118,'LA','Lao People\'s Democratic Republic',NULL,NULL),
	(119,'LV','Latvia',NULL,NULL),
	(120,'LB','Lebanon',NULL,NULL),
	(121,'LS','Lesotho',NULL,NULL),
	(122,'LR','Liberia',NULL,NULL),
	(123,'LY','Libyan Arab Jamahiriya',NULL,NULL),
	(124,'LI','Liechtenstein',NULL,NULL),
	(125,'LT','Lithuania',NULL,NULL),
	(126,'LU','Luxembourg',NULL,NULL),
	(127,'MO','Macau',NULL,NULL),
	(128,'MK','Macedonia',NULL,NULL),
	(129,'MG','Madagascar',NULL,NULL),
	(130,'MW','Malawi',NULL,NULL),
	(131,'MY','Malaysia',NULL,NULL),
	(132,'MV','Maldives',NULL,NULL),
	(133,'ML','Mali',NULL,NULL),
	(134,'MT','Malta',NULL,NULL),
	(135,'MH','Marshall Islands',NULL,NULL),
	(136,'MQ','Martinique',NULL,NULL),
	(137,'MR','Mauritania',NULL,NULL),
	(138,'MU','Mauritius',NULL,NULL),
	(139,'TY','Mayotte',NULL,NULL),
	(140,'MX','Mexico',NULL,NULL),
	(141,'FM','Micronesia, Federated States of',NULL,NULL),
	(142,'MD','Moldova, Republic of',NULL,NULL),
	(143,'MC','Monaco',NULL,NULL),
	(144,'MN','Mongolia',NULL,NULL),
	(145,'MS','Montserrat',NULL,NULL),
	(146,'MA','Morocco',NULL,NULL),
	(147,'MZ','Mozambique',NULL,NULL),
	(148,'MM','Myanmar',NULL,NULL),
	(149,'NA','Namibia',NULL,NULL),
	(150,'NR','Nauru',NULL,NULL),
	(151,'NP','Nepal',NULL,NULL),
	(152,'NL','Netherlands',NULL,NULL),
	(153,'AN','Netherlands Antilles',NULL,NULL),
	(154,'NC','New Caledonia',NULL,NULL),
	(155,'NZ','New Zealand',NULL,NULL),
	(156,'NI','Nicaragua',NULL,NULL),
	(157,'NE','Niger',NULL,NULL),
	(158,'NG','Nigeria',NULL,NULL),
	(159,'NU','Niue',NULL,NULL),
	(160,'NF','Norfork Island',NULL,NULL),
	(161,'MP','Northern Mariana Islands',NULL,NULL),
	(162,'NO','Norway',NULL,NULL),
	(163,'OM','Oman',NULL,NULL),
	(164,'PK','Pakistan',NULL,NULL),
	(165,'PW','Palau',NULL,NULL),
	(166,'PA','Panama',NULL,NULL),
	(167,'PG','Papua New Guinea',NULL,NULL),
	(168,'PY','Paraguay',NULL,NULL),
	(169,'PE','Peru',NULL,NULL),
	(170,'PH','Philippines',NULL,NULL),
	(171,'PN','Pitcairn',NULL,NULL),
	(172,'PL','Poland',NULL,NULL),
	(173,'PT','Portugal',NULL,NULL),
	(174,'PR','Puerto Rico',NULL,NULL),
	(175,'QA','Qatar',NULL,NULL),
	(176,'SS','Republic of South Sudan',NULL,NULL),
	(177,'RE','Reunion',NULL,NULL),
	(178,'RO','Romania',NULL,NULL),
	(179,'RU','Russian Federation',NULL,NULL),
	(180,'RW','Rwanda',NULL,NULL),
	(181,'KN','Saint Kitts and Nevis',NULL,NULL),
	(182,'LC','Saint Lucia',NULL,NULL),
	(183,'VC','Saint Vincent and the Grenadines',NULL,NULL),
	(184,'WS','Samoa',NULL,NULL),
	(185,'SM','San Marino',NULL,NULL),
	(186,'ST','Sao Tome and Principe',NULL,NULL),
	(187,'SA','Saudi Arabia',NULL,NULL),
	(188,'SN','Senegal',NULL,NULL),
	(189,'RS','Serbia',NULL,NULL),
	(190,'SC','Seychelles',NULL,NULL),
	(191,'SL','Sierra Leone',NULL,NULL),
	(192,'SG','Singapore',NULL,NULL),
	(193,'SK','Slovakia',NULL,NULL),
	(194,'SI','Slovenia',NULL,NULL),
	(195,'SB','Solomon Islands',NULL,NULL),
	(196,'SO','Somalia',NULL,NULL),
	(197,'ZA','South Africa',NULL,NULL),
	(198,'GS','South Georgia South Sandwich Islands',NULL,NULL),
	(199,'ES','Spain',NULL,NULL),
	(200,'LK','Sri Lanka',NULL,NULL),
	(201,'SH','St. Helena',NULL,NULL),
	(202,'PM','St. Pierre and Miquelon',NULL,NULL),
	(203,'SD','Sudan',NULL,NULL),
	(204,'SR','Suriname',NULL,NULL),
	(205,'SJ','Svalbarn and Jan Mayen Islands',NULL,NULL),
	(206,'SZ','Swaziland',NULL,NULL),
	(207,'SE','Sweden',NULL,NULL),
	(208,'CH','Switzerland',NULL,NULL),
	(209,'SY','Syrian Arab Republic',NULL,NULL),
	(210,'TW','Taiwan',NULL,NULL),
	(211,'TJ','Tajikistan',NULL,NULL),
	(212,'TZ','Tanzania, United Republic of',NULL,NULL),
	(213,'TH','Thailand',NULL,NULL),
	(214,'TG','Togo',NULL,NULL),
	(215,'TK','Tokelau',NULL,NULL),
	(216,'TO','Tonga',NULL,NULL),
	(217,'TT','Trinidad and Tobago',NULL,NULL),
	(218,'TN','Tunisia',NULL,NULL),
	(219,'TR','Turkey',NULL,NULL),
	(220,'TM','Turkmenistan',NULL,NULL),
	(221,'TC','Turks and Caicos Islands',NULL,NULL),
	(222,'TV','Tuvalu',NULL,NULL),
	(223,'UG','Uganda',NULL,NULL),
	(224,'UA','Ukraine',NULL,NULL),
	(225,'AE','United Arab Emirates',NULL,NULL),
	(226,'GB','United Kingdom',NULL,NULL),
	(227,'UM','United States minor outlying islands',NULL,NULL),
	(228,'UY','Uruguay',NULL,NULL),
	(229,'UZ','Uzbekistan',NULL,NULL),
	(230,'VU','Vanuatu',NULL,NULL),
	(231,'VA','Vatican City State',NULL,NULL),
	(232,'VE','Venezuela',NULL,NULL),
	(233,'VN','Vietnam',NULL,NULL),
	(234,'VG','Virgin Islands (British)',NULL,NULL),
	(235,'VI','Virgin Islands (U.S.)',NULL,NULL),
	(236,'WF','Wallis and Futuna Islands',NULL,NULL),
	(237,'EH','Western Sahara',NULL,NULL),
	(238,'YE','Yemen',NULL,NULL),
	(239,'YU','Yugoslavia',NULL,NULL),
	(240,'ZR','Zaire',NULL,NULL),
	(241,'ZM','Zambia',NULL,NULL),
	(242,'ZW','Zimbabwe',NULL,NULL);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ltm_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ltm_translations`;

CREATE TABLE `ltm_translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_04_02_193005_create_translations_table',1),
	(2,'2014_10_12_000000_create_users_table',1),
	(3,'2014_10_12_100000_create_password_resets_table',1),
	(4,'2016_06_01_000001_create_oauth_auth_codes_table',1),
	(5,'2016_06_01_000002_create_oauth_access_tokens_table',1),
	(6,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
	(7,'2016_06_01_000004_create_oauth_clients_table',1),
	(8,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
	(9,'2019_04_19_090932_create_permission_tables',1),
	(10,'2019_04_21_135234_add_group_fields_to_permissions_table',1),
	(11,'2019_04_21_150535_add_display_name_field_to_permissions_table',1),
	(12,'2019_04_29_145346_create_countries_table',1),
	(13,'2019_04_29_154703_create_audits_table',1),
	(14,'2019_06_16_130433_add_social_fields_to_users_table',1),
	(15,'2019_06_16_133001_add_nullable_to_password_name_at_users_table',1),
	(16,'2019_06_18_110543_add_authy_fields_to_users_table',1),
	(17,'2021_05_31_113714_add_provider_field_to_oauth_clients_table',1),
	(18,'2021_05_31_122639_alter_oauth_clients_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table model_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` int unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table model_has_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` int unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`)
VALUES
	(1,'App\\User',1);

/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_slug` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `display_name`, `group_name`, `group_slug`, `guard_name`, `created_at`, `updated_at`)
VALUES
	(1,'users_access','Access','Users','users','web',NULL,NULL),
	(2,'users_create','Create','Users','users','web',NULL,NULL),
	(3,'users_show','Show','Users','users','web',NULL,NULL),
	(4,'users_edit','Edit','Users','users','web',NULL,NULL),
	(5,'users_delete','Delete','Users','users','web',NULL,NULL),
	(6,'users_ban','Ban/Activate User','Users','users','web',NULL,NULL),
	(7,'users_activity','Activity Log','Users','users','web',NULL,NULL),
	(8,'roles_access','Access','Roles','roles','web',NULL,NULL),
	(9,'roles_create','Create','Roles','roles','web',NULL,NULL),
	(10,'roles_show','Show','Roles','roles','web',NULL,NULL),
	(11,'roles_edit','Edit','Roles','roles','web',NULL,NULL),
	(12,'roles_delete','Delete','Roles','roles','web',NULL,NULL),
	(13,'permissions_access','Access','Permissions','permissions','web',NULL,NULL),
	(14,'permissions_create','Create','Permissions','permissions','web',NULL,NULL),
	(15,'permissions_show','Show','Permissions','permissions','web',NULL,NULL),
	(16,'permissions_edit','Edit','Permissions','permissions','web',NULL,NULL),
	(17,'permissions_delete','Delete','Permissions','permissions','web',NULL,NULL),
	(18,'activitylog_access','Access','Activity Log','activitylog','web',NULL,NULL),
	(19,'activitylog_show','Show','Activity Log','activitylog','web',NULL,NULL),
	(20,'activitylog_delete','Delete','Activity Log','activitylog','web',NULL,NULL);

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(1,2),
	(2,2),
	(3,2),
	(4,2),
	(8,2),
	(9,2),
	(10,2),
	(11,2),
	(13,2),
	(14,2),
	(15,2),
	(16,2),
	(18,2),
	(19,2);

/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','web','2021-05-31 13:40:08','2021-05-31 13:40:08'),
	(2,'user','web','2021-05-31 13:40:09','2021-05-31 13:40:09');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) NOT NULL DEFAULT '0',
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_logout_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_user_id` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_avatar` text COLLATE utf8mb4_unicode_ci,
  `authy_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `authy_status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'unverified',
  `authy_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authy_email` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authy_phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `banned`, `password`, `photo`, `phone`, `address`, `city`, `country_id`, `remember_token`, `is_superadmin`, `last_login_at`, `last_logout_at`, `provider`, `provider_user_id`, `social_avatar`, `authy_enabled`, `authy_status`, `authy_id`, `country_code`, `authy_email`, `authy_phone`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Admin','admin@admin.com','2021-05-31 13:40:08',0,'$2y$10$7ZWkCKHEDdNhRKlF9Y40.ObzHnGKgqmBP8LVW4mPdbapiMTpbANKu',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,'unverified',NULL,NULL,NULL,NULL,'2021-05-31 13:40:08','2021-05-31 13:40:08',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
