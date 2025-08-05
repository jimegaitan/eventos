-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: eventos
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_interface_theme`
--

DROP TABLE IF EXISTS `admin_interface_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_interface_theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint unsigned NOT NULL,
  `logo_max_width` smallint unsigned NOT NULL,
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`),
  CONSTRAINT `admin_interface_theme_chk_1` CHECK ((`logo_max_height` >= 0)),
  CONSTRAINT `admin_interface_theme_chk_2` CHECK ((`logo_max_width` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
INSERT INTO `admin_interface_theme` VALUES (1,'Django',1,'Django administration',1,'',1,'#0C4B33','#F5DD5D','#44B78B','#FFFFFF','#C9F0DD','#44B78B','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#0C4B33','#0C3C26','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','',1,'#E74C3C',1,1,1,'code',1,0,0,'#FFFFCC','#FFFFFF',100,400,1,'default-select',1,0,0,0,'#29B864',0,1,0,1);
/*!40000 ALTER TABLE `admin_interface_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add evento',7,'add_evento'),(26,'Can change evento',7,'change_evento'),(27,'Can delete evento',7,'delete_evento'),(28,'Can view evento',7,'view_evento'),(29,'Can add Theme',8,'add_theme'),(30,'Can change Theme',8,'change_theme'),(31,'Can delete Theme',8,'delete_theme'),(32,'Can view Theme',8,'view_theme'),(33,'Can add contacto',9,'add_contacto'),(34,'Can change contacto',9,'change_contacto'),(35,'Can delete contacto',9,'delete_contacto'),(36,'Can view contacto',9,'view_contacto');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$oyIzo3Iuf7hpyztRyhgYx8$il5B7319UQYsspCx3MJ2kFHi21bGMsMIsv2NMFpFG0w=','2025-07-02 16:08:57.104643',1,'jimegaitan','','','jimena.anzueto@galileo.edu',1,1,'2025-05-07 19:34:17.000000'),(2,'pbkdf2_sha256$1000000$bWHFs89n4rQOJxt5YvMme8$M/xGA3Y7rypiXW3V/tF10iRUbRyIxiUQogn3/oJbGN4=',NULL,1,'Dostin','Dostin','Umaña','',1,1,'2025-05-07 19:45:13.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-05-07 19:45:14.102881','2','Dostin',1,'[{\"added\": {}}]',4,1),(2,'2025-05-07 19:46:33.183658','2','Dostin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\", \"Superuser status\"]}}]',4,1),(3,'2025-05-07 19:46:55.620728','1','jimegaitan',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',4,1),(4,'2025-05-09 19:11:14.953306','1','Evento object (1)',1,'[{\"added\": {}}]',7,1),(5,'2025-05-09 19:22:24.077880','1','Evento object (1)',1,'[{\"added\": {}}]',7,1),(6,'2025-05-09 19:24:05.798515','2','Evento object (2)',1,'[{\"added\": {}}]',7,1),(7,'2025-05-09 19:27:09.664661','3','Evento object (3)',1,'[{\"added\": {}}]',7,1),(8,'2025-05-09 19:28:29.379439','4','Evento object (4)',1,'[{\"added\": {}}]',7,1),(9,'2025-05-09 19:30:16.516613','5','Evento object (5)',1,'[{\"added\": {}}]',7,1),(10,'2025-06-09 17:11:58.741064','5','INTELIGENCIA ARTIFICIAL',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(11,'2025-06-09 17:13:27.719106','5','INTELIGENCIA ARTIFICIAL',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(12,'2025-06-09 17:29:55.250493','5','INTELIGENCIA ARTIFICIAL',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(13,'2025-06-09 17:35:00.295782','3','FINANZAS POSITIVAS',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(14,'2025-06-09 17:36:46.978572','2','FERIA DEL EMPLEO',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(15,'2025-06-09 17:38:35.334267','4','INTERCICLO',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(16,'2025-06-09 17:39:08.971631','4','INTERCICLO',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(8,'admin_interface','theme'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'eventos','contacto'),(7,'eventos','evento'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-07 19:27:23.842030'),(2,'auth','0001_initial','2025-05-07 19:27:39.809349'),(3,'admin','0001_initial','2025-05-07 19:27:43.273696'),(4,'admin','0002_logentry_remove_auto_add','2025-05-07 19:27:43.410392'),(5,'admin','0003_logentry_add_action_flag_choices','2025-05-07 19:27:43.487026'),(6,'contenttypes','0002_remove_content_type_name','2025-05-07 19:27:45.697919'),(7,'auth','0002_alter_permission_name_max_length','2025-05-07 19:27:47.141244'),(8,'auth','0003_alter_user_email_max_length','2025-05-07 19:27:47.384010'),(9,'auth','0004_alter_user_username_opts','2025-05-07 19:27:47.451312'),(10,'auth','0005_alter_user_last_login_null','2025-05-07 19:27:48.534113'),(11,'auth','0006_require_contenttypes_0002','2025-05-07 19:27:48.591525'),(12,'auth','0007_alter_validators_add_error_messages','2025-05-07 19:27:48.668914'),(13,'auth','0008_alter_user_username_max_length','2025-05-07 19:27:49.838841'),(14,'auth','0009_alter_user_last_name_max_length','2025-05-07 19:27:51.082824'),(15,'auth','0010_alter_group_name_max_length','2025-05-07 19:27:51.293989'),(16,'auth','0011_update_proxy_permissions','2025-05-07 19:27:51.396030'),(17,'auth','0012_alter_user_first_name_max_length','2025-05-07 19:27:52.799491'),(18,'sessions','0001_initial','2025-05-07 19:27:54.871183'),(21,'eventos','0001_initial','2025-05-09 19:21:15.762711'),(22,'admin_interface','0001_initial','2025-05-09 19:56:56.644592'),(23,'admin_interface','0002_add_related_modal','2025-05-09 19:57:03.169101'),(24,'admin_interface','0003_add_logo_color','2025-05-09 19:57:04.589994'),(25,'admin_interface','0004_rename_title_color','2025-05-09 19:57:05.085100'),(26,'admin_interface','0005_add_recent_actions_visible','2025-05-09 19:57:06.114928'),(27,'admin_interface','0006_bytes_to_str','2025-05-09 19:57:06.266574'),(28,'admin_interface','0007_add_favicon','2025-05-09 19:57:07.703343'),(29,'admin_interface','0008_change_related_modal_background_opacity_type','2025-05-09 19:57:09.598978'),(30,'admin_interface','0009_add_enviroment','2025-05-09 19:57:11.725984'),(31,'admin_interface','0010_add_localization','2025-05-09 19:57:11.823093'),(32,'admin_interface','0011_add_environment_options','2025-05-09 19:57:14.960884'),(33,'admin_interface','0012_update_verbose_names','2025-05-09 19:57:15.037568'),(34,'admin_interface','0013_add_related_modal_close_button','2025-05-09 19:57:16.171439'),(35,'admin_interface','0014_name_unique','2025-05-09 19:57:16.771609'),(36,'admin_interface','0015_add_language_chooser_active','2025-05-09 19:57:18.283651'),(37,'admin_interface','0016_add_language_chooser_display','2025-05-09 19:57:19.549921'),(38,'admin_interface','0017_change_list_filter_dropdown','2025-05-09 19:57:19.648871'),(39,'admin_interface','0018_theme_list_filter_sticky','2025-05-09 19:57:20.750232'),(40,'admin_interface','0019_add_form_sticky','2025-05-09 19:57:23.828694'),(41,'admin_interface','0020_module_selected_colors','2025-05-09 19:57:26.136046'),(42,'admin_interface','0021_file_extension_validator','2025-05-09 19:57:26.251388'),(43,'admin_interface','0022_add_logo_max_width_and_height','2025-05-09 19:57:30.407013'),(44,'admin_interface','0023_theme_foldable_apps','2025-05-09 19:57:31.763046'),(45,'admin_interface','0024_remove_theme_css','2025-05-09 19:57:32.818998'),(46,'admin_interface','0025_theme_language_chooser_control','2025-05-09 19:57:34.241727'),(47,'admin_interface','0026_theme_list_filter_highlight','2025-05-09 19:57:35.743793'),(48,'admin_interface','0027_theme_list_filter_removal_links','2025-05-09 19:57:37.463553'),(49,'admin_interface','0028_theme_show_fieldsets_as_tabs_and_more','2025-05-09 19:57:40.908654'),(50,'admin_interface','0029_theme_css_generic_link_active_color','2025-05-09 19:57:42.509218'),(51,'admin_interface','0030_theme_collapsible_stacked_inlines_and_more','2025-05-09 19:57:47.798170'),(52,'eventos','0002_evento_image','2025-06-09 16:50:29.850562'),(53,'eventos','0003_remove_evento_image','2025-06-09 17:28:35.872111'),(54,'eventos','0004_evento_image','2025-06-09 17:29:17.522447'),(55,'eventos','0005_contacto','2025-06-10 16:20:36.740975');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('f1qiv375cekg3bgryx7wiuomx94vm83a','.eJxVjEEOwiAQRe_C2hAGSgGX7j0DmemAVA0kpV0Z765NutDtf-_9l4i4rSVuPS1xZnEWIE6_G-H0SHUHfMd6a3JqdV1mkrsiD9rltXF6Xg7376BgL986WAyB7KDCqMEobaxRI3jL2VE2LrPzAcBax8oTGALlcg6o04DKo2Hx_gCjgTa1:1uCkZQ:bDKY3dgavRzQEbnZRx_KN239XfTDkXr98FhCH3AciSk','2025-05-21 19:36:44.295371'),('lj6kyd600n3q9x5wceuebjl4z227q49s','.eJxVjEEOwiAQRe_C2hAGSgGX7j0DmemAVA0kpV0Z765NutDtf-_9l4i4rSVuPS1xZnEWIE6_G-H0SHUHfMd6a3JqdV1mkrsiD9rltXF6Xg7376BgL986WAyB7KDCqMEobaxRI3jL2VE2LrPzAcBax8oTGALlcg6o04DKo2Hx_gCjgTa1:1uX013:7pm7nPrQskKLu-0n6Mp734NwhSq3lGCs6nxKs9UlkTw','2025-07-16 16:08:57.193424'),('xe1hi7xvu8i440t8f5bhtvqmcl4addkr','.eJxVjEEOwiAQRe_C2hAGSgGX7j0DmemAVA0kpV0Z765NutDtf-_9l4i4rSVuPS1xZnEWIE6_G-H0SHUHfMd6a3JqdV1mkrsiD9rltXF6Xg7376BgL986WAyB7KDCqMEobaxRI3jL2VE2LrPzAcBax8oTGALlcg6o04DKo2Hx_gCjgTa1:1uOg10:Rx0MMbnTQLKNuzUY5ItgtTgytAvh4NCYUODCtULSJN0','2025-06-23 17:10:30.509857'),('xswliu4rcu7zgvbiuehbvcvdzm8py4yo','.eJxVjEEOwiAQRe_C2hAGSgGX7j0DmemAVA0kpV0Z765NutDtf-_9l4i4rSVuPS1xZnEWIE6_G-H0SHUHfMd6a3JqdV1mkrsiD9rltXF6Xg7376BgL986WAyB7KDCqMEobaxRI3jL2VE2LrPzAcBax8oTGALlcg6o04DKo2Hx_gCjgTa1:1uOg11:JLi8QPxLQVOdOMbBAd_axFomicjKXGorar2d27KKlJg','2025-06-23 17:10:31.977841');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_contacto`
--

DROP TABLE IF EXISTS `eventos_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos_contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `tipo` int NOT NULL,
  `mensaje` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_contacto`
--

LOCK TABLES `eventos_contacto` WRITE;
/*!40000 ALTER TABLE `eventos_contacto` DISABLE KEYS */;
INSERT INTO `eventos_contacto` VALUES (1,'Jime','jimena.anzueto@galileo.edu',1,'gbxg','2025-06-11 17:54:28.045726'),(2,'Jime','jimena.anzueto@galileo.edu',1,'jsjsj','2025-06-11 17:54:35.566354'),(3,'Jime','jimena.anzueto@galileo.edu',1,'jsjsj','2025-06-11 17:54:38.337950'),(4,'','jimena.anzueto@galileo.edu',1,'ghn','2025-06-11 17:57:00.569890'),(5,'Jime','jimena.anzueto@galileo.edu',1,'cc','2025-06-11 18:04:19.139207'),(6,'','jimena.anzueto@galileo.edu',1,'gg','2025-06-11 18:04:35.329284'),(7,'v','jimegaitana@gmail.com',1,'bb','2025-06-11 18:04:54.814685'),(8,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:05:26.380764'),(9,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:05:36.657298'),(10,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:05:44.715695'),(11,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:05:53.717048'),(12,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:01.199538'),(13,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:03.599931'),(14,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:05.054260'),(15,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:05.858961'),(16,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:12.239513'),(17,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:13.035376'),(18,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:13.313451'),(19,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:13.558605'),(20,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:14.210946'),(21,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:21.910693'),(22,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:23.560553'),(23,'Jime','jimena.anzueto@galileo.edu',1,'hh','2025-06-11 18:06:24.291502'),(24,'Jime','jimegaitana@gmail.com',1,'gg','2025-06-11 18:06:40.851210'),(25,'Jime','jimegaitana@gmail.com',1,'gg','2025-06-11 18:06:48.600112'),(26,'Jime','jimegaitana@gmail.com',1,'gg','2025-06-11 18:06:49.299942'),(27,'Jime','jimegaitana@gmail.com',1,'gg','2025-06-11 18:06:49.469846'),(28,'Jime','jimegaitana@gmail.com',1,'gg','2025-06-11 18:06:50.225513'),(29,'Jime','jimegaitana@gmail.com',1,'gg','2025-06-11 18:06:50.385674'),(30,'Jime','jimegaitana@gmail.com',1,'gg','2025-06-11 18:09:08.807132'),(31,'Jime','jimegaitana@gmail.com',1,'gg','2025-06-11 18:15:02.901229'),(32,'','jimena.anzueto@galileo.edu',1,'hh','2025-06-17 13:59:47.264019'),(33,'Jime','jimena.anzueto@galileo.edu',1,'f','2025-06-17 14:01:46.171377'),(34,'Jime','jimena@algo.com',2,'hh','2025-06-24 16:27:26.200214'),(35,'Jime','jimena@algo.com',3,'dd','2025-06-24 16:28:55.968918'),(36,'Jime','jimena@algo.com',3,'dd','2025-06-24 16:30:03.171307'),(37,'Jime','jimena@algo.com',3,'dd','2025-06-24 16:30:04.858822'),(38,'Jime','jimena@algo.com',3,'dd','2025-06-24 16:30:05.924452'),(39,'Jime','jimena@algo.com',3,'dd','2025-06-24 16:30:06.145704'),(40,'OPTOMETRAS 2025','',1,'OPT. 2025','2025-07-02 15:55:18.797852');
/*!40000 ALTER TABLE `eventos_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_evento`
--

DROP TABLE IF EXISTS `eventos_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos_evento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha_asignacion` date NOT NULL,
  `fecha_fin_asignacion` date NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `diploma` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `description` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_evento`
--

LOCK TABLES `eventos_evento` WRITE;
/*!40000 ALTER TABLE `eventos_evento` DISABLE KEYS */;
INSERT INTO `eventos_evento` VALUES (1,'OPTOMETRAS 2025',100.00,'2025-05-01','2025-05-09','2025-05-10','2025-05-11',1,1,'V CONGRESO DE OPTOMETRÍA 2025','2025-05-09 19:21:34.000000','2025-05-09 19:22:24.076449',NULL),(2,'FERIA DEL EMPLEO',0.00,'2025-04-02','2025-04-09','2025-04-11','2025-04-11',0,1,'¿Buscas trabajo? Conoce nuevas oportunidades en universidad galileo.','2025-05-09 19:22:24.000000','2025-06-09 17:36:46.884242','images/feria_pAyC3GQ.jpg'),(3,'FINANZAS POSITIVAS',0.00,'2025-03-01','2025-03-15','2025-04-16','2025-04-17',0,1,'CONGRESO FADMOS','2025-05-09 19:24:06.000000','2025-06-09 17:35:00.280441','images/finanzas_8IIit1A.jpg'),(4,'INTERCICLO',3000.00,'2025-05-15','2025-05-31','2025-06-02','2025-05-30',0,1,'¡Termina tus cursos para poder acabar con tu carrera!','2025-05-09 19:27:17.000000','2025-06-09 17:39:08.882223','images/inteciclo_3eoKUwI.png'),(5,'INTELIGENCIA ARTIFICIAL',200.00,'2025-05-01','2025-05-17','2025-05-19','2025-05-20',1,1,'¡Ven a conocer nuevas IAs para poder ampliar tus conocimientos!','2025-05-09 19:28:29.000000','2025-06-09 17:29:55.246471','images/IA_tv4mGn5_1p0A5bG.png'),(6,'INTELIGENCIA ARTIFICIAL ',200.00,'2025-06-29','2025-07-01','2025-07-02','2025-07-03',0,1,NULL,'2025-07-02 16:06:39.367366','2025-07-02 16:06:39.370319',''),(7,'INTELIGENCIA ARTIFICIAL ',200.00,'2025-06-29','2025-07-01','2025-07-02','2025-07-03',0,1,NULL,'2025-07-02 16:06:39.997413','2025-07-02 16:06:40.004490',''),(8,'OPTOMETRAS 2025',200.00,'2025-06-29','2025-07-01','2025-07-02','2025-07-03',0,1,NULL,'2025-07-02 16:07:23.917985','2025-07-02 16:07:23.920339',''),(9,'EVENTICO',1000.00,'2025-06-29','2025-07-03','2025-07-02','2025-07-03',0,1,NULL,'2025-07-02 16:55:07.580189','2025-07-02 16:55:07.583010','');
/*!40000 ALTER TABLE `eventos_evento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-05 11:13:13
