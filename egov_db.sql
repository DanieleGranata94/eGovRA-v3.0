-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2024 at 11:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egov_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add System', 7, 'add_system'),
(26, 'Can change System', 7, 'change_system'),
(27, 'Can delete System', 7, 'delete_system'),
(28, 'Can view System', 7, 'view_system'),
(29, 'Can add Process', 8, 'add_process'),
(30, 'Can change Process', 8, 'change_process'),
(31, 'Can delete Process', 8, 'delete_process'),
(32, 'Can view Process', 8, 'view_process'),
(33, 'Can add Asset_type', 9, 'add_asset_type'),
(34, 'Can change Asset_type', 9, 'change_asset_type'),
(35, 'Can delete Asset_type', 9, 'delete_asset_type'),
(36, 'Can view Asset_type', 9, 'view_asset_type'),
(37, 'Can add Asset', 10, 'add_asset'),
(38, 'Can change Asset', 10, 'change_asset'),
(39, 'Can delete Asset', 10, 'delete_asset'),
(40, 'Can view Asset', 10, 'view_asset'),
(41, 'Can add Attribute_value', 11, 'add_attribute_value'),
(42, 'Can change Attribute_value', 11, 'change_attribute_value'),
(43, 'Can delete Attribute_value', 11, 'delete_attribute_value'),
(44, 'Can view Attribute_value', 11, 'view_attribute_value'),
(45, 'Can add Threat', 12, 'add_threat'),
(46, 'Can change Threat', 12, 'change_threat'),
(47, 'Can delete Threat', 12, 'delete_threat'),
(48, 'Can view Threat', 12, 'view_threat'),
(49, 'Can add Attribute', 13, 'add_attribute'),
(50, 'Can change Attribute', 13, 'change_attribute'),
(51, 'Can delete Attribute', 13, 'delete_attribute'),
(52, 'Can view Attribute', 13, 'view_attribute'),
(53, 'Can add Control', 14, 'add_control'),
(54, 'Can change Control', 14, 'change_control'),
(55, 'Can delete Control', 14, 'delete_control'),
(56, 'Can view Control', 14, 'view_control'),
(57, 'Can add asset_has_attribute', 15, 'add_asset_has_attribute'),
(58, 'Can change asset_has_attribute', 15, 'change_asset_has_attribute'),
(59, 'Can delete asset_has_attribute', 15, 'delete_asset_has_attribute'),
(60, 'Can view asset_has_attribute', 15, 'view_asset_has_attribute'),
(61, 'Can add threat_has_attribute', 16, 'add_threat_has_attribute'),
(62, 'Can change threat_has_attribute', 16, 'change_threat_has_attribute'),
(63, 'Can delete threat_has_attribute', 16, 'delete_threat_has_attribute'),
(64, 'Can view threat_has_attribute', 16, 'view_threat_has_attribute'),
(65, 'Can add threat_has_control', 17, 'add_threat_has_control'),
(66, 'Can change threat_has_control', 17, 'change_threat_has_control'),
(67, 'Can delete threat_has_control', 17, 'delete_threat_has_control'),
(68, 'Can view threat_has_control', 17, 'view_threat_has_control'),
(69, 'Can add threat agent category', 18, 'add_threatagentcategory'),
(70, 'Can change threat agent category', 18, 'change_threatagentcategory'),
(71, 'Can delete threat agent category', 18, 'delete_threatagentcategory'),
(72, 'Can view threat agent category', 18, 'view_threatagentcategory'),
(73, 'Can add threat agent attribute', 19, 'add_threatagentattribute'),
(74, 'Can change threat agent attribute', 19, 'change_threatagentattribute'),
(75, 'Can delete threat agent attribute', 19, 'delete_threatagentattribute'),
(76, 'Can view threat agent attribute', 19, 'view_threatagentattribute'),
(77, 'Can add threat agent question', 20, 'add_threatagentquestion'),
(78, 'Can change threat agent question', 20, 'change_threatagentquestion'),
(79, 'Can delete threat agent question', 20, 'delete_threatagentquestion'),
(80, 'Can view threat agent question', 20, 'view_threatagentquestion'),
(81, 'Can add reply', 21, 'add_reply'),
(82, 'Can change reply', 21, 'change_reply'),
(83, 'Can delete reply', 21, 'delete_reply'),
(84, 'Can view reply', 21, 'view_reply'),
(85, 'Can add ta replies_ question', 22, 'add_tareplies_question'),
(86, 'Can change ta replies_ question', 22, 'change_tareplies_question'),
(87, 'Can delete ta replies_ question', 22, 'delete_tareplies_question'),
(88, 'Can view ta replies_ question', 22, 'view_tareplies_question'),
(89, 'Can add ta category attribute', 23, 'add_tacategoryattribute'),
(90, 'Can change ta category attribute', 23, 'change_tacategoryattribute'),
(91, 'Can delete ta category attribute', 23, 'delete_tacategoryattribute'),
(92, 'Can view ta category attribute', 23, 'view_tacategoryattribute'),
(93, 'Can add ta reply category', 24, 'add_tareplycategory'),
(94, 'Can change ta reply category', 24, 'change_tareplycategory'),
(95, 'Can delete ta reply category', 24, 'delete_tareplycategory'),
(96, 'Can view ta reply category', 24, 'view_tareplycategory'),
(97, 'Can add threat agent risk scores', 25, 'add_threatagentriskscores'),
(98, 'Can change threat agent risk scores', 25, 'change_threatagentriskscores'),
(99, 'Can delete threat agent risk scores', 25, 'delete_threatagentriskscores'),
(100, 'Can view threat agent risk scores', 25, 'view_threatagentriskscores'),
(101, 'Can add system_ threat agent', 26, 'add_system_threatagent'),
(102, 'Can change system_ threat agent', 26, 'change_system_threatagent'),
(103, 'Can delete system_ threat agent', 26, 'delete_system_threatagent'),
(104, 'Can view system_ threat agent', 26, 'view_system_threatagent'),
(105, 'Can add risk', 27, 'add_risk'),
(106, 'Can change risk', 27, 'change_risk'),
(107, 'Can delete risk', 27, 'delete_risk'),
(108, 'Can view risk', 27, 'view_risk'),
(109, 'Can add stride', 28, 'add_stride'),
(110, 'Can change stride', 28, 'change_stride'),
(111, 'Can delete stride', 28, 'delete_stride'),
(112, 'Can view stride', 28, 'view_stride'),
(113, 'Can add stride impact record', 29, 'add_strideimpactrecord'),
(114, 'Can change stride impact record', 29, 'change_strideimpactrecord'),
(115, 'Can delete stride impact record', 29, 'delete_strideimpactrecord'),
(116, 'Can view stride impact record', 29, 'view_strideimpactrecord'),
(117, 'Can add threat_ stride', 30, 'add_threat_stride'),
(118, 'Can change threat_ stride', 30, 'change_threat_stride'),
(119, 'Can delete threat_ stride', 30, 'delete_threat_stride'),
(120, 'Can view threat_ stride', 30, 'view_threat_stride'),
(121, 'Can add overall risk', 31, 'add_overallrisk'),
(122, 'Can change overall risk', 31, 'change_overallrisk'),
(123, 'Can delete overall risk', 31, 'delete_overallrisk'),
(124, 'Can view overall risk', 31, 'view_overallrisk'),
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add System', 7, 'add_system'),
(26, 'Can change System', 7, 'change_system'),
(27, 'Can delete System', 7, 'delete_system'),
(28, 'Can view System', 7, 'view_system'),
(29, 'Can add Process', 8, 'add_process'),
(30, 'Can change Process', 8, 'change_process'),
(31, 'Can delete Process', 8, 'delete_process'),
(32, 'Can view Process', 8, 'view_process'),
(33, 'Can add Asset_type', 9, 'add_asset_type'),
(34, 'Can change Asset_type', 9, 'change_asset_type'),
(35, 'Can delete Asset_type', 9, 'delete_asset_type'),
(36, 'Can view Asset_type', 9, 'view_asset_type'),
(37, 'Can add Asset', 10, 'add_asset'),
(38, 'Can change Asset', 10, 'change_asset'),
(39, 'Can delete Asset', 10, 'delete_asset'),
(40, 'Can view Asset', 10, 'view_asset'),
(41, 'Can add Attribute_value', 11, 'add_attribute_value'),
(42, 'Can change Attribute_value', 11, 'change_attribute_value'),
(43, 'Can delete Attribute_value', 11, 'delete_attribute_value'),
(44, 'Can view Attribute_value', 11, 'view_attribute_value'),
(45, 'Can add Threat', 12, 'add_threat'),
(46, 'Can change Threat', 12, 'change_threat'),
(47, 'Can delete Threat', 12, 'delete_threat'),
(48, 'Can view Threat', 12, 'view_threat'),
(49, 'Can add Attribute', 13, 'add_attribute'),
(50, 'Can change Attribute', 13, 'change_attribute'),
(51, 'Can delete Attribute', 13, 'delete_attribute'),
(52, 'Can view Attribute', 13, 'view_attribute'),
(53, 'Can add Control', 14, 'add_control'),
(54, 'Can change Control', 14, 'change_control'),
(55, 'Can delete Control', 14, 'delete_control'),
(56, 'Can view Control', 14, 'view_control'),
(57, 'Can add asset_has_attribute', 15, 'add_asset_has_attribute'),
(58, 'Can change asset_has_attribute', 15, 'change_asset_has_attribute'),
(59, 'Can delete asset_has_attribute', 15, 'delete_asset_has_attribute'),
(60, 'Can view asset_has_attribute', 15, 'view_asset_has_attribute'),
(61, 'Can add threat_has_attribute', 16, 'add_threat_has_attribute'),
(62, 'Can change threat_has_attribute', 16, 'change_threat_has_attribute'),
(63, 'Can delete threat_has_attribute', 16, 'delete_threat_has_attribute'),
(64, 'Can view threat_has_attribute', 16, 'view_threat_has_attribute'),
(65, 'Can add threat_has_control', 17, 'add_threat_has_control'),
(66, 'Can change threat_has_control', 17, 'change_threat_has_control'),
(67, 'Can delete threat_has_control', 17, 'delete_threat_has_control'),
(68, 'Can view threat_has_control', 17, 'view_threat_has_control'),
(69, 'Can add threat agent category', 18, 'add_threatagentcategory'),
(70, 'Can change threat agent category', 18, 'change_threatagentcategory'),
(71, 'Can delete threat agent category', 18, 'delete_threatagentcategory'),
(72, 'Can view threat agent category', 18, 'view_threatagentcategory'),
(73, 'Can add threat agent attribute', 19, 'add_threatagentattribute'),
(74, 'Can change threat agent attribute', 19, 'change_threatagentattribute'),
(75, 'Can delete threat agent attribute', 19, 'delete_threatagentattribute'),
(76, 'Can view threat agent attribute', 19, 'view_threatagentattribute'),
(77, 'Can add threat agent question', 20, 'add_threatagentquestion'),
(78, 'Can change threat agent question', 20, 'change_threatagentquestion'),
(79, 'Can delete threat agent question', 20, 'delete_threatagentquestion'),
(80, 'Can view threat agent question', 20, 'view_threatagentquestion'),
(81, 'Can add reply', 21, 'add_reply'),
(82, 'Can change reply', 21, 'change_reply'),
(83, 'Can delete reply', 21, 'delete_reply'),
(84, 'Can view reply', 21, 'view_reply'),
(85, 'Can add ta replies_ question', 22, 'add_tareplies_question'),
(86, 'Can change ta replies_ question', 22, 'change_tareplies_question'),
(87, 'Can delete ta replies_ question', 22, 'delete_tareplies_question'),
(88, 'Can view ta replies_ question', 22, 'view_tareplies_question'),
(89, 'Can add ta category attribute', 23, 'add_tacategoryattribute'),
(90, 'Can change ta category attribute', 23, 'change_tacategoryattribute'),
(91, 'Can delete ta category attribute', 23, 'delete_tacategoryattribute'),
(92, 'Can view ta category attribute', 23, 'view_tacategoryattribute'),
(93, 'Can add ta reply category', 24, 'add_tareplycategory'),
(94, 'Can change ta reply category', 24, 'change_tareplycategory'),
(95, 'Can delete ta reply category', 24, 'delete_tareplycategory'),
(96, 'Can view ta reply category', 24, 'view_tareplycategory'),
(97, 'Can add threat agent risk scores', 25, 'add_threatagentriskscores'),
(98, 'Can change threat agent risk scores', 25, 'change_threatagentriskscores'),
(99, 'Can delete threat agent risk scores', 25, 'delete_threatagentriskscores'),
(100, 'Can view threat agent risk scores', 25, 'view_threatagentriskscores'),
(101, 'Can add system_ threat agent', 26, 'add_system_threatagent'),
(102, 'Can change system_ threat agent', 26, 'change_system_threatagent'),
(103, 'Can delete system_ threat agent', 26, 'delete_system_threatagent'),
(104, 'Can view system_ threat agent', 26, 'view_system_threatagent'),
(105, 'Can add risk', 27, 'add_risk'),
(106, 'Can change risk', 27, 'change_risk'),
(107, 'Can delete risk', 27, 'delete_risk'),
(108, 'Can view risk', 27, 'view_risk'),
(109, 'Can add stride', 28, 'add_stride'),
(110, 'Can change stride', 28, 'change_stride'),
(111, 'Can delete stride', 28, 'delete_stride'),
(112, 'Can view stride', 28, 'view_stride'),
(113, 'Can add stride impact record', 29, 'add_strideimpactrecord'),
(114, 'Can change stride impact record', 29, 'change_strideimpactrecord'),
(115, 'Can delete stride impact record', 29, 'delete_strideimpactrecord'),
(116, 'Can view stride impact record', 29, 'view_strideimpactrecord'),
(117, 'Can add threat_ stride', 30, 'add_threat_stride'),
(118, 'Can change threat_ stride', 30, 'change_threat_stride'),
(119, 'Can delete threat_ stride', 30, 'delete_threat_stride'),
(120, 'Can view threat_ stride', 30, 'view_threat_stride'),
(121, 'Can add overall risk', 31, 'add_overallrisk'),
(122, 'Can change overall risk', 31, 'change_overallrisk'),
(123, 'Can delete overall risk', 31, 'delete_overallrisk'),
(124, 'Can view overall risk', 31, 'view_overallrisk');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'parsingbpmn', 'asset'),
(15, 'parsingbpmn', 'asset_has_attribute'),
(9, 'parsingbpmn', 'asset_type'),
(13, 'parsingbpmn', 'attribute'),
(11, 'parsingbpmn', 'attribute_value'),
(14, 'parsingbpmn', 'control'),
(31, 'parsingbpmn', 'overallrisk'),
(8, 'parsingbpmn', 'process'),
(21, 'parsingbpmn', 'reply'),
(27, 'parsingbpmn', 'risk'),
(28, 'parsingbpmn', 'stride'),
(29, 'parsingbpmn', 'strideimpactrecord'),
(7, 'parsingbpmn', 'system'),
(26, 'parsingbpmn', 'system_threatagent'),
(23, 'parsingbpmn', 'tacategoryattribute'),
(22, 'parsingbpmn', 'tareplies_question'),
(24, 'parsingbpmn', 'tareplycategory'),
(12, 'parsingbpmn', 'threat'),
(19, 'parsingbpmn', 'threatagentattribute'),
(18, 'parsingbpmn', 'threatagentcategory'),
(20, 'parsingbpmn', 'threatagentquestion'),
(25, 'parsingbpmn', 'threatagentriskscores'),
(16, 'parsingbpmn', 'threat_has_attribute'),
(17, 'parsingbpmn', 'threat_has_control'),
(30, 'parsingbpmn', 'threat_stride'),
(6, 'sessions', 'session'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'parsingbpmn', 'asset'),
(15, 'parsingbpmn', 'asset_has_attribute'),
(9, 'parsingbpmn', 'asset_type'),
(13, 'parsingbpmn', 'attribute'),
(11, 'parsingbpmn', 'attribute_value'),
(14, 'parsingbpmn', 'control'),
(31, 'parsingbpmn', 'overallrisk'),
(8, 'parsingbpmn', 'process'),
(21, 'parsingbpmn', 'reply'),
(27, 'parsingbpmn', 'risk'),
(28, 'parsingbpmn', 'stride'),
(29, 'parsingbpmn', 'strideimpactrecord'),
(7, 'parsingbpmn', 'system'),
(26, 'parsingbpmn', 'system_threatagent'),
(23, 'parsingbpmn', 'tacategoryattribute'),
(22, 'parsingbpmn', 'tareplies_question'),
(24, 'parsingbpmn', 'tareplycategory'),
(12, 'parsingbpmn', 'threat'),
(19, 'parsingbpmn', 'threatagentattribute'),
(18, 'parsingbpmn', 'threatagentcategory'),
(20, 'parsingbpmn', 'threatagentquestion'),
(25, 'parsingbpmn', 'threatagentriskscores'),
(16, 'parsingbpmn', 'threat_has_attribute'),
(17, 'parsingbpmn', 'threat_has_control'),
(30, 'parsingbpmn', 'threat_stride'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'parsingbpmn', '0001_initial', '2024-01-17 14:57:41.748178');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_actor`
--

CREATE TABLE `parsingbpmn_actor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `process_bpmn_id` varchar(100) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_actor`
--

INSERT INTO `parsingbpmn_actor` (`id`, `name`, `process_bpmn_id`, `process_id`) VALUES
(1, 'Citizen', 'Process_0gzphmm', 70),
(2, 'Municipality', 'Process_1mmbaau', 70),
(3, 'Citizen', 'Process_0gzphmm', 71),
(4, 'Municipality', 'Process_1mmbaau', 71),
(5, 'Citizen', 'Process_0gzphmm', 72),
(6, 'Municipality', 'Process_1mmbaau', 72),
(7, 'Citizen', 'Process_0gzphmm', 73),
(8, 'Municipality', 'Process_1mmbaau', 73),
(9, 'Citizen', 'Process_0gzphmm', 74),
(10, 'Municipality', 'Process_1mmbaau', 74);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_actor_manage_data`
--

