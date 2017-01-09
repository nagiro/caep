-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 192.168.10.10    Database: dtdhqwrucf
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2016-12-14 10:30:28','2016-12-14 10:30:28','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://acaep.local','yes'),(2,'home','http://acaep.local','yes'),(3,'blogname','Associació de Companyies d&#039;Arts Escèniques de Girona','yes'),(4,'blogdescription','','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','albert.johe@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','d/m/Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:113:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:59:\"portfolio/category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?portfolio_category=$matches[1]&feed=$matches[2]\";s:54:\"portfolio/category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?portfolio_category=$matches[1]&feed=$matches[2]\";s:35:\"portfolio/category/([^/]+)/embed/?$\";s:51:\"index.php?portfolio_category=$matches[1]&embed=true\";s:47:\"portfolio/category/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?portfolio_category=$matches[1]&paged=$matches[2]\";s:29:\"portfolio/category/([^/]+)/?$\";s:40:\"index.php?portfolio_category=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:46:\"index.php?udt_portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:40:\"index.php?udt_portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?udt_portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?udt_portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?udt_portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=83&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:1:{i:0;s:33:\"w3-total-cache/w3-total-cache.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','1','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:3:{i:0;s:91:\"/home/51561-41885.cloudwaysapps.com/dtdhqwrucf/public_html/wp-content/themes/raw/header.php\";i:1;s:90:\"/home/51561-41885.cloudwaysapps.com/dtdhqwrucf/public_html/wp-content/themes/raw/style.css\";i:2;s:0:\"\";}','no'),(40,'template','raw','yes'),(41,'stylesheet','raw','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','page','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:3:{i:1;a:0:{}i:2;a:3:{s:5:\"title\";s:27:\"Text inferior o contacte...\";s:4:\"text\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','83','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','78','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'initial_db_version','37965','yes'),(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(93,'widget_search','a:2:{i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(94,'widget_recent-posts','a:2:{i:3;a:3:{s:5:\"title\";s:13:\"Últims posts\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(98,'sidebars_widgets','a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:0:{}s:12:\"page-sidebar\";a:0:{}s:15:\"contact-sidebar\";a:0:{}s:14:\"header-sidebar\";a:1:{i:0;s:8:\"search-3\";}s:24:\"first-footer-widget-area\";a:1:{i:0;s:6:\"text-2\";}s:25:\"second-footer-widget-area\";a:1:{i:0;s:14:\"recent-posts-3\";}s:24:\"third-footer-widget-area\";a:1:{i:0;s:10:\"calendar-5\";}s:13:\"array_version\";i:3;}','yes'),(99,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_calendar','a:2:{i:5;a:1:{s:5:\"title\";s:9:\"Calendari\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'cron','a:4:{i:1481841028;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1481884959;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1481886047;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(104,'_transient_is_multi_author','0','yes'),(105,'_transient_twentysixteen_categories','1','yes'),(114,'w3tc_extensions_hooks','{\"actions\":[],\"filters\":[],\"next_check_date\":1482084107}','yes'),(118,'db_upgraded','','yes'),(119,'can_compress_scripts','0','no'),(122,'theme_mods_raw','a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}}','yes'),(123,'theme_mods_twentysixteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1481712327;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(124,'current_theme','Raw','yes'),(125,'theme_switched','','yes'),(126,'WPLANG','es_ES','yes'),(127,'fresh_site','0','yes'),(135,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.7.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.7.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.7\";s:7:\"version\";s:3:\"4.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1481826925;s:15:\"version_checked\";s:3:\"4.7\";s:12:\"translations\";a:0:{}}','no'),(136,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1481826928;s:7:\"checked\";a:4:{s:3:\"raw\";s:3:\"1.7\";s:13:\"twentyfifteen\";s:3:\"1.6\";s:14:\"twentyfourteen\";s:3:\"1.8\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:2:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.7.zip\";}s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip\";}}s:12:\"translations\";a:0:{}}','no'),(137,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1481826926;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.3.2.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:33:\"w3-total-cache/w3-total-cache.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"9376\";s:4:\"slug\";s:14:\"w3-total-cache\";s:6:\"plugin\";s:33:\"w3-total-cache/w3-total-cache.php\";s:11:\"new_version\";s:7:\"0.9.5.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/w3-total-cache/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/w3-total-cache.0.9.5.1.zip\";}}}','no'),(138,'_transient_timeout_w3tc.verify_plugins','1482431756','no'),(139,'_transient_w3tc.verify_plugins','1','no'),(140,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes'),(141,'w3tc_nr_application_id','{\"d41d8cd98f00b204e9800998ecf8427e\":0}','yes'),(142,'_site_transient_timeout_theme_roots','1481833622','no'),(143,'_site_transient_theme_roots','a:4:{s:3:\"raw\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),(144,'_transient_doing_cron','1481997697.7505979537963867187500','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','page-udt_portfolio-index.php'),(4,6,'_wp_trash_meta_status','publish'),(5,6,'_wp_trash_meta_time','1481713226'),(6,7,'_edit_last','1'),(7,7,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:8:\"La Bleda\";s:6:\"teaser\";s:36:\"Això és el teaser.. un xic d\'info.\";s:11:\"page_layout\";s:16:\"full-width-media\";s:21:\"display_media_caption\";s:8:\"La Bleda\";}'),(8,7,'_edit_lock','1481831314:1'),(9,10,'_wp_attached_file','2016/12/893.jpg'),(10,10,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:384;s:6:\"height\";i:263;s:4:\"file\";s:15:\"2016/12/893.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"893-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"893-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"udt-blog-grid-thumb\";a:4:{s:4:\"file\";s:15:\"893-257x197.jpg\";s:5:\"width\";i:257;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"udt-portfolio-thumb-1\";a:4:{s:4:\"file\";s:15:\"893-286x196.jpg\";s:5:\"width\";i:286;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(11,7,'_thumbnail_id','10'),(12,2,'_edit_lock','1481827406:1'),(13,2,'_edit_last','1'),(14,2,'_udt_page_meta','a:2:{s:13:\"display_title\";s:0:\"\";s:6:\"teaser\";s:0:\"\";}'),(15,15,'_edit_last','1'),(16,15,'_edit_lock','1481827520:1'),(17,17,'_wp_trash_meta_status','publish'),(18,17,'_wp_trash_meta_time','1481827798'),(19,18,'_wp_trash_meta_status','publish'),(20,18,'_wp_trash_meta_time','1481827891'),(22,20,'_wp_trash_meta_status','publish'),(23,20,'_wp_trash_meta_time','1481827929'),(24,2,'_wp_trash_meta_status','publish'),(25,2,'_wp_trash_meta_time','1481827954'),(26,2,'_wp_desired_post_slug','sample-page'),(27,22,'_menu_item_type','post_type'),(28,22,'_menu_item_menu_item_parent','0'),(29,22,'_menu_item_object_id','19'),(30,22,'_menu_item_object','page'),(31,22,'_menu_item_target',''),(32,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(33,22,'_menu_item_xfn',''),(34,22,'_menu_item_url',''),(36,19,'_edit_lock','1481995608:1'),(37,23,'_wp_attached_file','2016/12/70.jpg'),(38,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:384;s:6:\"height\";i:263;s:4:\"file\";s:14:\"2016/12/70.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"70-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"70-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"udt-blog-grid-thumb\";a:4:{s:4:\"file\";s:14:\"70-257x197.jpg\";s:5:\"width\";i:257;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"udt-portfolio-thumb-1\";a:4:{s:4:\"file\";s:14:\"70-286x196.jpg\";s:5:\"width\";i:286;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(39,24,'_wp_attached_file','2016/12/817.jpg'),(40,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:384;s:6:\"height\";i:263;s:4:\"file\";s:15:\"2016/12/817.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"817-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"817-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"udt-blog-grid-thumb\";a:4:{s:4:\"file\";s:15:\"817-257x197.jpg\";s:5:\"width\";i:257;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"udt-portfolio-thumb-1\";a:4:{s:4:\"file\";s:15:\"817-286x196.jpg\";s:5:\"width\";i:286;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(41,25,'_wp_attached_file','2016/12/1091.jpg'),(42,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:384;s:6:\"height\";i:263;s:4:\"file\";s:16:\"2016/12/1091.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"1091-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"1091-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"udt-blog-grid-thumb\";a:4:{s:4:\"file\";s:16:\"1091-257x197.jpg\";s:5:\"width\";i:257;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"udt-portfolio-thumb-1\";a:4:{s:4:\"file\";s:16:\"1091-286x196.jpg\";s:5:\"width\";i:286;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(43,26,'_wp_attached_file','2016/12/Screen-Shot-2015-09-09-at-1.57.53-PM-384x263.png'),(44,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:384;s:6:\"height\";i:263;s:4:\"file\";s:56:\"2016/12/Screen-Shot-2015-09-09-at-1.57.53-PM-384x263.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"Screen-Shot-2015-09-09-at-1.57.53-PM-384x263-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"Screen-Shot-2015-09-09-at-1.57.53-PM-384x263-300x205.png\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"udt-blog-grid-thumb\";a:4:{s:4:\"file\";s:56:\"Screen-Shot-2015-09-09-at-1.57.53-PM-384x263-257x197.png\";s:5:\"width\";i:257;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"udt-portfolio-thumb-1\";a:4:{s:4:\"file\";s:56:\"Screen-Shot-2015-09-09-at-1.57.53-PM-384x263-286x196.png\";s:5:\"width\";i:286;s:6:\"height\";i:196;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(45,10,'_udt_slide_video_url',''),(46,10,'_udt_slide_display_opt','none'),(47,10,'_udt_slide_link_url',''),(48,19,'_udt_page_meta','a:2:{s:13:\"display_title\";s:0:\"\";s:6:\"teaser\";s:0:\"\";}'),(49,19,'_edit_last','1'),(50,19,'_wp_page_template','page-udt_portfolio-index.php'),(51,26,'_udt_slide_video_url',''),(52,26,'_udt_slide_display_opt','none'),(53,26,'_udt_slide_link_url',''),(54,25,'_udt_slide_video_url',''),(55,25,'_udt_slide_display_opt','none'),(56,25,'_udt_slide_link_url',''),(57,24,'_udt_slide_video_url',''),(58,24,'_udt_slide_display_opt','none'),(59,24,'_udt_slide_link_url',''),(60,23,'_udt_slide_video_url',''),(61,23,'_udt_slide_display_opt','none'),(62,23,'_udt_slide_link_url',''),(63,15,'_wp_trash_meta_status','publish'),(64,15,'_wp_trash_meta_time','1481828358'),(65,15,'_wp_desired_post_slug','imatge-del-banner-1'),(66,31,'_edit_last','1'),(67,31,'_edit_lock','1481830127:1'),(68,31,'_thumbnail_id','25'),(69,31,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:10:\"Pere Hosta\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:10:\"Pere Hosta\";}'),(71,38,'_edit_last','1'),(72,38,'_edit_lock','1481831670:1'),(73,38,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:8:\"Pep Vila\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:8:\"Pep Vila\";}'),(74,40,'_edit_last','1'),(75,40,'_edit_lock','1481831331:1'),(76,40,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:16:\"Cos a cos teatre\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:16:\"Cos a cos teatre\";}'),(77,42,'_edit_last','1'),(78,42,'_edit_lock','1481831339:1'),(79,42,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:19:\"Teatre de guerrilla\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:19:\"Teatre de guerrilla\";}'),(80,44,'_edit_last','1'),(81,44,'_edit_lock','1481831348:1'),(82,44,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:13:\"Cascai Teatre\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:13:\"Cascai Teatre\";}'),(83,46,'_edit_last','1'),(84,46,'_edit_lock','1481831355:1'),(85,46,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:12:\"Impàs Dansa\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:12:\"Impàs Dansa\";}'),(86,48,'_edit_last','1'),(87,48,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:15:\"Cia. Estampades\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:15:\"Cia. Estampades\";}'),(88,48,'_edit_lock','1481831364:1'),(89,50,'_edit_last','1'),(90,50,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:29:\"Companyia de teatre Anna Roca\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:29:\"Companyia de teatre Anna Roca\";}'),(91,50,'_edit_lock','1481831371:1'),(92,52,'_edit_last','1'),(93,52,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:16:\"Cia. La Corcoles\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:16:\"Cia. La Corcoles\";}'),(94,52,'_edit_lock','1481831379:1'),(95,54,'_edit_last','1'),(96,54,'_edit_lock','1481831390:1'),(97,54,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:16:\"Moviment Lantana\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:16:\"Moviment Lantana\";}'),(98,56,'_edit_last','1'),(99,56,'_edit_lock','1481831399:1'),(100,56,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:17:\"Cia. Claret Clown\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:17:\"Cia. Claret Clown\";}'),(101,58,'_edit_last','1'),(102,58,'_edit_lock','1481831412:1'),(103,58,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:16:\"Cirquet Confetti\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:16:\"Cirquet Confetti\";}'),(104,60,'_edit_last','1'),(105,60,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:21:\"David Planas i Lladó\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:21:\"David Planas i Lladó\";}'),(106,60,'_edit_lock','1481831420:1'),(107,62,'_edit_last','1'),(108,62,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:16:\"Mentidera Teatre\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:16:\"Mentidera Teatre\";}'),(109,62,'_edit_lock','1481831427:1'),(110,64,'_edit_last','1'),(111,64,'_edit_lock','1481830962:1'),(112,64,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:12:\"Felix Brunet\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:12:\"Felix Brunet\";}'),(113,66,'_edit_last','1'),(114,66,'_edit_lock','1481831441:1'),(115,66,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:15:\"PocaCosa teatre\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:15:\"PocaCosa teatre\";}'),(116,68,'_edit_last','1'),(117,68,'_edit_lock','1481831449:1'),(118,68,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:21:\"MeriYanes produccions\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:21:\"MeriYanes produccions\";}'),(119,70,'_edit_last','1'),(120,70,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:29:\"Cascai Teatre & Marcel Tomàs\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:29:\"Cascai Teatre & Marcel Tomàs\";}'),(121,70,'_edit_lock','1481831453:1'),(122,72,'_edit_last','1'),(123,72,'_udt_portfolio_meta','a:4:{s:13:\"display_title\";s:17:\"Cobosmika company\";s:6:\"teaser\";s:0:\"\";s:11:\"page_layout\";s:7:\"default\";s:21:\"display_media_caption\";s:17:\"Cobosmika company\";}'),(124,72,'_edit_lock','1481831458:1'),(125,7,'_wp_old_slug','projecte-1'),(126,38,'_thumbnail_id','25'),(127,77,'_wp_attached_file','2016/12/caepgirona.jpg'),(128,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2016/12/caepgirona.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"caepgirona-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"caepgirona-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"caepgirona-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"caepgirona-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"caepgirona-605x340.jpg\";s:5:\"width\";i:605;s:6:\"height\";i:340;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"udt-full-width-image\";a:4:{s:4:\"file\";s:22:\"caepgirona-870x490.jpg\";s:5:\"width\";i:870;s:6:\"height\";i:490;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"udt-blog-grid-thumb\";a:4:{s:4:\"file\";s:22:\"caepgirona-257x197.jpg\";s:5:\"width\";i:257;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"udt-portfolio-thumb-1\";a:4:{s:4:\"file\";s:22:\"caepgirona-286x196.jpg\";s:5:\"width\";i:286;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"udt-portfolio-thumb-2\";a:4:{s:4:\"file\";s:22:\"caepgirona-384x263.jpg\";s:5:\"width\";i:384;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(129,78,'_wp_attached_file','2016/12/cropped-caepgirona.jpg'),(130,78,'_wp_attachment_context','site-icon'),(131,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2016/12/cropped-caepgirona.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-512x340.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:340;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"udt-full-width-image\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-512x490.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:490;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"udt-blog-grid-thumb\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-257x197.jpg\";s:5:\"width\";i:257;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"udt-portfolio-thumb-1\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-286x196.jpg\";s:5:\"width\";i:286;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"udt-portfolio-thumb-2\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-384x263.jpg\";s:5:\"width\";i:384;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-caepgirona-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-caepgirona-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(132,76,'_wp_trash_meta_status','publish'),(133,76,'_wp_trash_meta_time','1481832100'),(134,81,'_edit_last','1'),(135,81,'_edit_lock','1481833367:1'),(136,81,'_wp_page_template','page-udt_portfolio-index.php'),(137,81,'_udt_page_meta','a:2:{s:13:\"display_title\";s:0:\"\";s:6:\"teaser\";s:0:\"\";}'),(140,38,'_thumbnail_id','25'),(141,40,'_thumbnail_id','25'),(142,42,'_thumbnail_id','25'),(143,44,'_thumbnail_id','25'),(144,46,'_thumbnail_id','25'),(145,48,'_thumbnail_id','25'),(146,50,'_thumbnail_id','25'),(147,52,'_thumbnail_id','25'),(148,54,'_thumbnail_id','25'),(149,56,'_thumbnail_id','25'),(150,58,'_thumbnail_id','25'),(151,60,'_thumbnail_id','25'),(152,62,'_thumbnail_id','25'),(153,64,'_thumbnail_id','25'),(154,66,'_thumbnail_id','25'),(155,68,'_thumbnail_id','25'),(156,70,'_thumbnail_id','25'),(157,72,'_thumbnail_id','25'),(158,83,'_edit_last','1'),(159,83,'_edit_lock','1481996241:1'),(160,83,'_wp_page_template','default'),(161,83,'_udt_page_meta','a:2:{s:13:\"display_title\";s:0:\"\";s:6:\"teaser\";s:0:\"\";}'),(162,85,'_menu_item_type','post_type'),(163,85,'_menu_item_menu_item_parent','0'),(164,85,'_menu_item_object_id','83'),(165,85,'_menu_item_object','page'),(166,85,'_menu_item_target',''),(167,85,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(168,85,'_menu_item_xfn',''),(169,85,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2016-12-14 10:30:28','2016-12-14 10:30:28','It seems like you\'re running a default WordPress website. Well, you can easily migrate your WordPress sites over to Cloudways using our WordPress Migrator plugin.\nFor more information read this KB: <a href=https://support.cloudways.com/how-to-migrate-wordpress-to-cloudways/>https://support.cloudways.com/how-to-migrate-wordpress-to-cloudways/</a>\nOr watch this video\n<script charset=ISO-8859-1 src=//fast.wistia.com/assets/external/E-v1.js async></script><div class=\"wistia_embed wistia_async_et4w0pj6ii videoFoam=true\" style=height:100%;width:100%></div>','How to migrate your WordPress website to Cloudways for Free?','','publish','open','open','','welcome-to-cloudways','','','2016-12-14 10:30:28','2016-12-14 10:30:28','',0,'http://acaep.local/?p=1',0,'post','',1),(2,1,'2016-12-14 10:30:28','2016-12-14 10:30:28','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://acaep.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','trash','closed','open','','sample-page__trashed','','','2016-12-15 19:52:34','2016-12-15 18:52:34','',0,'http://acaep.local/?page_id=2',0,'page','',0),(3,1,'2016-12-14 10:42:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2016-12-14 10:42:42','0000-00-00 00:00:00','',0,'http://acaep.local/?p=3',0,'post','',0),(5,1,'2016-12-14 10:45:23','0000-00-00 00:00:00','{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1\n    }\n}','','','auto-draft','closed','closed','','5b816465-78a4-4d73-ac7d-55483994a774','','','2016-12-14 10:45:23','0000-00-00 00:00:00','',0,'http://acaep.local/?p=5',0,'customize_changeset','',0),(6,1,'2016-12-14 12:00:26','2016-12-14 11:00:26','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','d517757b-595e-4357-bcd2-2db4fbb9e396','','','2016-12-14 12:00:26','2016-12-14 11:00:26','',0,'http://acaep.local/2016/12/14/d517757b-595e-4357-bcd2-2db4fbb9e396/',0,'customize_changeset','',0),(7,1,'2016-12-14 12:00:59','2016-12-14 11:00:59','','La Bleda','','publish','closed','closed','','la-bleda','','','2016-12-15 20:48:34','2016-12-15 19:48:34','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=7',0,'udt_portfolio','',0),(8,1,'2016-12-14 12:00:59','2016-12-14 11:00:59','','Projecte 1','','inherit','closed','closed','','7-revision-v1','','','2016-12-14 12:00:59','2016-12-14 11:00:59','',7,'http://acaep.local/2016/12/14/7-revision-v1/',0,'revision','',0),(9,1,'2016-12-15 19:37:45','2016-12-15 18:37:45','','Companyia 1','','inherit','closed','closed','','7-revision-v1','','','2016-12-15 19:37:45','2016-12-15 18:37:45','',7,'http://acaep.local/2016/12/15/7-revision-v1/',0,'revision','',0),(10,1,'2016-12-15 19:42:37','2016-12-15 18:42:37','','893','','inherit','open','closed','','893','','','2016-12-15 20:32:21','2016-12-15 19:32:21','',7,'http://acaep.local/wp-content/uploads/2016/12/893.jpg',0,'attachment','image/jpeg',0),(12,1,'2016-12-15 19:44:43','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2016-12-15 19:44:43','0000-00-00 00:00:00','',0,'http://acaep.local/?p=12',0,'post','',0),(13,1,'2016-12-15 19:45:06','2016-12-15 18:45:06','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://acaep.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2016-12-15 19:45:06','2016-12-15 18:45:06','',2,'http://acaep.local/2016/12/15/2-revision-v1/',0,'revision','',0),(14,1,'2016-12-15 19:45:24','2016-12-15 18:45:24','','Sample Page','','inherit','closed','closed','','2-autosave-v1','','','2016-12-15 19:45:24','2016-12-15 18:45:24','',2,'http://acaep.local/2016/12/15/2-autosave-v1/',0,'revision','',0),(15,1,'2016-12-15 19:46:20','2016-12-15 18:46:20','Això és una imatge del bànner 1.','Imatge del banner 1','','trash','closed','closed','','imatge-del-banner-1__trashed','','','2016-12-15 19:59:18','2016-12-15 18:59:18','',0,'http://acaep.local/?post_type=udt_shortcode_slider&#038;p=15',0,'udt_shortcode_slider','',0),(16,1,'2016-12-15 19:46:43','2016-12-15 18:46:43','Això és una imatge del bànner 1.','Imatge del banner 1','','inherit','closed','closed','','15-autosave-v1','','','2016-12-15 19:46:43','2016-12-15 18:46:43','',15,'http://acaep.local/2016/12/15/15-autosave-v1/',0,'revision','',0),(17,1,'2016-12-15 19:49:58','2016-12-15 18:49:58','{\n    \"sidebars_widgets[header-sidebar]\": {\n        \"value\": [\n            \"calendar-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_calendar[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjk6IkNhbGVuZGFyaSI7fQ==\",\n            \"title\": \"Calendari\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8144bc73b69f556676a844578fbee627\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','d86239eb-783d-47ee-acc9-3960d537ae96','','','2016-12-15 19:49:58','2016-12-15 18:49:58','',0,'http://acaep.local/2016/12/15/d86239eb-783d-47ee-acc9-3960d537ae96/',0,'customize_changeset','',0),(18,1,'2016-12-15 19:51:31','2016-12-15 18:51:31','{\n    \"raw::nav_menu_locations[primary]\": {\n        \"value\": -1858771873343223800,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[-1858771873343223800]\": {\n        \"value\": {\n            \"name\": \"Men\\u00fa general\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','675c3e38-f725-41dc-be02-18f8da2ee254','','','2016-12-15 19:51:31','2016-12-15 18:51:31','',0,'http://acaep.local/2016/12/15/675c3e38-f725-41dc-be02-18f8da2ee254/',0,'customize_changeset','',0),(19,1,'2016-12-15 19:52:09','2016-12-15 18:52:09','','Companyies','','publish','closed','closed','','landing','','','2016-12-15 21:22:54','2016-12-15 20:22:54','',0,'http://acaep.local/?page_id=19',0,'page','',0),(20,1,'2016-12-15 19:52:09','2016-12-15 18:52:09','{\n    \"page_on_front\": {\n        \"value\": \"19\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            19\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','47c46cb9-ad52-4267-8eec-a507dcd3445f','','','2016-12-15 19:52:09','2016-12-15 18:52:09','',0,'http://acaep.local/2016/12/15/47c46cb9-ad52-4267-8eec-a507dcd3445f/',0,'customize_changeset','',0),(21,1,'2016-12-15 19:52:09','2016-12-15 18:52:09','','Landing','','inherit','closed','closed','','19-revision-v1','','','2016-12-15 19:52:09','2016-12-15 18:52:09','',19,'http://acaep.local/2016/12/15/19-revision-v1/',0,'revision','',0),(22,1,'2016-12-15 19:53:21','2016-12-15 18:53:21',' ','','','publish','closed','closed','','22','','','2016-12-17 18:27:47','2016-12-17 17:27:47','',0,'http://acaep.local/?p=22',2,'nav_menu_item','',0),(23,1,'2016-12-15 19:56:00','2016-12-15 18:56:00','','70','','inherit','open','closed','','70','','','2016-12-15 20:32:19','2016-12-15 19:32:19','',19,'http://acaep.local/wp-content/uploads/2016/12/70.jpg',0,'attachment','image/jpeg',0),(24,1,'2016-12-15 19:56:01','2016-12-15 18:56:01','','817','','inherit','open','closed','','817','','','2016-12-15 20:32:17','2016-12-15 19:32:17','',19,'http://acaep.local/wp-content/uploads/2016/12/817.jpg',0,'attachment','image/jpeg',0),(25,1,'2016-12-15 19:56:02','2016-12-15 18:56:02','','1091','','inherit','open','closed','','1091','','','2016-12-15 20:32:14','2016-12-15 19:32:14','',19,'http://acaep.local/wp-content/uploads/2016/12/1091.jpg',0,'attachment','image/jpeg',0),(26,1,'2016-12-15 19:56:02','2016-12-15 18:56:02','','Screen-Shot-2015-09-09-at-1.57.53-PM-384x263','','inherit','open','closed','','screen-shot-2015-09-09-at-1-57-53-pm-384x263','','','2016-12-15 20:32:11','2016-12-15 19:32:11','',19,'http://acaep.local/wp-content/uploads/2016/12/Screen-Shot-2015-09-09-at-1.57.53-PM-384x263.png',0,'attachment','image/png',0),(28,1,'2016-12-15 19:57:00','2016-12-15 18:57:00','<img class=\"alignnone size-medium wp-image-26\" src=\"http://acaep.local/wp-content/uploads/2016/12/Screen-Shot-2015-09-09-at-1.57.53-PM-384x263-300x205.png\" alt=\"\" width=\"300\" height=\"205\" /> <img class=\"alignnone size-medium wp-image-25\" src=\"http://acaep.local/wp-content/uploads/2016/12/1091-300x205.jpg\" alt=\"\" width=\"300\" height=\"205\" /> <img class=\"alignnone size-medium wp-image-24\" src=\"http://acaep.local/wp-content/uploads/2016/12/817-300x205.jpg\" alt=\"\" width=\"300\" height=\"205\" /> <img class=\"alignnone size-medium wp-image-23\" src=\"http://acaep.local/wp-content/uploads/2016/12/70-300x205.jpg\" alt=\"\" width=\"300\" height=\"205\" /> <img class=\"alignnone size-medium wp-image-10\" src=\"http://acaep.local/wp-content/uploads/2016/12/893-300x205.jpg\" alt=\"\" width=\"300\" height=\"205\" />','Landing','','inherit','closed','closed','','19-revision-v1','','','2016-12-15 19:57:00','2016-12-15 18:57:00','',19,'http://acaep.local/2016/12/15/19-revision-v1/',0,'revision','',0),(29,1,'2016-12-15 19:58:30','2016-12-15 18:58:30','','Landing','','inherit','closed','closed','','19-revision-v1','','','2016-12-15 19:58:30','2016-12-15 18:58:30','',19,'http://acaep.local/2016/12/15/19-revision-v1/',0,'revision','',0),(30,1,'2016-12-15 20:04:44','2016-12-15 19:04:44','','La Bleda','','inherit','closed','closed','','7-revision-v1','','','2016-12-15 20:04:44','2016-12-15 19:04:44','',7,'http://acaep.local/2016/12/15/7-revision-v1/',0,'revision','',0),(31,1,'2016-12-15 20:28:43','2016-12-15 19:28:43','','Pere Hoste','','publish','closed','closed','','pere-hoste','','','2016-12-15 20:29:19','2016-12-15 19:29:19','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=31',0,'udt_portfolio','',0),(32,1,'2016-12-15 20:28:43','2016-12-15 19:28:43','','Pere Hoste','','inherit','closed','closed','','31-revision-v1','','','2016-12-15 20:28:43','2016-12-15 19:28:43','',31,'http://acaep.local/2016/12/15/31-revision-v1/',0,'revision','',0),(33,1,'2016-12-15 20:31:30','2016-12-15 19:31:30','','Companyies','','inherit','closed','closed','','19-revision-v1','','','2016-12-15 20:31:30','2016-12-15 19:31:30','',19,'http://acaep.local/2016/12/15/19-revision-v1/',0,'revision','',0),(34,1,'2016-12-15 20:31:46','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2016-12-15 20:31:46','0000-00-00 00:00:00','',0,'http://acaep.local/?page_id=34',0,'page','',0),(36,1,'2016-12-15 20:37:53','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2016-12-15 20:37:53','0000-00-00 00:00:00','',0,'http://acaep.local/?post_type=udt_portfolio&p=36',0,'udt_portfolio','',0),(37,1,'2016-12-15 20:38:01','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2016-12-15 20:38:01','0000-00-00 00:00:00','',0,'http://acaep.local/?p=37',0,'post','',0),(38,1,'2016-12-15 20:40:33','2016-12-15 19:40:33','','Pep Vila','','publish','closed','closed','','pep-vila','','','2016-12-15 20:56:23','2016-12-15 19:56:23','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=38',0,'udt_portfolio','',0),(39,1,'2016-12-15 20:40:33','2016-12-15 19:40:33','','Pep Vila','','inherit','closed','closed','','38-revision-v1','','','2016-12-15 20:40:33','2016-12-15 19:40:33','',38,'http://acaep.local/2016/12/15/38-revision-v1/',0,'revision','',0),(40,1,'2016-12-15 20:40:59','2016-12-15 19:40:59','','Cos a cos teatre','','publish','closed','closed','','cos-a-cos-teatre','','','2016-12-15 20:54:16','2016-12-15 19:54:16','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=40',0,'udt_portfolio','',0),(41,1,'2016-12-15 20:40:59','2016-12-15 19:40:59','','Cos a cos teatre','','inherit','closed','closed','','40-revision-v1','','','2016-12-15 20:40:59','2016-12-15 19:40:59','',40,'http://acaep.local/2016/12/15/40-revision-v1/',0,'revision','',0),(42,1,'2016-12-15 20:41:21','2016-12-15 19:41:21','','Teatre de guerrilla','','publish','closed','closed','','teatre-de-guerrilla','','','2016-12-15 20:54:16','2016-12-15 19:54:16','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=42',0,'udt_portfolio','',0),(43,1,'2016-12-15 20:41:21','2016-12-15 19:41:21','','Teatre de guerrilla','','inherit','closed','closed','','42-revision-v1','','','2016-12-15 20:41:21','2016-12-15 19:41:21','',42,'http://acaep.local/2016/12/15/42-revision-v1/',0,'revision','',0),(44,1,'2016-12-15 20:41:39','2016-12-15 19:41:39','','Cascai Teatre','','publish','closed','closed','','cascai-teatre','','','2016-12-15 20:54:16','2016-12-15 19:54:16','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=44',0,'udt_portfolio','',0),(45,1,'2016-12-15 20:41:39','2016-12-15 19:41:39','','Cascai Teatre','','inherit','closed','closed','','44-revision-v1','','','2016-12-15 20:41:39','2016-12-15 19:41:39','',44,'http://acaep.local/2016/12/15/44-revision-v1/',0,'revision','',0),(46,1,'2016-12-15 20:42:04','2016-12-15 19:42:04','','Impàs Dansa','','publish','closed','closed','','impas-dansa','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=46',0,'udt_portfolio','',0),(47,1,'2016-12-15 20:42:04','2016-12-15 19:42:04','','Impàs Dansa','','inherit','closed','closed','','46-revision-v1','','','2016-12-15 20:42:04','2016-12-15 19:42:04','',46,'http://acaep.local/2016/12/15/46-revision-v1/',0,'revision','',0),(48,1,'2016-12-15 20:42:23','2016-12-15 19:42:23','','Cia. Estampades','','publish','closed','closed','','cia-estampades','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=48',0,'udt_portfolio','',0),(49,1,'2016-12-15 20:42:23','2016-12-15 19:42:23','','Cia. Estampades','','inherit','closed','closed','','48-revision-v1','','','2016-12-15 20:42:23','2016-12-15 19:42:23','',48,'http://acaep.local/2016/12/15/48-revision-v1/',0,'revision','',0),(50,1,'2016-12-15 20:42:41','2016-12-15 19:42:41','','Companyia de teatre Anna Roca','','publish','closed','closed','','companyia-de-teatre-anna-roca','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=50',0,'udt_portfolio','',0),(51,1,'2016-12-15 20:42:41','2016-12-15 19:42:41','','Companyia de teatre Anna Roca','','inherit','closed','closed','','50-revision-v1','','','2016-12-15 20:42:41','2016-12-15 19:42:41','',50,'http://acaep.local/2016/12/15/50-revision-v1/',0,'revision','',0),(52,1,'2016-12-15 20:43:00','2016-12-15 19:43:00','','Cia. La Corcoles','','publish','closed','closed','','cia-la-corcoles','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=52',0,'udt_portfolio','',0),(53,1,'2016-12-15 20:43:00','2016-12-15 19:43:00','','Cia. La Corcoles','','inherit','closed','closed','','52-revision-v1','','','2016-12-15 20:43:00','2016-12-15 19:43:00','',52,'http://acaep.local/2016/12/15/52-revision-v1/',0,'revision','',0),(54,1,'2016-12-15 20:43:19','2016-12-15 19:43:19','','Moviment Lantana','','publish','closed','closed','','moviment-lantana','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=54',0,'udt_portfolio','',0),(55,1,'2016-12-15 20:43:19','2016-12-15 19:43:19','','Moviment Lantana','','inherit','closed','closed','','54-revision-v1','','','2016-12-15 20:43:19','2016-12-15 19:43:19','',54,'http://acaep.local/2016/12/15/54-revision-v1/',0,'revision','',0),(56,1,'2016-12-15 20:43:40','2016-12-15 19:43:40','','Cia. Claret Clown','','publish','closed','closed','','cia-claret-clown','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=56',0,'udt_portfolio','',0),(57,1,'2016-12-15 20:43:40','2016-12-15 19:43:40','','Cia. Claret Clown','','inherit','closed','closed','','56-revision-v1','','','2016-12-15 20:43:40','2016-12-15 19:43:40','',56,'http://acaep.local/2016/12/15/56-revision-v1/',0,'revision','',0),(58,1,'2016-12-15 20:43:58','2016-12-15 19:43:58','','Cirquet Confetti','','publish','closed','closed','','cirquet-confetti','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=58',0,'udt_portfolio','',0),(59,1,'2016-12-15 20:43:58','2016-12-15 19:43:58','','Cirquet Confetti','','inherit','closed','closed','','58-revision-v1','','','2016-12-15 20:43:58','2016-12-15 19:43:58','',58,'http://acaep.local/2016/12/15/58-revision-v1/',0,'revision','',0),(60,1,'2016-12-15 20:44:16','2016-12-15 19:44:16','','David Planas i Lladó','','publish','closed','closed','','david-planas-i-llado','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=60',0,'udt_portfolio','',0),(61,1,'2016-12-15 20:44:16','2016-12-15 19:44:16','','David Planas i Lladó','','inherit','closed','closed','','60-revision-v1','','','2016-12-15 20:44:16','2016-12-15 19:44:16','',60,'http://acaep.local/2016/12/15/60-revision-v1/',0,'revision','',0),(62,1,'2016-12-15 20:44:35','2016-12-15 19:44:35','','Mentidera Teatre','','publish','closed','closed','','mentidera-teatre','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=62',0,'udt_portfolio','',0),(63,1,'2016-12-15 20:44:35','2016-12-15 19:44:35','','Mentidera Teatre','','inherit','closed','closed','','62-revision-v1','','','2016-12-15 20:44:35','2016-12-15 19:44:35','',62,'http://acaep.local/2016/12/15/62-revision-v1/',0,'revision','',0),(64,1,'2016-12-15 20:44:57','2016-12-15 19:44:57','','Felix Brunet','','publish','closed','closed','','felix-brunet','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=64',0,'udt_portfolio','',0),(65,1,'2016-12-15 20:44:57','2016-12-15 19:44:57','','Felix Brunet','','inherit','closed','closed','','64-revision-v1','','','2016-12-15 20:44:57','2016-12-15 19:44:57','',64,'http://acaep.local/2016/12/15/64-revision-v1/',0,'revision','',0),(66,1,'2016-12-15 20:45:20','2016-12-15 19:45:20','','PocaCosa teatre','','publish','closed','closed','','pocacosa-teatre','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=66',0,'udt_portfolio','',0),(67,1,'2016-12-15 20:45:20','2016-12-15 19:45:20','','PocaCosa teatre','','inherit','closed','closed','','66-revision-v1','','','2016-12-15 20:45:20','2016-12-15 19:45:20','',66,'http://acaep.local/2016/12/15/66-revision-v1/',0,'revision','',0),(68,1,'2016-12-15 20:45:41','2016-12-15 19:45:41','','MeriYanes produccions','','publish','closed','closed','','meriyanes-produccions','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=68',0,'udt_portfolio','',0),(69,1,'2016-12-15 20:45:41','2016-12-15 19:45:41','','MeriYanes produccions','','inherit','closed','closed','','68-revision-v1','','','2016-12-15 20:45:41','2016-12-15 19:45:41','',68,'http://acaep.local/2016/12/15/68-revision-v1/',0,'revision','',0),(70,1,'2016-12-15 20:46:00','2016-12-15 19:46:00','','Cascai Teatre & Marcel Tomàs','','publish','closed','closed','','cascai-teatre-marcel-tomas','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=70',0,'udt_portfolio','',0),(71,1,'2016-12-15 20:46:00','2016-12-15 19:46:00','','Cascai Teatre & Marcel Tomàs','','inherit','closed','closed','','70-revision-v1','','','2016-12-15 20:46:00','2016-12-15 19:46:00','',70,'http://acaep.local/2016/12/15/70-revision-v1/',0,'revision','',0),(72,1,'2016-12-15 20:46:19','2016-12-15 19:46:19','','Cobosmika company','','publish','closed','closed','','cobosmika-company','','','2016-12-15 20:53:47','2016-12-15 19:53:47','',0,'http://acaep.local/?post_type=udt_portfolio&#038;p=72',0,'udt_portfolio','',0),(73,1,'2016-12-15 20:46:19','2016-12-15 19:46:19','','Cobosmika company','','inherit','closed','closed','','72-revision-v1','','','2016-12-15 20:46:19','2016-12-15 19:46:19','',72,'http://acaep.local/2016/12/15/72-revision-v1/',0,'revision','',0),(76,1,'2016-12-15 21:01:40','2016-12-15 20:01:40','{\n    \"blogname\": {\n        \"value\": \"Associaci\\u00f3 de Companyies d\'Arts Esc\\u00e8niques de Girona\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"site_icon\": {\n        \"value\": 78,\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','a5751b98-e74d-41be-b25e-765cb7f77164','','','2016-12-15 21:01:40','2016-12-15 20:01:40','',0,'http://acaep.local/?p=76',0,'customize_changeset','',0),(77,1,'2016-12-15 21:01:13','2016-12-15 20:01:13','','caepgirona','','inherit','open','closed','','caepgirona','','','2016-12-15 21:01:13','2016-12-15 20:01:13','',0,'http://acaep.local/wp-content/uploads/2016/12/caepgirona.jpg',0,'attachment','image/jpeg',0),(78,1,'2016-12-15 21:01:27','2016-12-15 20:01:27','http://acaep.local/wp-content/uploads/2016/12/cropped-caepgirona.jpg','cropped-caepgirona.jpg','','inherit','open','closed','','cropped-caepgirona-jpg','','','2016-12-15 21:01:27','2016-12-15 20:01:27','',0,'http://acaep.local/wp-content/uploads/2016/12/cropped-caepgirona.jpg',0,'attachment','image/jpeg',0),(81,1,'2016-12-15 21:24:45','2016-12-15 20:24:45','','Portfolio index','','publish','closed','closed','','portfolio-index','','','2016-12-15 21:24:45','2016-12-15 20:24:45','',0,'http://acaep.local/?page_id=81',0,'page','',0),(82,1,'2016-12-15 21:24:30','2016-12-15 20:24:30','','Portfolio index','','inherit','closed','closed','','81-revision-v1','','','2016-12-15 21:24:30','2016-12-15 20:24:30','',81,'http://acaep.local/2016/12/15/81-revision-v1/',0,'revision','',0),(83,1,'2016-12-17 18:26:35','2016-12-17 17:26:35','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Landing','','publish','closed','closed','','landing-2','','','2016-12-17 18:36:58','2016-12-17 17:36:58','',0,'http://acaep.local/?page_id=83',0,'page','',0),(84,1,'2016-12-17 18:26:35','2016-12-17 17:26:35','','Landing','','inherit','closed','closed','','83-revision-v1','','','2016-12-17 18:26:35','2016-12-17 17:26:35','',83,'http://acaep.local/2016/12/17/83-revision-v1/',0,'revision','',0),(85,1,'2016-12-17 18:27:47','2016-12-17 17:27:47','','Inici','','publish','closed','closed','','inici','','','2016-12-17 18:27:47','2016-12-17 17:27:47','',0,'http://acaep.local/?p=85',1,'nav_menu_item','',0),(86,1,'2016-12-17 18:36:36','2016-12-17 17:36:36','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Landing','','inherit','closed','closed','','83-autosave-v1','','','2016-12-17 18:36:36','2016-12-17 17:36:36','',83,'http://acaep.local/2016/12/17/83-autosave-v1/',0,'revision','',0),(87,1,'2016-12-17 18:36:58','2016-12-17 17:36:58','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Landing','','inherit','closed','closed','','83-revision-v1','','','2016-12-17 18:36:58','2016-12-17 17:36:58','',83,'http://acaep.local/2016/12/17/83-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(7,3,0),(7,4,0),(22,2,0),(31,5,0),(40,7,0),(42,4,0),(44,4,0),(46,3,0),(48,3,0),(50,4,0),(52,6,0),(54,3,0),(56,5,0),(58,5,0),(58,6,0),(60,4,0),(62,4,0),(66,4,0),(68,4,0),(70,4,0),(72,3,0),(85,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,2),(3,3,'portfolio_category','',0,1),(4,4,'portfolio_category','',0,3),(5,5,'portfolio_category','',0,1),(6,6,'portfolio_category','',0,0),(7,7,'portfolio_category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Menú general','menu-general',0),(3,'Dansa','dansa',0),(4,'Teatre','teatre',0),(5,'Clown','clown',0),(6,'Circ','circ',0),(7,'Dramaturg','dramaturg',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_totalsoft_cal_1`
--

