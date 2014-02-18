-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vygenerováno: Úte 11. úno 2014, 20:29
-- Verze serveru: 5.5.32
-- Verze PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `familyboat`
--
CREATE DATABASE IF NOT EXISTS `familyboat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `familyboat`;

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_assets`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_assets`
--

TRUNCATE TABLE `fb_assets`;
--
-- Vypisuji data pro tabulku `fb_assets`
--

INSERT INTO `fb_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 153, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 38, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 39, 40, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 41, 42, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 43, 44, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 45, 46, 1, 'com_login', 'com_login', '{}'),
(13, 1, 47, 48, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 49, 50, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 51, 52, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 53, 54, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 55, 56, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 57, 114, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 115, 118, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 119, 120, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 121, 122, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 123, 124, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 125, 126, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 127, 130, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 131, 134, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 135, 136, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 116, 117, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 132, 133, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 128, 129, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 137, 138, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 139, 140, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 141, 142, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 143, 144, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 145, 146, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 147, 148, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 58, 59, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 60, 61, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 62, 63, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 64, 65, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 66, 67, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 68, 69, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 70, 71, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 72, 73, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 74, 75, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 76, 77, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 78, 79, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 80, 81, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 82, 83, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 84, 85, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 86, 87, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 88, 89, 2, 'com_modules.module.87', 'Menu Accordeon CK', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 1, 149, 150, 1, 'com_jce', 'jce', '{}'),
(56, 18, 90, 91, 2, 'com_modules.module.88', 'ARI Image Slider', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 18, 92, 93, 2, 'com_modules.module.89', 'SlideBar class=hide_mobile', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 27, 19, 20, 3, 'com_content.article.1', 'header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 18, 94, 95, 2, 'com_modules.module.90', 'Header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 8, 26, 31, 2, 'com_content.category.8', 'Novinky', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(61, 8, 32, 37, 2, 'com_content.category.9', 'Destinace', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(62, 18, 96, 97, 2, 'com_modules.module.91', 'Novinky', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 60, 27, 28, 3, 'com_content.article.2', 'News 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 60, 29, 30, 3, 'com_content.article.3', 'News2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 18, 98, 99, 2, 'com_modules.module.92', 'Novinky', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 18, 100, 101, 2, 'com_modules.module.93', 'Pop Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 61, 33, 34, 3, 'com_content.article.4', 'ŘECKO', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 1, 151, 152, 1, 'com_breezingforms', 'breezingforms', '{}'),
(69, 18, 102, 103, 2, 'com_modules.module.94', 'Form poptavka', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 18, 104, 105, 2, 'com_modules.module.95', 'Registrujte se slevou', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 18, 106, 107, 2, 'com_modules.module.96', 'pozadi', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 27, 21, 22, 3, 'com_content.article.5', 'NAŠE POSÁDKA', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 61, 35, 36, 3, 'com_content.article.6', 'ŘECKO (2)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 18, 108, 109, 2, 'com_modules.module.97', 'Boční menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 18, 110, 111, 2, 'com_modules.module.98', 'Galerie', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(76, 27, 23, 24, 3, 'com_content.article.7', 'galerie', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(77, 18, 112, 113, 2, 'com_modules.module.99', 'test', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_associations`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_associations`
--

TRUNCATE TABLE `fb_associations`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_banners`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_banners`
--

TRUNCATE TABLE `fb_banners`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_banner_clients`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_banner_clients`
--

TRUNCATE TABLE `fb_banner_clients`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_banner_tracks`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_banner_tracks`
--

TRUNCATE TABLE `fb_banner_tracks`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_breezingforms`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_breezingforms` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vyprázdnit tabulku před vkládáním `fb_breezingforms`
--

TRUNCATE TABLE `fb_breezingforms`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_categories`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_categories`
--

TRUNCATE TABLE `fb_categories`;
--
-- Vypisuji data pro tabulku `fb_categories`
--

INSERT INTO `fb_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 17, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 60, 1, 13, 14, 1, 'novinky', 'com_content', 'Novinky', 'novinky', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 683, '2013-12-26 15:48:41', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 61, 1, 15, 16, 1, 'destinace', 'com_content', 'Destinace', 'destinace', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 683, '2013-12-26 15:48:57', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_contact_details`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_contact_details`
--

TRUNCATE TABLE `fb_contact_details`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_content`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_content`
--

TRUNCATE TABLE `fb_content`;
--
-- Vypisuji data pro tabulku `fb_content`
--

INSERT INTO `fb_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 58, 'header', 'header', '<h1><em><strong><img src="images/control/panorama.png" alt="" /></strong></em></h1>', '', 1, 2, '2013-12-19 23:01:35', 683, '', '2013-12-30 21:57:47', 683, 0, '0000-00-00 00:00:00', '2013-12-19 23:01:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 63, 'News 1', 'news-1', '<p>nejaky text</p>', '', 0, 8, '2013-12-26 15:53:01', 683, '', '2013-12-26 17:15:07', 683, 0, '0000-00-00 00:00:00', '2013-12-26 15:53:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 64, 'News2', 'news2', '<p>Registrujte se. Pro prvnich dvacet registrovanych zákazníků máme připraveny zajímavé slevy na první plavbu.</p>', '', 0, 8, '2013-12-26 15:53:29', 683, '', '2013-12-26 17:18:55', 683, 0, '0000-00-00 00:00:00', '2013-12-26 15:53:29', '0000-00-00 00:00:00', '{"image_intro":"images\\/slider\\/1.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 67, 'ŘECKO', 'recko', '<p style="margin-bottom: 0cm; text-align: justify;">Krajina plná dávné historie, přírody a vstřícných lidí - to je Řecko! Ostrovy v oblasti jižní Evropy vám nabídnou jedinečné přírodní scenérie, kdy se strmé bílé skály snoubí s nádherně azurově modrým mořem. Až překrásně kýčovité jsou výhledy na městečka plná čistých bílých domků s modrými okenicemi a střechami. Kombinace bílé a k modré barvy Řecku zkrátka patří. Koneckonců, jsou to barvy řecké státní vlajky. Modrá barva je symbolem moře a bezoblačné jižní oblohy. Bílá barva připomíná čistotu jejich záměrů v boji za svobodu a nezávislost. Kříž ve čtverci je pak odkazem na víru a řeckou zbožnost.</p>\r\n<p style="margin-bottom: 0cm; text-align: justify;">S námi poznáte jedinečné řecké ostrovy nejen v Jónském a Egejském moři. Každý z ostrovů (kterých je více než 2000) vás přivítá svou jedinečnou architekturou. Na většině z nich je možné si vypůjčit katamaran&nbsp;a vydat se prozkoumat ostrovy, a především zátoky, které nejsou z pevniny dostupné. <span style="color: #00ae00;">Naloďte se k nám a nechte na sebe dýchnout jejich mystickou atmosféru, daleko od průmyslu a neustálého shonu.&nbsp;</span><span style="color: #00ae00;"><span style="color: #ff0000;">(odkaz / proklik na mapu)</span></span></p>\r\n<p style="margin-bottom: 0cm;">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;"><span style="font-size: 0.8em;">&nbsp;</span><span style="color: #00ae00;">*</span><span style="color: #00ae00;">LEFKADA</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="color: #00ae00;">*ZAKYNTHOS</span></p>\r\n<p style="margin-bottom: 0cm;" align="CENTER"><span style="color: #00ae00;"><strong>FOTKA</strong></span></p>\r\n<p style="margin-bottom: 0cm;" align="CENTER">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;" align="CENTER">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;">Řecko je stát, který je ve své jižní části tvořen velkým množstvím menších a větších ostrovů. Zdejší gastronomie je tedy předem daná. Šťavnatá zelenina, čerstvé mořské plody a ryby, voňavé bylinky a samozřejmě olivový olej. To jsou hlavní suroviny, které v místních Tavernách (restauracích) ochutnáte. Slovo GASTRONIMIE je řeckého původu – není pro to divu, že jeho kuchyně je světově proslulá.</p>\r\n<p style="margin-bottom: 0cm;">Každý z ostrovů nabízí něco jiného. Je jen na vás, kde a jak se rozhodnete trávit vaší dovolenou. Jsou tu pláže, kde se potkáte s civilizací, kde jsou pozvolným vstupem do moře lemovány hotely. Další jsou pak prázdné a klidné, kde se maximálně potkáte s další posádkou. Ostrovní pláže mají jednu (ne)výhodu - v případě velkých vln jsou chráněny jinými blízkými ostrovy. Kotvit se dá i v zátokách lemovaných strmými skálami, kde je k přístup pouze po schodech shora.</p>\r\n<p style="margin-bottom: 0cm;">LEFKADA</p>\r\n<p style="margin-bottom: 0cm;"><strong>Ostrov</strong> Lefkada leží u severozápadní části řecké pevniny, pod ostrovem Korfu. Od pevniny je vzdálen pouze 1 km a je s ní spojen pomocí zvedacího mostu, na jehož konci vás přivítá hlavní město Lefkada, s polovinou obyvatelstva ostrova. Tedy s počtem přes 10 000.</p>\r\n<p style="margin-bottom: 0cm;"><strong>Na </strong>celém ostrově se rozkládá jedinečné pohoří Stavrotas, jehož vrcholy přesahují výšky 1 000 m. Panorama vrcholků hor a neuvěřitelně modrého moře je nezapomenutelné.</p>\r\n<p style="margin-bottom: 0cm;"><strong>Pláže</strong> jsou většinou lemovány prudkými vápencovými skalisky s krasovými jeskyněmi. Moře je od vápencového písku zbarveno do nádherného odstínu modré barvy.</p>\r\n<p style="margin-bottom: 0cm;">ZAKYNTHOS</p>\r\n<p style="margin-bottom: 0cm;"><strong>Ostrov</strong> Zakynthos, který s více jak 41 000 obyvateli je třetí největší ostrov v Jonském moři, leží u severozápadní části řecké pevniny, vzdálené 16 km. Hlavním městem je Zakynthos (kde žije okolo 16 000 obyvatel), který je důležitým přístavem a v blízkosti města leží i letiště.</p>\r\n<p style="margin-bottom: 0cm;"><strong>Jako</strong> většina Iónských ostrovů je hornatý. Jeho vrcholy jsou ale nižší než na Lefkadě (nejvyšší měří 758 m) a ve východní části převažují spíše rovinaté plochy. Na ostrově žije vzácný druh želv, které naleznte vyobrazeny snad všude a na všem. Před turisty však nejsou dostatečně chráněné a hrozí jejich vyhynutí.</p>\r\n<p style="margin-bottom: 0cm;"><strong>Za </strong>prohlédnutí na ostrově stojí pláže na severu ostrova s názvem Navagio, kde vás uchvátí prudké skály nad zlatavým pískem malých pláží a plážiček a opravdu neuvěřitelné odstíny modré barvy moře. &nbsp;</p>', '', 1, 9, '2013-12-26 23:35:32', 683, '', '2013-12-30 23:01:08', 683, 0, '0000-00-00 00:00:00', '2013-12-26 23:35:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 1, '', '', 1, 27, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 72, 'NAŠE POSÁDKA', 'nase-posadka', '<p style="margin-bottom: 0cm; text-align: justify;"><span style="font-family: verdana, geneva; font-size: 10pt; text-align: justify; color: #000080;">Říká se, že každé zboží má svého kupce. Chápeme ty, pro něž je ideální dovolená u bazénu v hotelu, samozřejmě all inclusive. Rozumíme i těm, kteří si sbalí svých pár švestek a vydají se do světa po svých. Jestli ale mezi ně nepatříte a hledáte tak trochu akci a přitom potřebujete opravdu relaxovat, vyplujte s námi na moře! Jedině z paluby poznáte místa, kam se suchou nohou nelze dostat, &nbsp;a která v sobě skrývají neuvěřitelnou sílu a krásu.&nbsp;</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="color: #000080;">&nbsp;</span></p>\r\n<p style="margin-bottom: 0cm; text-align: justify;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;">Musíme vás ale upozornit, že první vyplutí může být (a ve většině případů opravdu je) prvním krokem k závislosti. Potkalo to celou naši posádku. Jsme parta … &nbsp;</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="color: #000080;">&nbsp;</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;">...<br /></span></p>\r\n<p style="margin-bottom: 0cm;"><span style="color: #000080;">&nbsp;</span></p>\r\n<p style="margin-bottom: 0cm; text-align: justify;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;">Je to zkrátka nepopsatelný pocit. Pocit svobody a souznění s přírodou. Rádi vás o tom přesvědčíme. Naloďte se s námi, vezměte celou rodinu na skvělou dovolenou na katamarán! Pro plavbu s dětmi jako&nbsp;</span><span style="color: #000080; font-family: verdana, geneva; font-size: 10pt;">stvořený, protože oproti plachetnici je na moři mnohem stabilnější. A nudit se určitě nebudete - n<span style="color: #000080; font-family: verdana, geneva; text-align: justify;">a palubě totiž není žádný den stejný!</span></span></p>\r\n<p style="margin-bottom: 0cm; text-align: justify;"><span style="color: #000080;">&nbsp;</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;"><strong>Nabízíme vám rodinou dovolenou na míru! Vyberte si destinaci a ostatní nechte na nás. Zajistíme pro vás:</strong></span></p>\r\n<p style="margin-bottom: 0cm;"><strong style="color: #000080; font-family: verdana, geneva; font-size: 10pt;">*</strong><span style="color: #000080; font-family: verdana, geneva; font-size: 10pt;"> </span><span style="color: #000080; font-family: verdana, geneva; font-size: 10pt;">Loď dle vlastního výběru</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;"><strong>*</strong> Letenky do vybrané destinace</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;"><strong>*</strong> Transfer z letiště a zpět</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;"><strong>*</strong> Dopravu do mariny a zpět</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;"><strong>*</strong> Ubytování v před plavbou či po jejím skončení</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;"><strong>* </strong>Zkušeného kapitána</span></p>\r\n<p style="margin-bottom: 0cm;">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: verdana, geneva; font-size: 10pt; color: #000080;">&nbsp;</span></p>', '', 1, 2, '2013-12-30 22:58:32', 683, '', '2014-01-03 22:17:43', 683, 0, '0000-00-00 00:00:00', '2013-12-30 22:58:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, 'cs-CZ', ''),
(6, 73, 'ŘECKO (2)', 'recko-2', '<p style="margin-bottom: 0cm; text-align: justify;">Krajina plná dávné historie, přírody a vstřícných lidí - to je Řecko! Ostrovy v oblasti jižní Evropy vám nabídnou jedinečné přírodní scenérie, kdy se strmé bílé skály snoubí s nádherně azurově modrým mořem. Až překrásně kýčovité jsou výhledy na městečka plná čistých bílých domků s modrými okenicemi a střechami. Kombinace bílé a k modré barvy Řecku zkrátka patří. Koneckonců, jsou to barvy řecké státní vlajky. Modrá barva je symbolem moře a bezoblačné jižní oblohy. Bílá barva připomíná čistotu jejich záměrů v boji za svobodu a nezávislost. Kříž ve čtverci je pak odkazem na víru a řeckou zbožnost.</p>\r\n<p style="margin-bottom: 0cm; text-align: justify;">S námi poznáte jedinečné řecké ostrovy nejen v Jónském a Egejském moři. Každý z ostrovů (kterých je více než 2000) vás přivítá svou jedinečnou architekturou. Na většině z nich je možné si vypůjčit katamaran&nbsp;a vydat se prozkoumat ostrovy, a především zátoky, které nejsou z pevniny dostupné. <span style="color: #00ae00;">Naloďte se k nám a nechte na sebe dýchnout jejich mystickou atmosféru, daleko od průmyslu a neustálého shonu.&nbsp;</span><span style="color: #00ae00;"><span style="color: #ff0000;">(odkaz / proklik na mapu)</span></span></p>\r\n<p style="margin-bottom: 0cm;">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;"><span style="font-size: 0.8em;">&nbsp;</span><span style="color: #00ae00;">*</span><span style="color: #00ae00;">LEFKADA</span></p>\r\n<p style="margin-bottom: 0cm;"><span style="color: #00ae00;">*ZAKYNTHOS</span></p>\r\n<p style="margin-bottom: 0cm;" align="CENTER"><span style="color: #00ae00;"><strong>FOTKA</strong></span></p>\r\n<p style="margin-bottom: 0cm;" align="CENTER">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;" align="CENTER">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;">Řecko je stát, který je ve své jižní části tvořen velkým množstvím menších a větších ostrovů. Zdejší gastronomie je tedy předem daná. Šťavnatá zelenina, čerstvé mořské plody a ryby, voňavé bylinky a samozřejmě olivový olej. To jsou hlavní suroviny, které v místních Tavernách (restauracích) ochutnáte. Slovo GASTRONIMIE je řeckého původu – není pro to divu, že jeho kuchyně je světově proslulá.</p>\r\n<p style="margin-bottom: 0cm;">Každý z ostrovů nabízí něco jiného. Je jen na vás, kde a jak se rozhodnete trávit vaší dovolenou. Jsou tu pláže, kde se potkáte s civilizací, kde jsou pozvolným vstupem do moře lemovány hotely. Další jsou pak prázdné a klidné, kde se maximálně potkáte s další posádkou. Ostrovní pláže mají jednu (ne)výhodu - v případě velkých vln jsou chráněny jinými blízkými ostrovy. Kotvit se dá i v zátokách lemovaných strmými skálami, kde je k přístup pouze po schodech shora.</p>\r\n<p style="margin-bottom: 0cm;">LEFKADA</p>\r\n<p style="margin-bottom: 0cm;"><strong>Ostrov</strong> Lefkada leží u severozápadní části řecké pevniny, pod ostrovem Korfu. Od pevniny je vzdálen pouze 1 km a je s ní spojen pomocí zvedacího mostu, na jehož konci vás přivítá hlavní město Lefkada, s polovinou obyvatelstva ostrova. Tedy s počtem přes 10 000.</p>\r\n<p style="margin-bottom: 0cm;"><strong>Na </strong>celém ostrově se rozkládá jedinečné pohoří Stavrotas, jehož vrcholy přesahují výšky 1 000 m. Panorama vrcholků hor a neuvěřitelně modrého moře je nezapomenutelné.</p>\r\n<p style="margin-bottom: 0cm;"><strong>Pláže</strong> jsou většinou lemovány prudkými vápencovými skalisky s krasovými jeskyněmi. Moře je od vápencového písku zbarveno do nádherného odstínu modré barvy.</p>\r\n<p style="margin-bottom: 0cm;">ZAKYNTHOS</p>\r\n<p style="margin-bottom: 0cm;"><strong>Ostrov</strong> Zakynthos, který s více jak 41 000 obyvateli je třetí největší ostrov v Jonském moři, leží u severozápadní části řecké pevniny, vzdálené 16 km. Hlavním městem je Zakynthos (kde žije okolo 16 000 obyvatel), který je důležitým přístavem a v blízkosti města leží i letiště.</p>\r\n<p style="margin-bottom: 0cm;"><strong>Jako</strong> většina Iónských ostrovů je hornatý. Jeho vrcholy jsou ale nižší než na Lefkadě (nejvyšší měří 758 m) a ve východní části převažují spíše rovinaté plochy. Na ostrově žije vzácný druh želv, které naleznte vyobrazeny snad všude a na všem. Před turisty však nejsou dostatečně chráněné a hrozí jejich vyhynutí.</p>\r\n<p style="margin-bottom: 0cm;"><strong>Za </strong>prohlédnutí na ostrově stojí pláže na severu ostrova s názvem Navagio, kde vás uchvátí prudké skály nad zlatavým pískem malých pláží a plážiček a opravdu neuvěřitelné odstíny modré barvy moře. &nbsp;</p>', '', -2, 9, '2013-12-26 23:35:32', 683, '', '2013-12-26 23:49:23', 0, 0, '0000-00-00 00:00:00', '2013-12-26 23:35:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 76, 'galerie', 'galerie', '<p><a id="mb1" class="s5mb" title="ImageExample #1:" href="http://www.shape5.com/demo/images/multibox1_lrg.jpg"> <img class="boxed" src="http://www.shape5.com/demo/images/multibox1.jpg" alt="" /> </a></p>\r\n<div class="s5_multibox mb2">Multiple Image #1. It can support <strong>html</strong>.</div>\r\n<p>bslvkaslvsakjflsak fsa;flsa fsa kjfsaf</p>', '', 1, 2, '2014-01-03 17:06:31', 683, '', '2014-01-03 17:09:18', 683, 0, '0000-00-00 00:00:00', '2014-01-03 17:06:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_contentitem_tag_map`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

--
-- Vyprázdnit tabulku před vkládáním `fb_contentitem_tag_map`
--

TRUNCATE TABLE `fb_contentitem_tag_map`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_content_frontpage`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_content_frontpage`
--

TRUNCATE TABLE `fb_content_frontpage`;
--
-- Vypisuji data pro tabulku `fb_content_frontpage`
--

INSERT INTO `fb_content_frontpage` (`content_id`, `ordering`) VALUES
(5, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_content_rating`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_content_rating`
--

TRUNCATE TABLE `fb_content_rating`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_content_types`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_content_types`
--

TRUNCATE TABLE `fb_content_types`;
--
-- Vypisuji data pro tabulku `fb_content_types`
--

INSERT INTO `fb_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(16, 'BreezingForms', 'com_breezingforms.form', '', '', '', 'BreezingformsHelperRoute::getFormRoute', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_core_log_searches`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_core_log_searches`
--

TRUNCATE TABLE `fb_core_log_searches`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_extensions`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10015 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_extensions`
--

TRUNCATE TABLE `fb_extensions`;
--
-- Vypisuji data pro tabulku `fb_extensions`
--

INSERT INTO `fb_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"cs-CZ","site":"cs-CZ"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"13","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"27c39778a80252f0580aca0e988dc671"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2013-12-14","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2013 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.1.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.0.10","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `fb_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"6LcEYOwSAAAAAIW7cr9F1uTtKwju_XaUkZo4NLpl ","private_key":"6LcEYOwSAAAAAMqaq3cMpwfTN7kh9_kpfJyn64co ","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'shape5_vertex', 'template', 'shape5_vertex', '', 0, 1, 1, 0, '{"name":"shape5_vertex","type":"template","creationDate":"January 2012","author":"Shape5.com","copyright":"Shape5","authorEmail":"contact@shape5.com","authorUrl":"http:\\/\\/www.shape5.com","version":"3.0","description":"\\n\\t\\n\\t<h1>Shape 5 - shape5_vertex<\\/h1>\\n\\n\\t<br\\/>\\n\\t<img src=\\"..\\/templates\\/shape5_vertex\\/template_thumbnail.png\\" align=\\"left\\" hspace=\\"10\\" style=\\"padding-right:10px;\\"\\/>\\n\\tThis template is a free GPL licensed template Please be sure to visit our site for other great products.  <br \\/><br \\/>\\n\\tFor tutorials pertaining to this template and additional information check out:<br \\/> <a href=\\"http:\\/\\/www.shape5.com\\/demo\\/shape5_vertex\\">Vertex Demo<\\/a>\\n\\t<br \\/>\\n\\t<a href=\\"http:\\/\\/www.shape5.com\\/joomla_tutorials.html\\">Joomla and Vertex Tutorials<\\/a>\\n\\t<br \\/>\\n\\t<br \\/><a target=\\"_blank\\" href=\\"http:\\/\\/www.shape5.com\\">Click here<\\/a> to visit Shape5.com\\n\\t<br \\/><br \\/>\\n\\t<div class=\\"vertex-admin-logoback\\"><div class=\\"vertex-admin-logo\\"><\\/div><\\/div>\\n\\t<br \\/><br \\/>\\n\\tPowered by a comprehensive template blue print<br\\/><br\\/>\\n\\t<a target=\\"_blank\\" href=\\"http:\\/\\/www.shape5.com\\/joomla\\/framework\\/vertex_framework.html\\">Read more about Vertex here<\\/a> \\n\\t\\n\\t","group":""}', '{"settings":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Menu Accordeon CK', 'module', 'mod_accordeonck', '', 0, 1, 0, 0, '{"name":"Menu Accordeon CK","type":"module","creationDate":"octobre 2011","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"2.0.7","description":"MOD_ACCORDEONCK_DESC","group":""}', '{"startLevel":"1","endLevel":"0","imgalignement":"none","imagerollprefix":"_hover","imageactiveprefix":"_active","cache":"1","cache_time":"900","cachemode":"itemid","eventtype":"click","eventtarget":"link","fadetransition":"false","mooduration":"500","mootransition":"linear","defaultopenedid":"","usestyles":"1","theme":"simple","useplusminusimages":"1","imageplus":"modules\\/mod_accordeonck\\/assets\\/plus.png","imageminus":"modules\\/mod_accordeonck\\/assets\\/minus.png","imageposition":"right","menuusemargin":"1","menumargin":"0","menupadding":"5","menuusebackground":"1","menubgcolor1":"#f0f0f0","menuusegradient":"1","menubgcolor2":"#e3e3e3","menuuseroundedcorners":"1","menuroundedcornerstl":"5","menuroundedcornerstr":"5","menuroundedcornersbr":"5","menuroundedcornersbl":"5","menuuseshadow":"1","menushadowcolor":"#444444","menushadowblur":"3","menushadowspread":"0","menushadowoffsetx":"0","menushadowoffsety":"0","menushadowinset":"0","menuuseborders":"1","menubordercolor":"#efefef","menuborderwidth":"1","level1linkusefont":"1","level1linkfontsize":"12px","level1linkfontcolor":"","level1linkfontcolorhover":"","level1linkdescfontsize":"10px","level1linkdescfontcolor":"","level1linkusemargin":"1","level1linkmargin":"0","level1linkpadding":"0","level1linkusebackground":"1","level1linkbgcolor1":"","level1linkusegradient":"1","level1linkbgcolor2":"","level1linkuseroundedcorners":"1","level1linkroundedcornerstl":"0","level1linkroundedcornerstr":"0","level1linkroundedcornersbr":"0","level1linkroundedcornersbl":"0","level1linkuseshadow":"1","level1linkshadowcolor":"","level1linkshadowblur":"0","level1linkshadowspread":"0","level1linkshadowoffsetx":"0","level1linkshadowoffsety":"0","level1linkshadowinset":"0","level1linkuseborders":"1","level1linkbordercolor":"","level1linkborderwidth":"1","level2linkusefont":"1","level2linkfontsize":"12px","level2linkfontcolor":"","level2linkfontcolorhover":"","level2linkdescfontsize":"10px","level2linkdescfontcolor":"","level2linkusemargin":"1","level2linkmargin":"0","level2linkpadding":"0","level2linkusebackground":"1","level2linkbgcolor1":"","level2linkusegradient":"1","level2linkbgcolor2":"","level2linkuseroundedcorners":"1","level2linkroundedcornerstl":"0","level2linkroundedcornerstr":"0","level2linkroundedcornersbr":"0","level2linkroundedcornersbl":"0","level2linkuseshadow":"1","level2linkshadowcolor":"","level2linkshadowblur":"0","level2linkshadowspread":"0","level2linkshadowoffsetx":"0","level2linkshadowoffsety":"0","level2linkshadowinset":"0","level2linkuseborders":"1","level2linkbordercolor":"","level2linkborderwidth":"1","level3linkusefont":"1","level3linkfontsize":"12px","level3linkfontcolor":"","level3linkfontcolorhover":"","level3linkdescfontsize":"10px","level3linkdescfontcolor":"","level3linkusemargin":"1","level3linkmargin":"0","level3linkpadding":"0","level3linkusebackground":"1","level3linkbgcolor1":"","level3linkusegradient":"1","level3linkbgcolor2":"","level3linkuseroundedcorners":"1","level3linkroundedcornerstl":"0","level3linkroundedcornerstr":"0","level3linkroundedcornersbr":"0","level3linkroundedcornersbl":"0","level3linkuseshadow":"1","level3linkshadowcolor":"","level3linkshadowblur":"0","level3linkshadowspread":"0","level3linkshadowoffsetx":"0","level3linkshadowoffsety":"0","level3linkshadowinset":"0","level3linkuseborders":"1","level3linkbordercolor":"","level3linkborderwidth":"1","thirdparty":"none","hikashopitemid":"0","usehikashopimages":"0","usehikashopsuffix":"0","hikashopimagesuffix":"_mini","hikashopcategoryroot":"0","hikashopcategorydepth":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.3.4.4","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.3.4.4","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"JCE","type":"component","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.3.4.4","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'ARI Image Slider', 'module', 'mod_ariimageslider', '', 0, 1, 0, 0, '{"name":"ARI Image Slider","type":"module","creationDate":"October 2013","author":"ARI Soft","copyright":"ARI Soft","authorEmail":"info@ari-soft.com","authorUrl":"www.ari-soft.com","version":"2.1.8","description":"ARI_IMAGE_SLIDER_MODULE","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'SlideBar', 'module', 'mod_slidebar', '', 0, 1, 0, 0, '{"name":"SlideBar","type":"module","creationDate":"2012","author":"Adam Kempenich, MarcoFolio","copyright":"MOD_SLIDEBAR_COPYRIGHTTEXT","authorEmail":"adam@coder12.com","authorUrl":"http:\\/\\/coder12.com","version":"2.2","description":"MOD_SLIDEBAR_DESCRIPTIONTEXT","group":""}', '{"loadmodule":"slidebar","jslibrary":"slidebar-j","loadlibraries":"1","autoopen":"0","shadowradius":"5","shadowx":"0","shadowy":"0","shadowspread":"0","shadowcolor":"rgba(0,0,0,1)","toppos":"140","pos":"left","concolor":"rgba(221,221,221,1)","concolorgrad1":"rgba(190,190,190,0.8)","concolorgrad2":"rgba(221,221,221,1)","cornerradius":"15","autosizing":"on","conwidth":"200","conheight":"320","conpaddingleft":"10","conpaddingright":"10","conpaddingtop":"10","conpaddingbottom":"10","zindex":"999999","speed":"500","theme":"sleekWhite","type":"png","slidevertical":"absolute","widthdebug":"1","retina":"On","imgalt":"SlideBar","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Pop Login', 'module', 'mod_poplogin', '', 0, 1, 0, 0, '{"name":"Pop Login","type":"module","creationDate":"October 2012","author":"Template Plazza","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"support@templateplazza.com","authorUrl":"www.templateplazza.com","version":"2.1.2","description":"MOD_POPLOGIN_XML_DESCRIPTION","group":""}', '{"greeting":"1","name":"0","usesecure":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'CzechCzechRepublic', 'language', 'cs-CZ', '', 0, 1, 0, 0, '{"name":"Czech (Czech Republic)","type":"language","creationDate":"2013-11-18","author":"Joomla! Czech Translation Team","copyright":"Copyright (C) 2005 - 2013 Open Source Matters & Joomlaportal.cz. All rights reserved.","authorEmail":"admin@joomla.cz","authorUrl":"www.joomlaportal.cz","version":"3.2.1.1","description":"cs-CZ site language for 3.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'CzechCzechRepublic', 'language', 'cs-CZ', '', 1, 1, 0, 0, '{"name":"Czech (Czech Republic)","type":"language","creationDate":"2013-11-18","author":"Joomla! Czech Translation Team","copyright":"Copyright (C) 2005 - 2013 Open Source Matters & Joomlaportal.cz. All rights reserved.","authorEmail":"admin@joomla.cz","authorUrl":"www.joomlaportal.cz","version":"3.2.1.1","description":"cs-CZ administrator language","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'cs-CZ', 'package', 'pkg_cs-CZ', '', 0, 1, 1, 0, '{"name":"Czech Language Pack","type":"package","creationDate":"2013-11-18","author":"Czech Joomla Translation Team","copyright":"","authorEmail":"admin@joomla.cz","authorUrl":"www.joomlaportal.cz","version":"3.2.1.1","description":"Joomla! 3.2.1 Full Czech (cs-CZ) Language Package - Version 3.2.1v1","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"18 December 2013","author":"Joomla! Project","copyright":"Copyright (C) 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0.5","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":""}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'breezingforms', 'component', 'com_breezingforms', '', 1, 1, 0, 0, '{"name":"BreezingForms","type":"component","creationDate":"2013-11-19","author":"Markus Bopp - Crosstec GmbH & Co. KG | Until FacileForms Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.de","authorUrl":"www.crosstec.de","version":"Lite (build 826)","description":"Installation successful. Next find BreezingForms in the Components menu, and continue with step 2 of the installation process.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'BreezingForms', 'module', 'mod_breezingforms', '', 0, 1, 0, 0, '{"name":"BreezingForms","type":"module","creationDate":"November 2013","author":"Markus Bopp - Crosstec Solutions | Until Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.de","authorUrl":"www.crosstec.de","version":"1.8.4","description":"\\n\\t\\tEnter the form name for displaying in the desired module position.\\n    ","group":""}', '{"ff_mod_name":"","ff_mod_page":"1","ff_mod_editable":"0","ff_mod_editable_override":"0","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'System - S5 Flex Menu', 'plugin', 'S5FlexMenu', 'system', 0, 1, 1, 0, '{"name":"System - S5 Flex Menu","type":"plugin","creationDate":"June 2011","author":"Shape5.com","copyright":"This Plugin is released under the GNU\\/GPL License","authorEmail":"contact@shape5.com","authorUrl":"www.shape5.com","version":"1.0","description":"The S5 Flex Menu system is a very powerful plugin that provides functionality far beyond the standard Joomla menu system.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_compmenus`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_compmenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package` varchar(30) NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `page` int(11) NOT NULL DEFAULT '1',
  `frame` tinyint(1) NOT NULL DEFAULT '0',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_compmenus`
--

TRUNCATE TABLE `fb_facileforms_compmenus`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_config`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_config` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_config`
--

TRUNCATE TABLE `fb_facileforms_config`;
--
-- Vypisuji data pro tabulku `fb_facileforms_config`
--

INSERT INTO `fb_facileforms_config` (`id`, `value`) VALUES
('archived', '0'),
('arealarge', '20'),
('areamedium', '12'),
('areasmall', '4'),
('cellnewline', '1'),
('compress', '1'),
('csvdelimiter', ';'),
('csvquote', '"'),
('emailadr', 'pony@email.cz'),
('exported', '0'),
('formname', ''),
('formpkg', 'QuickModeForms'),
('getprovider', '0'),
('gridcolor1', '#e0e0ff'),
('gridcolor2', '#ffe0e0'),
('gridshow', '1'),
('gridsize', '10'),
('images', '{mossite}/components/com_breezingforms/images'),
('limitdesc', '100'),
('livesite', '0'),
('menupkg', ''),
('movepixels', '10'),
('piecepkg', 'FF'),
('scriptpkg', 'FF'),
('stylesheet', '1'),
('uploads', '{mospath}/media/breezingforms/uploads'),
('viewed', '0'),
('wysiwyg', '0');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_elements`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` int(11) NOT NULL DEFAULT '0',
  `page` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `logging` tinyint(1) NOT NULL DEFAULT '1',
  `posx` int(11) DEFAULT NULL,
  `posxmode` tinyint(1) NOT NULL DEFAULT '0',
  `posy` int(11) DEFAULT NULL,
  `posymode` tinyint(1) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `flag1` tinyint(1) NOT NULL DEFAULT '0',
  `flag2` tinyint(1) NOT NULL DEFAULT '0',
  `data1` text,
  `data2` text,
  `data3` text,
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script1flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script1flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `script2flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag3` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag4` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag5` tinyint(1) NOT NULL DEFAULT '0',
  `script3cond` tinyint(1) NOT NULL DEFAULT '0',
  `script3id` int(11) DEFAULT NULL,
  `script3code` text,
  `script3msg` text,
  `mailback` tinyint(1) NOT NULL DEFAULT '0',
  `mailbackfile` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=144 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_elements`
--

TRUNCATE TABLE `fb_facileforms_elements`;
--
-- Vypisuji data pro tabulku `fb_facileforms_elements`
--

INSERT INTO `fb_facileforms_elements` (`id`, `form`, `page`, `ordering`, `published`, `name`, `title`, `type`, `class1`, `class2`, `logging`, `posx`, `posxmode`, `posy`, `posymode`, `width`, `widthmode`, `height`, `heightmode`, `flag1`, `flag2`, `data1`, `data2`, `data3`, `script1cond`, `script1id`, `script1code`, `script1flag1`, `script1flag2`, `script2cond`, `script2id`, `script2code`, `script2flag1`, `script2flag2`, `script2flag3`, `script2flag4`, `script2flag5`, `script3cond`, `script3id`, `script3code`, `script3msg`, `mailback`, `mailbackfile`) VALUES
(2, 2, 1, 2, 1, 'email', 'Email', 'Text', '', '', 1, 0, 0, 40, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(3, 2, 1, 3, 1, 'text_zpravy', 'Text zprávy', 'Textarea', '', '', 1, 0, 0, 80, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(8, 2, 1, 1, 1, 'name', 'Vaše jméno', 'Text', '', '', 1, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(17, 3, 1, 1, 1, 'name', 'Vaše jméno', 'Text', '', 'inputbox', 1, 10, 0, 10, 0, 6, 0, 6, 0, 0, 0, '', NULL, NULL, 0, 8, '', 1, 0, 0, 16, '', 1, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(26, 4, 1, 3, 1, 'start', 'Začátek plavby', 'Calendar', '', '', 1, 0, 0, 80, 0, 20, 0, 20, 0, 0, 0, '...', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(27, 4, 1, 4, 1, 'end', 'Konec plavby', 'Calendar', '', '', 1, 0, 0, 120, 0, 20, 0, 20, 0, 0, 0, '...', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(28, 4, 1, 5, 1, 'pocet_osob', 'Počet osob', 'Select List', '', '', 1, 0, 0, 160, 0, 20, 0, 20, 0, 0, 0, '1', '0;4 osoby;4\n0;5 osob;5\n0;6 osob;6\n0;7 osob;7\n0;8 osob;8\n0;9 osob;9\n0;10 osob;10\n0;11 osob;11\n0;12 osob;12\n', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(29, 4, 1, 6, 1, 'typ_lodi', 'Typ lodi', 'Select List', '', '', 1, 0, 0, 200, 0, 20, 0, 20, 0, 0, 0, '1', '0;Katamarán;Katamarán\n0;Plachetnice;Plachetnice\n0;Motorový člun;Motorový člun\n', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(30, 4, 1, 7, 1, 'destinace', 'Destinace', 'Text', '', '', 1, 0, 0, 240, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(31, 4, 1, 9, 1, 'poznamky', 'Poznámky', 'Textarea', '', '', 1, 0, 0, 320, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(44, 4, 1, 2, 1, 'email', 'Email', 'Text', '', '', 1, 0, 0, 40, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 1, ''),
(56, 4, 1, 10, 1, 'captcha', 'Captcha', 'Captcha', '', '', 0, 0, 0, 360, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(65, 4, 1, 1, 1, 'name', 'Vaše jméno', 'Text', '', '', 1, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(66, 4, 1, 8, 1, 'telefon', 'Telefon', 'Text', '', '', 1, 0, 0, 280, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(116, 2, 1, 0, 1, 'bfFakeName', 'bfFakeTitle', '', '', '', 0, 0, 0, 120, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 41, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(117, 2, 1, 0, 1, 'bfFakeName2', 'bfFakeTitle2', '', '', '', 0, 0, 0, 160, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 23, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(118, 2, 1, 0, 1, 'bfFakeName3', 'bfFakeTitle3', '', '', '', 0, 0, 0, 200, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 40, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(119, 2, 1, 0, 1, 'bfFakeName4', 'bfFakeTitle4', '', '', '', 0, 0, 0, 240, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 38, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(140, 4, 1, 0, 1, 'bfFakeName', 'bfFakeTitle', '', '', '', 0, 0, 0, 400, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 41, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(141, 4, 1, 0, 1, 'bfFakeName2', 'bfFakeTitle2', '', '', '', 0, 0, 0, 440, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 23, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(142, 4, 1, 0, 1, 'bfFakeName3', 'bfFakeTitle3', '', '', '', 0, 0, 0, 480, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 40, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(143, 4, 1, 0, 1, 'bfFakeName4', 'bfFakeTitle4', '', '', '', 0, 0, 0, 520, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 38, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_forms`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alt_mailfrom` text,
  `alt_fromname` text,
  `mb_alt_mailfrom` text,
  `mb_alt_fromname` text,
  `mailchimp_email_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_checkbox_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_api_key` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_list_id` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_double_optin` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_mergevars` text,
  `mailchimp_text_html_mobile_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_send_errors` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_update_existing` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_replace_interests` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_welcome` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_default_type` varchar(255) NOT NULL DEFAULT 'text',
  `mailchimp_delete_member` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_goodbye` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_send_notify` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_unsubscribe_field` varchar(255) NOT NULL DEFAULT '',
  `salesforce_token` varchar(255) NOT NULL DEFAULT '',
  `salesforce_username` varchar(255) NOT NULL DEFAULT '',
  `salesforce_password` varchar(255) NOT NULL DEFAULT '',
  `salesforce_type` varchar(255) NOT NULL DEFAULT '',
  `salesforce_fields` text,
  `salesforce_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_email` varchar(255) NOT NULL DEFAULT '',
  `dropbox_password` varchar(255) NOT NULL DEFAULT '',
  `dropbox_folder` text,
  `dropbox_submission_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_submission_types` varchar(255) NOT NULL DEFAULT 'pdf',
  `tags_content` text NOT NULL,
  `tags_content_template` mediumtext NOT NULL,
  `tags_content_template_default_element` int(11) NOT NULL DEFAULT '0',
  `tags_form` text NOT NULL,
  `tags_content_default_category` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_state` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_access` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_language` varchar(7) NOT NULL DEFAULT '*',
  `tags_content_default_featured` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_publishup` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags_content_default_publishdown` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autoheight` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `template_code` longtext NOT NULL,
  `template_code_processed` longtext NOT NULL,
  `template_areas` longtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `runmode` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `mb_custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '1',
  `emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `mb_emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `email_type` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_type` tinyint(1) NOT NULL DEFAULT '0',
  `email_custom_template` text,
  `mb_email_custom_template` text,
  `email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `emailadr` text,
  `dblog` tinyint(1) NOT NULL DEFAULT '1',
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `piece1cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece1id` int(11) DEFAULT NULL,
  `piece1code` text,
  `piece2cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece2id` int(11) DEFAULT NULL,
  `piece2code` text,
  `piece3cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece3id` int(11) DEFAULT NULL,
  `piece3code` text,
  `piece4cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece4id` int(11) DEFAULT NULL,
  `piece4code` text,
  `prevmode` tinyint(1) NOT NULL DEFAULT '2',
  `prevwidth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_forms`
--

TRUNCATE TABLE `fb_facileforms_forms`;
--
-- Vypisuji data pro tabulku `fb_facileforms_forms`
--

INSERT INTO `fb_facileforms_forms` (`id`, `alt_mailfrom`, `alt_fromname`, `mb_alt_mailfrom`, `mb_alt_fromname`, `mailchimp_email_field`, `mailchimp_checkbox_field`, `mailchimp_api_key`, `mailchimp_list_id`, `mailchimp_double_optin`, `mailchimp_mergevars`, `mailchimp_text_html_mobile_field`, `mailchimp_send_errors`, `mailchimp_update_existing`, `mailchimp_replace_interests`, `mailchimp_send_welcome`, `mailchimp_default_type`, `mailchimp_delete_member`, `mailchimp_send_goodbye`, `mailchimp_send_notify`, `mailchimp_unsubscribe_field`, `salesforce_token`, `salesforce_username`, `salesforce_password`, `salesforce_type`, `salesforce_fields`, `salesforce_enabled`, `dropbox_email`, `dropbox_password`, `dropbox_folder`, `dropbox_submission_enabled`, `dropbox_submission_types`, `tags_content`, `tags_content_template`, `tags_content_template_default_element`, `tags_form`, `tags_content_default_category`, `tags_content_default_state`, `tags_content_default_access`, `tags_content_default_language`, `tags_content_default_featured`, `tags_content_default_publishup`, `tags_content_default_publishdown`, `autoheight`, `package`, `template_code`, `template_code_processed`, `template_areas`, `ordering`, `published`, `runmode`, `name`, `custom_mail_subject`, `mb_custom_mail_subject`, `title`, `description`, `class1`, `class2`, `width`, `widthmode`, `height`, `heightmode`, `pages`, `emailntf`, `mb_emailntf`, `emaillog`, `mb_emaillog`, `emailxml`, `mb_emailxml`, `email_type`, `mb_email_type`, `email_custom_template`, `mb_email_custom_template`, `email_custom_html`, `mb_email_custom_html`, `emailadr`, `dblog`, `script1cond`, `script1id`, `script1code`, `script2cond`, `script2id`, `script2code`, `piece1cond`, `piece1id`, `piece1code`, `piece2cond`, `piece2id`, `piece2code`, `piece3cond`, `piece3id`, `piece3code`, `piece4cond`, `piece4id`, `piece4code`, `prevmode`, `prevwidth`) VALUES
(1, NULL, NULL, NULL, NULL, '', '', '', '', 1, NULL, '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', NULL, 0, 'pdf', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'EasyModeForms', '\n<span style="" id="bfPage1" class="bfPage"><ul class="droppableArea" id="drop1"></ul></span>', '<span style="" id="bfPage1" class="bfPage"><ul class="droppableArea" id="drop1"></ul></span>', '[]', 1, 1, 0, 'EasyForm_486862751', '', '', 'EasyForm_486862751', NULL, '', NULL, 400, 0, 500, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL),
(2, NULL, NULL, NULL, NULL, '', '', '', '', 1, NULL, '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', NULL, 0, 'pdf', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'QuickModeForms', 'eyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVSb290Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlUm9vdCIsIm1kYXRhIjoie1widHlwZVwiOiBcInJvb3RcIn0ifSwicHJvcGVydGllcyI6eyJ0eXBlIjoicm9vdCIsInRpdGxlIjoiS29udGFrdHVqdGUgblx1MDBlMXMiLCJuYW1lIjoia29udGFrdHVqdGVfbmFzIiwicm9sbG92ZXIiOnRydWUsInJvbGxvdmVyQ29sb3IiOiIjZmZjIiwidG9nZ2xlRmllbGRzIjoiIiwiZGVzY3JpcHRpb24iOiIiLCJtYWlsTm90aWZpY2F0aW9uIjoiMSIsIm1haWxSZWNpcGllbnQiOiJwb255QGVtYWlsLmN6LCBqYWt1YkBmYW1pbHlib2F0LmN6Iiwic3VibWl0SW5jbHVkZSI6dHJ1ZSwic3VibWl0TGFiZWwiOiJPZGVzbGF0IiwiY2FuY2VsSW5jbHVkZSI6ZmFsc2UsImNhbmNlbExhYmVsIjoiUmVzZXQiLCJwYWdpbmdJbmNsdWRlIjpmYWxzZSwicGFnaW5nTmV4dExhYmVsIjoibmV4dCIsInBhZ2luZ1ByZXZMYWJlbCI6ImJhY2siLCJ0aGVtZSI6ImRlZmF1bHQiLCJ0aGVtZWJvb3RzdHJhcCI6IiIsInRoZW1lYm9vdHN0cmFwYmVmb3JlIjoiIiwidGhlbWVib290c3RyYXBMYWJlbFRvcCI6ZmFsc2UsInRoZW1lYm9vdHN0cmFwVGhlbWVFbmdpbmUiOiJib290c3RyYXAiLCJ0aGVtZWJvb3RzdHJhcFVzZUhlcm9Vbml0IjpmYWxzZSwidGhlbWVib290c3RyYXBVc2VXZWxsIjpmYWxzZSwidGhlbWVib290c3RyYXBVc2VQcm9ncmVzcyI6ZmFsc2UsInRoZW1ldXNlYm9vdHN0cmFwbGVnYWN5IjpmYWxzZSwiZmFkZUluIjpmYWxzZSwibGFzdFBhZ2VUaGFua1lvdSI6dHJ1ZSwic3VibWl0dGVkU2NyaXB0Q29uZGlkdGlvbiI6LTEsInN1Ym1pdHRlZFNjcmlwdENvZGUiOiIiLCJ1c2VFcnJvckFsZXJ0cyI6ZmFsc2UsInVzZURlZmF1bHRFcnJvcnMiOnRydWUsInVzZUJhbGxvb25FcnJvcnMiOmZhbHNlLCJkaXNhYmxlSlF1ZXJ5IjpmYWxzZSwiam9vbWxhSGludCI6ZmFsc2UsIm1vYmlsZUVuYWJsZWQiOmZhbHNlLCJmb3JjZU1vYmlsZSI6ZmFsc2UsImZvcmNlTW9iaWxlVXJsIjoiaW5kZXgucGhwIiwidGhlbWVib290c3RyYXB2YXJzIjoiIn0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiJLb250YWt0dWp0ZSBuXHUwMGUxcyIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9mb3JtLnBuZyJ9LCJjaGlsZHJlbiI6W3siYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlUGFnZUNsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZVBhZ2UxIiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwicGFnZVwifSJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJwYWdlIiwicGFnZU51bWJlciI6MSwicGFnZUludHJvIjoiIn0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiJQYWdlIDEiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fcGFnZS5wbmcifSwiY2hpbGRyZW4iOlt7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZVNlY3Rpb25DbGFzcyIsImlkIjoiYmZRdWlja01vZGVTZWN0aW9uNjM5MzEiLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJzZWN0aW9uXCJ9In0sInByb3BlcnRpZXMiOnsiYmZUeXBlIjoibm9ybWFsIiwidHlwZSI6InNlY3Rpb24iLCJkaXNwbGF5VHlwZSI6ImJyZWFrcyIsInRpdGxlIjoiOyIsIm5hbWUiOiJiZlF1aWNrTW9kZVNlY3Rpb242MzkzMSIsImRlc2NyaXB0aW9uIjoiIiwib2ZmIjpmYWxzZX0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiI7IiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX3NlY3Rpb24ucG5nIn0sImNoaWxkcmVuIjpbeyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVFbGVtZW50Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlOTExNjAxNCIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6IlZhXHUwMTYxZSBqbVx1MDBlOW5vIiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX3RleHQtZmllbGQucG5nIn0sInByb3BlcnRpZXMiOnsidHlwZSI6ImVsZW1lbnQiLCJiZlR5cGUiOiJiZlRleHRmaWVsZCIsImxhYmVsIjoiVmFcdTAxNjFlIGptXHUwMGU5bm8iLCJsYWJlbFBvc2l0aW9uIjoibGVmdCIsImJmTmFtZSI6Im5hbWUiLCJkYklkIjo4LCJvcmRlck51bWJlciI6Ii0xIiwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjp0cnVlLCJoaW50IjoiIiwib2ZmIjpmYWxzZSwicGxhY2Vob2xkZXIiOiIiLCJ2YWx1ZSI6IiIsIm1heExlbmd0aCI6IiIsInJlYWRvbmx5IjpmYWxzZSwicGFzc3dvcmQiOmZhbHNlLCJtYWlsYmFjayI6ZmFsc2UsIm1haWxiYWNrQXNTZW5kZXIiOmZhbHNlLCJtYWlsYmFja2ZpbGUiOiIiLCJzaXplIjoiIiwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MCwidmFsaWRhdGlvbklkIjoiMSIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiIiLCJ2YWxpZGF0aW9uRnVuY3Rpb25OYW1lIjoiIiwiaW5pdENvbmRpdGlvbiI6MCwiaW5pdElkIjoiOCIsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOiIxNiIsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2V9fSx7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiYmZRdWlja01vZGUyMjc4Mjc3IiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwiZWxlbWVudFwifSJ9LCJkYXRhIjp7InRpdGxlIjoiRW1haWwiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fdGV4dC1maWVsZC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmVGV4dGZpZWxkIiwibGFiZWwiOiJFbWFpbCIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoiZW1haWwiLCJkYklkIjoyLCJvcmRlck51bWJlciI6Ii0xIiwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjp0cnVlLCJoaW50IjoiIiwib2ZmIjpmYWxzZSwicGxhY2Vob2xkZXIiOiIiLCJ2YWx1ZSI6IiIsIm1heExlbmd0aCI6IiIsInJlYWRvbmx5IjpmYWxzZSwicGFzc3dvcmQiOmZhbHNlLCJtYWlsYmFjayI6ZmFsc2UsIm1haWxiYWNrQXNTZW5kZXIiOmZhbHNlLCJtYWlsYmFja2ZpbGUiOiIiLCJzaXplIjoiIiwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MCwidmFsaWRhdGlvbklkIjoiMSIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiIiLCJ2YWxpZGF0aW9uRnVuY3Rpb25OYW1lIjoiIiwiaW5pdENvbmRpdGlvbiI6MCwiaW5pdElkIjoiOCIsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOiIxNiIsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2V9fSx7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiYmZRdWlja01vZGUxNzQzODgzIiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwiZWxlbWVudFwifSJ9LCJkYXRhIjp7InRpdGxlIjoiVGV4dCB6cHJcdTAwZTF2eSIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl90ZXh0LWFyZWEucG5nIn0sInByb3BlcnRpZXMiOnsidHlwZSI6ImVsZW1lbnQiLCJiZlR5cGUiOiJiZlRleHRhcmVhIiwibGFiZWwiOiJUZXh0IHpwclx1MDBlMXZ5IiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJ0ZXh0X3pwcmF2eSIsImRiSWQiOjMsIm9yZGVyTnVtYmVyIjoiLTEiLCJ0YWJJbmRleCI6Ii0xIiwibG9nZ2luZyI6dHJ1ZSwiaGlkZUxhYmVsIjpmYWxzZSwicmVxdWlyZWQiOnRydWUsImhpbnQiOiIiLCJvZmYiOmZhbHNlLCJwbGFjZWhvbGRlciI6IiIsImlzX2h0bWwiOmZhbHNlLCJ2YWx1ZSI6IiIsIndpZHRoIjoiIiwiaGVpZ2h0IjoiIiwibWF4bGVuZ3RoIjoiMCIsInNob3dNYXhsZW5ndGhDb3VudGVyIjp0cnVlLCJyZWFkb25seSI6ZmFsc2UsInZhbGlkYXRpb25Db25kaXRpb24iOjAsInZhbGlkYXRpb25JZCI6IjEiLCJ2YWxpZGF0aW9uQ29kZSI6IiIsInZhbGlkYXRpb25NZXNzYWdlIjoiIiwidmFsaWRhdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImluaXRDb25kaXRpb24iOjAsImluaXRJZCI6IjgiLCJpbml0Q29kZSI6IiIsImluaXRGdW5jdGlvbk5hbWUiOiIiLCJpbml0Rm9ybUVudHJ5IjowLCJpbml0UGFnZUVudHJ5IjowLCJhY3Rpb25Db25kaXRpb24iOjAsImFjdGlvbklkIjoiMTYiLCJhY3Rpb25Db2RlIjoiIiwiYWN0aW9uRnVuY3Rpb25OYW1lIjoiIiwiYWN0aW9uQ2xpY2siOjAsImFjdGlvbkJsdXIiOjAsImFjdGlvbkNoYW5nZSI6MCwiYWN0aW9uRm9jdXMiOjAsImFjdGlvblNlbGVjdCI6MCwiaGlkZUluTWFpbGJhY2siOmZhbHNlfX1dfV19XX0=', 'QuickMode', '[{"elements":[{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Va\\u0161e jm\\u00e9no","name":"name","page":"1","orderNumber":1,"dbId":8,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode9116014","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Email","name":"email","page":"1","orderNumber":2,"dbId":2,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode2278277","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Textarea","elementType":"","options":{"value":"","placeholder":"","readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Text zpr\\u00e1vy","name":"text_zpravy","page":"1","orderNumber":3,"dbId":3,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode1743883","internalType":"bfTextarea","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"41","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle","name":"bfFakeName","page":1,"orderNumber":0,"dbId":116,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"23","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle2","name":"bfFakeName2","page":1,"orderNumber":0,"dbId":117,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"40","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle3","name":"bfFakeName3","page":1,"orderNumber":0,"dbId":118,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"38","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle4","name":"bfFakeName4","page":1,"orderNumber":0,"dbId":119,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""}],"elementCount":3}]', 2, 1, 0, 'kontaktujte_nas', '', '', 'Kontaktujte nás', '', '', NULL, 400, 0, 500, 0, 1, 2, 1, 1, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 'pony@email.cz, jakub@familyboat.cz', 1, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL),
(3, '', '', '', '', '', '', '', '', 0, '', '', 0, 0, 0, 0, 'text', 0, 0, 0, '', '', '', '', '', NULL, 0, '', '', '', 0, '', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', 3, 1, 0, 'kontaktujte_nas', '', '', 'Kontaktujte nás', '', 'content_outline', '', 400, 0, 500, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, '', '', 0, 0, '', 1, 0, 31, '', 0, 32, '', 0, 1, '', 0, NULL, '', 0, 5, '', 0, NULL, '', 2, 400),
(4, NULL, NULL, NULL, NULL, '', '', '', '', 1, NULL, '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', NULL, 0, 'pdf', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'QuickModeForms', 'eyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVSb290Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlUm9vdCIsIm1kYXRhIjoie1widHlwZVwiOiBcInJvb3RcIn0ifSwicHJvcGVydGllcyI6eyJ0eXBlIjoicm9vdCIsInRpdGxlIjoiUG9wdFx1MDBlMXZrYSIsIm5hbWUiOiJwb3B0YXZrYSIsInJvbGxvdmVyIjp0cnVlLCJyb2xsb3ZlckNvbG9yIjoiI2ZmYyIsInRvZ2dsZUZpZWxkcyI6IiIsImRlc2NyaXB0aW9uIjoiIiwibWFpbE5vdGlmaWNhdGlvbiI6IiIsIm1haWxSZWNpcGllbnQiOiIiLCJzdWJtaXRJbmNsdWRlIjp0cnVlLCJzdWJtaXRMYWJlbCI6Ik9kZXNsYXQiLCJjYW5jZWxJbmNsdWRlIjpmYWxzZSwiY2FuY2VsTGFiZWwiOiJyZXNldCIsInBhZ2luZ0luY2x1ZGUiOmZhbHNlLCJwYWdpbmdOZXh0TGFiZWwiOiJuZXh0IiwicGFnaW5nUHJldkxhYmVsIjoiYmFjayIsInRoZW1lIjoiZGVmYXVsdCIsInRoZW1lYm9vdHN0cmFwIjoiIiwidGhlbWVib290c3RyYXBiZWZvcmUiOiIiLCJ0aGVtZWJvb3RzdHJhcExhYmVsVG9wIjpmYWxzZSwidGhlbWVib290c3RyYXBUaGVtZUVuZ2luZSI6ImJvb3RzdHJhcCIsInRoZW1lYm9vdHN0cmFwVXNlSGVyb1VuaXQiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVdlbGwiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVByb2dyZXNzIjpmYWxzZSwidGhlbWV1c2Vib290c3RyYXBsZWdhY3kiOmZhbHNlLCJmYWRlSW4iOmZhbHNlLCJsYXN0UGFnZVRoYW5rWW91IjpmYWxzZSwic3VibWl0dGVkU2NyaXB0Q29uZGlkdGlvbiI6LTEsInN1Ym1pdHRlZFNjcmlwdENvZGUiOiIiLCJ1c2VFcnJvckFsZXJ0cyI6ZmFsc2UsInVzZURlZmF1bHRFcnJvcnMiOnRydWUsInVzZUJhbGxvb25FcnJvcnMiOmZhbHNlLCJkaXNhYmxlSlF1ZXJ5IjpmYWxzZSwiam9vbWxhSGludCI6ZmFsc2UsIm1vYmlsZUVuYWJsZWQiOmZhbHNlLCJmb3JjZU1vYmlsZSI6ZmFsc2UsImZvcmNlTW9iaWxlVXJsIjoiaW5kZXgucGhwIiwidGhlbWVib290c3RyYXB2YXJzIjoiIn0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiJQb3B0XHUwMGUxdmthIiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX2Zvcm0ucG5nIn0sImNoaWxkcmVuIjpbeyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVQYWdlQ2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlUGFnZTEiLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJwYWdlXCJ9In0sInByb3BlcnRpZXMiOnsidHlwZSI6InBhZ2UiLCJwYWdlTnVtYmVyIjoxLCJwYWdlSW50cm8iOiIifSwic3RhdGUiOiJvcGVuIiwiZGF0YSI6eyJ0aXRsZSI6IlBhZ2UgMSIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9wYWdlLnBuZyJ9LCJjaGlsZHJlbiI6W3siYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlU2VjdGlvbkNsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZVNlY3Rpb244NTExMSIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcInNlY3Rpb25cIn0ifSwicHJvcGVydGllcyI6eyJiZlR5cGUiOiJub3JtYWwiLCJ0eXBlIjoic2VjdGlvbiIsImRpc3BsYXlUeXBlIjoiYnJlYWtzIiwidGl0bGUiOiJ1bnRpdGxlZCBzZWN0aW9uIiwibmFtZSI6ImJmUXVpY2tNb2RlU2VjdGlvbjg1MTExIiwiZGVzY3JpcHRpb24iOiIiLCJvZmYiOmZhbHNlfSwic3RhdGUiOiJvcGVuIiwiZGF0YSI6eyJ0aXRsZSI6InVudGl0bGVkIHNlY3Rpb24iLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fc2VjdGlvbi5wbmcifSwiY2hpbGRyZW4iOlt7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiYmZRdWlja01vZGU0NTI4OTA5IiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwiZWxlbWVudFwifSJ9LCJkYXRhIjp7InRpdGxlIjoiVmFcdTAxNjFlIGptXHUwMGU5bm8iLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fdGV4dC1maWVsZC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmVGV4dGZpZWxkIiwibGFiZWwiOiJWYVx1MDE2MWUgam1cdTAwZTlubyIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoibmFtZSIsImRiSWQiOjY1LCJvcmRlck51bWJlciI6IjEiLCJ0YWJJbmRleCI6Ii0xIiwibG9nZ2luZyI6dHJ1ZSwiaGlkZUxhYmVsIjpmYWxzZSwicmVxdWlyZWQiOnRydWUsImhpbnQiOiJWeXBsXHUwMTQ4dGUgcHJvc1x1MDBlZG0gVmFcdTAxNjFlIGptXHUwMGU5bm8iLCJvZmYiOmZhbHNlLCJwbGFjZWhvbGRlciI6IiIsInZhbHVlIjoiIiwibWF4TGVuZ3RoIjoiIiwicmVhZG9ubHkiOmZhbHNlLCJwYXNzd29yZCI6ZmFsc2UsIm1haWxiYWNrIjpmYWxzZSwibWFpbGJhY2tBc1NlbmRlciI6ZmFsc2UsIm1haWxiYWNrZmlsZSI6IiIsInNpemUiOiIiLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjowLCJ2YWxpZGF0aW9uSWQiOiIxIiwidmFsaWRhdGlvbkNvZGUiOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZSI6IiIsInZhbGlkYXRpb25GdW5jdGlvbk5hbWUiOiIiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOiI4IiwiaW5pdENvZGUiOiIiLCJpbml0RnVuY3Rpb25OYW1lIjoiIiwiaW5pdEZvcm1FbnRyeSI6MCwiaW5pdFBhZ2VFbnRyeSI6MCwiYWN0aW9uQ29uZGl0aW9uIjowLCJhY3Rpb25JZCI6IjE2IiwiYWN0aW9uQ29kZSI6IiIsImFjdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImFjdGlvbkNsaWNrIjowLCJhY3Rpb25CbHVyIjowLCJhY3Rpb25DaGFuZ2UiOjAsImFjdGlvbkZvY3VzIjowLCJhY3Rpb25TZWxlY3QiOjAsImhpZGVJbk1haWxiYWNrIjpmYWxzZX19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZTMxMjMzMjIiLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJlbGVtZW50XCJ9In0sImRhdGEiOnsidGl0bGUiOiJFbWFpbCIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl90ZXh0LWZpZWxkLnBuZyJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJlbGVtZW50IiwiYmZUeXBlIjoiYmZUZXh0ZmllbGQiLCJsYWJlbCI6IkVtYWlsIiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJlbWFpbCIsImRiSWQiOjQ0LCJvcmRlck51bWJlciI6Ii0xIiwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjp0cnVlLCJoaW50IjoiVnlwbFx1MDE0OHRlIHByb3NcdTAwZWRtIGVtYWlsIG5hIGt0ZXJcdTAwZTltIFZcdTAwZTFzIGJ1ZGUgbW9jaSBrb250YWt0b3ZhdCIsIm9mZiI6ZmFsc2UsInBsYWNlaG9sZGVyIjoiIiwidmFsdWUiOiIiLCJtYXhMZW5ndGgiOiIiLCJyZWFkb25seSI6ZmFsc2UsInBhc3N3b3JkIjpmYWxzZSwibWFpbGJhY2siOnRydWUsIm1haWxiYWNrQXNTZW5kZXIiOmZhbHNlLCJtYWlsYmFja2ZpbGUiOiIiLCJzaXplIjoiIiwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MCwidmFsaWRhdGlvbklkIjoiMSIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiIiLCJ2YWxpZGF0aW9uRnVuY3Rpb25OYW1lIjoiIiwiaW5pdENvbmRpdGlvbiI6MCwiaW5pdElkIjoiOCIsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOiIxNiIsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2V9fSx7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiYmZRdWlja01vZGU4MDI2MDU1IiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwiZWxlbWVudFwifSJ9LCJkYXRhIjp7InRpdGxlIjoiWmFcdTAxMGRcdTAwZTF0ZWsgcGxhdmJ5IiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX2NhbGVuZGFyLnBuZyJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJlbGVtZW50IiwiYmZUeXBlIjoiYmZDYWxlbmRhciIsImxhYmVsIjoiWmFcdTAxMGRcdTAwZTF0ZWsgcGxhdmJ5IiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJzdGFydCIsImRiSWQiOjI2LCJvcmRlck51bWJlciI6LTEsInRhYkluZGV4IjoiLTEiLCJsb2dnaW5nIjp0cnVlLCJoaWRlTGFiZWwiOmZhbHNlLCJyZXF1aXJlZCI6dHJ1ZSwiaGludCI6IlphZGVqdGUgcHJvc1x1MDBlZG0gZGF0dW0gcGxcdTAwZTFub3Zhblx1MDBlOWhvIHphXHUwMTBkXHUwMGUxdGt1IHBsYXZieS4gTG9kXHUwMTFiIHNlIHZcdTAxMWJ0XHUwMTYxXHUwMGVkbm91IHBcdTAxNmZqXHUwMTBkdWpcdTAwZWQgb2Qgc29ib3R5IGRvIHNvYm90eS4gSmluXHUwMGZkIGRlbiB6YVx1MDEwZFx1MDBlMXRrdSB6XHUwMGUxbGVcdTAxN2VcdTAwZWQgbmEgZG9tbHV2XHUwMTFiIHMgY2hhcnRlcm92b3Ugc3BvbGVcdTAxMGRub3N0XHUwMGVkIGEgbmVtXHUwMTZmXHUwMTdlZW1lIGhvIHphcnVcdTAxMGRpdC4iLCJvZmYiOmZhbHNlLCJyZWFkb25seSI6ZmFsc2UsImZvcm1hdCI6IiVkLiVtLiVZIiwidmFsdWUiOiIuLi4iLCJzaXplIjoiIiwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MCwidmFsaWRhdGlvbklkIjoiMSIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiIiLCJ2YWxpZGF0aW9uRnVuY3Rpb25OYW1lIjoiIiwiaW5pdENvbmRpdGlvbiI6MCwiaW5pdElkIjowLCJpbml0Q29kZSI6IiIsImluaXRGdW5jdGlvbk5hbWUiOiIiLCJpbml0Rm9ybUVudHJ5IjowLCJpbml0UGFnZUVudHJ5IjowLCJhY3Rpb25Db25kaXRpb24iOjAsImFjdGlvbklkIjowLCJhY3Rpb25Db2RlIjoiIiwiYWN0aW9uRnVuY3Rpb25OYW1lIjoiIiwiYWN0aW9uQ2xpY2siOjAsImFjdGlvbkJsdXIiOjAsImFjdGlvbkNoYW5nZSI6MCwiYWN0aW9uRm9jdXMiOjAsImFjdGlvblNlbGVjdCI6MCwiaGlkZUluTWFpbGJhY2siOmZhbHNlfX0seyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVFbGVtZW50Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlMjkzMDgyOCIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6IktvbmVjIHBsYXZieSIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9jYWxlbmRhci5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmQ2FsZW5kYXIiLCJsYWJlbCI6IktvbmVjIHBsYXZieSIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoiZW5kIiwiZGJJZCI6MjcsIm9yZGVyTnVtYmVyIjotMSwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjp0cnVlLCJoaW50IjoiTG9kXHUwMTFiIHNlIG9idnlrbGUgdnJhY1x1MDBlZCB2IHNvYm90dSBhbGUgdiBwXHUwMTU5XHUwMGVkcGFkXHUwMTFiIHpcdTAwZTFqbXUgc2UgcHJvIFZcdTAwZTFzIHBva3VzXHUwMGVkbWUgemFqaXN0aXQgaSBqaW5cdTAwZmQgdGVybWluLiIsIm9mZiI6ZmFsc2UsInJlYWRvbmx5IjpmYWxzZSwiZm9ybWF0IjoiJWQuJW0uJVkiLCJ2YWx1ZSI6Ii4uLiIsInNpemUiOiIiLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjowLCJ2YWxpZGF0aW9uSWQiOiIxIiwidmFsaWRhdGlvbkNvZGUiOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZSI6IiIsInZhbGlkYXRpb25GdW5jdGlvbk5hbWUiOiIiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOjAsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOjAsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2V9fSx7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiYmZRdWlja01vZGU1NTI2MTM0IiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwiZWxlbWVudFwifSJ9LCJkYXRhIjp7InRpdGxlIjoiUG9cdTAxMGRldCBvc29iIiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX3NlbGVjdC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmU2VsZWN0IiwibGFiZWwiOiJQb1x1MDEwZGV0IG9zb2IiLCJsYWJlbFBvc2l0aW9uIjoibGVmdCIsImJmTmFtZSI6InBvY2V0X29zb2IiLCJkYklkIjoyOCwib3JkZXJOdW1iZXIiOiItMSIsInRhYkluZGV4IjoiLTEiLCJsb2dnaW5nIjp0cnVlLCJoaWRlTGFiZWwiOmZhbHNlLCJyZXF1aXJlZCI6dHJ1ZSwiaGludCI6IlBybyBrb2xpayBsaWRcdTAwZWQgcGxhdmJ1IHBsXHUwMGUxbnVqZXRlIiwib2ZmIjpmYWxzZSwibGlzdCI6IjA7NCBvc29ieTs0XG4wOzUgb3NvYjs1XG4wOzYgb3NvYjs2XG4wOzcgb3NvYjs3XG4wOzggb3NvYjs4XG4wOzkgb3NvYjs5XG4wOzEwIG9zb2I7MTBcbjA7MTEgb3NvYjsxMVxuMDsxMiBvc29iOzEyXG4iLCJyZWFkb25seSI6ZmFsc2UsIm11bHRpcGxlIjpmYWxzZSwibWFpbGJhY2siOmZhbHNlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsInZhbGlkYXRpb25Db25kaXRpb24iOjAsInZhbGlkYXRpb25JZCI6IjEiLCJ2YWxpZGF0aW9uQ29kZSI6IiIsInZhbGlkYXRpb25NZXNzYWdlIjoiIiwidmFsaWRhdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImluaXRDb25kaXRpb24iOjAsImluaXRJZCI6IjgiLCJpbml0Q29kZSI6IiIsImluaXRGdW5jdGlvbk5hbWUiOiIiLCJpbml0Rm9ybUVudHJ5IjowLCJpbml0UGFnZUVudHJ5IjowLCJhY3Rpb25Db25kaXRpb24iOjAsImFjdGlvbklkIjoiMTYiLCJhY3Rpb25Db2RlIjoiIiwiYWN0aW9uRnVuY3Rpb25OYW1lIjoiIiwiYWN0aW9uQ2xpY2siOjAsImFjdGlvbkJsdXIiOjAsImFjdGlvbkNoYW5nZSI6MCwiYWN0aW9uRm9jdXMiOjAsImFjdGlvblNlbGVjdCI6MCwiaGlkZUluTWFpbGJhY2siOmZhbHNlfX0seyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVFbGVtZW50Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlNDI1MTQ2MiIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6IlR5cCBsb2RpIiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX3NlbGVjdC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmU2VsZWN0IiwibGFiZWwiOiJUeXAgbG9kaSIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoidHlwX2xvZGkiLCJkYklkIjoyOSwib3JkZXJOdW1iZXIiOiItMSIsInRhYkluZGV4IjoiLTEiLCJsb2dnaW5nIjp0cnVlLCJoaWRlTGFiZWwiOmZhbHNlLCJyZXF1aXJlZCI6dHJ1ZSwiaGludCI6IlZ5YmVydGUgcHJvc1x1MDBlZG0gdHlwIGxvZGkgbmEgamFrXHUwMGU5bSBjaGNldGUgdmFcdTAxNjFpIGRvdm9sZW5vdSB1c2t1dGVcdTAxMGRuaXQiLCJvZmYiOmZhbHNlLCJsaXN0IjoiMDtLYXRhbWFyXHUwMGUxbjtLYXRhbWFyXHUwMGUxblxuMDtQbGFjaGV0bmljZTtQbGFjaGV0bmljZVxuMDtNb3Rvcm92XHUwMGZkIFx1MDEwZGx1bjtNb3Rvcm92XHUwMGZkIFx1MDEwZGx1blxuIiwicmVhZG9ubHkiOmZhbHNlLCJtdWx0aXBsZSI6ZmFsc2UsIm1haWxiYWNrIjpmYWxzZSwid2lkdGgiOiIiLCJoZWlnaHQiOiIiLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjowLCJ2YWxpZGF0aW9uSWQiOiIxIiwidmFsaWRhdGlvbkNvZGUiOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZSI6IiIsInZhbGlkYXRpb25GdW5jdGlvbk5hbWUiOiIiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOiI4IiwiaW5pdENvZGUiOiIiLCJpbml0RnVuY3Rpb25OYW1lIjoiIiwiaW5pdEZvcm1FbnRyeSI6MCwiaW5pdFBhZ2VFbnRyeSI6MCwiYWN0aW9uQ29uZGl0aW9uIjowLCJhY3Rpb25JZCI6IjE2IiwiYWN0aW9uQ29kZSI6IiIsImFjdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImFjdGlvbkNsaWNrIjowLCJhY3Rpb25CbHVyIjowLCJhY3Rpb25DaGFuZ2UiOjAsImFjdGlvbkZvY3VzIjowLCJhY3Rpb25TZWxlY3QiOjAsImhpZGVJbk1haWxiYWNrIjpmYWxzZX19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZTg0NjM3NiIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6IkRlc3RpbmFjZSIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl90ZXh0LWZpZWxkLnBuZyJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJlbGVtZW50IiwiYmZUeXBlIjoiYmZUZXh0ZmllbGQiLCJsYWJlbCI6IkRlc3RpbmFjZSIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoiZGVzdGluYWNlIiwiZGJJZCI6MzAsIm9yZGVyTnVtYmVyIjoiLTEiLCJ0YWJJbmRleCI6Ii0xIiwibG9nZ2luZyI6dHJ1ZSwiaGlkZUxhYmVsIjpmYWxzZSwicmVxdWlyZWQiOmZhbHNlLCJoaW50IjoiTmVqYWt5IHJhZHkgayBkZXN0aW5hY2kiLCJvZmYiOmZhbHNlLCJwbGFjZWhvbGRlciI6IiIsInZhbHVlIjoiIiwibWF4TGVuZ3RoIjoiIiwicmVhZG9ubHkiOmZhbHNlLCJwYXNzd29yZCI6ZmFsc2UsIm1haWxiYWNrIjpmYWxzZSwibWFpbGJhY2tBc1NlbmRlciI6ZmFsc2UsIm1haWxiYWNrZmlsZSI6IiIsInNpemUiOiIiLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjowLCJ2YWxpZGF0aW9uSWQiOiIxIiwidmFsaWRhdGlvbkNvZGUiOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZSI6IiIsInZhbGlkYXRpb25GdW5jdGlvbk5hbWUiOiIiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOiI4IiwiaW5pdENvZGUiOiIiLCJpbml0RnVuY3Rpb25OYW1lIjoiIiwiaW5pdEZvcm1FbnRyeSI6MCwiaW5pdFBhZ2VFbnRyeSI6MCwiYWN0aW9uQ29uZGl0aW9uIjowLCJhY3Rpb25JZCI6IjE2IiwiYWN0aW9uQ29kZSI6IiIsImFjdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImFjdGlvbkNsaWNrIjowLCJhY3Rpb25CbHVyIjowLCJhY3Rpb25DaGFuZ2UiOjAsImFjdGlvbkZvY3VzIjowLCJhY3Rpb25TZWxlY3QiOjAsImhpZGVJbk1haWxiYWNrIjpmYWxzZX19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZTc3Mjc0NSIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6IlRlbGVmb24iLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fdGV4dC1maWVsZC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmVGV4dGZpZWxkIiwibGFiZWwiOiJUZWxlZm9uIiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJ0ZWxlZm9uIiwiZGJJZCI6NjYsIm9yZGVyTnVtYmVyIjoiLTEiLCJ0YWJJbmRleCI6Ii0xIiwibG9nZ2luZyI6dHJ1ZSwiaGlkZUxhYmVsIjpmYWxzZSwicmVxdWlyZWQiOmZhbHNlLCJoaW50IjoiUG9rdWQgcHJlZmVydWpldGUgbGlkc2tcdTAwZmQga29udGFrdCBuZXphcG9tZVx1MDE0OHRlIG5hbSBwcm96cmFkaXQgVmFcdTAxNjFlIHRlbGVmb25uXHUwMGVkIFx1MDEwZFx1MDBlZHNsbyIsIm9mZiI6ZmFsc2UsInBsYWNlaG9sZGVyIjoiIiwidmFsdWUiOiIiLCJtYXhMZW5ndGgiOiIiLCJyZWFkb25seSI6ZmFsc2UsInBhc3N3b3JkIjpmYWxzZSwibWFpbGJhY2siOmZhbHNlLCJtYWlsYmFja0FzU2VuZGVyIjpmYWxzZSwibWFpbGJhY2tmaWxlIjoiIiwic2l6ZSI6IiIsInZhbGlkYXRpb25Db25kaXRpb24iOjAsInZhbGlkYXRpb25JZCI6IjEiLCJ2YWxpZGF0aW9uQ29kZSI6IiIsInZhbGlkYXRpb25NZXNzYWdlIjoiIiwidmFsaWRhdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImluaXRDb25kaXRpb24iOjAsImluaXRJZCI6IjgiLCJpbml0Q29kZSI6IiIsImluaXRGdW5jdGlvbk5hbWUiOiIiLCJpbml0Rm9ybUVudHJ5IjowLCJpbml0UGFnZUVudHJ5IjowLCJhY3Rpb25Db25kaXRpb24iOjAsImFjdGlvbklkIjoiMTYiLCJhY3Rpb25Db2RlIjoiIiwiYWN0aW9uRnVuY3Rpb25OYW1lIjoiIiwiYWN0aW9uQ2xpY2siOjAsImFjdGlvbkJsdXIiOjAsImFjdGlvbkNoYW5nZSI6MCwiYWN0aW9uRm9jdXMiOjAsImFjdGlvblNlbGVjdCI6MCwiaGlkZUluTWFpbGJhY2siOmZhbHNlfX0seyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVFbGVtZW50Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlMTExOTAyMiIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6IlBvem5cdTAwZTFta3kiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fdGV4dC1hcmVhLnBuZyJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJlbGVtZW50IiwiYmZUeXBlIjoiYmZUZXh0YXJlYSIsImxhYmVsIjoiUG96blx1MDBlMW1reSIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoicG96bmFta3kiLCJkYklkIjozMSwib3JkZXJOdW1iZXIiOiItMSIsInRhYkluZGV4IjoiLTEiLCJsb2dnaW5nIjp0cnVlLCJoaWRlTGFiZWwiOmZhbHNlLCJyZXF1aXJlZCI6ZmFsc2UsImhpbnQiOiJOZWpha3kgcmFkeSBrIHBvem5hbWthbSIsIm9mZiI6ZmFsc2UsInBsYWNlaG9sZGVyIjoiIiwiaXNfaHRtbCI6ZmFsc2UsInZhbHVlIjoiIiwid2lkdGgiOiIyMDAiLCJoZWlnaHQiOiIiLCJtYXhsZW5ndGgiOiIwIiwic2hvd01heGxlbmd0aENvdW50ZXIiOnRydWUsInJlYWRvbmx5IjpmYWxzZSwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MCwidmFsaWRhdGlvbklkIjoiMSIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiIiLCJ2YWxpZGF0aW9uRnVuY3Rpb25OYW1lIjoiIiwiaW5pdENvbmRpdGlvbiI6MCwiaW5pdElkIjoiOCIsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOiIxNiIsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2V9fSx7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiYmZRdWlja01vZGU4NTQ1ODA1IiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwiZWxlbWVudFwifSJ9LCJkYXRhIjp7InRpdGxlIjoiQ2FwdGNoYSIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9jYXB0Y2hhLnBuZyJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJlbGVtZW50IiwiYmZUeXBlIjoiYmZDYXB0Y2hhIiwibGFiZWwiOiJDYXB0Y2hhIiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJjYXB0Y2hhIiwiZGJJZCI6NTYsIm9yZGVyTnVtYmVyIjotMSwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOmZhbHNlLCJoaWRlTGFiZWwiOnRydWUsInJlcXVpcmVkIjpmYWxzZSwiaGludCI6Ik9waVx1MDE2MXRlIHByb3NcdTAwZWRtIHRleHQgeiBvYnJcdTAwZTF6a3UiLCJvZmYiOmZhbHNlLCJyZWFkb25seSI6ZmFsc2UsInZhbGlkYXRpb25Db25kaXRpb24iOjAsInZhbGlkYXRpb25JZCI6MCwidmFsaWRhdGlvbkNvZGUiOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZSI6IiIsInZhbGlkYXRpb25GdW5jdGlvbk5hbWUiOiIiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOjAsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOm51bGwsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2UsIndpZHRoIjoiMTUwIn19XX1dfV19', 'QuickMode', '[{"elements":[{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Va\\u0161e jm\\u00e9no","name":"name","page":"1","orderNumber":"1","dbId":65,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode4528909","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"","password":false,"mailback":true,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":1,"mailbackfile":"","title":"Email","name":"email","page":"1","orderNumber":2,"dbId":44,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode3123322","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Calendar","elementType":"","options":{"readonly":false},"data1":"...","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Za\\u010d\\u00e1tek plavby","name":"start","page":"1","orderNumber":3,"dbId":26,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode8026055","internalType":"bfCalendar","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Calendar","elementType":"","options":{"readonly":false},"data1":"...","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Konec plavby","name":"end","page":"1","orderNumber":4,"dbId":27,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode2930828","internalType":"bfCalendar","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Select List","elementType":"","options":{"multiple":false,"options":"0;4 osoby;4\\n0;5 osob;5\\n0;6 osob;6\\n0;7 osob;7\\n0;8 osob;8\\n0;9 osob;9\\n0;10 osob;10\\n0;11 osob;11\\n0;12 osob;12\\n","mailback":false,"readonly":false},"data1":1,"data2":"0;4 osoby;4\\n0;5 osob;5\\n0;6 osob;6\\n0;7 osob;7\\n0;8 osob;8\\n0;9 osob;9\\n0;10 osob;10\\n0;11 osob;11\\n0;12 osob;12\\n","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Po\\u010det osob","name":"pocet_osob","page":"1","orderNumber":5,"dbId":28,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode5526134","internalType":"bfSelect","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Select List","elementType":"","options":{"multiple":false,"options":"0;Katamar\\u00e1n;Katamar\\u00e1n\\n0;Plachetnice;Plachetnice\\n0;Motorov\\u00fd \\u010dlun;Motorov\\u00fd \\u010dlun\\n","mailback":false,"readonly":false},"data1":1,"data2":"0;Katamar\\u00e1n;Katamar\\u00e1n\\n0;Plachetnice;Plachetnice\\n0;Motorov\\u00fd \\u010dlun;Motorov\\u00fd \\u010dlun\\n","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Typ lodi","name":"typ_lodi","page":"1","orderNumber":6,"dbId":29,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode4251462","internalType":"bfSelect","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Destinace","name":"destinace","page":"1","orderNumber":7,"dbId":30,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode846376","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Telefon","name":"telefon","page":"1","orderNumber":8,"dbId":66,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode772745","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Textarea","elementType":"","options":{"value":"","placeholder":"","readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Pozn\\u00e1mky","name":"poznamky","page":"1","orderNumber":9,"dbId":31,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode1119022","internalType":"bfTextarea","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Captcha","elementType":"","options":{"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":null,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Captcha","name":"captcha","page":"1","orderNumber":10,"dbId":56,"appElementOrderId":0,"id":0,"logging":false,"qId":"bfQuickMode8545805","internalType":"bfCaptcha","width":150,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"41","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle","name":"bfFakeName","page":1,"orderNumber":0,"dbId":140,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"23","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle2","name":"bfFakeName2","page":1,"orderNumber":0,"dbId":141,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"40","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle3","name":"bfFakeName3","page":1,"orderNumber":0,"dbId":142,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"38","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle4","name":"bfFakeName4","page":1,"orderNumber":0,"dbId":143,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""}],"elementCount":10}]', 0, 1, 0, 'poptavka', '', '', 'Poptávka', '', '', NULL, 400, 0, 500, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, '', 1, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_integrator_criteria_fixed`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_integrator_criteria_fixed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `fixed_value` text NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_integrator_criteria_fixed`
--

TRUNCATE TABLE `fb_facileforms_integrator_criteria_fixed`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_integrator_criteria_form`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_integrator_criteria_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_integrator_criteria_form`
--

TRUNCATE TABLE `fb_facileforms_integrator_criteria_form`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_integrator_criteria_joomla`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_integrator_criteria_joomla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `joomla_object` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_integrator_criteria_joomla`
--

TRUNCATE TABLE `fb_facileforms_integrator_criteria_joomla`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_integrator_items`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_integrator_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_integrator_items`
--

TRUNCATE TABLE `fb_facileforms_integrator_items`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_integrator_rules`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_integrator_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `reference_table` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'insert',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `finalize_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_integrator_rules`
--

TRUNCATE TABLE `fb_facileforms_integrator_rules`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_packages`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_packages` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '',
  `created` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_packages`
--

TRUNCATE TABLE `fb_facileforms_packages`;
--
-- Vypisuji data pro tabulku `fb_facileforms_packages`
--

INSERT INTO `fb_facileforms_packages` (`id`, `name`, `version`, `created`, `title`, `author`, `email`, `url`, `description`, `copyright`) VALUES
('', 'mypck_001', '0.0.1', '2005-07-31 22:21:23', 'My First Package', 'My Name', 'my.name@my.domain', 'http://www.my.domain', 'This is the first package that I created', 'This FacileForms package is released under the GNU/GPL license'),
('FF', 'stdlib.english', '1.8', '2012-09-21 11:50:15', 'BreezingForms-Standard Piece and Script Libraries', 'Markus Bopp', 'markus.bopp@crosstec.de', 'http://www.crosstec.de', 'These are the standard BreezingForms script and piece libraries.', 'This BreezingForms package is released under the GNU/GPL license');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_pieces`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_pieces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_pieces`
--

TRUNCATE TABLE `fb_facileforms_pieces`;
--
-- Vypisuji data pro tabulku `fb_facileforms_pieces`
--

INSERT INTO `fb_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(1, 1, 'FF', 'ff_addCustomCSSFile', 'Add custom CSS File', 'Adds a custom css file to the form. To choose a css file, execute this piece and call the function ff_addCustomCSSFile(''path/to/css/file'') with the RELATIVE (not full!) path to your joomla installation.\r\nDo not forget to call $this->execPieceByName(''ff_InitLib'') before!\r\n\r\nExample:\r\n\r\nglobal $mainframe;\r\n\r\n$this->execPieceByName(''ff_InitLib'');\r\n$this->execPieceByName(''ff_addCustomCSSFile'');\r\n\r\nff_addCustomCSSFile(''templates/'' . $mainframe->getTemplate() . ''/css/template.css'');', 'Before Form', 'function ff_addCustomCSSFile($path){\r\n	if(file_exists(JPATH_SITE . ''/'' . $path)){\r\n		JFactory::getDocument()->addStyleSheet(JURI::root() . $path);\r\n	}\r\n}'),
(2, 1, 'FF', 'ff_Constants', 'Constansts definitions', 'Library constants definitions', 'Before Form', 'define(''FF_DIE'',       ''_ff_die_on_errors_'');\r\ndefine(''FF_DONTDIE'',   ''_ff_stay_alive_'');\r\ndefine(''FF_IGNOREDIE'', ''_ff_ignore_if_dying_'');\r\n\r\ndefine(''FF_ARRAY'',     ''_ff_return_as_array_'');\r\ndefine(''FF_LIST'',      ''_ff_return_as_list_'');\r\ndefine(''FF_SLIST'',     ''_ff_return_as_slist_'');\r\ndefine(''FF_DLIST'',     ''_ff_return_as_dlist_'');\r\n\r\ndefine(''FF_NOTRIM'',    1);\r\ndefine(''FF_ALLOWHTML'', 2);\r\ndefine(''FF_ALLOWRAW'',  4);'),
(3, 1, 'FF', 'ff_die', 'Terminate form gracefully', 'Gracefully terminates the form and shows a message plus opionally a \r\nCONTINUE button for further redirection.\r\n\r\nCall:\r\n\r\n    ff_die($message=null, $action=''stop'', $target='''', $params='''', $label=''Continue'');\r\n    return;\r\n\r\n    $message = A message to display. If no message is provided, it will\r\n               display:\r\n\r\n                    Fatal error in $formname, processing stopped.\r\n\r\n    $action  = ''stop'' : Dont show a CONTINUE button (default)\r\n               ''self'' : Redirect to the same form\r\n               ''form'' : Redirect to another form \r\n               ''page'' : Redirect to another page of this site\r\n               ''home'' : Redirect to homepage of the site\r\n               ''url''  : Redirect to a url\r\n\r\n    $target  = Target name/url for ''form'', ''page'' and ''url''\r\n\r\n    $params  = Additional parameters for ''self'' and ''form''\r\n\r\n    $label   = Text for the continue button\r\n\r\nExamples:\r\n\r\n    // Display standard message without continue button\r\n    ff_die(); \r\n\r\n    // Display message without continue button\r\n    ff_die(''Sorry, cannot continue for some reason.'');\r\n\r\n    // Display standard message and return to same form with a parameter\r\n    ff_die(null, ''self'', ''&ff_param_foo=bar'');\r\n\r\n    // Redirect to another form\r\n    ff_die(''Guess you are hungry now...'', ''form'', ''SamplePizzaShop'', null, ''Order'');\r\n\r\n    // Redirect to another site page\r\n    ff_die(\r\n        ''Something strange has happened!'', \r\n        ''page'', \r\n        ''index.php?option=com_content&task=section&id=1&Itemid=2''\r\n    );', 'Untyped', 'function ff_die($message='''', $action=''stop'', $target='''', $params='''', $label=''Continue'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    $form =& $ff_processor->formrow;\r\n    if (!$message) \r\n        $message = \r\n            "<strong>Fatal error in $form->name, form processing halted.</strong>";\r\n    switch ($action) {\r\n        case ''self'': $url = ff_makeSelfUrl($params); break;\r\n        case ''form'': $url = ff_makeFormUrl($target, $params); break;\r\n        case ''page'': $url = ff_makePageUrl($target); break;\r\n        case ''home'': $url = "{mossite}"; break;\r\n        case ''url'' : $url = $target; break;\r\n        default    : $url = '''';\r\n    } // switch\r\n    if ($form->class1 != '''') echo ''<div class="''.$form->class1.''">''.nl();\r\n    echo($message.''<br/><br/><br/>''.nl());\r\n    if ($url) {\r\n        if (!$ff_processor->inline) echo ''<form action="#redirect">''.nl();\r\n        if ($ff_processor->inframe) $t = ''parent''; else $t = ''document'';\r\n        echo ''<input type="button" class="button" value="''.$label.''"''.\r\n             '' onClick="''.$t.''.location.href=\\''''.htmlentities($url,ENT_QUOTES).''\\'';"''.\r\n             ''/>''.nl();\r\n        if (!$ff_processor->inline) echo ''</form>''.nl();\r\n    } // if\r\n    if ($form->class1 != '''') echo ''</div>''.nl();\r\n    unset($form);\r\n    ob_start();\r\n    $ff_processor->suicide();\r\n} // ff_die'),
(4, 1, 'FF', 'ff_DisableFormTrace', 'Disable tracing at view time', 'Disables tracing for use as before form piece', 'Before Form', '//+trace dis'),
(5, 1, 'FF', 'ff_DisableSubmitTrace', 'Disable tracing at submit time', 'Disables tracing for use as begin submit piece', 'Begin Submit', '//+trace dis'),
(6, 1, 'FF', 'ff_dying', 'Query live status', 'Query if form is dying', 'Untyped', '//+trace max none\r\nfunction ff_dying()\r\n{\r\n    global $ff_processor; \r\n    return $ff_processor->dying;\r\n} // ff_dying'),
(7, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters in c-codes', 'Untyped', 'function ff_expString($text)\r\n{\r\n    return expstring($text);\r\n} // ff_expString'),
(8, 1, 'FF', 'ff_getPageByNameX', 'Get page # by element name', 'Gets the page number by the name of an element. \r\nTypically used to redirect to a certain page in a before form piece \r\nas \r\n\r\n    $this->page = ff_getPageByName(''elementname'');', 'Untyped', 'function ff_getPageByName($name)\r\n{\r\n    global $ff_processor;\r\n    foreach($ff_processor->rows as $row)\r\n        if ($row->name==$name)\r\n            return $row->page;\r\n    return null;\r\n} // ff_getPageByName'),
(9, 1, 'FF', 'ff_getParam', 'Get GET/POST parameter', 'Direct replacement for mosGetParam. ff_getParam will attempt to filter \r\nout parameters that are targeted to another form on the same page.', 'Untyped', 'function ff_getParam($name, $default=null, $mask=0)\r\n{\r\n    global $ff_request;\r\n    if (substr($name,0,9)==''ff_param_'') {\r\n        if (!isset($ff_request[$name])) return $default;\r\n        $val = $ff_request[$name];\r\n    } else {\r\n        if (!isset($_REQUEST[$name])) return $default;\r\n        $val = $_REQUEST[$name];\r\n    } // if\r\n    $dotrim = ($mask & FF_NOTRIM)==0;\r\n    $dostrp = ($mask & FF_ALLOWHTML)==0;\r\n    $addsla = ($mask & FF_ALLOWRAW)==0 && !get_magic_quotes_gpc();\r\n    $remsla = ($mask & FF_ALLOWRAW)!=0 && get_magic_quotes_gpc();\r\n    if (is_array($val)) {\r\n        $cnt = count($val);\r\n        for ($v = 0; $v < $cnt; $v++)\r\n            if (is_string($val[$v])) {\r\n                if ($dotrim) $val[$v] = trim($val[$v]);\r\n                if ($dostrp) $val[$v] = strip_tags($val[$v]);\r\n                if ($addsla) $val[$v] = addslashes($val[$v]);\r\n                if ($remsla) $val[$v] = stripslashes($val[$v]);\r\n            } // if\r\n    } else {\r\n        if (is_string($val)) {\r\n            if ($dotrim) $val = trim($val);\r\n            if ($dostrp) $val = strip_tags($val);\r\n            if ($addsla) $val = addslashes($val);\r\n            if ($remsla) $val = stripslashes($val);\r\n        } // if\r\n    } // if\r\n    return $val;\r\n} // ff_getParam'),
(10, 1, 'FF', 'ff_getSubmit', 'Get submited data', 'Returns submitdata either as scalar, array or list. In case of list the values\r\nare returned as a string with the values concatenated by comma.\r\n\r\nExamples:\r\n\r\n// Get as scalar: Optionally pass a default value as second parameter.\r\n// If no default is provided, it will return NULL if no value was submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'');        // return NULL if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',1);      // return 1 if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',''foo'');  // return ''foo'' if not submitted\r\n\r\n    ff_query(\r\n        "insert into #__mytable(id, name) ".\r\n        "values (''".\r\n            ff_getSubmit(''id'').", ".\r\n            ff_getSubmit(''name'',''unknown'').\r\n        "'')"\r\n    );\r\n\r\n// Get as array: Pass FF_ARRAY as second Parameter\r\n\r\n    $myarr = $ff_getSubmit(''myarr'', FF_ARRAY);\r\n\r\n    foreach ($myarr as $myval) ...\r\n\r\n// Get as list: Pass either FF_LIST, FF_SLIST or FF_DLIST as 2nd parameter.\r\n\r\n    // FF_LIST will return numeric data unquoted and strings in single quotes:\r\n    //    1,2,''a'',4\r\n\r\n    // FF_SLIST will return all data single quoted:\r\n    //    ''1'',''2'',''a'',''4''\r\n\r\n    // FF_DLIST will return all data double quoted:\r\n    //    "1","2","a","4"\r\n\r\n    ff_query(\r\n        "delete from #__mytable ".\r\n        "where id in (".ff_getSubmit(''itemlist'',FF_LIST).")"\r\n    );', 'Untyped', 'function ff_getSubmit($name, $default=null)\r\n{\r\n    global $ff_processor;\r\n\r\n    switch ((string)$default) {\r\n        case FF_ARRAY: $value = array(); break;\r\n        case FF_LIST : \r\n        case FF_SLIST:\r\n        case FF_DLIST: $value = ''''; break;\r\n        default      : $value = $default;\r\n    } // switch\r\n    foreach ($ff_processor->submitdata as $data)\r\n        if ($data[_FF_DATA_NAME]==$name) {\r\n            $q = '''';\r\n            switch ((string)$default) {\r\n                case FF_ARRAY:\r\n                    $value[] = $data[_FF_DATA_VALUE];\r\n                    break;\r\n                case FF_SLIST:\r\n                    $q = "''";\r\n                case FF_DLIST:\r\n                    if ($q=='''') $q = ''"'';\r\n                case FF_LIST:\r\n                    if ($q=='''' && !is_numeric($data[_FF_DATA_VALUE])) $q = "''";\r\n                    if ($value!='''') $value.='','';\r\n                    $value .= $q.$data[_FF_DATA_VALUE].$q;\r\n                    break;\r\n                default:\r\n                    return $data[_FF_DATA_VALUE];\r\n            } // switch\r\n         } // if\r\n    return $value;\r\n} // ff_getSubmit'),
(11, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString($text)\r\n{\r\n    return impstring($text);\r\n} // ff_impString'),
(12, 1, 'FF', 'ff_InitLib', 'Init Library', 'A collection of useful functions for use in form pieces. \r\n\r\nInclude by: \r\n\r\n    $this->execPieceByName(''ff_InitLib'');', 'Before Form', '//+trace high none\r\nif (!defined(''FF_DIE''))                    $this->execPieceByName(''ff_Constants'');\r\nif (!function_exists(''ff_expstring''))      $this->execPieceByName(''ff_expstring'');\r\nif (!function_exists(''ff_makePageUrl''))    $this->execPieceByName(''ff_makePageUrl'');\r\nif (!function_exists(''ff_makeFormUrl''))    $this->execPieceByName(''ff_makeFormUrl'');\r\nif (!function_exists(''ff_makeSelfUrl''))    $this->execPieceByName(''ff_makeSelfUrl'');\r\nif (!function_exists(''ff_die''))            $this->execPieceByName(''ff_die'');\r\nif (!function_exists(''ff_dying''))          $this->execPieceByName(''ff_dying'');\r\nif (!function_exists(''ff_redirect''))       $this->execPieceByName(''ff_redirect'');\r\nif (!function_exists(''ff_redirectParent'')) $this->execPieceByName(''ff_redirectParentX'');\r\nif (!function_exists(''ff_redirectPage''))   $this->execPieceByName(''ff_redirectPage'');\r\nif (!function_exists(''ff_redirectForm''))   $this->execPieceByName(''ff_redirectForm'');\r\nif (!function_exists(''ff_redirectSelf''))   $this->execPieceByName(''ff_redirectSelf'');\r\nif (!function_exists(''ff_setChecked''))     $this->execPieceByName(''ff_setCheckedX'');\r\nif (!function_exists(''ff_setSelected''))    $this->execPieceByName(''ff_setSelectedX'');\r\nif (!function_exists(''ff_setValue''))       $this->execPieceByName(''ff_setValueX'');\r\nif (!function_exists(''ff_getPageByName''))  $this->execPieceByName(''ff_getPageByNameX'');\r\nif (!function_exists(''ff_getParam''))       $this->execPieceByName(''ff_getParam'');\r\nif (!function_exists(''ff_getSubmit''))      $this->execPieceByName(''ff_getSubmit'');\r\nif (!function_exists(''ff_impString''))      $this->execPieceByName(''ff_impString'');\r\nif (!function_exists(''ff_expString''))      $this->execPieceByName(''ff_expString'');\r\nif (!function_exists(''ff_securityImage''))  $this->execPieceByName(''ff_securityImage'');\r\nif (!function_exists(''ff_select''))         $this->execPieceByName(''ff_select'');\r\nif (!function_exists(''ff_selectValue''))    $this->execPieceByName(''ff_selectValue'');\r\nif (!function_exists(''ff_query''))          $this->execPieceByName(''ff_query'');\r\nif (!function_exists(''ff_markdown''))       $this->execPieceByName(''ff_markdown'');'),
(13, 1, 'FF', 'ff_makeFormUrl', 'Make URL to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeFormUrl($name, $params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeFormUrl(\r\n       ''OtherForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_makeFormUrl($name, $params='''')\r\n{\r\n    global $ff_processor, $ff_otherparams;\r\n    $url = '''';\r\n    switch ($ff_processor->runmode) {\r\n        case 2: // preview\r\n        case 1: // backend\r\n            $url .= ''administrator/index2.php?option=com_breezingforms&act=run''.\r\n                    ''&ff_name=''.urlencode($name);\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            break;\r\n        default: // frontend\r\n            $url .= ''index.php?ff_name=''.urlencode($name);\r\n            if ($ff_otherparams[''option''] == ''com_breezingforms'') {\r\n                reset($ff_otherparams);\r\n                while (list($prop, $val) = each($ff_otherparams))\r\n                    $url .= ''&''.urlencode($prop).''=''.urlencode($val);\r\n            } else\r\n                $url .= ''&option=com_breezingforms'';\r\n            if ($ff_processor->target > 1) $url .= ''&ff_target=''.$ff_processor->target;\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            if ($ff_processor->align !=1) $url .= ''&ff_align=''.$ff_processor->align;\r\n            if ($ff_processor->top>0) $url .= ''&ff_top=''.$ff_processor->top;\r\n    } // switch\r\n    return ff_makePageUrl($url. $params);\r\n} // ff_makeFormUrl'),
(14, 1, 'FF', 'ff_makePageUrl', 'Make URL to other page', 'Builds an URL to another mambo page\r\n\r\nCall: \r\n\r\n    $url = ff_makePageUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makePageUrl(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_makePageUrl($params='''')\r\n{\r\n    $url = ''{mossite}'';\r\n    if ($params != '''') {\r\n        $len = strlen($url);\r\n        if ($len > 0 && $url{$len-1} != ''/'') $url .= ''/'';\r\n        $url .= $params;\r\n    } // if\r\n    return $url;\r\n} // ff_makePageUrl'),
(15, 1, 'FF', 'ff_makeSelfUrl', 'Make URL to same form', 'Make an URL to the same form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeSelfUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeSelfUrl(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_makeSelfUrl($params='''')\r\n{\r\n    global $ff_processor;\r\n    return ff_makeFormUrl($ff_processor->formrow->name, $params);\r\n} // ff_makeSelfUrl'),
(16, 1, 'FF', 'ff_markdown', 'Markdown tagging for facile forms', 'Convert text marked up by ''Markdown'' into HTML.\r\n\r\nInclude by: \r\n\r\n    if (!function_exists(''ff_markdown'')) $this->execPieceByName(''ff_markdown'');\r\n\r\nCall syntax: \r\n\r\n    $html = ff_markdown($text);', 'Untyped', 'function ff_markdown($text)\r\n{\r\n    global $ff_processor, $ff_compath;\r\n\r\n    // do the standard Markdown processing first\r\n    if (!function_exists(''Markdown'')) require_once($ff_compath.''/markdown.php'');\r\n    $html = Markdown($text);\r\n\r\n    // now fix <a href...> tags\r\n    $html = preg_replace(\r\n        "/(\\\\<a href=[^\\\\>]+)/i",    // search pattern\r\n        "\\${1} target=\\"_parent\\"",  // replacement\r\n        $html\r\n    );       \r\n    return $html;\r\n} // ff_markdown'),
(17, 1, 'FF', 'ff_query', 'Non-select queries against db', 'Execute a simple db query.\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_query'')) $this->execPieceByName(''ff_query'');\r\n\r\nCall syntax:\r\n\r\n    [$newid = ] ff_query($sql [, $insert = 0]);\r\n\r\n    $sql:    Sql statement to call\r\n    $insert: 1 = return key of auto column when inserting rows\r\n    $newid:  The key of the new row.', 'Untyped', 'function ff_query($sql, $insert=false, $error=FF_DIE)\r\n{\r\n    global $ff_processor;\r\n    $database = JFactory::getDBO();\r\n    if ($ff_processor->dying && $error!=FF_IGNOREDIE) return -1;\r\n    $database->setQuery($sql);\r\n    $database->query();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($insert) return $database->insertid();\r\n    } // if\r\n    return 0;\r\n} // ff_query'),
(18, 1, 'FF', 'ff_redirect', 'Basic redirection', 'Basic redirection routine supporting multiple targets and methods.\r\n\r\nCall:\r\n \r\nff_redirect($url [, $target=''self'' , $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $target = ''top'', ''parent'', ''self'' or ''blank''\r\n\r\n              ''top''    = redirect to the top browser window\r\n              ''parent'' = redirect to the parent frame\r\n              ''self''   = redirect in the same frame (the default)\r\n              ''blank''  = redirect to a new browser window \r\n                         (blank works with post method only)\r\n\r\n    $method = ''post'' or ''get''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirect(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''top''\r\n       );', 'Untyped', 'function ff_redirect($url, $target=''self'', $method=''post'')\r\n{\r\n    global $ff_processor, $ff_request;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    switch (strtolower($method)) {\r\n        case ''get'': {\r\n            switch (strtolower($target)) {\r\n                case ''top''   :\r\n                case ''parent'': break;\r\n                default      : $target = ''document'';\r\n            } // switch\r\n            echo ''<script type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 "onload=function() { ".$target.".location.href=''".$url."''; }".nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''</body>''.nl();\r\n            break;\r\n        } // url\r\n        default: { // post\r\n            $pos = strpos($url,''?'');\r\n            $ff_request = array();\r\n            if ($pos === false)\r\n                $action = $url;\r\n            else {\r\n                $action = substr($url,0,$pos);\r\n                addRequestParams(substr($url, $pos+1));\r\n            } // if\r\n            switch (strtolower($target)) {\r\n                case ''blank'' : $target = '' target="_blank"'';  break;\r\n                case ''top''   : $target = '' target="_top"'';    break;\r\n                case ''parent'': $target = '' target="_parent"''; break;\r\n                default      : $target = '' target="_self"'';\r\n            } // switch\r\n            echo ''<script language="javascript" type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 ''onload = function() { document.ff_redirect.submit(); }''.nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''<form action="''.$action.''" ''.\r\n                  ''method="post" ''.\r\n                  ''name="ff_redirect" id="ff_redirect" ''.\r\n                  ''enctype="multipart/form-data"''.\r\n                  $target.\r\n                 ''>''.nl();\r\n            while (list($prop, $val) = each($ff_request))\r\n                echo ''<input type="hidden" name="''.$prop.''" ''.\r\n                            ''value="''.htmlentities(urldecode($val)).''"/>''.nl();\r\n            echo ''</form>''.nl().\r\n                 ''</body>''.nl();\r\n        } // post\r\n    } // switch\r\n    exit;\r\n} // ff_redirect'),
(19, 1, 'FF', 'ff_redirectForm', 'Redirect to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    ff_redirectForm($name, $params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectForm(\r\n        $this, \r\n       ''SecondForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_redirectForm($name, $params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeFormUrl($name, $params), $method);\r\n} // ff_redirectForm'),
(20, 1, 'FF', 'ff_redirectPage', 'Redirect to other page', 'Redirects to another mambo page. \r\n\r\nCall: \r\n\r\n    ff_redirectPage($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectPage(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_redirectPage($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makePageUrl($params), $method);\r\n} // ff_redirectPage'),
(21, 1, 'FF', 'ff_redirectParentX', 'Redirect to parent window', 'Redirects to the parent window when runing in iframe, otherwise to self. \r\n\r\nff_redirectParent($url [, $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $method = ''post'' or ''url''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirectParent(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''url''\r\n       );', 'Untyped', 'function ff_redirectParent($url, $method = ''post'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->inframe) $target = ''parent''; else $target = ''self''; \r\n    ff_redirect($url, $target, $method);\r\n} // ff_redirectParent'),
(22, 1, 'FF', 'ff_redirectSelf', 'Redirect to same form', 'Redirects to the same form. \r\n\r\nCall: \r\n\r\n    ff_redirectSelf($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectSelf(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_redirectSelf($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeSelfUrl($params), $method);\r\n} // ff_redirectSelf'),
(23, 1, 'FF', 'ff_securityImage', 'Security Image', 'Create code to display the security image', 'Untyped', 'global $ff_seccode;\r\n\r\nif (!isset($this->record_id)) { $ff_seccode = null; }\r\n\r\nfunction ff_securityImage()\r\n{\r\n    global $ff_comsite, $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(''ff_seccode'', $ff_seccode);\r\n    } // if\r\n\r\n    return ''<img src="''.JURI::root().''ff_secimage.php?option=com_breezingforms&showSecImage=true" title="" alt="" />'';\r\n} // ff_securityImage'),
(24, 1, 'FF', 'ff_select', 'Select rows from db', 'Execute a select query\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_select'')) $this->execPieceByName(''ff_select'');\r\n\r\nCall syntax:\r\n\r\n    $rows = ff_select($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $rows:   List of row objects', 'Untyped', 'function ff_select($sql, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $rows = $database->loadObjectList();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        $rows = array();\r\n        if ($dienow) ff_die($error);\r\n    } else\r\n        $error = null;\r\n    return $rows;\r\n} // ff_select'),
(25, 1, 'FF', 'ff_selectValue', 'Select single value from db', 'Execute query to read a single value\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_selectValue'')) $this->execPieceByName(''ff_selectValue'');\r\n\r\nCall syntax:\r\n\r\n    $value = ff_selectValue($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $value:  The value returned by the database', 'Untyped', 'function ff_selectValue($sql, $def=null, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $value = $database->loadResult();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($value) return $value;\r\n    } // if\r\n    return $def;\r\n} // ff_selectValue'),
(26, 1, 'FF', 'ff_setCheckedX', 'Set checkbox/radiobutton checked', 'Set a radio button or checkbox checked. \r\n\r\nCall: \r\n\r\n    ff_setChecked(''name'', ''value'');', 'Untyped', 'function ff_setChecked($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name && $row->data1==$value)\r\n            $row->flag1 = 1;\r\n        unset($row);\r\n    } // for\r\n} // ff_setChecked'),
(27, 1, 'FF', 'ff_setSelectedX', 'Set a select list option to *selected*', 'Sets a select list option to selected. \r\n\r\nCall: \r\n\r\n    ff_setSelected(''name'', ''value'');', 'Untyped', 'function ff_setSelected($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data2 =\r\n                preg_replace(\r\n                    ''/(^|\\r\\n|\\n)(0|1);([^;]*);(''.$value.'')($|\\r\\n|\\n)/'',\r\n                    ''${1}1;${3};${4}${5}'',\r\n                    $row->data2\r\n                );\r\n        unset($row);\r\n    } // for\r\n} // ff_setSelected'),
(28, 1, 'FF', 'ff_setValueX', 'Set text, textarea, hidden value', 'Set value of a Static Text, Text, Textarea or Hidden Input. \r\n\r\nCall: \r\n\r\n    ff_setValue(''name'', ''value'');', 'Untyped', 'function ff_setValue($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data1 = $value;\r\n        unset($row);\r\n    } // for\r\n} // ff_setValue');
INSERT INTO `fb_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(29, 1, 'FF', 'Markdown', 'Original Markdown Processor', 'Converts text marked up by ''Markdown'' into HTML.\r\n\r\nPlease use ff_markdown() in forms instead of Markdown()', 'Untyped', '#\r\n# Markdown  -  A text-to-HTML conversion tool for web writers\r\n#\r\n# Copyright (c) 2004-2005 John Gruber\r\n# <http://daringfireball.net/projects/markdown/>\r\n#\r\n# Copyright (c) 2004-2005 Michel Fortin - PHP Port\r\n# <http://www.michelf.com/projects/php-markdown/>\r\n#\r\n\r\nglobal	$MarkdownPHPVersion, $MarkdownSyntaxVersion,\r\n		$md_empty_element_suffix, $md_tab_width,\r\n		$md_nested_brackets_depth, $md_nested_brackets,\r\n		$md_escape_table, $md_backslash_escape_table,\r\n		$md_list_level;\r\n\r\n$MarkdownPHPVersion    = ''1.0.1b''; # Mon 6 Jun 2005\r\n$MarkdownSyntaxVersion = ''1.0.1'';  # Sun 12 Dec 2004\r\n\r\n\r\n#\r\n# Global default settings:\r\n#\r\n$md_empty_element_suffix = " />";     # Change to ">" for HTML output\r\n$md_tab_width = 4;\r\n\r\n#\r\n# WordPress settings:\r\n#\r\n$md_wp_posts    = true;  # Set to false to remove Markdown from posts.\r\n$md_wp_comments = true;  # Set to false to remove Markdown from comments.\r\n\r\n\r\n# -- WordPress Plugin Interface -----------------------------------------------\r\n/*\r\nPlugin Name: Markdown\r\nPlugin URI: http://www.michelf.com/projects/php-markdown/\r\nDescription: <a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>\r\nVersion: 1.0.1b\r\nAuthor: Michel Fortin\r\nAuthor URI: http://www.michelf.com/\r\n*/\r\nif (isset($wp_version)) {\r\n	# More details about how it works here:\r\n	# <http://www.michelf.com/weblog/2005/wordpress-text-flow-vs-markdown/>\r\n\r\n	# Post content and excerpts\r\n	if ($md_wp_posts) {\r\n		remove_filter(''the_content'',  ''wpautop'');\r\n		remove_filter(''the_excerpt'',  ''wpautop'');\r\n		add_filter(''the_content'',     ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''trim'', 7);\r\n		add_filter(''the_excerpt'',     ''md_add_p'');\r\n		add_filter(''the_excerpt_rss'', ''md_strip_p'');\r\n\r\n		remove_filter(''content_save_pre'',  ''balanceTags'', 50);\r\n		remove_filter(''excerpt_save_pre'',  ''balanceTags'', 50);\r\n		add_filter(''the_content'',  	  ''balanceTags'', 50);\r\n		add_filter(''get_the_excerpt'', ''balanceTags'', 9);\r\n\r\n		function md_add_p($text) {\r\n			if (strlen($text) == 0) return;\r\n			if (strcasecmp(substr($text, -3), ''<p>'') == 0) return $text;\r\n			return ''<p>''.$text.''</p>'';\r\n		}\r\n		function md_strip_p($t) { return preg_replace(''{</?[pP]>}'', '''', $t); }\r\n	}\r\n\r\n	# Comments\r\n	if ($md_wp_comments) {\r\n		remove_filter(''comment_text'', ''wpautop'');\r\n		remove_filter(''comment_text'', ''make_clickable'');\r\n		add_filter(''pre_comment_content'', ''Markdown'', 6);\r\n		add_filter(''pre_comment_content'', ''md_hide_tags'', 8);\r\n		add_filter(''pre_comment_content'', ''md_show_tags'', 12);\r\n		add_filter(''get_comment_text'',    ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''md_strip_p'', 7);\r\n\r\n		global $md_hidden_tags;\r\n		$md_hidden_tags = array(\r\n			''<p>''	=> md5(''<p>''),		''</p>''	=> md5(''</p>''),\r\n			''<pre>''	=> md5(''<pre>''),	''</pre>''=> md5(''</pre>''),\r\n			''<ol>''	=> md5(''<ol>''),		''</ol>''	=> md5(''</ol>''),\r\n			''<ul>''	=> md5(''<ul>''),		''</ul>''	=> md5(''</ul>''),\r\n			''<li>''	=> md5(''<li>''),		''</li>''	=> md5(''</li>''),\r\n			);\r\n\r\n		function md_hide_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_keys($md_hidden_tags),\r\n								array_values($md_hidden_tags), $text);\r\n		}\r\n		function md_show_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_values($md_hidden_tags),\r\n								array_keys($md_hidden_tags), $text);\r\n		}\r\n	}\r\n}\r\n\r\n\r\n# -- bBlog Plugin Info --------------------------------------------------------\r\nfunction identify_modifier_markdown() {\r\n	global $MarkdownPHPVersion;\r\n	return array(\r\n		''name''			=> ''markdown'',\r\n		''type''			=> ''modifier'',\r\n		''nicename''		=> ''Markdown'',\r\n		''description''	=> ''A text-to-HTML conversion tool for web writers'',\r\n		''authors''		=> ''Michel Fortin and John Gruber'',\r\n		''licence''		=> ''GPL'',\r\n		''version''		=> $MarkdownPHPVersion,\r\n		''help''			=> ''<a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>''\r\n	);\r\n}\r\n\r\n# -- Smarty Modifier Interface ------------------------------------------------\r\nfunction smarty_modifier_markdown($text) {\r\n	return Markdown($text);\r\n}\r\n\r\n# -- Textile Compatibility Mode -----------------------------------------------\r\n# Rename this file to "classTextile.php" and it can replace Textile anywhere.\r\nif (strcasecmp(substr(__FILE__, -16), "classTextile.php") == 0) {\r\n	# Try to include PHP SmartyPants. Should be in the same directory.\r\n	@include_once ''smartypants.php'';\r\n	# Fake Textile class. It calls Markdown instead.\r\n	class Textile {\r\n		function TextileThis($text, $lite='''', $encode='''', $noimage='''', $strict='''') {\r\n			if ($lite == '''' && $encode == '''')   $text = Markdown($text);\r\n			if (function_exists(''SmartyPants'')) $text = SmartyPants($text);\r\n			return $text;\r\n		}\r\n	}\r\n}\r\n\r\n\r\n\r\n#\r\n# Globals:\r\n#\r\n\r\n# Regex to match balanced [brackets].\r\n# Needed to insert a maximum bracked depth while converting to PHP.\r\n$md_nested_brackets_depth = 6;\r\n$md_nested_brackets =\r\n	str_repeat(''(?>[^\\[\\]]+|\\['', $md_nested_brackets_depth).\r\n	str_repeat(''\\])*'', $md_nested_brackets_depth);\r\n\r\n# Table of hash values for escaped characters:\r\n$md_escape_table = array(\r\n	"\\\\" => md5("\\\\"),\r\n	"`" => md5("`"),\r\n	"*" => md5("*"),\r\n	"_" => md5("_"),\r\n	"{" => md5("{"),\r\n	"}" => md5("}"),\r\n	"[" => md5("["),\r\n	"]" => md5("]"),\r\n	"(" => md5("("),\r\n	")" => md5(")"),\r\n	">" => md5(">"),\r\n	"#" => md5("#"),\r\n	"+" => md5("+"),\r\n	"-" => md5("-"),\r\n	"." => md5("."),\r\n	"!" => md5("!")\r\n);\r\n# Create an identical table but for escaped characters.\r\n$md_backslash_escape_table;\r\nforeach ($md_escape_table as $key => $char)\r\n	$md_backslash_escape_table["\\\\$key"] = $char;\r\n\r\n\r\nfunction Markdown($text) {\r\n#\r\n# Main function. The order in which other subs are called here is\r\n# essential. Link and image substitutions need to happen before\r\n# _EscapeSpecialCharsWithinTagAttributes(), so that any *''s or _''s in the <a>\r\n# and <img> tags get encoded.\r\n#\r\n	# Clear the global hashes. If we don''t clear these, you get conflicts\r\n	# from other articles when generating a page which contains more than\r\n	# one article (e.g. an index page that shows the N most recent\r\n	# articles):\r\n	global $md_urls, $md_titles, $md_html_blocks;\r\n	$md_urls = array();\r\n	$md_titles = array();\r\n	$md_html_blocks = array();\r\n\r\n	# Standardize line endings:\r\n	#   DOS to Unix and Mac to Unix\r\n	$text = str_replace(array("\\r\\n", "\\r"), "\\n", $text);\r\n\r\n	# Make sure $text ends with a couple of newlines:\r\n	$text .= "\\n\\n";\r\n\r\n	# Convert all tabs to spaces.\r\n	$text = _Detab($text);\r\n\r\n	# Strip any lines consisting only of spaces and tabs.\r\n	# This makes subsequent regexen easier to write, because we can\r\n	# match consecutive blank lines with /\\n+/ instead of something\r\n	# contorted like /[ \\t]*\\n+/ .\r\n	$text = preg_replace(''/^[ \\t]+$/m'', '''', $text);\r\n\r\n	# Turn block-level HTML blocks into hash entries\r\n	$text = _HashHTMLBlocks($text);\r\n\r\n	# Strip link definitions, store in hashes.\r\n	$text = _StripLinkDefinitions($text);\r\n\r\n	$text = _RunBlockGamut($text);\r\n\r\n	$text = _UnescapeSpecialChars($text);\r\n\r\n	return $text . "\\n";\r\n}\r\n\r\n\r\nfunction _StripLinkDefinitions($text) {\r\n#\r\n# Strips link definitions from text, stores the URLs and titles in\r\n# hash references.\r\n#\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Link defs are in the form: ^[id]: url "optional title"\r\n	$text = preg_replace_callback(''{\r\n						^[ ]{0,''.$less_than_tab.''}\\[(.+)\\]:	# id = $1\r\n						  [ \\t]*\r\n						  \\n?				# maybe *one* newline\r\n						  [ \\t]*\r\n						<?(\\S+?)>?			# url = $2\r\n						  [ \\t]*\r\n						  \\n?				# maybe one newline\r\n						  [ \\t]*\r\n						(?:\r\n							(?<=\\s)			# lookbehind for whitespace\r\n							["(]\r\n							(.+?)			# title = $3\r\n							[")]\r\n							[ \\t]*\r\n						)?	# title is optional\r\n						(?:\\n+|\\Z)\r\n		}xm'',\r\n		''_StripLinkDefinitions_callback'',\r\n		$text);\r\n	return $text;\r\n}\r\nfunction _StripLinkDefinitions_callback($matches) {\r\n	global $md_urls, $md_titles;\r\n	$link_id = strtolower($matches[1]);\r\n	$md_urls[$link_id] = _EncodeAmpsAndAngles($matches[2]);\r\n	if (isset($matches[3]))\r\n		$md_titles[$link_id] = str_replace(''"'', ''&quot;'', $matches[3]);\r\n	return ''''; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _HashHTMLBlocks($text) {\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Hashify HTML blocks:\r\n	# We only want to do this for block-level HTML tags, such as headers,\r\n	# lists, and tables. That''s because we still want to wrap <p>s around\r\n	# "paragraphs" that are wrapped in non-block-level tags, such as anchors,\r\n	# phrase emphasis, and spans. The list of tags we''re looking for is\r\n	# hard-coded:\r\n	$block_tags_a = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math|ins|del'';\r\n	$block_tags_b = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math'';\r\n\r\n	# First, look for nested blocks, e.g.:\r\n	# 	<div>\r\n	# 		<div>\r\n	# 		tags for inner block must be indented.\r\n	# 		</div>\r\n	# 	</div>\r\n	#\r\n	# The outermost tags must start at the left margin for this to match, and\r\n	# the inner nested divs must be indented.\r\n	# We need to do this before the next, more liberal match, because the next\r\n	# match will start at the first `<div>` and stop at the first `</div>`.\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_a)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	#\r\n	# Now match more liberally, simply from `\\n<tag>` to `</tag>\\n`\r\n	#\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_b)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					.*</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case just for <hr />. It was easier to make a special case than\r\n	# to make the other regex more complicated.\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					<(hr)				# start tag = $2\r\n					\\b					# word break\r\n					([^<>])*?			#\r\n					/?>					# the matching end tag\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n		}x'',\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case for standalone HTML comments:\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					(?s:\r\n						<!\r\n						(--.*?--\\s*)+\r\n						>\r\n					)\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n			}x'',\r\n			''_HashHTMLBlocks_callback'',\r\n			$text);\r\n\r\n	return $text;\r\n}\r\nfunction _HashHTMLBlocks_callback($matches) {\r\n	global $md_html_blocks;\r\n	$text = $matches[1];\r\n	$key = md5($text);\r\n	$md_html_blocks[$key] = $text;\r\n	return "\\n\\n$key\\n\\n"; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _RunBlockGamut($text) {\r\n#\r\n# These are all the transformations that form block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoHeaders($text);\r\n\r\n	# Do Horizontal Rules:\r\n	$text = preg_replace(\r\n		array(''{^[ ]{0,2}([ ]?\\*[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? -[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? _[ ]?){3,}[ \\t]*$}mx''),\r\n		"\\n<hr$md_empty_element_suffix\\n",\r\n		$text);\r\n\r\n	$text = _DoLists($text);\r\n	$text = _DoCodeBlocks($text);\r\n	$text = _DoBlockQuotes($text);\r\n\r\n	# We already ran _HashHTMLBlocks() before, in Markdown(), but that\r\n	# was to escape raw HTML in the original Markdown source. This time,\r\n	# we''re escaping the markup we''ve just created, so that we don''t wrap\r\n	# <p> tags around block-level tags.\r\n	$text = _HashHTMLBlocks($text);\r\n	$text = _FormParagraphs($text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _RunSpanGamut($text) {\r\n#\r\n# These are all the transformations that occur *within* block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoCodeSpans($text);\r\n\r\n	$text = _EscapeSpecialChars($text);\r\n\r\n	# Process anchor and image tags. Images must come first,\r\n	# because ![foo][f] looks like an anchor.\r\n	$text = _DoImages($text);\r\n	$text = _DoAnchors($text);\r\n\r\n	# Make links out of things like `<http://example.com/>`\r\n	# Must come after _DoAnchors(), because you can use < and >\r\n	# delimiters in inline links like [this](<url>).\r\n	$text = _DoAutoLinks($text);\r\n	$text = _EncodeAmpsAndAngles($text);\r\n	$text = _DoItalicsAndBold($text);\r\n\r\n	# Do hard breaks:\r\n	$text = preg_replace(''/ {2,}\\n/'', "<br$md_empty_element_suffix\\n", $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EscapeSpecialChars($text) {\r\n	global $md_escape_table;\r\n	$tokens = _TokenizeHTML($text);\r\n\r\n	$text = '''';   # rebuild $text from the tokens\r\n#	$in_pre = 0;  # Keep track of when we''re inside <pre> or <code> tags.\r\n#	$tags_to_skip = "!<(/?)(?:pre|code|kbd|script|math)[\\s>]!";\r\n\r\n	foreach ($tokens as $cur_token) {\r\n		if ($cur_token[0] == ''tag'') {\r\n			# Within tags, encode * and _ so they don''t conflict\r\n			# with their use in Markdown for italics and strong.\r\n			# We''re replacing each such character with its\r\n			# corresponding MD5 checksum value; this is likely\r\n			# overkill, but it should prevent us from colliding\r\n			# with the escape values by accident.\r\n			$cur_token[1] = str_replace(array(''*'', ''_''),\r\n				array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n				$cur_token[1]);\r\n			$text .= $cur_token[1];\r\n		} else {\r\n			$t = $cur_token[1];\r\n			$t = _EncodeBackslashEscapes($t);\r\n			$text .= $t;\r\n		}\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoAnchors($text) {\r\n#\r\n# Turn Markdown link shortcuts into XHTML <a> tags.\r\n#\r\n	global $md_nested_brackets;\r\n	#\r\n	# First, handle reference-style links: [link text] [id]\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(					# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\\\[\r\n			(.*?)		# id = $3\r\n		  \\\\]\r\n		)\r\n		}xs",\r\n		''_DoAnchors_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, inline-style links: [link text](url "optional title")\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(				# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n		  \\\\(			# literal paren\r\n			[ \\\\t]*\r\n			<?(.*?)>?	# href = $3\r\n			[ \\\\t]*\r\n			(			# $4\r\n			  ([''\\"])	# quote char = $5\r\n			  (.*?)		# Title = $6\r\n			  \\\\5		# matching quote\r\n			)?			# title is optional\r\n		  \\\\)\r\n		)\r\n		}xs",\r\n		''_DoAnchors_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoAnchors_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$link_text   = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($link_text); # for shortcut links like [this][].\r\n	}\r\n\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<a href=\\"$url\\"";\r\n		if ( isset( $md_titles[$link_id] ) ) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'',     ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= ">$link_text</a>";\r\n	}\r\n	else {\r\n		$result = $whole_match;\r\n	}\r\n	return $result;\r\n}\r\nfunction _DoAnchors_inline_callback($matches) {\r\n	global $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$link_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			=& $matches[6];\r\n\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<a href=\\"$url\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(''"'', ''&quot;'', $title);\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\"";\r\n	}\r\n\r\n	$result .= ">$link_text</a>";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoImages($text) {\r\n#\r\n# Turn Markdown image shortcuts into <img> tags.\r\n#\r\n	global $md_nested_brackets;\r\n\r\n	#\r\n	# First, handle reference-style labeled images: ![alt text][id]\r\n	#\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\[\r\n			(.*?)		# id = $3\r\n		  \\]\r\n\r\n		)\r\n		}xs'',\r\n		''_DoImages_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, handle inline images:  ![alt text](url "optional title")\r\n	# Don''t forget: encode * and _\r\n\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n		  \\(			# literal paren\r\n			[ \\t]*\r\n			<?(\\S+?)>?	# src url = $3\r\n			[ \\t]*\r\n			(			# $4\r\n			  ([\\''"])	# quote char = $5\r\n			  (.*?)		# title = $6\r\n			  \\5		# matching quote\r\n			  [ \\t]*\r\n			)?			# title is optional\r\n		  \\)\r\n		)\r\n		}xs'',\r\n		''_DoImages_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoImages_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$alt_text    = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($alt_text); # for shortcut links like ![this][].\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n		if (isset($md_titles[$link_id])) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'', ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= $md_empty_element_suffix;\r\n	}\r\n	else {\r\n		# If there''s no such link ID, leave intact:\r\n		$result = $whole_match;\r\n	}\r\n\r\n	return $result;\r\n}\r\nfunction _DoImages_inline_callback($matches) {\r\n	global $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$alt_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			= '''';\r\n	if (isset($matches[6])) {\r\n		$title		= $matches[6];\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	$title    = str_replace(''"'', ''&quot;'', $title);\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\""; # $title already quoted\r\n	}\r\n	$result .= $md_empty_element_suffix;\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoHeaders($text) {\r\n	# Setext-style headers:\r\n	#	  Header 1\r\n	#	  ========\r\n	#\r\n	#	  Header 2\r\n	#	  --------\r\n	#\r\n	$text = preg_replace(\r\n		array(''{ ^(.+)[ \\t]*\\n=+[ \\t]*\\n+ }emx'',\r\n			  ''{ ^(.+)[ \\t]*\\n-+[ \\t]*\\n+ }emx''),\r\n		array("''<h1>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h1>\\n\\n''",\r\n			  "''<h2>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h2>\\n\\n''"),\r\n		$text);\r\n\r\n	# atx-style headers:\r\n	#	# Header 1\r\n	#	## Header 2\r\n	#	## Header 2 with closing hashes ##\r\n	#	...\r\n	#	###### Header 6\r\n	#\r\n	$text = preg_replace("{\r\n			^(\\\\#{1,6})	# $1 = string of #''s\r\n			[ \\\\t]*\r\n			(.+?)		# $2 = Header text\r\n			[ \\\\t]*\r\n			\\\\#*			# optional closing #''s (not counted)\r\n			\\\\n+\r\n		}xme",\r\n		"''<h''.strlen(''\\\\1'').''>''._RunSpanGamut(_UnslashQuotes(''\\\\2'')).''</h''.strlen(''\\\\1'').''>\\n\\n''",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoLists($text) {\r\n#\r\n# Form HTML ordered (numbered) and unordered (bulleted) lists.\r\n#\r\n	global $md_tab_width, $md_list_level;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$markers = array($marker_ul, $marker_ol);\r\n\r\n	foreach ($markers as $marker) {\r\n		# Re-usable pattern to match any entirel ul or ol list:\r\n		$whole_list = ''\r\n			(								# $1 = whole list\r\n			  (								# $2\r\n				[ ]{0,''.$less_than_tab.''}\r\n				(''.$marker.'')				# $3 = first list item marker\r\n				[ \\t]+\r\n			  )\r\n			  (?s:.+?)\r\n			  (								# $4\r\n				  \\z\r\n				|\r\n				  \\n{2,}\r\n				  (?=\\S)\r\n				  (?!						# Negative lookahead for another list item marker\r\n					[ \\t]*\r\n					''.$marker.''[ \\t]+\r\n				  )\r\n			  )\r\n			)\r\n		''; // mx\r\n\r\n		# We use a different prefix before nested lists than top-level lists.\r\n		# See extended comment in _ProcessListItems().\r\n\r\n		if ($md_list_level) {\r\n			$text = preg_replace_callback(''{\r\n					^\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_top'', $text);\r\n		}\r\n		else {\r\n			$text = preg_replace_callback(''{\r\n					(?:(?<=\\n\\n)|\\A\\n?)\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_nested'', $text);\r\n		}\r\n	}\r\n\r\n	return $text;\r\n}\r\nfunction _DoLists_callback_top($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n\r\n	# Trim any trailing whitespace, to put the closing `</$list_type>`\r\n	# up on the preceding line, to get it past the current stupid\r\n	# HTML block parser. This is a hack to work around the terrible\r\n	# hack that is the HTML block parser.\r\n	$result = rtrim($result);\r\n	$result = "<$list_type>" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\nfunction _DoLists_callback_nested($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n	$result = "<$list_type>\\n" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _ProcessListItems($list_str, $marker_any) {\r\n#\r\n#	Process the contents of a single ordered or unordered list, splitting it\r\n#	into individual list items.\r\n#\r\n	global $md_list_level;\r\n\r\n	# The $md_list_level global keeps track of when we''re inside a list.\r\n	# Each time we enter a list, we increment it; when we leave a list,\r\n	# we decrement. If it''s zero, we''re not in a list anymore.\r\n	#\r\n	# We do this because when we''re not inside a list, we want to treat\r\n	# something like this:\r\n	#\r\n	#		I recommend upgrading to version\r\n	#		8. Oops, now this line is treated\r\n	#		as a sub-list.\r\n	#\r\n	# As a single paragraph, despite the fact that the second line starts\r\n	# with a digit-period-space sequence.\r\n	#\r\n	# Whereas when we''re inside a list (or sub-list), that line will be\r\n	# treated as the start of a sub-list. What a kludge, huh? This is\r\n	# an aspect of Markdown''s syntax that''s hard to parse perfectly\r\n	# without resorting to mind-reading. Perhaps the solution is to\r\n	# change the syntax rules such that sub-lists must start with a\r\n	# starting cardinal number; e.g. "1." or "a.".\r\n\r\n	$md_list_level++;\r\n\r\n	# trim trailing blank lines:\r\n	$list_str = preg_replace("/\\n{2,}\\\\z/", "\\n", $list_str);\r\n\r\n	$list_str = preg_replace_callback(''{\r\n		(\\n)?							# leading line = $1\r\n		(^[ \\t]*)						# leading whitespace = $2\r\n		(''.$marker_any.'') [ \\t]+		# list marker = $3\r\n		((?s:.+?)						# list item text   = $4\r\n		(\\n{1,2}))\r\n		(?= \\n* (\\z | \\2 (''.$marker_any.'') [ \\t]+))\r\n		}xm'',\r\n		''_ProcessListItems_callback'', $list_str);\r\n\r\n	$md_list_level--;\r\n	return $list_str;\r\n}\r\nfunction _ProcessListItems_callback($matches) {\r\n	$item = $matches[4];\r\n	$leading_line =& $matches[1];\r\n	$leading_space =& $matches[2];\r\n\r\n	if ($leading_line || preg_match(''/\\n{2,}/'', $item)) {\r\n		$item = _RunBlockGamut(_Outdent($item));\r\n	}\r\n	else {\r\n		# Recursion for sub-lists:\r\n		$item = _DoLists(_Outdent($item));\r\n		$item = preg_replace(''/\\n+$/'', '''', $item);\r\n		$item = _RunSpanGamut($item);\r\n	}\r\n\r\n	return "<li>" . $item . "</li>\\n";\r\n}\r\n\r\n\r\nfunction _DoCodeBlocks($text) {\r\n#\r\n#	Process Markdown `<pre><code>` blocks.\r\n#\r\n	global $md_tab_width;\r\n	$text = preg_replace_callback("{\r\n			(?:\\\\n\\\\n|\\\\A)\r\n			(	            # $1 = the code block -- one or more lines, starting with a space/tab\r\n			  (?:\r\n				(?:[ ]\\{$md_tab_width} | \\\\t)  # Lines must start with a tab or a tab-width of spaces\r\n				.*\\\\n+\r\n			  )+\r\n			)\r\n			((?=^[ ]{0,$md_tab_width}\\\\S)|\\\\Z)	# Lookahead for non-space at line-start, or end of doc\r\n		}xm",\r\n		''_DoCodeBlocks_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeBlocks_callback($matches) {\r\n	$codeblock = $matches[1];\r\n\r\n	$codeblock = _EncodeCode(_Outdent($codeblock));\r\n//	$codeblock = _Detab($codeblock);\r\n	# trim leading newlines and trailing whitespace\r\n	$codeblock = preg_replace(array(''/\\A\\n+/'', ''/\\s+\\z/''), '''', $codeblock);\r\n\r\n	$result = "\\n\\n<pre><code>" . $codeblock . "\\n</code></pre>\\n\\n";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoCodeSpans($text) {\r\n#\r\n# 	*	Backtick quotes are used for <code></code> spans.\r\n#\r\n# 	*	You can use multiple backticks as the delimiters if you want to\r\n# 		include literal backticks in the code span. So, this input:\r\n#\r\n#		  Just type ``foo `bar` baz`` at the prompt.\r\n#\r\n#	  	Will translate to:\r\n#\r\n#		  <p>Just type <code>foo `bar` baz</code> at the prompt.</p>\r\n#\r\n#		There''s no arbitrary limit to the number of backticks you\r\n#		can use as delimters. If you need three consecutive backticks\r\n#		in your code, use four for delimiters, etc.\r\n#\r\n#	*	You can use spaces to get literal backticks at the edges:\r\n#\r\n#		  ... type `` `bar` `` ...\r\n#\r\n#	  	Turns to:\r\n#\r\n#		  ... type <code>`bar`</code> ...\r\n#\r\n	$text = preg_replace_callback(''@\r\n			(?<!\\\\\\)	# Character before opening ` can\\''t be a backslash\r\n			(`+)		# $1 = Opening run of `\r\n			(.+?)		# $2 = The code block\r\n			(?<!`)\r\n			\\1			# Matching closer\r\n			(?!`)\r\n		@xs'',\r\n		''_DoCodeSpans_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeSpans_callback($matches) {\r\n	$c = $matches[2];\r\n	$c = preg_replace(''/^[ \\t]*/'', '''', $c); # leading whitespace\r\n	$c = preg_replace(''/[ \\t]*$/'', '''', $c); # trailing whitespace\r\n	$c = _EncodeCode($c);\r\n	return "<code>$c</code>";\r\n}\r\n\r\n\r\nfunction _EncodeCode($_) {\r\n#\r\n# Encode/escape certain characters inside Markdown code runs.\r\n# The point is that in code, these characters are literals,\r\n# and lose their special Markdown meanings.\r\n#\r\n	global $md_escape_table;\r\n\r\n	# Encode all ampersands; HTML entities are not\r\n	# entities within a Markdown code span.\r\n	$_ = str_replace(''&'', ''&amp;'', $_);\r\n\r\n	# Do the angle bracket song and dance:\r\n	$_ = str_replace(array(''<'',    ''>''),\r\n					 array(''&lt;'', ''&gt;''), $_);\r\n\r\n	# Now, escape characters that are magic in Markdown:\r\n	$_ = str_replace(array_keys($md_escape_table),\r\n					 array_values($md_escape_table), $_);\r\n\r\n	return $_;\r\n}\r\n\r\n\r\nfunction _DoItalicsAndBold($text) {\r\n	# <strong> must go first:\r\n	$text = preg_replace(''{\r\n			(						# $1: Marker\r\n				(?<!\\*\\*) \\*\\* |	#     (not preceded by two chars of\r\n				(?<!__)   __		#      the same marker)\r\n			)\r\n			(?=\\S) 					# Not followed by whitespace\r\n			(?!\\1)					#   or two others marker chars.\r\n			(						# $2: Content\r\n				(?:\r\n					[^*_]+?			# Anthing not em markers.\r\n				|\r\n									# Balence any regular emphasis inside.\r\n					([*_]) (?=\\S) .+? (?<=\\S) \\3	# $3: em char (* or _)\r\n				|\r\n					(?! \\1 ) .		# Allow unbalenced * and _.\r\n				)+?\r\n			)\r\n			(?<=\\S) \\1				# End mark not preceded by whitespace.\r\n		}sx'',\r\n		''<strong>\\2</strong>'', $text);\r\n	# Then <em>:\r\n	$text = preg_replace(\r\n		''{ ( (?<!\\*)\\* | (?<!_)_ ) (?=\\S) (?! \\1) (.+?) (?<=\\S) \\1 }sx'',\r\n		''<em>\\2</em>'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoBlockQuotes($text) {\r\n	$text = preg_replace_callback(''/\r\n		  (								# Wrap whole match in $1\r\n			(\r\n			  ^[ \\t]*>[ \\t]?			# ">" at the start of a line\r\n				.+\\n					# rest of the first line\r\n			  (.+\\n)*					# subsequent consecutive lines\r\n			  \\n*						# blanks\r\n			)+\r\n		  )\r\n		/xm'',\r\n		''_DoBlockQuotes_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoBlockQuotes_callback($matches) {\r\n	$bq = $matches[1];\r\n	# trim one level of quoting - trim whitespace-only lines\r\n	$bq = preg_replace(array(''/^[ \\t]*>[ \\t]?/m'', ''/^[ \\t]+$/m''), '''', $bq);\r\n	$bq = _RunBlockGamut($bq);		# recurse\r\n\r\n	$bq = preg_replace(''/^/m'', "  ", $bq);\r\n	# These leading spaces screw with <pre> content, so we need to fix that:\r\n	$bq = preg_replace_callback(''{(\\s*<pre>.+?</pre>)}sx'',\r\n								''_DoBlockQuotes_callback2'', $bq);\r\n\r\n	return "<blockquote>\\n$bq\\n</blockquote>\\n\\n";\r\n}\r\nfunction _DoBlockQuotes_callback2($matches) {\r\n	$pre = $matches[1];\r\n	$pre = preg_replace(''/^  /m'', '''', $pre);\r\n	return $pre;\r\n}\r\n\r\n\r\nfunction _FormParagraphs($text) {\r\n#\r\n#	Params:\r\n#		$text - string to process with html <p> tags\r\n#\r\n	global $md_html_blocks;\r\n\r\n	# Strip leading and trailing lines:\r\n	$text = preg_replace(array(''/\\A\\n+/'', ''/\\n+\\z/''), '''', $text);\r\n\r\n	$grafs = preg_split(''/\\n{2,}/'', $text, -1, PREG_SPLIT_NO_EMPTY);\r\n\r\n	#\r\n	# Wrap <p> tags.\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (!isset( $md_html_blocks[$value] )) {\r\n			$value = _RunSpanGamut($value);\r\n			$value = preg_replace(''/^([ \\t]*)/'', ''<p>'', $value);\r\n			$value .= "</p>";\r\n			$grafs[$key] = $value;\r\n		}\r\n	}\r\n\r\n	#\r\n	# Unhashify HTML blocks\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (isset( $md_html_blocks[$value] )) {\r\n			$grafs[$key] = $md_html_blocks[$value];\r\n		}\r\n	}\r\n\r\n	return implode("\\n\\n", $grafs);\r\n}\r\n\r\n\r\nfunction _EncodeAmpsAndAngles($text) {\r\n# Smart processing for ampersands and angle brackets that need to be encoded.\r\n\r\n	# Ampersand-encoding based entirely on Nat Irons''s Amputator MT plugin:\r\n	#   http://bumppo.net/projects/amputator/\r\n	$text = preg_replace(''/&(?!#?[xX]?(?:[0-9a-fA-F]+|\\w+);)/'',\r\n						 ''&amp;'', $text);;\r\n\r\n	# Encode naked <''s\r\n	$text = preg_replace(''{<(?![a-z/?\\$!])}i'', ''&lt;'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeBackslashEscapes($text) {\r\n#\r\n#	Parameter:  String.\r\n#	Returns:    The string, with after processing the following backslash\r\n#				escape sequences.\r\n#\r\n	global $md_escape_table, $md_backslash_escape_table;\r\n	# Must process escaped backslashes first.\r\n	return str_replace(array_keys($md_backslash_escape_table),\r\n					   array_values($md_backslash_escape_table), $text);\r\n}\r\n\r\n\r\nfunction _DoAutoLinks($text) {\r\n	$text = preg_replace("!<((https?|ftp):[^''\\">\\\\s]+)>!",\r\n						 ''<a href="\\1">\\1</a>'', $text);\r\n\r\n	# Email addresses: <address@domain.foo>\r\n	$text = preg_replace(''{\r\n		<\r\n        (?:mailto:)?\r\n		(\r\n			[-.\\w]+\r\n			\\@\r\n			[-a-z0-9]+(\\.[-a-z0-9]+)*\\.[a-z]+\r\n		)\r\n		>\r\n		}exi'',\r\n		"_EncodeEmailAddress(_UnescapeSpecialChars(_UnslashQuotes(''\\\\1'')))",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeEmailAddress($addr) {\r\n#\r\n#	Input: an email address, e.g. "foo@example.com"\r\n#\r\n#	Output: the email address as a mailto link, with each character\r\n#		of the address encoded as either a decimal or hex entity, in\r\n#		the hopes of foiling most address harvesting spam bots. E.g.:\r\n#\r\n#	  <a href="&#x6D;&#97;&#105;&#108;&#x74;&#111;:&#102;&#111;&#111;&#64;&#101;\r\n#		x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;">&#102;&#111;&#111;\r\n#		&#64;&#101;x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;</a>\r\n#\r\n#	Based by a filter by Matthew Wickline, posted to the BBEdit-Talk\r\n#	mailing list: <http://tinyurl.com/yu7ue>\r\n#\r\n	$addr = "mailto:" . $addr;\r\n	$length = strlen($addr);\r\n\r\n	# leave '':'' alone (to spot mailto: later)\r\n	$addr = preg_replace_callback(''/([^\\:])/'',\r\n								  ''_EncodeEmailAddress_callback'', $addr);\r\n\r\n	$addr = "<a href=\\"$addr\\">$addr</a>";\r\n	# strip the mailto: from the visible part\r\n	$addr = preg_replace(''/">.+?:/'', ''">'', $addr);\r\n\r\n	return $addr;\r\n}\r\nfunction _EncodeEmailAddress_callback($matches) {\r\n	$char = $matches[1];\r\n	$r = rand(0, 100);\r\n	# roughly 10% raw, 45% hex, 45% dec\r\n	# ''@'' *must* be encoded. I insist.\r\n	if ($r > 90 && $char != ''@'') return $char;\r\n	if ($r < 45) return ''&#x''.dechex(ord($char)).'';'';\r\n	return ''&#''.ord($char).'';'';\r\n}\r\n\r\n\r\nfunction _UnescapeSpecialChars($text) {\r\n#\r\n# Swap back in all the special characters we''ve hidden.\r\n#\r\n	global $md_escape_table;\r\n	return str_replace(array_values($md_escape_table),\r\n					   array_keys($md_escape_table), $text);\r\n}\r\n\r\n\r\n# _TokenizeHTML is shared between PHP Markdown and PHP SmartyPants.\r\n# We only define it if it is not already defined.\r\nif (!function_exists(''_TokenizeHTML'')) :\r\nfunction _TokenizeHTML($str) {\r\n#\r\n#   Parameter:  String containing HTML markup.\r\n#   Returns:    An array of the tokens comprising the input\r\n#               string. Each token is either a tag (possibly with nested,\r\n#               tags contained therein, such as <a href="<MTFoo>">, or a\r\n#               run of text between tags. Each element of the array is a\r\n#               two-element array; the first is either ''tag'' or ''text'';\r\n#               the second is the actual value.\r\n#\r\n#\r\n#   Regular expression derived from the _tokenize() subroutine in\r\n#   Brad Choate''s MTRegex plugin.\r\n#   <http://www.bradchoate.com/past/mtregex.php>\r\n#\r\n	$index = 0;\r\n	$tokens = array();\r\n\r\n	$match = ''(?s:<!(?:--.*?--\\s*)+>)|''.	# comment\r\n			 ''(?s:<\\?.*?\\?>)|''.				# processing instruction\r\n			 								# regular tags\r\n			 ''(?:<[/!$]?[-a-zA-Z0-9:]+\\b(?>[^"\\''>]+|"[^"]*"|\\''[^\\'']*\\'')*>)'';\r\n\r\n	$parts = preg_split("{($match)}", $str, -1, PREG_SPLIT_DELIM_CAPTURE);\r\n\r\n	foreach ($parts as $part) {\r\n		if (++$index % 2 && $part != '''')\r\n			$tokens[] = array(''text'', $part);\r\n		else\r\n			$tokens[] = array(''tag'', $part);\r\n	}\r\n\r\n	return $tokens;\r\n}\r\nendif;\r\n\r\n\r\nfunction _Outdent($text) {\r\n#\r\n# Remove one level of line-leading tabs or spaces\r\n#\r\n	global $md_tab_width;\r\n	return preg_replace("/^(\\\\t|[ ]{1,$md_tab_width})/m", "", $text);\r\n}\r\n\r\n\r\nfunction _Detab($text) {\r\n#\r\n# Replace tabs with the appropriate amount of space.\r\n#\r\n	global $md_tab_width;\r\n\r\n	# For each line we separate the line in blocks delemited by\r\n	# tab characters. Then we reconstruct every line by adding the\r\n	# appropriate number of space between each blocks.\r\n\r\n	$lines = explode("\\n", $text);\r\n	$text = "";\r\n\r\n	foreach ($lines as $line) {\r\n		# Split in blocks.\r\n		$blocks = explode("\\t", $line);\r\n		# Add each blocks to the line.\r\n		$line = $blocks[0];\r\n		unset($blocks[0]); # Do not add first block twice.\r\n		foreach ($blocks as $block) {\r\n			# Calculate amount of space, insert spaces, insert block.\r\n			$amount = $md_tab_width - strlen($line) % $md_tab_width;\r\n			$line .= str_repeat(" ", $amount) . $block;\r\n		}\r\n		$text .= "$line\\n";\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _UnslashQuotes($text) {\r\n#\r\n#	This function is useful to remove automaticaly slashed double quotes\r\n#	when using preg_replace and evaluating an expression.\r\n#	Parameter:  String.\r\n#	Returns:    The string with any slash-double-quote (\\") sequence replaced\r\n#				by a single double quote.\r\n#\r\n	return str_replace(''\\"'', ''"'', $text);\r\n}\r\n\r\n\r\n/*\r\n\r\nPHP Markdown\r\n============\r\n\r\nDescription\r\n-----------\r\n\r\nThis is a PHP translation of the original Markdown formatter written in\r\nPerl by John Gruber.\r\n\r\nMarkdown is a text-to-HTML filter; it translates an easy-to-read /\r\neasy-to-write structured text format into HTML. Markdown''s text format\r\nis most similar to that of plain text email, and supports features such\r\nas headers, *emphasis*, code blocks, blockquotes, and links.\r\n\r\nMarkdown''s syntax is designed not as a generic markup language, but\r\nspecifically to serve as a front-end to (X)HTML. You can use span-level\r\nHTML tags anywhere in a Markdown document, and you can use block level\r\nHTML tags (like <div> and <table> as well).\r\n\r\nFor more information about Markdown''s syntax, see:\r\n\r\n<http://daringfireball.net/projects/markdown/>\r\n\r\n\r\nBugs\r\n----\r\n\r\nTo file bug reports please send email to:\r\n\r\n<michel.fortin@michelf.com>\r\n\r\nPlease include with your report: (1) the example input; (2) the output you\r\nexpected; (3) the output Markdown actually produced.\r\n\r\n\r\nVersion History\r\n---------------\r\n\r\nSee the readme file for detailed release notes for this version.\r\n\r\n1.0.1b - 6 Jun 2005\r\n\r\n1.0.1a - 15 Apr 2005\r\n\r\n1.0.1 - 16 Dec 2004\r\n\r\n1.0 - 21 Aug 2004\r\n\r\n\r\nAuthor & Contributors\r\n---------------------\r\n\r\nOriginal Perl version by John Gruber\r\n<http://daringfireball.net/>\r\n\r\nPHP port and other contributions by Michel Fortin\r\n<http://www.michelf.com/>\r\n\r\n\r\nCopyright and License\r\n---------------------\r\n\r\nCopyright (c) 2004-2005 Michel Fortin\r\n<http://www.michelf.com/>\r\nAll rights reserved.\r\n\r\nCopyright (c) 2003-2004 John Gruber\r\n<http://daringfireball.net/>\r\nAll rights reserved.\r\n\r\nRedistribution and use in source and binary forms, with or without\r\nmodification, are permitted provided that the following conditions are\r\nmet:\r\n\r\n*	Redistributions of source code must retain the above copyright notice,\r\n	this list of conditions and the following disclaimer.\r\n\r\n*	Redistributions in binary form must reproduce the above copyright\r\n	notice, this list of conditions and the following disclaimer in the\r\n	documentation and/or other materials provided with the distribution.\r\n\r\n*	Neither the name "Markdown" nor the names of its contributors may\r\n	be used to endorse or promote products derived from this software\r\n	without specific prior written permission.\r\n\r\nThis software is provided by the copyright holders and contributors "as\r\nis" and any express or implied warranties, including, but not limited\r\nto, the implied warranties of merchantability and fitness for a\r\nparticular purpose are disclaimed. In no event shall the copyright owner\r\nor contributors be liable for any direct, indirect, incidental, special,\r\nexemplary, or consequential damages (including, but not limited to,\r\nprocurement of substitute goods or services; loss of use, data, or\r\nprofits; or business interruption) however caused and on any theory of\r\nliability, whether in contract, strict liability, or tort (including\r\nnegligence or otherwise) arising in any way out of the use of this\r\nsoftware, even if advised of the possibility of such damage.\r\n\r\n*/');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_records`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  `opsys` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(255) NOT NULL DEFAULT '',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `exported` tinyint(1) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_full_name` varchar(255) NOT NULL DEFAULT '',
  `paypal_tx_id` varchar(255) NOT NULL DEFAULT '',
  `paypal_payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paypal_testaccount` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_download_tries` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_records`
--

TRUNCATE TABLE `fb_facileforms_records`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_scripts`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_scripts`
--

TRUNCATE TABLE `fb_facileforms_scripts`;
--
-- Vypisuji data pro tabulku `fb_facileforms_scripts`
--

INSERT INTO `fb_facileforms_scripts` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(1, 1, 'FF', 'ff_anychecked', 'Any Checked', 'Validate that any radio button or checkbox of a group is checked.', 'Element Validation', 'function ff_anychecked(element, message)\r\n{\r\n    // get plain name\r\n   // alert(document.ff_form52[''ff_nm_bfQuickMode6303958[]'']);\r\n   // alert(document.getElementById(element.id).id);\r\n    var name = '''';\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n           name = element[0].name;\r\n           var cnt = 0;\r\n           for (var i = 0; i < element.length; i++)\r\n             if (element[i].name==name) \r\n              if (element[i].checked) cnt++;                      \r\n           if (cnt==0) {\r\n            ff_validationFocus(element[0].name);\r\n            if (message=='''') message = "Please check or select "+name+".\\n";\r\n            return message;\r\n           } // if \r\n\r\n        } else {\r\n           return '''';\r\n        }\r\n    } else {\r\n      name = element.name;\r\n      if (name.substr(0,6) == ''ff_nm_'') name = name.substring(6,name.length-2);\r\n\r\n      // loop through elements and count selections\r\n      var cnt = 0;\r\n      for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) \r\n            if (ff_getElementByIndex(i).checked) cnt++;\r\n\r\n      // if none selected, emitt error\r\n      if (cnt==0) {\r\n        ff_validationFocus(element.name);\r\n        if (message=='''') message = "Please check or select "+name+".\\n";\r\n        return message;\r\n      } // if\r\n    }\r\n    \r\n    return '''';\r\n} // ff_anychecked'),
(2, 1, 'FF', 'ff_checked', 'Checked', 'Validate that radio button or checkbox is checked.', 'Element Validation', 'function ff_checked(element, message)\r\n{\r\n    if (element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is not checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } \r\n}'),
(3, 1, 'FF', 'ff_checkedValue', 'Get checked value', 'Get value of the currently checked radiobutton.', 'Untyped', 'function ff_checkedValue(name)\r\n{\r\n    // loop through elements and find checked\r\n    for (i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            e = ff_getElementByIndex(i);\r\n            if (e.checked) return e.value;\r\n        } // if \r\n    return '''';\r\n} // ff_checkedValue'),
(4, 1, 'FF', 'ff_countQuerySelections', 'Count Query Selections', 'Counts how many checkboxes/radiobuttons are checked/selected in a query list element', 'Untyped', 'function ff_countQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var sels = 0;\r\n    for (curr = 0; curr < cnt; curr++)\r\n        if (document.getElementById(''ff_cb''+id+''_''+curr).checked) sels++;\r\n    return sels;\r\n} // ff_countQuerySelections'),
(5, 1, 'FF', 'ff_dollaramount2dp', 'Dollar Amount with 2 Decimal Places', 'Validate that a dollar amount with two decimal places is entered.', 'Element Validation', 'function ff_dollaramount2dp(element, message)\r\n{\r\n    var ex  = /^\\d+$|^\\d+\\.\\d{2}$/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number with two decimal places.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_dollaramount2dp'),
(6, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters of a string', 'Untyped', 'function ff_expString(text)\r\n{\r\n    text = trim(text);\r\n    var i;\r\n    var o = '''';\r\n    for(i = 0; i < text.length; i++) {\r\n        c = text.charAt(i);\r\n        switch(c) {\r\n            case '';'' : o += ''\\\\x3B''; break;\r\n            case '','' : o += ''\\\\x2C''; break;\r\n            case ''&'' : o += ''\\\\x26''; break;\r\n            case ''<'' : o += ''\\\\x3C''; break;\r\n            case ''>'' : o += ''\\\\x3E''; break;\r\n            case ''\\'''': o += ''\\\\x27''; break;\r\n            case ''\\\\'': o += ''\\\\x5C''; break;\r\n            case ''"'' : o += ''\\\\x22''; break;\r\n            case ''\\n'': o += ''\\\\n''; break;\r\n            case ''\\r'': o += ''\\\\r''; break;\r\n            default: o += c;\r\n        } // switch\r\n    } // for\r\n    return o;\r\n} // expString'),
(7, 1, 'FF', 'ff_flashupload_not_empty', 'Flash Upload Not Empty (QuickMode only!)', 'Validates if a flash upload is empty or not.', 'Element Validation', 'function ff_flashupload_not_empty(element, message)\r\n{\r\n    if(typeof bfSummarizers == "undefined") { alert("Flash upload validation only available in QuickMode!"); return ''''}\r\n    if(JQuery(''#bfFlashFileQueue''+element.id.split(''ff_elem'')[1]).html() != '''') return '''';\r\n    if (message=='''') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty'),
(8, 1, 'FF', 'ff_getfocus', 'Get focus', 'Get the focus. Usually this is for the first element of the form/page.', 'Element Init', 'function ff_getfocus(element,condition)\r\n{\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n    		element[0].focus();\r\n    	}\r\n    }else{\r\n    	element.focus();\r\n    }\r\n}'),
(9, 1, 'FF', 'ff_getQuerySelectedRows', 'Get Query Selected Rows', 'Returns the selected rows in a 2-dimensional array', 'Untyped', 'function ff_getQuerySelectedRows(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var rcnt = ff_queryRows[id].length;\r\n    var cnt = rcnt;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr, r;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) {\r\n            var ident = elem.value;\r\n            for (r = 0; r < rcnt; r++)\r\n                if (ff_queryRows[id][r][0] == ident) {\r\n                    sels[selcnt++] = ff_queryRows[id][r];\r\n                    break;\r\n                } // if\r\n        } // if\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelectedRows'),
(10, 1, 'FF', 'ff_getQuerySelections', 'Get Query Selected ID''s', 'Returns the column values of the checked/selected checkboxes/radiobuttons in an array', 'Untyped', 'function ff_getQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) \r\n            sels[selcnt++] = elem.value;\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelections'),
(11, 1, 'FF', 'ff_htmlvaluenotempty', 'HTML Texteditor Not Empty', 'Checks if an HTML editor element is empty or not', 'Element Validation', 'function ff_htmlvaluenotempty( element, message ){\r\n    \r\n    if( typeof bf_htmltextareanames == "undefined" ) return '''';\r\n\r\n    var content = "";\r\n\r\n    for(var i = 0; i < bf_htmltextareanames.length; i++){\r\n      if( element.name == bf_htmltextareanames[i] ) {\r\n          eval("content = " + bf_htmltextareas[i]);\r\n          break;\r\n      }\r\n    }\r\n    if (JQuery.trim(content) == "") {\r\n        if (message=='''') message = element.name+" must not be empty.\\n";\r\n        return message;\r\n    } // if\r\n    return '''';\r\n}'),
(12, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString(text)\r\n{\r\n    var str = '''';\r\n    var ss = 0;\r\n    var s;\r\n    var tl = text.length;\r\n    var hexdigs = "0123456789abcdefABCDEF";\r\n    while (ss < tl) {\r\n        s = text.charAt(ss++);\r\n        if (s == ''\\\\'') {\r\n            if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n            switch (s) {\r\n                case 0   : break;\r\n                case ''e'' : str += ''\\33''; break;\r\n                case ''t'' : str += ''\\t''; break;\r\n                case ''r'' : str += ''\\r''; break;\r\n                case ''n'' : str += ''\\n''; break;\r\n                case ''f'' : str += ''\\f''; break;\r\n                case ''x'' : {\r\n                    if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    var ch = '''';\r\n                    while (hexdigs.indexOf(s)>=0 && ch.length < 2) {\r\n                        ch += s;\r\n                        if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    } // while\r\n                    while (ch.length < 2) ch = ''0''+ch;\r\n                    str += unescape(''%''+ch);\r\n                    if (s) ss--;\r\n                    break;\r\n                }\r\n                default:\r\n                    str += s;\r\n            } // switch\r\n        } else\r\n            str += s;\r\n    } // while\r\n    return str;\r\n} // impString'),
(13, 1, 'FF', 'ff_integer', 'Integer Number', 'Validate that an integer value is entered.', 'Element Validation', 'function ff_integer(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integer'),
(14, 1, 'FF', 'ff_integeramount', 'Positive Integer', 'Validate that an positive integer value is entered.', 'Element Validation', 'function ff_integeramount(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integeramount'),
(15, 1, 'FF', 'ff_integer_or_empty', 'Integer or empty', 'Validate that either an integer value or nothing is entered.', 'Element Validation', 'function ff_integer_or_empty(element, message)\r\n{\r\n    if (element.value != '''') {\r\n        var ex  = /(^-?\\d\\d*$)/;\r\n        if (!ex.test(element.value)) {\r\n            if (message=='''') message = element.name+" must be integer.\\n";\r\n            ff_validationFocus(element.name);\r\n            return message;\r\n        } // if\r\n    } // if\r\n    return '''';\r\n} // ff_integer_or_empty'),
(16, 1, 'FF', 'ff_nextpage', 'Next page', 'Switchs to the next page.', 'Element Action', 'function ff_nextpage(element, action)\r\n{\r\n    if (ff_currentpage < ff_lastpage) {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_nextpage'),
(17, 1, 'FF', 'ff_page1', 'Page 1', 'Switches to the first page.', 'Element Action', 'function ff_page1(element, action)\r\n{\r\n    ff_switchpage(1);\r\n} // ff_page1'),
(18, 1, 'FF', 'ff_page2', 'Page 2', 'Switches to the second page.', 'Element Action', 'function ff_page2(element, action)\r\n{\r\n    if (ff_lastpage >= 2) ff_switchpage(2);\r\n} // ff_page2'),
(19, 1, 'FF', 'ff_page3', 'Page 3', 'Switches to the third page.', 'Element Action', 'function ff_page3(element, action)\r\n{\r\n    if (ff_lastpage >= 3) ff_switchpage(3);\r\n} // ff_page3'),
(20, 1, 'FF', 'ff_previouspage', 'Previous page', 'Switches to the previous page.', 'Element Action', 'function ff_previouspage(element, action)\r\n{\r\n    if (ff_currentpage > 1){\r\n        ff_switchpage(ff_currentpage-1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_previouspage'),
(21, 1, 'FF', 'ff_real', 'Real Number', 'Validate that a real number is entered.', 'Element Validation', 'function ff_real(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_real'),
(22, 1, 'FF', 'ff_realamount', 'Positive Real Number', 'Validate that a positive real number is entered.', 'Element Validation', 'function ff_realamount(element, message)\r\n{\r\n    var ex  = /(^\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_realamount'),
(23, 1, 'FF', 'ff_resetForm', 'Reset form', 'Reset all form inputs to the initial values.', 'Element Action', 'function ff_resetForm(element, action)\r\n{\r\n    eval(''document.''+ff_processor.form_id).reset();\r\n} // ff_resetForm'),
(24, 1, 'FF', 'ff_securitycode_entered', 'Security code entered', 'Check that a security code was entered.', 'Element Validation', 'function ff_securitycode_entered(element, message)\r\n{\r\n    var ex  = /(^\\d{5}$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = "Security code must be entered as five digits.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_securitycode_entered'),
(25, 1, 'FF', 'ff_securitycode_ok', 'Security code ok', 'Check that a valid security code was entered.', 'Element Validation', 'function ff_securitycode_ok(element, message)\r\n{\r\n<?php\r\n    global $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(''ff_seccode'', $ff_seccode);\r\n    } // if\r\n    $enc = array();\r\n    mt_srand((double)microtime()*1000000);\r\n    for ($i = 0; $i < 256; $i++) $enc[] = mt_rand(0, 255);\r\n    $seccode = (string)$ff_seccode;\r\n    $hash = '''';\r\n    $ini = $ff_seccode % 240;\r\n    for ($i = 0; $i < 5; $i++) {\r\n        $d = $ini+intval($seccode{$i});\r\n        for ($j = 0; $j < 7; $j++) $d = $enc[$d];\r\n        $hash .= $d;\r\n        $ini = ($ini+$d) % 240;\r\n    } // for\r\n    return\r\n        "var enc = ".$this->expJsValue($enc).";\\n".\r\n        "var seccode = new String(element.value);\\n".\r\n        "if (seccode.length==5) {\\n".\r\n        "    var hash = '''';\\n".\r\n        "    var ini = parseInt(element.value) % 240;\\n".\r\n        "    var i, j;\\n".\r\n        "    for (i = 0; i < 5; i++) {\\n".\r\n        "        var d = ini+parseInt(seccode.charAt(i));\\n".\r\n        "        for (j = 0; j < 7; j++) d = enc[d];\\n".\r\n        "        hash += d;\\n".\r\n        "        ini = (ini+d) % 240;\\n".\r\n        "    } // for\\n".\r\n        "    if (hash == ''$hash'') return '''';\\n". \r\n        "} // if\\n".\r\n        "if (message=='''') message = \\"Security code is missing or wrong.\\\\n\\";\\n".\r\n        "ff_validationFocus(element.name);\\n".\r\n        "return message;\\n";\r\n?>\r\n} // ff_securitycode_ok'),
(26, 1, 'FF', 'ff_selectedValues', 'Get selected values as list', 'Get values of selected options of a select list as list:\r\n\r\nx = ff_selectedValues(''myselectlist'');\r\n// x = green,red', 'Untyped', 'function ff_selectedValues(name)\r\n{\r\n    vals = '''';\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++)\r\n        if (opts[o].selected) {\r\n            if (vals != '''') vals += '','';\r\n            vals += opts[o].value;\r\n        } // if\r\n    return vals;\r\n} // ff_selectedValues'),
(27, 1, 'FF', 'ff_setChecked', 'Set radiobutton checked', 'Set a radiobutton checked/unchecked', 'Untyped', 'function ff_setChecked(name, value, checked)\r\n{\r\n    if (arguments.length<3) checked = true;\r\n    for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            var e = ff_getElementByIndex(i);\r\n            if (e.value == value) {\r\n                e.checked = checked;\r\n                break;\r\n            } // if\r\n        } // if\r\n} // ff_setChecked'),
(28, 1, 'FF', 'ff_setSelected', 'Select options of  select list', 'Select options in a Select List element.\r\n\r\nff_setSelected(''mylist'', ''green''); // select green in single or multi mode, unselect all other options\r\nff_setSelected(''mylist'', ''red,green''); // select red and green in multi mode, unselect all other options', 'Untyped', 'function ff_setSelected(name, list)\r\n{\r\n    ids = list.split('','')\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++) {\r\n        state = false;\r\n        for (i = 0; i < ids.length; i++) \r\n            if (ids[i]==opts[o].value) {\r\n                state = true;\r\n                break;\r\n            } // if\r\n        opts[o].selected = state;\r\n    } // for\r\n} // ff_setSelected'),
(29, 1, 'FF', 'ff_showaction', 'Show action', 'Displays the element action.', 'Element Action', 'function ff_showaction(element, action)\r\n{\r\n   alert(''Action ''+action+'' performed by element ''+element.id);\r\n}'),
(30, 1, 'FF', 'ff_showelementinit', 'Show element initialization', 'Display the element initialization (mainly for debugging)', 'Element Init', 'function ff_showelementinit(element,condition)\r\n{\r\n    if(!element.name)\r\n    	if(element.length && element.length != 0)\r\n    		alert(''Initialization of ''+element[0].name+'' at ''+condition);\r\n    else\r\n    	alert(''Initialization of ''+element.name+'' at ''+condition);\r\n}'),
(31, 1, 'FF', 'ff_showforminit', 'Show form initialization', 'Show when form initialization is run (for debugging)', 'Form Init', 'function ff_showforminit()\r\n{\r\n    alert(''Form initialization'');\r\n}'),
(32, 1, 'FF', 'ff_showsubmitted', 'Show submitted status', 'Display submit status as user feedback.', 'Form Submitted', 'function ff_showsubmitted(status, message)\r\n{\r\n    alert(message);\r\n} // ff_showsubmitted'),
(33, 1, 'FF', 'ff_showvalidation', 'Show element validation', 'Display element validation (for debugging)', 'Element Validation', 'function ff_showvalidation(element, message)\r\n{\r\n    alert(''Validation of ''+element.name+" with message: \\n"+message);\r\n    return '''';\r\n}'),
(34, 1, 'FF', 'ff_submittedhome', 'Return to homepage', 'Display submit status and then return to the home page of the site.', 'Form Submitted', 'function ff_submittedhome(status, message)\r\n{\r\n    alert(message+"\\nYou will be redirected to the home page now.");\r\n    ff_returnHome();\r\n} // ff_submittedhome'),
(35, 1, 'FF', 'ff_unchecked', 'Unchecked', 'Validate that radio button or checkbox is unchecked.', 'Element Validation', 'function ff_unchecked(element, message)\r\n{\r\n    if (!element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n} // ff_unchecked'),
(36, 1, 'FF', 'ff_validate_date_DDMMYYYY', 'Validate Date DD/MM/YYYY format', 'Validates that the date in a textfield is correctly formatted in DD/MM/YYYY format.\r\nCan be used with a textfield element and/or the Calendar element.', 'Element Validation', 'function ff_validate_date_DDMMYYYY(element, message)\r\n{\r\n   // Regular expression used to check if date is in correct format\r\n   var pattern = /[0-3][0-9]\\/(0|1)[0-9]\\/(19|20)[0-9]{2}/;\r\n   if(pattern.test(element.value))\r\n   {\r\n      var date_array = element.value.split(''/'');\r\n      var day = date_array[0];\r\n\r\n      // Attention! Javascript consider months in the range 0 - 11\r\n      var month = date_array[1] - 1;\r\n      var year = date_array[2];\r\n\r\n      // This instruction will create a date object\r\n      source_date = new Date(year,month,day);\r\n\r\n      if(year != source_date.getFullYear())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n\r\n      if(month != source_date.getMonth())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n\r\n      if(day != source_date.getDate())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n   }\r\n   else\r\n   {\r\n      return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n   }\r\n\r\n   return '''';\r\n}'),
(37, 1, 'FF', 'ff_validate_form', 'Validate form', 'Validates the form and displays the result.', 'Element Action', 'function ff_validate_form(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_form'),
(38, 1, 'FF', 'ff_validate_nextpage', 'Validate and next page', 'Validates the current page, and if everything is ok is switches to the next page.', 'Element Action', 'function ff_validate_nextpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n       if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);   \r\n    }\r\n} // ff_validate_nextpage'),
(39, 1, 'FF', 'ff_validate_page', 'Validate page', 'Validates the current page and displays the result.', 'Element Action', 'function ff_validate_page(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_page'),
(40, 1, 'FF', 'ff_validate_prevpage', 'Validate previous page', 'Validates the current page and switches to the previous page if all is ok', 'Element Action', 'function ff_validate_prevpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n       if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else{\r\n    	if(ff_currentpage > 1){\r\n	 ff_switchpage(ff_currentpage-1);\r\n	 self.scrollTo(0,0);\r\n        }\r\n    }\r\n} // ff_validate_prevpage'),
(41, 1, 'FF', 'ff_validate_submit', 'Validate and submit form', 'Validates the whole form, and if everything is ok it submits the form.', 'Element Action', 'function ff_validate_submit(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus();\r\n    } else\r\n        ff_submitForm();\r\n} // ff_validate_submit'),
(42, 1, 'FF', 'ff_validemail', 'Valid email', 'Validate entry of a valid email (syntax check only)', 'Element Validation', 'function ff_validemail(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message=='''') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_validemail'),
(43, 1, 'FF', 'ff_validemail_repeat', 'Validate Email repeat', 'Checks if the field value is a valid email address and has a second counterpart that has an equal value.\r\nThe 2nd email field must be named "FIELDNAME_repeat"!', 'Element Validation', 'function ff_validemail_repeat(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message=='''') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n	\r\n    try{\r\n	    var repeat = element.name.split("ff_nm_")[1].split("[]")[0];\r\n	\r\n	    if(!ff_getElementByName(repeat + ''_repeat'')){\r\n	     	if (message=='''') message = repeat+" has no repeat email field.\\n";\r\n	        ff_validationFocus(element.name);\r\n	        return message;\r\n	    } else {\r\n	        if(ff_getElementByName(repeat + ''_repeat'').value != element.value){\r\n	           if (message=='''') message = element.name+" and " + repeat + "_repeat do not match.\\n";\r\n	           ff_validationFocus(repeat + ''_repeat'');\r\n	           return message;\r\n	        }\r\n	    }\r\n    }catch(e){\r\n        return e.description;\r\n    }\r\n\r\n    return '''';\r\n} // ff_validemail'),
(44, 1, 'FF', 'ff_valuenotempty', 'Value not empty', 'Validate that value is not empty.', 'Element Validation', 'function ff_valuenotempty(element, message)\r\n{\r\n    if (element.value!='''') return ''''; \r\n    if (message=='''') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_facileforms_subrecords`
--
-- Vytvořeno: Pát 27. pro 2013, 10:34
--

CREATE TABLE IF NOT EXISTS `fb_facileforms_subrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record` int(11) NOT NULL DEFAULT '0',
  `element` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_facileforms_subrecords`
--

TRUNCATE TABLE `fb_facileforms_subrecords`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_filters`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_filters`
--

TRUNCATE TABLE `fb_finder_filters`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links`
--

TRUNCATE TABLE `fb_finder_links`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms0`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms0`
--

TRUNCATE TABLE `fb_finder_links_terms0`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms1`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms1`
--

TRUNCATE TABLE `fb_finder_links_terms1`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms2`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms2`
--

TRUNCATE TABLE `fb_finder_links_terms2`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms3`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms3`
--

TRUNCATE TABLE `fb_finder_links_terms3`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms4`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms4`
--

TRUNCATE TABLE `fb_finder_links_terms4`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms5`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms5`
--

TRUNCATE TABLE `fb_finder_links_terms5`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms6`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms6`
--

TRUNCATE TABLE `fb_finder_links_terms6`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms7`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms7`
--

TRUNCATE TABLE `fb_finder_links_terms7`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms8`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms8`
--

TRUNCATE TABLE `fb_finder_links_terms8`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_terms9`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_terms9`
--

TRUNCATE TABLE `fb_finder_links_terms9`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_termsa`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_termsa`
--

TRUNCATE TABLE `fb_finder_links_termsa`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_termsb`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_termsb`
--

TRUNCATE TABLE `fb_finder_links_termsb`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_termsc`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_termsc`
--

TRUNCATE TABLE `fb_finder_links_termsc`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_termsd`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_termsd`
--

TRUNCATE TABLE `fb_finder_links_termsd`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_termse`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_termse`
--

TRUNCATE TABLE `fb_finder_links_termse`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_links_termsf`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_links_termsf`
--

TRUNCATE TABLE `fb_finder_links_termsf`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_taxonomy`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_taxonomy`
--

TRUNCATE TABLE `fb_finder_taxonomy`;
--
-- Vypisuji data pro tabulku `fb_finder_taxonomy`
--

INSERT INTO `fb_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_taxonomy_map`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_taxonomy_map`
--

TRUNCATE TABLE `fb_finder_taxonomy_map`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_terms`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_terms`
--

TRUNCATE TABLE `fb_finder_terms`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_terms_common`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_terms_common`
--

TRUNCATE TABLE `fb_finder_terms_common`;
--
-- Vypisuji data pro tabulku `fb_finder_terms_common`
--

INSERT INTO `fb_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_tokens`
--
-- Vytvořeno: Úte 11. úno 2014, 19:28
--

CREATE TABLE IF NOT EXISTS `fb_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_tokens`
--

TRUNCATE TABLE `fb_finder_tokens`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_tokens_aggregate`
--
-- Vytvořeno: Úte 11. úno 2014, 19:28
--

CREATE TABLE IF NOT EXISTS `fb_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_tokens_aggregate`
--

TRUNCATE TABLE `fb_finder_tokens_aggregate`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_finder_types`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_finder_types`
--

TRUNCATE TABLE `fb_finder_types`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_languages`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_languages`
--

TRUNCATE TABLE `fb_languages`;
--
-- Vypisuji data pro tabulku `fb_languages`
--

INSERT INTO `fb_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1),
(2, 'cs-CZ', 'Czech', 'Česky', 'cs_CZ', 'cz', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_menu`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_menu`
--

TRUNCATE TABLE `fb_menu`;
--
-- Vypisuji data pro tabulku `fb_menu`
--

INSERT INTO `fb_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 117, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 39, 44, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 40, 41, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 42, 43, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 45, 50, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 46, 47, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 48, 49, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 51, 56, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 52, 53, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 54, 55, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 57, 58, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 59, 60, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 61, 66, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 62, 63, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 64, 65, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 67, 68, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 69, 70, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 71, 72, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 73, 74, 0, '*', 1),
(101, 'mainmenu', 'O nás', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, '*', 0),
(107, 'mainmenu', 'Kontakt', 'kontakt', '', 'kontakt', 'index.php?option=com_breezingforms&view=form', 'component', 1, 1, 1, 10012, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"ff_com_name":"kontaktujte_nas","ff_com_page":"1","ff_com_editable":"0","ff_com_editable_override":"0","ff_com_frame":"0","ff_com_border":"0","ff_com_align":"1","ff_com_left":"0","ff_com_top":"0","ff_com_parprv":"","ff_com_parpub":"","ff_com_suffix":"","menu-anchor_title":"Title","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 37, 38, 0, '*', 0),
(110, 'mainmenu', 'O nás', 'o-nas', '', 'o-nas', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(111, 'mainmenu', 'Naše služby', 'nase-sluzby', '', 'nase-sluzby', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 22, 0, '*', 0),
(112, 'mainmenu', 'Co očekávat', 'co-ocekavat', '', 'nase-sluzby/co-ocekavat', 'index.php?option=com_content&view=featured', 'component', 1, 111, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 16, 17, 0, '*', 0),
(118, 'mainmenu', 'Galerie', 'galerie', '', 'galerie', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 35, 36, 0, '*', 0),
(119, 'mainmenu', 'Destinace', 'destinace', '', 'destinace', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 34, 0, '*', 0),
(120, 'mainmenu', 'Řecko', 'recko', '', 'destinace/recko', 'index.php?option=com_content&view=article&id=4', 'component', 1, 119, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 24, 27, 0, '*', 0),
(121, 'mainmenu', 'Chorvatsko', 'chrvatsko', '', 'destinace/chrvatsko', 'index.php?option=com_content&view=featured', 'component', 1, 119, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 28, 29, 0, '*', 0),
(122, 'mainmenu', 'Itálie', 'nase-specializace', '', 'destinace/nase-specializace', 'index.php?option=com_content&view=featured', 'component', 1, 119, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 30, 31, 0, '*', 0),
(123, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 79, 88, 0, '', 1),
(124, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 123, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 80, 81, 0, '', 1),
(125, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 123, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 82, 83, 0, '', 1),
(126, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 123, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 84, 85, 0, '', 1),
(127, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 123, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 86, 87, 0, '', 1),
(128, 'mainmenu', 'Jak se připravit', 'jak-se-pripravit', '', 'nase-sluzby/jak-se-pripravit', 'index.php?option=com_content&view=featured', 'component', 1, 111, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 18, 19, 0, '*', 0),
(129, 'mainmenu', 'Řecko', 'recko', '', 'destinace/recko/recko', 'index.php?option=com_content&view=featured', 'component', -2, 120, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(130, 'mainmenu', 'Bezpečnost', 'bezpecnost', '', 'nase-sluzby/bezpecnost', 'index.php?option=com_content&view=featured', 'component', 1, 111, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 20, 21, 0, '*', 0),
(131, 'main', 'BreezingForms', 'BreezingForms', '', 'breezingforms', 'index.php?option=com_breezingforms', 'component', 0, 1, 1, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 89, 104, 0, '', 1),
(132, 'main', 'COM_BREEZINGFORMS_MANAGE_RECORDS', 'Manage Records', '', 'breezingforms/com-breezingforms-manage-records', 'index.php?option=com_breezingforms&act=managerecs', 'component', 0, 131, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/checkin.png', 0, '', 90, 91, 0, '', 1),
(133, 'main', 'COM_BREEZINGFORMS_MANAGE_FORMS', 'Manage Forms', '', 'breezingforms/com-breezingforms-manage-forms', 'index.php?option=com_breezingforms&act=manageforms', 'component', 0, 131, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/content.png', 0, '', 92, 93, 0, '', 1),
(134, 'main', 'COM_BREEZINGFORMS_MANAGE_SCRIPTS', 'Manage Scripts', '', 'breezingforms/com-breezingforms-manage-scripts', 'index.php?option=com_breezingforms&act=managescripts', 'component', 0, 131, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/controlpanel.png', 0, '', 94, 95, 0, '', 1),
(135, 'main', 'COM_BREEZINGFORMS_MANAGE_PIECES', 'Manage Pieces', '', 'breezingforms/com-breezingforms-manage-pieces', 'index.php?option=com_breezingforms&act=managepieces', 'component', 0, 131, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/controlpanel.png', 0, '', 96, 97, 0, '', 1),
(136, 'main', 'COM_BREEZINGFORMS_INTEGRATOR', 'Integrator', '', 'breezingforms/com-breezingforms-integrator', 'index.php?option=com_breezingforms&act=integrate', 'component', 0, 131, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/controlpanel.png', 0, '', 98, 99, 0, '', 1),
(137, 'main', 'COM_BREEZINGFORMS_MANAGE_BACKEND_MENUS', 'Manage Backend Menus', '', 'breezingforms/com-breezingforms-manage-backend-menus', 'index.php?option=com_breezingforms&act=managemenus', 'component', 0, 131, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/mainmenu.png', 0, '', 100, 101, 0, '', 1),
(138, 'main', 'COM_BREEZINGFORMS_CONFIGURATION', 'Configuration', '', 'breezingforms/com-breezingforms-configuration', 'index.php?option=com_breezingforms&act=configuration', 'component', 0, 131, 2, 10012, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/config.png', 0, '', 102, 103, 0, '', 1),
(139, 'mainmenu', 'Karibik', 'karibik', '', 'destinace/karibik', 'index.php?option=com_content&view=featured', 'component', 1, 119, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 32, 33, 0, '*', 0),
(140, 'mainmenu', 'Poptávka', 'poptavka-lode', '', 'poptavka-lode', 'index.php?option=com_breezingforms&view=form', 'component', 1, 1, 1, 10012, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"ff_com_name":"poptavka","ff_com_page":"1","ff_com_editable":"0","ff_com_editable_override":"0","ff_com_frame":"0","ff_com_border":"0","ff_com_align":"1","ff_com_left":"0","ff_com_top":"0","ff_com_parprv":"","ff_com_parpub":"","ff_com_suffix":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 105, 106, 0, '*', 0),
(141, 'bocni-menu', 'Kontakt', 'b-kontakt', '', 'b-kontakt', 'index.php?option=com_breezingforms&view=form', 'component', 1, 1, 1, 10012, 0, '0000-00-00 00:00:00', 0, 1, '', 9, '{"ff_com_name":"kontaktujte_nas","ff_com_page":"1","ff_com_editable":"0","ff_com_editable_override":"0","ff_com_frame":"0","ff_com_border":"0","ff_com_align":"1","ff_com_left":"0","ff_com_top":"0","ff_com_parprv":"","ff_com_parpub":"","ff_com_suffix":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"s5_load_mod":"0","s5_columns":"1","s5_subtext":"","s5_group_child":"0"}', 107, 108, 0, '*', 0),
(142, 'bocni-menu', 'Poptávka', 'b-poptavka', '', 'b-poptavka', 'index.php?option=com_breezingforms&view=form', 'component', 1, 1, 1, 10012, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"ff_com_name":"poptavka","ff_com_page":"1","ff_com_editable":"0","ff_com_editable_override":"0","ff_com_frame":"0","ff_com_border":"0","ff_com_align":"1","ff_com_left":"0","ff_com_top":"0","ff_com_parprv":"","ff_com_parpub":"","ff_com_suffix":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 110, 0, '*', 0),
(143, 'bocni-menu', 'Přihlásit', 'b-login', '', 'b-login', 'index.php?option=com_users&view=login', 'component', 0, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 112, 0, '*', 0),
(144, 'bocni-menu', 'Registrace', 'registrace', '', 'registrace', 'index.php?option=com_users&view=registration', 'component', 0, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 113, 114, 0, '*', 0),
(145, 'bocni-menu', 'muj profil', 'muj-profil', '', 'muj-profil', 'index.php?option=com_users&view=profile&layout=edit', 'component', 0, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 115, 116, 0, '*', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_menu_types`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_menu_types`
--

TRUNCATE TABLE `fb_menu_types`;
--
-- Vypisuji data pro tabulku `fb_menu_types`
--

INSERT INTO `fb_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'bocni-menu', 'Boční menu', ''),
(3, 'test', 'test', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_messages`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_messages`
--

TRUNCATE TABLE `fb_messages`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_messages_cfg`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_messages_cfg`
--

TRUNCATE TABLE `fb_messages_cfg`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_modules`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_modules`
--

TRUNCATE TABLE `fb_modules`;
--
-- Vypisuji data pro tabulku `fb_modules`
--

INSERT INTO `fb_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 55, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 56, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'top_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 67, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 68, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Menu Accordeon CK', '', '', 1, 'top_row3_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_accordeonck', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","imgalignement":"none","imagerollprefix":"_hover","imageactiveprefix":"_active","tag_id":"","class_sfx":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","eventtype":"mouseover","eventtarget":"link","fadetransition":"false","mooduration":"500","mootransition":"swing","defaultopenedid":"","usestyles":"1","theme":"simple","useplusminusimages":"1","imageplus":"images\\/control\\/kormidlo_icon.gif","imageminus":"images\\/control\\/kormidlo_icon.gif","imageposition":"left","menuusemargin":"1","menumargin":"0","menupadding":"0","menuusebackground":"1","menubgcolor1":"#f0f0f0","menuusegradient":"1","menubgcolor2":"#e3e3e3","menuuseroundedcorners":"0","menuroundedcornerstl":"5","menuroundedcornerstr":"5","menuroundedcornersbr":"5","menuroundedcornersbl":"5","menuuseshadow":"0","menushadowcolor":"#444444","menushadowblur":"3","menushadowspread":"0","menushadowoffsetx":"0","menushadowoffsety":"0","menushadowinset":"0","menuuseborders":"0","menubordercolor":"#efefef","menuborderwidth":"1","level1linkusefont":"1","level1linkfontsize":"12px","level1linkfontcolor":"","level1linkfontcolorhover":"","level1linkdescfontsize":"10px","level1linkdescfontcolor":"","level1linkusemargin":"1","level1linkmargin":"0","level1linkpadding":"0","level1linkusebackground":"1","level1linkbgcolor1":"","level1linkusegradient":"1","level1linkbgcolor2":"","level1linkuseroundedcorners":"1","level1linkroundedcornerstl":"0","level1linkroundedcornerstr":"0","level1linkroundedcornersbr":"0","level1linkroundedcornersbl":"0","level1linkuseshadow":"1","level1linkshadowcolor":"","level1linkshadowblur":"0","level1linkshadowspread":"0","level1linkshadowoffsetx":"0","level1linkshadowoffsety":"0","level1linkshadowinset":"0","level1linkuseborders":"0","level1linkbordercolor":"","level1linkborderwidth":"1","level2linkusefont":"1","level2linkfontsize":"12px","level2linkfontcolor":"","level2linkfontcolorhover":"","level2linkdescfontsize":"10px","level2linkdescfontcolor":"","level2linkusemargin":"1","level2linkmargin":"0","level2linkpadding":"0","level2linkusebackground":"1","level2linkbgcolor1":"","level2linkusegradient":"1","level2linkbgcolor2":"","level2linkuseroundedcorners":"1","level2linkroundedcornerstl":"0","level2linkroundedcornerstr":"0","level2linkroundedcornersbr":"0","level2linkroundedcornersbl":"0","level2linkuseshadow":"1","level2linkshadowcolor":"","level2linkshadowblur":"0","level2linkshadowspread":"0","level2linkshadowoffsetx":"0","level2linkshadowoffsety":"0","level2linkshadowinset":"0","level2linkuseborders":"1","level2linkbordercolor":"","level2linkborderwidth":"1","level3linkusefont":"1","level3linkfontsize":"12px","level3linkfontcolor":"","level3linkfontcolorhover":"","level3linkdescfontsize":"10px","level3linkdescfontcolor":"","level3linkusemargin":"1","level3linkmargin":"0","level3linkpadding":"0","level3linkusebackground":"1","level3linkbgcolor1":"","level3linkusegradient":"1","level3linkbgcolor2":"","level3linkuseroundedcorners":"1","level3linkroundedcornerstl":"0","level3linkroundedcornerstr":"0","level3linkroundedcornersbr":"0","level3linkroundedcornersbl":"0","level3linkuseshadow":"1","level3linkshadowcolor":"","level3linkshadowblur":"0","level3linkshadowspread":"0","level3linkshadowoffsetx":"0","level3linkshadowoffsety":"0","level3linkshadowinset":"0","level3linkuseborders":"1","level3linkbordercolor":"","level3linkborderwidth":"1","thirdparty":"none","usehikashopimages":"0","usehikashopsuffix":"0","hikashopimagesuffix":"_mini","hikashopcategoryroot":"0","hikashopcategorydepth":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 56, 'ARI Image Slider', '', '', 1, 'top_row2_2', 683, '2014-01-03 22:12:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ariimageslider', 1, 0, '{"includeJQuery":"1","loadJQueryMethod":"google_cdn","jQueryVer":"1.8.2","noConflict":"1","loadMethod":"load","moduleclass_sfx":"","width":"770","height":"250","responsive":"1","linkTarget":"_self","customLinkTarget":"","theme":"default","customstyle":"","lightboxEngine":"","lightbox_width":"550","lightbox_height":"400","lightbox_grouping":"1","lightbox_bgColor":"","fixTransparentBg":"0","opt_disableClick":"1","opt_effect":"fade","opt_slices":"15","opt_boxCols":"8","opt_boxRows":"4","opt_animSpeed":"500","opt_pauseTime":"3000","opt_startSlide":"1","opt_randomStart":"0","showNav":"0","opt_controlNav":"0","opt_keyboardNav":"0","opt_pauseOnHover":"0","opt_manualAdvance":"0","opt_stopOnEnd":"1","i18n":"0","descrFile":"ariimageslider.ini","defaultDescription":"","defaultLink":"","imgNumber":"0","sortBy":"","sortDir":"asc","subdirLevel":"0","subdir":"0","path":"\\\\images\\\\slider","imglist_useThumbs":"0","imglist_thumbWidth":"150","imglist_thumbHeight":"","imglist_thumbPath":"","opt_controlNavThumbs":"0","imglist_navThumbWidth":"75","imglist_navThumbHeight":"","imglist_navThumbPath":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"Shape5_vertex-round_box_top_row"}', 0, '*'),
(89, 57, 'SlideBar class=hide_mobile', '', '', 1, 'bottom_row3_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_slidebar', 1, 0, '{"loadmodule":"slidebar","jslibrary":"slidebar-j","loadlibraries":"1","autoopen":"0","shadowradius":"5","shadowx":"0","shadowy":"0","shadowspread":"0","shadowcolor":"rgba(0,0,0,1)","toppos":"160","pos":"right","concolor":"rgba(221,221,221,1)","concolorgrad1":"rgba(190,190,190,0.8)","concolorgrad2":"rgba(221,221,221,1)","cornerradius":"15","autosizing":"On","conwidth":"350","conheight":"520","conpaddingleft":"5","conpaddingright":"5","conpaddingtop":"5","conpaddingbottom":"5","zindex":"9000","speed":"500","theme":"sleekWhite","type":"png","slidevertical":"fixed","widthdebug":"1","retina":"On","imgalt":"Popt\\u00e1vka","moduleclass_sfx":"_invisible","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 59, 'Header', '', '<h1 style="text-align: left;"><em><strong>S námi není žádný ostrov vzdálený</strong></em></h1>', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 62, 'Novinky', '', '', 1, 'top_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 0, '{"catid":["8"],"count":"2","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 65, 'Novinky', '', '', 1, 'top_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 0, '{"catid":["8"],"image":"0","item_title":"1","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"2","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 66, 'Pop Login', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_poplogin', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"1","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 69, 'Form poptavka', '', '', 1, 'slidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breezingforms', 1, 0, '{"ff_mod_name":"poptavka","ff_mod_page":"1","ff_mod_editable":"0","ff_mod_editable_override":"0","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 70, 'Registrujte se slevou', '', '<p>Tady bude nejaky text o registrujte se a dostanete slevu. Proto by bylo potreba udelat nejaky obrazek a vymyslet text. Nebo by tady mohlo byt prihlasovani.</p>', 1, 'top_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"_top_row","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 71, 'pozadi', '', '<div><img src="images/control/panorama.png" alt="" /></div>', 1, 'banner', 683, '2013-12-30 23:32:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 74, 'Boční menu', '', '', 1, 'top_row2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"bocni-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"Shape5_vertex-round_box_left_menu"}', 0, '*'),
(98, 75, 'Galerie', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ariimageslider', 1, 1, '{"includeJQuery":"1","loadJQueryMethod":"google_cdn","jQueryVer":"1.8.2","noConflict":"1","loadMethod":"load","moduleclass_sfx":"","width":"300","height":"220","responsive":"1","linkTarget":"_self","customLinkTarget":"","theme":"default","customstyle":"","lightboxEngine":"","lightbox_width":"450","lightbox_height":"300","lightbox_grouping":"1","lightbox_bgColor":"","fixTransparentBg":"0","opt_disableClick":"0","opt_effect":"random","opt_slices":"15","opt_boxCols":"8","opt_boxRows":"4","opt_animSpeed":"500","opt_pauseTime":"3000","opt_startSlide":"0","opt_randomStart":"0","showNav":"1","opt_controlNav":"1","opt_keyboardNav":"1","opt_pauseOnHover":"1","opt_manualAdvance":"0","opt_stopOnEnd":"0","i18n":"0","descrFile":"ariimageslider.ini","defaultDescription":"","defaultLink":"","imgNumber":"0","sortBy":"","sortDir":"asc","subdirLevel":"0","subdir":"0","path":"","imglist_useThumbs":"0","imglist_thumbWidth":"150","imglist_thumbHeight":"","imglist_thumbPath":"","opt_controlNavThumbs":"0","imglist_navThumbWidth":"75","imglist_navThumbHeight":"","imglist_navThumbPath":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 77, 'test', '', '', 1, 'top_row3_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"bocni-menu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"Shape5_vertex-round_box_top_menu"}', 0, '*');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_modules_menu`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_modules_menu`
--

TRUNCATE TABLE `fb_modules_menu`;
--
-- Vypisuji data pro tabulku `fb_modules_menu`
--

INSERT INTO `fb_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_newsfeeds`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_newsfeeds`
--

TRUNCATE TABLE `fb_newsfeeds`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_overrider`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_overrider`
--

TRUNCATE TABLE `fb_overrider`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_postinstall_messages`
--
-- Vytvořeno: Úte 17. pro 2013, 19:16
--

CREATE TABLE IF NOT EXISTS `fb_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_postinstall_messages`
--

TRUNCATE TABLE `fb_postinstall_messages`;
--
-- Vypisuji data pro tabulku `fb_postinstall_messages`
--

INSERT INTO `fb_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_redirect_links`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_redirect_links`
--

TRUNCATE TABLE `fb_redirect_links`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_schemas`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_schemas`
--

TRUNCATE TABLE `fb_schemas`;
--
-- Vypisuji data pro tabulku `fb_schemas`
--

INSERT INTO `fb_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.2.1');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_session`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_session`
--

TRUNCATE TABLE `fb_session`;
--
-- Vypisuji data pro tabulku `fb_session`
--

INSERT INTO `fb_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('qc3tjcf9ii67ckr9l7uu54kp95', 0, 1, '1392146934', '__default|a:10:{s:15:"session.counter";i:9;s:19:"session.timer.start";i:1392141044;s:18:"session.timer.last";i:1392146093;s:17:"session.timer.now";i:1392146933;s:22:"session.client.browser";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:27.0) Gecko/20100101 Firefox/27.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:2:"13";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:1:{i:0;s:1:"1";}s:14:"\\0\\0\\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:24:"ff_editableMod94poptavka";i:0;s:33:"ff_editable_overrideMod94poptavka";i:0;s:13:"session.token";s:32:"00e23d8c788ab364beeb8ed4135cf64f";}securimage_code_tries|a:1:{s:7:"default";i:0;}securimage_code_disp|a:1:{s:7:"default";s:6:"borate";}securimage_code_value|a:1:{s:7:"default";s:6:"borate";}securimage_code_ctime|a:1:{s:7:"default";i:1392141053;}', 0, '');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_tags`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_tags`
--

TRUNCATE TABLE `fb_tags`;
--
-- Vypisuji data pro tabulku `fb_tags`
--

INSERT INTO `fb_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_template_styles`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_template_styles`
--

TRUNCATE TABLE `fb_template_styles`;
--
-- Vypisuji data pro tabulku `fb_template_styles`
--

INSERT INTO `fb_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'shape5_vertex', 0, '1', 'shape5_vertex - Default', '{"settings":""}');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_ucm_base`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_ucm_base`
--

TRUNCATE TABLE `fb_ucm_base`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_ucm_content`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_ucm_content`
--

TRUNCATE TABLE `fb_ucm_content`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_ucm_history`
--
-- Vytvořeno: Úte 17. pro 2013, 19:16
--

CREATE TABLE IF NOT EXISTS `fb_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_ucm_history`
--

TRUNCATE TABLE `fb_ucm_history`;
--
-- Vypisuji data pro tabulku `fb_ucm_history`
--

INSERT INTO `fb_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2013-12-19 23:01:35', 683, 1740, '493ac0bb4af2c0c834b8a7bf888fac2fe2421904', '{"id":1,"asset_id":58,"title":"header","alias":"header","introtext":"<h1><em><strong>S n\\u00e1mi, nen\\u00ed \\u017e\\u00e1dn\\u00fd ostrov vzd\\u00e1len\\u00fd<\\/strong><\\/em><\\/h1>","fulltext":"","state":1,"catid":"2","created":"2013-12-19 23:01:35","created_by":"683","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-12-19 23:01:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(2, 8, 6, '', '2013-12-26 15:48:41', 683, 515, '6bee9983dc1480cec330121080de8415aa252af2', '{"id":8,"asset_id":60,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Novinky","alias":"novinky","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"683","created_time":"2013-12-26 15:48:41","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(3, 9, 6, '', '2013-12-26 15:48:57', 683, 519, '01bec70040feab10cdfbe7afe53f54f1da2072b9', '{"id":9,"asset_id":61,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"Destinace","alias":"destinace","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"683","created_time":"2013-12-26 15:48:57","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(4, 2, 1, '', '2013-12-26 15:53:01', 683, 1652, 'd09329e0ad061409dddc0416a57f9ccdff15880d', '{"id":2,"asset_id":63,"title":"News 1","alias":"news-1","introtext":"<p>nejaky text<\\/p>","fulltext":"","state":1,"catid":"8","created":"2013-12-26 15:53:01","created_by":"683","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-12-26 15:53:01","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(5, 3, 1, '', '2013-12-26 15:53:29', 683, 1812, 'd7a947b9d1f4f6dcdf57deb7267b18b84d0d041a', '{"id":3,"asset_id":64,"title":"News2","alias":"news2","introtext":"<p>sfas safsaj fkjsafsa fsapojf safjsa f s<\\/p>\\r\\n<p>&nbsp;sfsaf sa\\\\f sa<\\/p>\\r\\n<p>f s<\\/p>\\r\\n<p>f saf<\\/p>\\r\\n<p>sa fsa<\\/p>\\r\\n<p>ofsa''pfk''sakf''sakf sa''f; sa<\\/p>\\r\\n<p>f<\\/p>","fulltext":"","state":1,"catid":"8","created":"2013-12-26 15:53:29","created_by":"683","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-12-26 15:53:29","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 2, 1, '', '2013-12-26 17:15:07', 683, 1690, '457b8f177a66f77ccb042a773c454569764d7482', '{"id":2,"asset_id":"63","title":"News 1","alias":"news-1","introtext":"<p>nejaky text<\\/p>","fulltext":"","state":1,"catid":"8","created":"2013-12-26 15:53:01","created_by":"683","created_by_alias":"","modified":"2013-12-26 17:15:07","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-26 17:14:34","publish_up":"2013-12-26 15:53:01","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 3, 1, '', '2013-12-26 17:17:26', 683, 1824, '6989c27c13cc6c3d7d39b330106d43f37e9caab1', '{"id":3,"asset_id":"64","title":"News2","alias":"news2","introtext":"<p>Registrujte se. Pro prvnich dvacet registrovanych z\\u00e1kazn\\u00edk\\u016f m\\u00e1me p\\u0159ipraveny zaj\\u00edmav\\u00e9 slevy na prvn\\u00ed plavbu.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2013-12-26 15:53:29","created_by":"683","created_by_alias":"","modified":"2013-12-26 17:17:26","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-26 17:15:29","publish_up":"2013-12-26 15:53:29","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 3, 1, '', '2013-12-26 17:18:55', 683, 1849, '7294c02dfae46b7eda9582d93c86c8aaaaf6e19a', '{"id":3,"asset_id":"64","title":"News2","alias":"news2","introtext":"<p>Registrujte se. Pro prvnich dvacet registrovanych z\\u00e1kazn\\u00edk\\u016f m\\u00e1me p\\u0159ipraveny zaj\\u00edmav\\u00e9 slevy na prvn\\u00ed plavbu.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2013-12-26 15:53:29","created_by":"683","created_by_alias":"","modified":"2013-12-26 17:18:55","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-26 17:17:26","publish_up":"2013-12-26 15:53:29","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/slider\\\\\\/1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 4, 1, '', '2013-12-26 23:35:32', 683, 7902, 'fe3a7464233ccfa65c2206f6e55c7a7b6097c1cf', '{"id":4,"asset_id":67,"title":"\\u0158ECKO","alias":"recko","introtext":"<p style=\\"margin-bottom: 0cm;\\">Krajina pln\\u00e1 d\\u00e1vn\\u00e9 historie, p\\u0159\\u00edrody a vst\\u0159\\u00edcn\\u00fdch lid\\u00ed. To je \\u0158ecko! Ostrovy v oblasti ji\\u017en\\u00ed Evropy v\\u00e1m nab\\u00eddnou jedine\\u010dn\\u00e9 p\\u0159\\u00edrodn\\u00ed scen\\u00e9rie, kdy se strm\\u00e9 b\\u00edl\\u00e9 sk\\u00e1ly snoub\\u00ed s n\\u00e1dhern\\u011b azurov\\u011b modr\\u00fdm mo\\u0159em. A\\u017e p\\u0159ekr\\u00e1sn\\u011b k\\u00fd\\u010dovit\\u00e9 jsou v\\u00fdhledy na m\\u011bste\\u010dka pln\\u00e1 \\u010dist\\u00fdch b\\u00edl\\u00fdch domk\\u016f s modr\\u00fdmi okenicemi a st\\u0159echami. Kombinace b\\u00edl\\u00e9 a k modr\\u00e9 barvy \\u0158ecku zkr\\u00e1tka pat\\u0159\\u00ed. Koneckonc\\u016f, jsou to barvy \\u0159eck\\u00e9 st\\u00e1tn\\u00ed vlajky. Modr\\u00e1 barva je symbolem mo\\u0159e a bezobla\\u010dn\\u00e9 ji\\u017en\\u00ed oblohy. B\\u00edl\\u00e1 barva p\\u0159ipom\\u00edn\\u00e1 \\u010distotu jejich z\\u00e1m\\u011br\\u016f v boji za svobodu a nez\\u00e1vislost. K\\u0159\\u00ed\\u017e ve \\u010dtverci je pak odkazem na v\\u00edru a \\u0159eckou zbo\\u017enost.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">S n\\u00e1mi pozn\\u00e1te jedine\\u010dn\\u00e9 \\u0159eck\\u00e9 ostrovy nejen v J\\u00f3nsk\\u00e9m a Egejsk\\u00e9m mo\\u0159i. Ka\\u017ed\\u00fd z ostrov\\u016f (kter\\u00fdch je v\\u00edce ne\\u017e 2000) v\\u00e1s p\\u0159iv\\u00edt\\u00e1 svou jedine\\u010dnou architekturou. Na v\\u011bt\\u0161in\\u011b z nich je mo\\u017en\\u00e9 si vyp\\u016fj\\u010dit <span style=\\"text-decoration: underline;\\">Katamaran<\\/span> a vydat se prozkoumat ostrovy, a p\\u0159edev\\u0161\\u00edm z\\u00e1toky, kter\\u00e9 nejsou z pevniny dostupn\\u00e9. <span style=\\"color: #00ae00;\\">Nalo\\u010fte se k n\\u00e1m a nechte na sebe d\\u00fdchnout jejich mystickou atmosf\\u00e9ru, daleko od pr\\u016fmyslu a neust\\u00e1l\\u00e9ho shonu. (odkaz \\/ proklik na mapu) <\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*<\\/span><span style=\\"color: #00ae00;\\">LEFKADA<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*ZAKYNTHOS<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><strong>FOTKA<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">\\u0158ecko je st\\u00e1t, kter\\u00fd je ve sv\\u00e9 ji\\u017en\\u00ed \\u010d\\u00e1sti tvo\\u0159en velk\\u00fdm mno\\u017estv\\u00edm men\\u0161\\u00edch a v\\u011bt\\u0161\\u00edch ostrov\\u016f. Zdej\\u0161\\u00ed gastronomie je tedy p\\u0159edem dan\\u00e1. \\u0160\\u0165avnat\\u00e1 zelenina, \\u010derstv\\u00e9 mo\\u0159sk\\u00e9 plody a ryby, vo\\u0148av\\u00e9 bylinky a samoz\\u0159ejm\\u011b olivov\\u00fd olej. To jsou hlavn\\u00ed suroviny, kter\\u00e9 v m\\u00edstn\\u00edch Tavern\\u00e1ch (restaurac\\u00edch) ochutn\\u00e1te. Slovo GASTRONIMIE je \\u0159eck\\u00e9ho p\\u016fvodu \\u2013 nen\\u00ed pro to divu, \\u017ee jeho kuchyn\\u011b je sv\\u011btov\\u011b proslul\\u00e1.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">Ka\\u017ed\\u00fd z ostrov\\u016f nab\\u00edz\\u00ed n\\u011bco jin\\u00e9ho. Je jen na v\\u00e1s, kde a jak se rozhodnete tr\\u00e1vit va\\u0161\\u00ed dovolenou. Jsou tu pl\\u00e1\\u017ee, kde se potk\\u00e1te s civilizac\\u00ed, kde jsou pozvoln\\u00fdm vstupem do mo\\u0159e lemov\\u00e1ny hotely. Dal\\u0161\\u00ed jsou pak pr\\u00e1zdn\\u00e9 a klidn\\u00e9, kde se maxim\\u00e1ln\\u011b potk\\u00e1te s dal\\u0161\\u00ed pos\\u00e1dkou. Ostrovn\\u00ed pl\\u00e1\\u017ee maj\\u00ed jednu (ne)v\\u00fdhodu - v p\\u0159\\u00edpad\\u011b velk\\u00fdch vln jsou chr\\u00e1n\\u011bny jin\\u00fdmi bl\\u00edzk\\u00fdmi ostrovy. Kotvit se d\\u00e1 i v z\\u00e1tok\\u00e1ch lemovan\\u00fdch strm\\u00fdmi sk\\u00e1lami, kde je k p\\u0159\\u00edstup pouze po schodech shora.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">LEFKADA<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Lefkada le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, pod ostrovem Korfu. Od pevniny je vzd\\u00e1len pouze 1 km a je s n\\u00ed spojen pomoc\\u00ed zvedac\\u00edho mostu, na jeho\\u017e konci v\\u00e1s p\\u0159iv\\u00edt\\u00e1 hlavn\\u00ed m\\u011bsto Lefkada, s polovinou obyvatelstva ostrova. Tedy s po\\u010dtem p\\u0159es 10 000.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Na <\\/strong>cel\\u00e9m ostrov\\u011b se rozkl\\u00e1d\\u00e1 jedine\\u010dn\\u00e9 poho\\u0159\\u00ed Stavrotas, jeho\\u017e vrcholy p\\u0159esahuj\\u00ed v\\u00fd\\u0161ky 1 000 m. Panorama vrcholk\\u016f hor a neuv\\u011b\\u0159iteln\\u011b modr\\u00e9ho mo\\u0159e je nezapomenuteln\\u00e9.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Pl\\u00e1\\u017ee<\\/strong> jsou v\\u011bt\\u0161inou lemov\\u00e1ny prudk\\u00fdmi v\\u00e1pencov\\u00fdmi skalisky s krasov\\u00fdmi jeskyn\\u011bmi. Mo\\u0159e je od v\\u00e1pencov\\u00e9ho p\\u00edsku zbarveno do n\\u00e1dhern\\u00e9ho odst\\u00ednu modr\\u00e9 barvy.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">ZAKYNTHOS<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Zakynthos, kter\\u00fd s v\\u00edce jak 41 000 obyvateli je t\\u0159et\\u00ed nejv\\u011bt\\u0161\\u00ed ostrov v Jonsk\\u00e9m mo\\u0159i, le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, vzd\\u00e1len\\u00e9 16 km. Hlavn\\u00edm m\\u011bstem je Zakynthos (kde \\u017eije okolo 16 000 obyvatel), kter\\u00fd je d\\u016fle\\u017eit\\u00fdm p\\u0159\\u00edstavem a v bl\\u00edzkosti m\\u011bsta le\\u017e\\u00ed i leti\\u0161t\\u011b.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Jako<\\/strong> v\\u011bt\\u0161ina I\\u00f3nsk\\u00fdch ostrov\\u016f je hornat\\u00fd. Jeho vrcholy jsou ale ni\\u017e\\u0161\\u00ed ne\\u017e na Lefkad\\u011b (nejvy\\u0161\\u0161\\u00ed m\\u011b\\u0159\\u00ed 758 m) a ve v\\u00fdchodn\\u00ed \\u010d\\u00e1sti p\\u0159eva\\u017euj\\u00ed sp\\u00ed\\u0161e rovinat\\u00e9 plochy. Na ostrov\\u011b \\u017eije vz\\u00e1cn\\u00fd druh \\u017eelv, kter\\u00e9 naleznte vyobrazeny snad v\\u0161ude a na v\\u0161em. P\\u0159ed turisty v\\u0161ak nejsou dostate\\u010dn\\u011b chr\\u00e1n\\u011bn\\u00e9 a hroz\\u00ed jejich vyhynut\\u00ed.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Za <\\/strong>prohl\\u00e9dnut\\u00ed na ostrov\\u011b stoj\\u00ed pl\\u00e1\\u017ee na severu ostrova s n\\u00e1zvem Navagio, kde v\\u00e1s uchv\\u00e1t\\u00ed prudk\\u00e9 sk\\u00e1ly nad zlatav\\u00fdm p\\u00edskem mal\\u00fdch pl\\u00e1\\u017e\\u00ed a pl\\u00e1\\u017ei\\u010dek a opravdu neuv\\u011b\\u0159iteln\\u00e9 odst\\u00edny modr\\u00e9 barvy mo\\u0159e. &nbsp;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2013-12-26 23:35:32","created_by":"683","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-12-26 23:35:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(10, 4, 1, '', '2013-12-26 23:43:34', 683, 8424, '85dca7f1eb094769a18d9053ddc62eb1f85e525e', '{"id":4,"asset_id":"67","title":"\\u0158ECKO","alias":"recko","introtext":"<p style=\\"margin-bottom: 0cm;\\">Krajina pln\\u00e1 d\\u00e1vn\\u00e9 historie, p\\u0159\\u00edrody a vst\\u0159\\u00edcn\\u00fdch lid\\u00ed - To je \\u0158ecko! Ostrovy v oblasti ji\\u017en\\u00ed Evropy v\\u00e1m nab\\u00eddnou jedine\\u010dn\\u00e9 p\\u0159\\u00edrodn\\u00ed scen\\u00e9rie, kdy se strm\\u00e9 b\\u00edl\\u00e9 sk\\u00e1ly snoub\\u00ed s n\\u00e1dhern\\u011b azurov\\u011b modr\\u00fdm mo\\u0159em. A\\u017e p\\u0159ekr\\u00e1sn\\u011b k\\u00fd\\u010dovit\\u00e9 jsou v\\u00fdhledy na m\\u011bste\\u010dka pln\\u00e1 \\u010dist\\u00fdch b\\u00edl\\u00fdch domk\\u016f s modr\\u00fdmi okenicemi a st\\u0159echami. Kombinace b\\u00edl\\u00e9 a k modr\\u00e9 barvy \\u0158ecku zkr\\u00e1tka pat\\u0159\\u00ed. Koneckonc\\u016f, jsou to barvy \\u0159eck\\u00e9 st\\u00e1tn\\u00ed vlajky. Modr\\u00e1 barva je symbolem mo\\u0159e a bezobla\\u010dn\\u00e9 ji\\u017en\\u00ed oblohy. B\\u00edl\\u00e1 barva p\\u0159ipom\\u00edn\\u00e1 \\u010distotu jejich z\\u00e1m\\u011br\\u016f v boji za svobodu a nez\\u00e1vislost. K\\u0159\\u00ed\\u017e ve \\u010dtverci je pak odkazem na v\\u00edru a \\u0159eckou zbo\\u017enost.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">S n\\u00e1mi pozn\\u00e1te jedine\\u010dn\\u00e9 \\u0159eck\\u00e9 ostrovy nejen v J\\u00f3nsk\\u00e9m a Egejsk\\u00e9m mo\\u0159i. Ka\\u017ed\\u00fd z ostrov\\u016f (kter\\u00fdch je v\\u00edce ne\\u017e 2000) v\\u00e1s p\\u0159iv\\u00edt\\u00e1 svou jedine\\u010dnou architekturou. Na v\\u011bt\\u0161in\\u011b z nich je mo\\u017en\\u00e9 si vyp\\u016fj\\u010dit katamaran&nbsp;a vydat se prozkoumat ostrovy, a p\\u0159edev\\u0161\\u00edm z\\u00e1toky, kter\\u00e9 nejsou z pevniny dostupn\\u00e9. <span style=\\"color: #00ae00;\\">Nalo\\u010fte se k n\\u00e1m a nechte na sebe d\\u00fdchnout jejich mystickou atmosf\\u00e9ru, daleko od pr\\u016fmyslu a neust\\u00e1l\\u00e9ho shonu. <span style=\\"color: #ff0000;\\">(odkaz \\/ proklik na mapu)<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\"><\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\"> <\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*<\\/span><span style=\\"color: #00ae00;\\">LEFKADA<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*ZAKYNTHOS<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><strong>FOTKA<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">\\u0158ecko je st\\u00e1t, kter\\u00fd je ve sv\\u00e9 ji\\u017en\\u00ed \\u010d\\u00e1sti tvo\\u0159en velk\\u00fdm mno\\u017estv\\u00edm men\\u0161\\u00edch a v\\u011bt\\u0161\\u00edch ostrov\\u016f. Zdej\\u0161\\u00ed gastronomie je tedy p\\u0159edem dan\\u00e1. \\u0160\\u0165avnat\\u00e1 zelenina, \\u010derstv\\u00e9 mo\\u0159sk\\u00e9 plody a ryby, vo\\u0148av\\u00e9 bylinky a samoz\\u0159ejm\\u011b olivov\\u00fd olej. To jsou hlavn\\u00ed suroviny, kter\\u00e9 v m\\u00edstn\\u00edch Tavern\\u00e1ch (restaurac\\u00edch) ochutn\\u00e1te. Slovo GASTRONIMIE je \\u0159eck\\u00e9ho p\\u016fvodu \\u2013 nen\\u00ed pro to divu, \\u017ee jeho kuchyn\\u011b je sv\\u011btov\\u011b proslul\\u00e1.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">Ka\\u017ed\\u00fd z ostrov\\u016f nab\\u00edz\\u00ed n\\u011bco jin\\u00e9ho. Je jen na v\\u00e1s, kde a jak se rozhodnete tr\\u00e1vit va\\u0161\\u00ed dovolenou. Jsou tu pl\\u00e1\\u017ee, kde se potk\\u00e1te s civilizac\\u00ed, kde jsou pozvoln\\u00fdm vstupem do mo\\u0159e lemov\\u00e1ny hotely. Dal\\u0161\\u00ed jsou pak pr\\u00e1zdn\\u00e9 a klidn\\u00e9, kde se maxim\\u00e1ln\\u011b potk\\u00e1te s dal\\u0161\\u00ed pos\\u00e1dkou. Ostrovn\\u00ed pl\\u00e1\\u017ee maj\\u00ed jednu (ne)v\\u00fdhodu - v p\\u0159\\u00edpad\\u011b velk\\u00fdch vln jsou chr\\u00e1n\\u011bny jin\\u00fdmi bl\\u00edzk\\u00fdmi ostrovy. Kotvit se d\\u00e1 i v z\\u00e1tok\\u00e1ch lemovan\\u00fdch strm\\u00fdmi sk\\u00e1lami, kde je k p\\u0159\\u00edstup pouze po schodech shora.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">LEFKADA<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Lefkada le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, pod ostrovem Korfu. Od pevniny je vzd\\u00e1len pouze 1 km a je s n\\u00ed spojen pomoc\\u00ed zvedac\\u00edho mostu, na jeho\\u017e konci v\\u00e1s p\\u0159iv\\u00edt\\u00e1 hlavn\\u00ed m\\u011bsto Lefkada, s polovinou obyvatelstva ostrova. Tedy s po\\u010dtem p\\u0159es 10 000.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Na <\\/strong>cel\\u00e9m ostrov\\u011b se rozkl\\u00e1d\\u00e1 jedine\\u010dn\\u00e9 poho\\u0159\\u00ed Stavrotas, jeho\\u017e vrcholy p\\u0159esahuj\\u00ed v\\u00fd\\u0161ky 1 000 m. Panorama vrcholk\\u016f hor a neuv\\u011b\\u0159iteln\\u011b modr\\u00e9ho mo\\u0159e je nezapomenuteln\\u00e9.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Pl\\u00e1\\u017ee<\\/strong> jsou v\\u011bt\\u0161inou lemov\\u00e1ny prudk\\u00fdmi v\\u00e1pencov\\u00fdmi skalisky s krasov\\u00fdmi jeskyn\\u011bmi. Mo\\u0159e je od v\\u00e1pencov\\u00e9ho p\\u00edsku zbarveno do n\\u00e1dhern\\u00e9ho odst\\u00ednu modr\\u00e9 barvy.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">ZAKYNTHOS<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Zakynthos, kter\\u00fd s v\\u00edce jak 41 000 obyvateli je t\\u0159et\\u00ed nejv\\u011bt\\u0161\\u00ed ostrov v Jonsk\\u00e9m mo\\u0159i, le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, vzd\\u00e1len\\u00e9 16 km. Hlavn\\u00edm m\\u011bstem je Zakynthos (kde \\u017eije okolo 16 000 obyvatel), kter\\u00fd je d\\u016fle\\u017eit\\u00fdm p\\u0159\\u00edstavem a v bl\\u00edzkosti m\\u011bsta le\\u017e\\u00ed i leti\\u0161t\\u011b.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Jako<\\/strong> v\\u011bt\\u0161ina I\\u00f3nsk\\u00fdch ostrov\\u016f je hornat\\u00fd. Jeho vrcholy jsou ale ni\\u017e\\u0161\\u00ed ne\\u017e na Lefkad\\u011b (nejvy\\u0161\\u0161\\u00ed m\\u011b\\u0159\\u00ed 758 m) a ve v\\u00fdchodn\\u00ed \\u010d\\u00e1sti p\\u0159eva\\u017euj\\u00ed sp\\u00ed\\u0161e rovinat\\u00e9 plochy. Na ostrov\\u011b \\u017eije vz\\u00e1cn\\u00fd druh \\u017eelv, kter\\u00e9 naleznte vyobrazeny snad v\\u0161ude a na v\\u0161em. P\\u0159ed turisty v\\u0161ak nejsou dostate\\u010dn\\u011b chr\\u00e1n\\u011bn\\u00e9 a hroz\\u00ed jejich vyhynut\\u00ed.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Za <\\/strong>prohl\\u00e9dnut\\u00ed na ostrov\\u011b stoj\\u00ed pl\\u00e1\\u017ee na severu ostrova s n\\u00e1zvem Navagio, kde v\\u00e1s uchv\\u00e1t\\u00ed prudk\\u00e9 sk\\u00e1ly nad zlatav\\u00fdm p\\u00edskem mal\\u00fdch pl\\u00e1\\u017e\\u00ed a pl\\u00e1\\u017ei\\u010dek a opravdu neuv\\u011b\\u0159iteln\\u00e9 odst\\u00edny modr\\u00e9 barvy mo\\u0159e. &nbsp;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2013-12-26 23:35:32","created_by":"683","created_by_alias":"","modified":"2013-12-26 23:43:34","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-26 23:41:55","publish_up":"2013-12-26 23:35:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(11, 4, 1, '', '2013-12-26 23:44:37', 683, 8413, '8b3d5f416958af5bbd37a09460074f0e5667b17d', '{"id":4,"asset_id":"67","title":"\\u0158ECKO","alias":"recko","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\">Krajina pln\\u00e1 d\\u00e1vn\\u00e9 historie, p\\u0159\\u00edrody a vst\\u0159\\u00edcn\\u00fdch lid\\u00ed - to je \\u0158ecko! Ostrovy v oblasti ji\\u017en\\u00ed Evropy v\\u00e1m nab\\u00eddnou jedine\\u010dn\\u00e9 p\\u0159\\u00edrodn\\u00ed scen\\u00e9rie, kdy se strm\\u00e9 b\\u00edl\\u00e9 sk\\u00e1ly snoub\\u00ed s n\\u00e1dhern\\u011b azurov\\u011b modr\\u00fdm mo\\u0159em. A\\u017e p\\u0159ekr\\u00e1sn\\u011b k\\u00fd\\u010dovit\\u00e9 jsou v\\u00fdhledy na m\\u011bste\\u010dka pln\\u00e1 \\u010dist\\u00fdch b\\u00edl\\u00fdch domk\\u016f s modr\\u00fdmi okenicemi a st\\u0159echami. Kombinace b\\u00edl\\u00e9 a k modr\\u00e9 barvy \\u0158ecku zkr\\u00e1tka pat\\u0159\\u00ed. Koneckonc\\u016f, jsou to barvy \\u0159eck\\u00e9 st\\u00e1tn\\u00ed vlajky. Modr\\u00e1 barva je symbolem mo\\u0159e a bezobla\\u010dn\\u00e9 ji\\u017en\\u00ed oblohy. B\\u00edl\\u00e1 barva p\\u0159ipom\\u00edn\\u00e1 \\u010distotu jejich z\\u00e1m\\u011br\\u016f v boji za svobodu a nez\\u00e1vislost. K\\u0159\\u00ed\\u017e ve \\u010dtverci je pak odkazem na v\\u00edru a \\u0159eckou zbo\\u017enost.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">S n\\u00e1mi pozn\\u00e1te jedine\\u010dn\\u00e9 \\u0159eck\\u00e9 ostrovy nejen v J\\u00f3nsk\\u00e9m a Egejsk\\u00e9m mo\\u0159i. Ka\\u017ed\\u00fd z ostrov\\u016f (kter\\u00fdch je v\\u00edce ne\\u017e 2000) v\\u00e1s p\\u0159iv\\u00edt\\u00e1 svou jedine\\u010dnou architekturou. Na v\\u011bt\\u0161in\\u011b z nich je mo\\u017en\\u00e9 si vyp\\u016fj\\u010dit katamaran&nbsp;a vydat se prozkoumat ostrovy, a p\\u0159edev\\u0161\\u00edm z\\u00e1toky, kter\\u00e9 nejsou z pevniny dostupn\\u00e9. <span style=\\"color: #00ae00;\\">Nalo\\u010fte se k n\\u00e1m a nechte na sebe d\\u00fdchnout jejich mystickou atmosf\\u00e9ru, daleko od pr\\u016fmyslu a neust\\u00e1l\\u00e9ho shonu.<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\"><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\"> <span style=\\"color: #ff0000;\\">(odkaz \\/ proklik na mapu)<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*<\\/span><span style=\\"color: #00ae00;\\">LEFKADA<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*ZAKYNTHOS<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><strong>FOTKA<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">\\u0158ecko je st\\u00e1t, kter\\u00fd je ve sv\\u00e9 ji\\u017en\\u00ed \\u010d\\u00e1sti tvo\\u0159en velk\\u00fdm mno\\u017estv\\u00edm men\\u0161\\u00edch a v\\u011bt\\u0161\\u00edch ostrov\\u016f. Zdej\\u0161\\u00ed gastronomie je tedy p\\u0159edem dan\\u00e1. \\u0160\\u0165avnat\\u00e1 zelenina, \\u010derstv\\u00e9 mo\\u0159sk\\u00e9 plody a ryby, vo\\u0148av\\u00e9 bylinky a samoz\\u0159ejm\\u011b olivov\\u00fd olej. To jsou hlavn\\u00ed suroviny, kter\\u00e9 v m\\u00edstn\\u00edch Tavern\\u00e1ch (restaurac\\u00edch) ochutn\\u00e1te. Slovo GASTRONIMIE je \\u0159eck\\u00e9ho p\\u016fvodu \\u2013 nen\\u00ed pro to divu, \\u017ee jeho kuchyn\\u011b je sv\\u011btov\\u011b proslul\\u00e1.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">Ka\\u017ed\\u00fd z ostrov\\u016f nab\\u00edz\\u00ed n\\u011bco jin\\u00e9ho. Je jen na v\\u00e1s, kde a jak se rozhodnete tr\\u00e1vit va\\u0161\\u00ed dovolenou. Jsou tu pl\\u00e1\\u017ee, kde se potk\\u00e1te s civilizac\\u00ed, kde jsou pozvoln\\u00fdm vstupem do mo\\u0159e lemov\\u00e1ny hotely. Dal\\u0161\\u00ed jsou pak pr\\u00e1zdn\\u00e9 a klidn\\u00e9, kde se maxim\\u00e1ln\\u011b potk\\u00e1te s dal\\u0161\\u00ed pos\\u00e1dkou. Ostrovn\\u00ed pl\\u00e1\\u017ee maj\\u00ed jednu (ne)v\\u00fdhodu - v p\\u0159\\u00edpad\\u011b velk\\u00fdch vln jsou chr\\u00e1n\\u011bny jin\\u00fdmi bl\\u00edzk\\u00fdmi ostrovy. Kotvit se d\\u00e1 i v z\\u00e1tok\\u00e1ch lemovan\\u00fdch strm\\u00fdmi sk\\u00e1lami, kde je k p\\u0159\\u00edstup pouze po schodech shora.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">LEFKADA<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Lefkada le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, pod ostrovem Korfu. Od pevniny je vzd\\u00e1len pouze 1 km a je s n\\u00ed spojen pomoc\\u00ed zvedac\\u00edho mostu, na jeho\\u017e konci v\\u00e1s p\\u0159iv\\u00edt\\u00e1 hlavn\\u00ed m\\u011bsto Lefkada, s polovinou obyvatelstva ostrova. Tedy s po\\u010dtem p\\u0159es 10 000.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Na <\\/strong>cel\\u00e9m ostrov\\u011b se rozkl\\u00e1d\\u00e1 jedine\\u010dn\\u00e9 poho\\u0159\\u00ed Stavrotas, jeho\\u017e vrcholy p\\u0159esahuj\\u00ed v\\u00fd\\u0161ky 1 000 m. Panorama vrcholk\\u016f hor a neuv\\u011b\\u0159iteln\\u011b modr\\u00e9ho mo\\u0159e je nezapomenuteln\\u00e9.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Pl\\u00e1\\u017ee<\\/strong> jsou v\\u011bt\\u0161inou lemov\\u00e1ny prudk\\u00fdmi v\\u00e1pencov\\u00fdmi skalisky s krasov\\u00fdmi jeskyn\\u011bmi. Mo\\u0159e je od v\\u00e1pencov\\u00e9ho p\\u00edsku zbarveno do n\\u00e1dhern\\u00e9ho odst\\u00ednu modr\\u00e9 barvy.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">ZAKYNTHOS<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Zakynthos, kter\\u00fd s v\\u00edce jak 41 000 obyvateli je t\\u0159et\\u00ed nejv\\u011bt\\u0161\\u00ed ostrov v Jonsk\\u00e9m mo\\u0159i, le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, vzd\\u00e1len\\u00e9 16 km. Hlavn\\u00edm m\\u011bstem je Zakynthos (kde \\u017eije okolo 16 000 obyvatel), kter\\u00fd je d\\u016fle\\u017eit\\u00fdm p\\u0159\\u00edstavem a v bl\\u00edzkosti m\\u011bsta le\\u017e\\u00ed i leti\\u0161t\\u011b.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Jako<\\/strong> v\\u011bt\\u0161ina I\\u00f3nsk\\u00fdch ostrov\\u016f je hornat\\u00fd. Jeho vrcholy jsou ale ni\\u017e\\u0161\\u00ed ne\\u017e na Lefkad\\u011b (nejvy\\u0161\\u0161\\u00ed m\\u011b\\u0159\\u00ed 758 m) a ve v\\u00fdchodn\\u00ed \\u010d\\u00e1sti p\\u0159eva\\u017euj\\u00ed sp\\u00ed\\u0161e rovinat\\u00e9 plochy. Na ostrov\\u011b \\u017eije vz\\u00e1cn\\u00fd druh \\u017eelv, kter\\u00e9 naleznte vyobrazeny snad v\\u0161ude a na v\\u0161em. P\\u0159ed turisty v\\u0161ak nejsou dostate\\u010dn\\u011b chr\\u00e1n\\u011bn\\u00e9 a hroz\\u00ed jejich vyhynut\\u00ed.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Za <\\/strong>prohl\\u00e9dnut\\u00ed na ostrov\\u011b stoj\\u00ed pl\\u00e1\\u017ee na severu ostrova s n\\u00e1zvem Navagio, kde v\\u00e1s uchv\\u00e1t\\u00ed prudk\\u00e9 sk\\u00e1ly nad zlatav\\u00fdm p\\u00edskem mal\\u00fdch pl\\u00e1\\u017e\\u00ed a pl\\u00e1\\u017ei\\u010dek a opravdu neuv\\u011b\\u0159iteln\\u00e9 odst\\u00edny modr\\u00e9 barvy mo\\u0159e. &nbsp;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2013-12-26 23:35:32","created_by":"683","created_by_alias":"","modified":"2013-12-26 23:44:37","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-26 23:43:52","publish_up":"2013-12-26 23:35:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0);
INSERT INTO `fb_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(12, 4, 1, '', '2013-12-26 23:45:35', 683, 8336, '355f6b2c95feaf66692f37e27f5e924bfa377fd0', '{"id":4,"asset_id":"67","title":"\\u0158ECKO","alias":"recko","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\">Krajina pln\\u00e1 d\\u00e1vn\\u00e9 historie, p\\u0159\\u00edrody a vst\\u0159\\u00edcn\\u00fdch lid\\u00ed - to je \\u0158ecko! Ostrovy v oblasti ji\\u017en\\u00ed Evropy v\\u00e1m nab\\u00eddnou jedine\\u010dn\\u00e9 p\\u0159\\u00edrodn\\u00ed scen\\u00e9rie, kdy se strm\\u00e9 b\\u00edl\\u00e9 sk\\u00e1ly snoub\\u00ed s n\\u00e1dhern\\u011b azurov\\u011b modr\\u00fdm mo\\u0159em. A\\u017e p\\u0159ekr\\u00e1sn\\u011b k\\u00fd\\u010dovit\\u00e9 jsou v\\u00fdhledy na m\\u011bste\\u010dka pln\\u00e1 \\u010dist\\u00fdch b\\u00edl\\u00fdch domk\\u016f s modr\\u00fdmi okenicemi a st\\u0159echami. Kombinace b\\u00edl\\u00e9 a k modr\\u00e9 barvy \\u0158ecku zkr\\u00e1tka pat\\u0159\\u00ed. Koneckonc\\u016f, jsou to barvy \\u0159eck\\u00e9 st\\u00e1tn\\u00ed vlajky. Modr\\u00e1 barva je symbolem mo\\u0159e a bezobla\\u010dn\\u00e9 ji\\u017en\\u00ed oblohy. B\\u00edl\\u00e1 barva p\\u0159ipom\\u00edn\\u00e1 \\u010distotu jejich z\\u00e1m\\u011br\\u016f v boji za svobodu a nez\\u00e1vislost. K\\u0159\\u00ed\\u017e ve \\u010dtverci je pak odkazem na v\\u00edru a \\u0159eckou zbo\\u017enost.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">S n\\u00e1mi pozn\\u00e1te jedine\\u010dn\\u00e9 \\u0159eck\\u00e9 ostrovy nejen v J\\u00f3nsk\\u00e9m a Egejsk\\u00e9m mo\\u0159i. Ka\\u017ed\\u00fd z ostrov\\u016f (kter\\u00fdch je v\\u00edce ne\\u017e 2000) v\\u00e1s p\\u0159iv\\u00edt\\u00e1 svou jedine\\u010dnou architekturou. Na v\\u011bt\\u0161in\\u011b z nich je mo\\u017en\\u00e9 si vyp\\u016fj\\u010dit katamaran&nbsp;a vydat se prozkoumat ostrovy, a p\\u0159edev\\u0161\\u00edm z\\u00e1toky, kter\\u00e9 nejsou z pevniny dostupn\\u00e9. <span style=\\"color: #00ae00;\\">Nalo\\u010fte se k n\\u00e1m a nechte na sebe d\\u00fdchnout jejich mystickou atmosf\\u00e9ru, daleko od pr\\u016fmyslu a neust\\u00e1l\\u00e9ho shonu.&nbsp;<\\/span><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\">(odkaz \\/ proklik na mapu)<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-size: 0.8em;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*<\\/span><span style=\\"color: #00ae00;\\">LEFKADA<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*ZAKYNTHOS<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><strong>FOTKA<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">\\u0158ecko je st\\u00e1t, kter\\u00fd je ve sv\\u00e9 ji\\u017en\\u00ed \\u010d\\u00e1sti tvo\\u0159en velk\\u00fdm mno\\u017estv\\u00edm men\\u0161\\u00edch a v\\u011bt\\u0161\\u00edch ostrov\\u016f. Zdej\\u0161\\u00ed gastronomie je tedy p\\u0159edem dan\\u00e1. \\u0160\\u0165avnat\\u00e1 zelenina, \\u010derstv\\u00e9 mo\\u0159sk\\u00e9 plody a ryby, vo\\u0148av\\u00e9 bylinky a samoz\\u0159ejm\\u011b olivov\\u00fd olej. To jsou hlavn\\u00ed suroviny, kter\\u00e9 v m\\u00edstn\\u00edch Tavern\\u00e1ch (restaurac\\u00edch) ochutn\\u00e1te. Slovo GASTRONIMIE je \\u0159eck\\u00e9ho p\\u016fvodu \\u2013 nen\\u00ed pro to divu, \\u017ee jeho kuchyn\\u011b je sv\\u011btov\\u011b proslul\\u00e1.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">Ka\\u017ed\\u00fd z ostrov\\u016f nab\\u00edz\\u00ed n\\u011bco jin\\u00e9ho. Je jen na v\\u00e1s, kde a jak se rozhodnete tr\\u00e1vit va\\u0161\\u00ed dovolenou. Jsou tu pl\\u00e1\\u017ee, kde se potk\\u00e1te s civilizac\\u00ed, kde jsou pozvoln\\u00fdm vstupem do mo\\u0159e lemov\\u00e1ny hotely. Dal\\u0161\\u00ed jsou pak pr\\u00e1zdn\\u00e9 a klidn\\u00e9, kde se maxim\\u00e1ln\\u011b potk\\u00e1te s dal\\u0161\\u00ed pos\\u00e1dkou. Ostrovn\\u00ed pl\\u00e1\\u017ee maj\\u00ed jednu (ne)v\\u00fdhodu - v p\\u0159\\u00edpad\\u011b velk\\u00fdch vln jsou chr\\u00e1n\\u011bny jin\\u00fdmi bl\\u00edzk\\u00fdmi ostrovy. Kotvit se d\\u00e1 i v z\\u00e1tok\\u00e1ch lemovan\\u00fdch strm\\u00fdmi sk\\u00e1lami, kde je k p\\u0159\\u00edstup pouze po schodech shora.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">LEFKADA<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Lefkada le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, pod ostrovem Korfu. Od pevniny je vzd\\u00e1len pouze 1 km a je s n\\u00ed spojen pomoc\\u00ed zvedac\\u00edho mostu, na jeho\\u017e konci v\\u00e1s p\\u0159iv\\u00edt\\u00e1 hlavn\\u00ed m\\u011bsto Lefkada, s polovinou obyvatelstva ostrova. Tedy s po\\u010dtem p\\u0159es 10 000.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Na <\\/strong>cel\\u00e9m ostrov\\u011b se rozkl\\u00e1d\\u00e1 jedine\\u010dn\\u00e9 poho\\u0159\\u00ed Stavrotas, jeho\\u017e vrcholy p\\u0159esahuj\\u00ed v\\u00fd\\u0161ky 1 000 m. Panorama vrcholk\\u016f hor a neuv\\u011b\\u0159iteln\\u011b modr\\u00e9ho mo\\u0159e je nezapomenuteln\\u00e9.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Pl\\u00e1\\u017ee<\\/strong> jsou v\\u011bt\\u0161inou lemov\\u00e1ny prudk\\u00fdmi v\\u00e1pencov\\u00fdmi skalisky s krasov\\u00fdmi jeskyn\\u011bmi. Mo\\u0159e je od v\\u00e1pencov\\u00e9ho p\\u00edsku zbarveno do n\\u00e1dhern\\u00e9ho odst\\u00ednu modr\\u00e9 barvy.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">ZAKYNTHOS<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Zakynthos, kter\\u00fd s v\\u00edce jak 41 000 obyvateli je t\\u0159et\\u00ed nejv\\u011bt\\u0161\\u00ed ostrov v Jonsk\\u00e9m mo\\u0159i, le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, vzd\\u00e1len\\u00e9 16 km. Hlavn\\u00edm m\\u011bstem je Zakynthos (kde \\u017eije okolo 16 000 obyvatel), kter\\u00fd je d\\u016fle\\u017eit\\u00fdm p\\u0159\\u00edstavem a v bl\\u00edzkosti m\\u011bsta le\\u017e\\u00ed i leti\\u0161t\\u011b.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Jako<\\/strong> v\\u011bt\\u0161ina I\\u00f3nsk\\u00fdch ostrov\\u016f je hornat\\u00fd. Jeho vrcholy jsou ale ni\\u017e\\u0161\\u00ed ne\\u017e na Lefkad\\u011b (nejvy\\u0161\\u0161\\u00ed m\\u011b\\u0159\\u00ed 758 m) a ve v\\u00fdchodn\\u00ed \\u010d\\u00e1sti p\\u0159eva\\u017euj\\u00ed sp\\u00ed\\u0161e rovinat\\u00e9 plochy. Na ostrov\\u011b \\u017eije vz\\u00e1cn\\u00fd druh \\u017eelv, kter\\u00e9 naleznte vyobrazeny snad v\\u0161ude a na v\\u0161em. P\\u0159ed turisty v\\u0161ak nejsou dostate\\u010dn\\u011b chr\\u00e1n\\u011bn\\u00e9 a hroz\\u00ed jejich vyhynut\\u00ed.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Za <\\/strong>prohl\\u00e9dnut\\u00ed na ostrov\\u011b stoj\\u00ed pl\\u00e1\\u017ee na severu ostrova s n\\u00e1zvem Navagio, kde v\\u00e1s uchv\\u00e1t\\u00ed prudk\\u00e9 sk\\u00e1ly nad zlatav\\u00fdm p\\u00edskem mal\\u00fdch pl\\u00e1\\u017e\\u00ed a pl\\u00e1\\u017ei\\u010dek a opravdu neuv\\u011b\\u0159iteln\\u00e9 odst\\u00edny modr\\u00e9 barvy mo\\u0159e. &nbsp;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2013-12-26 23:35:32","created_by":"683","created_by_alias":"","modified":"2013-12-26 23:45:35","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-26 23:45:13","publish_up":"2013-12-26 23:35:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(13, 4, 1, '', '2013-12-26 23:46:53', 683, 8357, 'd4e0334a0df9c31ac94d4203975cd0f9ecb427b5', '{"id":4,"asset_id":"67","title":"\\u0158ECKO","alias":"recko","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\">Krajina pln\\u00e1 d\\u00e1vn\\u00e9 historie, p\\u0159\\u00edrody a vst\\u0159\\u00edcn\\u00fdch lid\\u00ed - to je \\u0158ecko! Ostrovy v oblasti ji\\u017en\\u00ed Evropy v\\u00e1m nab\\u00eddnou jedine\\u010dn\\u00e9 p\\u0159\\u00edrodn\\u00ed scen\\u00e9rie, kdy se strm\\u00e9 b\\u00edl\\u00e9 sk\\u00e1ly snoub\\u00ed s n\\u00e1dhern\\u011b azurov\\u011b modr\\u00fdm mo\\u0159em. A\\u017e p\\u0159ekr\\u00e1sn\\u011b k\\u00fd\\u010dovit\\u00e9 jsou v\\u00fdhledy na m\\u011bste\\u010dka pln\\u00e1 \\u010dist\\u00fdch b\\u00edl\\u00fdch domk\\u016f s modr\\u00fdmi okenicemi a st\\u0159echami. Kombinace b\\u00edl\\u00e9 a k modr\\u00e9 barvy \\u0158ecku zkr\\u00e1tka pat\\u0159\\u00ed. Koneckonc\\u016f, jsou to barvy \\u0159eck\\u00e9 st\\u00e1tn\\u00ed vlajky. Modr\\u00e1 barva je symbolem mo\\u0159e a bezobla\\u010dn\\u00e9 ji\\u017en\\u00ed oblohy. B\\u00edl\\u00e1 barva p\\u0159ipom\\u00edn\\u00e1 \\u010distotu jejich z\\u00e1m\\u011br\\u016f v boji za svobodu a nez\\u00e1vislost. K\\u0159\\u00ed\\u017e ve \\u010dtverci je pak odkazem na v\\u00edru a \\u0159eckou zbo\\u017enost.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">S n\\u00e1mi pozn\\u00e1te jedine\\u010dn\\u00e9 \\u0159eck\\u00e9 ostrovy nejen v J\\u00f3nsk\\u00e9m a Egejsk\\u00e9m mo\\u0159i. Ka\\u017ed\\u00fd z ostrov\\u016f (kter\\u00fdch je v\\u00edce ne\\u017e 2000) v\\u00e1s p\\u0159iv\\u00edt\\u00e1 svou jedine\\u010dnou architekturou. Na v\\u011bt\\u0161in\\u011b z nich je mo\\u017en\\u00e9 si vyp\\u016fj\\u010dit katamaran&nbsp;a vydat se prozkoumat ostrovy, a p\\u0159edev\\u0161\\u00edm z\\u00e1toky, kter\\u00e9 nejsou z pevniny dostupn\\u00e9. <span style=\\"color: #00ae00;\\">Nalo\\u010fte se k n\\u00e1m a nechte na sebe d\\u00fdchnout jejich mystickou atmosf\\u00e9ru, daleko od pr\\u016fmyslu a neust\\u00e1l\\u00e9ho shonu.&nbsp;<\\/span><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\">(odkaz \\/ proklik na mapu)<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-size: 0.8em;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*<\\/span><span style=\\"color: #00ae00;\\">LEFKADA<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*ZAKYNTHOS<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><strong>FOTKA<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">\\u0158ecko je st\\u00e1t, kter\\u00fd je ve sv\\u00e9 ji\\u017en\\u00ed \\u010d\\u00e1sti tvo\\u0159en velk\\u00fdm mno\\u017estv\\u00edm men\\u0161\\u00edch a v\\u011bt\\u0161\\u00edch ostrov\\u016f. Zdej\\u0161\\u00ed gastronomie je tedy p\\u0159edem dan\\u00e1. \\u0160\\u0165avnat\\u00e1 zelenina, \\u010derstv\\u00e9 mo\\u0159sk\\u00e9 plody a ryby, vo\\u0148av\\u00e9 bylinky a samoz\\u0159ejm\\u011b olivov\\u00fd olej. To jsou hlavn\\u00ed suroviny, kter\\u00e9 v m\\u00edstn\\u00edch Tavern\\u00e1ch (restaurac\\u00edch) ochutn\\u00e1te. Slovo GASTRONIMIE je \\u0159eck\\u00e9ho p\\u016fvodu \\u2013 nen\\u00ed pro to divu, \\u017ee jeho kuchyn\\u011b je sv\\u011btov\\u011b proslul\\u00e1.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">Ka\\u017ed\\u00fd z ostrov\\u016f nab\\u00edz\\u00ed n\\u011bco jin\\u00e9ho. Je jen na v\\u00e1s, kde a jak se rozhodnete tr\\u00e1vit va\\u0161\\u00ed dovolenou. Jsou tu pl\\u00e1\\u017ee, kde se potk\\u00e1te s civilizac\\u00ed, kde jsou pozvoln\\u00fdm vstupem do mo\\u0159e lemov\\u00e1ny hotely. Dal\\u0161\\u00ed jsou pak pr\\u00e1zdn\\u00e9 a klidn\\u00e9, kde se maxim\\u00e1ln\\u011b potk\\u00e1te s dal\\u0161\\u00ed pos\\u00e1dkou. Ostrovn\\u00ed pl\\u00e1\\u017ee maj\\u00ed jednu (ne)v\\u00fdhodu - v p\\u0159\\u00edpad\\u011b velk\\u00fdch vln jsou chr\\u00e1n\\u011bny jin\\u00fdmi bl\\u00edzk\\u00fdmi ostrovy. Kotvit se d\\u00e1 i v z\\u00e1tok\\u00e1ch lemovan\\u00fdch strm\\u00fdmi sk\\u00e1lami, kde je k p\\u0159\\u00edstup pouze po schodech shora.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">LEFKADA<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Lefkada le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, pod ostrovem Korfu. Od pevniny je vzd\\u00e1len pouze 1 km a je s n\\u00ed spojen pomoc\\u00ed zvedac\\u00edho mostu, na jeho\\u017e konci v\\u00e1s p\\u0159iv\\u00edt\\u00e1 hlavn\\u00ed m\\u011bsto Lefkada, s polovinou obyvatelstva ostrova. Tedy s po\\u010dtem p\\u0159es 10 000.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Na <\\/strong>cel\\u00e9m ostrov\\u011b se rozkl\\u00e1d\\u00e1 jedine\\u010dn\\u00e9 poho\\u0159\\u00ed Stavrotas, jeho\\u017e vrcholy p\\u0159esahuj\\u00ed v\\u00fd\\u0161ky 1 000 m. Panorama vrcholk\\u016f hor a neuv\\u011b\\u0159iteln\\u011b modr\\u00e9ho mo\\u0159e je nezapomenuteln\\u00e9.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Pl\\u00e1\\u017ee<\\/strong> jsou v\\u011bt\\u0161inou lemov\\u00e1ny prudk\\u00fdmi v\\u00e1pencov\\u00fdmi skalisky s krasov\\u00fdmi jeskyn\\u011bmi. Mo\\u0159e je od v\\u00e1pencov\\u00e9ho p\\u00edsku zbarveno do n\\u00e1dhern\\u00e9ho odst\\u00ednu modr\\u00e9 barvy.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">ZAKYNTHOS<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Zakynthos, kter\\u00fd s v\\u00edce jak 41 000 obyvateli je t\\u0159et\\u00ed nejv\\u011bt\\u0161\\u00ed ostrov v Jonsk\\u00e9m mo\\u0159i, le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, vzd\\u00e1len\\u00e9 16 km. Hlavn\\u00edm m\\u011bstem je Zakynthos (kde \\u017eije okolo 16 000 obyvatel), kter\\u00fd je d\\u016fle\\u017eit\\u00fdm p\\u0159\\u00edstavem a v bl\\u00edzkosti m\\u011bsta le\\u017e\\u00ed i leti\\u0161t\\u011b.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Jako<\\/strong> v\\u011bt\\u0161ina I\\u00f3nsk\\u00fdch ostrov\\u016f je hornat\\u00fd. Jeho vrcholy jsou ale ni\\u017e\\u0161\\u00ed ne\\u017e na Lefkad\\u011b (nejvy\\u0161\\u0161\\u00ed m\\u011b\\u0159\\u00ed 758 m) a ve v\\u00fdchodn\\u00ed \\u010d\\u00e1sti p\\u0159eva\\u017euj\\u00ed sp\\u00ed\\u0161e rovinat\\u00e9 plochy. Na ostrov\\u011b \\u017eije vz\\u00e1cn\\u00fd druh \\u017eelv, kter\\u00e9 naleznte vyobrazeny snad v\\u0161ude a na v\\u0161em. P\\u0159ed turisty v\\u0161ak nejsou dostate\\u010dn\\u011b chr\\u00e1n\\u011bn\\u00e9 a hroz\\u00ed jejich vyhynut\\u00ed.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Za <\\/strong>prohl\\u00e9dnut\\u00ed na ostrov\\u011b stoj\\u00ed pl\\u00e1\\u017ee na severu ostrova s n\\u00e1zvem Navagio, kde v\\u00e1s uchv\\u00e1t\\u00ed prudk\\u00e9 sk\\u00e1ly nad zlatav\\u00fdm p\\u00edskem mal\\u00fdch pl\\u00e1\\u017e\\u00ed a pl\\u00e1\\u017ei\\u010dek a opravdu neuv\\u011b\\u0159iteln\\u00e9 odst\\u00edny modr\\u00e9 barvy mo\\u0159e. &nbsp;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2013-12-26 23:35:32","created_by":"683","created_by_alias":"","modified":"2013-12-26 23:46:53","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-26 23:46:36","publish_up":"2013-12-26 23:35:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(14, 4, 1, '', '2013-12-26 23:48:25', 683, 8288, 'd0f93877ae5780c58ef36b202a9a4ca670c29a91', '{"id":4,"asset_id":"67","title":"\\u0158ECKO","alias":"recko","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\">Krajina pln\\u00e1 d\\u00e1vn\\u00e9 historie, p\\u0159\\u00edrody a vst\\u0159\\u00edcn\\u00fdch lid\\u00ed - to je \\u0158ecko! Ostrovy v oblasti ji\\u017en\\u00ed Evropy v\\u00e1m nab\\u00eddnou jedine\\u010dn\\u00e9 p\\u0159\\u00edrodn\\u00ed scen\\u00e9rie, kdy se strm\\u00e9 b\\u00edl\\u00e9 sk\\u00e1ly snoub\\u00ed s n\\u00e1dhern\\u011b azurov\\u011b modr\\u00fdm mo\\u0159em. A\\u017e p\\u0159ekr\\u00e1sn\\u011b k\\u00fd\\u010dovit\\u00e9 jsou v\\u00fdhledy na m\\u011bste\\u010dka pln\\u00e1 \\u010dist\\u00fdch b\\u00edl\\u00fdch domk\\u016f s modr\\u00fdmi okenicemi a st\\u0159echami. Kombinace b\\u00edl\\u00e9 a k modr\\u00e9 barvy \\u0158ecku zkr\\u00e1tka pat\\u0159\\u00ed. Koneckonc\\u016f, jsou to barvy \\u0159eck\\u00e9 st\\u00e1tn\\u00ed vlajky. Modr\\u00e1 barva je symbolem mo\\u0159e a bezobla\\u010dn\\u00e9 ji\\u017en\\u00ed oblohy. B\\u00edl\\u00e1 barva p\\u0159ipom\\u00edn\\u00e1 \\u010distotu jejich z\\u00e1m\\u011br\\u016f v boji za svobodu a nez\\u00e1vislost. K\\u0159\\u00ed\\u017e ve \\u010dtverci je pak odkazem na v\\u00edru a \\u0159eckou zbo\\u017enost.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">S n\\u00e1mi pozn\\u00e1te jedine\\u010dn\\u00e9 \\u0159eck\\u00e9 ostrovy nejen v J\\u00f3nsk\\u00e9m a Egejsk\\u00e9m mo\\u0159i. Ka\\u017ed\\u00fd z ostrov\\u016f (kter\\u00fdch je v\\u00edce ne\\u017e 2000) v\\u00e1s p\\u0159iv\\u00edt\\u00e1 svou jedine\\u010dnou architekturou. Na v\\u011bt\\u0161in\\u011b z nich je mo\\u017en\\u00e9 si vyp\\u016fj\\u010dit katamaran&nbsp;a vydat se prozkoumat ostrovy, a p\\u0159edev\\u0161\\u00edm z\\u00e1toky, kter\\u00e9 nejsou z pevniny dostupn\\u00e9. <span style=\\"color: #00ae00;\\">Nalo\\u010fte se k n\\u00e1m a nechte na sebe d\\u00fdchnout jejich mystickou atmosf\\u00e9ru, daleko od pr\\u016fmyslu a neust\\u00e1l\\u00e9ho shonu.&nbsp;<\\/span><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\">(odkaz \\/ proklik na mapu)<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-size: 0.8em;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*<\\/span><span style=\\"color: #00ae00;\\">LEFKADA<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*ZAKYNTHOS<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><strong>FOTKA<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">\\u0158ecko je st\\u00e1t, kter\\u00fd je ve sv\\u00e9 ji\\u017en\\u00ed \\u010d\\u00e1sti tvo\\u0159en velk\\u00fdm mno\\u017estv\\u00edm men\\u0161\\u00edch a v\\u011bt\\u0161\\u00edch ostrov\\u016f. Zdej\\u0161\\u00ed gastronomie je tedy p\\u0159edem dan\\u00e1. \\u0160\\u0165avnat\\u00e1 zelenina, \\u010derstv\\u00e9 mo\\u0159sk\\u00e9 plody a ryby, vo\\u0148av\\u00e9 bylinky a samoz\\u0159ejm\\u011b olivov\\u00fd olej. To jsou hlavn\\u00ed suroviny, kter\\u00e9 v m\\u00edstn\\u00edch Tavern\\u00e1ch (restaurac\\u00edch) ochutn\\u00e1te. Slovo GASTRONIMIE je \\u0159eck\\u00e9ho p\\u016fvodu \\u2013 nen\\u00ed pro to divu, \\u017ee jeho kuchyn\\u011b je sv\\u011btov\\u011b proslul\\u00e1.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">Ka\\u017ed\\u00fd z ostrov\\u016f nab\\u00edz\\u00ed n\\u011bco jin\\u00e9ho. Je jen na v\\u00e1s, kde a jak se rozhodnete tr\\u00e1vit va\\u0161\\u00ed dovolenou. Jsou tu pl\\u00e1\\u017ee, kde se potk\\u00e1te s civilizac\\u00ed, kde jsou pozvoln\\u00fdm vstupem do mo\\u0159e lemov\\u00e1ny hotely. Dal\\u0161\\u00ed jsou pak pr\\u00e1zdn\\u00e9 a klidn\\u00e9, kde se maxim\\u00e1ln\\u011b potk\\u00e1te s dal\\u0161\\u00ed pos\\u00e1dkou. Ostrovn\\u00ed pl\\u00e1\\u017ee maj\\u00ed jednu (ne)v\\u00fdhodu - v p\\u0159\\u00edpad\\u011b velk\\u00fdch vln jsou chr\\u00e1n\\u011bny jin\\u00fdmi bl\\u00edzk\\u00fdmi ostrovy. Kotvit se d\\u00e1 i v z\\u00e1tok\\u00e1ch lemovan\\u00fdch strm\\u00fdmi sk\\u00e1lami, kde je k p\\u0159\\u00edstup pouze po schodech shora.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">LEFKADA<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Lefkada le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, pod ostrovem Korfu. Od pevniny je vzd\\u00e1len pouze 1 km a je s n\\u00ed spojen pomoc\\u00ed zvedac\\u00edho mostu, na jeho\\u017e konci v\\u00e1s p\\u0159iv\\u00edt\\u00e1 hlavn\\u00ed m\\u011bsto Lefkada, s polovinou obyvatelstva ostrova. Tedy s po\\u010dtem p\\u0159es 10 000.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Na <\\/strong>cel\\u00e9m ostrov\\u011b se rozkl\\u00e1d\\u00e1 jedine\\u010dn\\u00e9 poho\\u0159\\u00ed Stavrotas, jeho\\u017e vrcholy p\\u0159esahuj\\u00ed v\\u00fd\\u0161ky 1 000 m. Panorama vrcholk\\u016f hor a neuv\\u011b\\u0159iteln\\u011b modr\\u00e9ho mo\\u0159e je nezapomenuteln\\u00e9.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Pl\\u00e1\\u017ee<\\/strong> jsou v\\u011bt\\u0161inou lemov\\u00e1ny prudk\\u00fdmi v\\u00e1pencov\\u00fdmi skalisky s krasov\\u00fdmi jeskyn\\u011bmi. Mo\\u0159e je od v\\u00e1pencov\\u00e9ho p\\u00edsku zbarveno do n\\u00e1dhern\\u00e9ho odst\\u00ednu modr\\u00e9 barvy.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">ZAKYNTHOS<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Zakynthos, kter\\u00fd s v\\u00edce jak 41 000 obyvateli je t\\u0159et\\u00ed nejv\\u011bt\\u0161\\u00ed ostrov v Jonsk\\u00e9m mo\\u0159i, le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, vzd\\u00e1len\\u00e9 16 km. Hlavn\\u00edm m\\u011bstem je Zakynthos (kde \\u017eije okolo 16 000 obyvatel), kter\\u00fd je d\\u016fle\\u017eit\\u00fdm p\\u0159\\u00edstavem a v bl\\u00edzkosti m\\u011bsta le\\u017e\\u00ed i leti\\u0161t\\u011b.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Jako<\\/strong> v\\u011bt\\u0161ina I\\u00f3nsk\\u00fdch ostrov\\u016f je hornat\\u00fd. Jeho vrcholy jsou ale ni\\u017e\\u0161\\u00ed ne\\u017e na Lefkad\\u011b (nejvy\\u0161\\u0161\\u00ed m\\u011b\\u0159\\u00ed 758 m) a ve v\\u00fdchodn\\u00ed \\u010d\\u00e1sti p\\u0159eva\\u017euj\\u00ed sp\\u00ed\\u0161e rovinat\\u00e9 plochy. Na ostrov\\u011b \\u017eije vz\\u00e1cn\\u00fd druh \\u017eelv, kter\\u00e9 naleznte vyobrazeny snad v\\u0161ude a na v\\u0161em. P\\u0159ed turisty v\\u0161ak nejsou dostate\\u010dn\\u011b chr\\u00e1n\\u011bn\\u00e9 a hroz\\u00ed jejich vyhynut\\u00ed.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Za <\\/strong>prohl\\u00e9dnut\\u00ed na ostrov\\u011b stoj\\u00ed pl\\u00e1\\u017ee na severu ostrova s n\\u00e1zvem Navagio, kde v\\u00e1s uchv\\u00e1t\\u00ed prudk\\u00e9 sk\\u00e1ly nad zlatav\\u00fdm p\\u00edskem mal\\u00fdch pl\\u00e1\\u017e\\u00ed a pl\\u00e1\\u017ei\\u010dek a opravdu neuv\\u011b\\u0159iteln\\u00e9 odst\\u00edny modr\\u00e9 barvy mo\\u0159e. &nbsp;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2013-12-26 23:35:32","created_by":"683","created_by_alias":"","modified":"2013-12-26 23:48:25","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-26 23:48:14","publish_up":"2013-12-26 23:35:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(15, 4, 1, '', '2013-12-26 23:49:23', 683, 8246, '41ed8556d7effa9fc409c51aceb50e08a3a79da7', '{"id":4,"asset_id":"67","title":"\\u0158ECKO","alias":"recko","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\">Krajina pln\\u00e1 d\\u00e1vn\\u00e9 historie, p\\u0159\\u00edrody a vst\\u0159\\u00edcn\\u00fdch lid\\u00ed - to je \\u0158ecko! Ostrovy v oblasti ji\\u017en\\u00ed Evropy v\\u00e1m nab\\u00eddnou jedine\\u010dn\\u00e9 p\\u0159\\u00edrodn\\u00ed scen\\u00e9rie, kdy se strm\\u00e9 b\\u00edl\\u00e9 sk\\u00e1ly snoub\\u00ed s n\\u00e1dhern\\u011b azurov\\u011b modr\\u00fdm mo\\u0159em. A\\u017e p\\u0159ekr\\u00e1sn\\u011b k\\u00fd\\u010dovit\\u00e9 jsou v\\u00fdhledy na m\\u011bste\\u010dka pln\\u00e1 \\u010dist\\u00fdch b\\u00edl\\u00fdch domk\\u016f s modr\\u00fdmi okenicemi a st\\u0159echami. Kombinace b\\u00edl\\u00e9 a k modr\\u00e9 barvy \\u0158ecku zkr\\u00e1tka pat\\u0159\\u00ed. Koneckonc\\u016f, jsou to barvy \\u0159eck\\u00e9 st\\u00e1tn\\u00ed vlajky. Modr\\u00e1 barva je symbolem mo\\u0159e a bezobla\\u010dn\\u00e9 ji\\u017en\\u00ed oblohy. B\\u00edl\\u00e1 barva p\\u0159ipom\\u00edn\\u00e1 \\u010distotu jejich z\\u00e1m\\u011br\\u016f v boji za svobodu a nez\\u00e1vislost. K\\u0159\\u00ed\\u017e ve \\u010dtverci je pak odkazem na v\\u00edru a \\u0159eckou zbo\\u017enost.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">S n\\u00e1mi pozn\\u00e1te jedine\\u010dn\\u00e9 \\u0159eck\\u00e9 ostrovy nejen v J\\u00f3nsk\\u00e9m a Egejsk\\u00e9m mo\\u0159i. Ka\\u017ed\\u00fd z ostrov\\u016f (kter\\u00fdch je v\\u00edce ne\\u017e 2000) v\\u00e1s p\\u0159iv\\u00edt\\u00e1 svou jedine\\u010dnou architekturou. Na v\\u011bt\\u0161in\\u011b z nich je mo\\u017en\\u00e9 si vyp\\u016fj\\u010dit katamaran&nbsp;a vydat se prozkoumat ostrovy, a p\\u0159edev\\u0161\\u00edm z\\u00e1toky, kter\\u00e9 nejsou z pevniny dostupn\\u00e9. <span style=\\"color: #00ae00;\\">Nalo\\u010fte se k n\\u00e1m a nechte na sebe d\\u00fdchnout jejich mystickou atmosf\\u00e9ru, daleko od pr\\u016fmyslu a neust\\u00e1l\\u00e9ho shonu.&nbsp;<\\/span><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\">(odkaz \\/ proklik na mapu)<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-size: 0.8em;\\">&nbsp;<\\/span><span style=\\"color: #00ae00;\\">*<\\/span><span style=\\"color: #00ae00;\\">LEFKADA<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*ZAKYNTHOS<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><strong>FOTKA<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">\\u0158ecko je st\\u00e1t, kter\\u00fd je ve sv\\u00e9 ji\\u017en\\u00ed \\u010d\\u00e1sti tvo\\u0159en velk\\u00fdm mno\\u017estv\\u00edm men\\u0161\\u00edch a v\\u011bt\\u0161\\u00edch ostrov\\u016f. Zdej\\u0161\\u00ed gastronomie je tedy p\\u0159edem dan\\u00e1. \\u0160\\u0165avnat\\u00e1 zelenina, \\u010derstv\\u00e9 mo\\u0159sk\\u00e9 plody a ryby, vo\\u0148av\\u00e9 bylinky a samoz\\u0159ejm\\u011b olivov\\u00fd olej. To jsou hlavn\\u00ed suroviny, kter\\u00e9 v m\\u00edstn\\u00edch Tavern\\u00e1ch (restaurac\\u00edch) ochutn\\u00e1te. Slovo GASTRONIMIE je \\u0159eck\\u00e9ho p\\u016fvodu \\u2013 nen\\u00ed pro to divu, \\u017ee jeho kuchyn\\u011b je sv\\u011btov\\u011b proslul\\u00e1.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">Ka\\u017ed\\u00fd z ostrov\\u016f nab\\u00edz\\u00ed n\\u011bco jin\\u00e9ho. Je jen na v\\u00e1s, kde a jak se rozhodnete tr\\u00e1vit va\\u0161\\u00ed dovolenou. Jsou tu pl\\u00e1\\u017ee, kde se potk\\u00e1te s civilizac\\u00ed, kde jsou pozvoln\\u00fdm vstupem do mo\\u0159e lemov\\u00e1ny hotely. Dal\\u0161\\u00ed jsou pak pr\\u00e1zdn\\u00e9 a klidn\\u00e9, kde se maxim\\u00e1ln\\u011b potk\\u00e1te s dal\\u0161\\u00ed pos\\u00e1dkou. Ostrovn\\u00ed pl\\u00e1\\u017ee maj\\u00ed jednu (ne)v\\u00fdhodu - v p\\u0159\\u00edpad\\u011b velk\\u00fdch vln jsou chr\\u00e1n\\u011bny jin\\u00fdmi bl\\u00edzk\\u00fdmi ostrovy. Kotvit se d\\u00e1 i v z\\u00e1tok\\u00e1ch lemovan\\u00fdch strm\\u00fdmi sk\\u00e1lami, kde je k p\\u0159\\u00edstup pouze po schodech shora.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">LEFKADA<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Lefkada le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, pod ostrovem Korfu. Od pevniny je vzd\\u00e1len pouze 1 km a je s n\\u00ed spojen pomoc\\u00ed zvedac\\u00edho mostu, na jeho\\u017e konci v\\u00e1s p\\u0159iv\\u00edt\\u00e1 hlavn\\u00ed m\\u011bsto Lefkada, s polovinou obyvatelstva ostrova. Tedy s po\\u010dtem p\\u0159es 10 000.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Na <\\/strong>cel\\u00e9m ostrov\\u011b se rozkl\\u00e1d\\u00e1 jedine\\u010dn\\u00e9 poho\\u0159\\u00ed Stavrotas, jeho\\u017e vrcholy p\\u0159esahuj\\u00ed v\\u00fd\\u0161ky 1 000 m. Panorama vrcholk\\u016f hor a neuv\\u011b\\u0159iteln\\u011b modr\\u00e9ho mo\\u0159e je nezapomenuteln\\u00e9.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Pl\\u00e1\\u017ee<\\/strong> jsou v\\u011bt\\u0161inou lemov\\u00e1ny prudk\\u00fdmi v\\u00e1pencov\\u00fdmi skalisky s krasov\\u00fdmi jeskyn\\u011bmi. Mo\\u0159e je od v\\u00e1pencov\\u00e9ho p\\u00edsku zbarveno do n\\u00e1dhern\\u00e9ho odst\\u00ednu modr\\u00e9 barvy.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">ZAKYNTHOS<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Zakynthos, kter\\u00fd s v\\u00edce jak 41 000 obyvateli je t\\u0159et\\u00ed nejv\\u011bt\\u0161\\u00ed ostrov v Jonsk\\u00e9m mo\\u0159i, le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, vzd\\u00e1len\\u00e9 16 km. Hlavn\\u00edm m\\u011bstem je Zakynthos (kde \\u017eije okolo 16 000 obyvatel), kter\\u00fd je d\\u016fle\\u017eit\\u00fdm p\\u0159\\u00edstavem a v bl\\u00edzkosti m\\u011bsta le\\u017e\\u00ed i leti\\u0161t\\u011b.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Jako<\\/strong> v\\u011bt\\u0161ina I\\u00f3nsk\\u00fdch ostrov\\u016f je hornat\\u00fd. Jeho vrcholy jsou ale ni\\u017e\\u0161\\u00ed ne\\u017e na Lefkad\\u011b (nejvy\\u0161\\u0161\\u00ed m\\u011b\\u0159\\u00ed 758 m) a ve v\\u00fdchodn\\u00ed \\u010d\\u00e1sti p\\u0159eva\\u017euj\\u00ed sp\\u00ed\\u0161e rovinat\\u00e9 plochy. Na ostrov\\u011b \\u017eije vz\\u00e1cn\\u00fd druh \\u017eelv, kter\\u00e9 naleznte vyobrazeny snad v\\u0161ude a na v\\u0161em. P\\u0159ed turisty v\\u0161ak nejsou dostate\\u010dn\\u011b chr\\u00e1n\\u011bn\\u00e9 a hroz\\u00ed jejich vyhynut\\u00ed.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Za <\\/strong>prohl\\u00e9dnut\\u00ed na ostrov\\u011b stoj\\u00ed pl\\u00e1\\u017ee na severu ostrova s n\\u00e1zvem Navagio, kde v\\u00e1s uchv\\u00e1t\\u00ed prudk\\u00e9 sk\\u00e1ly nad zlatav\\u00fdm p\\u00edskem mal\\u00fdch pl\\u00e1\\u017e\\u00ed a pl\\u00e1\\u017ei\\u010dek a opravdu neuv\\u011b\\u0159iteln\\u00e9 odst\\u00edny modr\\u00e9 barvy mo\\u0159e. &nbsp;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2013-12-26 23:35:32","created_by":"683","created_by_alias":"","modified":"2013-12-26 23:49:23","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-26 23:49:15","publish_up":"2013-12-26 23:35:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(16, 1, 1, '', '2013-12-30 21:53:05', 683, 1764, '194e8ab7dca5c478ed5492b27b3b2f5332f4097b', '{"id":1,"asset_id":"58","title":"header","alias":"header","introtext":"<h1><em><strong><img src=\\"images\\/control\\/panorama.png\\" alt=\\"\\" \\/><\\/strong><\\/em><\\/h1>","fulltext":"","state":1,"catid":"2","created":"2013-12-19 23:01:35","created_by":"683","created_by_alias":"","modified":"2013-12-30 21:53:05","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-30 21:51:01","publish_up":"2013-12-19 23:01:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 5, 1, '', '2013-12-30 22:58:32', 683, 5639, 'a4b110d2ae7dee04eac6c2cbdc67156d9106ad39', '{"id":5,"asset_id":72,"title":"NA\\u0160E POS\\u00c1DKA","alias":"nase-posadka","introtext":"<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\"><strong>Na\\u0161e Pos\\u00e1dka<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">\\u0158\\u00edk\\u00e1 se, \\u017ee ka\\u017ed\\u00e9 zbo\\u017e\\u00ed m\\u00e1 sv\\u00e9ho kupce. Ch\\u00e1peme ty, pro n\\u011b\\u017e je ide\\u00e1ln\\u00ed dovolen\\u00e1 u baz\\u00e9nu v hotelu, samoz\\u0159ejm\\u011b all inclusive. Rozum\\u00edme i t\\u011bm, kte\\u0159\\u00ed si sbal\\u00ed sv\\u00fdch p\\u00e1r \\u0161vestek a vydaj\\u00ed se do sv\\u011bta po sv\\u00fdch. Jestli ale mezi n\\u011b nepat\\u0159\\u00edte a hled\\u00e1te tak trochu akci a p\\u0159itom pot\\u0159ebujete opravdu relaxovat, vyplujte s n\\u00e1mi na mo\\u0159e! Jedin\\u011b z paluby pozn\\u00e1te m\\u00edsta, kam se suchou noho nelze dostat a kter\\u00e1 v sob\\u011b skr\\u00fdvaj\\u00ed neuv\\u011b\\u0159itelnou s\\u00edlu. Na palub\\u011b toti\\u017e nen\\u00ed \\u017e\\u00e1dn\\u00fd den stejn\\u00fd!<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">Mus\\u00edme v\\u00e1s ale upozornit, \\u017ee prvn\\u00ed vyplut\\u00ed m\\u016f\\u017ee b\\u00fdt (a ve v\\u011bt\\u0161in\\u011b p\\u0159\\u00edpad\\u016f opravdu je) prvn\\u00edm krokem k z\\u00e1vislosti. Potkalo to celou na\\u0161i pos\\u00e1dku. Jsme parta \\u2026 &nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">...<br \\/><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">Je to zkr\\u00e1tka nepopsateln\\u00fd pocit. Pocit svobody a souzn\\u011bn\\u00ed s p\\u0159\\u00edrodou. R\\u00e1di o tom p\\u0159esv\\u011bd\\u010d\\u00edme i v\\u00e1s. Plavba na&nbsp;<span style=\\"color: #00ae00;\\">Katamar\\u00e1nu<span style=\\"color: #ff0000;\\">&nbsp;<\\/span><\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\"><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\"><\\/span><\\/span><span style=\\"color: #ff0000;\\">(proklik na <strong>NA\\u0160E PALUBA\\/SLU\\u017dBY) <\\/strong><\\/span>je pro plavbu s d\\u011btmi jako stvo\\u0159en\\u00fd, proto\\u017ee oproti plachetnici je na mo\\u0159i mnohem stabiln\\u011bj\\u0161\\u00ed.<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\"><strong>Nab\\u00edz\\u00edme v\\u00e1m rodinou dovolenou na m\\u00edru! Vyberte si destinaci a ostatn\\u00ed nechte na n\\u00e1s. Zajist\\u00edme pro v\\u00e1s:<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\"><strong style=\\"font-size: 0.8em;\\">* <\\/strong>Lo\\u010f dle vlastn\\u00edho v\\u00fdb\\u011bru<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\"><strong>* <\\/strong>Letenky do vybran\\u00e9 destinace<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">* Transfer z leti\\u0161t\\u011b a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">* Dopravu do mariny a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">* Ubytov\\u00e1n\\u00ed v p\\u0159ed plavbou \\u010di po jej\\u00edm skon\\u010den\\u00ed<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">* Zku\\u0161en\\u00e9ho kapit\\u00e1na<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-12-30 22:58:32","created_by":"683","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-12-30 22:58:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"cs-CZ","xreference":""}', 0);
INSERT INTO `fb_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(18, 5, 1, '', '2013-12-30 22:59:15', 683, 5428, '74a3d783beda0122ac5fc6acd854b7737e66a2db', '{"id":5,"asset_id":"72","title":"NA\\u0160E POS\\u00c1DKA","alias":"nase-posadka","introtext":"<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; text-align: justify;\\">\\u0158\\u00edk\\u00e1 se, \\u017ee ka\\u017ed\\u00e9 zbo\\u017e\\u00ed m\\u00e1 sv\\u00e9ho kupce. Ch\\u00e1peme ty, pro n\\u011b\\u017e je ide\\u00e1ln\\u00ed dovolen\\u00e1 u baz\\u00e9nu v hotelu, samoz\\u0159ejm\\u011b all inclusive. Rozum\\u00edme i t\\u011bm, kte\\u0159\\u00ed si sbal\\u00ed sv\\u00fdch p\\u00e1r \\u0161vestek a vydaj\\u00ed se do sv\\u011bta po sv\\u00fdch. Jestli ale mezi n\\u011b nepat\\u0159\\u00edte a hled\\u00e1te tak trochu akci a p\\u0159itom pot\\u0159ebujete opravdu relaxovat, vyplujte s n\\u00e1mi na mo\\u0159e! Jedin\\u011b z paluby pozn\\u00e1te m\\u00edsta, kam se suchou noho nelze dostat a kter\\u00e1 v sob\\u011b skr\\u00fdvaj\\u00ed neuv\\u011b\\u0159itelnou s\\u00edlu. Na palub\\u011b toti\\u017e nen\\u00ed \\u017e\\u00e1dn\\u00fd den stejn\\u00fd!<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">Mus\\u00edme v\\u00e1s ale upozornit, \\u017ee prvn\\u00ed vyplut\\u00ed m\\u016f\\u017ee b\\u00fdt (a ve v\\u011bt\\u0161in\\u011b p\\u0159\\u00edpad\\u016f opravdu je) prvn\\u00edm krokem k z\\u00e1vislosti. Potkalo to celou na\\u0161i pos\\u00e1dku. Jsme parta \\u2026 &nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">...<br \\/><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">Je to zkr\\u00e1tka nepopsateln\\u00fd pocit. Pocit svobody a souzn\\u011bn\\u00ed s p\\u0159\\u00edrodou. R\\u00e1di o tom p\\u0159esv\\u011bd\\u010d\\u00edme i v\\u00e1s. Plavba na&nbsp;<span style=\\"color: #00ae00;\\">Katamar\\u00e1nu<span style=\\"color: #ff0000;\\">&nbsp;<\\/span><\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\"><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\"><\\/span><\\/span><span style=\\"color: #ff0000;\\">(proklik na <strong>NA\\u0160E PALUBA\\/SLU\\u017dBY) <\\/strong><\\/span>je pro plavbu s d\\u011btmi jako stvo\\u0159en\\u00fd, proto\\u017ee oproti plachetnici je na mo\\u0159i mnohem stabiln\\u011bj\\u0161\\u00ed.<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\"><strong>Nab\\u00edz\\u00edme v\\u00e1m rodinou dovolenou na m\\u00edru! Vyberte si destinaci a ostatn\\u00ed nechte na n\\u00e1s. Zajist\\u00edme pro v\\u00e1s:<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\"><strong style=\\"font-size: 0.8em;\\">* <\\/strong>Lo\\u010f dle vlastn\\u00edho v\\u00fdb\\u011bru<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\"><strong>* <\\/strong>Letenky do vybran\\u00e9 destinace<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">* Transfer z leti\\u0161t\\u011b a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">* Dopravu do mariny a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">* Ubytov\\u00e1n\\u00ed v p\\u0159ed plavbou \\u010di po jej\\u00edm skon\\u010den\\u00ed<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt;\\">* Zku\\u0161en\\u00e9ho kapit\\u00e1na<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-12-30 22:58:32","created_by":"683","created_by_alias":"","modified":"2013-12-30 22:59:15","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-30 22:58:57","publish_up":"2013-12-30 22:58:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"cs-CZ","xreference":""}', 0),
(19, 6, 1, '', '2013-12-30 22:59:26', 683, 8214, '0148a8dbc236a3684c9b02b6ae43e7e3a334e007', '{"id":6,"asset_id":73,"title":"\\u0158ECKO (2)","alias":"recko-2","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\">Krajina pln\\u00e1 d\\u00e1vn\\u00e9 historie, p\\u0159\\u00edrody a vst\\u0159\\u00edcn\\u00fdch lid\\u00ed - to je \\u0158ecko! Ostrovy v oblasti ji\\u017en\\u00ed Evropy v\\u00e1m nab\\u00eddnou jedine\\u010dn\\u00e9 p\\u0159\\u00edrodn\\u00ed scen\\u00e9rie, kdy se strm\\u00e9 b\\u00edl\\u00e9 sk\\u00e1ly snoub\\u00ed s n\\u00e1dhern\\u011b azurov\\u011b modr\\u00fdm mo\\u0159em. A\\u017e p\\u0159ekr\\u00e1sn\\u011b k\\u00fd\\u010dovit\\u00e9 jsou v\\u00fdhledy na m\\u011bste\\u010dka pln\\u00e1 \\u010dist\\u00fdch b\\u00edl\\u00fdch domk\\u016f s modr\\u00fdmi okenicemi a st\\u0159echami. Kombinace b\\u00edl\\u00e9 a k modr\\u00e9 barvy \\u0158ecku zkr\\u00e1tka pat\\u0159\\u00ed. Koneckonc\\u016f, jsou to barvy \\u0159eck\\u00e9 st\\u00e1tn\\u00ed vlajky. Modr\\u00e1 barva je symbolem mo\\u0159e a bezobla\\u010dn\\u00e9 ji\\u017en\\u00ed oblohy. B\\u00edl\\u00e1 barva p\\u0159ipom\\u00edn\\u00e1 \\u010distotu jejich z\\u00e1m\\u011br\\u016f v boji za svobodu a nez\\u00e1vislost. K\\u0159\\u00ed\\u017e ve \\u010dtverci je pak odkazem na v\\u00edru a \\u0159eckou zbo\\u017enost.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">S n\\u00e1mi pozn\\u00e1te jedine\\u010dn\\u00e9 \\u0159eck\\u00e9 ostrovy nejen v J\\u00f3nsk\\u00e9m a Egejsk\\u00e9m mo\\u0159i. Ka\\u017ed\\u00fd z ostrov\\u016f (kter\\u00fdch je v\\u00edce ne\\u017e 2000) v\\u00e1s p\\u0159iv\\u00edt\\u00e1 svou jedine\\u010dnou architekturou. Na v\\u011bt\\u0161in\\u011b z nich je mo\\u017en\\u00e9 si vyp\\u016fj\\u010dit katamaran&nbsp;a vydat se prozkoumat ostrovy, a p\\u0159edev\\u0161\\u00edm z\\u00e1toky, kter\\u00e9 nejsou z pevniny dostupn\\u00e9. <span style=\\"color: #00ae00;\\">Nalo\\u010fte se k n\\u00e1m a nechte na sebe d\\u00fdchnout jejich mystickou atmosf\\u00e9ru, daleko od pr\\u016fmyslu a neust\\u00e1l\\u00e9ho shonu.&nbsp;<\\/span><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\">(odkaz \\/ proklik na mapu)<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-size: 0.8em;\\">&nbsp;<\\/span><span style=\\"color: #00ae00;\\">*<\\/span><span style=\\"color: #00ae00;\\">LEFKADA<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*ZAKYNTHOS<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><strong>FOTKA<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">\\u0158ecko je st\\u00e1t, kter\\u00fd je ve sv\\u00e9 ji\\u017en\\u00ed \\u010d\\u00e1sti tvo\\u0159en velk\\u00fdm mno\\u017estv\\u00edm men\\u0161\\u00edch a v\\u011bt\\u0161\\u00edch ostrov\\u016f. Zdej\\u0161\\u00ed gastronomie je tedy p\\u0159edem dan\\u00e1. \\u0160\\u0165avnat\\u00e1 zelenina, \\u010derstv\\u00e9 mo\\u0159sk\\u00e9 plody a ryby, vo\\u0148av\\u00e9 bylinky a samoz\\u0159ejm\\u011b olivov\\u00fd olej. To jsou hlavn\\u00ed suroviny, kter\\u00e9 v m\\u00edstn\\u00edch Tavern\\u00e1ch (restaurac\\u00edch) ochutn\\u00e1te. Slovo GASTRONIMIE je \\u0159eck\\u00e9ho p\\u016fvodu \\u2013 nen\\u00ed pro to divu, \\u017ee jeho kuchyn\\u011b je sv\\u011btov\\u011b proslul\\u00e1.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">Ka\\u017ed\\u00fd z ostrov\\u016f nab\\u00edz\\u00ed n\\u011bco jin\\u00e9ho. Je jen na v\\u00e1s, kde a jak se rozhodnete tr\\u00e1vit va\\u0161\\u00ed dovolenou. Jsou tu pl\\u00e1\\u017ee, kde se potk\\u00e1te s civilizac\\u00ed, kde jsou pozvoln\\u00fdm vstupem do mo\\u0159e lemov\\u00e1ny hotely. Dal\\u0161\\u00ed jsou pak pr\\u00e1zdn\\u00e9 a klidn\\u00e9, kde se maxim\\u00e1ln\\u011b potk\\u00e1te s dal\\u0161\\u00ed pos\\u00e1dkou. Ostrovn\\u00ed pl\\u00e1\\u017ee maj\\u00ed jednu (ne)v\\u00fdhodu - v p\\u0159\\u00edpad\\u011b velk\\u00fdch vln jsou chr\\u00e1n\\u011bny jin\\u00fdmi bl\\u00edzk\\u00fdmi ostrovy. Kotvit se d\\u00e1 i v z\\u00e1tok\\u00e1ch lemovan\\u00fdch strm\\u00fdmi sk\\u00e1lami, kde je k p\\u0159\\u00edstup pouze po schodech shora.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">LEFKADA<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Lefkada le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, pod ostrovem Korfu. Od pevniny je vzd\\u00e1len pouze 1 km a je s n\\u00ed spojen pomoc\\u00ed zvedac\\u00edho mostu, na jeho\\u017e konci v\\u00e1s p\\u0159iv\\u00edt\\u00e1 hlavn\\u00ed m\\u011bsto Lefkada, s polovinou obyvatelstva ostrova. Tedy s po\\u010dtem p\\u0159es 10 000.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Na <\\/strong>cel\\u00e9m ostrov\\u011b se rozkl\\u00e1d\\u00e1 jedine\\u010dn\\u00e9 poho\\u0159\\u00ed Stavrotas, jeho\\u017e vrcholy p\\u0159esahuj\\u00ed v\\u00fd\\u0161ky 1 000 m. Panorama vrcholk\\u016f hor a neuv\\u011b\\u0159iteln\\u011b modr\\u00e9ho mo\\u0159e je nezapomenuteln\\u00e9.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Pl\\u00e1\\u017ee<\\/strong> jsou v\\u011bt\\u0161inou lemov\\u00e1ny prudk\\u00fdmi v\\u00e1pencov\\u00fdmi skalisky s krasov\\u00fdmi jeskyn\\u011bmi. Mo\\u0159e je od v\\u00e1pencov\\u00e9ho p\\u00edsku zbarveno do n\\u00e1dhern\\u00e9ho odst\\u00ednu modr\\u00e9 barvy.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">ZAKYNTHOS<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Zakynthos, kter\\u00fd s v\\u00edce jak 41 000 obyvateli je t\\u0159et\\u00ed nejv\\u011bt\\u0161\\u00ed ostrov v Jonsk\\u00e9m mo\\u0159i, le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, vzd\\u00e1len\\u00e9 16 km. Hlavn\\u00edm m\\u011bstem je Zakynthos (kde \\u017eije okolo 16 000 obyvatel), kter\\u00fd je d\\u016fle\\u017eit\\u00fdm p\\u0159\\u00edstavem a v bl\\u00edzkosti m\\u011bsta le\\u017e\\u00ed i leti\\u0161t\\u011b.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Jako<\\/strong> v\\u011bt\\u0161ina I\\u00f3nsk\\u00fdch ostrov\\u016f je hornat\\u00fd. Jeho vrcholy jsou ale ni\\u017e\\u0161\\u00ed ne\\u017e na Lefkad\\u011b (nejvy\\u0161\\u0161\\u00ed m\\u011b\\u0159\\u00ed 758 m) a ve v\\u00fdchodn\\u00ed \\u010d\\u00e1sti p\\u0159eva\\u017euj\\u00ed sp\\u00ed\\u0161e rovinat\\u00e9 plochy. Na ostrov\\u011b \\u017eije vz\\u00e1cn\\u00fd druh \\u017eelv, kter\\u00e9 naleznte vyobrazeny snad v\\u0161ude a na v\\u0161em. P\\u0159ed turisty v\\u0161ak nejsou dostate\\u010dn\\u011b chr\\u00e1n\\u011bn\\u00e9 a hroz\\u00ed jejich vyhynut\\u00ed.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Za <\\/strong>prohl\\u00e9dnut\\u00ed na ostrov\\u011b stoj\\u00ed pl\\u00e1\\u017ee na severu ostrova s n\\u00e1zvem Navagio, kde v\\u00e1s uchv\\u00e1t\\u00ed prudk\\u00e9 sk\\u00e1ly nad zlatav\\u00fdm p\\u00edskem mal\\u00fdch pl\\u00e1\\u017e\\u00ed a pl\\u00e1\\u017ei\\u010dek a opravdu neuv\\u011b\\u0159iteln\\u00e9 odst\\u00edny modr\\u00e9 barvy mo\\u0159e. &nbsp;<\\/p>","fulltext":"","state":0,"catid":"9","created":"2013-12-26 23:35:32","created_by":"683","created_by_alias":"","modified":"2013-12-26 23:49:23","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-12-26 23:35:32","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 4, 1, '', '2013-12-30 23:01:08', 683, 8247, '9b50996d5c344ff1a5a063e51c3e40de7f133156', '{"id":4,"asset_id":"67","title":"\\u0158ECKO","alias":"recko","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\">Krajina pln\\u00e1 d\\u00e1vn\\u00e9 historie, p\\u0159\\u00edrody a vst\\u0159\\u00edcn\\u00fdch lid\\u00ed - to je \\u0158ecko! Ostrovy v oblasti ji\\u017en\\u00ed Evropy v\\u00e1m nab\\u00eddnou jedine\\u010dn\\u00e9 p\\u0159\\u00edrodn\\u00ed scen\\u00e9rie, kdy se strm\\u00e9 b\\u00edl\\u00e9 sk\\u00e1ly snoub\\u00ed s n\\u00e1dhern\\u011b azurov\\u011b modr\\u00fdm mo\\u0159em. A\\u017e p\\u0159ekr\\u00e1sn\\u011b k\\u00fd\\u010dovit\\u00e9 jsou v\\u00fdhledy na m\\u011bste\\u010dka pln\\u00e1 \\u010dist\\u00fdch b\\u00edl\\u00fdch domk\\u016f s modr\\u00fdmi okenicemi a st\\u0159echami. Kombinace b\\u00edl\\u00e9 a k modr\\u00e9 barvy \\u0158ecku zkr\\u00e1tka pat\\u0159\\u00ed. Koneckonc\\u016f, jsou to barvy \\u0159eck\\u00e9 st\\u00e1tn\\u00ed vlajky. Modr\\u00e1 barva je symbolem mo\\u0159e a bezobla\\u010dn\\u00e9 ji\\u017en\\u00ed oblohy. B\\u00edl\\u00e1 barva p\\u0159ipom\\u00edn\\u00e1 \\u010distotu jejich z\\u00e1m\\u011br\\u016f v boji za svobodu a nez\\u00e1vislost. K\\u0159\\u00ed\\u017e ve \\u010dtverci je pak odkazem na v\\u00edru a \\u0159eckou zbo\\u017enost.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\">S n\\u00e1mi pozn\\u00e1te jedine\\u010dn\\u00e9 \\u0159eck\\u00e9 ostrovy nejen v J\\u00f3nsk\\u00e9m a Egejsk\\u00e9m mo\\u0159i. Ka\\u017ed\\u00fd z ostrov\\u016f (kter\\u00fdch je v\\u00edce ne\\u017e 2000) v\\u00e1s p\\u0159iv\\u00edt\\u00e1 svou jedine\\u010dnou architekturou. Na v\\u011bt\\u0161in\\u011b z nich je mo\\u017en\\u00e9 si vyp\\u016fj\\u010dit katamaran&nbsp;a vydat se prozkoumat ostrovy, a p\\u0159edev\\u0161\\u00edm z\\u00e1toky, kter\\u00e9 nejsou z pevniny dostupn\\u00e9. <span style=\\"color: #00ae00;\\">Nalo\\u010fte se k n\\u00e1m a nechte na sebe d\\u00fdchnout jejich mystickou atmosf\\u00e9ru, daleko od pr\\u016fmyslu a neust\\u00e1l\\u00e9ho shonu.&nbsp;<\\/span><span style=\\"color: #00ae00;\\"><span style=\\"color: #ff0000;\\">(odkaz \\/ proklik na mapu)<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-size: 0.8em;\\">&nbsp;<\\/span><span style=\\"color: #00ae00;\\">*<\\/span><span style=\\"color: #00ae00;\\">LEFKADA<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #00ae00;\\">*ZAKYNTHOS<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\"><span style=\\"color: #00ae00;\\"><strong>FOTKA<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\" align=\\"CENTER\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">\\u0158ecko je st\\u00e1t, kter\\u00fd je ve sv\\u00e9 ji\\u017en\\u00ed \\u010d\\u00e1sti tvo\\u0159en velk\\u00fdm mno\\u017estv\\u00edm men\\u0161\\u00edch a v\\u011bt\\u0161\\u00edch ostrov\\u016f. Zdej\\u0161\\u00ed gastronomie je tedy p\\u0159edem dan\\u00e1. \\u0160\\u0165avnat\\u00e1 zelenina, \\u010derstv\\u00e9 mo\\u0159sk\\u00e9 plody a ryby, vo\\u0148av\\u00e9 bylinky a samoz\\u0159ejm\\u011b olivov\\u00fd olej. To jsou hlavn\\u00ed suroviny, kter\\u00e9 v m\\u00edstn\\u00edch Tavern\\u00e1ch (restaurac\\u00edch) ochutn\\u00e1te. Slovo GASTRONIMIE je \\u0159eck\\u00e9ho p\\u016fvodu \\u2013 nen\\u00ed pro to divu, \\u017ee jeho kuchyn\\u011b je sv\\u011btov\\u011b proslul\\u00e1.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">Ka\\u017ed\\u00fd z ostrov\\u016f nab\\u00edz\\u00ed n\\u011bco jin\\u00e9ho. Je jen na v\\u00e1s, kde a jak se rozhodnete tr\\u00e1vit va\\u0161\\u00ed dovolenou. Jsou tu pl\\u00e1\\u017ee, kde se potk\\u00e1te s civilizac\\u00ed, kde jsou pozvoln\\u00fdm vstupem do mo\\u0159e lemov\\u00e1ny hotely. Dal\\u0161\\u00ed jsou pak pr\\u00e1zdn\\u00e9 a klidn\\u00e9, kde se maxim\\u00e1ln\\u011b potk\\u00e1te s dal\\u0161\\u00ed pos\\u00e1dkou. Ostrovn\\u00ed pl\\u00e1\\u017ee maj\\u00ed jednu (ne)v\\u00fdhodu - v p\\u0159\\u00edpad\\u011b velk\\u00fdch vln jsou chr\\u00e1n\\u011bny jin\\u00fdmi bl\\u00edzk\\u00fdmi ostrovy. Kotvit se d\\u00e1 i v z\\u00e1tok\\u00e1ch lemovan\\u00fdch strm\\u00fdmi sk\\u00e1lami, kde je k p\\u0159\\u00edstup pouze po schodech shora.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">LEFKADA<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Lefkada le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, pod ostrovem Korfu. Od pevniny je vzd\\u00e1len pouze 1 km a je s n\\u00ed spojen pomoc\\u00ed zvedac\\u00edho mostu, na jeho\\u017e konci v\\u00e1s p\\u0159iv\\u00edt\\u00e1 hlavn\\u00ed m\\u011bsto Lefkada, s polovinou obyvatelstva ostrova. Tedy s po\\u010dtem p\\u0159es 10 000.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Na <\\/strong>cel\\u00e9m ostrov\\u011b se rozkl\\u00e1d\\u00e1 jedine\\u010dn\\u00e9 poho\\u0159\\u00ed Stavrotas, jeho\\u017e vrcholy p\\u0159esahuj\\u00ed v\\u00fd\\u0161ky 1 000 m. Panorama vrcholk\\u016f hor a neuv\\u011b\\u0159iteln\\u011b modr\\u00e9ho mo\\u0159e je nezapomenuteln\\u00e9.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Pl\\u00e1\\u017ee<\\/strong> jsou v\\u011bt\\u0161inou lemov\\u00e1ny prudk\\u00fdmi v\\u00e1pencov\\u00fdmi skalisky s krasov\\u00fdmi jeskyn\\u011bmi. Mo\\u0159e je od v\\u00e1pencov\\u00e9ho p\\u00edsku zbarveno do n\\u00e1dhern\\u00e9ho odst\\u00ednu modr\\u00e9 barvy.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">ZAKYNTHOS<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Ostrov<\\/strong> Zakynthos, kter\\u00fd s v\\u00edce jak 41 000 obyvateli je t\\u0159et\\u00ed nejv\\u011bt\\u0161\\u00ed ostrov v Jonsk\\u00e9m mo\\u0159i, le\\u017e\\u00ed u severoz\\u00e1padn\\u00ed \\u010d\\u00e1sti \\u0159eck\\u00e9 pevniny, vzd\\u00e1len\\u00e9 16 km. Hlavn\\u00edm m\\u011bstem je Zakynthos (kde \\u017eije okolo 16 000 obyvatel), kter\\u00fd je d\\u016fle\\u017eit\\u00fdm p\\u0159\\u00edstavem a v bl\\u00edzkosti m\\u011bsta le\\u017e\\u00ed i leti\\u0161t\\u011b.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Jako<\\/strong> v\\u011bt\\u0161ina I\\u00f3nsk\\u00fdch ostrov\\u016f je hornat\\u00fd. Jeho vrcholy jsou ale ni\\u017e\\u0161\\u00ed ne\\u017e na Lefkad\\u011b (nejvy\\u0161\\u0161\\u00ed m\\u011b\\u0159\\u00ed 758 m) a ve v\\u00fdchodn\\u00ed \\u010d\\u00e1sti p\\u0159eva\\u017euj\\u00ed sp\\u00ed\\u0161e rovinat\\u00e9 plochy. Na ostrov\\u011b \\u017eije vz\\u00e1cn\\u00fd druh \\u017eelv, kter\\u00e9 naleznte vyobrazeny snad v\\u0161ude a na v\\u0161em. P\\u0159ed turisty v\\u0161ak nejsou dostate\\u010dn\\u011b chr\\u00e1n\\u011bn\\u00e9 a hroz\\u00ed jejich vyhynut\\u00ed.<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong>Za <\\/strong>prohl\\u00e9dnut\\u00ed na ostrov\\u011b stoj\\u00ed pl\\u00e1\\u017ee na severu ostrova s n\\u00e1zvem Navagio, kde v\\u00e1s uchv\\u00e1t\\u00ed prudk\\u00e9 sk\\u00e1ly nad zlatav\\u00fdm p\\u00edskem mal\\u00fdch pl\\u00e1\\u017e\\u00ed a pl\\u00e1\\u017ei\\u010dek a opravdu neuv\\u011b\\u0159iteln\\u00e9 odst\\u00edny modr\\u00e9 barvy mo\\u0159e. &nbsp;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2013-12-26 23:35:32","created_by":"683","created_by_alias":"","modified":"2013-12-30 23:01:08","modified_by":"683","checked_out":"683","checked_out_time":"2013-12-30 23:01:01","publish_up":"2013-12-26 23:35:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"24","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 7, 1, '', '2014-01-03 17:06:31', 683, 1965, '2fd5a7cb123b5c70b4faef6c8ec92e4532fcc3df', '{"id":7,"asset_id":76,"title":"galerie","alias":"galerie","introtext":"<p><a id=\\"mb1\\" class=\\"s5mb\\" title=\\"ImageExample #1:\\" href=\\"http:\\/\\/www.shape5.com\\/demo\\/images\\/multibox1_lrg.jpg\\"> <img class=\\"boxed\\" src=\\"http:\\/\\/www.shape5.com\\/demo\\/images\\/multibox1.jpg\\" alt=\\"\\" \\/> <\\/a><\\/p>\\r\\n<div class=\\"s5_multibox mb2\\">Multiple Image #1. It can support <strong>html<\\/strong>.<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-01-03 17:06:31","created_by":"683","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-03 17:06:31","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 7, 1, '', '2014-01-03 17:09:18', 683, 2053, 'e2abd65f6f448e29b5a9769ae5b850f103b12467', '{"id":7,"asset_id":"76","title":"galerie","alias":"galerie","introtext":"<p><a id=\\"mb1\\" class=\\"s5mb\\" title=\\"ImageExample #1:\\" href=\\"http:\\/\\/www.shape5.com\\/demo\\/images\\/multibox1_lrg.jpg\\"> <img class=\\"boxed\\" src=\\"http:\\/\\/www.shape5.com\\/demo\\/images\\/multibox1.jpg\\" alt=\\"\\" \\/> <\\/a><\\/p>\\r\\n<div class=\\"s5_multibox mb2\\">Multiple Image #1. It can support <strong>html<\\/strong>.<\\/div>\\r\\n<p>bslvkaslvsakjflsak fsa;flsa fsa kjfsaf<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-03 17:06:31","created_by":"683","created_by_alias":"","modified":"2014-01-03 17:09:18","modified_by":"683","checked_out":"683","checked_out_time":"2014-01-03 17:08:59","publish_up":"2014-01-03 17:06:31","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 5, 1, '', '2014-01-03 21:56:37', 683, 5713, '44ac47229c028ee81be79db0f4616b6c0fb3d817', '{"id":5,"asset_id":"72","title":"NA\\u0160E POS\\u00c1DKA","alias":"nase-posadka","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; text-align: justify; color: #000080;\\">\\u0158\\u00edk\\u00e1 se, \\u017ee ka\\u017ed\\u00e9 zbo\\u017e\\u00ed m\\u00e1 sv\\u00e9ho kupce. Ch\\u00e1peme ty, pro n\\u011b\\u017e je ide\\u00e1ln\\u00ed dovolen\\u00e1 u baz\\u00e9nu v hotelu, samoz\\u0159ejm\\u011b all inclusive. Rozum\\u00edme i t\\u011bm, kte\\u0159\\u00ed si sbal\\u00ed sv\\u00fdch p\\u00e1r \\u0161vestek a vydaj\\u00ed se do sv\\u011bta po sv\\u00fdch. Jestli ale mezi n\\u011b nepat\\u0159\\u00edte a hled\\u00e1te tak trochu akci a p\\u0159itom pot\\u0159ebujete opravdu relaxovat, vyplujte s n\\u00e1mi na mo\\u0159e! Jedin\\u011b z paluby pozn\\u00e1te m\\u00edsta, kam se suchou noho nelze dostat a kter\\u00e1 v sob\\u011b skr\\u00fdvaj\\u00ed neuv\\u011b\\u0159itelnou s\\u00edlu. Na palub\\u011b toti\\u017e nen\\u00ed \\u017e\\u00e1dn\\u00fd den stejn\\u00fd!<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">Mus\\u00edme v\\u00e1s ale upozornit, \\u017ee prvn\\u00ed vyplut\\u00ed m\\u016f\\u017ee b\\u00fdt (a ve v\\u011bt\\u0161in\\u011b p\\u0159\\u00edpad\\u016f opravdu je) prvn\\u00edm krokem k z\\u00e1vislosti. Potkalo to celou na\\u0161i pos\\u00e1dku. Jsme parta \\u2026 &nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">...<br \\/><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">Je to zkr\\u00e1tka nepopsateln\\u00fd pocit. Pocit svobody a souzn\\u011bn\\u00ed s p\\u0159\\u00edrodou. R\\u00e1di o tom p\\u0159esv\\u011bd\\u010d\\u00edme i v\\u00e1s. Katamar\\u00e1n je pro plavbu s d\\u011btmi jako&nbsp;<\\/span><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">stvo\\u0159en\\u00fd, proto\\u017ee oproti plachetnici je na mo\\u0159i mnohem stabiln\\u011bj\\u0161\\u00ed.<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>Nab\\u00edz\\u00edme v\\u00e1m rodinou dovolenou na m\\u00edru! Vyberte si destinaci a ostatn\\u00ed nechte na n\\u00e1s. Zajist\\u00edme pro v\\u00e1s:<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong style=\\"font-size: 0.8em;\\">* <\\/strong>Lo\\u010f dle vlastn\\u00edho v\\u00fdb\\u011bru<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>* <\\/strong>Letenky do vybran\\u00e9 destinace<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">* Transfer z leti\\u0161t\\u011b a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">* Dopravu do mariny a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">* Ubytov\\u00e1n\\u00ed v p\\u0159ed plavbou \\u010di po jej\\u00edm skon\\u010den\\u00ed<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">* Zku\\u0161en\\u00e9ho kapit\\u00e1na<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">&nbsp;<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-12-30 22:58:32","created_by":"683","created_by_alias":"","modified":"2014-01-03 21:56:37","modified_by":"683","checked_out":"683","checked_out_time":"2014-01-03 21:53:08","publish_up":"2013-12-30 22:58:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"cs-CZ","xreference":""}', 0),
(24, 5, 1, '', '2014-01-03 22:00:52', 683, 5966, '0dcab0143719506dc14cc0d0efd09901f58b012d', '{"id":5,"asset_id":"72","title":"NA\\u0160E POS\\u00c1DKA","alias":"nase-posadka","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; text-align: justify; color: #000080;\\">\\u0158\\u00edk\\u00e1 se, \\u017ee ka\\u017ed\\u00e9 zbo\\u017e\\u00ed m\\u00e1 sv\\u00e9ho kupce. Ch\\u00e1peme ty, pro n\\u011b\\u017e je ide\\u00e1ln\\u00ed dovolen\\u00e1 u baz\\u00e9nu v hotelu, samoz\\u0159ejm\\u011b all inclusive. Rozum\\u00edme i t\\u011bm, kte\\u0159\\u00ed si sbal\\u00ed sv\\u00fdch p\\u00e1r \\u0161vestek a vydaj\\u00ed se do sv\\u011bta po sv\\u00fdch. Jestli ale mezi n\\u011b nepat\\u0159\\u00edte a hled\\u00e1te tak trochu akci a p\\u0159itom pot\\u0159ebujete opravdu relaxovat, vyplujte s n\\u00e1mi na mo\\u0159e! Jedin\\u011b z paluby pozn\\u00e1te m\\u00edsta, kam se suchou noho nelze dostat, &nbsp;a kter\\u00e1 v sob\\u011b skr\\u00fdvaj\\u00ed neuv\\u011b\\u0159itelnou s\\u00edlu. Na palub\\u011b toti\\u017e nen\\u00ed \\u017e\\u00e1dn\\u00fd den stejn\\u00fd!<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">Mus\\u00edme v\\u00e1s ale upozornit, \\u017ee prvn\\u00ed vyplut\\u00ed m\\u016f\\u017ee b\\u00fdt (a ve v\\u011bt\\u0161in\\u011b p\\u0159\\u00edpad\\u016f opravdu je) prvn\\u00edm krokem k z\\u00e1vislosti. Potkalo to celou na\\u0161i pos\\u00e1dku. Jsme parta \\u2026 &nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">...<br \\/><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">Je to zkr\\u00e1tka nepopsateln\\u00fd pocit. Pocit svobody a souzn\\u011bn\\u00ed s p\\u0159\\u00edrodou. R\\u00e1di o tom p\\u0159esv\\u011bd\\u010d\\u00edme. Vezm\\u011bte celou rodinu na skv\\u011blou dovolenou na katamar\\u00e1n. Pro plavbu s d\\u011btmi jako&nbsp;<\\/span><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">stvo\\u0159en\\u00fd, proto\\u017ee oproti plachetnici je na mo\\u0159i mnohem stabiln\\u011bj\\u0161\\u00ed.<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>Nab\\u00edz\\u00edme v\\u00e1m rodinou dovolenou na m\\u00edru! Vyberte si destinaci a ostatn\\u00ed nechte na n\\u00e1s. Zajist\\u00edme pro v\\u00e1s:<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">*<\\/strong><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\"> <\\/span><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">Lo\\u010f dle vlastn\\u00edho v\\u00fdb\\u011bru<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Letenky do vybran\\u00e9 destinace<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Transfer z leti\\u0161t\\u011b a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Dopravu do mariny a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Ubytov\\u00e1n\\u00ed v p\\u0159ed plavbou \\u010di po jej\\u00edm skon\\u010den\\u00ed<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>* <\\/strong>Zku\\u0161en\\u00e9ho kapit\\u00e1na<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">&nbsp;<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-12-30 22:58:32","created_by":"683","created_by_alias":"","modified":"2014-01-03 22:00:52","modified_by":"683","checked_out":"683","checked_out_time":"2014-01-03 21:56:37","publish_up":"2013-12-30 22:58:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"cs-CZ","xreference":""}', 0),
(25, 5, 1, '', '2014-01-03 22:16:33', 683, 6115, 'c674646c6a4809424a1ddd0912aa97b8c80225a5', '{"id":5,"asset_id":"72","title":"NA\\u0160E POS\\u00c1DKA","alias":"nase-posadka","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; text-align: justify; color: #000080;\\">\\u0158\\u00edk\\u00e1 se, \\u017ee ka\\u017ed\\u00e9 zbo\\u017e\\u00ed m\\u00e1 sv\\u00e9ho kupce. Ch\\u00e1peme ty, pro n\\u011b\\u017e je ide\\u00e1ln\\u00ed dovolen\\u00e1 u baz\\u00e9nu v hotelu, samoz\\u0159ejm\\u011b all inclusive. Rozum\\u00edme i t\\u011bm, kte\\u0159\\u00ed si sbal\\u00ed sv\\u00fdch p\\u00e1r \\u0161vestek a vydaj\\u00ed se do sv\\u011bta po sv\\u00fdch. Jestli ale mezi n\\u011b nepat\\u0159\\u00edte a hled\\u00e1te tak trochu akci a p\\u0159itom pot\\u0159ebujete opravdu relaxovat, vyplujte s n\\u00e1mi na mo\\u0159e! Jedin\\u011b z paluby pozn\\u00e1te m\\u00edsta, kam se suchou noho nelze dostat, &nbsp;a kter\\u00e1 v sob\\u011b skr\\u00fdvaj\\u00ed neuv\\u011b\\u0159itelnou s\\u00edlu a kr\\u00e1su.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">Mus\\u00edme v\\u00e1s ale upozornit, \\u017ee prvn\\u00ed vyplut\\u00ed m\\u016f\\u017ee b\\u00fdt (a ve v\\u011bt\\u0161in\\u011b p\\u0159\\u00edpad\\u016f opravdu je) prvn\\u00edm krokem k z\\u00e1vislosti. Potkalo to celou na\\u0161i pos\\u00e1dku. Jsme parta \\u2026 &nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">...<br \\/><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">Je to zkr\\u00e1tka nepopsateln\\u00fd pocit. Pocit svobody a souzn\\u011bn\\u00ed s p\\u0159\\u00edrodou. R\\u00e1di o tom p\\u0159esv\\u011bd\\u010d\\u00edme. Vezm\\u011bte celou rodinu na skv\\u011blou dovolenou na katamar\\u00e1n. Pro plavbu s d\\u011btmi jako&nbsp;<\\/span><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">stvo\\u0159en\\u00fd, proto\\u017ee oproti plachetnici je na mo\\u0159i mnohem stabiln\\u011bj\\u0161\\u00ed. A nudit se ur\\u010dit\\u011b nebudete - n<span style=\\"color: #000080; font-family: verdana, geneva; text-align: justify;\\">a palub\\u011b toti\\u017e nen\\u00ed \\u017e\\u00e1dn\\u00fd den stejn\\u00fd!<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>Nab\\u00edz\\u00edme v\\u00e1m rodinou dovolenou na m\\u00edru! Vyberte si destinaci a ostatn\\u00ed nechte na n\\u00e1s. Zajist\\u00edme pro v\\u00e1s:<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">*<\\/strong><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\"> <\\/span><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">Lo\\u010f dle vlastn\\u00edho v\\u00fdb\\u011bru<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Letenky do vybran\\u00e9 destinace<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Transfer z leti\\u0161t\\u011b a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Dopravu do mariny a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Ubytov\\u00e1n\\u00ed v p\\u0159ed plavbou \\u010di po jej\\u00edm skon\\u010den\\u00ed<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>* <\\/strong>Zku\\u0161en\\u00e9ho kapit\\u00e1na<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">&nbsp;<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-12-30 22:58:32","created_by":"683","created_by_alias":"","modified":"2014-01-03 22:16:33","modified_by":"683","checked_out":"683","checked_out_time":"2014-01-03 22:15:25","publish_up":"2013-12-30 22:58:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"cs-CZ","xreference":""}', 0);
INSERT INTO `fb_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(26, 5, 1, '', '2014-01-03 22:17:43', 683, 6155, '76437b1fcc25e0063a44cf13daaf781f47874525', '{"id":5,"asset_id":"72","title":"NA\\u0160E POS\\u00c1DKA","alias":"nase-posadka","introtext":"<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; text-align: justify; color: #000080;\\">\\u0158\\u00edk\\u00e1 se, \\u017ee ka\\u017ed\\u00e9 zbo\\u017e\\u00ed m\\u00e1 sv\\u00e9ho kupce. Ch\\u00e1peme ty, pro n\\u011b\\u017e je ide\\u00e1ln\\u00ed dovolen\\u00e1 u baz\\u00e9nu v hotelu, samoz\\u0159ejm\\u011b all inclusive. Rozum\\u00edme i t\\u011bm, kte\\u0159\\u00ed si sbal\\u00ed sv\\u00fdch p\\u00e1r \\u0161vestek a vydaj\\u00ed se do sv\\u011bta po sv\\u00fdch. Jestli ale mezi n\\u011b nepat\\u0159\\u00edte a hled\\u00e1te tak trochu akci a p\\u0159itom pot\\u0159ebujete opravdu relaxovat, vyplujte s n\\u00e1mi na mo\\u0159e! Jedin\\u011b z paluby pozn\\u00e1te m\\u00edsta, kam se suchou nohou nelze dostat, &nbsp;a kter\\u00e1 v sob\\u011b skr\\u00fdvaj\\u00ed neuv\\u011b\\u0159itelnou s\\u00edlu a kr\\u00e1su.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">Mus\\u00edme v\\u00e1s ale upozornit, \\u017ee prvn\\u00ed vyplut\\u00ed m\\u016f\\u017ee b\\u00fdt (a ve v\\u011bt\\u0161in\\u011b p\\u0159\\u00edpad\\u016f opravdu je) prvn\\u00edm krokem k z\\u00e1vislosti. Potkalo to celou na\\u0161i pos\\u00e1dku. Jsme parta \\u2026 &nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">...<br \\/><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">Je to zkr\\u00e1tka nepopsateln\\u00fd pocit. Pocit svobody a souzn\\u011bn\\u00ed s p\\u0159\\u00edrodou. R\\u00e1di v\\u00e1s o tom p\\u0159esv\\u011bd\\u010d\\u00edme. Nalo\\u010fte se s n\\u00e1mi, vezm\\u011bte celou rodinu na skv\\u011blou dovolenou na katamar\\u00e1n! Pro plavbu s d\\u011btmi jako&nbsp;<\\/span><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">stvo\\u0159en\\u00fd, proto\\u017ee oproti plachetnici je na mo\\u0159i mnohem stabiln\\u011bj\\u0161\\u00ed. A nudit se ur\\u010dit\\u011b nebudete - n<span style=\\"color: #000080; font-family: verdana, geneva; text-align: justify;\\">a palub\\u011b toti\\u017e nen\\u00ed \\u017e\\u00e1dn\\u00fd den stejn\\u00fd!<\\/span><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm; text-align: justify;\\"><span style=\\"color: #000080;\\">&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>Nab\\u00edz\\u00edme v\\u00e1m rodinou dovolenou na m\\u00edru! Vyberte si destinaci a ostatn\\u00ed nechte na n\\u00e1s. Zajist\\u00edme pro v\\u00e1s:<\\/strong><\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><strong style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">*<\\/strong><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\"> <\\/span><span style=\\"color: #000080; font-family: verdana, geneva; font-size: 10pt;\\">Lo\\u010f dle vlastn\\u00edho v\\u00fdb\\u011bru<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Letenky do vybran\\u00e9 destinace<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Transfer z leti\\u0161t\\u011b a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Dopravu do mariny a zp\\u011bt<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>*<\\/strong> Ubytov\\u00e1n\\u00ed v p\\u0159ed plavbou \\u010di po jej\\u00edm skon\\u010den\\u00ed<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\"><strong>* <\\/strong>Zku\\u0161en\\u00e9ho kapit\\u00e1na<\\/span><\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\">&nbsp;<\\/p>\\r\\n<p style=\\"margin-bottom: 0cm;\\"><span style=\\"font-family: verdana, geneva; font-size: 10pt; color: #000080;\\">&nbsp;<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2013-12-30 22:58:32","created_by":"683","created_by_alias":"","modified":"2014-01-03 22:17:43","modified_by":"683","checked_out":"683","checked_out_time":"2014-01-03 22:16:50","publish_up":"2013-12-30 22:58:32","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"cs-CZ","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_updates`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_updates`
--

TRUNCATE TABLE `fb_updates`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_update_sites`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=8 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_update_sites`
--

TRUNCATE TABLE `fb_update_sites`;
--
-- Vypisuji data pro tabulku `fb_update_sites`
--

INSERT INTO `fb_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 0),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 0),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0),
(4, 'Accordeon Menu CK Update', 'extension', 'http://update.joomlack.fr/mod_accordeonck_update.xml', 1, 0),
(5, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1', 1, 0),
(6, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml', 1, 0),
(7, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_update_sites_extensions`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Vyprázdnit tabulku před vkládáním `fb_update_sites_extensions`
--

TRUNCATE TABLE `fb_update_sites_extensions`;
--
-- Vypisuji data pro tabulku `fb_update_sites_extensions`
--

INSERT INTO `fb_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10010),
(4, 10001),
(5, 10004),
(6, 10004),
(7, 10011);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_usergroups`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_usergroups`
--

TRUNCATE TABLE `fb_usergroups`;
--
-- Vypisuji data pro tabulku `fb_usergroups`
--

INSERT INTO `fb_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_users`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=684 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_users`
--

TRUNCATE TABLE `fb_users`;
--
-- Vypisuji data pro tabulku `fb_users`
--

INSERT INTO `fb_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`) VALUES
(683, 'Super User', 'admin', 'pepa@familyboat.cz', '$P$DJ4yyJojfdz5kiwHuDlqtHGtCMVMOj1', 0, 1, '2013-12-17 19:16:49', '2014-02-11 17:50:33', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_user_keys`
--
-- Vytvořeno: Úte 17. pro 2013, 19:16
--

CREATE TABLE IF NOT EXISTS `fb_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_user_keys`
--

TRUNCATE TABLE `fb_user_keys`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_user_notes`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_user_notes`
--

TRUNCATE TABLE `fb_user_notes`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_user_profiles`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Vyprázdnit tabulku před vkládáním `fb_user_profiles`
--

TRUNCATE TABLE `fb_user_profiles`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_user_usergroup_map`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vyprázdnit tabulku před vkládáním `fb_user_usergroup_map`
--

TRUNCATE TABLE `fb_user_usergroup_map`;
--
-- Vypisuji data pro tabulku `fb_user_usergroup_map`
--

INSERT INTO `fb_user_usergroup_map` (`user_id`, `group_id`) VALUES
(683, 8);

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_viewlevels`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_viewlevels`
--

TRUNCATE TABLE `fb_viewlevels`;
--
-- Vypisuji data pro tabulku `fb_viewlevels`
--

INSERT INTO `fb_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Struktura tabulky `fb_weblinks`
--
-- Vytvořeno: Stř 11. pro 2013, 21:07
--

CREATE TABLE IF NOT EXISTS `fb_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_weblinks`
--

TRUNCATE TABLE `fb_weblinks`;
-- --------------------------------------------------------

--
-- Struktura tabulky `fb_wf_profiles`
--
-- Vytvořeno: Úte 17. pro 2013, 19:25
--

CREATE TABLE IF NOT EXISTS `fb_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Vyprázdnit tabulku před vkládáním `fb_wf_profiles`
--

TRUNCATE TABLE `fb_wf_profiles`;
--
-- Vypisuji data pro tabulku `fb_wf_profiles`
--

INSERT INTO `fb_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