CREATE TABLE `parsingbpmn_actor_manage_data` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `data_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_actor_manage_data`
--

INSERT INTO `parsingbpmn_actor_manage_data` (`id`, `actor_id`, `data_id`, `process_id`) VALUES
(1, 3, NULL, 71),
(2, 6, NULL, 72),
(3, 5, NULL, 72),
(4, 5, NULL, 72),
(5, 7, NULL, 73),
(6, 9, NULL, 74);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_asset`
--

CREATE TABLE `parsingbpmn_asset` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bpmn_id` varchar(99) DEFAULT NULL,
  `position` varchar(99) DEFAULT NULL,
  `process_bpmn_id` varchar(99) DEFAULT NULL,
  `asset_type_id` int(11) DEFAULT NULL,
  `process_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_asset`
--

INSERT INTO `parsingbpmn_asset` (`id`, `name`, `bpmn_id`, `position`, `process_bpmn_id`, `asset_type_id`, `process_id`) VALUES
(742, 'Compile certificate request', 'Activity_0e44ssw', '310:150:100:80', NULL, 3, 68),
(743, 'Certificate request', 'Activity_0m5vgkb', '450:150:100:80', NULL, 1, 68),
(744, 'Recieve notification', 'Activity_15a5z8l', '720:140:100:80', NULL, 2, 68),
(745, 'Download Certificate', 'Activity_1lh76my', '860:140:100:80', NULL, 3, 68),
(746, 'Acquire certificate request', 'Activity_075eaka', '450:380:100:80', NULL, 2, 68),
(747, 'Certificate processing', 'Activity_0yo8nd0', '590:380:100:80', NULL, 5, 68),
(748, 'Notify certification ready', 'Activity_11l7oi5', '720:380:100:80', NULL, 1, 68),
(749, 'Compile certificate request', 'Activity_0e44ssw', '310:150:100:80', NULL, 3, 69),
(750, 'Certificate request', 'Activity_0m5vgkb', '450:150:100:80', NULL, 1, 69),
(751, 'Recieve notification', 'Activity_15a5z8l', '720:140:100:80', NULL, 2, 69),
(752, 'Download Certificate', 'Activity_1lh76my', '860:140:100:80', NULL, 3, 69),
(753, 'Acquire certificate request', 'Activity_075eaka', '450:380:100:80', NULL, 2, 69),
(754, 'Certificate processing', 'Activity_0yo8nd0', '590:380:100:80', NULL, 5, 69),
(755, 'Notify certification ready', 'Activity_11l7oi5', '720:380:100:80', NULL, 1, 69),
(756, 'Compile certificate request', 'Activity_0e44ssw', '310:150:100:80', 'Process_0gzphmm', 3, 70),
(757, 'Certificate request', 'Activity_0m5vgkb', '450:150:100:80', 'Process_0gzphmm', 1, 70),
(758, 'Recieve notification', 'Activity_15a5z8l', '720:140:100:80', 'Process_0gzphmm', 2, 70),
(759, 'Download Certificate', 'Activity_1lh76my', '860:140:100:80', 'Process_0gzphmm', 3, 70),
(760, 'Acquire certificate request', 'Activity_075eaka', '450:380:100:80', 'Process_1mmbaau', 2, 70),
(761, 'Certificate processing', 'Activity_0yo8nd0', '590:380:100:80', 'Process_1mmbaau', 5, 70),
(762, 'Notify certification ready', 'Activity_11l7oi5', '720:380:100:80', 'Process_1mmbaau', 1, 70),
(763, 'Compile certificate request', 'Activity_0e44ssw', '310:150:100:80', 'Process_0gzphmm', 3, 71),
(764, 'Certificate request', 'Activity_0m5vgkb', '450:150:100:80', 'Process_0gzphmm', 1, 71),
(765, 'Recieve notification', 'Activity_15a5z8l', '720:140:100:80', 'Process_0gzphmm', 2, 71),
(766, 'Download Certificate', 'Activity_1lh76my', '860:140:100:80', 'Process_0gzphmm', 3, 71),
(767, 'Acquire certificate request', 'Activity_075eaka', '450:380:100:80', 'Process_1mmbaau', 2, 71),
(768, 'Certificate processing', 'Activity_0yo8nd0', '590:380:100:80', 'Process_1mmbaau', 5, 71),
(769, 'Notify certification ready', 'Activity_11l7oi5', '720:380:100:80', 'Process_1mmbaau', 1, 71),
(770, 'test', 'DataObjectReference_iQhqDgh:DataObject_FCtLbDf', '', NULL, 8, 71),
(771, 'Compile certificate request', 'Activity_0e44ssw', '310:150:100:80', 'Process_0gzphmm', 3, 72),
(772, 'Certificate request', 'Activity_0m5vgkb', '450:150:100:80', 'Process_0gzphmm', 1, 72),
(773, 'Recieve notification', 'Activity_15a5z8l', '720:140:100:80', 'Process_0gzphmm', 2, 72),
(774, 'Download Certificate', 'Activity_1lh76my', '860:140:100:80', 'Process_0gzphmm', 3, 72),
(775, 'Acquire certificate request', 'Activity_075eaka', '450:380:100:80', 'Process_1mmbaau', 2, 72),
(776, 'Certificate processing', 'Activity_0yo8nd0', '590:380:100:80', 'Process_1mmbaau', 5, 72),
(777, 'Notify certification ready', 'Activity_11l7oi5', '720:380:100:80', 'Process_1mmbaau', 1, 72),
(778, 'testobj', 'DataObjectReference_BGJIKiT:DataObject_pzJLTpO', '', NULL, 8, 72),
(779, 'test3', 'DataObjectReference_zcnfxaR:DataObject_PdhpquX', '', NULL, 8, 70),
(780, 'Compile certificate request', 'Activity_0e44ssw', '310:150:100:80', 'Process_0gzphmm', 3, 73),
(781, 'Certificate request', 'Activity_0m5vgkb', '450:150:100:80', 'Process_0gzphmm', 1, 73),
(782, 'Recieve notification', 'Activity_15a5z8l', '720:140:100:80', 'Process_0gzphmm', 2, 73),
(783, 'Download Certificate', 'Activity_1lh76my', '860:140:100:80', 'Process_0gzphmm', 3, 73),
(784, 'Acquire certificate request', 'Activity_075eaka', '450:380:100:80', 'Process_1mmbaau', 2, 73),
(785, 'Certificate processing', 'Activity_0yo8nd0', '590:380:100:80', 'Process_1mmbaau', 5, 73),
(786, 'Notify certification ready', 'Activity_11l7oi5', '720:380:100:80', 'Process_1mmbaau', 1, 73),
(787, 'prova', 'DataObjectReference_WNVwpWS:DataObject_sGNgEYU', '', NULL, 8, 73),
(788, 'Compile certificate request', 'Activity_0e44ssw', '310:150:100:80', 'Process_0gzphmm', 3, 74),
(789, 'Certificate request', 'Activity_0m5vgkb', '450:150:100:80', 'Process_0gzphmm', 1, 74),
(790, 'Recieve notification', 'Activity_15a5z8l', '720:140:100:80', 'Process_0gzphmm', 2, 74),
(791, 'Download Certificate', 'Activity_1lh76my', '860:140:100:80', 'Process_0gzphmm', 3, 74),
(792, 'Acquire certificate request', 'Activity_075eaka', '450:380:100:80', 'Process_1mmbaau', 2, 74),
(793, 'Certificate processing', 'Activity_0yo8nd0', '590:380:100:80', 'Process_1mmbaau', 5, 74),
(794, 'Notify certification ready', 'Activity_11l7oi5', '720:380:100:80', 'Process_1mmbaau', 1, 74),
(795, 'test1', 'DataObjectReference_RlVkkUM:DataObject_JLePwKY', '', NULL, 8, 74);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_asset_has_attribute`
--

CREATE TABLE `parsingbpmn_asset_has_attribute` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_asset_has_attribute`
--

INSERT INTO `parsingbpmn_asset_has_attribute` (`id`, `asset_id`, `attribute_id`) VALUES
(418, 742, 7),
(419, 743, 1),
(420, 744, 4),
(421, 745, 7),
(422, 746, 4),
(423, 747, 10),
(424, 748, 1),
(425, 749, 7),
(426, 750, 2),
(427, 751, 5),
(428, 752, 7),
(429, 753, 4),
(430, 754, 10),
(431, 755, 1),
(432, 788, 7),
(433, 789, 1),
(434, 790, 4),
(435, 791, 7),
(436, 792, 4),
(437, 793, 10),
(438, 794, 1);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_asset_has_dataobject_attribute`
--

CREATE TABLE `parsingbpmn_asset_has_dataobject_attribute` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `asset_type_id` int(11) NOT NULL,
  `data_object_attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_asset_has_dataobject_attribute`
--

INSERT INTO `parsingbpmn_asset_has_dataobject_attribute` (`id`, `asset_id`, `asset_type_id`, `data_object_attribute_id`) VALUES
(1, 770, 9, 1),
(2, 778, 9, 2),
(3, 779, 9, 3),
(5, 787, 9, 5),
(6, 795, 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_asset_type`
--

CREATE TABLE `parsingbpmn_asset_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_asset_type`
--

INSERT INTO `parsingbpmn_asset_type` (`id`, `name`, `description`) VALUES
(1, 'Send task', 'A Send Task is represents a task that sends a Message to another lane or pool. The Task is completed once the Message has been sent.'),
(2, 'Receive task', 'A Receive Task indicates that the process has to wait for a message to arrive in order to continue. The Task is completed once the message has received.'),
(3, 'User task', 'A User Task represents that a human performer performs the Task with the use of a software application.'),
(4, 'Manual task', 'A Manual Task is a Task that is performed physically.'),
(5, 'Service task', 'A Service Task is a Task that uses a Web service, an automated application, or other kinds of service in completing the task.'),
(6, 'Script task', 'A Script Task is executed by a business process engine. The task defines a script that the engine can interpret. When the task begin, the engine will execute the script. The Task will be completed when the script is completed.'),
(7, 'Business rule task', 'It provides a mechanism for a process to provide input to a Business Rules Engine and then obtain the output provided by the Business Rules Engine. As for service and script task, it is a task without human interaction.'),
(8, 'DataObject', ''),
(9, 'DataStore', '');

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_attribute`
--

CREATE TABLE `parsingbpmn_attribute` (
  `id` int(11) NOT NULL,
  `attribute_name` varchar(100) NOT NULL,
  `asset_type_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_attribute`
--

INSERT INTO `parsingbpmn_attribute` (`id`, `attribute_name`, `asset_type_id`, `attribute_value_id`) VALUES
(1, 'Communication typology\r\n', 1, 1),
(2, 'Communication typology\r\n', 1, 2),
(3, 'Communication typology\r\n', 1, 3),
(4, 'Communication typology\r\n', 2, 1),
(5, 'Communication typology\r\n', 2, 2),
(6, 'Communication typology\r\n', 2, 3),
(7, 'Application typology\r\n', 3, 4),
(8, 'Application typology\r\n', 3, 5),
(9, 'Task type\r\n', 4, 6),
(10, 'Service typology\r\n', 5, 7),
(11, 'Service typology\r\n', 5, 8),
(12, 'Task type\r\n', 6, 9),
(13, 'Task type\r\n', 7, 10),
(14, 'Communication typology', 1, 11),
(15, 'Communication typology', 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_attribute_value`
--