DROP TABLE IF EXISTS `wp_totalsoft_cal_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_totalsoft_cal_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_ID` varchar(255) NOT NULL,
  `TotalSoftCal_Name` varchar(255) NOT NULL,
  `TotalSoftCal_Type` varchar(255) NOT NULL,
  `TotalSoftCal_BgCol` varchar(255) NOT NULL,
  `TotalSoftCal_GrCol` varchar(255) NOT NULL,
  `TotalSoftCal_GW` varchar(255) NOT NULL,
  `TotalSoftCal_BW` varchar(255) NOT NULL,
  `TotalSoftCal_BStyle` varchar(255) NOT NULL,
  `TotalSoftCal_BCol` varchar(255) NOT NULL,
  `TotalSoftCal_BSCol` varchar(255) NOT NULL,
  `TotalSoftCal_MW` varchar(255) NOT NULL,
  `TotalSoftCal_HBgCol` varchar(255) NOT NULL,
  `TotalSoftCal_HCol` varchar(255) NOT NULL,
  `TotalSoftCal_HFS` varchar(255) NOT NULL,
  `TotalSoftCal_HFF` varchar(255) NOT NULL,
  `TotalSoftCal_WBgCol` varchar(255) NOT NULL,
  `TotalSoftCal_WCol` varchar(255) NOT NULL,
  `TotalSoftCal_WFS` varchar(255) NOT NULL,
  `TotalSoftCal_WFF` varchar(255) NOT NULL,
  `TotalSoftCal_LAW` varchar(255) NOT NULL,
  `TotalSoftCal_LAWS` varchar(255) NOT NULL,
  `TotalSoftCal_LAWC` varchar(255) NOT NULL,
  `TotalSoftCal_DBgCol` varchar(255) NOT NULL,
  `TotalSoftCal_DCol` varchar(255) NOT NULL,
  `TotalSoftCal_DFS` varchar(255) NOT NULL,
  `TotalSoftCal_TBgCol` varchar(255) NOT NULL,
  `TotalSoftCal_TCol` varchar(255) NOT NULL,
  `TotalSoftCal_TFS` varchar(255) NOT NULL,
  `TotalSoftCal_TNBgCol` varchar(255) NOT NULL,
  `TotalSoftCal_HovBgCol` varchar(255) NOT NULL,
  `TotalSoftCal_HovCol` varchar(255) NOT NULL,
  `TotalSoftCal_NumPos` varchar(255) NOT NULL,
  `TotalSoftCal_WDStart` varchar(255) NOT NULL,
  `TotalSoftCal_RefIcCol` varchar(255) NOT NULL,
  `TotalSoftCal_RefIcSize` varchar(255) NOT NULL,
  `TotalSoftCal_ArrowType` varchar(255) NOT NULL,
  `TotalSoftCal_ArrowLeft` varchar(255) NOT NULL,
  `TotalSoftCal_ArrowRight` varchar(255) NOT NULL,
  `TotalSoftCal_ArrowCol` varchar(255) NOT NULL,
  `TotalSoftCal_ArrowSize` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_totalsoft_cal_1`
--

LOCK TABLES `wp_totalsoft_cal_1` WRITE;
/*!40000 ALTER TABLE `wp_totalsoft_cal_1` DISABLE KEYS */;
INSERT INTO `wp_totalsoft_cal_1` VALUES (1,'1','Total Soft Calendar','Event Calendar','#efefef','#009491','1','2','solid','#009491','#009491','700','#ffffff','#009491','14','Arial','#009491','#ffffff','10','Arial','0','none','#ffffff','#ffffff','#009491','14','#009491','#009491','15','#ffffff','#009491','#ffffff','left','Mon','#009491','20','7','totalsoft totalsoft-caret-square-o-left','totalsoft totalsoft-caret-square-o-right','#009491','17'),(2,'2','Total-Soft Calendar','Event Calendar','#efefef','#ffffff','1','2','solid','#ffffff','#ffffff','700','#009491','#ffffff','14','Arial','#ffffff','#009491','10','Arial','0','none','#009491','#009491','#ffffff','14','#ffffff','#ffffff','15','#009491','#ffffff','#009491','left','Mon','#ffffff','20','7','totalsoft totalsoft-caret-square-o-left','totalsoft totalsoft-caret-square-o-right','#ffffff','17'),(3,'3','TotalSoft Calendar','Event Calendar','#efefef','#ffffff','1','2','solid','#ffffff','#ffffff','700','#00c603','#ffffff','14','Arial','#ffffff','#00c603','10','Arial','0','none','#00c603','#00c603','#ffffff','14','#ffffff','#ffffff','15','#00c603','#ffffff','#00c603','left','Mon','#ffffff','20','7','totalsoft totalsoft-caret-square-o-left','totalsoft totalsoft-caret-square-o-right','#ffffff','17'),(4,'4','TotalSoftCalendar','Event Calendar','#efefef','#00c603','1','2','solid','#00c603','#00c603','700','#ffffff','#00c603','14','Arial','#00c603','#ffffff','10','Arial','0','none','#ffffff','#ffffff','#00c603','14','#00c603','#00c603','15','#ffffff','#00c603','#ffffff','left','Mon','#00c603','20','7','totalsoft totalsoft-caret-square-o-left','totalsoft totalsoft-caret-square-o-right','#00c603','17');
/*!40000 ALTER TABLE `wp_totalsoft_cal_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_totalsoft_cal_2`
--

DROP TABLE IF EXISTS `wp_totalsoft_cal_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_totalsoft_cal_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_ID` varchar(255) NOT NULL,
  `TotalSoftCal_Name` varchar(255) NOT NULL,
  `TotalSoftCal_Type` varchar(255) NOT NULL,
  `TotalSoftCal2_WDStart` varchar(255) NOT NULL,
  `TotalSoftCal2_BW` varchar(255) NOT NULL,
  `TotalSoftCal2_BS` varchar(255) NOT NULL,
  `TotalSoftCal2_BC` varchar(255) NOT NULL,
  `TotalSoftCal2_W` varchar(255) NOT NULL,
  `TotalSoftCal2_H` varchar(255) NOT NULL,
  `TotalSoftCal2_BxShShow` varchar(255) NOT NULL,
  `TotalSoftCal2_BxShType` varchar(255) NOT NULL,
  `TotalSoftCal2_BxSh` varchar(255) NOT NULL,
  `TotalSoftCal2_BxShC` varchar(255) NOT NULL,
  `TotalSoftCal2_MBgC` varchar(255) NOT NULL,
  `TotalSoftCal2_MC` varchar(255) NOT NULL,
  `TotalSoftCal2_MFS` varchar(255) NOT NULL,
  `TotalSoftCal2_MFF` varchar(255) NOT NULL,
  `TotalSoftCal2_WBgC` varchar(255) NOT NULL,
  `TotalSoftCal2_WC` varchar(255) NOT NULL,
  `TotalSoftCal2_WFS` varchar(255) NOT NULL,
  `TotalSoftCal2_WFF` varchar(255) NOT NULL,
  `TotalSoftCal2_LAW_W` varchar(255) NOT NULL,
  `TotalSoftCal2_LAW_S` varchar(255) NOT NULL,
  `TotalSoftCal2_LAW_C` varchar(255) NOT NULL,
  `TotalSoftCal2_DBgC` varchar(255) NOT NULL,
  `TotalSoftCal2_DC` varchar(255) NOT NULL,
  `TotalSoftCal2_DFS` varchar(255) NOT NULL,
  `TotalSoftCal2_TdBgC` varchar(255) NOT NULL,
  `TotalSoftCal2_TdC` varchar(255) NOT NULL,
  `TotalSoftCal2_TdFS` varchar(255) NOT NULL,
  `TotalSoftCal2_EdBgC` varchar(255) NOT NULL,
  `TotalSoftCal2_EdC` varchar(255) NOT NULL,
  `TotalSoftCal2_EdFS` varchar(255) NOT NULL,
  `TotalSoftCal2_HBgC` varchar(255) NOT NULL,
  `TotalSoftCal2_HC` varchar(255) NOT NULL,
  `TotalSoftCal2_ArrType` varchar(255) NOT NULL,
  `TotalSoftCal2_ArrFS` varchar(255) NOT NULL,
  `TotalSoftCal2_ArrC` varchar(255) NOT NULL,
  `TotalSoftCal2_OmBgC` varchar(255) NOT NULL,
  `TotalSoftCal2_OmC` varchar(255) NOT NULL,
  `TotalSoftCal2_OmFS` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_HBgC` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_HC` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_HFS` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_HFF` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_HText` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_BBgC` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_TC` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_TFF` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_TFS` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_DC` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_DFF` varchar(255) NOT NULL,
  `TotalSoftCal2_Ev_DFS` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_totalsoft_cal_2`
--

LOCK TABLES `wp_totalsoft_cal_2` WRITE;
/*!40000 ALTER TABLE `wp_totalsoft_cal_2` DISABLE KEYS */;
INSERT INTO `wp_totalsoft_cal_2` VALUES (1,'5','Simple Calendar','Simple Calendar','0','5','solid','#ffffff','600','600','Yes','2','25','#009491','#009491','#ffffff','30','Gabriola','#ffffff','#009491','19','Gabriola','1','solid','#009491','#ffffff','#009491','17','#009491','#ffffff','18','#e2e2e2','#ffffff','18','#ffffff','#009491','angle','21','#ffffff','#ffffff','#a0a0a0','10','#009491','#ffffff','30','Gabriola','Events','#ffffff','#009491','Gabriola','23','#7c7c7c','Gabriola','20'),(2,'6','Simple Calendar 2','Simple Calendar','0','5','solid','#ffffff','600','600','Yes','1','25','#000000','#ffffff','#009491','25','Gabriola','#009491','#ffffff','21','Gabriola','1','solid','#009491','#ffffff','#009491','17','#009491','#ffffff','18','#e2e2e2','#ffffff','18','#ffffff','#009491','angle','21','#009491','#ffffff','#a0a0a0','14','#ffffff','#009491','30','Gabriola','Events','#009491','#ffffff','Gabriola','23','#d6d6d6','Gabriola','20');
/*!40000 ALTER TABLE `wp_totalsoft_cal_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_totalsoft_cal_3`
--

DROP TABLE IF EXISTS `wp_totalsoft_cal_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_totalsoft_cal_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_ID` varchar(255) NOT NULL,
  `TotalSoftCal_Name` varchar(255) NOT NULL,
  `TotalSoftCal_Type` varchar(255) NOT NULL,
  `TotalSoftCal3_MW` varchar(255) NOT NULL,
  `TotalSoftCal3_WDStart` varchar(255) NOT NULL,
  `TotalSoftCal3_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_GrC` varchar(255) NOT NULL,
  `TotalSoftCal3_BBC` varchar(255) NOT NULL,
  `TotalSoftCal3_BoxShShow` varchar(255) NOT NULL,
  `TotalSoftCal3_BoxShType` varchar(255) NOT NULL,
  `TotalSoftCal3_BoxSh` varchar(255) NOT NULL,
  `TotalSoftCal3_BoxShC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_BTW` varchar(255) NOT NULL,
  `TotalSoftCal3_H_BTC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_H_MFS` varchar(255) NOT NULL,
  `TotalSoftCal3_H_MC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_YFS` varchar(255) NOT NULL,
  `TotalSoftCal3_H_YC` varchar(255) NOT NULL,
  `TotalSoftCal3_H_Format` varchar(255) NOT NULL,
  `TotalSoftCal3_Arr_Type` varchar(255) NOT NULL,
  `TotalSoftCal3_Arr_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Arr_S` varchar(255) NOT NULL,
  `TotalSoftCal3_Arr_HC` varchar(255) NOT NULL,
  `TotalSoftCal3_LAH_W` varchar(255) NOT NULL,
  `TotalSoftCal3_LAH_C` varchar(255) NOT NULL,
  `TotalSoftCal3_WD_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_WD_C` varchar(255) NOT NULL,
  `TotalSoftCal3_WD_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_WD_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_D_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_D_C` varchar(255) NOT NULL,
  `TotalSoftCal3_TD_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_TD_C` varchar(255) NOT NULL,
  `TotalSoftCal3_HD_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_HD_C` varchar(255) NOT NULL,
  `TotalSoftCal3_ED_C` varchar(255) NOT NULL,
  `TotalSoftCal3_ED_HC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_Format` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_BTW` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_BTC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C_Type` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C_HC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_C_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_LAH_W` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_LAH_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_B_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_B_BC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_BgC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_T_TA` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_D_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_D_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_D_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_I_W` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_I_Pos` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_HC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_Pos` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_Text` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_LAE_W` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_LAE_C` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_FS` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_FF` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_BW` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_BC` varchar(255) NOT NULL,
  `TotalSoftCal3_Ev_L_BR` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_totalsoft_cal_3`
