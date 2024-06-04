-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for chat_application
CREATE DATABASE IF NOT EXISTS `chat_application` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `chat_application`;

-- Dumping structure for table chat_application.files
CREATE TABLE IF NOT EXISTS `files` (
  `FileID` int unsigned NOT NULL AUTO_INCREMENT,
  `FileExtension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BlurHash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FileID`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat_application.files: ~34 rows (approximately)
INSERT INTO `files` (`FileID`, `FileExtension`, `BlurHash`, `Status`) VALUES
	(125, '.jpg', 'LcGk?-EMENWX~WRkWCR*I@xan%jZ', '1'),
	(126, '.jpg', 'LFMtN@~q9H_4e,%M.8NHaItQIWD%', '1'),
	(127, '.jpg', 'LELX_78}1C%y}_4,$EpHyFInRpnh', '1');

-- Dumping structure for table chat_application.user
CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int unsigned NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat_application.user: ~3 rows (approximately)
INSERT INTO `user` (`UserID`, `UserName`, `Password`) VALUES
	(28, 'Văn Huy', '1234'),
	(34, 'Quang Khôi', '1234');

-- Dumping structure for table chat_application.user_account
CREATE TABLE IF NOT EXISTS `user_account` (
  `UserID` int unsigned NOT NULL,
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Gender` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Image` longblob,
  `ImageString` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `Status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`UserID`),
  CONSTRAINT `FK1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat_application.user_account: ~5 rows (approximately)
INSERT INTO `user_account` (`UserID`, `UserName`, `Gender`, `Image`, `ImageString`, `Status`) VALUES
	(28, 'Văn Huy', '', NULL, '', '1'),
	(34, 'Quang Khôi', '', NULL, '', '1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