CREATE TABLE `parsingbpmn_attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_attribute_value`
--

INSERT INTO `parsingbpmn_attribute_value` (`id`, `value`) VALUES
(1, 'PEC communication'),
(2, 'Mail communication'),
(3, 'Post office communication'),
(4, 'Online'),
(5, 'Offline'),
(6, 'Manual task'),
(7, 'Statefull'),
(8, 'Stateless'),
(9, 'Script task'),
(10, 'Business rule task'),
(11, 'Interoperability protocol');

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_control`
--

CREATE TABLE `parsingbpmn_control` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_control`
--

INSERT INTO `parsingbpmn_control` (`id`, `name`, `description`) VALUES
(1, 'Inventory and Control of Hardware Assets', 'Actively manage (inventory, track, and correct) all hardware devices on the network so that only authorized devices are given access, and unauthorized and unmanaged devices are found and prevented from gaining access.'),
(2, 'Inventory and Control of Software Assets', 'Actively manage (inventory, track, and correct) all software on the network so that only authorized software is installed and can execute, and that unauthorized and unmanaged software is found and prevented from installation or execution. '),
(3, 'Continuous Vulnerability Management', 'Continuously acquire, assess, and take action on new information in order to identify vulnerabilities, remediate, and minimize the window of opportunity for attackers.'),
(4, 'Controlled Use of Administrative Privileges', 'The processes and tools used to track/control/prevent/correct the use, assignment, and configuration of administrative privileges on computers, networks, and applications.'),
(5, 'Secure Configuration for Hardware and Software on Mobile Devices, Laptops, Workstations and Servers', 'Establish, implement, and actively manage (track, report on, correct) the security configuration of mobile devices, laptops, servers, and workstations using a rigorous configuration management and change control process in order to prevent attackers from exploiting vulnerable services and settings. '),
(6, 'Maintenance, Monitoring and Analysis of Audit Logs', 'Collect, manage, and analyze audit logs of events that could help detect, understand, or recover from an attack. '),
(7, 'Email and Web Browser Protections', 'Minimize the attack surface and the opportunities for attackers to manipulate human behavior though their interaction with web browsers and email systems. '),
(8, 'Malware Defenses', 'Control the installation, spread, and execution of malicious code at multiple points in the enterprise, while optimizing the use of automation to enable rapid updating of defense, data gathering, and corrective action.'),
(9, 'Limitation and Control of Network Ports, Protocols, and Services', 'Manage (track/control/correct) the ongoing operational use of ports, protocols, and services on networked devices in order to minimize windows of vulnerability available to attackers.'),
(10, 'Data Recovery Capabilities', 'The processes and tools used to properly back up critical information with a proven methodology for timely recovery of it.'),
(11, 'Secure Configuration for Network Devices, such as Firewalls, Routers and Switches', 'Establish, implement, and actively manage (track, report on, correct) the security configuration of network infrastructure devices using a rigorous configuration management and change control process in order to prevent attackers from exploiting vulnerable services and settings.'),
(12, 'Boundary Defense', 'Detect/prevent/correct the flow of information transferring networks of different trust levels with a focus on security-damaging data.'),
(13, 'Data Protection', 'The processes and tools used to prevent data exfiltration, mitigate the effects of exfiltrated data, and ensure the privacy and integrity of sensitive information.'),
(14, 'Controlled Access Based on the Need to Know', 'The processes and tools used to track/control/prevent/correct secure access to critical assets (e.g., information, resources, systems) according to the formal determination of which persons, computers, and applications have a need and right to access these critical assets based on an approved classification.'),
(15, 'Wireless Access Control', 'The processes and tools used to track/control/prevent/correct the security use of wireless local area networks (WLANs), access points, and wireless client systems.'),
(16, 'Account Monitoring and Control', 'Actively manage the life cycle of system and application accounts - their creation, use, dormancy, deletion - in order to minimize opportunities for attackers to leverage them.'),
(17, 'Implement a Security Awareness and Training Program', 'For all functional roles in the organization (prioritizing those mission-critical to the business and its security), identify the specific knowledge, skills, and abilities needed to support defense of the enterprise; develop and execute an integrated plan to assess, identify gaps, and remediate through policy, organizational planning, training, and awareness programs.'),
(18, 'Application Software Security', 'Manage the security life cycle of all in-house developed and acquired software in order to prevent, detect, and correct security weaknesses.'),
(19, 'Incident Response and Management', 'Protect the organization\'s information, as well as its reputation, by developing and implementing an incident response infrastructure (e.g., plans, defined roles, training, communications, management oversight) for quickly discovering an attack and then effectively containing the damage, eradicating the attacker\'s presence, and restoring the integrity of the network and systems.'),
(20, 'Penetration Tests and Red Team Exercises', 'Test the overall strength of an organization\'s defense (the technology, the processes, and the people) by simulating the objectives and actions of an attacker.');

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_dataobjectattribute`
--

CREATE TABLE `parsingbpmn_dataobjectattribute` (
  `id` int(11) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `order_of_size` varchar(100) NOT NULL,
  `personal` varchar(100) NOT NULL,
  `load_dependece` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_dataobjectattribute`
--