--

LOCK TABLES `wp_totalsoft_cal_3` WRITE;
/*!40000 ALTER TABLE `wp_totalsoft_cal_3` DISABLE KEYS */;
INSERT INTO `wp_totalsoft_cal_3` VALUES (1,'7','Flexible Calendar','Flexible Calendar','700','1','#ffffff','#000000','#000000','No','1','22','#000000','#ffffff','3','#dd3333','Gabriola','22','#000000','24','#dd3333','1','caret','#000000','20','#606060','2','#dd3333','#000000','#ffffff','17','Gabriola','#ffffff','#dd3333','#dd3333','#ffffff','#ffffff','#000000','#dd3333','#000000','3','3','#dd3333','#dd3333','#ffffff','26','Gabriola','times-circle','#ffffff','#d6d6d6','21','3','#000000','#ffffff','#dd3333','20','Gabriola','#000000','#ffffff','center','20','Gabriola','#000000','48','3','#000000','#4f4f4f','4','View More','2','#000000','17','Gabriola','1','#000000','25'),(2,'8','Flexible Calendar 2','Flexible Calendar','700','1','#ffffff','#009491','#009491','No','1','22','#000000','#009491','3','#ffffff','Gabriola','22','#d3d3d3','24','#ffffff','2','caret','#ffffff','20','#606060','2','#ffffff','#009491','#ffffff','17','Gabriola','#ffffff','#000000','#009491','#ffffff','#ffffff','#000000','#000000','#aaaaaa','3','0','#ffffff','#009491','#ffffff','26','Gabriola','times','#ffffff','#d6d6d6','21','3','#000000','#ffffff','#009491','20','Gabriola','#009491','#ffffff','center','19','Gabriola','#515151','80','3','#919191','#4f4f4f','5','View More','2','#878787','17','Gabriola','1','#919191','25');
/*!40000 ALTER TABLE `wp_totalsoft_cal_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_totalsoft_cal_events`
--

DROP TABLE IF EXISTS `wp_totalsoft_cal_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_totalsoft_cal_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_EvName` varchar(255) NOT NULL,
  `TotalSoftCal_EvCal` varchar(255) NOT NULL,
  `TotalSoftCal_EvStartDate` varchar(255) NOT NULL,
  `TotalSoftCal_EvEndDate` varchar(255) NOT NULL,
  `TotalSoftCal_EvURL` varchar(255) NOT NULL,
  `TotalSoftCal_EvURLNewTab` varchar(255) NOT NULL,
  `TotalSoftCal_EvStartTime` varchar(255) NOT NULL,
  `TotalSoftCal_EvEndTime` varchar(255) NOT NULL,
  `TotalSoftCal_EvColor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_totalsoft_cal_events`
--

LOCK TABLES `wp_totalsoft_cal_events` WRITE;
/*!40000 ALTER TABLE `wp_totalsoft_cal_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_totalsoft_cal_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_totalsoft_cal_events_p2`
--

DROP TABLE IF EXISTS `wp_totalsoft_cal_events_p2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_totalsoft_cal_events_p2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_EvDesc` longtext NOT NULL,
  `TotalSoftCal_EvImg` varchar(255) NOT NULL,
  `TotalSoftCal_EvVid_Src` varchar(255) NOT NULL,
  `TotalSoftCal_EvVid_Iframe` varchar(255) NOT NULL,
  `TotalSoftCal_EvCal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_totalsoft_cal_events_p2`
--

LOCK TABLES `wp_totalsoft_cal_events_p2` WRITE;
/*!40000 ALTER TABLE `wp_totalsoft_cal_events_p2` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_totalsoft_cal_events_p2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_totalsoft_cal_ids`
--

DROP TABLE IF EXISTS `wp_totalsoft_cal_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_totalsoft_cal_ids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Cal_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_totalsoft_cal_ids`
--

LOCK TABLES `wp_totalsoft_cal_ids` WRITE;
/*!40000 ALTER TABLE `wp_totalsoft_cal_ids` DISABLE KEYS */;
INSERT INTO `wp_totalsoft_cal_ids` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8');
/*!40000 ALTER TABLE `wp_totalsoft_cal_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_totalsoft_cal_types`
--

DROP TABLE IF EXISTS `wp_totalsoft_cal_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_totalsoft_cal_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TotalSoftCal_Name` varchar(255) NOT NULL,
  `TotalSoftCal_Type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_totalsoft_cal_types`
--

LOCK TABLES `wp_totalsoft_cal_types` WRITE;
/*!40000 ALTER TABLE `wp_totalsoft_cal_types` DISABLE KEYS */;
INSERT INTO `wp_totalsoft_cal_types` VALUES (1,'Total Soft Calendar','Event Calendar'),(2,'Total-Soft Calendar','Event Calendar'),(3,'TotalSoft Calendar','Event Calendar'),(4,'TotalSoftCalendar','Event Calendar'),(5,'Simple Calendar','Simple Calendar'),(6,'Simple Calendar 2','Simple Calendar'),(7,'Flexible Calendar','Flexible Calendar'),(8,'Flexible Calendar 2','Flexible Calendar');
/*!40000 ALTER TABLE `wp_totalsoft_cal_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_totalsoft_fonts`
--

DROP TABLE IF EXISTS `wp_totalsoft_fonts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_totalsoft_fonts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Font` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_totalsoft_fonts`
--

LOCK TABLES `wp_totalsoft_fonts` WRITE;
/*!40000 ALTER TABLE `wp_totalsoft_fonts` DISABLE KEYS */;
INSERT INTO `wp_totalsoft_fonts` VALUES (1,'Abadi MT Condensed Light'),(2,'Aharoni'),(3,'Aldhabi'),(4,'Andalus'),(5,'Angsana New'),(6,'AngsanaUPC'),(7,'Aparajita'),(8,'Arabic Typesetting'),(9,'Arial'),(10,'Arial Black'),(11,'Batang'),(12,'BatangChe'),(13,'Browallia New'),(14,'BrowalliaUPC'),(15,'Calibri'),(16,'Calibri Light'),(17,'Calisto MT'),(18,'Cambria'),(19,'Candara'),(20,'Century Gothic'),(21,'Comic Sans MS'),(22,'Consolas'),(23,'Constantia'),(24,'Copperplate Gothic'),(25,'Copperplate Gothic Light'),(26,'Corbel'),(27,'Cordia New'),(28,'CordiaUPC'),(29,'Courier New'),(30,'DaunPenh'),(31,'David'),(32,'DFKai-SB'),(33,'DilleniaUPC'),(34,'DokChampa'),(35,'Dotum'),(36,'DotumChe'),(37,'Ebrima'),(38,'Estrangelo Edessa'),(39,'EucrosiaUPC'),(40,'Euphemia'),(41,'FangSong'),(42,'Franklin Gothic Medium'),(43,'FrankRuehl'),(44,'FreesiaUPC'),(45,'Gabriola'),(46,'Gadugi'),(47,'Gautami'),(48,'Georgia'),(49,'Gisha'),(50,'Gulim'),(51,'GulimChe'),(52,'Gungsuh'),(53,'GungsuhChe'),(54,'Impact'),(55,'IrisUPC'),(56,'Iskoola Pota'),(57,'JasmineUPC'),(58,'KaiTi'),(59,'Kalinga'),(60,'Kartika'),(61,'Khmer UI'),(62,'KodchiangUPC'),(63,'Kokila'),(64,'Lao UI'),(65,'Latha'),(66,'Leelawadee'),(67,'Levenim MT'),(68,'LilyUPC'),(69,'Lucida Console'),(70,'Lucida Handwriting Italic'),(71,'Lucida Sans Unicode'),(72,'Malgun Gothic'),(73,'Mangal'),(74,'Manny ITC'),(75,'Marlett'),(76,'Meiryo'),(77,'Meiryo UI'),(78,'Microsoft Himalaya'),(79,'Microsoft JhengHei'),(80,'Microsoft JhengHei UI'),(81,'Microsoft New Tai Lue'),(82,'Microsoft PhagsPa'),(83,'Microsoft Sans Serif'),(84,'Microsoft Tai Le'),(85,'Microsoft Uighur'),(86,'Microsoft YaHei'),(87,'Microsoft YaHei UI'),(88,'Microsoft Yi Baiti'),(89,'MingLiU_HKSCS'),(90,'MingLiU_HKSCS-ExtB'),(91,'Miriam'),(92,'Mongolian Baiti'),(93,'MoolBoran'),(94,'MS UI Gothic'),(95,'MV Boli'),(96,'Myanmar Text'),(97,'Narkisim'),(98,'Nirmala UI'),(99,'News Gothic MT'),(100,'NSimSun'),(101,'Nyala'),(102,'Palatino Linotype'),(103,'Plantagenet Cherokee'),(104,'Raavi'),(105,'Rod'),(106,'Sakkal Majalla'),(107,'Segoe Print'),(108,'Segoe Script'),(109,'Segoe UI Symbol'),(110,'Shonar Bangla'),(111,'Shruti'),(112,'SimHei'),(113,'SimKai'),(114,'Simplified Arabic'),(115,'SimSun'),(116,'SimSun-ExtB'),(117,'Sylfaen'),(118,'Tahoma'),(119,'Times New Roman'),(120,'Traditional Arabic'),(121,'Trebuchet MS'),(122,'Tunga'),(123,'Utsaah'),(124,'Vani'),(125,'Vijaya');
/*!40000 ALTER TABLE `wp_totalsoft_fonts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','albert.johe@gmail.com'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers',''),(13,1,'show_welcome_panel','1'),(14,1,'session_tokens','a:3:{s:64:\"16d05d713b3fffece88846254f6a74f3fb4539a39560c57a11afa9b48064830f\";a:4:{s:10:\"expiration\";i:1481999752;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0\";s:5:\"login\";i:1481826952;}s:64:\"cec1ac13ad95c47b4ee5bb8905baad68e8102bb539f3dda5e52e9d68cde4d276\";a:4:{s:10:\"expiration\";i:1482167548;s:2:\"ip\";s:12:\"192.168.10.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36\";s:5:\"login\";i:1481994748;}s:64:\"5ec663db3ef475f5e654c9b1f913da98362b6b9650441db9bed46eee8cb948c3\";a:4:{s:10:\"expiration\";i:1482170362;s:2:\"ip\";s:12:\"192.168.10.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36\";s:5:\"login\";i:1481997562;}}'),(15,1,'wp_dashboard_quick_press_last_post_id','3'),(16,1,'wp_user-settings','libraryContent=browse&editor=tinymce'),(17,1,'wp_user-settings-time','1481828308'),(18,1,'nav_menu_recently_edited','2'),(19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(20,1,'metaboxhidden_nav-menus','a:3:{i:0;s:27:\"add-post-type-udt_portfolio\";i:1;s:12:\"add-post_tag\";i:2;s:22:\"add-portfolio_category\";}'),(21,1,'closedpostboxes_udt_portfolio','a:0:{}'),(22,1,'metaboxhidden_udt_portfolio','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'albert.johe@gmail.com','$P$B/zTeK3tkMK0M15r4xjX2i4GfWLm7X/','albert-johe-marti','albert.johe@gmail.com','','2016-12-14 10:30:28','',0,'Albert Johé Martí');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-17 19:02:17
