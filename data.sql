-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.53 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;

-- Дамп структуры для таблица test.CITY
CREATE TABLE IF NOT EXISTS `CITY` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `city_type_id` int(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы test.CITY: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `CITY` DISABLE KEYS */;
INSERT INTO `CITY` (`id`, `name`, `city_type_id`) VALUES
	(1, 'Москва', 8),
	(2, 'Санкт-Петербург', 8),
	(3, 'Уфа', 8),
	(4, 'Домодедово', 5),
	(5, 'Сарапул', 5),
	(6, ' Циолковский', 2);
/*!40000 ALTER TABLE `CITY` ENABLE KEYS */;

-- Дамп структуры для таблица test.CITYZEN
CREATE TABLE IF NOT EXISTS `CITYZEN` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `city_id` int(7) NOT NULL,
  `responsible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='citizen';

-- Дамп данных таблицы test.CITYZEN: ~11 rows (приблизительно)
/*!40000 ALTER TABLE `CITYZEN` DISABLE KEYS */;
INSERT INTO `CITYZEN` (`id`, `name`, `city_id`, `responsible`) VALUES
	(1, 'Маша', 1, 1),
	(2, 'Гриша', 2, 0),
	(3, 'Даша', 1, 1),
	(4, 'Коля', 3, 0),
	(5, 'Дима', 4, 1),
	(6, 'Вика', 4, 1),
	(7, 'Люба', 5, 1),
	(8, 'Кирилл', 3, 0),
	(9, 'Анатолий', 3, 1),
	(10, 'Вова', 4, 0),
	(11, 'Витя', 4, 1);
/*!40000 ALTER TABLE `CITYZEN` ENABLE KEYS */;

-- Дамп структуры для таблица test.CITY_TYPE
CREATE TABLE IF NOT EXISTS `CITY_TYPE` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `city_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='city_type';

-- Дамп данных таблицы test.CITY_TYPE: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `CITY_TYPE` DISABLE KEYS */;
INSERT INTO `CITY_TYPE` (`id`, `city_type`) VALUES
	(1, 'самые малы'),
	(2, 'малые'),
	(3, 'полусредни'),
	(4, 'полусредни'),
	(5, 'средние'),
	(6, 'крупные'),
	(7, 'крупнейшие'),
	(8, 'Города-миллионеры');
/*!40000 ALTER TABLE `CITY_TYPE` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