INSERT INTO `parsingbpmn_dataobjectattribute` (`id`, `size`, `order_of_size`, `personal`, `load_dependece`) VALUES
(1, 1, 'byte', '1', 1),
(2, 1, 'byte', '1', 1),
(3, 1, 'byte', '1', 1),
(4, 1, 'byte', '1', 1),
(5, 1, 'byte', '1', 1),
(6, 1, 'byte', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_overallrisk`
--

CREATE TABLE `parsingbpmn_overallrisk` (
  `id` int(11) NOT NULL,
  `spoofing` varchar(100) NOT NULL,
  `tampering` varchar(100) NOT NULL,
  `repudiation` varchar(100) NOT NULL,
  `information` varchar(100) NOT NULL,
  `dos` varchar(100) NOT NULL,
  `eop` varchar(100) NOT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_overallrisk`
--

INSERT INTO `parsingbpmn_overallrisk` (`id`, `spoofing`, `tampering`, `repudiation`, `information`, `dos`, `eop`, `asset_id`, `process_id`, `system_id`) VALUES
(82, 'LOW', 'LOW', 'LOW', 'VERY LOW', 'HIGH', 'LOW', 749, 69, 11),
(83, 'MEDIUM', 'LOW', 'VERY LOW', 'LOW', 'HIGH', 'LOW', 750, 69, 11),
(84, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'HIGH', 'LOW', 751, 69, 11),
(85, 'LOW', 'LOW', 'LOW', 'VERY LOW', 'HIGH', 'LOW', 752, 69, 11),
(86, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 753, 69, 11),
(87, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'HIGH', 'VERY LOW', 754, 69, 11),
(88, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'HIGH', 'LOW', 755, 69, 11);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_process`
--

CREATE TABLE `parsingbpmn_process` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `xml` varchar(100) NOT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_process`
--

INSERT INTO `parsingbpmn_process` (`id`, `name`, `xml`, `system_id`) VALUES
(68, 'Municipality', 'processes/xml/bpmn_1.0_alxG2XZ.bpmn', 8),
(69, 'Municipality', 'processes/xml/bpmn_1.0_kYQIAXL.bpmn', 11),
(70, 'test', 'processes/xml/bpmn_1.0_oLqrE4P.bpmn', 3),
(71, 'test', 'processes/xml/bpmn_1.0_llYxk7V.bpmn', 3),
(72, 'test2', 'processes/xml/bpmn_1.0_m2ub47n.bpmn', 3),
(73, 'example', 'processes/xml/bpmn_1.0_2.bpmn', 3),
(74, 'prova2', 'processes/xml/bpmn_1.0_2_LNmHJy0.bpmn', 3);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_reply`
--

CREATE TABLE `parsingbpmn_reply` (
  `id` int(11) NOT NULL,
  `reply` varchar(500) NOT NULL,
  `multiple` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_reply`
--

INSERT INTO `parsingbpmn_reply` (`id`, `reply`, `multiple`) VALUES
(1, 'Yes', 0),
(2, 'No, the threats that apply to the system are related only to non-hostile situations', 0),
(3, 'Consider as `trusted` the employees', 0),
(4, 'Consider all threat agents', 0),
(5, 'Copy', 0),
(6, 'Deny', 0),
(7, 'All', 0),
(8, 'Destroy', 0),
(9, 'Damage', 0),
(10, 'Take', 0),
(11, 'Theft', 0),
(12, 'Cause harm', 0),
(13, 'Embarassment', 0),
(14, 'Tech Advantage', 0),
(15, 'Business Advantage', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_risk`
--

CREATE TABLE `parsingbpmn_risk` (
  `id` int(11) NOT NULL,
  `likelihood` int(11) DEFAULT NULL,
  `impact` int(11) DEFAULT NULL,
  `severity` varchar(100) NOT NULL,
  `skill` int(11) DEFAULT NULL,
  `motive` int(11) DEFAULT NULL,
  `opportunity` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `ease_of_discovery` int(11) DEFAULT NULL,
  `ease_of_exploit` int(11) DEFAULT NULL,
  `intrusion_detection` int(11) DEFAULT NULL,
  `awareness` int(11) DEFAULT NULL,
  `loss_of_confidentiality` int(11) DEFAULT NULL,
  `loss_of_integrity` int(11) DEFAULT NULL,
  `loss_of_availability` int(11) DEFAULT NULL,
  `loss_of_accountability` int(11) DEFAULT NULL,
  `financial` int(11) DEFAULT NULL,
  `reputation` int(11) DEFAULT NULL,
  `non_compliance` int(11) DEFAULT NULL,
  `privacy` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `threat_stride_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_risk`
--

INSERT INTO `parsingbpmn_risk` (`id`, `likelihood`, `impact`, `severity`, `skill`, `motive`, `opportunity`, `size`, `ease_of_discovery`, `ease_of_exploit`, `intrusion_detection`, `awareness`, `loss_of_confidentiality`, `loss_of_integrity`, `loss_of_availability`, `loss_of_accountability`, `financial`, `reputation`, `non_compliance`, `privacy`, `asset_id`, `process_id`, `system_id`, `threat_stride_id`) VALUES
(1121, 5, 5, 'MEDIUM', 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 749, 69, 11, 1),
(1122, 5, 6, 'HIGH', 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 749, 69, 11, 2),
(1123, 6, 5, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 749, 69, 11, 23),
(1124, 6, 6, 'MEDIUM', 9, 7, 5, 7, 6, 4, 4, 6, 5, 5, 5, 7, 9, 8, 8, 8, 749, 69, 11, 29),
(1125, 5, 7, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 749, 69, 11, 37),
(1126, 7, 5, 'HIGH', 9, 7, 5, 7, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 749, 69, 11, 38),
(1127, 4, 6, 'HIGH', 9, 7, 5, 7, 2, 2, 3, 2, 5, 5, 5, 5, 9, 8, 8, 8, 749, 69, 11, 40),
(1128, 6, 7, 'CRITICAL', 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 749, 69, 11, 50),
(1129, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 749, 69, 11, 56),
(1130, 6, 2, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 749, 69, 11, 57),
(1131, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 749, 69, 11, 60),
(1132, 7, 8, 'CRITICAL', 9, 7, 5, 7, 7, 7, 8, 8, 8, 7, 8, 9, 9, 8, 8, 8, 749, 69, 11, 74),
(1133, 5, 5, 'MEDIUM', 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 750, 69, 11, 1),
(1134, 5, 6, 'HIGH', 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 750, 69, 11, 2),
(1135, 6, 5, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 750, 69, 11, 23),
(1136, 5, 5, 'MEDIUM', 9, 7, 5, 7, 4, 8, 2, 1, 5, 5, 5, 4, 7, 6, 7, 5, 750, 69, 11, 27),
(1137, 6, 6, 'MEDIUM', 9, 7, 5, 7, 6, 4, 4, 6, 5, 5, 5, 7, 9, 8, 8, 8, 750, 69, 11, 29),
(1138, 5, 7, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 750, 69, 11, 37),
(1139, 6, 7, 'CRITICAL', 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 750, 69, 11, 50),
(1140, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 750, 69, 11, 51),
(1141, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 750, 69, 11, 52),
(1142, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 750, 69, 11, 53),
(1143, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 750, 69, 11, 56),
(1144, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 750, 69, 11, 60),
(1145, 7, 5, 'HIGH', 9, 7, 5, 7, 8, 7, 5, 8, 5, 5, 5, 5, 7, 6, 7, 5, 750, 69, 11, 65),
(1146, 6, 5, 'HIGH', 9, 7, 5, 7, 7, 6, 5, 5, 5, 5, 5, 5, 7, 6, 7, 5, 750, 69, 11, 69),
(1147, 7, 5, 'HIGH', 9, 7, 5, 7, 9, 8, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 750, 69, 11, 71),
(1148, 5, 5, 'MEDIUM', 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 751, 69, 11, 1),
(1149, 5, 6, 'HIGH', 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 751, 69, 11, 2),
(1150, 6, 5, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 751, 69, 11, 23),
(1151, 5, 5, 'MEDIUM', 9, 7, 5, 7, 4, 8, 2, 1, 5, 5, 5, 4, 7, 6, 7, 5, 751, 69, 11, 27),
(1152, 5, 7, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 751, 69, 11, 37),
(1153, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 751, 69, 11, 51),
(1154, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 751, 69, 11, 52),
(1155, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 751, 69, 11, 53),
(1156, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 751, 69, 11, 56),
(1157, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 751, 69, 11, 60),
(1158, 7, 5, 'HIGH', 9, 7, 5, 7, 8, 7, 5, 8, 5, 5, 5, 5, 7, 6, 7, 5, 751, 69, 11, 65),
(1159, 7, 5, 'HIGH', 9, 7, 5, 7, 7, 6, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 751, 69, 11, 67),
(1160, 6, 5, 'HIGH', 9, 7, 5, 7, 7, 6, 5, 5, 5, 5, 5, 5, 7, 6, 7, 5, 751, 69, 11, 69),
(1161, 7, 5, 'HIGH', 9, 7, 5, 7, 9, 8, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 751, 69, 11, 71),
(1162, 7, 4, 'HIGH', 9, 7, 5, 7, 9, 8, 8, 9, 3, 2, 2, 1, 7, 6, 7, 5, 751, 69, 11, 72),
(1163, 6, 7, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 9, 8, 9, 8, 8, 8, 751, 69, 11, 73),
(1164, 7, 8, 'CRITICAL', 9, 7, 5, 7, 7, 7, 8, 8, 8, 7, 8, 9, 9, 8, 8, 8, 751, 69, 11, 74),
(1165, 6, 5, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 7, 6, 7, 5, 751, 69, 11, 80),
(1166, 5, 5, 'MEDIUM', 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 752, 69, 11, 1),
(1167, 5, 6, 'HIGH', 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 752, 69, 11, 2),
(1168, 6, 5, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 752, 69, 11, 23),
(1169, 6, 6, 'MEDIUM', 9, 7, 5, 7, 6, 4, 4, 6, 5, 5, 5, 7, 9, 8, 8, 8, 752, 69, 11, 29),
(1170, 5, 7, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 752, 69, 11, 37),
(1171, 7, 5, 'HIGH', 9, 7, 5, 7, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 752, 69, 11, 38),
(1172, 4, 6, 'HIGH', 9, 7, 5, 7, 2, 2, 3, 2, 5, 5, 5, 5, 9, 8, 8, 8, 752, 69, 11, 40),
(1173, 6, 7, 'CRITICAL', 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 752, 69, 11, 50),
(1174, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 752, 69, 11, 56),
(1175, 6, 2, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 752, 69, 11, 57),
(1176, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 752, 69, 11, 60),
(1177, 7, 8, 'CRITICAL', 9, 7, 5, 7, 7, 7, 8, 8, 8, 7, 8, 9, 9, 8, 8, 8, 752, 69, 11, 74),
(1178, 5, 5, 'MEDIUM', 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 753, 69, 11, 1),
(1179, 5, 6, 'HIGH', 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 753, 69, 11, 2),
(1180, 6, 5, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 753, 69, 11, 23),
(1181, 5, 5, 'MEDIUM', 9, 7, 5, 7, 4, 8, 2, 1, 5, 5, 5, 4, 7, 6, 7, 5, 753, 69, 11, 27),
(1182, 5, 7, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 753, 69, 11, 37),
(1183, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 753, 69, 11, 51),
(1184, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 753, 69, 11, 52),
(1185, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 753, 69, 11, 53),
(1186, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 753, 69, 11, 56),
(1187, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 753, 69, 11, 60),
(1188, 7, 5, 'HIGH', 9, 7, 5, 7, 8, 7, 5, 8, 5, 5, 5, 5, 7, 6, 7, 5, 753, 69, 11, 65),
(1189, 7, 5, 'HIGH', 9, 7, 5, 7, 9, 8, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 753, 69, 11, 71),
(1190, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 754, 69, 11, 32),
(1191, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 754, 69, 11, 34),
(1192, 5, 7, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 754, 69, 11, 37),
(1193, 6, 7, 'CRITICAL', 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 754, 69, 11, 50),
(1194, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 754, 69, 11, 53),
(1195, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 754, 69, 11, 56),
(1196, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 754, 69, 11, 60),
(1197, 6, 7, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 9, 8, 9, 8, 8, 8, 754, 69, 11, 73),
(1198, 5, 5, 'MEDIUM', 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 755, 69, 11, 1),
(1199, 5, 6, 'HIGH', 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 755, 69, 11, 2),
(1200, 6, 5, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 755, 69, 11, 23),
(1201, 5, 5, 'MEDIUM', 9, 7, 5, 7, 4, 8, 2, 1, 5, 5, 5, 4, 7, 6, 7, 5, 755, 69, 11, 27),
(1202, 5, 7, 'HIGH', 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 755, 69, 11, 37),
(1203, 6, 7, 'CRITICAL', 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 755, 69, 11, 50),
(1204, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 755, 69, 11, 51),
(1205, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 755, 69, 11, 52),
(1206, 6, 6, 'MEDIUM', 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 755, 69, 11, 53),
(1207, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 755, 69, 11, 56),
(1208, 7, 6, 'CRITICAL', 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 755, 69, 11, 60),
(1209, 7, 5, 'HIGH', 9, 7, 5, 7, 8, 7, 5, 8, 5, 5, 5, 5, 7, 6, 7, 5, 755, 69, 11, 65),
(1210, 7, 5, 'HIGH', 9, 7, 5, 7, 9, 8, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 755, 69, 11, 71);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_stride`
--

CREATE TABLE `parsingbpmn_stride` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_stride`
--

INSERT INTO `parsingbpmn_stride` (`id`, `category`) VALUES
(1, 'Spoofing'),
(2, 'Tampering'),
(3, 'Repudiation'),
(4, 'Information Disclosure'),
(5, 'Denial Of Services'),
(6, 'Elevation of privilege');

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_strideimpactrecord`
--

CREATE TABLE `parsingbpmn_strideimpactrecord` (
  `id` int(11) NOT NULL,
  `financialdamage` int(11) DEFAULT NULL,
  `reputationdamage` int(11) DEFAULT NULL,
  `noncompliance` int(11) DEFAULT NULL,
  `privacyviolation` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `stride_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_system`
--

CREATE TABLE `parsingbpmn_system` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_system`
--

INSERT INTO `parsingbpmn_system` (`id`, `name`) VALUES
(3, 'Regione Campania'),
(8, 'Unicampania'),
(11, 'Municipality');

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_system_threatagent`
--

CREATE TABLE `parsingbpmn_system_threatagent` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_system_threatagent`
--

INSERT INTO `parsingbpmn_system_threatagent` (`id`, `category_id`, `system_id`) VALUES
(1, 4, 3),
(2, 9, 3),
(3, 10, 3),
(4, 13, 3),
(5, 16, 3),
(6, 18, 3),
(7, 20, 3),
(8, 15, 3),
(9, 19, 3),
(10, 12, 3),
(11, 5, 3),
(12, 14, 3),
(42, 4, 8),
(43, 9, 8),
(44, 10, 8),
(45, 13, 8),
(46, 16, 8),
(47, 18, 8),
(48, 20, 8),
(49, 6, 11),
(50, 8, 11),
(51, 13, 11),
(52, 16, 11),
(53, 20, 11);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_tacategoryattribute`
--

CREATE TABLE `parsingbpmn_tacategoryattribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_tacategoryattribute`
--

INSERT INTO `parsingbpmn_tacategoryattribute` (`id`, `attribute_id`, `category_id`) VALUES
(1, 1, 1),
(2, 4, 1),
(3, 6, 1),
(4, 9, 1),
(5, 18, 1),
(6, 20, 1),
(7, 28, 1),
(8, 31, 1),
(9, 32, 1),
(10, 1, 2),
(11, 4, 2),
(12, 7, 2),
(13, 9, 2),
(14, 16, 2),
(15, 19, 2),
(16, 28, 2),
(17, 31, 2),
(18, 32, 2),
(19, 1, 3),
(20, 4, 3),
(21, 5, 3),
(22, 9, 3),
(23, 17, 3),
(24, 19, 3),
(25, 28, 3),
(26, 31, 3),
(27, 32, 3),
(28, 2, 4),
(29, 3, 4),
(30, 7, 4),
(31, 10, 4),
(32, 15, 4),
(33, 22, 4),
(34, 25, 4),
(35, 31, 4),
(36, 2, 5),
(37, 3, 5),
(38, 6, 5),
(39, 13, 5),
(40, 18, 5),
(41, 21, 5),
(42, 23, 5),
(43, 32, 5),
(44, 2, 6),
(45, 3, 6),
(46, 5, 6),
(47, 13, 6),
(48, 18, 6),
(49, 21, 6),
(50, 23, 6),
(51, 30, 6),
(52, 33, 6),
(53, 2, 7),
(54, 3, 7),
(55, 7, 7),
(56, 14, 7),
(57, 18, 7),
(58, 21, 7),
(59, 24, 7),
(60, 30, 7),
(61, 33, 7),
(62, 2, 8),
(63, 3, 8),
(64, 5, 8),
(65, 12, 8),
(66, 18, 8),
(67, 21, 8),
(68, 23, 8),
(69, 30, 8),
(70, 33, 8),
(71, 2, 9),
(72, 3, 9),
(73, 8, 9),
(74, 9, 9),
(75, 17, 9),
(76, 22, 9),
(77, 25, 9),
(78, 26, 9),
(79, 31, 9),
(80, 32, 9),
(81, 2, 10),
(82, 3, 10),
(83, 8, 10),
(84, 14, 10),
(85, 18, 10),
(86, 22, 10),
(87, 25, 10),
(88, 26, 10),
(89, 31, 10),
(90, 32, 10),
(91, 2, 11),
(92, 3, 11),
(93, 5, 11),
(94, 14, 11),
(95, 18, 11),
(96, 22, 11),
(97, 23, 11),
(98, 24, 11),
(99, 30, 11),
(100, 33, 11),
(101, 2, 12),
(102, 3, 12),
(103, 5, 12),
(104, 13, 12),
(105, 18, 12),
(106, 21, 12),
(107, 23, 12),
(108, 29, 12),
(109, 33, 12),
(110, 2, 13),
(111, 3, 13),
(112, 8, 13),
(113, 9, 13),
(114, 15, 13),
(115, 22, 13),
(116, 28, 13),
(117, 31, 13),
(118, 32, 13),
(119, 2, 14),
(120, 3, 14),
(121, 7, 14),
(122, 13, 14),
(123, 18, 14),
(124, 20, 14),
(125, 23, 14),
(126, 27, 14),
(127, 30, 14),
(128, 2, 15),
(129, 3, 15),
(130, 6, 15),
(131, 13, 15),
(132, 18, 15),
(133, 22, 15),
(134, 27, 15),
(135, 29, 15),
(136, 2, 16),
(137, 3, 16),
(138, 7, 16),
(139, 13, 16),
(140, 18, 16),
(141, 21, 16),
(142, 28, 16),
(143, 31, 16),
(144, 32, 16),
(145, 2, 17),
(146, 3, 17),
(147, 7, 17),
(148, 10, 17),
(149, 16, 17),
(150, 21, 17),
(151, 28, 17),
(152, 31, 17),
(153, 32, 17),
(154, 2, 18),
(155, 3, 18),
(156, 6, 18),
(157, 13, 18),
(158, 18, 18),
(159, 22, 18),
(160, 25, 18),
(161, 26, 18),
(162, 27, 18),
(163, 31, 18),
(164, 2, 19),
(165, 3, 19),
(166, 5, 19),
(167, 9, 19),
(168, 15, 19),
(169, 21, 19),
(170, 27, 19),
(171, 29, 19),
(172, 2, 20),
(173, 3, 20),
(174, 6, 20),
(175, 11, 20),
(176, 17, 20),
(177, 21, 20),
(178, 28, 20),
(179, 31, 20),
(180, 2, 21),
(181, 3, 21),
(182, 5, 21),
(183, 12, 21),
(184, 17, 21),
(185, 20, 21),
(186, 23, 21),
(187, 30, 21),
(188, 33, 21);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_tareplies_question`
--

CREATE TABLE `parsingbpmn_tareplies_question` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_tareplies_question`
--

INSERT INTO `parsingbpmn_tareplies_question` (`id`, `question_id`, `reply_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 4, 11),
(12, 4, 12),
(13, 4, 13),
(14, 4, 14),
(15, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_tareplycategory`
--

CREATE TABLE `parsingbpmn_tareplycategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_tareplycategory`
--

INSERT INTO `parsingbpmn_tareplycategory` (`id`, `category_id`, `reply_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 1, 2),
(23, 2, 2),
(24, 3, 2),
(25, 13, 2),
(26, 16, 2),
(27, 20, 2),
(28, 13, 3),
(29, 16, 3),
(30, 20, 3),
(31, 4, 3),
(32, 5, 3),
(33, 6, 3),
(34, 8, 3),
(35, 10, 3),
(36, 14, 3),
(37, 15, 3),
(38, 16, 3),
(39, 18, 3),
(40, 19, 3),
(41, 13, 4),
(42, 16, 4),
(43, 20, 4),
(44, 4, 4),
(45, 5, 4),
(46, 6, 4),
(47, 7, 4),
(48, 8, 4),
(49, 9, 4),
(50, 10, 4),
(51, 11, 4),
(52, 12, 4),
(53, 13, 4),
(54, 14, 4),
(55, 15, 4),
(56, 16, 4),
(57, 17, 4),
(58, 18, 4),
(59, 19, 4),
(60, 20, 4),
(61, 13, 5),
(62, 16, 5),
(63, 20, 5),
(64, 5, 5),
(65, 6, 5),
(66, 8, 5),
(67, 11, 5),
(68, 12, 5),
(69, 14, 5),
(70, 21, 5),
(71, 13, 6),
(72, 16, 6),
(73, 20, 6),
(74, 7, 6),
(75, 10, 6),
(76, 13, 7),
(77, 16, 7),
(78, 20, 7),
(79, 1, 7),
(80, 2, 7),
(81, 3, 7),
(82, 16, 7),
(83, 8, 7),
(84, 13, 8),
(85, 16, 8),
(86, 20, 8),
(87, 4, 8),
(88, 10, 8),
(89, 9, 8),
(90, 18, 8),
(91, 13, 9),
(92, 16, 9),
(93, 20, 9),
(94, 9, 9),
(95, 10, 9),
(96, 15, 9),
(97, 18, 9),
(98, 13, 10),
(99, 16, 10),
(100, 20, 10),
(101, 14, 10),
(102, 18, 10),
(103, 15, 10),
(104, 19, 10),
(105, 13, 11),
(106, 16, 11),
(107, 20, 11),
(108, 12, 11),
(109, 15, 11),
(110, 19, 11),
(111, 13, 12),
(112, 16, 12),
(113, 20, 12),
(114, 1, 12),
(115, 2, 12),
(116, 3, 12),
(117, 4, 12),
(118, 9, 12),
(119, 10, 12),
(120, 16, 12),
(121, 18, 12),
(122, 13, 13),
(123, 16, 13),
(124, 20, 13),
(125, 1, 13),
(126, 2, 13),
(127, 3, 13),
(128, 5, 13),
(129, 9, 13),
(130, 10, 13),
(131, 14, 13),
(132, 16, 13),
(133, 13, 14),
(134, 16, 14),
(135, 20, 14),
(136, 6, 14),
(137, 7, 14),
(138, 8, 14),
(139, 11, 14),
(140, 12, 14),
(141, 21, 14),
(142, 13, 15),
(143, 16, 15),
(144, 20, 15),
(145, 6, 15),
(146, 7, 15),
(147, 8, 15),
(148, 11, 15),
(149, 21, 15);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_task_manages_data`
--

CREATE TABLE `parsingbpmn_task_manages_data` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_task_manages_data`
--

INSERT INTO `parsingbpmn_task_manages_data` (`id`, `data_id`, `task_id`) VALUES
(1, 770, 743),
(2, 770, 745),
(3, 770, 743),
(4, 770, 745),
(5, 778, 743),
(6, 778, 743),
(7, 778, 743),
(8, 778, 743),
(9, 787, 743),
(10, 787, 746),
(11, 787, 743),
(12, 787, 746),
(13, 787, 743),
(14, 787, 746),
(15, 795, 742),
(16, 795, 742),
(17, 795, 742);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_threat`
--

CREATE TABLE `parsingbpmn_threat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `owasp_ease_of_discovery` int(11) DEFAULT NULL,
  `owasp_ease_of_exploit` int(11) DEFAULT NULL,
  `owasp_intrusion_detection` int(11) DEFAULT NULL,
  `owasp_awareness` int(11) DEFAULT NULL,
  `loss_of_confidentiality` int(11) DEFAULT NULL,
  `loss_of_integrity` int(11) DEFAULT NULL,
  `loss_of_availability` int(11) DEFAULT NULL,
  `loss_of_accountability` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_threat`
--

INSERT INTO `parsingbpmn_threat` (`id`, `name`, `description`, `owasp_ease_of_discovery`, `owasp_ease_of_exploit`, `owasp_intrusion_detection`, `owasp_awareness`, `loss_of_confidentiality`, `loss_of_integrity`, `loss_of_availability`, `loss_of_accountability`) VALUES
(1, 'Fraud', 'Fraud made by human', 1, 3, 3, 5, 8, 8, 1, 5),
(2, 'Sabotage', 'Intentional actions (non-fulfillment or defective fulfillment of personal duties) aimed to cause disruption or damage of IT Assets', 1, 3, 3, 5, 5, 5, 1, 5),
(3, 'Vandalism', 'Act of physically damage of IT Assets', 6, 8, 1, 3, 7, 9, 8, 3),
(4, 'Theft (devices, storage media and documents)\r\n', 'Stealing of information or IT Assets. [Theft of mobile devices (smartphones/ tablets) - Theft of fi9ed hardware - Theft of documents - Theft of backups]', 5, 3, 4, 6, 8, 7, 9, 2),
(5, 'Information leakage/sharing\r\n', 'Sharing information with unauthorised entities. Loss of information confidentiality due to intentional human actions.', 2, 7, 2, 3, 9, 7, 4, 6),
(6, 'Unauthorized physical access / Unauthorised entry to premises\r\n', 'Unapproved access to facility.\r\n', 3, 8, 7, 2, 8, 9, 2, 6),
(7, 'Coercion, extortion or corruption\r\n', 'Actions caused by coercion, extortion or corruption\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(8, 'Damage from the warfare\r\n', 'Threats of direct impact of warfare activities\r\n', 5, 5, 5, 5, 7, 8, 8, 8),
(9, 'Terrorists attack\r\n', 'Threats of bombing or other actions that counts as \"terrorists attacks\"\r\n', 5, 5, 5, 5, 7, 8, 8, 8),
(10, 'Information leakage/sharing due to human error\r\n', 'Unintentional distribution of private or sensitive data to an unauthorized entity by staff member.\r\n', 4, 8, 2, 1, 5, 5, 5, 4),
(11, 'Erroneous use or administration of devices and systems\r\n', 'Information leakage / sharing / damage caused by users IT Assets misuse (lack of awareness of application features) or wrong / improperly IT Assets configuration or management\r\n', 6, 4, 4, 6, 5, 5, 5, 7),
(12, 'Using information from an unreliable source\r\n', 'Bad decision based on unreliable sources of information or unchecked information.\r\n', 7, 7, 8, 8, 5, 5, 5, 5),
(13, 'Unintentional change of data in an information system\r\n', 'Loss of information integrity due to human error (information system user mistake)\r\n', 5, 5, 5, 5, 8, 9, 2, 5),
(14, 'Inadequate design and planning or improperly adaptation\r\n', 'Threats caused by improperly IT Assets or business processes design (inadequate specifications of IT products, inadequate usability, insecure interfaces, policy/procedure flows, design errors)\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(15, 'Damage caused by a third party \r\n', 'Threats of damage of IT Assets caused by third party \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(16, 'Damages resulting from penetration testing\r\n', 'Threats to information systems caused by improperly / inprepare conducting of IT penetration testing\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(17, 'Loss of information in the cloud\r\n', 'Threats of loosing information or data stored in the cloud\r\n', 5, 5, 5, 3, 5, 5, 9, 5),
(18, 'Loss of (integrity of) sensitive information\r\n', 'Threats of loosing information or data (or changing) information classified as sensitive\r\n', 8, 7, 7, 8, 5, 9, 5, 5),
(19, 'Loss of devices, storage media and documents\r\n', 'Threats of the lack of availability (loosing) of IT Assets and documents\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(20, 'Destruction of records\r\n', 'Threats of the lack of availability (destruction) of data and records (information) stored in devices and storage media\r\n', 2, 2, 3, 2, 5, 5, 5, 5),
(21, 'Disaster (natural earthquakes,floods,landslides, tsunamis,heavy rains,heavy snowfalls,heavy winds)', 'Large scale and large effects natural disasters', 1, 1, 1, 1, 5, 5, 5, 5),
(22, 'Fire', 'Threat of fire ', 1, 1, 1, 1, 5, 5, 5, 5),
(23, 'Pollution, dust, corrosion\r\n', 'Threat of disruption of work of IT systems (hardware) dur to pollution, dust or corrosion (arising from the air)\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(24, 'Thunder stroke\r\n', 'Threat of damage of IT hardware caused by the thunder strike (the electrical overvoltage)\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(25, 'Water\r\n', 'Threat of damage of IT hardware caused by the water\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(26, 'Explosion\r\n', 'empty\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(27, 'Dangerous radiation leak\r\n', 'empty\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(28, 'Unfavorable climatic conditions\r\n', 'Threat of disruption of work of IT systems due to climatic conditions that have the negative effect on hardware\r\n', 2, 2, 2, 1, 5, 5, 5, 5),
(29, 'Major events in the environment\r\n', 'empty\r\n', 2, 2, 2, 2, 5, 5, 5, 5),
(30, 'Threats from space / Electromagnetic storm\r\n', 'Threats of the negative impact of solar radiation (harmful rays) to a satellites and radio wave communication systems - Electromagnetic storm\r\n', 1, 1, 2, 1, 5, 5, 5, 5),
(31, 'Wildlife\r\n', 'empty\r\n', 2, 2, 2, 2, 5, 5, 5, 5),
(32, 'Failure of devices or systems\r\n', 'Threat of failure of IT hardware and/or software assets or its parts\r\n', 7, 5, 5, 7, 7, 7, 8, 7),
(33, 'Failure or disruption of communication links (communication networks)\r\n', 'Threat of failure or malfunction of communications links \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(34, 'Failure or disruption of main supply\r\n', 'Threat of failure or disruption of supply required for information systems\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(35, 'Failure or disruption of service providers (supply chain)\r\n', 'Threat of failure or disruption of thire party services required for proper operation of information systems\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(36, 'Malfunction of equipment (devices or systems)\r\n', 'Threat of malfunction of IT hardware and/or software assets or its parts\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(37, 'Loss of resources\r\n', 'Unavailability of resources (supply) required for proper operation of information system\r\n', 8, 7, 7, 8, 5, 5, 5, 5),
(38, 'Absence of personnel\r\n', 'Unavailability of key personnel and their competences\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(39, 'Strike\r\n', 'Unavailability of staff due strike (large scale absence of personnel)\r\n', 2, 2, 2, 1, 5, 5, 5, 5),
(40, 'Loss of support services\r\n', 'Unavailability of support services required for proper operation of information system\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(41, 'Internet outage\r\n', 'Unavailability of the Internet connection\r\n', 8, 7, 7, 8, 5, 5, 5, 5),
(42, 'Network outage\r\n', 'Unavailability of communication links\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(43, 'War driving\r\n', 'Threat of locating and possible exploite connection to the wireless network\r\n', 6, 7, 7, 5, 5, 5, 5, 5),
(44, 'Intercepting compromising emissions\r\n', 'Threat of disclosure transmitted information using interception and analysis of compromising emission\r\n', 6, 7, 7, 5, 5, 5, 5, 5),
(45, 'Interception of information\r\n', 'Threat of interception of information improperly secured in transmission or improperly actions of staff\r\n', 8, 7, 5, 8, 5, 5, 5, 5),
(46, 'Interfering radiation\r\n', 'Threat of failure of IT hardware or transmission connection due to electromagnetic induction or electromagnetic radiation emitted from an another source\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(47, 'Replay of messages\r\n', 'Threat in which valid data transmission is maliciously or fraudulently repeated or delayed\r\n', 7, 6, 7, 8, 5, 5, 5, 5),
(48, 'Network Reconnaissance, Network traffic manipulation and Information gathering\r\n', 'Threat of identifying information about network to find security weaknesses\r\n', 6, 7, 5, 6, 5, 5, 5, 5),
(49, 'Man in the middle/ Session hijacking \r\n', 'Threats that relay on alters of communication between two parties\r\n', 7, 6, 5, 5, 5, 5, 5, 5),
(50, 'Identity theft (Identity Fraud/ Account) \r\n', 'Threat of identity theft action\r\n', 9, 8, 7, 8, 5, 5, 5, 5),
(51, 'Receive of unsolicited E-mail \r\n', 'Threat of receive of unsolicited E-mail that affect for information security and efficienty of work (SPAM)\r\n', 9, 8, 8, 9, 3, 2, 2, 1),
(52, 'Denial of service\r\n', 'Threat of Deny of service type attacks at information systems/services\r\n', 5, 5, 5, 5, 5, 5, 9, 8),
(53, 'Malicious code/ software/ activity\r\n', 'Threat of malicious code or software execution\r\n', 7, 7, 8, 8, 8, 7, 8, 9),
(54, 'Social Engineering\r\n', 'Phishing attacks, Spear phishing attacks\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(55, 'Abuse of Information Leakage\r\n', '? What is difference between others Physical attack (deliberate/ intentional)?\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(56, 'Generation and use of rogue certificates\r\n', 'Threat of use of rogue certificates\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(57, 'Manipulation of hardware and software\r\n', 'Threat of unauthorized manipulation of hardware and software\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(58, 'Manipulation of information\r\n', 'Threat of intentional data manipulation to mislead information systems or somebody or to cover other nefarious activities (loss of integrity of information) \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(59, 'Misuse of audit tools\r\n', 'Threat of nefarious actions with use of audit tools (discovery security weaknesses in information systems)\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(60, 'Misuse of information/ information systems (including mobile apps)\r\n', 'Threat of nefarious action due to misuse of information / information systems\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(61, 'Unauthorized activities\r\n', 'empty\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(62, 'Unauthorized installation of software\r\n', 'Threat of unauthorized installation of software\r\n', 6, 5, 5, 5, 5, 5, 5, 7),
(63, 'Compromising confidential information (data breaches)\r\n', 'Threat of data breach \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(64, 'Hoax\r\n', 'Threat of disruption of work due to False rumor and/or a fake warning\r\n', 2, 3, 3, 4, 5, 5, 5, 5),
(65, 'Remote activity (execution)\r\n', 'Threat of remote activity over controled IT Assets\r\n', 7, 7, 8, 8, 5, 5, 5, 5),
(66, 'Targeted attacks (APTs etc.)\r\n', 'Threat of sophisticated targetes attack with combination of many attack techniques\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(67, 'Failed of bussines process\r\n', 'empty\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(68, 'Brute force\r\n', 'empty\r\n', 7, 9, 8, 8, 5, 5, 5, 5),
(69, 'Abuse of authorizations\r\n', 'empty\r\n', 8, 7, 6, 8, 5, 5, 5, 5),
(70, 'Violation of laws or regulations / Breach of legislation\r\n', 'Threat of finacial or legal penatly or lost of trust of customers and collaborators due to violation of law or regulations\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(71, 'Failure to meet contractual requirements\r\n', 'Threat of finacial penatly or lost of trust of customers and collaborators due to failure to meet contractual requirements\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(72, 'Unauthorized use of IPR protected resources\r\n', 'Threat of finacial or legal penatly or lost of trust of customers and collaborators due to improper/illegal use of copyrights material\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(73, 'Abuse of personal data\r\n', 'Threat of illegal use personal data\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(74, 'Judiciary decisions/court orders\r\n', 'empty\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(75, '', '', NULL, NULL, NULL, NULL, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_threatagentattribute`
--

CREATE TABLE `parsingbpmn_threatagentattribute` (
  `id` int(11) NOT NULL,
  `attribute` varchar(100) DEFAULT NULL,
  `attribute_value` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_threatagentattribute`
--

INSERT INTO `parsingbpmn_threatagentattribute` (`id`, `attribute`, `attribute_value`, `description`, `score`) VALUES
(1, 'Intent', 'Non hostile', 'The agent is friendly and intends to protect the assets, but accidentally or mistakenly takes actions that result in harm', 1),
(2, 'Intent', 'Hostile', 'The agent intents to cause harm or inappropriately use assets, and the agent take deliberate actions to achieve that result', 2),
(3, 'Access', 'External', 'Agent has only external access', 1),
(4, 'Access', 'Internal', 'Agent has internal access', 2),
(5, 'Visibility', 'Clandestine', 'The agent intends to keep both the attack and his or her identity secret', 1),
(6, 'Visibility', 'Covert', 'The victim knows about the attack at the time it occurs, or soon after, However the agent of the attacks intends to remain unidentified', 2),
(7, 'Visibility', 'Overt', 'The agent deliberately makes the attack and the threat agent identity is known before or at the time of execution', 3),
(8, 'Visibility', 'Multiple', 'The agent does not have a rational plan, may make a choice opportunistically at the time of attack, or may not place importance on secrecy', 4),
(9, 'Resources', 'Individual', 'Resources limited to the average individual, agent acts independently, Minimum skill level is None', 1),
(10, 'Resources', 'Club', 'Members interact on a social and volunteer basis, often with little personal interest in the specific target, Minimum skill level is Minimal', 2),
(11, 'Resources', 'Contest', 'A short lived and perhaps anonymous interaction that concludes when the participants have achieved a single goal Minimum skill is Operational', 3),
(12, 'Resources', 'Team', 'A formally organized group with a leader typically motivated by a specific goal and organized around that goal. Group persists long term and typically operates within a single geography. Minimum skill level: Operational', 4),
(13, 'Resources', 'Organization', 'Larger and better resourced than a Team, typically a company, Usually operates in multiple geographies and persists long term, Minimum skill level is Adept', 5),
(14, 'Resources', 'Government', 'Controls public assets and functions within a jurisdiction, very well resourced and persists long term, Minimum skill level is Adept', 6),
(15, 'Skills', 'None', 'Has average intelligence and ability and can easily carry out random acts of disruption or destruction but has no expertise or training', 1),
(16, 'Skills', 'Minimal', 'Can copy and use existing techniques', 2),
(17, 'Skills', 'Operational', 'Understands underlying technology or methods and can create new attacks within a narrow domain', 3),
(18, 'Skills', 'Adept', 'Expert in technology and attack methods, and can both apply existing attacks and create new one to greatest advantage', 4),
(19, 'Limits', 'Code of Conduct', 'Agents typically follow both the applicable laws and an additional code of conduct accepted within a profession or an exchange of goods or services', 4),
(20, 'Limits', 'Legal', 'Agents act within the limits of applicable laws', 3),
(21, 'Limits', 'Extra-legal minor', 'Agents may break the law in relatively minor, non violent ways, such as minor vandalism or trespass', 2),
(22, 'Limits', 'Extra-legal major', 'Agents take no account of the law and may engage in felonious behaviours resulting in significant financial impact or extreme violence', 1),
(23, 'Objectives', 'Copy', 'Make a replica of the asset so the agent has simultaneous access to it', 1),
(24, 'Objectives', 'Deny', 'Impact the confidentiality of the asset', 2),
(25, 'Objectives', 'Destroy', 'Destroy the asset, which becomes worthless to the organization or the agent', 3),
(26, 'Objectives', 'Damage', 'Damage the asset which remains in the organization but has limited functionality or value', 4),
(27, 'Objectives', 'Take', 'Gain possession of the asset so that the organization has no access to it.', 5),
(28, 'Objectives', 'All', 'The agent does not have a rational plan, or may make a choice opportunistically at the time of attack', 6),
(29, 'Outcome', 'Acquisition/Theft', 'Illicit acquisition of valuable assets for resale or extortion in a way that preserves the integrity but damage other items in the process', 1),
(30, 'Outcome', 'Business Advantage', 'Increased ability to compete in a market with a given set of products, The goal is to acquire business processes or assets', 2),
(31, 'Outcome', 'DamageOutcome', 'Injury to personnel, physical or electronic assets, or intellectual property', 3),
(32, 'Outcome', 'Embarassment', 'Public portrayal of organization in an unflattering light, causing Intel to lose influence, credibility, competitiveness, or stock value', 4),
(33, 'Outcome', 'Tech Advantage', 'Illicit improvement of a specific product or production capability, The primary target is to acquire production processes or assets rather than a business process', 5);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_threatagentcategory`
--

CREATE TABLE `parsingbpmn_threatagentcategory` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `common_actions` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_threatagentcategory`
--

INSERT INTO `parsingbpmn_threatagentcategory` (`id`, `category`, `description`, `common_actions`) VALUES
(1, 'Employee Reckless', 'Current employee who knowingly and deliberately circumvents safeguards for expediency,but intends no harm or serious consequence', 'Benign shortcuts and misuse of authorizations,pushed wrong button'),
(2, 'Employee Untrained', 'Current employee with harmless intent but unknowingly misuses system or safeguards', 'Poor process,unforeseen mistakes,pushed wrong button'),
(3, 'Info Partner', 'Someone with whom the company has voluntarily shared sensitive data', 'Poor internal protection of company proprietary materials'),
(4, 'Anarchist', 'Someone who rejects all forms of structure,private or public,and acts with few constraints', 'Violence,property destruction,physical business disruptio'),
(5, 'Civil Activist', 'Highly motivated but non-violent supporter of cause', 'Electronic or physical business disruption,theft of business data'),
(6, 'Competitor', 'Business adversary who competes for revenues or resources (acquisitions,etc.)', 'Theft of IP or business data'),
(7, 'Corrupt Government Official', 'Person who inappropriately uses his or her position within the givernment to acquire company resources', 'Organizatonal of physical business disruption'),
(8, 'Data Miner', 'Professional data gatherer external to the company (includes cyber methods)', 'Theft of IP,PII,or business data'),
(9, 'Employee Disgruntled', 'Current or former employee with intent to harm the company', 'Abuse of privileges for sabotage,cyber or physical'),
(10, 'Government Cyberwarrior', 'State-sponsored attacker with significat resources to affect major disruption on national scale', 'Organizational,infrastructural,and physical business disruption,through network/computing disruption,web hijacking,malware'),
(11, 'Government Spy', 'State-sponsored spy as a trusted insider,supporting idealistic goal', 'Theft of IP or business data'),
(12, 'Internal Spy', 'Professional data gatherer as a trusted insider,generally with a simple profit motive', 'Theft of IP,PII,or business data'),
(13, 'Irrational Individual', 'Someone with illogical purpose and irrational behavior', 'Personal violence resulting in physical business disrumption'),
(14, 'Legal Adversary', 'Adversary in legal proceedings against the company,warranted or not', 'Organizational business disruption,access to IP or business data'),
(15, 'Mobster', 'Manager of organized crime organization with significant resources', 'Theft of IP,PII,or business data,violence'),
(16, 'Radical Activist', 'Highly motivated,potentially destructive supporter of cause', 'Property destruction,physical business disruption'),
(17, 'Sensationalist', ' Attention-grabber who may employ any method for notoriety,looking for 15 minutes of fame', 'Public announcements for PR crises,theft of business data'),
(18, 'Terrorist', 'Person who relies on the use of violence to support personal socio-political agenda', 'Violence,property destruction,physical business disruption'),
(19, 'Thief', 'Opportunistic individual with simple profit motive', 'Theft of hardware goods or IP,PII,or business data'),
(20, 'Cyber Vandal', 'Derives thrills from intrusion or destruction of property,without strong agenda', 'Network/computing disruption,web hijacking,malware'),
(21, 'Vendor', 'Business partner who seeks inside information for financial advantage over competitors', 'Theft of IP or business data');

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_threatagentquestion`
--

CREATE TABLE `parsingbpmn_threatagentquestion` (
  `id` int(11) NOT NULL,
  `Qid` varchar(500) DEFAULT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_threatagentquestion`
--

INSERT INTO `parsingbpmn_threatagentquestion` (`id`, `Qid`, `question`) VALUES
(1, '1', 'Are there someone who can gain an advantage\r\nimplementing a cyber threat against your system?'),
(2, '2', 'Do you trust all employees and do you assume that they are not a possible Threat agent?'),
(3, '3', 'What are the goals of the attackers that represent the most threat to you?'),
(4, '4', 'What could be the expected results of a possible attacker in the phases of a possible attack on\r\nthe software system?');

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_threatagentriskscores`
--

CREATE TABLE `parsingbpmn_threatagentriskscores` (
  `id` int(11) NOT NULL,
  `skill` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `motive` int(11) NOT NULL,
  `opportunity` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_threatagentriskscores`
--

INSERT INTO `parsingbpmn_threatagentriskscores` (`id`, `skill`, `size`, `motive`, `opportunity`, `created_at`, `updated_at`, `system_id`) VALUES
(12, 9, 7, 7, 5, '2022-03-04 08:50:52.909444', '2022-03-04 08:50:52.909444', 11);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_threat_has_attribute`
--

CREATE TABLE `parsingbpmn_threat_has_attribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_threat_has_attribute`
--

INSERT INTO `parsingbpmn_threat_has_attribute` (`id`, `attribute_id`, `threat_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 2, 2),
(6, 3, 2),
(7, 3, 3),
(8, 1, 7),
(9, 2, 7),
(10, 3, 7),
(11, 1, 10),
(12, 2, 10),
(13, 3, 10),
(14, 2, 11),
(15, 1, 17),
(16, 2, 17),
(17, 1, 32),
(18, 2, 32),
(19, 1, 33),
(20, 2, 33),
(21, 1, 34),
(22, 2, 34),
(23, 3, 34),
(24, 1, 35),
(25, 2, 35),
(26, 1, 37),
(27, 2, 37),
(28, 3, 37),
(29, 1, 41),
(30, 2, 41),
(31, 1, 45),
(32, 2, 45),
(33, 3, 45),
(34, 2, 49),
(35, 1, 50),
(36, 2, 50),
(37, 3, 58),
(38, 4, 1),
(39, 5, 1),
(40, 6, 1),
(41, 4, 2),
(42, 5, 2),
(43, 6, 2),
(44, 6, 3),
(45, 4, 7),
(46, 5, 7),
(47, 6, 7),
(48, 4, 10),
(49, 5, 10),
(50, 6, 10),
(51, 4, 17),
(52, 5, 17),
(53, 4, 33),
(54, 5, 33),
(55, 4, 34),
(56, 5, 34),
(57, 6, 34),
(58, 4, 35),
(59, 5, 35),
(60, 4, 37),
(61, 5, 37),
(62, 6, 37),
(63, 4, 41),
(64, 5, 41),
(65, 4, 45),
(66, 5, 45),
(67, 6, 45),
(68, 5, 47),
(69, 5, 49),
(70, 4, 50),
(71, 5, 50),
(72, 5, 51),
(73, 5, 52),
(74, 5, 53),
(75, 5, 54),
(76, 6, 58),
(77, 12, 1),
(78, 12, 2),
(79, 12, 3),
(80, 10, 15),
(81, 11, 15),
(82, 10, 16),
(83, 11, 16),
(84, 10, 17),
(85, 10, 32),
(86, 11, 32),
(87, 10, 35),
(88, 11, 35),
(89, 10, 37),
(90, 11, 37),
(91, 10, 41),
(92, 11, 41),
(93, 10, 52),
(94, 11, 52),
(95, 9, 1),
(96, 9, 2),
(97, 9, 3),
(98, 9, 4),
(99, 9, 5),
(100, 9, 7),
(101, 7, 1),
(102, 8, 1),
(103, 7, 2),
(104, 8, 2),
(105, 7, 7),
(106, 8, 7),
(107, 7, 11),
(108, 8, 11),
(109, 7, 17),
(110, 7, 18),
(111, 8, 18),
(112, 7, 20),
(113, 8, 20),
(114, 7, 32),
(115, 8, 32),
(116, 7, 37),
(117, 8, 37),
(118, 7, 38),
(119, 8, 38),
(120, 7, 41),
(121, 8, 42),
(122, 7, 53),
(123, 8, 53),
(124, 14, 11),
(125, 14, 17),
(126, 14, 32),
(127, 14, 33),
(128, 14, 34),
(129, 14, 35),
(130, 14, 37),
(131, 14, 41),
(132, 14, 45),
(133, 14, 49),
(134, 14, 58),
(135, 15, 17),
(136, 15, 33),
(137, 15, 34),
(138, 15, 35),
(139, 15, 37),
(140, 15, 41),
(141, 15, 45),
(142, 15, 47),
(143, 15, 49),
(144, 15, 52),
(145, 15, 58);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_threat_has_control`
--

CREATE TABLE `parsingbpmn_threat_has_control` (
  `id` int(11) NOT NULL,
  `control_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_threat_has_control`
--

INSERT INTO `parsingbpmn_threat_has_control` (`id`, `control_id`, `threat_id`) VALUES
(1, 10, 1),
(2, 13, 1),
(3, 16, 1),
(4, 17, 1),
(5, 19, 1),
(6, 6, 2),
(7, 19, 2),
(8, 10, 3),
(9, 14, 3),
(10, 19, 3),
(11, 10, 4),
(12, 13, 4),
(13, 14, 4),
(14, 19, 4),
(15, 10, 5),
(16, 13, 5),
(17, 17, 5),
(18, 19, 5),
(19, 14, 6),
(20, 17, 6),
(21, 19, 6),
(22, 6, 7),
(23, 17, 7),
(24, 19, 7),
(25, 10, 8),
(26, 19, 8),
(27, 10, 9),
(28, 19, 9),
(29, 2, 10),
(30, 3, 10),
(31, 5, 10),
(32, 7, 10),
(33, 9, 10),
(34, 11, 10),
(35, 13, 10),
(36, 17, 10),
(37, 18, 10),
(38, 19, 10),
(39, 20, 10),
(40, 1, 11),
(41, 2, 11),
(42, 4, 11),
(43, 5, 11),
(44, 11, 11),
(45, 16, 11),
(46, 17, 11),
(47, 19, 11),
(48, 3, 12),
(49, 6, 12),
(50, 7, 12),
(51, 8, 12),
(52, 17, 12),
(53, 19, 12),
(54, 20, 12),
(55, 10, 13),
(56, 13, 13),
(57, 19, 13),
(58, 3, 14),
(59, 5, 14),
(60, 9, 14),
(61, 11, 14),
(62, 14, 14),
(63, 19, 14),
(64, 1, 15),
(65, 2, 15),
(66, 3, 15),
(67, 6, 15),
(68, 8, 15),
(69, 9, 15),
(70, 12, 15),
(71, 19, 15),
(72, 3, 16),
(73, 4, 16),
(74, 5, 16),
(75, 6, 16),
(76, 9, 16),
(77, 11, 16),
(78, 12, 16),
(79, 14, 16),
(80, 15, 16),
(81, 16, 16),
(82, 18, 16),
(83, 19, 16),
(84, 20, 16),
(85, 7, 17),
(86, 10, 17),
(87, 19, 17),
(88, 1, 18),
(89, 2, 18),
(90, 3, 18),
(91, 5, 18),
(92, 7, 18),
(93, 8, 18),
(94, 9, 18),
(95, 10, 18),
(96, 11, 18),
(97, 13, 18),
(98, 16, 18),
(99, 18, 18),
(100, 19, 18),
(101, 3, 19),
(102, 7, 19),
(103, 8, 19),
(104, 10, 19),
(105, 13, 19),
(106, 18, 19),
(107, 19, 19),
(108, 1, 20),
(109, 2, 20),
(110, 3, 20),
(111, 6, 20),
(112, 7, 20),
(113, 8, 20),
(114, 10, 20),
(115, 13, 20),
(116, 16, 20),
(117, 18, 20),
(118, 19, 20),
(119, 20, 20),
(120, 10, 21),
(121, 19, 21),
(122, 10, 22),
(123, 19, 22),
(124, 10, 23),
(125, 19, 23),
(126, 10, 24),
(127, 19, 24),
(128, 10, 25),
(129, 19, 25),
(130, 10, 26),
(131, 19, 26),
(132, 10, 27),
(133, 19, 27),
(134, 10, 28),
(135, 19, 28),
(136, 10, 29),
(137, 19, 29),
(138, 10, 30),
(139, 19, 30),
(140, 10, 31),
(141, 19, 31),
(142, 1, 32),
(143, 2, 32),
(144, 5, 32),
(145, 6, 32),
(146, 17, 32),
(147, 19, 32),
(148, 1, 33),
(149, 6, 33),
(150, 10, 33),
(151, 14, 33),
(152, 15, 33),
(153, 19, 33),
(154, 1, 34),
(155, 6, 34),
(156, 19, 34),
(157, 6, 35),
(158, 19, 35),
(159, 1, 36),
(160, 2, 36),
(161, 3, 36),
(162, 6, 36),
(163, 8, 36),
(164, 10, 36),
(165, 13, 36),
(166, 18, 36),
(167, 19, 36),
(168, 20, 36),
(169, 6, 37),
(170, 10, 37),
(171, 19, 37),
(172, 17, 38),
(173, 19, 38),
(174, 17, 39),
(175, 19, 39),
(176, 6, 40),
(177, 19, 40),
(178, 1, 41),
(179, 6, 41),
(180, 10, 41),
(181, 19, 41),
(182, 1, 42),
(183, 6, 42),
(184, 10, 42),
(185, 19, 42),
(186, 1, 43),
(187, 3, 43),
(188, 5, 43),
(189, 6, 43),
(190, 8, 43),
(191, 9, 43),
(192, 11, 43),
(193, 13, 43),
(194, 15, 43),
(195, 19, 43),
(196, 20, 43),
(197, 19, 44),
(198, 3, 45),
(199, 5, 45),
(200, 7, 45),
(201, 8, 45),
(202, 13, 45),
(203, 17, 45),
(204, 18, 45),
(205, 19, 45),
(206, 20, 45),
(207, 19, 46),
(208, 1, 47),
(209, 2, 47),
(210, 3, 47),
(211, 5, 47),
(212, 7, 47),
(213, 8, 47),
(214, 18, 47),
(215, 19, 47),
(216, 20, 47),
(217, 3, 48),
(218, 6, 48),
(219, 9, 48),
(220, 11, 48),
(221, 12, 48),
(222, 19, 48),
(223, 2, 49),
(224, 5, 49),
(225, 13, 49),
(226, 16, 49),
(227, 17, 49),
(228, 19, 49),
(229, 3, 50),
(230, 5, 50),
(231, 7, 50),
(232, 8, 50),
(233, 13, 50),
(234, 14, 50),
(235, 17, 50),
(236, 18, 50),
(237, 19, 50),
(238, 20, 50),
(239, 3, 51),
(240, 5, 51),
(241, 7, 51),
(242, 8, 51),
(243, 13, 51),
(244, 17, 51),
(245, 18, 51),
(246, 19, 51),
(247, 6, 52),
(248, 9, 52),
(249, 11, 52),
(250, 12, 52),
(251, 18, 52),
(252, 19, 52),
(253, 20, 52),
(254, 2, 53),
(255, 3, 53),
(256, 5, 53),
(257, 6, 53),
(258, 7, 53),
(259, 8, 53),
(260, 9, 53),
(261, 10, 53),
(262, 11, 53),
(263, 13, 53),
(264, 17, 53),
(265, 18, 53),
(266, 19, 53),
(267, 20, 53),
(268, 7, 54),
(269, 13, 54),
(270, 17, 54),
(271, 19, 54),
(272, 10, 55),
(273, 13, 55),
(274, 19, 55),
(275, 2, 56),
(276, 6, 56),
(277, 9, 56),
(278, 13, 56),
(279, 19, 56),
(280, 1, 57),
(281, 2, 57),
(282, 3, 57),
(283, 8, 57),
(284, 10, 57),
(285, 12, 57),
(286, 13, 57),
(287, 18, 57),
(288, 19, 57),
(289, 20, 57),
(290, 3, 58),
(291, 4, 58),
(292, 5, 58),
(293, 6, 58),
(294, 7, 58),
(295, 8, 58),
(296, 9, 58),
(297, 13, 58),
(298, 14, 58),
(299, 18, 58),
(300, 19, 58),
(301, 20, 58),
(302, 3, 59),
(303, 5, 59),
(304, 8, 59),
(305, 9, 59),
(306, 12, 59),
(307, 18, 59),
(308, 19, 59),
(309, 20, 59),
(310, 3, 60),
(311, 5, 60),
(312, 8, 60),
(313, 9, 60),
(314, 12, 60),
(315, 18, 60),
(316, 19, 60),
(317, 20, 60),
(318, 4, 61),
(319, 6, 61),
(320, 9, 61),
(321, 10, 61),
(322, 13, 61),
(323, 14, 61),
(324, 15, 61),
(325, 16, 61),
(326, 19, 61),
(327, 2, 62),
(328, 4, 62),
(329, 6, 62),
(330, 9, 62),
(331, 10, 62),
(332, 13, 62),
(333, 14, 62),
(334, 15, 62),
(335, 16, 62),
(336, 18, 62),
(337, 19, 62),
(338, 1, 63),
(339, 2, 63),
(340, 3, 63),
(341, 4, 63),
(342, 5, 63),
(343, 6, 63),
(344, 8, 63),
(345, 9, 63),
(346, 13, 63),
(347, 14, 63),
(348, 17, 63),
(349, 18, 63),
(350, 19, 63),
(351, 20, 63),
(352, 17, 64),
(353, 19, 64),
(354, 5, 65),
(355, 9, 65),
(356, 11, 65),
(357, 19, 65),
(358, 1, 66),
(359, 2, 66),
(360, 3, 66),
(361, 6, 66),
(362, 8, 66),
(363, 9, 66),
(364, 11, 66),
(365, 13, 66),
(366, 18, 66),
(367, 19, 66),
(368, 20, 66),
(369, 17, 67),
(370, 19, 67),
(371, 5, 68),
(372, 6, 68),
(373, 9, 68),
(374, 11, 68),
(375, 12, 68),
(376, 14, 68),
(377, 17, 68),
(378, 18, 68),
(379, 19, 68),
(380, 20, 68),
(381, 4, 69),
(382, 5, 69),
(383, 6, 69),
(384, 11, 69),
(385, 14, 69),
(386, 18, 69),
(387, 19, 69),
(388, 3, 70),
(389, 5, 70),
(390, 6, 70),
(391, 9, 70),
(392, 11, 70),
(393, 13, 70),
(394, 14, 70),
(395, 16, 70),
(396, 17, 70),
(397, 18, 70),
(398, 19, 70),
(399, 20, 70),
(400, 3, 71),
(401, 5, 71),
(402, 6, 71),
(403, 9, 71),
(404, 11, 71),
(405, 13, 71),
(406, 14, 71),
(407, 16, 71),
(408, 17, 71),
(409, 18, 71),
(410, 19, 71),
(411, 20, 71),
(412, 13, 72),
(413, 14, 72),
(414, 17, 72),
(415, 19, 72),
(416, 13, 73),
(417, 14, 73),
(418, 17, 73),
(419, 19, 73),
(420, 19, 74);

-- --------------------------------------------------------

--
-- Table structure for table `parsingbpmn_threat_stride`
--

CREATE TABLE `parsingbpmn_threat_stride` (
  `id` int(11) NOT NULL,
  `stride_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parsingbpmn_threat_stride`
--

INSERT INTO `parsingbpmn_threat_stride` (`id`, `stride_id`, `threat_id`) VALUES
(1, 1, 1),
(2, 5, 2),
(13, 5, 3),
(14, 2, 3),
(15, 4, 3),
(16, 5, 4),
(17, 1, 5),
(18, 2, 5),
(19, 4, 5),
(20, 1, 6),
(21, 6, 6),
(22, 2, 6),
(23, 6, 7),
(24, 3, 7),
(25, 5, 8),
(26, 5, 9),
(27, 4, 10),
(28, 1, 10),
(29, 2, 11),
(30, 5, 11),
(31, 4, 12),
(32, 2, 15),
(33, 5, 15),
(34, 2, 16),
(35, 6, 16),
(36, 5, 16),
(37, 5, 17),
(38, 2, 18),
(39, 5, 19),
(40, 5, 20),
(41, 5, 21),
(42, 5, 22),
(43, 5, 23),
(44, 5, 24),
(45, 5, 26),
(46, 5, 28),
(47, 5, 29),
(48, 5, 30),
(49, 5, 31),
(50, 5, 32),
(51, 5, 33),
(52, 5, 34),
(53, 5, 35),
(54, 2, 36),
(55, 4, 36),
(56, 5, 37),
(57, 3, 38),
(58, 5, 39),
(59, 5, 40),
(60, 5, 41),
(61, 5, 42),
(62, 1, 43),
(63, 4, 43),
(64, 1, 44),
(65, 1, 45),
(66, 1, 46),
(67, 1, 47),
(68, 1, 48),
(69, 1, 49),
(70, 2, 49),
(71, 1, 50),
(72, 1, 51),
(73, 5, 52),
(74, 5, 53),
(75, 1, 53),
(76, 2, 53),
(77, 3, 53),
(78, 4, 53),
(79, 6, 53),
(80, 1, 54),
(81, 4, 55),
(82, 6, 56),
(83, 2, 57),
(84, 2, 58),
(85, 2, 59),
(86, 5, 59),
(87, 1, 59),
(88, 4, 60),
(89, 2, 60),
(90, 6, 61),
(91, 6, 62),
(92, 4, 63),
(93, 2, 64),
(94, 6, 65),
(95, 1, 66),
(96, 2, 66),
(97, 3, 66),
(98, 4, 66),
(99, 5, 66),
(100, 6, 66),
(101, 5, 67),
(102, 6, 68),
(103, 6, 69),
(104, 3, 70),
(105, 4, 73),
(106, 6, 72);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_actor`
--
ALTER TABLE `parsingbpmn_actor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_actor_process_id_d24aa330_fk_parsingbpmn_process_id` (`process_id`);

--
-- Indexes for table `parsingbpmn_actor_manage_data`
--
ALTER TABLE `parsingbpmn_actor_manage_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_actor_ma_actor_id_4d0fc597_fk_parsingbp` (`actor_id`),
  ADD KEY `parsingbpmn_actor_ma_data_id_a33149ef_fk_parsingbp` (`data_id`),
  ADD KEY `parsingbpmn_actor_ma_process_id_082c6378_fk_parsingbp` (`process_id`);

--
-- Indexes for table `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_asset_asset_type_id_2a32922f_fk_parsingbp` (`asset_type_id`),
  ADD KEY `parsingbpmn_asset_process_id_f1708c54_fk_parsingbpmn_process_id` (`process_id`);

--
-- Indexes for table `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_asset_ha_asset_id_aa73cc70_fk_parsingbp` (`asset_id`),
  ADD KEY `parsingbpmn_asset_ha_attribute_id_1481f8c4_fk_parsingbp` (`attribute_id`);

--
-- Indexes for table `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_asset_ha_asset_id_0f778ccd_fk_parsingbp` (`asset_id`),
  ADD KEY `parsingbpmn_asset_ha_asset_type_id_cf303288_fk_parsingbp` (`asset_type_id`),
  ADD KEY `parsingbpmn_asset_ha_data_object_attribut_d65716c0_fk_parsingbp` (`data_object_attribute_id`);

--
-- Indexes for table `parsingbpmn_asset_type`
--
ALTER TABLE `parsingbpmn_asset_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_attribut_attribute_value_id_bfcbe512_fk_parsingbp` (`attribute_value_id`),
  ADD KEY `parsingbpmn_attribut_asset_type_id_fe69074c_fk_parsingbp` (`asset_type_id`);

--
-- Indexes for table `parsingbpmn_attribute_value`
--
ALTER TABLE `parsingbpmn_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_control`
--
ALTER TABLE `parsingbpmn_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_dataobjectattribute`
--
ALTER TABLE `parsingbpmn_dataobjectattribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_overallrisk`
--
ALTER TABLE `parsingbpmn_overallrisk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_overallr_asset_id_a90dd13a_fk_parsingbp` (`asset_id`),
  ADD KEY `parsingbpmn_overallr_process_id_d6476854_fk_parsingbp` (`process_id`),
  ADD KEY `parsingbpmn_overallr_system_id_77a4c856_fk_parsingbp` (`system_id`);

--
-- Indexes for table `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_process_system_id_de20096e_fk_parsingbpmn_system_id` (`system_id`);

--
-- Indexes for table `parsingbpmn_reply`
--
ALTER TABLE `parsingbpmn_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_risk`
--
ALTER TABLE `parsingbpmn_risk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_risk_asset_id_e1d75156_fk_parsingbpmn_asset_id` (`asset_id`),
  ADD KEY `parsingbpmn_risk_process_id_e7df9970_fk_parsingbpmn_process_id` (`process_id`),
  ADD KEY `parsingbpmn_risk_system_id_14dbe4d1_fk_parsingbpmn_system_id` (`system_id`),
  ADD KEY `parsingbpmn_risk_threat_stride_id_b393f1a9_fk_parsingbp` (`threat_stride_id`);

--
-- Indexes for table `parsingbpmn_stride`
--
ALTER TABLE `parsingbpmn_stride`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_strideimpactrecord`
--
ALTER TABLE `parsingbpmn_strideimpactrecord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_strideim_process_id_a5e6c918_fk_parsingbp` (`process_id`),
  ADD KEY `parsingbpmn_strideim_stride_id_ffcd0aa5_fk_parsingbp` (`stride_id`);

--
-- Indexes for table `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_system_threatagent`
--
ALTER TABLE `parsingbpmn_system_threatagent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_system_t_category_id_c8fc893a_fk_parsingbp` (`category_id`),
  ADD KEY `parsingbpmn_system_t_system_id_6fa9aab0_fk_parsingbp` (`system_id`);

--
-- Indexes for table `parsingbpmn_tacategoryattribute`
--
ALTER TABLE `parsingbpmn_tacategoryattribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_tacatego_attribute_id_3dcbdfb1_fk_parsingbp` (`attribute_id`),
  ADD KEY `parsingbpmn_tacatego_category_id_54a051c7_fk_parsingbp` (`category_id`);

--
-- Indexes for table `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_tareplie_question_id_1a607f61_fk_parsingbp` (`question_id`),
  ADD KEY `parsingbpmn_tareplie_reply_id_0e154aae_fk_parsingbp` (`reply_id`);

--
-- Indexes for table `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_tareplyc_category_id_398b7fa7_fk_parsingbp` (`category_id`),
  ADD KEY `parsingbpmn_tareplyc_reply_id_5a0188c3_fk_parsingbp` (`reply_id`);

--
-- Indexes for table `parsingbpmn_task_manages_data`
--
ALTER TABLE `parsingbpmn_task_manages_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_task_man_data_id_6308dff3_fk_parsingbp` (`data_id`),
  ADD KEY `parsingbpmn_task_man_task_id_c272d0e9_fk_parsingbp` (`task_id`);

--
-- Indexes for table `parsingbpmn_threat`
--
ALTER TABLE `parsingbpmn_threat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_threatagentattribute`
--
ALTER TABLE `parsingbpmn_threatagentattribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_threatagentcategory`
--
ALTER TABLE `parsingbpmn_threatagentcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_threatagentquestion`
--
ALTER TABLE `parsingbpmn_threatagentquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parsingbpmn_threatagentriskscores`
--
ALTER TABLE `parsingbpmn_threatagentriskscores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_threatag_system_id_6ca17507_fk_parsingbp` (`system_id`);

--
-- Indexes for table `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_threat_h_attribute_id_135fbf09_fk_parsingbp` (`attribute_id`),
  ADD KEY `parsingbpmn_threat_h_threat_id_e9510391_fk_parsingbp` (`threat_id`);

--
-- Indexes for table `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_threat_h_control_id_7388a9d5_fk_parsingbp` (`control_id`),
  ADD KEY `parsingbpmn_threat_h_threat_id_e0101e51_fk_parsingbp` (`threat_id`);

--
-- Indexes for table `parsingbpmn_threat_stride`
--
ALTER TABLE `parsingbpmn_threat_stride`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_threat_s_stride_id_7c72a7c7_fk_parsingbp` (`stride_id`),
  ADD KEY `parsingbpmn_threat_s_threat_id_d0c8cc23_fk_parsingbp` (`threat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parsingbpmn_actor`
--
ALTER TABLE `parsingbpmn_actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parsingbpmn_actor_manage_data`
--
ALTER TABLE `parsingbpmn_actor_manage_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=796;

--
-- AUTO_INCREMENT for table `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parsingbpmn_asset_type`
--
ALTER TABLE `parsingbpmn_asset_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `parsingbpmn_attribute_value`
--
ALTER TABLE `parsingbpmn_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `parsingbpmn_control`
--
ALTER TABLE `parsingbpmn_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `parsingbpmn_dataobjectattribute`
--
ALTER TABLE `parsingbpmn_dataobjectattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parsingbpmn_overallrisk`
--
ALTER TABLE `parsingbpmn_overallrisk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `parsingbpmn_reply`
--
ALTER TABLE `parsingbpmn_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `parsingbpmn_risk`
--
ALTER TABLE `parsingbpmn_risk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1211;

--
-- AUTO_INCREMENT for table `parsingbpmn_stride`
--
ALTER TABLE `parsingbpmn_stride`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parsingbpmn_strideimpactrecord`
--
ALTER TABLE `parsingbpmn_strideimpactrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `parsingbpmn_system_threatagent`
--
ALTER TABLE `parsingbpmn_system_threatagent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `parsingbpmn_tacategoryattribute`
--
ALTER TABLE `parsingbpmn_tacategoryattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `parsingbpmn_task_manages_data`
--
ALTER TABLE `parsingbpmn_task_manages_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `parsingbpmn_threat`
--
ALTER TABLE `parsingbpmn_threat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `parsingbpmn_threatagentattribute`
--
ALTER TABLE `parsingbpmn_threatagentattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `parsingbpmn_threatagentcategory`
--
ALTER TABLE `parsingbpmn_threatagentcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `parsingbpmn_threatagentquestion`
--
ALTER TABLE `parsingbpmn_threatagentquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parsingbpmn_threatagentriskscores`
--
ALTER TABLE `parsingbpmn_threatagentriskscores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `parsingbpmn_threat_stride`
--
ALTER TABLE `parsingbpmn_threat_stride`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parsingbpmn_actor`
--
ALTER TABLE `parsingbpmn_actor`
  ADD CONSTRAINT `parsingbpmn_actor_process_id_d24aa330_fk_parsingbpmn_process_id` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`);

--
-- Constraints for table `parsingbpmn_actor_manage_data`
--
ALTER TABLE `parsingbpmn_actor_manage_data`
  ADD CONSTRAINT `parsingbpmn_actor_ma_actor_id_4d0fc597_fk_parsingbp` FOREIGN KEY (`actor_id`) REFERENCES `parsingbpmn_actor` (`id`),
  ADD CONSTRAINT `parsingbpmn_actor_ma_data_id_a33149ef_fk_parsingbp` FOREIGN KEY (`data_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_actor_ma_process_id_082c6378_fk_parsingbp` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`);

--
-- Constraints for table `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  ADD CONSTRAINT `parsingbpmn_asset_asset_type_id_2a32922f_fk_parsingbp` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_process_id_f1708c54_fk_parsingbpmn_process_id` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`);

--
-- Constraints for table `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  ADD CONSTRAINT `parsingbpmn_asset_ha_asset_id_aa73cc70_fk_parsingbp` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_ha_attribute_id_1481f8c4_fk_parsingbp` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_attribute` (`id`);

--
-- Constraints for table `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  ADD CONSTRAINT `parsingbpmn_asset_ha_asset_id_0f778ccd_fk_parsingbp` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_ha_asset_type_id_cf303288_fk_parsingbp` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_ha_data_object_attribut_d65716c0_fk_parsingbp` FOREIGN KEY (`data_object_attribute_id`) REFERENCES `parsingbpmn_dataobjectattribute` (`id`);

--
-- Constraints for table `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  ADD CONSTRAINT `parsingbpmn_attribut_asset_type_id_fe69074c_fk_parsingbp` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingbpmn_attribut_attribute_value_id_bfcbe512_fk_parsingbp` FOREIGN KEY (`attribute_value_id`) REFERENCES `parsingbpmn_attribute_value` (`id`);

--
-- Constraints for table `parsingbpmn_overallrisk`
--
ALTER TABLE `parsingbpmn_overallrisk`
  ADD CONSTRAINT `parsingbpmn_overallr_asset_id_a90dd13a_fk_parsingbp` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_overallr_process_id_d6476854_fk_parsingbp` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`),
  ADD CONSTRAINT `parsingbpmn_overallr_system_id_77a4c856_fk_parsingbp` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Constraints for table `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  ADD CONSTRAINT `parsingbpmn_process_system_id_de20096e_fk_parsingbpmn_system_id` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Constraints for table `parsingbpmn_risk`
--
ALTER TABLE `parsingbpmn_risk`
  ADD CONSTRAINT `parsingbpmn_risk_asset_id_e1d75156_fk_parsingbpmn_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_risk_process_id_e7df9970_fk_parsingbpmn_process_id` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`),
  ADD CONSTRAINT `parsingbpmn_risk_system_id_14dbe4d1_fk_parsingbpmn_system_id` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`),
  ADD CONSTRAINT `parsingbpmn_risk_threat_stride_id_b393f1a9_fk_parsingbp` FOREIGN KEY (`threat_stride_id`) REFERENCES `parsingbpmn_threat_stride` (`id`);

--
-- Constraints for table `parsingbpmn_strideimpactrecord`
--
ALTER TABLE `parsingbpmn_strideimpactrecord`
  ADD CONSTRAINT `parsingbpmn_strideim_process_id_a5e6c918_fk_parsingbp` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`),
  ADD CONSTRAINT `parsingbpmn_strideim_stride_id_ffcd0aa5_fk_parsingbp` FOREIGN KEY (`stride_id`) REFERENCES `parsingbpmn_stride` (`id`);

--
-- Constraints for table `parsingbpmn_system_threatagent`
--
ALTER TABLE `parsingbpmn_system_threatagent`
  ADD CONSTRAINT `parsingbpmn_system_t_category_id_c8fc893a_fk_parsingbp` FOREIGN KEY (`category_id`) REFERENCES `parsingbpmn_threatagentcategory` (`id`),
  ADD CONSTRAINT `parsingbpmn_system_t_system_id_6fa9aab0_fk_parsingbp` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Constraints for table `parsingbpmn_tacategoryattribute`
--
ALTER TABLE `parsingbpmn_tacategoryattribute`
  ADD CONSTRAINT `parsingbpmn_tacatego_attribute_id_3dcbdfb1_fk_parsingbp` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_threatagentattribute` (`id`),
  ADD CONSTRAINT `parsingbpmn_tacatego_category_id_54a051c7_fk_parsingbp` FOREIGN KEY (`category_id`) REFERENCES `parsingbpmn_threatagentcategory` (`id`);

--
-- Constraints for table `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  ADD CONSTRAINT `parsingbpmn_tareplie_question_id_1a607f61_fk_parsingbp` FOREIGN KEY (`question_id`) REFERENCES `parsingbpmn_threatagentquestion` (`id`),
  ADD CONSTRAINT `parsingbpmn_tareplie_reply_id_0e154aae_fk_parsingbp` FOREIGN KEY (`reply_id`) REFERENCES `parsingbpmn_reply` (`id`);

--
-- Constraints for table `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  ADD CONSTRAINT `parsingbpmn_tareplyc_category_id_398b7fa7_fk_parsingbp` FOREIGN KEY (`category_id`) REFERENCES `parsingbpmn_threatagentcategory` (`id`),
  ADD CONSTRAINT `parsingbpmn_tareplyc_reply_id_5a0188c3_fk_parsingbp` FOREIGN KEY (`reply_id`) REFERENCES `parsingbpmn_reply` (`id`);

--
-- Constraints for table `parsingbpmn_task_manages_data`
--
ALTER TABLE `parsingbpmn_task_manages_data`
  ADD CONSTRAINT `parsingbpmn_task_man_data_id_6308dff3_fk_parsingbp` FOREIGN KEY (`data_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_task_man_task_id_c272d0e9_fk_parsingbp` FOREIGN KEY (`task_id`) REFERENCES `parsingbpmn_asset` (`id`);

--
-- Constraints for table `parsingbpmn_threatagentriskscores`
--
ALTER TABLE `parsingbpmn_threatagentriskscores`
  ADD CONSTRAINT `parsingbpmn_threatag_system_id_6ca17507_fk_parsingbp` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Constraints for table `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  ADD CONSTRAINT `parsingbpmn_threat_h_attribute_id_135fbf09_fk_parsingbp` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_attribute` (`id`),
  ADD CONSTRAINT `parsingbpmn_threat_h_threat_id_e9510391_fk_parsingbp` FOREIGN KEY (`threat_id`) REFERENCES `parsingbpmn_threat` (`id`);

--
-- Constraints for table `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  ADD CONSTRAINT `parsingbpmn_threat_h_control_id_7388a9d5_fk_parsingbp` FOREIGN KEY (`control_id`) REFERENCES `parsingbpmn_control` (`id`),
  ADD CONSTRAINT `parsingbpmn_threat_h_threat_id_e0101e51_fk_parsingbp` FOREIGN KEY (`threat_id`) REFERENCES `parsingbpmn_threat` (`id`);

--
-- Constraints for table `parsingbpmn_threat_stride`
--
ALTER TABLE `parsingbpmn_threat_stride`
  ADD CONSTRAINT `parsingbpmn_threat_s_stride_id_7c72a7c7_fk_parsingbp` FOREIGN KEY (`stride_id`) REFERENCES `parsingbpmn_stride` (`id`),
  ADD CONSTRAINT `parsingbpmn_threat_s_threat_id_d0c8cc23_fk_parsingbp` FOREIGN KEY (`threat_id`) REFERENCES `parsingbpmn_threat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
