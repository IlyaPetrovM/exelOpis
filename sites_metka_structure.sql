-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sites_metka
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB-1:10.6.7+maria~buster

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(512) NOT NULL,
  `tags` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `hide` char(1) DEFAULT NULL,
  `old_filename` varchar(511) DEFAULT NULL,
  `proxy_path` varchar(511) DEFAULT NULL,
  `оператор` varchar(255) DEFAULT NULL,
  `кто загрузил` varchar(255) DEFAULT NULL,
  `кто редактировал` varchar(255) DEFAULT NULL,
  `size_bytes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `tags` (`tags`),
  FULLTEXT KEY `old_filename` (`old_filename`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `update_date` BEFORE UPDATE ON `files` FOR EACH ROW begin
set new.date_updated = current_timestamp();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `Запрет редактировать название файла` BEFORE UPDATE ON `files` FOR EACH ROW BEGIN
set new.old_filename = old.old_filename;
set new.path = old.path;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `files_ext`
--

DROP TABLE IF EXISTS `files_ext`;
/*!50001 DROP VIEW IF EXISTS `files_ext`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `files_ext` (
  `id` tinyint NOT NULL,
  `path` tinyint NOT NULL,
  `tags` tinyint NOT NULL,
  `Информанты` tinyint NOT NULL,
  `Опись по времени` tinyint NOT NULL,
  `оператор` tinyint NOT NULL,
  `hide` tinyint NOT NULL,
  `date_created` tinyint NOT NULL,
  `date_updated` tinyint NOT NULL,
  `old_filename` tinyint NOT NULL,
  `кто загрузил` tinyint NOT NULL,
  `кто редактировал` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `files_to_informants`
--

DROP TABLE IF EXISTS `files_to_informants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_to_informants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inf_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inf_id` (`inf_id`),
  KEY `file_id` (`file_id`),
  CONSTRAINT `files_to_informants_ibfk_1` FOREIGN KEY (`inf_id`) REFERENCES `informants` (`id`),
  CONSTRAINT `files_to_informants_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `format`
--

DROP TABLE IF EXISTS `format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `format` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tableName` varchar(255) NOT NULL,
  `columnName` varchar(255) NOT NULL,
  `NumberFormat` varchar(255) NOT NULL DEFAULT 'General',
  `HorizontalAlignment` varchar(255) DEFAULT NULL,
  `VerticalAlignment` varchar(255) DEFAULT NULL,
  `WrapText` varchar(255) DEFAULT NULL,
  `FontColor` varchar(255) DEFAULT NULL,
  `FontSize` int(11) DEFAULT 11,
  `FontName` varchar(255) DEFAULT 'Calibri',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_stamp` timestamp NULL DEFAULT current_timestamp(),
  `table_name` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `old_value` (`old_value`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `informants`
--

DROP TABLE IF EXISTS `informants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(512) DEFAULT '',
  `first_name` varchar(512) DEFAULT '',
  `middle_name` varchar(512) DEFAULT '',
  `birth` varchar(10) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `hide` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `informants_files`
--

DROP TABLE IF EXISTS `informants_files`;
/*!50001 DROP VIEW IF EXISTS `informants_files`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `informants_files` (
  `id` tinyint NOT NULL,
  `last_name` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `middle_name` tinyint NOT NULL,
  `birth` tinyint NOT NULL,
  `comments` tinyint NOT NULL,
  `contacts` tinyint NOT NULL,
  `hide` tinyint NOT NULL,
  `inf_id` tinyint NOT NULL,
  `file_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` time DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `describtion` text DEFAULT NULL,
  `file_id` int(11) NOT NULL,
  `hide` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`) USING BTREE,
  KEY `start_time` (`start_time`),
  FULLTEXT KEY `tags` (`tags`),
  FULLTEXT KEY `decription_of_file` (`describtion`),
  CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `search_table`
--

DROP TABLE IF EXISTS `search_table`;
/*!50001 DROP VIEW IF EXISTS `search_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `search_table` (
  `id` tinyint NOT NULL,
  `Время начала` tinyint NOT NULL,
  `Описание` tinyint NOT NULL,
  `Таблица` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f1` varchar(50) NOT NULL,
  `f2` date NOT NULL,
  `f3` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `files_ext`
--

/*!50001 DROP TABLE IF EXISTS `files_ext`*/;
/*!50001 DROP VIEW IF EXISTS `files_ext`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `files_ext` AS select `f`.`id` AS `id`,`f`.`path` AS `path`,`f`.`tags` AS `tags`,group_concat(concat(`inf`.`last_name`,' ',`inf`.`first_name`,' ',`inf`.`middle_name`) separator '; ') AS `Информанты`,group_concat(`m`.`describtion` separator '; ') AS `Опись по времени`,`f`.`оператор` AS `оператор`,`f`.`hide` AS `hide`,`f`.`date_created` AS `date_created`,`f`.`date_updated` AS `date_updated`,`f`.`old_filename` AS `old_filename`,`f`.`кто загрузил` AS `кто загрузил`,`f`.`кто редактировал` AS `кто редактировал` from (((`files` `f` left join `files_to_informants` `conn` on(`conn`.`file_id` = `f`.`id`)) left join `informants` `inf` on(`conn`.`inf_id` = `inf`.`id`)) left join `marks` `m` on(`m`.`file_id` = `f`.`id`)) group by `f`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `informants_files`
--

/*!50001 DROP TABLE IF EXISTS `informants_files`*/;
/*!50001 DROP VIEW IF EXISTS `informants_files`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `informants_files` AS select `i`.`id` AS `id`,`i`.`last_name` AS `last_name`,`i`.`first_name` AS `first_name`,`i`.`middle_name` AS `middle_name`,`i`.`birth` AS `birth`,`i`.`comments` AS `comments`,`i`.`contacts` AS `contacts`,`i`.`hide` AS `hide`,`fi`.`inf_id` AS `inf_id`,`fi`.`file_id` AS `file_id` from (`informants` `i` left join `files_to_informants` `fi` on(`i`.`id` = `fi`.`inf_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `search_table`
--

/*!50001 DROP TABLE IF EXISTS `search_table`*/;
/*!50001 DROP VIEW IF EXISTS `search_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sites_mahotin`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `search_table` AS (select `f`.`id` AS `id`,cast(`f`.`date_created` as char(255) charset utf8mb4) AS `Время начала`,`f`.`tags` AS `Описание`,'files' AS `Таблица` from `files_ext` `f` where `f`.`tags` like '%поко%' or `f`.`Информанты` like '%поко%' limit 10) union all (select `m`.`id` AS `id`,`m`.`start_time` AS `start_time`,`m`.`describtion` AS `describtion`,'marks' AS `marks` from `marks` `m` where `m`.`describtion` like '%поко%' or `m`.`tags` like '%поко%' limit 20) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27 15:01:49
