/*
Navicat MySQL Data Transfer

Source Server         : Register
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : register_of_public_association

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-05-10 22:23:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `all_records`
-- ----------------------------
DROP TABLE IF EXISTS `all_records`;
CREATE TABLE `all_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `details` text CHARACTER SET utf8,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_all_records_admin_idx` (`admin_id`),
  CONSTRAINT `fk_all_records_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of all_records
-- ----------------------------

-- ----------------------------
-- Table structure for `cause`
-- ----------------------------
DROP TABLE IF EXISTS `cause`;
CREATE TABLE `cause` (
  `all_records_id` int(11) NOT NULL,
  `causes` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`all_records_id`),
  KEY `fk_cause_all_records1_idx` (`all_records_id`),
  CONSTRAINT `fk_cause_all_records1` FOREIGN KEY (`all_records_id`) REFERENCES `all_records` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cause
-- ----------------------------

-- ----------------------------
-- Table structure for `certificate`
-- ----------------------------
DROP TABLE IF EXISTS `certificate`;
CREATE TABLE `certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_issuing_certificate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of certificate
-- ----------------------------

-- ----------------------------
-- Table structure for `enterprise`
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `USREOU_code` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `public_association_id` int(11) NOT NULL,
  PRIMARY KEY (`USREOU_code`),
  KEY `fk_enterprise_public_association1_idx` (`public_association_id`),
  CONSTRAINT `fk_enterprise_public_association1` FOREIGN KEY (`public_association_id`) REFERENCES `public_association` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of enterprise
-- ----------------------------

-- ----------------------------
-- Table structure for `first_level_of_location`
-- ----------------------------
DROP TABLE IF EXISTS `first_level_of_location`;
CREATE TABLE `first_level_of_location` (
  `code` int(11) NOT NULL,
  `name` text CHARACTER SET utf8,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of first_level_of_location
-- ----------------------------
INSERT INTO `first_level_of_location` VALUES ('1', 'Автономна Республіка Крим');
INSERT INTO `first_level_of_location` VALUES ('5', 'ВІННИЦЬКА ОБЛАСТЬ/М.ВІННИЦЯ');
INSERT INTO `first_level_of_location` VALUES ('12', 'ДНІПРОПЕТРОВСЬКА ОБЛАСТЬ');
INSERT INTO `first_level_of_location` VALUES ('14', 'ДОНЕЦЬКА ОБЛАСТЬ');
INSERT INTO `first_level_of_location` VALUES ('18', 'ЖИТОМИРСЬКА ОБЛАСТЬ/М.ЖИТОМИР');
INSERT INTO `first_level_of_location` VALUES ('21', 'ЗАКАРПАТСЬКА ОБЛАСТЬ/М.УЖГОРОД');
INSERT INTO `first_level_of_location` VALUES ('23', 'ЗАПОРІЗЬКА ОБЛАСТЬ/М.ЗАПОРІЖЖЯ');
INSERT INTO `first_level_of_location` VALUES ('26', 'ІВАНО-ФРАНКІВСЬКА ОБЛАСТЬ/М.ІВАНО-ФРАНКІВСЬК');
INSERT INTO `first_level_of_location` VALUES ('32', 'КИЇВСЬКА ОБЛАСТЬ/М.КИЇВ');
INSERT INTO `first_level_of_location` VALUES ('35', 'КІРОВОГРАДСЬКА ОБЛАСТЬ/М.КІРОВОГРАД');
INSERT INTO `first_level_of_location` VALUES ('44', 'ЛУГАНСЬКА ОБЛАСТЬ/М.ЛУГАНСЬК');
INSERT INTO `first_level_of_location` VALUES ('46', 'ЛЬВІВСЬКА ОБЛАСТЬ/М.ЛЬВІВ');
INSERT INTO `first_level_of_location` VALUES ('48', 'МИКОЛАЇВСЬКА ОБЛАСТЬ/М.МИКОЛАЇВ');
INSERT INTO `first_level_of_location` VALUES ('51', 'ОДЕСЬКА ОБЛАСТЬ/М.ОДЕСА');
INSERT INTO `first_level_of_location` VALUES ('53', 'ПОЛТАВСЬКА ОБЛАСТЬ/М.ПОЛТАВА');
INSERT INTO `first_level_of_location` VALUES ('56', 'РІВНЕНСЬКА ОБЛАСТЬ/М.РІВНЕ');
INSERT INTO `first_level_of_location` VALUES ('59', 'СУМСЬКА ОБЛАСТЬ/М.СУМИ');
INSERT INTO `first_level_of_location` VALUES ('61', 'ТЕРНОПІЛЬСЬКА ОБЛАСТЬ/М.ТЕРНОПІЛЬ');
INSERT INTO `first_level_of_location` VALUES ('63', 'ХАРКІВСЬКА ОБЛАСТЬ/М.ХАРКІВ');
INSERT INTO `first_level_of_location` VALUES ('65', 'ХЕРСОНСЬКА ОБЛАСТЬ/М.ХЕРСОН');
INSERT INTO `first_level_of_location` VALUES ('68', 'ХМЕЛЬНИЦЬКА ОБЛАСТЬ/М.ХМЕЛЬНИЦЬКИЙ');
INSERT INTO `first_level_of_location` VALUES ('71', 'ЧЕРКАСЬКА ОБЛАСТЬ/М.ЧЕРКАСИ');
INSERT INTO `first_level_of_location` VALUES ('73', 'ЧЕРНІВЕЦЬКА ОБЛАСТЬ/М.ЧЕРНІВЦІ');
INSERT INTO `first_level_of_location` VALUES ('74', 'ЧЕРНІГІВСЬКА ОБЛАСТЬ/М.ЧЕРНІГІВ');
INSERT INTO `first_level_of_location` VALUES ('80', 'М.КИЇВ');
INSERT INTO `first_level_of_location` VALUES ('85', 'М.СЕВАСТОПОЛЬ');

-- ----------------------------
-- Table structure for `form_of_incorporation`
-- ----------------------------
DROP TABLE IF EXISTS `form_of_incorporation`;
CREATE TABLE `form_of_incorporation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of form_of_incorporation
-- ----------------------------
INSERT INTO `form_of_incorporation` VALUES ('1', 'Громадська організація');
INSERT INTO `form_of_incorporation` VALUES ('2', 'Громадська спілка');

-- ----------------------------
-- Table structure for `fourth_level_of_location`
-- ----------------------------
DROP TABLE IF EXISTS `fourth_level_of_location`;
CREATE TABLE `fourth_level_of_location` (
  `code` int(11) NOT NULL,
  `name` text CHARACTER SET utf8,
  `third_level_of_location_code` int(11) NOT NULL,
  `second_level_of_location_code` int(11) NOT NULL,
  `first_level_of_location_code` int(11) NOT NULL,
  PRIMARY KEY (`code`,`third_level_of_location_code`,`second_level_of_location_code`,`first_level_of_location_code`),
  KEY `fk_fourth_level_of_location_third_level_of_location1_idx` (`third_level_of_location_code`,`second_level_of_location_code`,`first_level_of_location_code`),
  CONSTRAINT `fk_fourth_level_of_location_third_level_of_location1` FOREIGN KEY (`third_level_of_location_code`, `second_level_of_location_code`, `first_level_of_location_code`) REFERENCES `third_level_of_location` (`code`, `second_level_of_location_code`, `first_level_of_location_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fourth_level_of_location
-- ----------------------------
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БІЛЬШОВИК', '101', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГОРЬКОГО', '453', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВАСИЛІВСЬКА ПУСТОШ', '456', '129', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КРАСНИЙ КУТ', '462', '117', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПРИВІЛЛЯ', '462', '129', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БУРУЦЬКОГО', '464', '153', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВАЛЕНТИНІВКА', '465', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'НОВОСЕЛІВКА', '465', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ЧЕРВОНИЙ ЖОВТЕНЬ', '471', '144', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПІВЧЕ', '472', '150', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВЕСЕЛА ДОЛИНА', '476', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВАРВАРІВКА', '551', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ЩУЧА ГРЕБЛЯ', '556', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГЛАДОСОВЕ ', '653', '106', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВИШНЕВЕ', '653', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГНУТОВЕ', '658', '123', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БИРЮКИ', '663', '101', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ЛИПОВЕ', '665', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'РЯСНЕ', '667', '106', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПАВЛОГРАДСЬКЕ', '676', '101', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВАСИЛІВКА', '678', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БОКОВЕ', '705', '115', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БУЛАВИНЕ', '705', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВОДОБУД', '705', '150', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВИНОГРАДНЕ', '708', '150', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ОЛЕКСАНДРІВКА', '804', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БЕРЕСТОВЕЦЬ', '804', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БАХМАЧ', '805', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВЕЛИКА ДОЧ', '806', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БІЛОЦЕРКІВЦІ', '808', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВЕЛИКА ЗАГОРІВКА', '808', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БЕЗЗАБОТІВКА', '810', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БІЛОВЕЖІ ПЕРШІ', '810', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БРАНИЦЯ', '812', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВИСОКЕ', '812', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПІСКИ', '815', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БРАГИНЦІ', '816', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГОЛОВЕНЬКИ', '816', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГАЙВОРОН', '820', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВЕПРИК', '820', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КОМАРІВКА', '820', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВОРОНЬКИ', '824', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КРАСНОСІЛЬСЬКЕ', '824', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГОЛІНКА', '825', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГАВРИЛІВКА', '828', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'МАЛА ЗАГОРІВКА', '828', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГОРОДИЩЕ', '830', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГОРБАЧІ', '832', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'МИКОЛАЇВКА', '832', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ГРИГОРІВКА', '835', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КОЗАЦЬКЕ', '836', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'НОВІ МЛИНИ', '836', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КРАПИВНЕ', '840', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КОБИЖЧА', '840', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'НОСЕЛІВКА', '840', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'МАРКІВЦІ', '844', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ОЛЕНІВКА', '844', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КРАСИЛІВКА', '845', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'НОВА БАСАНЬ', '848', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ОМБИШ', '848', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КРАСНЕ', '850', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ОЗЕРЯНИ', '852', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПЕТРІВКА', '852', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ОСОКОРІВКА', '854', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КУРІНЬ', '855', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'НОВИЙ БИКІВ', '855', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПІСКИ ', '856', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПЕЧІ', '856', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'МАТІЇВКА ', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПЕТРІВКА', '860', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПЛИСКИ', '860', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПРАЧІ', '864', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'МИТЧЕНКИ', '865', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'РУДЬКІВКА', '868', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПРОХОРИ', '868', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ОБМАЧІВ', '870', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ПАЛЬЧИКИ', '872', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'СВИДОВЕЦЬ', '872', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'СИВОЛОЖ', '872', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'СОКОЛІВКА', '874', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'СМОЛЯЖ', '874', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'РУБАНКА', '875', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'СТАРА БАСАНЬ', '876', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'СТЕПАНІВКА', '876', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'СТРІЛЬНИКИ', '880', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ЩАСНІВКА', '880', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ТРОСТЯНКА', '880', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ЯРОСЛАВКА', '884', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ХОВМИ', '884', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ТИНИЦЯ', '885', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ХОРОШЕ ОЗЕРО', '888', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ФАСТОВЦИ', '890', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ШАПОВАЛІВКА', '892', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ХАЛИМОНОВЕ', '895', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ЯДУТИ', '896', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'КРИМСЬКЕ', '900', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ЯСНЕ', '900', '116', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'АВІЛОВКА', '900', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'АШУРКОВЕ', '900', '129', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'БРУСІВКА', '900', '133', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВІКТОРІЯ', '900', '153', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'АНДРІЇВКА', '902', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВЕРХНЬОСАДОВЕ', '905', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ОРЛИНЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ОЗЕРЯНІВКА', '910', '106', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ВЕРХНЯ КРИНКА', '915', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('1', 'ТЕРНІВКА', '915', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'МАКАРІВКА', '101', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ЗАБІЛІВЩИНА', '101', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'КАТЕРИНІВКА', '804', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ІЛЛІНЦІ', '804', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'КОШМАЛІВ', '805', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'СТЕП', '808', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'БІЛОВЕЖІ ДРУГІ', '810', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ГАЛАЙБИНЕ', '812', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ВАРВАРІВКА', '815', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ДОБРОПІЛЛЯ', '816', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ВОСЬМЕ БЕРЕЗНЯ', '820', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ЗАПОРІЖЖЯ', '824', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ЗАПОРІЖЖЯ', '828', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ВОЛЬНИЦЯ', '828', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ЗЕЛЕНЕ', '832', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ІВАНІВКА', '832', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ВЕСЕЛЕ', '835', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'КЕРБУТІВКА', '836', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ПЕРЕМОГА', '845', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'КАРПЕНКОВЕ', '850', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ДЗЕРЖИНСЬКОГО', '852', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ОПОЛОНСЬКЕ', '855', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ПАМ\'ЯТНЕ', '856', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'БОНДАРІ', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'АДАМІВКА', '864', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'КОНОШІВКА', '868', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ШЕВЧЕНКА', '868', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ВЕРБІВКА', '870', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'БУГЛАКИ', '872', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'БІРКИ', '874', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ЗАБОЛОТТЯ', '875', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'БЕРЕЗІВКА', '876', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ГАРТ', '880', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ВОРОНА', '884', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ЧЕРВОНА УКРАЇНА', '888', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'БЕЗПЕЧНЕ', '890', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ГЛИБОКЕ', '895', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('2', 'ГРИШІВКА', '896', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'МИРНЕ', '101', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'КИНАШІКА', '101', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ДИЛІЇВКА', '453', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'СТАРОРАЙСЬКЕ', '462', '117', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ВІННИЦЬКЕ', '464', '153', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЛЕОНІДІВКА', '465', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'СТАРОПЕТРІВСЬКЕ', '465', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ДАНИЛОВЕ', '476', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ДМИТРО-ДАР\'ЇВКА', '551', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ОРЛІВКА', '653', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЛОМАКИНЕ', '658', '123', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ВЕРБОВА БАЛКА', '663', '101', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ОРІХОВЕ', '665', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЛЕБ\'ЯЖЕ', '678', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ГРОЗНЕ', '705', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ТРЕТЯКИ', '708', '150', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЛІДИН', '804', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ОСТРІВ', '805', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ДМИТРОКОЛИНЕ', '810', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ВИШНІВСЬКЕ', '810', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'КУПЧЕНКІВ ', '812', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЗАПОРІЗЬКЕ', '815', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'КЛИПИН', '816', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'НЕЧАЇВ', '820', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЧЕРВОНЕ ОЗЕРО', '828', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'СУХОВОДКА', '832', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'МИКОЛАЇВ', '836', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЧЕРВОНА ГІРКА', '836', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'МАЛА ДОЧ', '840', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЧЕРЕМУШКИ', '845', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ПИРОГІВКА', '850', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'МАЙНІВКА', '852', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'НАУМІВКА', '854', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'УКРАЇНСЬКЕ', '855', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'СТАРИЙ БИКІВ', '855', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ВЕСЕЛІВКА', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ОСІЧ', '870', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ВЕСЕЛЕ', '872', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ТАТАРІВКА', '872', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'КРАСНЕ', '874', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'КОВАЛЬОВЕ', '875', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ВОЛОВИЦЯ', '876', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЛИНІВКА', '884', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'КИРПИЧНЕ', '885', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЧЕРВОНИЙ ОСТЕР', '888', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ГРУШІВКА', '890', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'КАЛИНІВКА', '895', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЖДАНІВ', '896', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ЧЕРВОНОЗОРЯНЕ', '900', '117', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ШАПОШНИКОВЕ', '900', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'СЕМЕНІВКА', '900', '129', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'СТАВКИ', '900', '133', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ГІРНЕ', '900', '153', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'СОНЯЧНИЙ', '902', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ДАЛЬНЄ', '905', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'ГОНЧАРНЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'МИХАЙЛІВКА', '910', '106', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'АЛМАЗНЕ', '915', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('3', 'РІДНЕ', '915', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ТРАВКИНЕ', '101', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ЛЮБОМУДРІВКА', '101', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ПАШКІВ', '805', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ЗАРУКАВНЕ', '810', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'МАЛИЧИНА ГРЕБЛЯ', '812', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'КУЛІШОВЕ', '815', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ПАРИСТІВКА', '816', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ЧЕРВОНА ЗІРКА', '820', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'УКРАЇНКА', '828', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ЧАСНИКІВКА', '830', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ТАСУІВ', '850', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ПЛУГ', '852', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ШУМЕЙКІВ', '855', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ГОЛУБІВ', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ХОМІВЦІ', '868', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'СЛОБІДКА', '870', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'МОЧАЛИЩЕ', '874', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'НОВЕ', '875', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'СИДОРІВКА', '884', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'ПЕРШЕ ТРАВНЯ', '890', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'МОВЧИНІВ', '895', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'КІРОВСЬКЕ', '896', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('4', 'КАМИШЛИ', '905', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'УРОЖАЙНЕ', '101', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ДРУЖБА', '453', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ЧУМАКИ', '464', '153', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'СУХА БАЛКА', '465', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ІЛЛІНКА', '476', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ЛЕВАДНЕ', '551', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ОСИПЕНКО', '653', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ГРИШКИ', '663', '101', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'КАЮТИНЕ', '705', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ЦУПКИ', '705', '150', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'НОВОАНДРІЇВКА', '810', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ЗЕЛЕНІВКА', '810', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ОЛЕКСІЇВКА', '815', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ШЕВЧЕНКОВЕ', '820', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ШУМИН', '830', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'КАЦІРИ', '850', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ЧИСТОПІЛЛЯ', '855', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'НОВОСЕЛИЦЯ ', '874', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'СМОЛОВЕ', '875', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ОСОВЕЦЬ', '880', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ПЕТРОВСЬКОГО', '890', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ПЕТРІВСЬКЕ', '895', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'КРАСНОСТАВ', '896', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'СТАРИЙ КАРАВАН', '900', '133', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ВЕДМЕЖЕ', '900', '150', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ДОРОФІЄНКО', '900', '153', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'ПИРОГОВКА', '905', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'КИЗИЛОВЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'СТАВКИ', '910', '106', '14');
INSERT INTO `fourth_level_of_location` VALUES ('5', 'КРАСНА ЗОРЯ', '915', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('6', 'ЧЕРВОНОАРМІЙСЬКЕ', '101', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('6', 'КАЛЬЧИНІВКА', '810', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('6', 'ОСИНІВКА', '815', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('6', 'ЛІСОВА ПОЛЯНА', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('6', 'РОКИТНЕ', '874', '206', '74');
INSERT INTO `fourth_level_of_location` VALUES ('6', 'ТЕРЕШИХА', '875', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('6', 'ШЕВЧЕНКА', '890', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('6', 'САПОНІВКА', '896', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'ПЕРШЕ ТРАВНЯ', '453', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'ЮР\'ЇВКА', '465', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'КАМ\'ЯНКА', '476', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'НАДЕЖДІВКА', '551', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'ПОЛЮШКО', '653', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'МИХАЙЛІВКА', '663', '101', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'КРАСНИЙ ПАХАР', '705', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'НОВОСТЕПАНІВКА', '810', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'КРУГЛОЛУГІВКА', '810', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'ЛОПАТИН', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'ЮРКІВЩИНА', '896', '208', '74');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'ЩУРОВЕ', '900', '133', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'ЗАРІЧНЕ', '900', '153', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'ПОВОРТНЕ', '905', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'КОЛХОЗНЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'ШИРОКА БАЛКА', '910', '106', '14');
INSERT INTO `fourth_level_of_location` VALUES ('7', 'МОНАХОВЕ', '915', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('8', 'МОСТИ', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'ШУМИ', '453', '112', '14');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'РІДКОДУБ', '476', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'НОВОПОЛТАВКА', '551', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'НОВОДВІРСЬКЕ', '663', '101', '14');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'САВЕЛІВКА', '705', '120', '14');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'РОЗДОЛЛЯ', '810', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'НОВЕ ПОЛІССЯ', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'КИЩЕНКО', '900', '153', '14');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'ФРОНТОВЕ', '905', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'НОВОБОБРІВСЬКЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('9', 'НОВИЙ СВІТ', '915', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('10', 'ОБІРКИ', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('11', 'ПЕТРІВКА ПЕРША', '551', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('11', 'ОКТЯБРСЬКЕ', '663', '101', '14');
INSERT INTO `fourth_level_of_location` VALUES ('11', 'СОФІЇНО-ЛИМАН', '810', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('11', 'ПРОХОРИ', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('11', 'ФРУКТОВЕ', '905', '369', '85');
INSERT INTO `fourth_level_of_location` VALUES ('11', 'ОЗЕРНЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('11', 'НОВОМАР\'ЇВКА', '915', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('12', 'ШУМЕЙКИНЕ', '860', '203', '74');
INSERT INTO `fourth_level_of_location` VALUES ('13', 'СОФІЇВКА', '551', '203', '14');
INSERT INTO `fourth_level_of_location` VALUES ('13', 'ТЕМРЮК', '663', '101', '14');
INSERT INTO `fourth_level_of_location` VALUES ('13', 'ПАВЛІВКА', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('13', 'НОВОСЕЛІВКА', '915', '135', '14');
INSERT INTO `fourth_level_of_location` VALUES ('15', 'ПЕРЕДОВЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('17', 'ПІДГІРНЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('19', 'РЕЗЕРВНЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('21', 'РОДНИКІВСЬКЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('23', 'РОЗСОШАНКА', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('25', 'ТИЛОВЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('27', 'ШИРОКЕ', '907', '363', '85');
INSERT INTO `fourth_level_of_location` VALUES ('50', 'СУХИНЯ', '878', '206', '74');

-- ----------------------------
-- Table structure for `kind`
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('1', 'Освітня або культурно-виховна');
INSERT INTO `kind` VALUES ('2', 'Правозахисна');
INSERT INTO `kind` VALUES ('3', 'Інша');

-- ----------------------------
-- Table structure for `nationality`
-- ----------------------------
DROP TABLE IF EXISTS `nationality`;
CREATE TABLE `nationality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of nationality
-- ----------------------------

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `series` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `number` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `date_of_birth` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `nationality_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_person_nationality1_idx` (`nationality_id`),
  CONSTRAINT `fk_person_nationality1` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', 'Голова Ради');
INSERT INTO `post` VALUES ('2', 'Заступник Голови Ради');
INSERT INTO `post` VALUES ('3', 'Член Ради');
INSERT INTO `post` VALUES ('4', 'Директор Організації');
INSERT INTO `post` VALUES ('5', 'Голова Наглядової Ради');
INSERT INTO `post` VALUES ('6', 'Член Наглядової Ради');
INSERT INTO `post` VALUES ('7', 'Голова Правління');
INSERT INTO `post` VALUES ('8', 'член Правління');
INSERT INTO `post` VALUES ('9', 'Керівник громадського об\'єднання');
INSERT INTO `post` VALUES ('10', 'Голова');
INSERT INTO `post` VALUES ('11', 'Керівник');

-- ----------------------------
-- Table structure for `public_association`
-- ----------------------------
DROP TABLE IF EXISTS `public_association`;
CREATE TABLE `public_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_registration` datetime DEFAULT NULL,
  `date_of_closing` datetime DEFAULT NULL,
  `date_of_last_event` datetime DEFAULT NULL,
  `legal_position` int(11) DEFAULT NULL,
  `full_name` text CHARACTER SET utf8 NOT NULL,
  `short_name` text CHARACTER SET utf8,
  `foreign_language_name` text CHARACTER SET utf8,
  `business_activities` int(11) DEFAULT NULL,
  `USREOU_code` int(11) DEFAULT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `objective` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(45) CHARACTER SET utf8 NOT NULL,
  `address` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  `form_of_incorporation_id` int(11) NOT NULL,
  `first_level_of_location` int(11) NOT NULL,
  `second_level_of_location` int(11) NOT NULL,
  `third_level_of_location` int(11) NOT NULL,
  `fourth_level_of_location` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_public_association_certificate1_idx` (`certificate_id`),
  KEY `fk_public_association_form_of_incorporation1_idx` (`form_of_incorporation_id`),
  CONSTRAINT `fk_public_association_certificate1` FOREIGN KEY (`certificate_id`) REFERENCES `certificate` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_public_association_form_of_incorporation1` FOREIGN KEY (`form_of_incorporation_id`) REFERENCES `form_of_incorporation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of public_association
-- ----------------------------
INSERT INTO `public_association` VALUES ('1', null, null, null, null, 'Нова організація', 'ГО \"НО\"', null, null, null, null, null, 'Зареєстровано', null, null, '1', '0', '0', '0', '0');
INSERT INTO `public_association` VALUES ('2', null, null, null, null, 'Організація', null, null, null, null, null, null, 'Незареєстровано', null, null, '1', '0', '0', '0', '0');
INSERT INTO `public_association` VALUES ('3', null, null, null, null, 'ГО Нова організація', null, null, null, null, null, null, 'Зареєстровано', null, null, '1', '0', '0', '0', '0');
INSERT INTO `public_association` VALUES ('4', null, null, null, null, 'ГО Нова організація', null, null, null, null, null, null, 'Зареєстровано', null, null, '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `public_association_has_kind`
-- ----------------------------
DROP TABLE IF EXISTS `public_association_has_kind`;
CREATE TABLE `public_association_has_kind` (
  `public_association_id` int(11) NOT NULL,
  `kind_id` int(11) NOT NULL,
  PRIMARY KEY (`public_association_id`,`kind_id`),
  KEY `fk_public_association_has_kind_kind1_idx` (`kind_id`),
  KEY `fk_public_association_has_kind_public_association1_idx` (`public_association_id`),
  CONSTRAINT `fk_public_association_has_kind_kind1` FOREIGN KEY (`kind_id`) REFERENCES `kind` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_public_association_has_kind_public_association1` FOREIGN KEY (`public_association_id`) REFERENCES `public_association` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of public_association_has_kind
-- ----------------------------

-- ----------------------------
-- Table structure for `public_association_has_person`
-- ----------------------------
DROP TABLE IF EXISTS `public_association_has_person`;
CREATE TABLE `public_association_has_person` (
  `public_association_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `founder` int(1) DEFAULT NULL,
  PRIMARY KEY (`public_association_id`,`person_id`),
  KEY `fk_public_association_has_person_person1_idx` (`person_id`),
  KEY `fk_public_association_has_person_public_association1_idx` (`public_association_id`),
  KEY `fk_public_association_has_person_post1_idx` (`post_id`),
  CONSTRAINT `fk_public_association_has_person_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_public_association_has_person_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_public_association_has_person_public_association1` FOREIGN KEY (`public_association_id`) REFERENCES `public_association` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of public_association_has_person
-- ----------------------------

-- ----------------------------
-- Table structure for `public_association_has_statuse`
-- ----------------------------
DROP TABLE IF EXISTS `public_association_has_statuse`;
CREATE TABLE `public_association_has_statuse` (
  `public_association_id` int(11) NOT NULL,
  `statuse_id` int(11) NOT NULL,
  PRIMARY KEY (`public_association_id`,`statuse_id`),
  KEY `fk_public_association_has_statuse_statuse1_idx` (`statuse_id`),
  KEY `fk_public_association_has_statuse_public_association1_idx` (`public_association_id`),
  CONSTRAINT `fk_public_association_has_statuse_public_association1` FOREIGN KEY (`public_association_id`) REFERENCES `public_association` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_public_association_has_statuse_statuse1` FOREIGN KEY (`statuse_id`) REFERENCES `statuse` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of public_association_has_statuse
-- ----------------------------

-- ----------------------------
-- Table structure for `second_level_of_location`
-- ----------------------------
DROP TABLE IF EXISTS `second_level_of_location`;
CREATE TABLE `second_level_of_location` (
  `code` int(11) NOT NULL,
  `name` text CHARACTER SET utf8,
  `first_level_of_location_code` int(11) NOT NULL,
  PRIMARY KEY (`code`,`first_level_of_location_code`),
  KEY `fk_second_level_of_location_first_level_of_location1_idx` (`first_level_of_location_code`),
  KEY `code` (`code`),
  CONSTRAINT `fk_second_level_of_location_first_level_of_location1` FOREIGN KEY (`first_level_of_location_code`) REFERENCES `first_level_of_location` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of second_level_of_location
-- ----------------------------
INSERT INTO `second_level_of_location` VALUES ('101', 'Сімферополь', '1');
INSERT INTO `second_level_of_location` VALUES ('101', 'ВІННИЦЯ', '5');
INSERT INTO `second_level_of_location` VALUES ('101', 'ДНІПРОПЕТРОВСЬК', '12');
INSERT INTO `second_level_of_location` VALUES ('101', 'ДОНЕЦЬК', '14');
INSERT INTO `second_level_of_location` VALUES ('101', 'ЖИТОМИР', '18');
INSERT INTO `second_level_of_location` VALUES ('101', 'УЖГОРОД', '21');
INSERT INTO `second_level_of_location` VALUES ('101', 'ЗАПОРІЖЖЯ', '23');
INSERT INTO `second_level_of_location` VALUES ('101', 'ІВАНО-ФРАНКІВСЬК', '26');
INSERT INTO `second_level_of_location` VALUES ('101', 'КІРОВОГРАД', '35');
INSERT INTO `second_level_of_location` VALUES ('101', 'ЛУГАНСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('101', 'ЛЬВІВ', '46');
INSERT INTO `second_level_of_location` VALUES ('101', 'МИКОЛАЇВ', '48');
INSERT INTO `second_level_of_location` VALUES ('101', 'ОДЕСА', '51');
INSERT INTO `second_level_of_location` VALUES ('101', 'ПОЛТАВА ', '53');
INSERT INTO `second_level_of_location` VALUES ('101', 'РІВНЕ ', '56');
INSERT INTO `second_level_of_location` VALUES ('101', 'СУМИ ', '59');
INSERT INTO `second_level_of_location` VALUES ('101', 'ТЕРНОПІЛЬ ', '61');
INSERT INTO `second_level_of_location` VALUES ('101', 'ХАРКІВ', '63');
INSERT INTO `second_level_of_location` VALUES ('101', 'ХЕРСОН', '65');
INSERT INTO `second_level_of_location` VALUES ('101', 'ХМЕЛЬНИЦЬКИЙ', '68');
INSERT INTO `second_level_of_location` VALUES ('101', 'ЧЕРКАСИ', '71');
INSERT INTO `second_level_of_location` VALUES ('101', 'ЧЕРНІВЦІ', '73');
INSERT INTO `second_level_of_location` VALUES ('101', 'ЧЕРНІГІВ', '74');
INSERT INTO `second_level_of_location` VALUES ('102', 'ВІЛЬНОГІРСЬК', '12');
INSERT INTO `second_level_of_location` VALUES ('102', 'АВДІЇВКА', '14');
INSERT INTO `second_level_of_location` VALUES ('102', 'БЕРЕГОВЕ', '21');
INSERT INTO `second_level_of_location` VALUES ('102', 'БОЛЕХІВ', '26');
INSERT INTO `second_level_of_location` VALUES ('102', 'ВОЗНЕСЕНСЬК', '48');
INSERT INTO `second_level_of_location` VALUES ('102', 'КОМСОМОЛЬСЬК ', '53');
INSERT INTO `second_level_of_location` VALUES ('102', 'ОХТИРКА ', '59');
INSERT INTO `second_level_of_location` VALUES ('102', 'ВАТУТІНЕ', '71');
INSERT INTO `second_level_of_location` VALUES ('103', 'Алушта', '1');
INSERT INTO `second_level_of_location` VALUES ('103', 'ЖМЕРИНКА', '5');
INSERT INTO `second_level_of_location` VALUES ('103', 'АРТЕМІВСЬК', '14');
INSERT INTO `second_level_of_location` VALUES ('103', 'БІЛА ЦЕРКВА', '32');
INSERT INTO `second_level_of_location` VALUES ('103', 'ОЛЕКСАНДРІЯ', '35');
INSERT INTO `second_level_of_location` VALUES ('103', 'АНТРАЦИТ', '44');
INSERT INTO `second_level_of_location` VALUES ('103', 'БОРИСЛАВ', '46');
INSERT INTO `second_level_of_location` VALUES ('103', 'ОЧАКІВ', '48');
INSERT INTO `second_level_of_location` VALUES ('103', 'БІЛГОРОД-ДНІСТРОВСЬКИЙ', '51');
INSERT INTO `second_level_of_location` VALUES ('103', 'ДУБНО ', '56');
INSERT INTO `second_level_of_location` VALUES ('103', 'ГЛУХІВ ', '59');
INSERT INTO `second_level_of_location` VALUES ('103', 'КАНІВ', '71');
INSERT INTO `second_level_of_location` VALUES ('104', 'МОГИЛІВ-ПОДІЛЬСЬКИЙ', '5');
INSERT INTO `second_level_of_location` VALUES ('104', 'ДНІПРОДЗЕРЖИНСЬК', '12');
INSERT INTO `second_level_of_location` VALUES ('104', 'БЕРДИЧІВ', '18');
INSERT INTO `second_level_of_location` VALUES ('104', 'МУКАЧЕВЕ', '21');
INSERT INTO `second_level_of_location` VALUES ('104', 'БЕРДЯНСЬК', '23');
INSERT INTO `second_level_of_location` VALUES ('104', 'КАЛУШ', '26');
INSERT INTO `second_level_of_location` VALUES ('104', 'БЕРЕЗАНЬ', '32');
INSERT INTO `second_level_of_location` VALUES ('104', 'ПЕРВОМАЙСЬК', '48');
INSERT INTO `second_level_of_location` VALUES ('104', 'КРЕМЕНЧУК ', '53');
INSERT INTO `second_level_of_location` VALUES ('104', 'КОНОТОП ', '59');
INSERT INTO `second_level_of_location` VALUES ('104', 'ІЗЮМ', '63');
INSERT INTO `second_level_of_location` VALUES ('104', 'КАХОВКА ', '65');
INSERT INTO `second_level_of_location` VALUES ('104', 'КАМ\'ЯНЕЦЬ-ПОДІЛЬСЬКИЙ', '68');
INSERT INTO `second_level_of_location` VALUES ('104', 'ЗОЛОТОНОША ', '71');
INSERT INTO `second_level_of_location` VALUES ('104', 'НІЖИН', '74');
INSERT INTO `second_level_of_location` VALUES ('105', 'КОЗЯТИН', '5');
INSERT INTO `second_level_of_location` VALUES ('105', 'БОРИСПІЛЬ', '32');
INSERT INTO `second_level_of_location` VALUES ('105', 'БРЯНКА', '44');
INSERT INTO `second_level_of_location` VALUES ('105', 'ЛЕБЕДИН ', '59');
INSERT INTO `second_level_of_location` VALUES ('105', 'НЕТІШИН', '68');
INSERT INTO `second_level_of_location` VALUES ('105', 'СМІЛА', '71');
INSERT INTO `second_level_of_location` VALUES ('106', 'Джанкой', '1');
INSERT INTO `second_level_of_location` VALUES ('106', 'ЛАДИЖИН', '5');
INSERT INTO `second_level_of_location` VALUES ('106', 'ГОРЛІВКА', '14');
INSERT INTO `second_level_of_location` VALUES ('106', 'КОЛОМИЯ', '26');
INSERT INTO `second_level_of_location` VALUES ('106', 'БРОВАРИ', '32');
INSERT INTO `second_level_of_location` VALUES ('106', 'ЗНАМ\'ЯНКА', '35');
INSERT INTO `second_level_of_location` VALUES ('106', 'ДРОГОБИЧ', '46');
INSERT INTO `second_level_of_location` VALUES ('106', 'ІЗМАЇЛ', '51');
INSERT INTO `second_level_of_location` VALUES ('106', 'СЛАВУТА ', '68');
INSERT INTO `second_level_of_location` VALUES ('106', 'НОВОДНІСТРОВСЬК', '73');
INSERT INTO `second_level_of_location` VALUES ('107', 'ЖОВТІ ВОДИ', '12');
INSERT INTO `second_level_of_location` VALUES ('107', 'КОРОСТЕНЬ', '18');
INSERT INTO `second_level_of_location` VALUES ('107', 'МЕЛІТОПОЛЬ', '23');
INSERT INTO `second_level_of_location` VALUES ('107', 'ВАСИЛЬКІВ', '32');
INSERT INTO `second_level_of_location` VALUES ('107', 'МОРШИН', '46');
INSERT INTO `second_level_of_location` VALUES ('107', 'ЛУБНИ ', '53');
INSERT INTO `second_level_of_location` VALUES ('107', 'КУЗНЕЦОВСЬК ', '56');
INSERT INTO `second_level_of_location` VALUES ('107', 'РОМНИ ', '59');
INSERT INTO `second_level_of_location` VALUES ('107', 'КУП\'ЯНСЬК', '63');
INSERT INTO `second_level_of_location` VALUES ('107', 'НОВА КАХОВКА', '65');
INSERT INTO `second_level_of_location` VALUES ('107', 'ШЕПЕТІВКА ', '68');
INSERT INTO `second_level_of_location` VALUES ('107', 'ПРИЛУКИ', '74');
INSERT INTO `second_level_of_location` VALUES ('108', 'ХУСТ', '21');
INSERT INTO `second_level_of_location` VALUES ('108', 'БУЧА', '32');
INSERT INTO `second_level_of_location` VALUES ('108', 'НОВИЙ РОЗДІЛ', '46');
INSERT INTO `second_level_of_location` VALUES ('108', 'ЮЖНОУКРАЇНСЬК', '48');
INSERT INTO `second_level_of_location` VALUES ('108', 'ІЛЛІЧІВСЬК', '51');
INSERT INTO `second_level_of_location` VALUES ('108', 'СТАРОКОСТЯНТИНІВ', '68');
INSERT INTO `second_level_of_location` VALUES ('108', 'УМАНЬ ', '71');
INSERT INTO `second_level_of_location` VALUES ('109', 'Євпаторія', '1');
INSERT INTO `second_level_of_location` VALUES ('109', 'ХМІЛЬНИК', '5');
INSERT INTO `second_level_of_location` VALUES ('109', 'ДЕБАЛЬЦЕВЕ', '14');
INSERT INTO `second_level_of_location` VALUES ('109', 'МАЛИН', '18');
INSERT INTO `second_level_of_location` VALUES ('109', 'ІРПІНЬ', '32');
INSERT INTO `second_level_of_location` VALUES ('109', 'СВІТЛОВОДСЬК', '35');
INSERT INTO `second_level_of_location` VALUES ('109', 'САМБІР', '46');
INSERT INTO `second_level_of_location` VALUES ('109', 'МИРГОРОД ', '53');
INSERT INTO `second_level_of_location` VALUES ('109', 'ОСТРОГ ', '56');
INSERT INTO `second_level_of_location` VALUES ('110', 'КРИВИЙ РІГ', '12');
INSERT INTO `second_level_of_location` VALUES ('110', 'НОВОГРАД-ВОЛИНСЬКИЙ', '18');
INSERT INTO `second_level_of_location` VALUES ('110', 'ЧОП', '21');
INSERT INTO `second_level_of_location` VALUES ('110', 'ТОКМАК', '23');
INSERT INTO `second_level_of_location` VALUES ('110', 'ЯРЕМЧЕ', '26');
INSERT INTO `second_level_of_location` VALUES ('110', 'ПЕРЕЯСЛАВ-ХМЕЛЬНИЦЬКИЙ', '32');
INSERT INTO `second_level_of_location` VALUES ('110', 'КІРОВСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('110', 'ШОСТКА ', '59');
INSERT INTO `second_level_of_location` VALUES ('110', 'ЛОЗОВА ', '63');
INSERT INTO `second_level_of_location` VALUES ('111', 'ПРИП\'ЯТЬ', '32');
INSERT INTO `second_level_of_location` VALUES ('112', 'Керч', '1');
INSERT INTO `second_level_of_location` VALUES ('112', 'ДЗЕРЖИНСЬК', '14');
INSERT INTO `second_level_of_location` VALUES ('112', 'ФАСТІВ', '32');
INSERT INTO `second_level_of_location` VALUES ('112', 'АЛЧЕВСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('112', 'СТРИЙ', '46');
INSERT INTO `second_level_of_location` VALUES ('112', 'КОТОВСЬК', '51');
INSERT INTO `second_level_of_location` VALUES ('112', 'ЛЮБОТИН ', '63');
INSERT INTO `second_level_of_location` VALUES ('113', 'Красноперекопськ', '1');
INSERT INTO `second_level_of_location` VALUES ('113', 'МАРГАНЕЦЬ', '12');
INSERT INTO `second_level_of_location` VALUES ('113', 'ДИМИТРОВ', '14');
INSERT INTO `second_level_of_location` VALUES ('113', 'РЖИЩІВ', '32');
INSERT INTO `second_level_of_location` VALUES ('114', 'Саки', '1');
INSERT INTO `second_level_of_location` VALUES ('114', 'КРАСНОДОН', '44');
INSERT INTO `second_level_of_location` VALUES ('115', 'Армянськ', '1');
INSERT INTO `second_level_of_location` VALUES ('115', 'ДОБРОПІЛЛЯ', '14');
INSERT INTO `second_level_of_location` VALUES ('115', 'СЛАВУТИЧ', '32');
INSERT INTO `second_level_of_location` VALUES ('115', 'ТРУСКАВЕЦЬ', '46');
INSERT INTO `second_level_of_location` VALUES ('115', 'ТЕПЛОДАР', '51');
INSERT INTO `second_level_of_location` VALUES ('115', 'ПЕРВОМАЙСЬКИЙ ', '63');
INSERT INTO `second_level_of_location` VALUES ('116', 'Феодосія', '1');
INSERT INTO `second_level_of_location` VALUES ('116', 'НІКОПОЛЬ', '12');
INSERT INTO `second_level_of_location` VALUES ('116', 'ДОКУЧАЄВСЬК', '14');
INSERT INTO `second_level_of_location` VALUES ('116', 'КРАСНИЙ ЛУЧ', '44');
INSERT INTO `second_level_of_location` VALUES ('117', 'Судак', '1');
INSERT INTO `second_level_of_location` VALUES ('117', 'ДРУЖКІВКА', '14');
INSERT INTO `second_level_of_location` VALUES ('117', 'ЮЖНЕ', '51');
INSERT INTO `second_level_of_location` VALUES ('118', 'ЛИСИЧАНСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('118', 'ЧЕРВОНОГРАД', '46');
INSERT INTO `second_level_of_location` VALUES ('119', 'Ялта', '1');
INSERT INTO `second_level_of_location` VALUES ('119', 'НОВОМОСКОВСЬК', '12');
INSERT INTO `second_level_of_location` VALUES ('120', 'ЄНАКІЄВЕ', '14');
INSERT INTO `second_level_of_location` VALUES ('120', 'ЧУГУЇВ ', '63');
INSERT INTO `second_level_of_location` VALUES ('121', 'ОРДЖОНІКІДЗЕ', '12');
INSERT INTO `second_level_of_location` VALUES ('121', 'ЖДАНІВКА', '14');
INSERT INTO `second_level_of_location` VALUES ('121', 'ПЕРВОМАЙСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('123', 'МАРІУПОЛЬ', '14');
INSERT INTO `second_level_of_location` VALUES ('123', 'РОВЕНЬКИ', '44');
INSERT INTO `second_level_of_location` VALUES ('124', 'ПАВЛОГРАД', '12');
INSERT INTO `second_level_of_location` VALUES ('125', 'КІРОВСЬКЕ', '14');
INSERT INTO `second_level_of_location` VALUES ('125', 'ЕНЕРГОДАР', '23');
INSERT INTO `second_level_of_location` VALUES ('125', 'РУБІЖНЕ', '44');
INSERT INTO `second_level_of_location` VALUES ('126', 'ПЕРШОТРАВЕНСЬК', '12');
INSERT INTO `second_level_of_location` VALUES ('126', 'КОСТЯНТИНІВКА', '14');
INSERT INTO `second_level_of_location` VALUES ('127', 'СВЕРДЛОВСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('129', 'КРАМАТОРСЬК', '14');
INSERT INTO `second_level_of_location` VALUES ('129', 'СЄВЄРОДОНЕЦЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('130', 'СИНЕЛЬНИКОВЕ', '12');
INSERT INTO `second_level_of_location` VALUES ('131', 'СТАХАНОВ', '44');
INSERT INTO `second_level_of_location` VALUES ('132', 'КРАСНОАРМІЙСЬК', '14');
INSERT INTO `second_level_of_location` VALUES ('133', 'КРАСНИЙ ЛИМАН', '14');
INSERT INTO `second_level_of_location` VALUES ('135', 'ТЕРНІВКА', '12');
INSERT INTO `second_level_of_location` VALUES ('135', 'МАКІЇВКА', '14');
INSERT INTO `second_level_of_location` VALUES ('136', 'НОВОГРОДІВКА', '14');
INSERT INTO `second_level_of_location` VALUES ('138', 'СЕЛИДОВЕ', '14');
INSERT INTO `second_level_of_location` VALUES ('141', 'СЛОВ\'ЯНСЬК', '14');
INSERT INTO `second_level_of_location` VALUES ('144', 'СНІЖНЕ', '14');
INSERT INTO `second_level_of_location` VALUES ('147', 'ТОРЕЗ', '14');
INSERT INTO `second_level_of_location` VALUES ('148', 'ВУГЛЕДАР', '14');
INSERT INTO `second_level_of_location` VALUES ('150', 'ХАРЦИЗЬК', '14');
INSERT INTO `second_level_of_location` VALUES ('153', 'ШАХТАРСЬК', '14');
INSERT INTO `second_level_of_location` VALUES ('155', 'ЯСИНУВАТА', '14');
INSERT INTO `second_level_of_location` VALUES ('202', 'БАРСЬКИЙ РАЙОН/М.БАР', '5');
INSERT INTO `second_level_of_location` VALUES ('202', 'БАРИШІВСЬКИЙ РАЙОН/СМТ БАРИШІВКА', '32');
INSERT INTO `second_level_of_location` VALUES ('202', 'АНАНЬЇВСЬКИЙ РАЙОН/М.АНАНЬЇВ', '51');
INSERT INTO `second_level_of_location` VALUES ('202', 'ВЕЛИКОБАГАЧАНСЬКИЙ РАЙОН/СМТ ВЕЛИКА БАГАЧКА', '53');
INSERT INTO `second_level_of_location` VALUES ('202', 'БАЛАКЛІЙСЬКИЙ РАЙОН/М.БАЛАКЛІЯ', '63');
INSERT INTO `second_level_of_location` VALUES ('203', 'АПОСТОЛІВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('203', 'ОЛЕКСАНДРІВСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('203', 'АНДРУШІВСЬКИЙ РАЙОН/М.АНДРУШІВКА', '18');
INSERT INTO `second_level_of_location` VALUES ('203', 'ЯКИМІВСЬКИЙ РАЙОН/СМТ ЯКИМІВКА', '23');
INSERT INTO `second_level_of_location` VALUES ('203', 'ОЛЕКСАНДРІЙСЬКИЙ РАЙОН/М.ОЛЕКСАНДРІЯ', '35');
INSERT INTO `second_level_of_location` VALUES ('203', 'АНТРАЦИТІВСЬКИЙ РАЙОН/М.АНТРАЦИТ', '44');
INSERT INTO `second_level_of_location` VALUES ('203', 'БРОДІВСЬКИЙ РАЙОН/М.БРОДИ', '46');
INSERT INTO `second_level_of_location` VALUES ('203', 'АРБУЗИНСЬКИЙ РАЙОН/СМТ АРБУЗИНКА', '48');
INSERT INTO `second_level_of_location` VALUES ('203', 'ОХТИРСЬКИЙ РАЙОН/М.ОХТИРКА', '59');
INSERT INTO `second_level_of_location` VALUES ('203', 'БІЛОЗЕРСЬКИЙ РАЙОН/СМТ БІЛОЗЕРКА', '65');
INSERT INTO `second_level_of_location` VALUES ('203', 'БІЛОГІРСЬКИЙ РАЙОН/СМТ БІЛОГІР\'Я', '68');
INSERT INTO `second_level_of_location` VALUES ('203', 'ГОРОДИЩЕНСЬКИЙ РАЙОН/М.ГОРОДИЩЕ', '71');
INSERT INTO `second_level_of_location` VALUES ('203', 'БАХМАЦЬКИЙ РАЙОН/М.БАХМАЧ', '74');
INSERT INTO `second_level_of_location` VALUES ('204', 'Бахчисарайський район/м.Бахчисарай', '1');
INSERT INTO `second_level_of_location` VALUES ('204', 'БЕРШАДСЬКИЙ РАЙОН/М.БЕРШАДЬ', '5');
INSERT INTO `second_level_of_location` VALUES ('204', 'БЕРЕГІВСЬКИЙ РАЙОН/М.БЕРЕГОВЕ', '21');
INSERT INTO `second_level_of_location` VALUES ('204', 'БОГОРОДЧАНСЬКИЙ РАЙОН/СМТ БОГОРОДЧАНИ', '26');
INSERT INTO `second_level_of_location` VALUES ('204', 'БІЛОЦЕРКІВСЬКИЙ РАЙОН/М.БІЛА ЦЕРКВА', '32');
INSERT INTO `second_level_of_location` VALUES ('204', 'АРЦИЗЬКИЙ РАЙОН/М.АРЦИЗ', '51');
INSERT INTO `second_level_of_location` VALUES ('204', 'ГАДЯЦЬКИЙ РАЙОН/М.ГАДЯЧ', '53');
INSERT INTO `second_level_of_location` VALUES ('204', 'БЕРЕЗНІВСЬКИЙ РАЙОН/М.БЕРЕЗНЕ', '56');
INSERT INTO `second_level_of_location` VALUES ('204', 'БЕРЕЖАНСЬКИЙ РАЙОН/М.БЕРЕЖАНИ', '61');
INSERT INTO `second_level_of_location` VALUES ('204', 'БАРВІНКІВСЬКИЙ РАЙОН/М.БАРВІНКОВЕ', '63');
INSERT INTO `second_level_of_location` VALUES ('205', 'ОЛЕКСАНДРІВСЬКИЙ РАЙОН/СМТ ОЛЕКСАНДРІВКА', '35');
INSERT INTO `second_level_of_location` VALUES ('205', 'ВИЖНИЦЬКИЙ РАЙОН/М.ВИЖНИЦЯ', '73');
INSERT INTO `second_level_of_location` VALUES ('206', 'ВІННИЦЬКИЙ РАЙОН/М.ВІННИЦЯ', '5');
INSERT INTO `second_level_of_location` VALUES ('206', 'АМВРОСІЇВСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('206', 'БАРАНІВСЬКИЙ РАЙОН/М.БАРАНІВКА', '18');
INSERT INTO `second_level_of_location` VALUES ('206', 'БЕРДЯНСЬКИЙ РАЙОН/М.БЕРДЯНСЬК', '23');
INSERT INTO `second_level_of_location` VALUES ('206', 'БОГУСЛАВСЬКИЙ РАЙОН/М.БОГУСЛАВ', '32');
INSERT INTO `second_level_of_location` VALUES ('206', 'БІЛОВОДСЬКИЙ РАЙОН/СМТ БІЛОВОДСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('206', 'БУСЬКИЙ РАЙОН/М.БУСЬК', '46');
INSERT INTO `second_level_of_location` VALUES ('206', 'БАШТАНСЬКИЙ РАЙОН/М.БАШТАНКА', '48');
INSERT INTO `second_level_of_location` VALUES ('206', 'БАЛТСЬКИЙ РАЙОН/М.БАЛТА', '51');
INSERT INTO `second_level_of_location` VALUES ('206', 'ГЛОБИНСЬКИЙ РАЙОН/М.ГЛОБИНЕ', '53');
INSERT INTO `second_level_of_location` VALUES ('206', 'БІЛОПІЛЬСЬКИЙ РАЙОН/М.БІЛОПІЛЛЯ', '59');
INSERT INTO `second_level_of_location` VALUES ('206', 'БЛИЗНЮКІВСЬКИЙ РАЙОН/СМТ БЛИЗНЮКИ', '63');
INSERT INTO `second_level_of_location` VALUES ('206', 'БЕРИСЛАВСЬКИЙ РАЙОН/М.БЕРИСЛАВ', '65');
INSERT INTO `second_level_of_location` VALUES ('206', 'ВІНЬКОВЕЦЬКИЙ РАЙОН/СМТ ВІНЬКІВЦІ', '68');
INSERT INTO `second_level_of_location` VALUES ('206', 'ДРАБІВСЬКИЙ РАЙОН/СМТ ДРАБІВ', '71');
INSERT INTO `second_level_of_location` VALUES ('206', 'БОБРОВИЦЬКИЙ РАЙОН/М.БОБРОВИЦЯ', '74');
INSERT INTO `second_level_of_location` VALUES ('207', 'Білогірський район/м.Білогірськ', '1');
INSERT INTO `second_level_of_location` VALUES ('207', 'ВАСИЛЬКІВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('207', 'ГЕРЦАЇВСЬКИЙ РАЙОН/М.ГЕРЦА', '73');
INSERT INTO `second_level_of_location` VALUES ('208', 'ГАЙСИНСЬКИЙ РАЙОН/М.ГАЙСИН', '5');
INSERT INTO `second_level_of_location` VALUES ('208', 'БЕРДИЧІВСЬКИЙ РАЙОН/М.БЕРДИЧІВ', '18');
INSERT INTO `second_level_of_location` VALUES ('208', 'ВЕЛИКОБЕРЕЗНЯНСЬКИЙ РАЙОН/СМТ ВЕЛИКИЙ БЕРЕЗНИЙ', '21');
INSERT INTO `second_level_of_location` VALUES ('208', 'ВЕРХОВИНСЬКИЙ РАЙОН/СМТ ВЕРХОВИНА', '26');
INSERT INTO `second_level_of_location` VALUES ('208', 'БОРИСПІЛЬСЬКИЙ РАЙОН/М.БОРИСПІЛЬ', '32');
INSERT INTO `second_level_of_location` VALUES ('208', 'БОБРИНЕЦЬКИЙ РАЙОН/М.БОБРИНЕЦЬ', '35');
INSERT INTO `second_level_of_location` VALUES ('208', 'БІЛГОРОД-ДНІСТРОВСЬКИЙ РАЙОН/М.БІЛГОРОД-ДНІСТРОВСЬКИЙ', '51');
INSERT INTO `second_level_of_location` VALUES ('208', 'ГРЕБІНКІВСЬКИЙ РАЙОН/М.ГРЕБІНКА', '53');
INSERT INTO `second_level_of_location` VALUES ('208', 'ВОЛОДИМИРЕЦЬКИЙ РАЙОН/СМТ ВОЛОДИМИРЕЦЬ', '56');
INSERT INTO `second_level_of_location` VALUES ('208', 'БОРЩІВСЬКИЙ РАЙОН/М.БОРЩІВ', '61');
INSERT INTO `second_level_of_location` VALUES ('208', 'БОГОДУХІВСЬКИЙ РАЙОН/М.БОГОДУХІВ', '63');
INSERT INTO `second_level_of_location` VALUES ('208', 'БОРЗНЯНСЬКИЙ РАЙОН/М.БОРЗНА', '74');
INSERT INTO `second_level_of_location` VALUES ('209', 'АРТЕМІВСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('209', 'БРУСИЛІВСЬКИЙ РАЙОН/СМТ БРУСИЛІВ', '18');
INSERT INTO `second_level_of_location` VALUES ('209', 'ВАСИЛІВСЬКИЙ РАЙОН/М.ВАСИЛІВКА', '23');
INSERT INTO `second_level_of_location` VALUES ('209', 'БІЛОКУРАКИНСЬКИЙ РАЙОН/СМТ БІЛОКУРАКИНЕ', '44');
INSERT INTO `second_level_of_location` VALUES ('209', 'ГОРОДОЦЬКИЙ РАЙОН/М.ГОРОДОК', '46');
INSERT INTO `second_level_of_location` VALUES ('209', 'БЕРЕЗАНСЬКИЙ РАЙОН/СМТ БЕРЕЗАНКА', '48');
INSERT INTO `second_level_of_location` VALUES ('209', 'БУРИНСЬКИЙ РАЙОН/М.БУРИНЬ', '59');
INSERT INTO `second_level_of_location` VALUES ('209', 'ВЕЛИКООЛЕКСАНДРІВСЬКИЙ РАЙОН/СМТ ВЕЛИКА ОЛЕКСАНДРІВКА', '65');
INSERT INTO `second_level_of_location` VALUES ('209', 'ВОЛОЧИСЬКИЙ РАЙОН/М.ВОЛОЧИСЬК', '68');
INSERT INTO `second_level_of_location` VALUES ('209', 'ЖАШКІВСЬКИЙ РАЙОН/М.ЖАШКІВ', '71');
INSERT INTO `second_level_of_location` VALUES ('210', 'ЖМЕРИНСЬКИЙ РАЙОН/М.ЖМЕРИНКА', '5');
INSERT INTO `second_level_of_location` VALUES ('210', 'ВЕРХНЬОДНІПРОВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('210', 'БОРОДЯНСЬКИЙ РАЙОН/СМТ БОРОДЯНКА', '32');
INSERT INTO `second_level_of_location` VALUES ('210', 'БІЛЯЇВСЬКИЙ РАЙОН/М.БІЛЯЇВКА', '51');
INSERT INTO `second_level_of_location` VALUES ('210', 'ДИКАНСЬКИЙ РАЙОН/СМТ ДИКАНЬКА', '53');
INSERT INTO `second_level_of_location` VALUES ('210', 'БОРІВСЬКИЙ РАЙОН/СМТ БОРОВА', '63');
INSERT INTO `second_level_of_location` VALUES ('210', 'ГЛИБОЦЬКИЙ РАЙОН/СМТ ГЛИБОКА', '73');
INSERT INTO `second_level_of_location` VALUES ('211', 'Джанкойський район/м.Джанкой', '1');
INSERT INTO `second_level_of_location` VALUES ('211', 'ВОЛОДАРСЬКО-ВОЛИНСЬКИЙ РАЙОН/СМТ ВОЛОДАРСЬК-ВОЛИНСЬКИЙ', '18');
INSERT INTO `second_level_of_location` VALUES ('211', 'ВЕЛИКОБІЛОЗЕРСЬКИЙ РАЙОН/С.ВЕЛИКА БІЛОЗЕРКА', '23');
INSERT INTO `second_level_of_location` VALUES ('211', 'ГАЙВОРОНСЬКИЙ РАЙОН/М.ГАЙВОРОН', '35');
INSERT INTO `second_level_of_location` VALUES ('211', 'БЕРЕЗНЕГУВАТСЬКИЙ РАЙОН/СМТ БЕРЕЗНЕГУВАТЕ', '48');
INSERT INTO `second_level_of_location` VALUES ('211', 'ВАРВИНСЬКИЙ РАЙОН/СМТ ВАРВА', '74');
INSERT INTO `second_level_of_location` VALUES ('212', 'ІЛЛІНЕЦЬКИЙ РАЙОН/М.ІЛЛІНЦІ', '5');
INSERT INTO `second_level_of_location` VALUES ('212', 'ВЕЛИКОНОВОСІЛКІВСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('212', 'ВИНОГРАДІВСЬКИЙ РАЙОН/М.ВИНОГРАДІВ', '21');
INSERT INTO `second_level_of_location` VALUES ('212', 'ВЕСЕЛІВСЬКИЙ РАЙОН/СМТ ВЕСЕЛЕ', '23');
INSERT INTO `second_level_of_location` VALUES ('212', 'ГАЛИЦЬКИЙ РАЙОН/М.ГАЛИЧ', '26');
INSERT INTO `second_level_of_location` VALUES ('212', 'БРОВАРСЬКИЙ РАЙОН/М.БРОВАРИ', '32');
INSERT INTO `second_level_of_location` VALUES ('212', 'ДРОГОБИЦЬКИЙ РАЙОН/М.ДРОГОБИЧ', '46');
INSERT INTO `second_level_of_location` VALUES ('212', 'БЕРЕЗІВСЬКИЙ РАЙОН/М.БЕРЕЗІВКА', '51');
INSERT INTO `second_level_of_location` VALUES ('212', 'ГОЩАНСЬКИЙ РАЙОН/СМТ ГОЩА ', '56');
INSERT INTO `second_level_of_location` VALUES ('212', 'ВЕЛИКОПИСАРІВСЬКИЙ РАЙОН/СМТ ВЕЛИКА ПИСАРІВКА', '59');
INSERT INTO `second_level_of_location` VALUES ('212', 'БУЧАЦЬКИЙ РАЙОН/М.БУЧАЧ', '61');
INSERT INTO `second_level_of_location` VALUES ('212', 'ВАЛКІВСЬКИЙ РАЙОН/М.ВАЛКИ', '63');
INSERT INTO `second_level_of_location` VALUES ('212', 'ВЕЛИКОЛЕПЕТИСЬКИЙ РАЙОН/СМТ ВЕЛИКА ЛЕПЕТИХА', '65');
INSERT INTO `second_level_of_location` VALUES ('212', 'ГОРОДОЦЬКИЙ РАЙОН/М.ГОРОДОК', '68');
INSERT INTO `second_level_of_location` VALUES ('212', 'ЗВЕНИГОРОДСЬКИЙ РАЙОН/М.ЗВЕНИГОРОДКА', '71');
INSERT INTO `second_level_of_location` VALUES ('213', 'ЗІНЬКІВСЬКИЙ РАЙОН/М.ЗІНЬКІВ', '53');
INSERT INTO `second_level_of_location` VALUES ('214', 'КОЗЯТИНСЬКИЙ РАЙОН/М.КОЗЯТИН', '5');
INSERT INTO `second_level_of_location` VALUES ('214', 'ДНІПРОПЕТРОВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('214', 'РОМАНІВСЬКИЙ РАЙОН/СМТ РОМАНІВ', '18');
INSERT INTO `second_level_of_location` VALUES ('214', 'ВАСИЛЬКІВСЬКИЙ РАЙОН/М.ВАСИЛЬКІВ', '32');
INSERT INTO `second_level_of_location` VALUES ('214', 'ГОЛОВАНІВСЬКИЙ РАЙОН/СМТ ГОЛОВАНІВСЬК', '35');
INSERT INTO `second_level_of_location` VALUES ('214', 'КРАСНОДОНСЬКИЙ РАЙОН/М.КРАСНОДОН', '44');
INSERT INTO `second_level_of_location` VALUES ('214', 'БРАТСЬКИЙ РАЙОН/СМТ БРАТСЬКЕ', '48');
INSERT INTO `second_level_of_location` VALUES ('214', 'БОЛГРАДСЬКИЙ РАЙОН/М.БОЛГРАД', '51');
INSERT INTO `second_level_of_location` VALUES ('214', 'ДЕМИДІВСЬКИЙ РАЙОН/СМТ ДЕМИДІВКА', '56');
INSERT INTO `second_level_of_location` VALUES ('214', 'ВЕЛИКОБУРЛУЦЬКИЙ РАЙОН/СМТ ВЕЛИКИЙ БУРЛУК', '63');
INSERT INTO `second_level_of_location` VALUES ('214', 'ГОРОДНЯНСЬКИЙ РАЙОН/М.ГОРОДНЯ', '74');
INSERT INTO `second_level_of_location` VALUES ('215', 'ВОЛНОВАСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('215', 'ВОЛОВЕЦЬКИЙ РАЙОН/СМТ ВОЛОВЕЦЬ', '21');
INSERT INTO `second_level_of_location` VALUES ('215', 'ВІЛЬНЯНСЬКИЙ РАЙОН/М.ВІЛЬНЯНСЬК', '23');
INSERT INTO `second_level_of_location` VALUES ('215', 'ЖИДАЧІВСЬКИЙ РАЙОН/М.ЖИДАЧІВ', '46');
INSERT INTO `second_level_of_location` VALUES ('215', 'ГЛУХІВСЬКИЙ РАЙОН/М.ГЛУХІВ', '59');
INSERT INTO `second_level_of_location` VALUES ('215', 'ВЕРХНЬОРОГАЧИЦЬКИЙ РАЙОН/СМТ ВЕРХНІЙ РОГАЧИК', '65');
INSERT INTO `second_level_of_location` VALUES ('215', 'ДЕРАЖНЯНСЬКИЙ РАЙОН/М.ДЕРАЖНЯ', '68');
INSERT INTO `second_level_of_location` VALUES ('215', 'ЗОЛОТОНІСЬКИЙ РАЙОН/М.ЗОЛОТОНОША', '71');
INSERT INTO `second_level_of_location` VALUES ('215', 'ЗАСТАВНІВСЬКИЙ РАЙОН/М.ЗАСТАВНА', '73');
INSERT INTO `second_level_of_location` VALUES ('216', 'Кіровський район/смт Кіровське', '1');
INSERT INTO `second_level_of_location` VALUES ('216', 'КАЛИНІВСЬКИЙ РАЙОН/М.КАЛИНІВКА', '5');
INSERT INTO `second_level_of_location` VALUES ('216', 'ГОРОДЕНКІВСЬКИЙ РАЙОН/М.ГОРОДЕНКА', '26');
INSERT INTO `second_level_of_location` VALUES ('216', 'ВОЛОДАРСЬКИЙ РАЙОН/СМТ ВОЛОДАРКА', '32');
INSERT INTO `second_level_of_location` VALUES ('216', 'КРЕМІНСЬКИЙ РАЙОН/М.КРЕМІННА', '44');
INSERT INTO `second_level_of_location` VALUES ('216', 'ВЕЛИКОМИХАЙЛІВСЬКИЙ РАЙОН/СМТ ВЕЛИКА МИХАЙЛІВКА', '51');
INSERT INTO `second_level_of_location` VALUES ('216', 'КАРЛІВСЬКИЙ РАЙОН/М.КАРЛІВКА', '53');
INSERT INTO `second_level_of_location` VALUES ('216', 'ДУБЕНСЬКИЙ РАЙОН/М.ДУБНО', '56');
INSERT INTO `second_level_of_location` VALUES ('216', 'ГУСЯТИНСЬКИЙ РАЙОН/СМТ ГУСЯТИН', '61');
INSERT INTO `second_level_of_location` VALUES ('216', 'ВОВЧАНСЬКИЙ РАЙОН/М.ВОВЧАНСЬК', '63');
INSERT INTO `second_level_of_location` VALUES ('217', 'ВОЛОДАРСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('217', 'ЄМІЛЬЧИНСЬКИЙ РАЙОН/СМТ ЄМІЛЬЧИНЕ', '18');
INSERT INTO `second_level_of_location` VALUES ('217', 'ДОБРОВЕЛИЧКІВСЬКИЙ РАЙОН/СМТ ДОБРОВЕЛИЧКІВКА', '35');
INSERT INTO `second_level_of_location` VALUES ('217', 'ВЕСЕЛИНІВСЬКИЙ РАЙОН/СМТ ВЕСЕЛИНОВЕ', '48');
INSERT INTO `second_level_of_location` VALUES ('217', 'ВОВЧАНСЬКИЙ РАЙОН/М.ВОВЧАНСЬК', '63');
INSERT INTO `second_level_of_location` VALUES ('217', 'ІЧНЯНСЬКИЙ РАЙОН/М.ІЧНЯ', '74');
INSERT INTO `second_level_of_location` VALUES ('218', 'КРИВОРІЗЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('218', 'ГУЛЯЙПІЛЬСЬКИЙ РАЙОН/М.ГУЛЯЙПОЛЕ', '23');
INSERT INTO `second_level_of_location` VALUES ('218', 'ВИШГОРОДСЬКИЙ РАЙОН/М.ВИШГОРОД', '32');
INSERT INTO `second_level_of_location` VALUES ('218', 'ЗОЛОЧІВСЬКИЙ РАЙОН/М.ЗОЛОЧІВ', '46');
INSERT INTO `second_level_of_location` VALUES ('218', 'ІВАНІВСЬКИЙ РАЙОН/СМТ ІВАНІВКА', '51');
INSERT INTO `second_level_of_location` VALUES ('218', 'КОБЕЛЯЦЬКИЙ РАЙОН/М.КОБЕЛЯКИ', '53');
INSERT INTO `second_level_of_location` VALUES ('218', 'ДУБРОВИЦЬКИЙ РАЙОН/М.ДУБРОВИЦЯ', '56');
INSERT INTO `second_level_of_location` VALUES ('218', 'ДВОРІЧАНСЬКИЙ РАЙОН/СМТ ДВОРІЧНА', '63');
INSERT INTO `second_level_of_location` VALUES ('218', 'ВИСОКОПІЛЬСЬКИЙ РАЙОН/СМТ ВИСОКОПІЛЛЯ', '65');
INSERT INTO `second_level_of_location` VALUES ('218', 'ДУНАЄВЕЦЬКИЙ РАЙОН/М.ДУНАЇВЦІ', '68');
INSERT INTO `second_level_of_location` VALUES ('218', 'КАМ\'ЯНСЬКИЙ РАЙОН/М.КАМ\'ЯНКА', '71');
INSERT INTO `second_level_of_location` VALUES ('219', 'КРИЖОПІЛЬСЬКИЙ РАЙОН/СМТ КРИЖОПІЛЬ', '5');
INSERT INTO `second_level_of_location` VALUES ('219', 'ІРШАВСЬКИЙ РАЙОН/М.ІРШАВА', '21');
INSERT INTO `second_level_of_location` VALUES ('219', 'ЗГУРІВСЬКИЙ РАЙОН/СМТ ЗГУРІВКА', '32');
INSERT INTO `second_level_of_location` VALUES ('219', 'ДОЛИНСЬКИЙ РАЙОН/М.ДОЛИНСЬКА', '35');
INSERT INTO `second_level_of_location` VALUES ('220', 'Красногвардійський район/смт Красногвардійське', '1');
INSERT INTO `second_level_of_location` VALUES ('220', 'КРИНИЧАНСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('220', 'ДОБРОПІЛЬСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('220', 'ЖИТОМИРСЬКИЙ РАЙОН/М.ЖИТОМИР', '18');
INSERT INTO `second_level_of_location` VALUES ('220', 'ДОЛИНСЬКИЙ РАЙОН/М.ДОЛИНА', '26');
INSERT INTO `second_level_of_location` VALUES ('220', 'ІВАНКІВСЬКИЙ РАЙОН/СМТ ІВАНКІВ', '32');
INSERT INTO `second_level_of_location` VALUES ('220', 'ВОЗНЕСЕНСЬКИЙ РАЙОН/М.ВОЗНЕСЕНСЬК', '48');
INSERT INTO `second_level_of_location` VALUES ('220', 'ІЗМАЇЛЬСЬКИЙ РАЙОН/М.ІЗМАЇЛ', '51');
INSERT INTO `second_level_of_location` VALUES ('220', 'КОЗЕЛЬЩИНСЬКИЙ РАЙОН/СМТ КОЗЕЛЬЩИНА', '53');
INSERT INTO `second_level_of_location` VALUES ('220', 'КОНОТОПСЬКИЙ РАЙОН/М.КОНОТОП', '59');
INSERT INTO `second_level_of_location` VALUES ('220', 'ЗАЛІЩИЦЬКИЙ РАЙОН/М.ЗАЛІЩИКИ', '61');
INSERT INTO `second_level_of_location` VALUES ('220', 'ДЕРГАЧІВСЬКИЙ РАЙОН/М.ДЕРГАЧІ', '63');
INSERT INTO `second_level_of_location` VALUES ('220', 'КАНІВСЬКИЙ РАЙОН/М.КАНІВ', '71');
INSERT INTO `second_level_of_location` VALUES ('220', 'КЕЛЬМЕНЕЦЬКИЙ РАЙОН/СМТ КЕЛЬМЕНЦІ', '73');
INSERT INTO `second_level_of_location` VALUES ('220', 'КОЗЕЛЕЦЬКИЙ РАЙОН/М.ОСТЕР', '74');
INSERT INTO `second_level_of_location` VALUES ('221', 'ЗАПОРІЗЬКИЙ РАЙОН/М.ЗАПОРІЖЖЯ', '23');
INSERT INTO `second_level_of_location` VALUES ('221', 'КАМ\'ЯНКА-БУЗЬКИЙ РАЙОН/М.КАМ\'ЯНКА-БУЗЬКА', '46');
INSERT INTO `second_level_of_location` VALUES ('221', 'ГЕНІЧЕСЬКИЙ РАЙОН/М.ГЕНІЧЕСЬК', '65');
INSERT INTO `second_level_of_location` VALUES ('221', 'ІЗЯСЛАВСЬКИЙ РАЙОН/М.ІЗЯСЛАВ', '68');
INSERT INTO `second_level_of_location` VALUES ('222', 'ЛИПОВЕЦЬКИЙ РАЙОН/М.ЛИПОВЕЦЬ', '5');
INSERT INTO `second_level_of_location` VALUES ('222', 'КАГАРЛИЦЬКИЙ РАЙОН/М.КАГАРЛИК', '32');
INSERT INTO `second_level_of_location` VALUES ('222', 'ЗНАМ\'ЯНСЬКИЙ РАЙОН/М.ЗНАМ\'ЯНКА', '35');
INSERT INTO `second_level_of_location` VALUES ('222', 'ЛУТУГИНСКИЙ РАЙОН/М.ЛУТУГИНЕ', '44');
INSERT INTO `second_level_of_location` VALUES ('222', 'КОТЕЛЕВСЬКИЙ РАЙОН/СМТ КОТЕЛЬВА', '53');
INSERT INTO `second_level_of_location` VALUES ('222', 'ЗАРІЧНЕНСЬКИЙ РАЙОН/СМТ ЗАРІЧНЕ', '56');
INSERT INTO `second_level_of_location` VALUES ('222', 'ЗАЧЕПИЛІВСЬКИЙ РАЙОН/СМТ ЗАЧЕПИЛІВКА', '63');
INSERT INTO `second_level_of_location` VALUES ('222', 'КАТЕРИНОПІЛЬСЬКИЙ РАЙОН/СМТ КАТЕРИНОПІЛЬ', '71');
INSERT INTO `second_level_of_location` VALUES ('222', 'КОРОПСЬКИЙ РАЙОН/СМТ КОРОП', '74');
INSERT INTO `second_level_of_location` VALUES ('223', 'Красноперекопський район/м.Красноперекопськ', '1');
INSERT INTO `second_level_of_location` VALUES ('223', 'МАГДАЛИНІВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('223', 'КОРОСТЕНСЬКИЙ РАЙОН/М.КОРОСТЕНЬ', '18');
INSERT INTO `second_level_of_location` VALUES ('223', 'ВРАДІЇВСЬКИЙ РАЙОН/СМТ ВРАДІЇВКА', '48');
INSERT INTO `second_level_of_location` VALUES ('223', 'КІЛІЙСЬКИЙ РАЙОН/М.КІЛІЯ', '51');
INSERT INTO `second_level_of_location` VALUES ('223', 'КРАСНОПІЛЬСЬКИЙ РАЙОН/СМТ КРАСНОПІЛЛЯ', '59');
INSERT INTO `second_level_of_location` VALUES ('223', 'ГОЛОПРИСТАНСЬКИЙ РАЙОН/М.ГОЛА ПРИСТАНЬ', '65');
INSERT INTO `second_level_of_location` VALUES ('224', 'ЛІТИНСЬКИЙ РАЙОН/СМТ ЛІТИН', '5');
INSERT INTO `second_level_of_location` VALUES ('224', 'КОСТЯНТИНІВСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('224', 'МІЖГІРСЬКИЙ РАЙОН/СМТ МІЖГІР\'Я', '21');
INSERT INTO `second_level_of_location` VALUES ('224', 'КАМ\'ЯНСЬКО-ДНІПРОВСЬКИЙ РАЙОН/М.КАМ\'ЯНКА-ДНІПРОВСЬКА', '23');
INSERT INTO `second_level_of_location` VALUES ('224', 'КИЄВО-СВЯТОШИНСЬКИЙ РАЙОН/М.КИЇВ', '32');
INSERT INTO `second_level_of_location` VALUES ('224', 'МОСТИСЬКИЙ РАЙОН/М.МОСТИСЬКА', '46');
INSERT INTO `second_level_of_location` VALUES ('224', 'КРЕМЕНЧУЦЬКИЙ РАЙОН/М.КРЕМЕНЧУК', '53');
INSERT INTO `second_level_of_location` VALUES ('224', 'ЗБАРАЗЬКИЙ РАЙОН/М.ЗБАРАЖ', '61');
INSERT INTO `second_level_of_location` VALUES ('224', 'КАМ\'ЯНЕЦЬ-ПОДІЛЬСЬКИЙ РАЙОН/М.КАМ\'ЯНЕЦЬ-ПОДІЛЬСЬКИЙ', '68');
INSERT INTO `second_level_of_location` VALUES ('224', 'КОРЮКІВСЬКИЙ РАЙОН/М.КОРЮКІВКА', '74');
INSERT INTO `second_level_of_location` VALUES ('225', 'КОРОСТИШІВСЬКИЙ РАЙОН/М.КОРОСТИШІВ', '18');
INSERT INTO `second_level_of_location` VALUES ('225', 'КІРОВОГРАДСЬКИЙ РАЙОН/М.КІРОВОГРАД', '35');
INSERT INTO `second_level_of_location` VALUES ('225', 'МАРКІВСЬКИЙ РАЙОН/СМТ МАРКІВКА', '44');
INSERT INTO `second_level_of_location` VALUES ('225', 'КОДИМСЬКИЙ РАЙОН/М.КОДИМА', '51');
INSERT INTO `second_level_of_location` VALUES ('225', 'КОРСУНЬ-ШЕВЧЕНКІВСЬКИЙ РАЙОН/М.КОРСУНЬ-ШЕВЧЕНКІВСЬКИЙ', '71');
INSERT INTO `second_level_of_location` VALUES ('225', 'КІЦМАНСЬКИЙ РАЙОН/М.КІЦМАНЬ', '73');
INSERT INTO `second_level_of_location` VALUES ('226', 'МОГИЛІВ-ПОДІЛЬСЬКИЙ РАЙОН/М.МОГИЛІВ-ПОДІЛЬСЬКИЙ', '5');
INSERT INTO `second_level_of_location` VALUES ('226', 'МЕЖІВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('226', 'ЛОХВИЦЬКИЙ РАЙОН/М.ЛОХВИЦЯ', '53');
INSERT INTO `second_level_of_location` VALUES ('226', 'ЗДОЛБУНІВСЬКИЙ РАЙОН/М.ЗДОЛБУНІВ', '56');
INSERT INTO `second_level_of_location` VALUES ('226', 'КРОЛЕВЕЦЬКИЙ РАЙОН/М.КРОЛЕВЕЦЬ', '59');
INSERT INTO `second_level_of_location` VALUES ('226', 'ЗБОРІВСЬКИЙ РАЙОН/М.ЗБОРІВ', '61');
INSERT INTO `second_level_of_location` VALUES ('226', 'ЗОЛОЧІВСЬКИЙ РАЙОН/СМТ ЗОЛОЧІВ', '63');
INSERT INTO `second_level_of_location` VALUES ('226', 'ГОРНОСТАЇВСЬКИЙ РАЙОН/СМТ ГОРНОСТАЇВКА', '65');
INSERT INTO `second_level_of_location` VALUES ('227', 'Ленінський район/смт Леніне', '1');
INSERT INTO `second_level_of_location` VALUES ('227', 'КРАСНОАРМІЙСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('227', 'МУКАЧІВСЬКИЙ РАЙОН/М.МУКАЧЕВЕ', '21');
INSERT INTO `second_level_of_location` VALUES ('227', 'КУЙБИШЕВСЬКИЙ РАЙОН/СМТ КУЙБИШЕВЕ', '23');
INSERT INTO `second_level_of_location` VALUES ('227', 'МАКАРІВСЬКИЙ РАЙОН/СМТ МАКАРІВ', '32');
INSERT INTO `second_level_of_location` VALUES ('227', 'ЖОВКІВСЬКИЙ РАЙОН/М.ЖОВКВА', '46');
INSERT INTO `second_level_of_location` VALUES ('227', 'ДОМАНІВСЬКИЙ РАЙОН/СМТ ДОМАНІВКА', '48');
INSERT INTO `second_level_of_location` VALUES ('227', 'КОМІНТЕРНІВСЬКИЙ РАЙОН/СМТ КОМІНТЕРНІВСЬКЕ', '51');
INSERT INTO `second_level_of_location` VALUES ('227', 'КРАСИЛІВСЬКИЙ РАЙОН/М.КРАСИЛІВ', '68');
INSERT INTO `second_level_of_location` VALUES ('227', 'КУЛИКІВСЬКИЙ РАЙОН/СМТ КУЛИКІВКА', '74');
INSERT INTO `second_level_of_location` VALUES ('228', 'МУРОВАНОКУРИЛОВЕЦЬКИЙ РАЙОН/СМТ МУРОВАНІ КУРИЛІВЦІ', '5');
INSERT INTO `second_level_of_location` VALUES ('228', 'ЛУГИНСЬКИЙ РАЙОН/СМТ ЛУГИНИ', '18');
INSERT INTO `second_level_of_location` VALUES ('228', 'КАЛУСЬКИЙ РАЙОН/М.КАЛУШ', '26');
INSERT INTO `second_level_of_location` VALUES ('228', 'КОМПАНІЇВСЬКИЙ РАЙОН/СМТ КОМПАНІЇВКА', '35');
INSERT INTO `second_level_of_location` VALUES ('228', 'МІЛОВСЬКИЙ РАЙОН/СМТ МІЛОВЕ', '44');
INSERT INTO `second_level_of_location` VALUES ('228', 'ЛУБЕНСЬКИЙ РАЙОН/М.ЛУБНИ', '53');
INSERT INTO `second_level_of_location` VALUES ('228', 'ІЗЮМСЬКИЙ РАЙОН/М.ІЗЮМ', '63');
INSERT INTO `second_level_of_location` VALUES ('228', 'ЛИСЯНСЬКИЙ РАЙОН/СМТ ЛИСЯНКА', '71');
INSERT INTO `second_level_of_location` VALUES ('229', 'НІКОПОЛЬСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('229', 'МИРОНІВСЬКИЙ РАЙОН/М.МИРОНІВКА', '32');
INSERT INTO `second_level_of_location` VALUES ('229', 'КОТОВСЬКИЙ РАЙОН/М.КОТОВСЬК', '51');
INSERT INTO `second_level_of_location` VALUES ('229', 'ЛЕБЕДИНСЬКИЙ РАЙОН/М.ЛЕБЕДИН', '59');
INSERT INTO `second_level_of_location` VALUES ('229', 'ІВАНІВСЬКИЙ РАЙОН/СМТ ІВАНІВКА', '65');
INSERT INTO `second_level_of_location` VALUES ('230', 'НЕМИРІВСЬКИЙ РАЙОН/М.НЕМИРІВ', '5');
INSERT INTO `second_level_of_location` VALUES ('230', 'КРАСНОЛИМАНСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('230', 'МЕЛІТОПОЛЬСЬКИЙ РАЙОН/М.МЕЛІТОПОЛЬ', '23');
INSERT INTO `second_level_of_location` VALUES ('230', 'МИКОЛАЇВСЬКИЙ РАЙОН/М.МИКОЛАЇВ', '46');
INSERT INTO `second_level_of_location` VALUES ('230', 'ЄЛАНЕЦЬКИЙ РАЙОН/СМТ ЄЛАНЕЦЬ', '48');
INSERT INTO `second_level_of_location` VALUES ('230', 'МАШІВСЬКИЙ РАЙОН/СМТ МАШІВКА', '53');
INSERT INTO `second_level_of_location` VALUES ('230', 'КОРЕЦЬКИЙ РАЙОН/М.КОРЕЦЬ', '56');
INSERT INTO `second_level_of_location` VALUES ('230', 'КОЗІВСЬКИЙ РАЙОН/СМТ КОЗОВА', '61');
INSERT INTO `second_level_of_location` VALUES ('230', 'ЛЕТИЧІВСЬКИЙ РАЙОН/СМТ ЛЕТИЧІВ', '68');
INSERT INTO `second_level_of_location` VALUES ('230', 'НОВОСЕЛИЦЬКИЙ РАЙОН/М.НОВОСЕЛИЦЯ', '73');
INSERT INTO `second_level_of_location` VALUES ('230', 'МЕНСЬКИЙ РАЙОН/М.МЕНА', '74');
INSERT INTO `second_level_of_location` VALUES ('231', 'Нижньогірський район/смт Нижньогірський', '1');
INSERT INTO `second_level_of_location` VALUES ('231', 'ОРАТІВСЬКИЙ РАЙОН/СМТ ОРАТІВ', '5');
INSERT INTO `second_level_of_location` VALUES ('231', 'ЛЮБАРСЬКИЙ РАЙОН/СМТ ЛЮБАР', '18');
INSERT INTO `second_level_of_location` VALUES ('231', 'ОБУХІВСЬКИЙ РАЙОН/М.ОБУХІВ', '32');
INSERT INTO `second_level_of_location` VALUES ('231', 'МАЛОВИСКІВСЬКИЙ РАЙОН/М.МАЛА ВИСКА', '35');
INSERT INTO `second_level_of_location` VALUES ('231', 'НОВОАЙДАРСЬКИЙ РАЙОН/СМТ НОВОАЙДАР', '44');
INSERT INTO `second_level_of_location` VALUES ('231', 'КРАСНООКНЯНСЬКИЙ РАЙОН/СМТ КРАСНІ ОКНИ', '51');
INSERT INTO `second_level_of_location` VALUES ('231', 'КЕГИЧІВСЬКИЙ РАЙОН/СМТ КЕГИЧІВКА', '63');
INSERT INTO `second_level_of_location` VALUES ('231', 'МАНЬКІВСЬКИЙ РАЙОН/СМТ МАНЬКІВКА', '71');
INSERT INTO `second_level_of_location` VALUES ('232', 'ПІЩАНСЬКИЙ РАЙОН/СМТ ПІЩАНКА', '5');
INSERT INTO `second_level_of_location` VALUES ('232', 'НОВОМОСКОВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('232', 'ПЕРЕЧИНСЬКИЙ РАЙОН/М.ПЕРЕЧИН', '21');
INSERT INTO `second_level_of_location` VALUES ('232', 'КОЛОМИЙСЬКИЙ РАЙОН/М.КОЛОМИЯ', '26');
INSERT INTO `second_level_of_location` VALUES ('232', 'МИРГОРОДСЬКИЙ РАЙОН/М.МИРГОРОД', '53');
INSERT INTO `second_level_of_location` VALUES ('232', 'ЛИПОВОДОЛИНСЬКИЙ РАЙОН/СМТ ЛИПОВА ДОЛИНА', '59');
INSERT INTO `second_level_of_location` VALUES ('232', 'КОЛОМАЦЬКИЙ РАЙОН/СМТ КОЛОМАК', '63');
INSERT INTO `second_level_of_location` VALUES ('232', 'КАЛАНЧАЦЬКИЙ РАЙОН/СМТ КАЛАНЧАК', '65');
INSERT INTO `second_level_of_location` VALUES ('233', 'МАР\'ЇНСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('233', 'МИХАЙЛІВСЬКИЙ РАЙОН/СМТ МИХАЙЛІВКА', '23');
INSERT INTO `second_level_of_location` VALUES ('233', 'ПЕРЕЯСЛАВ-ХМЕЛЬНИЦЬКИЙ РАЙОН/М.ПЕРЕЯСЛАВ-ХМЕЛЬНИЦЬКИЙ', '32');
INSERT INTO `second_level_of_location` VALUES ('233', 'НОВОПСКОВСЬКИЙ РАЙОН/СМТ НОВОПСКОВ', '44');
INSERT INTO `second_level_of_location` VALUES ('233', 'ПЕРЕМИШЛЯНСЬКИЙ РАЙОН/М.ПЕРЕМИШЛЯНИ', '46');
INSERT INTO `second_level_of_location` VALUES ('233', 'ЖОВТНЕВИЙ РАЙОН/М.МИКОЛАЇВ', '48');
INSERT INTO `second_level_of_location` VALUES ('233', 'ЛЮБАШІВСЬКИЙ РАЙОН/СМТ ЛЮБАШІВКА', '51');
INSERT INTO `second_level_of_location` VALUES ('233', 'КРАСНОГРАДСЬКИЙ РАЙОН/М.КРАСНОГРАД', '63');
INSERT INTO `second_level_of_location` VALUES ('233', 'НОВОУШИЦЬКИЙ РАЙОН/СМТ НОВА УШИЦЯ', '68');
INSERT INTO `second_level_of_location` VALUES ('233', 'НІЖИНСЬКИЙ РАЙОН/М.НІЖИН', '74');
INSERT INTO `second_level_of_location` VALUES ('234', 'ПОГРЕБИЩЕНСЬКИЙ РАЙОН/М.ПОГРЕБИЩЕ', '5');
INSERT INTO `second_level_of_location` VALUES ('234', 'МАЛИНСЬКИЙ РАЙОН/М.МАЛИН', '18');
INSERT INTO `second_level_of_location` VALUES ('234', 'НОВГОРОДКІВСЬКИЙ РАЙОН/СМТ НОВГОРОДКА', '35');
INSERT INTO `second_level_of_location` VALUES ('234', 'НОВОСАНЖАРСЬКИЙ РАЙОН/СМТ НОВІ САНЖАРИ', '53');
INSERT INTO `second_level_of_location` VALUES ('234', 'КОСТОПІЛЬСЬКИЙ РАЙОН/М.КОСТОПІЛЬ', '56');
INSERT INTO `second_level_of_location` VALUES ('234', 'КРЕМЕНЕЦЬКИЙ РАЙОН/М.КРЕМЕНЕЦЬ', '61');
INSERT INTO `second_level_of_location` VALUES ('234', 'МОНАСТИРИЩЕНСЬКИЙ РАЙОН/М.МОНАСТИРИЩЕ', '71');
INSERT INTO `second_level_of_location` VALUES ('235', 'Первомайський район/смт Первомайське', '1');
INSERT INTO `second_level_of_location` VALUES ('235', 'ПАВЛОГРАДСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('235', 'ПОЛІСЬКИЙ РАЙОН/СМТ.КРАСЯТИЧІ', '32');
INSERT INTO `second_level_of_location` VALUES ('235', 'МИКОЛАЇВСЬКИЙ РАЙОН/СМТ МИКОЛАЇВКА ', '51');
INSERT INTO `second_level_of_location` VALUES ('235', 'НЕДРИГАЙЛІВСЬКИЙ РАЙОН/СМТ НЕДРИГАЙЛІВ', '59');
INSERT INTO `second_level_of_location` VALUES ('235', 'КРАСНОКУТСЬКИЙ РАЙОН/СМТ КРАСНОКУТСЬК', '63');
INSERT INTO `second_level_of_location` VALUES ('235', 'КАХОВСЬКИЙ РАЙОН/М.КАХОВКА', '65');
INSERT INTO `second_level_of_location` VALUES ('235', 'ПУТИЛЬСЬКИЙ РАЙОН/СМТ ПУТИЛА', '73');
INSERT INTO `second_level_of_location` VALUES ('236', 'НОВОАЗОВСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('236', 'РАХІВСЬКИЙ РАЙОН/М.РАХІВ', '21');
INSERT INTO `second_level_of_location` VALUES ('236', 'НОВОМИКОЛАЇВСЬКИЙ РАЙОН/СМТ НОВОМИКОЛАЇВКА', '23');
INSERT INTO `second_level_of_location` VALUES ('236', 'КОСІВСЬКИЙ РАЙОН/М.КОСІВ', '26');
INSERT INTO `second_level_of_location` VALUES ('236', 'НОВОАРХАНГЕЛЬСЬКИЙ РАЙОН/СМТ НОВОАРХАНГЕЛЬСЬК', '35');
INSERT INTO `second_level_of_location` VALUES ('236', 'ПЕРЕВАЛЬСЬКИЙ РАЙОН/М.ПЕРЕВАЛЬСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('236', 'ПУСТОМИТІВСЬКИЙ РАЙОН/М.ПУСТОМИТИ', '46');
INSERT INTO `second_level_of_location` VALUES ('236', 'КАЗАНКІВСЬКИЙ РАЙОН/СМТ КАЗАНКА', '48');
INSERT INTO `second_level_of_location` VALUES ('236', 'ОРЖИЦЬКИЙ РАЙОН/СМТ ОРЖИЦЯ', '53');
INSERT INTO `second_level_of_location` VALUES ('236', 'ПОЛОНСЬКИЙ РАЙОН/М.ПОЛОННЕ ', '68');
INSERT INTO `second_level_of_location` VALUES ('236', 'НОВГОРОД-СІВЕРСЬКИЙ РАЙОН/М.НОВГОРОД-СІВЕРСЬКИЙ', '74');
INSERT INTO `second_level_of_location` VALUES ('237', 'ТЕПЛИЦЬКИЙ РАЙОН/СМТ ТЕПЛИК', '5');
INSERT INTO `second_level_of_location` VALUES ('237', 'ПЕТРИКІВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('237', 'НАРОДИЦЬКИЙ РАЙОН/СМТ НАРОДИЧІ', '18');
INSERT INTO `second_level_of_location` VALUES ('237', 'РОКИТНЯНСЬКИЙ РАЙОН/СМТ РОКИТНЕ', '32');
INSERT INTO `second_level_of_location` VALUES ('237', 'ОВІДІОПОЛЬСЬКИЙ РАЙОН/СМТ ОВІДІОПОЛЬ', '51');
INSERT INTO `second_level_of_location` VALUES ('237', 'КУП\'ЯНСЬКИЙ РАЙОН/М.КУП\'ЯНСЬК', '63');
INSERT INTO `second_level_of_location` VALUES ('237', 'СМІЛЯНСЬКИЙ РАЙОН/М.СМІЛА', '71');
INSERT INTO `second_level_of_location` VALUES ('238', 'ПЕТРОПАВЛІВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('238', 'НОВОМИРГОРОДСЬКИЙ РАЙОН/М.НОВОМИРГОРОД', '35');
INSERT INTO `second_level_of_location` VALUES ('238', 'ПОПАСНЯНСЬКИЙ РАЙОН/М.ПОПАСНА', '44');
INSERT INTO `second_level_of_location` VALUES ('238', 'ПИРЯТИНСЬКИЙ РАЙОН/М.ПИРЯТИН', '53');
INSERT INTO `second_level_of_location` VALUES ('238', 'МЛИНІВСЬКИЙ РАЙОН/СМТ МЛИНІВ', '56');
INSERT INTO `second_level_of_location` VALUES ('238', 'ПУТИВЛЬСЬКИЙ РАЙОН/М.ПУТИВЛЬ', '59');
INSERT INTO `second_level_of_location` VALUES ('238', 'ЛАНОВЕЦЬКИЙ РАЙОН/М.ЛАНІВЦІ', '61');
INSERT INTO `second_level_of_location` VALUES ('238', 'НИЖНЬОСІРОГОЗЬКИЙ РАЙОН/СМТ НИЖНІ СІРОГОЗИ', '65');
INSERT INTO `second_level_of_location` VALUES ('238', 'НОСІВСЬКИЙ РАЙОН/М.НОСІВКА', '74');
INSERT INTO `second_level_of_location` VALUES ('239', 'Роздольненський район/смт Роздольне', '1');
INSERT INTO `second_level_of_location` VALUES ('239', 'ТОМАШПІЛЬСЬКИЙ РАЙОН/СМТ ТОМАШПІЛЬ', '5');
INSERT INTO `second_level_of_location` VALUES ('239', 'ПЕРШОТРАВНЕВИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('239', 'ОРІХІВСЬКИЙ РАЙОН/М.ОРІХІВ', '23');
INSERT INTO `second_level_of_location` VALUES ('239', 'РАДЕХІВСЬКИЙ РАЙОН/М.РАДЕХІВ', '46');
INSERT INTO `second_level_of_location` VALUES ('239', 'КРИВООЗЕРСЬКИЙ РАЙОН/СМТ КРИВЕ ОЗЕРО', '48');
INSERT INTO `second_level_of_location` VALUES ('239', 'РОЗДІЛЬНЯНСЬКИЙ РАЙОН/М.РОЗДІЛЬНА', '51');
INSERT INTO `second_level_of_location` VALUES ('239', 'ЛОЗІВСЬКИЙ РАЙОН/СМТ КРАСНОПАВЛІВКА', '63');
INSERT INTO `second_level_of_location` VALUES ('239', 'СЛАВУТСЬКИЙ РАЙОН/М.СЛАВУТА', '68');
INSERT INTO `second_level_of_location` VALUES ('240', 'НОВОГРАД-ВОЛИНСЬКИЙ РАЙОН/М.НОВОГРАД-ВОЛИНСЬКИЙ', '18');
INSERT INTO `second_level_of_location` VALUES ('240', 'СВАЛЯВСЬКИЙ РАЙОН/М.СВАЛЯВА', '21');
INSERT INTO `second_level_of_location` VALUES ('240', 'НАДВІРНЯНСЬКИЙ РАЙОН/М.НАДВІРНА', '26');
INSERT INTO `second_level_of_location` VALUES ('240', 'СКВИРСЬКИЙ РАЙОН/М.СКВИРА', '32');
INSERT INTO `second_level_of_location` VALUES ('240', 'НОВОУКРАЇНСЬКИЙ РАЙОН/М.НОВОУКРАЇНКА', '35');
INSERT INTO `second_level_of_location` VALUES ('240', 'СВАТІВСЬКИЙ РАЙОН/М.СВАТОВЕ', '44');
INSERT INTO `second_level_of_location` VALUES ('240', 'ПОЛТАВСЬКИЙ РАЙОН/М.ПОЛТАВА', '53');
INSERT INTO `second_level_of_location` VALUES ('240', 'ТАЛЬНІВСЬКИЙ РАЙОН/М.ТАЛЬНЕ', '71');
INSERT INTO `second_level_of_location` VALUES ('240', 'СОКИРЯНСЬКИЙ РАЙОН/М.СОКИРЯНИ', '73');
INSERT INTO `second_level_of_location` VALUES ('241', 'ТРОСТЯНЕЦЬКИЙ РАЙОН/СМТ ТРОСТЯНЕЦЬ', '5');
INSERT INTO `second_level_of_location` VALUES ('241', 'РЕНІЙСЬКИЙ РАЙОН/М.РЕНІ', '51');
INSERT INTO `second_level_of_location` VALUES ('241', 'РОМЕНСЬКИЙ РАЙОН/М.РОМНИ', '59');
INSERT INTO `second_level_of_location` VALUES ('241', 'НОВОВОРОНЦОВСЬКИЙ РАЙОН/СМТ НОВОВОРОНЦОВКА', '65');
INSERT INTO `second_level_of_location` VALUES ('241', 'ПРИЛУЦЬКИЙ РАЙОН/СМТ ЛАДАН', '74');
INSERT INTO `second_level_of_location` VALUES ('242', 'ПОКРОВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('242', 'СЛОВ\'ЯНСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('242', 'ОВРУЦЬКИЙ РАЙОН/М.ОВРУЧ', '18');
INSERT INTO `second_level_of_location` VALUES ('242', 'ПОЛОГІВСЬКИЙ РАЙОН/М.ПОЛОГИ', '23');
INSERT INTO `second_level_of_location` VALUES ('242', 'СТАВИЩЕНСЬКИЙ РАЙОН/СМТ СТАВИЩЕ', '32');
INSERT INTO `second_level_of_location` VALUES ('242', 'СВЕРДЛОВСЬКИЙ РАЙОН/М.СВЕРДЛОВСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('242', 'САМБІРСЬКИЙ РАЙОН/М.САМБІР', '46');
INSERT INTO `second_level_of_location` VALUES ('242', 'МИКОЛАЇВСЬКИЙ РАЙОН/М.МИКОЛАЇВ', '48');
INSERT INTO `second_level_of_location` VALUES ('242', 'РЕШЕТИЛІВСЬКИЙ РАЙОН/СМТ РЕШЕТИЛІВКА', '53');
INSERT INTO `second_level_of_location` VALUES ('242', 'ОСТРОЗЬКИЙ РАЙОН/М.ОСТРОГ', '56');
INSERT INTO `second_level_of_location` VALUES ('242', 'МОНАСТИРИСЬКИЙ РАЙОН/М.МОНАСТИРИСЬКА', '61');
INSERT INTO `second_level_of_location` VALUES ('242', 'НОВОВОДОЛАЗЬКИЙ РАЙОН/СМТ НОВА ВОДОЛАГА', '63');
INSERT INTO `second_level_of_location` VALUES ('242', 'СТАРОКОСТЯНТИНІВСЬКИЙ РАЙОН/М.СТАРОКОСТЯНТИНІВ', '68');
INSERT INTO `second_level_of_location` VALUES ('243', 'Сакський район/м.Саки', '1');
INSERT INTO `second_level_of_location` VALUES ('243', 'ТУЛЬЧИНСЬКИЙ РАЙОН/М.ТУЛЬЧИН', '5');
INSERT INTO `second_level_of_location` VALUES ('243', 'ВІЛЬШАНСЬКИЙ РАЙОН/СМТ ВІЛЬШАНКА', '35');
INSERT INTO `second_level_of_location` VALUES ('243', 'САВРАНСЬКИЙ РАЙОН/СМТ САВРАНЬ', '51');
INSERT INTO `second_level_of_location` VALUES ('243', 'УМАНСЬКИЙ РАЙОН/М.УМАНЬ', '71');
INSERT INTO `second_level_of_location` VALUES ('244', 'ОЛЕВСЬКИЙ РАЙОН/М.ОЛЕВСЬК', '18');
INSERT INTO `second_level_of_location` VALUES ('244', 'ТЯЧІВСЬКИЙ РАЙОН/М.ТЯЧІВ', '21');
INSERT INTO `second_level_of_location` VALUES ('244', 'РОГАТИНСЬКИЙ РАЙОН/М.РОГАТИН', '26');
INSERT INTO `second_level_of_location` VALUES ('244', 'ТАРАЩАНСЬКИЙ РАЙОН/М.ТАРАЩА', '32');
INSERT INTO `second_level_of_location` VALUES ('244', 'СЕРЕДИНО-БУДСЬКИЙ РАЙОН/М.СЕРЕДИНО-БУДА', '59');
INSERT INTO `second_level_of_location` VALUES ('244', 'НОВОТРОЇЦЬКИЙ РАЙОН/СМТ НОВОТРОЇЦЬКЕ', '65');
INSERT INTO `second_level_of_location` VALUES ('244', 'СТАРОСИНЯВСЬКИЙ РАЙОН/СМТ СТАРА СИНЯВА', '68');
INSERT INTO `second_level_of_location` VALUES ('244', 'РІПКИНСЬКИЙ РАЙОН/СМТ РІПКИ', '74');
INSERT INTO `second_level_of_location` VALUES ('245', 'ТИВРІВСЬКИЙ РАЙОН/СМТ ТИВРІВ', '5');
INSERT INTO `second_level_of_location` VALUES ('245', 'П\'ЯТИХАТСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('245', 'СТАРОБЕШІВСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('245', 'ПРИАЗОВСЬКИЙ РАЙОН/СМТ ПРИАЗОВСЬКЕ', '23');
INSERT INTO `second_level_of_location` VALUES ('245', 'СЛОВ\'ЯНОСЕРБСЬКИЙ РАЙОН/СМТ СЛОВ\'ЯНОСЕРБСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('245', 'СКОЛІВСЬКИЙ РАЙОН/М.СКОЛЕ', '46');
INSERT INTO `second_level_of_location` VALUES ('245', 'НОВОБУЗЬКИЙ РАЙОН/М.НОВИЙ БУГ', '48');
INSERT INTO `second_level_of_location` VALUES ('245', 'САРАТСЬКИЙ РАЙОН/СМТ САРАТА', '51');
INSERT INTO `second_level_of_location` VALUES ('245', 'СЕМЕНІВСЬКИЙ РАЙОН/СМТ СЕМЕНІВКА', '53');
INSERT INTO `second_level_of_location` VALUES ('245', 'ПЕРВОМАЙСЬКИЙ РАЙОН/М.ПЕРВОМАЙСЬКИЙ ', '63');
INSERT INTO `second_level_of_location` VALUES ('245', 'СТОРОЖИНЕЦЬКИЙ РАЙОН/М.СТОРОЖИНЕЦЬ', '73');
INSERT INTO `second_level_of_location` VALUES ('246', 'ТЕТІЇВСЬКИЙ РАЙОН/М.ТЕТІЇВ', '32');
INSERT INTO `second_level_of_location` VALUES ('246', 'ОНУФРІЇВСЬКИЙ РАЙОН/СМТ ОНУФРІЇВКА', '35');
INSERT INTO `second_level_of_location` VALUES ('246', 'РІВНЕНСЬКИЙ РАЙОН/М.РІВНЕ', '56');
INSERT INTO `second_level_of_location` VALUES ('246', 'ПІДВОЛОЧИСЬКИЙ РАЙОН/СМТ ПІДВОЛОЧИСЬК', '61');
INSERT INTO `second_level_of_location` VALUES ('246', 'ПЕЧЕНІЗЬКИЙ РАЙОН/СМТ ПЕЧЕНІГИ', '63');
INSERT INTO `second_level_of_location` VALUES ('246', 'ХРИСТИНІВСЬКИЙ РАЙОН/М.ХРИСТИНІВКА', '71');
INSERT INTO `second_level_of_location` VALUES ('247', 'Сімферопольський район/м.Сімферополь', '1');
INSERT INTO `second_level_of_location` VALUES ('247', 'ПОПІЛЬНЯНСЬКИЙ РАЙОН/СМТ ПОПІЛЬНЯ', '18');
INSERT INTO `second_level_of_location` VALUES ('247', 'ТАРУТИНСЬКИЙ РАЙОН/СМТ ТАРУТИНЕ', '51');
INSERT INTO `second_level_of_location` VALUES ('247', 'СУМСЬКИЙ РАЙОН/М.СУМИ', '59');
INSERT INTO `second_level_of_location` VALUES ('247', 'СКАДОВСЬКИЙ РАЙОН/М.СКАДОВСЬК', '65');
INSERT INTO `second_level_of_location` VALUES ('247', 'ТЕОФІПОЛЬСЬКИЙ РАЙОН/СМТ ТЕОФІПОЛЬ', '68');
INSERT INTO `second_level_of_location` VALUES ('247', 'СЕМЕНІВСЬКИЙ РАЙОН/М.СЕМЕНІВКА', '74');
INSERT INTO `second_level_of_location` VALUES ('248', 'ХМІЛЬНИЦЬКИЙ РАЙОН/М.ХМІЛЬНИК', '5');
INSERT INTO `second_level_of_location` VALUES ('248', 'СИНЕЛЬНИКІВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('248', 'ТЕЛЬМАНІВСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('248', 'УЖГОРОДСЬКИЙ РАЙОН/М.УЖГОРОД', '21');
INSERT INTO `second_level_of_location` VALUES ('248', 'ПРИМОРСЬКИЙ РАЙОН/М.ПРИМОРСЬК', '23');
INSERT INTO `second_level_of_location` VALUES ('248', 'РОЖНЯТІВСЬКИЙ РАЙОН/СМТ РОЖНЯТІВ', '26');
INSERT INTO `second_level_of_location` VALUES ('248', 'СТАНИЧНО-ЛУГАНСЬКИЙ РАЙОН/СМТ СТАНИЧНО-ЛУГАНСЬКЕ', '44');
INSERT INTO `second_level_of_location` VALUES ('248', 'СОКАЛЬСЬКИЙ РАЙОН/М.СОКАЛЬ', '46');
INSERT INTO `second_level_of_location` VALUES ('248', 'НОВООДЕСЬКИЙ РАЙОН/М.НОВА ОДЕСА', '48');
INSERT INTO `second_level_of_location` VALUES ('248', 'ХОРОЛЬСЬКИЙ РАЙОН/М.ХОРОЛ', '53');
INSERT INTO `second_level_of_location` VALUES ('248', 'ПІДГАЄЦЬКИЙ РАЙОН/М.ПІДГАЙЦІ', '61');
INSERT INTO `second_level_of_location` VALUES ('248', 'САХНОВЩИНСЬКИЙ РАЙОН/СМТ САХНОВЩИНА', '63');
INSERT INTO `second_level_of_location` VALUES ('249', 'ЧЕРНІВЕЦЬКИЙ РАЙОН/СМТ ЧЕРНІВЦІ', '5');
INSERT INTO `second_level_of_location` VALUES ('249', 'РОЗІВСЬКИЙ РАЙОН/СМТ РОЗІВКА', '23');
INSERT INTO `second_level_of_location` VALUES ('249', 'ФАСТІВСЬКИЙ РАЙОН/М.ФАСТІВ', '32');
INSERT INTO `second_level_of_location` VALUES ('249', 'ПЕТРІВСЬКИЙ РАЙОН/СМТ ПЕТРОВЕ', '35');
INSERT INTO `second_level_of_location` VALUES ('249', 'ЧЕРКАСЬКИЙ РАЙОН/М.ЧЕРКАСИ', '71');
INSERT INTO `second_level_of_location` VALUES ('249', 'СОСНИЦЬКИЙ РАЙОН/СМТ СОСНИЦЯ', '74');
INSERT INTO `second_level_of_location` VALUES ('250', 'ЧЕЧЕЛЬНИЦЬКИЙ РАЙОН/СМТ ЧЕЧЕЛЬНИК', '5');
INSERT INTO `second_level_of_location` VALUES ('250', 'СОЛОНЯНСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('250', 'РАДОМИШЛЬСЬКИЙ РАЙОН/М.РАДОМИШЛЬ', '18');
INSERT INTO `second_level_of_location` VALUES ('250', 'ТАТАРБУНАРСЬКИЙ РАЙОН/М.ТАТАРБУНАРИ', '51');
INSERT INTO `second_level_of_location` VALUES ('250', 'РОКИТНІВСЬКИЙ РАЙОН/СМТ РОКИТНЕ', '56');
INSERT INTO `second_level_of_location` VALUES ('250', 'ТРОСТЯНЕЦЬКИЙ РАЙОН/М.ТРОСТЯНЕЦЬ', '59');
INSERT INTO `second_level_of_location` VALUES ('250', 'ТЕРЕБОВЛЯНСЬКИЙ РАЙОН/М.ТЕРЕБОВЛЯ', '61');
INSERT INTO `second_level_of_location` VALUES ('250', 'ЦЮРУПИНСЬКИЙ РАЙОН/М.ЦЮРУПИНСЬК', '65');
INSERT INTO `second_level_of_location` VALUES ('250', 'ХМЕЛЬНИЦЬКИЙ РАЙОН/М.ХМЕЛЬНИЦЬКИЙ', '68');
INSERT INTO `second_level_of_location` VALUES ('250', 'ХОТИНСЬКИЙ РАЙОН/М.ХОТИН', '73');
INSERT INTO `second_level_of_location` VALUES ('251', 'СТАРОБІЛЬСЬКИЙ РАЙОН/М.СТАРОБІЛЬСЬК', '44');
INSERT INTO `second_level_of_location` VALUES ('251', 'СТАРОСАМБІРСЬКИЙ РАЙОН/М.СТАРИЙ САМБІР', '46');
INSERT INTO `second_level_of_location` VALUES ('251', 'ОЧАКІВСЬКИЙ РАЙОН/М.ОЧАКІВ', '48');
INSERT INTO `second_level_of_location` VALUES ('251', 'ЧОРНУХИНСЬКИЙ РАЙОН/СМТ ЧОРНУХИ', '53');
INSERT INTO `second_level_of_location` VALUES ('251', 'ХАРКІВСЬКИЙ РАЙОН/М.ХАРКІВ', '63');
INSERT INTO `second_level_of_location` VALUES ('251', 'ЧОРНОБАЇВСЬКИЙ РАЙОН/СМТ ЧОРНОБАЙ', '71');
INSERT INTO `second_level_of_location` VALUES ('251', 'СРІБНЯНСЬКИЙ РАЙОН/СМТ СРІБНЕ', '74');
INSERT INTO `second_level_of_location` VALUES ('252', 'Совєтський район/смт Совєтський', '1');
INSERT INTO `second_level_of_location` VALUES ('252', 'СОФІЇВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('252', 'ШАХТАРСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('252', 'РУЖИНСЬКИЙ РАЙОН/СМТ РУЖИН', '18');
INSERT INTO `second_level_of_location` VALUES ('252', 'ТОКМАЦЬКИЙ РАЙОН/М.ТОКМАК', '23');
INSERT INTO `second_level_of_location` VALUES ('252', 'СНЯТИНСЬКИЙ РАЙОН/М.СНЯТИН', '26');
INSERT INTO `second_level_of_location` VALUES ('252', 'СВІТЛОВОДСЬКИЙ РАЙОН/М.СВІТЛОВОДСЬК', '35');
INSERT INTO `second_level_of_location` VALUES ('252', 'ФРУНЗІВСЬКИЙ РАЙОН/СМТ ФРУНЗІВКА', '51');
INSERT INTO `second_level_of_location` VALUES ('252', 'ТЕРНОПІЛЬСЬКИЙ РАЙОН/М.ТЕРНОПІЛЬ', '61');
INSERT INTO `second_level_of_location` VALUES ('252', 'ЧЕМЕРОВЕЦЬКИЙ РАЙОН/СМТ ЧЕМЕРІВЦІ', '68');
INSERT INTO `second_level_of_location` VALUES ('253', 'ШАРГОРОДСЬКИЙ РАЙОН/М.ШАРГОРОД', '5');
INSERT INTO `second_level_of_location` VALUES ('253', 'ХУСТСЬКИЙ РАЙОН/М.ХУСТ', '21');
INSERT INTO `second_level_of_location` VALUES ('253', 'СТРИЙСЬКИЙ РАЙОН/М.СТРИЙ', '46');
INSERT INTO `second_level_of_location` VALUES ('253', 'ШОСТКИНСЬКИЙ РАЙОН/М.ШОСТКА', '59');
INSERT INTO `second_level_of_location` VALUES ('253', 'ТАЛАЛАЇВСЬКИЙ РАЙОН/СМТ ТАЛАЛАЇВКА', '74');
INSERT INTO `second_level_of_location` VALUES ('254', 'ТОМАКІВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('254', 'ЧЕРВОНОАРМІЙСЬКИЙ РАЙОН/СМТ ЧЕРВОНОАРМІЙСЬК', '18');
INSERT INTO `second_level_of_location` VALUES ('254', 'ТРОЇЦЬКИЙ РАЙОН/СМТ ТРОЇЦЬКЕ', '44');
INSERT INTO `second_level_of_location` VALUES ('254', 'ПЕРВОМАЙСЬКИЙ РАЙОН/М.ПЕРВОМАЙСЬК', '48');
INSERT INTO `second_level_of_location` VALUES ('254', 'ШИРЯЇВСЬКИЙ РАЙОН/СМТ ШИРЯЄВЕ', '51');
INSERT INTO `second_level_of_location` VALUES ('254', 'ЧУТІВСЬКИЙ РАЙОН/СМТ ЧУТОВЕ', '53');
INSERT INTO `second_level_of_location` VALUES ('254', 'САРНЕНСЬКИЙ РАЙОН/М.САРНИ', '56');
INSERT INTO `second_level_of_location` VALUES ('254', 'ЧУГУЇВСЬКИЙ РАЙОН/М.ЧУГУЇВ', '63');
INSERT INTO `second_level_of_location` VALUES ('254', 'ЧАПЛИНСЬКИЙ РАЙОН/СМТ ЧАПЛИНКА', '65');
INSERT INTO `second_level_of_location` VALUES ('254', 'ЧИГИРИНСЬКИЙ РАЙОН/М.ЧИГИРИН', '71');
INSERT INTO `second_level_of_location` VALUES ('255', 'ЯСИНУВАТСЬКИЙ РАЙОН', '14');
INSERT INTO `second_level_of_location` VALUES ('255', 'ЧЕРНІГІВСЬКИЙ РАЙОН/СМТ ЧЕРНІГІВКА', '23');
INSERT INTO `second_level_of_location` VALUES ('255', 'ЯГОТИНСЬКИЙ РАЙОН/М.ЯГОТИН', '32');
INSERT INTO `second_level_of_location` VALUES ('255', 'УЛЬЯНОВСЬКИЙ РАЙОН/М.УЛЬЯНОВКА', '35');
INSERT INTO `second_level_of_location` VALUES ('255', 'ТУРКІВСЬКИЙ РАЙОН/М.ТУРКА', '46');
INSERT INTO `second_level_of_location` VALUES ('255', 'ЧОРТКІВСЬКИЙ РАЙОН/М.ЧОРТКІВ', '61');
INSERT INTO `second_level_of_location` VALUES ('255', 'ШЕПЕТІВСЬКИЙ РАЙОН/М.ШЕПЕТІВКА', '68');
INSERT INTO `second_level_of_location` VALUES ('255', 'ЧЕРНІГІВСЬКИЙ РАЙОН/М.ЧЕРНІГІВ', '74');
INSERT INTO `second_level_of_location` VALUES ('256', 'Чорноморський район/смт Чорноморське', '1');
INSERT INTO `second_level_of_location` VALUES ('256', 'ЯМПІЛЬСЬКИЙ РАЙОН/М.ЯМПІЛЬ', '5');
INSERT INTO `second_level_of_location` VALUES ('256', 'ЦАРИЧАНСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('256', 'ЧЕРНЯХІВСЬКИЙ РАЙОН/СМТ ЧЕРНЯХІВ', '18');
INSERT INTO `second_level_of_location` VALUES ('256', 'ТЛУМАЦЬКИЙ РАЙОН/М.ТЛУМАЧ', '26');
INSERT INTO `second_level_of_location` VALUES ('256', 'ЯМПІЛЬСЬКИЙ РАЙОН/СМТ ЯМПІЛЬ', '59');
INSERT INTO `second_level_of_location` VALUES ('257', 'СНІГУРІВСЬКИЙ РАЙОН/М.СНІГУРІВКА', '48');
INSERT INTO `second_level_of_location` VALUES ('257', 'ШИШАЦЬКИЙ РАЙОН/СМТ ШИШАКИ', '53');
INSERT INTO `second_level_of_location` VALUES ('257', 'ШЕВЧЕНКІВСЬКИЙ РАЙОН/СМТ ШЕВЧЕНКОВЕ', '63');
INSERT INTO `second_level_of_location` VALUES ('257', 'ШПОЛЯНСЬКИЙ РАЙОН/М.ШПОЛА', '71');
INSERT INTO `second_level_of_location` VALUES ('258', 'ШИРОКІВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('258', 'ЧУДНІВСЬКИЙ РАЙОН/СМТ ЧУДНІВ', '18');
INSERT INTO `second_level_of_location` VALUES ('258', 'ТИСМЕНИЦЬКИЙ РАЙОН/М.ТИСМЕНИЦЯ', '26');
INSERT INTO `second_level_of_location` VALUES ('258', 'УСТИНІВСЬКИЙ РАЙОН/СМТ УСТИНІВКА', '35');
INSERT INTO `second_level_of_location` VALUES ('258', 'ЯВОРІВСЬКИЙ РАЙОН/М.ЯВОРІВ', '46');
INSERT INTO `second_level_of_location` VALUES ('258', 'РАДИВИЛІВСЬКИЙ РАЙОН/М.РАДИВИЛІВ', '56');
INSERT INTO `second_level_of_location` VALUES ('258', 'ШУМСЬКИЙ РАЙОН/М.ШУМСЬК', '61');
INSERT INTO `second_level_of_location` VALUES ('258', 'ЯРМОЛИНЕЦЬКИЙ РАЙОН/СМТ ЯРМОЛИНЦІ', '68');
INSERT INTO `second_level_of_location` VALUES ('258', 'ЩОРСЬКИЙ РАЙОН/М.ЩОРС', '74');
INSERT INTO `second_level_of_location` VALUES ('259', 'ЮР\'ЇВСЬКИЙ РАЙОН', '12');
INSERT INTO `second_level_of_location` VALUES ('361', 'ГОЛОСІЇВСЬКИЙ', '80');
INSERT INTO `second_level_of_location` VALUES ('363', 'ДАРНИЦЬКИЙ', '80');
INSERT INTO `second_level_of_location` VALUES ('363', 'БАЛАКЛАВСЬКИЙ', '85');
INSERT INTO `second_level_of_location` VALUES ('364', 'ДЕСНЯНСЬКИЙ', '80');
INSERT INTO `second_level_of_location` VALUES ('364', 'ГАГАРІНСЬКИЙ', '85');
INSERT INTO `second_level_of_location` VALUES ('366', 'ДНІПРОВСЬКИЙ', '80');
INSERT INTO `second_level_of_location` VALUES ('366', 'ЛЕНІНСЬКИЙ', '85');
INSERT INTO `second_level_of_location` VALUES ('369', 'НАХІМОВСЬКИЙ', '85');
INSERT INTO `second_level_of_location` VALUES ('380', 'ОБОЛОНСЬКИЙ', '80');
INSERT INTO `second_level_of_location` VALUES ('382', 'ПЕЧЕРСЬКИЙ', '80');
INSERT INTO `second_level_of_location` VALUES ('385', 'ПОДІЛЬСЬКИЙ', '80');
INSERT INTO `second_level_of_location` VALUES ('386', 'СВЯТОШИНСЬКИЙ', '80');
INSERT INTO `second_level_of_location` VALUES ('389', 'СОЛОМ\'ЯНСЬКИЙ', '80');
INSERT INTO `second_level_of_location` VALUES ('391', 'ШЕВЧЕНКІВСЬКИЙ', '80');

-- ----------------------------
-- Table structure for `statuse`
-- ----------------------------
DROP TABLE IF EXISTS `statuse`;
CREATE TABLE `statuse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of statuse
-- ----------------------------
INSERT INTO `statuse` VALUES ('1', 'Всеукраїнський');
INSERT INTO `statuse` VALUES ('2', 'Міжнародний');
INSERT INTO `statuse` VALUES ('3', 'Місцевий');
INSERT INTO `statuse` VALUES ('4', 'Обласний');
INSERT INTO `statuse` VALUES ('5', 'Первинний');
INSERT INTO `statuse` VALUES ('6', 'Регіональний');
INSERT INTO `statuse` VALUES ('7', 'Республіканський');

-- ----------------------------
-- Table structure for `symbolic`
-- ----------------------------
DROP TABLE IF EXISTS `symbolic`;
CREATE TABLE `symbolic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET utf8,
  `image` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `date_of_registration` datetime DEFAULT NULL,
  `type_of_symbolic_id` int(11) NOT NULL,
  `public_association_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_symbolic_type_of_symbolic1_idx` (`type_of_symbolic_id`),
  KEY `fk_symbolic_public_association1_idx` (`public_association_id`),
  CONSTRAINT `fk_symbolic_public_association1` FOREIGN KEY (`public_association_id`) REFERENCES `public_association` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_symbolic_type_of_symbolic1` FOREIGN KEY (`type_of_symbolic_id`) REFERENCES `type_of_symbolic` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of symbolic
-- ----------------------------

-- ----------------------------
-- Table structure for `termination_of_activity`
-- ----------------------------
DROP TABLE IF EXISTS `termination_of_activity`;
CREATE TABLE `termination_of_activity` (
  `public_association_id` int(11) NOT NULL,
  `cause` text CHARACTER SET utf8 NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`public_association_id`),
  CONSTRAINT `fk_termination_of_activity_public_association1` FOREIGN KEY (`public_association_id`) REFERENCES `public_association` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of termination_of_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `third_level_of_location`
-- ----------------------------
DROP TABLE IF EXISTS `third_level_of_location`;
CREATE TABLE `third_level_of_location` (
  `code` int(11) NOT NULL,
  `name` text CHARACTER SET utf8,
  `second_level_of_location_code` int(11) NOT NULL,
  `first_level_of_location_code` int(11) NOT NULL,
  PRIMARY KEY (`code`,`second_level_of_location_code`,`first_level_of_location_code`),
  KEY `fk_third_level_of_location_second_level_of_location1_idx` (`second_level_of_location_code`,`first_level_of_location_code`),
  CONSTRAINT `fk_third_level_of_location_second_level_of_location1` FOREIGN KEY (`second_level_of_location_code`, `first_level_of_location_code`) REFERENCES `second_level_of_location` (`code`, `first_level_of_location_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of third_level_of_location
-- ----------------------------
INSERT INTO `third_level_of_location` VALUES ('101', 'БАР', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('101', 'БАХМАЧ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('101', 'Бахчисарай', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('101', 'БЕРШАДЬ', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('101', 'АМВРОСІЇВКА ', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('101', 'БОБРОВИЦЯ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('101', 'Білогірськ', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('101', 'ГАЙСИН', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('101', 'БОРЗНА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('101', 'ІЛЛІНЦІ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('101', 'ВОЛНОВАХА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('101', 'МАР\'ЇНКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('101', 'НОВОАЗОВСЬК', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('103', 'ІНКЕРМАН', '363', '85');
INSERT INTO `third_level_of_location` VALUES ('104', 'СІВЕРСЬК', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('104', 'Старий Крим', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('104', 'КРАСНОГОРІВКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('104', 'КОМСОМОЛЬСЬКЕ', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('106', 'КУРАХОВЕ', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('361', 'ГІРНИЦЬКИЙ', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('362', 'БУДЬОНІВСЬКИЙ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('363', 'Залізничний район', '101', '1');
INSERT INTO `third_level_of_location` VALUES ('363', 'ЗАМОСТЯНСЬКИЙ', '101', '5');
INSERT INTO `third_level_of_location` VALUES ('363', 'ВОРОШИЛОВСЬКИЙ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('363', 'ДЕСНЯНСЬКИЙ', '101', '74');
INSERT INTO `third_level_of_location` VALUES ('363', 'КАЛІНІНСЬКИЙ', '106', '14');
INSERT INTO `third_level_of_location` VALUES ('363', 'ЖОВТНЕВИЙ', '123', '14');
INSERT INTO `third_level_of_location` VALUES ('363', 'КІРОВСЬКИЙ', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('366', 'Київський район', '101', '1');
INSERT INTO `third_level_of_location` VALUES ('366', 'ЛЕНІНСЬКИЙ', '101', '5');
INSERT INTO `third_level_of_location` VALUES ('366', 'КАЛІНІНСЬКИЙ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('366', 'НОВОЗАВОДСЬКИЙ', '101', '74');
INSERT INTO `third_level_of_location` VALUES ('366', 'МИКИТІВСЬКИЙ', '106', '14');
INSERT INTO `third_level_of_location` VALUES ('366', 'ІЛЛІЧІВСЬКИЙ', '123', '14');
INSERT INTO `third_level_of_location` VALUES ('366', 'СОВЄТСЬКИЙ', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('369', 'Центральний район', '101', '1');
INSERT INTO `third_level_of_location` VALUES ('369', 'КИЇВСЬКИЙ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('369', 'ЦЕНТРАЛЬНО-МІСЬКИЙ', '106', '14');
INSERT INTO `third_level_of_location` VALUES ('369', 'ОРДЖОНІКІДЗЕВСЬКИЙ', '123', '14');
INSERT INTO `third_level_of_location` VALUES ('369', 'ЦЕНТРАЛЬНО-МІСЬКИЙ', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('370', 'СТАРОМІСЬКИЙ', '101', '5');
INSERT INTO `third_level_of_location` VALUES ('371', 'КІРОВСЬКИЙ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('372', 'ПРИМОРСЬКИЙ', '123', '14');
INSERT INTO `third_level_of_location` VALUES ('372', 'ЧЕРВОНОГВАРДІЙСЬКИЙ', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('374', 'КУЙБИШЕВСЬКИЙ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('377', 'ЛЕНІНСЬКИЙ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('380', 'ПЕТРОВСЬКИЙ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('383', 'ПРОЛЕТАРСЬКИЙ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('410', 'ЗАЛІЗНИЧНЕ', '105', '5');
INSERT INTO `third_level_of_location` VALUES ('451', 'Научний', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('452', 'Курортне', '116', '1');
INSERT INTO `third_level_of_location` VALUES ('452', 'Новий Світ', '117', '1');
INSERT INTO `third_level_of_location` VALUES ('452', 'Берегове', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('453', 'Заозерне', '109', '1');
INSERT INTO `third_level_of_location` VALUES ('453', 'КІРОВЕ', '112', '14');
INSERT INTO `third_level_of_location` VALUES ('453', 'ВОДЯНСЬКЕ', '115', '14');
INSERT INTO `third_level_of_location` VALUES ('453', 'ОЛЕКСІЄВО-ДРУЖКІВКА', '117', '14');
INSERT INTO `third_level_of_location` VALUES ('453', 'ОЛЕКСАНДРІВСЬКЕ', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('453', 'ОЛЕКСАНДРІВКА', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('453', 'ВИШНЕВЕ', '138', '14');
INSERT INTO `third_level_of_location` VALUES ('453', 'АНДРІЇВКА', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('454', 'Партеніт', '103', '1');
INSERT INTO `third_level_of_location` VALUES ('454', 'МИРОНІВСЬКИЙ', '109', '14');
INSERT INTO `third_level_of_location` VALUES ('454', 'Орджонікідзе', '116', '1');
INSERT INTO `third_level_of_location` VALUES ('454', 'Нікіта', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('454', 'ПЕЛАГІЇВКА', '147', '14');
INSERT INTO `third_level_of_location` VALUES ('454', 'КОНТАРНЕ ', '153', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'КРАСНА ГОРА', '103', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'Мирний', '109', '1');
INSERT INTO `third_level_of_location` VALUES ('456', 'КУРДЮМІВКА', '112', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'НОВОДОНЕЦЬКЕ', '115', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'НОВОГРИГОРІВКА', '117', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'Виноградне', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('456', 'БУЛАВИНСЬКЕ', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'БІЛЕНЬКЕ', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'ШЕВЧЕНКО', '132', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'КОМИШІВКА', '138', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'БРАЖИНЕ', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('456', 'ВОЙКОВЕ', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('457', 'Коктебель', '116', '1');
INSERT INTO `third_level_of_location` VALUES ('457', 'РОЗСИПНЕ', '147', '14');
INSERT INTO `third_level_of_location` VALUES ('457', 'МОСКОВСЬКЕ', '153', '14');
INSERT INTO `third_level_of_location` VALUES ('458', 'Новоозерне', '109', '1');
INSERT INTO `third_level_of_location` VALUES ('458', 'НОВОМИКОЛАЇВКА', '117', '14');
INSERT INTO `third_level_of_location` VALUES ('459', 'ЛЕНІНСЬКЕ', '112', '14');
INSERT INTO `third_level_of_location` VALUES ('459', 'Восход', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('459', 'ДРУЖНЕ', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('459', 'КОМИШУВАХА', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('459', 'КУРАХІВКА', '138', '14');
INSERT INTO `third_level_of_location` VALUES ('459', 'ГІРНИЦЬКЕ', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('459', 'ГІРНЕ', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('460', 'Приморський', '116', '1');
INSERT INTO `third_level_of_location` VALUES ('460', 'СЕРДИТЕ ', '153', '14');
INSERT INTO `third_level_of_location` VALUES ('462', 'НЕЛІПІВКА', '112', '14');
INSERT INTO `third_level_of_location` VALUES ('462', 'РАЙСЬКЕ', '117', '14');
INSERT INTO `third_level_of_location` VALUES ('462', 'Гаспра', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('462', 'КРАСНОТОРКА', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('462', 'ГОСТРЕ', '138', '14');
INSERT INTO `third_level_of_location` VALUES ('462', 'ЗАЛІСНЕ', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('462', 'ЗУЇВКА', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('464', 'СТІЖКІВСЬКЕ', '153', '14');
INSERT INTO `third_level_of_location` VALUES ('465', 'НОВГОРОДСЬКЕ', '112', '14');
INSERT INTO `third_level_of_location` VALUES ('465', 'Щебетовка', '116', '1');
INSERT INTO `third_level_of_location` VALUES ('465', 'Голуба Затока', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('465', 'КАРЛО-МАРКСОВЕ', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('465', 'МАЛОТАРАНІВКА', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('465', 'ЦУКУРИНЕ', '138', '14');
INSERT INTO `third_level_of_location` VALUES ('465', 'ЛИМАНЧУК', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('465', 'МИКОЛАЇВКА', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('468', 'ПЕТРІВКА', '112', '14');
INSERT INTO `third_level_of_location` VALUES ('468', 'Гурзуф', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('468', 'КОРСУНЬ', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('468', 'СОФІЇВКА', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('468', 'НИКИФОРОВЕ', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('468', 'ПОКРОВКА', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('470', 'Кацівелі', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('470', 'ВІЛЬХІВКА', '121', '14');
INSERT INTO `third_level_of_location` VALUES ('471', 'Кореїз', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('471', 'ШАБЕЛЬКІВКА', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('471', 'ПЕРВОМАЙСЬКИЙ', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('472', 'ЩЕРБИНІВКА', '112', '14');
INSERT INTO `third_level_of_location` VALUES ('472', 'ТРОЇЦЬКО-ХАРЦИЗЬК', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('474', 'Краснокам\'янка', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('474', 'ОЛЕНІВКА', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('474', 'ЯСНА ПОЛЯНА', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('474', 'ПЕРВОМАЙСЬКЕ', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('475', 'ШАХТНЕ', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('476', 'ОЛЬХОВАТКА', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('477', 'Курпати', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('477', 'ЯСНОГІРКА', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('477', 'ПОБЄДА', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('478', 'ШИРОКЕ ', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('479', 'Лівадія', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('479', 'ПРИБЕРЕЖНЕ', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('480', 'СЄВЕРНЕ', '144', '14');
INSERT INTO `third_level_of_location` VALUES ('481', 'Масандра', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('483', 'Ореанда', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('485', 'Відрадне', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('487', 'Паркове', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('489', 'Понизівка', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('491', 'Санаторне', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('493', 'Симеїз', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('495', 'Совєтське', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('497', 'Форос', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('551', 'ОЛЕКСАНДРІВКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('551', 'ВЕЛИКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('551', 'Кіровське', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('551', 'ВОЛОДАРСЬКЕ ', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('551', 'МАНГУШ', '239', '14');
INSERT INTO `third_level_of_location` VALUES ('551', 'СТАРОБЕШЕВЕ', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('551', 'ТЕЛЬМАНОВЕ', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('552', 'Азовське', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('552', 'ГРОДІВКА ', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('552', 'ВЕРХНЬОТОРЕЦЬКЕ ', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('553', 'КОПАЙГОРОД', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('553', 'БАТУРИН', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('553', 'Куйбишеве', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('553', 'ВОРОНОВИЦЯ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('553', 'ВОЙКОВСЬКИЙ', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('553', 'Зуя', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('553', 'БРАЇЛІВ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('553', 'БРОДЕЦЬКЕ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('553', 'БЛАГОДАТНЕ', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('553', 'ОЛЕКСАНДРІВКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('553', 'АНДРІЇВКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('553', 'АНДРІЇВКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('553', 'ЖЕЛАННЕ ', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('554', 'ЛУГАНСЬКЕ ', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('554', 'Вільне', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('554', 'ДАШІВ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('554', 'ДРОБИШЕВЕ ', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('554', 'СЄДОВЕ', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('554', 'НОВИЙ СВІТ', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('555', 'ДЕСНА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('555', 'ГЛУХІВЦІ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('555', 'СВЯТОГОРІВКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('555', 'ЯЛТА', '239', '14');
INSERT INTO `third_level_of_location` VALUES ('556', 'ДМИТРІВКА', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('556', 'Поштове', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('556', 'КУТЕЙНИКОВЕ', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('556', 'ВОЛОДИМИРІВКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('556', 'НОВОЕКОНОМІЧНЕ ', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('556', 'ІЛЛІНКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('556', 'БИЛБАСІВКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('556', 'МИРНЕ', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('556', 'КЕРАМІК', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('557', 'КІРОВСЬК', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('559', 'СТРИЖАВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('559', 'НОВОАМВРОСІЇВСЬКЕ', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('559', 'ДОНСЬКЕ', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('559', 'ДОНЕЦЬКЕ', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('559', 'ОЧЕРЕТИНЕ', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('560', 'НОВОСЕЛІВКА', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('562', 'СТАРОМИХАЙЛІВКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('562', 'РАЙГОРОДОК', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('563', 'УДАЧНЕ ', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('564', 'ЯМПІЛЬ', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('565', 'КОМСОМОЛЬСЬКИЙ', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('565', 'ЧЕРКАСЬКЕ', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('566', 'ЯРОВА', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('568', 'НОВОТРОЇЦЬКЕ', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('571', 'ОЛЕНІВКА ', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('572', 'ОЛЬГИНКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('605', 'МОСПИНЕ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('653', 'Аерофлотський', '101', '1');
INSERT INTO `third_level_of_location` VALUES ('653', 'ГОЛЬМІВСЬКИЙ', '106', '14');
INSERT INTO `third_level_of_location` VALUES ('653', 'САРТАНА', '123', '14');
INSERT INTO `third_level_of_location` VALUES ('653', 'ЗЕМЛЯНКИ', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('653', 'КАЧА', '369', '85');
INSERT INTO `third_level_of_location` VALUES ('656', 'Гресівський', '101', '1');
INSERT INTO `third_level_of_location` VALUES ('656', 'ЗАЙЦЕВЕ', '106', '14');
INSERT INTO `third_level_of_location` VALUES ('656', 'СТАРИЙ КРИМ', '123', '14');
INSERT INTO `third_level_of_location` VALUES ('657', 'ЯСИНІВКА', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('658', 'Комсомольське', '101', '1');
INSERT INTO `third_level_of_location` VALUES ('658', 'ТАЛАКІВКА', '123', '14');
INSERT INTO `third_level_of_location` VALUES ('662', 'Аграрне', '101', '1');
INSERT INTO `third_level_of_location` VALUES ('662', 'ВЕЛИКЕ ОРІХОВЕ', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('663', 'ГОРБАЧЕВО-МИХАЙЛІВКА', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('665', 'НИЖНЯ КРИНКА', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('667', 'ПАНТЕЛЕЙМОНІВКА', '106', '14');
INSERT INTO `third_level_of_location` VALUES ('676', 'ЛАРИНЕ', '101', '14');
INSERT INTO `third_level_of_location` VALUES ('676', 'КРАСНИЙ ОКТЯБР', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('678', 'КРИНИЧНА', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('681', 'МАЯК', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('702', 'Алупка', '119', '1');
INSERT INTO `third_level_of_location` VALUES ('703', 'СОЛЕДАР', '103', '14');
INSERT INTO `third_level_of_location` VALUES ('703', 'АРТЕМОВЕ', '112', '14');
INSERT INTO `third_level_of_location` VALUES ('703', 'БІЛИЦЬКЕ', '115', '14');
INSERT INTO `third_level_of_location` VALUES ('703', 'ГІРНИК', '138', '14');
INSERT INTO `third_level_of_location` VALUES ('703', 'МИКОЛАЇВКА', '141', '14');
INSERT INTO `third_level_of_location` VALUES ('705', 'СВІТЛОДАРСЬК', '109', '14');
INSERT INTO `third_level_of_location` VALUES ('705', 'БІЛОЗЕРСЬКЕ', '115', '14');
INSERT INTO `third_level_of_location` VALUES ('705', 'ВУГЛЕГІРСЬК', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('705', 'СВЯТОГІРСЬК', '141', '14');
INSERT INTO `third_level_of_location` VALUES ('705', 'ЗУГРЕС', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('706', 'ЧАСІВ ЯР ', '103', '14');
INSERT INTO `third_level_of_location` VALUES ('706', 'РОДИНСЬКЕ', '132', '14');
INSERT INTO `third_level_of_location` VALUES ('707', 'ЮНОКОМУНАРІВСЬК', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('708', 'ІЛОВАЙСЬК', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('709', 'УКРАЇНСЬК', '138', '14');
INSERT INTO `third_level_of_location` VALUES ('801', 'АНТОНІВИІВСЬКА/С.АНТОНІВКА', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('801', 'Абрикосівська/с.Абрикосівка', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('802', 'БАЛКІВСЬКА/С.БАЛКИ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('802', 'АГРОНОМІЧНА/С.АГРОНОМІЧНЕ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('802', 'ОЛЕКСАНДРІВСЬКА/С.ОЛЕКСАНДРІВКА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('802', 'АНДРІЇВСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('802', 'БЕЗІМЕНСЬКА/С.БЕЗІМЕННЕ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('803', 'БОНДУРИНСЬКА/С.БОНДУРІ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('803', 'БАХМУТСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('803', 'БІЛИКОВЕЦЬКА/С.БІЛИКІВЦІ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('803', 'ОЛЕКСАНДРІВСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('804', 'ВЕРХІВСЬКА/С.ВЕРХІВКА', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('804', 'Ароматневська/с.Ароматне', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('804', 'БАЛАНІВСЬКА/С.БАЛАНІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('804', 'ОЛЕКСІЇВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('804', 'ОЛЕКСАНДРІВСЬКА/С.ОЛЕКСАНДРІВКА', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('804', 'Ароматнівська/с.Ароматне', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('804', 'БЕРЕСТОВЕЦЬКА/С.БЕРЕСТОВЕЦЬ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('804', 'БАБИНСЬКА/С.БАБИН', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('804', 'БІЛОПІЛЬСЬКА/С.БІЛОПІЛЛЯ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('804', 'АНАДОЛЬСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('805', 'БАХМАЦЬКА/С.БАХМАЧ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('805', 'БОХОНИЦЬКА/С.БОХОНИКИ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('805', 'БЕРЕСТІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('805', 'ОЛЕКСАНДРО-КАЛИНОВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('805', 'АНДРІЇВСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('805', 'ОЛЕКСАНДРІВСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('805', 'ГРАНІТНЕНСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('805', 'ВЕЛИКОШИШІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('806', 'ВОЙНАШІВСЬКА/С.ВОЙНАШІВКА', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('806', 'БИРЛІВСЬКА/С.БИРЛІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('806', 'БУБНІВСЬКА/С.БУБНІВКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('806', 'ВЕЛИКОДОЧИНСЬКА/С.ВЕЛИКА ДОЧ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('806', 'ДЕМИДІВСЬКА/С.ДЕМИДІВКА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('806', 'Єрмаківська/с.Єрмакове', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('808', 'ВОЛОДІЇВЕЦЬКА/С.ВОЛОДІЇВЦІ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('808', 'Верхоріченська/с.Верхоріччя', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('808', 'ВЕЛИКОКРУШЛИНЕЦЬКА/С.ВЕЛИКІ КРУШЛИНЦІ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('808', 'БІЛОЦЕРКІВСЬКА/С.БІЛОЦЕРКІВЦІ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('808', 'Багатівська/с.Багате', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('808', 'ВЕЛИКОЗАГОРІВСЬКА/С.ВЕЛИКА ЗАГОРІВКА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('808', 'ДУБІВСЬКА/С.ДУБОВА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('808', 'Завіт-Ленінська/с.Завіт-Ленінський', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('808', 'БІЛКІВСЬКА/С.БІЛКИ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('808', 'БАГАТИРСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('808', 'ВЕРНИГОРОДОЦЬКА/С.ВЕРНИГОРОДОК', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('808', 'АНДРІЇВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('808', 'Владиславівська/с.Владиславівка', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('809', 'ВЕЛИКОКИРІЇВСЬКА/С.ВЕЛИКА КИРИЇВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('809', 'ГРАНІВСЬКА/С.ГРАНІВ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('810', 'ГАЇВСЬКА/С.ГАЙОВЕ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('810', 'БЕЗЗАБОТІВСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('810', 'БІЛОВЕЖЕВСЬКА/С.БІЛОВЕЖІ ПЕРШІ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('810', 'ВІННИЦЬКО-ХУТІРСЬКА/С.ВІННИЦЬКІ ХУТОРИ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('810', 'АРТЕМІВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('810', 'ГРУЗЬКА/С.ГРУЗЬКЕ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('810', 'ВАСЮКІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('810', 'ВОВЧИНЕЦЬКА/С.ВОВЧИНЕЦЬ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('810', 'АРТЕМІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('810', 'ДМИТРІВСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('811', 'БОЇВСЬКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('811', 'ГАННІВСЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('811', 'ГРИШИНСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('811', 'ГАЛИЦИНІВСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('811', 'БЕЗІМЕННСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('811', 'БЕРДЯНСЬКА', '239', '14');
INSERT INTO `third_level_of_location` VALUES ('812', 'ГАРМАКІВСЬКА/С.ГАРМАКИ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('812', 'ГАВРИШІВСЬКА/С.ГАВРИШІВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('812', 'БРАНИЦЬКА/С.БРАНИЦЯ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('812', 'ВИСОЧАНСЬКА/С.ВИСОКЕ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('812', 'ВАСИЛІВСЬКА/С.ВАСИЛІВКА', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('812', 'ЄВГЕНІВСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('812', 'ВОСКОДАВИНЕЦЬКА/С.ВОСКОДАВИНЦІ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('812', 'ВАЛЕР\'ЯНІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('812', 'КОМУНАРІВСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('812', 'ЧЕРМАЛИКСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('812', 'ГРАБІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('813', 'Вілінська/с.Вілінське', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('813', 'ГОЛДАШІВСЬКА/С.ГОЛДАШІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('813', 'Василівська/с.Василівка', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('813', 'Заріченська/с.Зарічне', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('813', 'ВІЛЬНЕНСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('814', 'ГУЛІВСЬКА/С.ГУЛІ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('814', 'ГУМЕНСЬКА/С.ГУМЕННЕ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('814', 'ЖУКОВЕЦЬКА/С.ЖУКІВЦІ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('814', 'ЗЕЛЕНОПІЛЬСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('814', 'ДМИТРІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('815', 'ПІСКІВСЬКА/С.ПІСКИ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('815', 'БІЛОЯРІВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('815', 'ГУБНИЦЬКА/С.ГУБНИК', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('815', 'ВЕРХНЬОКАМ\'ЯНСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('815', 'Ізумруднівська/с.Ізумрудне', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('815', 'БІЛОКУЗЬМИНІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('815', 'ДАЧНЕНСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('815', 'ДОЛИНСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('816', 'ЖУРАВЛІВСЬКА/С.ЖУРАВЛІВКА', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('816', 'ДЖУЛИНСЬКА/С.ДЖУЛИНКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('816', 'БРИГИНЦІВСЬКА/С.БРАГИНЦІ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('816', 'ГОЛОВЕНЬКІВСЬКА/С.ГОЛОВЕНЬКИ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('816', 'ГОРОДОЦЬКА/С.ГОРОДОК', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('816', 'ДУБОВОМАХАРИНЕЦЬКА/С.ДУБОВІ МАХАРИНЦІ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('816', 'ЄГОРІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('816', 'ЗОРЯНСЬКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('816', 'ІВАНІВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('817', 'Кіндратівська/с.Кіндратове', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('818', 'ІВАНОВЕЦЬКА/С.ІВАНІВЦІ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('818', 'ДЯКІВСЬКА/С.ДЯКІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('818', 'ДОРОЖНЕНСЬКА/С.ДОРОЖНЕ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('818', 'ГУНЧАНСЬКА/С.ГУНЧА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('818', 'Кримківська/с.Кримка', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('818', 'ІСКРІВСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('818', 'ЖЕЖЕЛІВСЬКА/С.ЖЕЖЕЛІВ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('818', 'Журавська/с.Журавки', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('818', 'ЗЕЛЕНОЯРСЬКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('818', 'КОРОВОЯРСЬКА', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('818', 'КУМАЧІВСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('819', 'Голубинська/с.Голубинка', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('819', 'ЖАБЕЛІВСЬКА/С.ЖАБЕЛІВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('819', 'Вишенська/с.Вишенне', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('819', 'Лобанівська/с.Лобанове', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('819', 'КОНЬКІВСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('820', 'КАРИШКІВСЬКА/С.КАРИШКІВ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('820', 'ГАЙВОРОНСЬКА/С.ГАЙВОРОН', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('820', 'ІВАНІВСЬКА/С.ІВАНІВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('820', 'БЛАГОДАТНІВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('820', 'ВЕПРИЦЬКА/С.ВЕПРИК', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('820', 'ЖЕРДЕНІВСЬКА/С.ЖЕРДЕНІВКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('820', 'КОМАРІВСЬКА/С.КОМАРІВКА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('820', 'ВОЛОДИМИРІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('820', 'ЖАДАНІВСЬКА/С.ЖАДАНИ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('820', 'ЖУРБИНЕЦЬКА/С.ЖУРБИНЦІ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('820', 'ЗАЧАТІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('820', 'ВІРОЛЮБІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('820', 'КРИВОЛУЦЬКА', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('820', 'БОГОЯВЛЕНСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('821', 'КРАСНОГОРІВСЬКА', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('822', 'КОМАРОВЕЦЬКА/С.КОМАРІВЦІ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('822', 'ВИСОКОПІЛЬСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('822', 'Долинненська/с.Долинне', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('822', 'КИДРАСІВСЬКА/С.КИДРАСІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('822', 'ІЛЬКІВСЬКА/С.ІЛЬКІВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('822', 'ЗЯТКОВЕЦЬКА/С.ЗЯТКІВЦІ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('822', 'КАМ\'ЯНОГІРСЬКА/С.КАМ\'ЯНОГІРКА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('822', 'ЗБАРАЗЬКА/С.ЗБАРАЖ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('822', 'Золотополенська/с.Золоте Поле', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('822', 'КАЛЬЧИЦЬКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('822', 'ДОБРОПІЛЬСЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('822', 'ВИНОГРАДНЕНСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('822', 'ІЛЛІЧІВСЬКА', '239', '14');
INSERT INTO `third_level_of_location` VALUES ('823', 'КОШАРИНЕЦЬКА/С.КОШАРИНЦІ', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('823', 'ДРОНІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('823', 'Луганська/с.Луганське', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('823', 'ЗОРЯНСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('823', 'КРАСНЕНСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('823', 'ДМИТРІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('824', 'КУЗЬМИНЕЦЬКА/С.КУЗЬМИНЦІ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('824', 'КРАСНОСІЛЬСЬКА/С.КРАСНОСІЛКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('824', 'КОМАРІВСЬКА/С.КОМАРІВ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('824', 'ВОРОНЬКІВСЬКА/С.ВОРОНЬКИ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('824', 'КАРБІВСЬКА/С.КАРБІВКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('824', 'КРАСНОСІЛЬСЬКА/С.КРАСНОСІЛЬСЬКЕ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('824', 'ЖОРНИЩИНСЬКА/С.ЖОРНИЩЕ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('824', 'КОМАРСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('824', 'ЗОЗУЛИНЕЦЬКА/С.ЗОЗУЛИНЦІ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('824', 'ЗЛАТОУСТІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('824', 'ХРЕСТИЩЕНСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('824', 'МАР\'ЯНІВСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('824', 'КУЗНЕЦОВО-МИХАЙЛІВСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('825', 'ГОЛІНСЬКА/С.ГОЛІНКА', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('825', 'Залізничненська/с.Залізничне', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('825', 'КСАВЕРІВСЬКА/С.КСАВЕРІВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('825', 'ВАСИЛІВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('825', 'Зеленогірська/с.Зеленогірське', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('825', 'Майська/с.Майське', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('825', 'ІВАНОПІЛЬСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('825', 'ЄЛИЗАВЕТІВСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('826', 'ЛІСІВСЬКА/С.ЛІСОВЕ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('826', 'ЛАВРІВСЬКА/С.ЛАВРІВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('826', 'КІБЛИЦЬКА/С.КІБЛИЧ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('826', 'КАРМАЛЮКІВСЬКА/С.КАРМАЛЮКОВЕ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('826', 'ІЛЛІНЕЦЬКА/С.ІЛЛІНЕЦЬКЕ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('826', 'ЙОСИПІВСЬКА/С.ЙОСИПІВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('826', 'Льговська/с.Льговське', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('827', 'Земляничненська/с.Земляничне', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('827', 'КОСТЯНТИНОПІЛЬСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('827', 'ІЛЛІЧІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('828', 'ЛУКО-БАРСЬКА/С.ЛУКА-БАРСЬКА', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('828', 'ЛІСНИЧЕНСЬКА/С.ЛІСНИЧЕ', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('828', 'ЛУКО-МЕЛЕШКІВСЬКА/С.ЛУКА-МЕЛЕШКІВСЬКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('828', 'ГАВРИЛІВСЬКА/С.ГАВРИЛІВКА', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('828', 'КРАСНОПІЛЬСЬКА/С.КРАСНОПІЛКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('828', 'МАЛОЗАГОРІВСЬКА/С.МАЛА ЗАГОРІВКА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('828', 'КАЦМАЗІВСЬКА/С.КАЦМАЗІВ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('828', 'КАЛЬНИЦЬКА/С.КАЛЬНИК', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('828', 'КОЗЯТИНСЬКА/С.КОЗЯТИН', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('828', 'ІВАНІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('828', 'Партизанська/с.Партизани', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('828', 'ЛИСІВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('828', 'КОЗАЦЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('829', 'Зеленівська/с.Зелене', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('829', 'Зибинська/с.Зибини', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('829', 'Маслівська/с.Маслове', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('829', 'ЛУКІВСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('830', 'МАЛЬЧОВЕЦЬКА/С.МАЛЬЧІВЦІ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('830', 'ГОРОДИЩЕНСЬКА/С.ГОРОДИЩЕ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('830', 'МАНЬКІВСЬКА/С.МАНЬКІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('830', 'КУЗЬМИНЕЦЬКА/С.КУЗЬМИНЦІ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('830', 'ЗАЙЦІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('830', 'КОРОСТІВЕЦЬКА/С.КОРОСТІВЦІ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('830', 'КАНТЕЛИНСЬКА/С.КАНТЕЛИНА', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('830', 'КРАСНОПОЛЯНСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('830', 'КАШПЕРІВСЬКА/С.КАШПЕРІВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('830', 'КАЛІНІНСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('830', 'Первомайська/с.Первомайське', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('830', 'КАТЕРИНІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('830', 'МИРОЛЮБІВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('830', 'ЗОРЯНСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('830', 'КОМІНТЕРНІВСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('831', 'КІРОВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('831', 'НОВОБАХМУТІВСЬКА', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('832', 'МАНЬКОВЕЦЬКА/С.МАНЬКІВЦІ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('832', 'МИХАЙЛІВСЬКА/С.МИХАЙЛІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('832', 'ГОРБАЧІВСЬКА/С.ГОРБАЧІ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('832', 'МИКОЛАЇВСЬКА/С.МИКОЛАЇВКА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('832', 'КИТАЙГОРОДСЬКА/С.КИТАЙГОРОД', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('832', 'КОМСОМОЛЬСЬКА/С.КОМСОМОЛЬСЬКЕ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('832', 'КРАСНІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('832', 'МИХАЙЛІВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('832', 'РІДКОДУБІВСЬКА', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('832', 'МИХАЙЛІВСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('832', 'НОВОСЕЛІВСЬКА ПЕРША', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('833', 'ІВЕРСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('833', 'МАЙДАНСЬКА/С.МАЙДАН', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('833', 'КУНКІВСЬКА/С.КУНКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('833', 'КАСЯНІВСЬКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('833', 'ЗОЛОТОКОЛОДЯЗЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('833', 'КРАСНОАРМІЙСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('833', 'КОМИШУВАТСЬКА', '239', '14');
INSERT INTO `third_level_of_location` VALUES ('834', 'МАТЕЙКІВСЬКА/С.МАТЕЙКІВ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('834', 'М\'ЯКОХІДСЬКА/С.М\'ЯКОХІД', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('834', 'Криничненська/с.Криничне', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('834', 'КУРИЛОВЕЦЬКА/С.КУРИЛІВЦІ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('834', 'Медведівська/с.Медведівка', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('834', 'КОПІЇВСЬКА/С.КОПІЇВКА', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('834', 'КОРДИШІВСЬКА/С.КОРДИШІВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('834', 'Привітненська/с.Привітне', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('834', 'МИКОЛАЇВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('834', 'ЗОЛОТАРІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('835', 'МИГАЛІВЕЦЬКА/С.МИГАЛІВЦІ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('835', 'ЗОЛОТОПРУДСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('835', 'ГРИГОРІВСЬКА/С.ГРИГОРІВКА ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('835', 'МАЛОКРУШЛИНЕЦЬКА/С.МАЛІ КРУШЛИНЦІ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('835', 'ЄЛИЗАВЕТО-МИКОЛАЇВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('835', 'ЗВАНІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('835', 'КІНДРАТІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('835', 'КАТЕРИНІВСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('835', 'ЛЕБЕДИНСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('835', 'МАЛИНІВСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('835', 'НОВОЗАР\'ЇВСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('836', 'МИТКІВСЬКА/С.МИТКИ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('836', 'Каштанівська/с.Каштани', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('836', 'ОСІЇВСЬКА/С.ОСІЇВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('836', 'КОЗАЦЬКА/С.КОЗАЦЬКЕ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('836', 'Кримськорозівська/с.Кримська Роза', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('836', 'КУНЯНСЬКА/С.КУНА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('836', 'НОВОМЛИНІВСЬКА/С.НОВІ МЛИНИ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('836', 'ЛЕЛЯЦЬКА/С.ЛЕЛЯКИ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('836', 'Мирнівська/с.Мирнівка', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('836', 'НОВОПЕТРИКІВСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('836', 'КУМАНІВСЬКА/С.КУМАНІВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('836', 'БУГАСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('836', 'НОВООЛЕКСАНДРІВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('836', 'МІЧУРІНСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('837', 'ЛИСОГІРСЬКА/С.ЛИСОГІРКА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('837', 'МАРКІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('838', 'КРИНИЧАНСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('838', 'МЕДВЕЖО-ВУШКІВСЬКА/С.МЕДВЕЖЕ ВУШКО', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('838', 'Курська/с.Курське', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('838', 'КУЩИНЕЦЬКА/С.КУЩИНЦІ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('838', 'ЛЮДАВСЬКА/С.ЛЮДАВКА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('838', 'Новокримська/с.Новокримське', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('838', 'ЛЮБІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('838', 'НОВОЄЛИЗАВЕТІВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('839', 'Красномацька/с.Красний Мак', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('839', 'КАЛІНІНСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('839', 'ЛУКО-МОВЧАНСЬКА/С.ЛУКА-МОВЧАНСЬКА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('839', 'КРАСНЕНЬКІВСЬКА/С.КРАСНЕНЬКЕ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('839', 'Синицинська/с.Синицине', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('839', 'МИКОЛАЙПІЛЬСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('840', 'ПІДЛІСНОЯЛТУШКІВСЬКА/С.ПІДЛІСНИЙ ЯЛТУШКІВ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('840', 'КРАПИВНЯНСЬКА/С.КРАПИВНЕ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('840', 'ПОТАШНЯНСЬКА/С.ПОТАШНЯ', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('840', 'МІЗЯКІВСЬКО-ХУТІРСЬКА/С.МІЗЯКІВСЬКІ ХУТОРИ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('840', 'ЗЕЛЕНІВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('840', 'КОБИЖЧАНСЬКА/С.КОБИЖЧА', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('840', 'ЛАДИЖИНСЬКО-ХУТІРСЬКА/С.ЛАДИЖИНСЬКІ ХУТОРИ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('840', 'НОСЕЛІВСЬКА/С.НОСЕЛІВКА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('840', 'МОВЧАНСЬКА/С.МОВЧАНИ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('840', 'Пахарівська/с.Пахарівка', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('840', 'КРИШТОПІВСЬКА/С.КРИШТОПІВКА', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('840', 'ОКТЯБРЬСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('840', 'МИКОЛАЇВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('840', 'МИКОЛАЇВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('840', 'НОВОТРОЇЦЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('840', 'КОСТЯНТИНІВСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('841', 'Побєдненська/с.Побєдне', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('841', 'КУПЧИНЕЦЬКА/С.КУПЧИНЦІ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('841', 'НОВОДМИТРІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('842', 'П\'ЯТКІВСЬКА/С.П\'ЯТКІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('842', 'НЕКРАСІВСЬКА/С.НЕКРАСОВЕ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('842', 'Мельнична/с.Мельничне', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('842', 'МІТЛИНЕЦЬКА/С.МІТЛИНЦІ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('842', 'НОСКОВЕЦЬКА/С.НОСКІВЦІ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('842', 'Просторненська/с.Просторне', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('842', 'НОВАПОЛТАВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('843', 'ЛЕУХІВСЬКА/С.ЛЕУХИ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('843', 'РУБЦІВСЬКА', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('843', 'ОРЛІВСЬКА', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('844', 'ПОПОВЕЦЬКА/С.ПОПІВЦІ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('844', 'МИРНОДОЛИНСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('844', 'Піщанівська/с.Піщане', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('844', 'СЕРЕБРІЙСЬКА/С.СЕРЕБРІЯ', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('844', 'МАРКОВЕЦЬКА/С.МАРКІВЦІ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('844', 'МИХАЙЛІВСЬКА/С.МИХАЙЛІВКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('844', 'ОЛЕНІВСЬКА/С.ОЛЕНІВКА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('844', 'ПІДДУБНЕНСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('844', 'МИКІЛЬСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('844', 'МАЛОЯНИСОЛЬСЬКИЙ', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('844', 'КРИВОРІЗЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('844', 'НОВОАРТЕМІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('844', 'ПАВЛОПІЛЬСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('844', 'МЕЛЕКИНСЬКА', '239', '14');
INSERT INTO `third_level_of_location` VALUES ('845', 'КРАСИЛІВСЬКА/С.КРАСИЛІВКА', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('845', 'КЛЕНІВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('845', 'КЛИНІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('845', 'ПОТОКІВСЬКА/С.ПОТОКИ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('845', 'ПІЩАНСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('845', 'ЛУГАНСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('845', 'МАЛООРЛІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('846', 'Плодівська/с.Плодове', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('846', 'СЕРЕДИНСЬКА/С.СЕРЕДИНКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('846', 'ОЛЕНІВСЬКА/С.ОЛЕНІВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('846', 'Мічурінська/с.Мічурінське', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('846', 'РОЗДОЛЬНЕНСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('846', 'Токарєвська/с.Токарєве', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('846', 'МАЯКІВСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('846', 'НОВОКАТЕРИНІВСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('847', 'НОВООЛЕКСІЇВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('847', 'ПЕРШОТРАВНЕВА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('847', 'МИРНЕНСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('847', 'МАНУЙЛІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('848', 'СУПІВСЬКА/С.СУПІВКА', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('848', 'СТАВКІВСЬКА/С.СТАВКИ', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('848', 'НОВОБАСАНСЬКА/С.НОВА БАСАНЬ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('848', 'МИТКІВСЬКА/С.МИТКІВ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('848', 'ОМБИСЬКА/С.ОМБИШ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('848', 'ПОЧАПИНЕЦЬКА/С.ПОЧАПИНЦІ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('848', 'СТАРОМАЙОРСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('848', 'МАХАРИНЕЦЬКА/С.МАХАРИНЦІ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('848', 'НОВОАНДРІЇВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('848', 'НОВОСЕЛІВСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('849', 'ПАРПУРОВЕЦЬКА/С.ПАРПУРІВЦІ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('850', 'ТЕРЕШКІВСЬКА/С.ТЕРЕШКИ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('850', 'КРАСНЕНСЬКА/С.КРАСНЕ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('850', 'Скалистівська/с.Скалисте', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('850', 'СУМІВСЬКА/С.СУМІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('850', 'ЛИСИЧЕНСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('850', 'Муромська/с.Муромське', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('850', 'НАРАЇВСЬКА/С.НАРАЇВКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('850', 'КОДЕМСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('850', 'РІВСЬКА/С.РІВ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('850', 'МИХАЙЛИНСЬКА/С.МИХАЙЛИН', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('850', 'НОВОКРАСНІВСЬКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('850', 'НИКАНОРІВСЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('850', 'ПОЛТАВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('850', 'ПЕТРІВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('850', 'МАКСИМІЛЬЯНІВСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('852', 'ТЕРНІВСЬКА/С.ТЕРНІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('852', 'ПИСАРІВСЬКА/С.ПИСАРІВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('852', 'МЕТАЛІСТІВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('852', 'ОЗЕРЯНСЬКА/С.ОЗЕРЯНИ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('852', 'НОСОВЕЦЬКА/С.НОСІВЦІ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('852', 'ПЕТРІВСЬКА/С.ПЕТРІВКА ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('852', 'КОМУНІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('852', 'СЕВЕРИНІВСЬКА/С.СЕВЕРИНІВКА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('852', 'СТАРОМЛИНІВСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('852', 'НЕПЕДІВСЬКА/С.НЕПЕДІВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('852', 'НОВОМИХАЙЛІВСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('853', 'ХОДАЦЬКА/С.ХОДАКИ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('853', 'ТИРЛІВСЬКА/С.ТИРЛІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('854', 'УСТЯНСЬКА/С.УСТЯ', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('854', 'ПОБЕРЕЖНЕНСЬКА/С.ПОБЕРЕЖНЕ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('854', 'МНОГОПІЛЬСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('854', 'ОСОКОРІВСЬКА/С.ОСОКОРІВКА', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('854', 'СЕМИРІЦЬКА/С.СЕМИРІЧКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('854', 'СЕРБИНІВСЬКА/С.СЕРБИНІВЦІ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('854', 'МИКОЛАЇВСЬКА/С.МИКОЛАЇВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('854', 'ТЕРНІВСЬКА', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('854', 'НОВОСЕЛИДІВСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('854', 'ПЕРВОМАЙСЬКА', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('855', 'МИХАЙЛІВСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('855', 'КУРІНСЬКА/С.КУРІНЬ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('855', 'Табачненська/с.Табачне', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('855', 'ПУЛТІВЕЦЬКА/С.ПУЛТІВЦІ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('855', 'НОВОБИКІВСЬКА/С.НОВИЙ БИКІВ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('855', 'КРАСНЕНСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('855', 'Розкішненська/с.Розкішне', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('855', 'ПАВЛІВСЬКА/С.ПАВЛІВКА', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('855', 'РЕСПУБЛІКАНСЬКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('855', 'НОВОВОДЯНСЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('855', 'ПРАВДІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('855', 'ПРИМОРСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('855', 'УРЗУФСЬКА', '239', '14');
INSERT INTO `third_level_of_location` VALUES ('856', 'ЧЕМЕРИСЬКА/С.ЧЕМЕРИСЬКЕ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('856', 'ФЛОРИНСЬКА/С.ФЛОРИНЕ', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('856', 'ПІСКИВСЬКА/С.ПІСКИ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('856', 'СТЕПАШКІВСЬКА/С.СТЕПАШКИ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('856', 'ПЕЧІВСЬКА/С.ПЕЧІ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('856', 'СЛОБОДО-МЕЖИРІВСЬКА/С.СЛОБОДА-МЕЖИРІВСЬКА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('856', 'Рощинська/с.Рощине', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('856', 'ВІВСЯНИЦЬКА/С.ВІВСЯНИКИ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('856', 'ОКТЯБРЬСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('856', 'НІКІШИНСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('856', 'ПІСКІВСЬКА', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('857', 'МІНЬКІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('857', 'ПАРІЇВСЬКА/С.ПАРІЇВКА', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('857', 'ПРЕДТЕЧИНСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('857', 'РІВНЕНСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('857', 'ПРЕЛЕСНЕНСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('857', 'ОСИКІВСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('858', 'ВІЙТІВСЬКА/С.ВІЙТІВКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('858', 'Новожилівська/с.Новожилівка', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('858', 'ХАРПАЦЬКА/С.ХАРПАЧКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('858', 'СТАНІСЛАВЧИЦЬКА/С.СТАНІСЛАВЧИК', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('858', 'Світлівська/с.Світле', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('858', 'ПЕРЕМОЖНЯНСЬКА/С.ПЕРЕМОГА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('858', 'ТАРАСІВСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('858', 'НОВОУКРАЇНСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('859', 'НИКИФОРІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('859', 'ПЕРВОМАЙСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('860', 'МАТІЇВСЬКА/С.МАТІЇВКА', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('860', 'НОВОІВАНІВСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('860', 'ПЕТРІВСЬКА/С.ПЕТРІВКА', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('860', 'ПЛИСКІВСЬКА/С.ПЛИСКИ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('860', 'НОВОГРИГОРІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('860', 'СТОДУЛЕЦЬКА/С.СТОДУЛЬЦІ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('860', 'Стальненська/с.Стальне', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('860', 'ПИКОВЕЦЬКА/С.ПИКОВЕЦЬ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('860', 'ПЕТРІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('860', 'ТОРСЬКА', '224', '14');
INSERT INTO `third_level_of_location` VALUES ('860', 'СЕРГІЇВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('860', 'РОЗІВСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('860', 'ПЕТРІВСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('860', 'ОРЛОВО-ІВАНІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('861', 'РОСОХОВАТСЬКА/С.РОСОХОВАТА', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('861', 'Яркополенська/с.Ярке Поле', '216', '1');
INSERT INTO `third_level_of_location` VALUES ('862', 'Тінистівська/с.Тінисте', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('862', 'НОВОЛУГАНСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('862', 'Табачненська/с.Табачне', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('862', 'ПЛЯХІВСЬКА/С.ПЛЯХОВА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('863', 'СОКИРИНЕЦЬКА/С.СОКИРИНЦІ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('863', 'Русаківська/с.Русаківка', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('863', 'ТАРАСІВСЬКА/С.ТАРАСІВКА', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('863', 'ПРИВІЛЬНЕНСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('863', 'ПАВЛІВСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('864', 'ЧЕРНЯТСЬКА/С.ЧЕРНЯТКА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('864', 'ПРАЧІВСЬКА/С.ПРАЧІ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('864', 'ШАХТАРСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('864', 'ПОЛИЧИНЕЦЬКА/С.ПОЛИЧИНЦІ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('864', 'ПРОХОРІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('864', 'СВОБОДНЕНСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('865', 'ЯЛТУШКІВСЬКА/С.ЯЛТУШКІВ', '202', '5');
INSERT INTO `third_level_of_location` VALUES ('865', 'МИТЧЕНКІВСЬКА/С.МИТЧЕНКИ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('865', 'ЧЕЧЕЛІВСЬКА/С.ЧЕЧЕЛІВКА', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('865', 'ОПИТНЕНСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('865', 'СРІБНЕНСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('865', 'ШАНДРИГОЛОВСЬКА', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('865', 'РОЗІВСЬКА', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('866', 'МИКІЛЬСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('866', 'ШЕВЧЕНКІВСЬКА', '212', '14');
INSERT INTO `third_level_of_location` VALUES ('866', 'ПУЗИРКІВСЬКА/С.ПУЗИРКИ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('866', 'СТАРЧЕНКІВСЬКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('866', 'НОВОТОРЕЦЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('866', 'САМІЙЛІВСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('866', 'СТАРОДУБІВСЬКА', '239', '14');
INSERT INTO `third_level_of_location` VALUES ('866', 'СТАРОГНАТІВСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('867', 'НЕКРЕМЕНСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('867', 'ПЕТРОПАВЛІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('868', 'НОВООЛЕКСАНДРІВСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('868', 'РУДЬКІВСЬКА/С.РУДЬКІВКА', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('868', 'ПРОХОРІВСЬКА/С.ПРОХОРИ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('868', 'ТЕЛЕЛИНЕЦЬКА/С.ТЕЛЕЛИНЦІ', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('868', 'СЛОБОДИЩЕНСЬКА/С.СЛОБОДИЩЕ', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('868', 'САМГОРОДОЦЬКА/С.САМГОРОДОК', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('868', 'РІВНОПІЛЬСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('868', 'САХАНСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('868', 'ПРИВІЛЬСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('868', 'РОЗДОЛЬНЕНСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('868', 'РОЗСИПНЕНСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('869', 'ОЧЕРТИНСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('869', 'РОЗІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('870', 'САМАРСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('870', 'ОБМАЧІВСЬКА/С.ОБМАЧІВ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('870', 'СОСОНСЬКА/С.СОСОНКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('870', 'ПАРАСКОВІЇВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('870', 'СЕСТРИНІВСЬКА/С.СЕСТРИНІВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('870', 'ТОПОЛИНСЬКА', '217', '14');
INSERT INTO `third_level_of_location` VALUES ('871', 'СТЕПАНО-КРИНСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('871', 'СТАРОЛАСПИНСЬКА', '248', '14');
INSERT INTO `third_level_of_location` VALUES ('872', 'ПАЛЬЧИКІВСЬКА/С.ПАЛЬЧИКИ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('872', 'СВИДОВЕЦЬКА/С.СВИДОВЕЦЬ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('872', 'СИВОЛОЗЬКА/С.СИВОЛОЖ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('872', 'Цілинна/с.Цілинне', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('872', 'СОКІЛЕЦЬКА/С.СОКІЛЕЦЬ', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('872', 'РИБИНСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('873', 'СПАСЬКОМИХАЙЛІВСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('873', 'СТАДНИЦЬКА/С.СТАДНИЦЯ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('873', 'СОЛОВЙОВСЬКА', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('874', 'СОКОЛІВСЬКА/С.СОКОЛІВКА', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('874', 'СМОЛЯЗЬКА/С.СМОЛЯЖ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('874', 'СТЕПНЕНСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('875', 'СТЕПАНІВСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('875', 'РУБАНСЬКА/С.РУБАНКА', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('875', 'ШЛЯХІВСЬКА/С.ШЛЯХОВА', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('875', 'ПОКРОВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('875', 'ЧЕРНЯТИНСЬКА/С.ЧЕРНЯТИН', '210', '5');
INSERT INTO `third_level_of_location` VALUES ('875', 'Чайкинська/с.Чайкине', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('875', 'ТЕРНІВСЬКА/С.ТЕРНІВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('875', 'СОНЦЕВСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('876', 'СТЕПАНІВСЬКА/С.СТЕПАНІВКА', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('876', 'СТАРОБАСАНСЬКА/С.СТАРА БАСАНЬ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('876', 'ЯРМОЛИНЕЦЬКА/С.ЯРМОЛИНЦІ', '208', '5');
INSERT INTO `third_level_of_location` VALUES ('876', 'СТЕПАНІВСЬКА/С.СТЕПАНІВКА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('876', 'ТЯГУНСЬКА/С.ТЯГУН', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('876', 'ФЛОРІАНІВСЬКА/С.ФЛОРІАНІВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('876', 'СВОБОДНЕНСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('876', 'ЯЦЬКІВСЬКА', '230', '14');
INSERT INTO `third_level_of_location` VALUES ('876', 'СПАРТАКІВСЬКА', '255', '14');
INSERT INTO `third_level_of_location` VALUES ('877', 'ОКТЯБРСЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('877', 'ХОМУТІВСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('878', 'СУХИНСЬКА/С.СУХИНЯ', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('878', 'ЮРІВСЬКА/С.ЮРІВКА', '214', '5');
INSERT INTO `third_level_of_location` VALUES ('878', 'САДІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('879', 'СТЕПНЕНСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('879', 'РАЙ-ОЛЕКСАНДРІВСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('879', 'СТИЛЬСЬКА', '245', '14');
INSERT INTO `third_level_of_location` VALUES ('880', 'СТАРОВАРВАРІВСЬКА', '203', '14');
INSERT INTO `third_level_of_location` VALUES ('880', 'СТРІЛЬНИЦЬКА/С.СТРІЛЬНИКИ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('880', 'ЩАСНІВСЬКА/С.ЩАСНІВКА', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('880', 'ТРОСТЯНСЬКА/С.ТРОСТЯНКА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('880', 'РОЗДОЛІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('880', 'ХРІНІВСЬКА/С.ХРІНІВКА', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('880', 'ХЛІБОДАРІВСЬКА', '215', '14');
INSERT INTO `third_level_of_location` VALUES ('880', 'СВІТЛІВСЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('882', 'ШИРОКОГРЕБЕЛЬСЬКА/С.ШИРОКА ГРЕБЛЯ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('882', 'УСПЕНСЬКА', '206', '14');
INSERT INTO `third_level_of_location` VALUES ('882', 'Ярківська/с.Ярке', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('882', 'СЕРГІЇВСЬКА', '242', '14');
INSERT INTO `third_level_of_location` VALUES ('882', 'СТЕПАНІВСЬКА', '252', '14');
INSERT INTO `third_level_of_location` VALUES ('883', 'УЛЯНІВСЬКА', '227', '14');
INSERT INTO `third_level_of_location` VALUES ('884', 'Углівська/с.Углове', '204', '1');
INSERT INTO `third_level_of_location` VALUES ('884', 'ЯРОСЛАВСЬКА/С.ЯРОСЛАВКА', '206', '74');
INSERT INTO `third_level_of_location` VALUES ('884', 'Цвіточненська/с.Цвіточне', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('884', 'ХОВМІВСЬКА/С.ХОВМИ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('884', 'РІЗНИКІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('884', 'Яркополенська/с.Ярке Поле', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('885', 'ТИНИЦЬКА/С.ТИНИЦЯ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('885', 'УСПЕНІВСЬКА', '233', '14');
INSERT INTO `third_level_of_location` VALUES ('886', 'ЯЛАНЕЦЬКА/С.ЯЛАНЕЦЬ', '204', '5');
INSERT INTO `third_level_of_location` VALUES ('886', 'Яснополянська/с.Яснополянське', '211', '1');
INSERT INTO `third_level_of_location` VALUES ('888', 'Чорнопільська/с.Чорнопілля', '207', '1');
INSERT INTO `third_level_of_location` VALUES ('888', 'ХОРОШЕОЗЕРСЬКА/С.ХОРОШЕ ОЗЕРО', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('888', 'ШИЛІВСЬКА', '220', '14');
INSERT INTO `third_level_of_location` VALUES ('888', 'ШИРОКИНСЬКА', '236', '14');
INSERT INTO `third_level_of_location` VALUES ('889', 'ЯКУШИНЕЦЬКА/С.ЯКУШИНЦІ', '206', '5');
INSERT INTO `third_level_of_location` VALUES ('890', 'ФАСТОВЕЦЬКА/С.ФАСТОВЦИ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('892', 'ШАПОВАЛІВСЬКА/С.ШАПОВАЛІВКА', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('892', 'СЕРЕБРЯНСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('892', 'ЯКУБІВСЬКА/С.ЯКУБІВКА', '212', '5');
INSERT INTO `third_level_of_location` VALUES ('895', 'ХАЛИМОНІВСЬКА/С.ХАЛИМОНОВЕ', '203', '74');
INSERT INTO `third_level_of_location` VALUES ('896', 'ЯДУТИНСЬКА/С.ЯДУТИ', '208', '74');
INSERT INTO `third_level_of_location` VALUES ('899', 'ЯКОВЛІВСЬКА', '209', '14');
INSERT INTO `third_level_of_location` VALUES ('900', 'СЕЛА, ПІДПОРЯДКОВАНІ МОГИЛІВ-ПОДІЛЬСЬКИЙ МІСЬКРАДІ', '104', '5');
INSERT INTO `third_level_of_location` VALUES ('900', 'НАСЕЛЕНІ ПУНКТИ, ПІДПОРЯДКОВАНІ ЛАДИЖИНСЬКІЙ МІСЬКРАДІ', '106', '5');
INSERT INTO `third_level_of_location` VALUES ('900', 'НАСЕЛЕНІ ПУНКТИ, ПІДПОРЯДКОВАНІ ДЗЕРЖИНСЬКІЙ МІСЬКРАДІ', '112', '14');
INSERT INTO `third_level_of_location` VALUES ('900', 'НАСЕЛЕНІ ПУНКТИ, ПІДПОРЯДКОВАНІ ДОКУЧАЄВСЬКІЙ МІСЬКРАДІ', '116', '14');
INSERT INTO `third_level_of_location` VALUES ('900', 'НАСЕЛЕНІ ПУНКТИ, ПІДПОРЯДКОВАНІ ДРУЖКІВСЬКІЙ МІСЬКРАДІ', '117', '14');
INSERT INTO `third_level_of_location` VALUES ('900', 'НАСЕЛЕНІ ПУНКТИ, ПІДПОРЯДКОВАНІ ЄНАКІЇВСЬКІЙ МІСЬКРАДІ', '120', '14');
INSERT INTO `third_level_of_location` VALUES ('900', 'НАСЕЛЕНІ ПУНКТИ, ПІДПОРЯДКОВАНІ КРАМАТОРСЬКІЙ МІСЬКРАДІ', '129', '14');
INSERT INTO `third_level_of_location` VALUES ('900', 'НАСЕЛЕНІ ПУНКТИ, ПІДПОРЯДКОВАНІ КРАСНОЛИМАНСЬКІЙ МІСЬКРАДІ', '133', '14');
INSERT INTO `third_level_of_location` VALUES ('900', 'НАСЕЛЕНІ ПУНКТИ, ПІДПОРЯДКОВАНІ ХАРЦИЗЬКІЙ МІСЬКРАДІ', '150', '14');
INSERT INTO `third_level_of_location` VALUES ('900', 'НАСЕЛЕНІ ПУНКТИ, ПІДПОРЯДКОВАНІ ШАХТАРСЬКІЙ МІСЬКРАДІ', '153', '14');
INSERT INTO `third_level_of_location` VALUES ('901', 'Суворовська/с.Суворове', '115', '1');
INSERT INTO `third_level_of_location` VALUES ('902', 'Веселівська/с.Веселе', '117', '1');
INSERT INTO `third_level_of_location` VALUES ('902', 'АНДРІЇВСЬКА/С.АНДРІЇВКА', '369', '85');
INSERT INTO `third_level_of_location` VALUES ('903', 'Берегова/с.Берегове', '116', '1');
INSERT INTO `third_level_of_location` VALUES ('904', 'Грушівська/с.Грушівка', '117', '1');
INSERT INTO `third_level_of_location` VALUES ('905', 'ВЕРХНЬОСАДІВСЬКА/С.ВЕРХНЬОСАДОВЕ', '369', '85');
INSERT INTO `third_level_of_location` VALUES ('907', 'Дачнівська/с.Дачне', '117', '1');
INSERT INTO `third_level_of_location` VALUES ('907', 'ОРЛИНІВСЬКА/С.ОРЛИНЕ', '363', '85');
INSERT INTO `third_level_of_location` VALUES ('909', 'Ізобіленська/с.Ізобільне', '103', '1');
INSERT INTO `third_level_of_location` VALUES ('910', 'ОЗЕРЯНІВСЬКА', '106', '14');
INSERT INTO `third_level_of_location` VALUES ('910', 'СІЛЬРАДИ, ПІДПОРДКОВАНІ МАКІЇВСЬКІЙ МІСЬКРАДІ', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('914', 'Лучистівська/с.Лучисте', '103', '1');
INSERT INTO `third_level_of_location` VALUES ('914', 'Міжріченська/с.Міжріччя', '117', '1');
INSERT INTO `third_level_of_location` VALUES ('915', 'ВЕРХНЬОКРИНСЬКА', '135', '14');
INSERT INTO `third_level_of_location` VALUES ('915', 'ТЕРНІВСЬКА/С.ТЕРНІВКА', '363', '85');
INSERT INTO `third_level_of_location` VALUES ('916', 'Морська/с.Морське', '117', '1');
INSERT INTO `third_level_of_location` VALUES ('918', 'Маломаяцька/с.Малий Маяк', '103', '1');
INSERT INTO `third_level_of_location` VALUES ('921', 'Малоріченська/с.Малоріченське', '103', '1');
INSERT INTO `third_level_of_location` VALUES ('923', 'Сонячнодолинська/с.Сонячна Долина', '117', '1');
INSERT INTO `third_level_of_location` VALUES ('929', 'Насипнівська/с.Насипне', '116', '1');
INSERT INTO `third_level_of_location` VALUES ('930', 'Привітненська/с.Привітне', '103', '1');

-- ----------------------------
-- Table structure for `type_of_symbolic`
-- ----------------------------
DROP TABLE IF EXISTS `type_of_symbolic`;
CREATE TABLE `type_of_symbolic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of type_of_symbolic
-- ----------------------------

-- ----------------------------
-- Table structure for `unit_of_public_association`
-- ----------------------------
DROP TABLE IF EXISTS `unit_of_public_association`;
CREATE TABLE `unit_of_public_association` (
  `public_association_id` int(11) NOT NULL,
  `public_association_unit_id` int(11) NOT NULL,
  PRIMARY KEY (`public_association_id`,`public_association_unit_id`),
  KEY `fk_unit_of_public_association_public_association2_idx` (`public_association_unit_id`),
  CONSTRAINT `fk_unit_of_public_association_public_association1` FOREIGN KEY (`public_association_id`) REFERENCES `public_association` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_unit_of_public_association_public_association2` FOREIGN KEY (`public_association_unit_id`) REFERENCES `public_association` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of unit_of_public_association
-- ----------------------------
