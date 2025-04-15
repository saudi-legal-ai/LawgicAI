-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2025 at 01:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) NOT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/aii\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-14 23:37:35', '2025-03-14 23:37:35'),
(2, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-15 02:50:44', '2025-03-15 02:50:44'),
(3, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/134.0.0.0 Safari\\/537.36 Edg\\/134.0.0.0\",\"browser\":\"Edge\",\"browser_version\":\"134.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-15 04:32:44', '2025-03-15 04:32:44'),
(4, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-15 20:41:23', '2025-03-15 20:41:23'),
(5, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/aii\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-15 20:45:09', '2025-03-15 20:45:09'),
(6, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-15 20:58:41', '2025-03-15 20:58:41'),
(7, 'USER LOGOUT', 'Logout successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/logout\",\"method\":\"GET\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-15 21:37:16', '2025-03-15 21:37:16'),
(8, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-15 21:37:31', '2025-03-15 21:37:31'),
(9, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-15 22:14:30', '2025-03-15 22:14:30'),
(10, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-16 22:38:59', '2025-03-16 22:38:59'),
(11, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-18 22:15:17', '2025-03-18 22:15:17'),
(12, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-21 22:03:06', '2025-03-21 22:03:06'),
(13, 'USER LOGOUT', 'Logout successful', NULL, NULL, NULL, 'App\\Models\\User', 2, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/logout\",\"method\":\"GET\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-21 23:40:33', '2025-03-21 23:40:33'),
(14, 'USER LOGIN', 'Login successful', NULL, NULL, NULL, 'App\\Models\\User', 1, '{\"status\":\"success\",\"url\":\"http:\\/\\/localhost\\/ai\\/authenticate\",\"method\":\"POST\",\"ip_address\":\"::1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\",\"browser\":\"Chrome\",\"browser_version\":\"133.0.0.0\",\"platform\":\"Windows\"}', NULL, '2025-03-21 23:40:45', '2025-03-21 23:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `type_of_place` varchar(20) NOT NULL DEFAULT 'home' COMMENT 'home/office',
  `address_1` varchar(191) NOT NULL,
  `address_2` varchar(191) DEFAULT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `country` varchar(191) NOT NULL,
  `is_default` mediumint(9) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `first_name`, `last_name`, `phone`, `email`, `company_name`, `type_of_place`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'Agatha', 'Williams', '01738896835', 'agathawilliams@techvill.net', NULL, 'home', 'Nikunja-2, Khilkhet', NULL, 'dhaka', '81', '2233', 'bd', 1, '2025-03-14 23:36:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `permission` varchar(1000) DEFAULT NULL,
  `is_default` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `name`, `slug`, `url`, `permission`, `is_default`, `created_at`, `updated_at`) VALUES
(7, 'All Users', 'user-list', 'user/list', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\UserController@index\", \"route_name\":[\"users.index\", \"users.create\", \"users.edit\", \"users.pdf\", \"users.csv\", \"users.verify\", \"users.profile\"], \"menu_level\":\"1\"}', 0, '2025-03-14 23:36:49', NULL),
(19, 'Addons', 'addons', 'addons', '{\"permission\":\"Modules\\\\Addons\\\\Http\\\\Controllers\\\\AddonsController@index\", \"route_name\":[\"addon.index\", \"addon.switch-status\", \"addon.remove\", \"addon.upload\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(20, 'Menu Builder', 'menu-builder', 'menu-builder', '{\"permission\":\"Modules\\\\MenuBuilder\\\\Http\\\\Controllers\\\\MenuBuilderController@index\",\"route_name\":[\"menu.index\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(22, 'General Settings', 'general-settings', 'emailConfiguration', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\EmailConfigurationController@index\",\"route_name\":[\"emailConfigurations.index\", \"maintenance.enable\", \"language.translation\", \"language.index\", \"currency.convert\", \"sso.index\", \"orderStatues.index\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(29, 'Cache Clear', 'cache-clear', 'clear-cache', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\DashboardController@index\", \"route_name\":[\"dashboard\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(30, 'Dashboard', 'user-dashboard', 'dashboard', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\Site\\\\DashboardController@index\", \"route_name\":[\"site.dashboard\"], \"menu_level\":\"2\"}', 1, '2025-03-14 23:36:49', NULL),
(34, 'My Profile', 'user-profile', 'profile', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\UserController@index\", \"route_name\":[\"site.userProfile\", \"site.userProfileEditPassword\"], \"menu_level\":\"2\"}', 1, '2025-03-14 23:36:49', NULL),
(36, 'Settings', 'settings', 'setting', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\Site\\\\AddressController@index\", \"route_name\":[\"site.userSetting\"], \"menu_level\":\"2\"}', 1, '2025-03-14 23:36:49', NULL),
(37, 'Logout', 'logout', 'logout', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\Site\\\\LoginController@logout\", \"route_name\":[\"site.logout\"], \"menu_level\":\"2\"}', 1, '2025-03-14 23:36:49', NULL),
(69, 'Blog Category', 'blog-category', 'blog/category/list', '{\"permission\":\"Modules\\\\Blog\\\\Http\\\\Controllers\\\\BlogCategoryController@index\", \"route_name\":[\"blog.category.index\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(70, 'Blog', 'blog', 'blogs', '{\"permission\":\"Modules\\\\Blog\\\\Http\\\\Controllers\\\\BlogController@index\", \"route_name\":[\"blog.index\", \"blog.create\", \"blog.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(71, 'Pages', 'page', 'page/list', '{\"permission\":\"Modules\\\\CMS\\\\Http\\\\Controllers\\\\CMSController@index\", \"route_name\":[\"page.index\", \"page.create\", \"page.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(72, 'Appearance', 'appearance', 'theme/list', '{\"permission\":\"Module\\\\CMS\\\\Http\\\\Controllers\\\\ThemeOptionController@list\", \"route_name\":[\"theme.index\", \"theme.store\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(80, 'Media Manager', 'media-manager', 'uploaded-files', '{\"permission\":\"Modules\\\\MediaManager\\\\Http\\\\Controllers\\\\MediaManagerController@uploadedFiles\", \"route_name\":[\"mediaManager.create\", \"mediaManager.upload\", \"mediaManager.uploadedFiles\", \"mediaManager.sortFiles\", \"mediaManager.paginateFiles\", \"mediaManager.download\", \"mediaManager.maxId\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(81, 'Geo Locale', 'geo-locale', 'geolocale', '{\"permission\":\"Modules\\\\GeoLocale\\\\Http\\\\Controllers\\\\GeoLocaleController@index\", \"route_name\":[\"geolocale.index\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(87, 'Reports', 'reports', 'reports', '{\"permission\":\"Modules\\\\Report\\\\Http\\\\Controllers\\\\ReportController@index\", \"route_name\":[\"reports\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(92, 'Dashboard', 'dashboard', 'dashboard', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\DashboardController@index\", \"route_name\":[\"dashboard\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(93, 'Add User', 'add-user', 'user/create', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\UserController@index\", \"route_name\":[\"users.index\", \"users.create\", \"users.edit\", \"users.pdf\", \"users.csv\", \"users.verify\", \"users.profile\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(95, 'Login Activities', 'user-activity', 'user/activity', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\UserController@index\",\"route_name\":[\"users.activity\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(100, 'Add Post', 'blog-create', 'blog/create', '{\"permission\":\"Modules\\\\Blog\\\\Http\\\\Controllers\\\\BlogController@create\", \"route_name\":[\"blog.create\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(101, 'All Posts', 'blogs', 'blogs', '{\"permission\":\"Modules\\\\Blog\\\\Http\\\\Controllers\\\\BlogController@index\", \"route_name\":[\"blog.index\", \"blog.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(110, 'Accounts', 'account-setting', 'account-setting', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\AccountSettingController@index\",\"route_name\":[\"account.setting.option\", \"sso.index\", \"emailVerifySetting\", \"preferences.password\", \"permissionRoles.index\", \"roles.index\", \"roles.create\", \"roles.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(111, 'Emails', 'email-setting', 'email-setting', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\EmailConfigurationController@index\",\"route_name\":[\"emailConfigurations.index\", \"emailTemplates.index\", \"emailTemplates.create\", \"emailTemplates.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(120, 'Faq', 'faq', 'faq', '{\"permission\":\"Modules\\\\FAQ\\\\Http\\\\Controllers\\\\FAQController@index\", \"route_name\":[\"admin.faq\", \"admin.faq.create\", \"admin.faq.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(121, 'Subscribers', 'subscriber', 'subscribers', '{\"permission\":\"Modules\\\\Newsletter\\\\Http\\\\Controllers\\\\SubscriberController@index\", \"route_name\":[\"subscriber.index\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(141, 'All Templates', 'openai-use-cases', 'use-cases', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\UseCasesController@index\",\"route_name\":[\"admin.use_case.list\"],\"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(142, 'All Template Categories', 'openai-use-case-categories', 'use-case/categories', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\UseCaseCategoriesController@index\",\"route_name\":[\"admin.use_case.category.list\"],\"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(150, 'All Content', 'content', 'content/list', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\OpenAIController@index\",\"route_name\":[\"admin.features.contents\"],\"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(151, 'All Image', 'image', 'image/list', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\ImageController@index\",\"route_name\":[\"admin.features.imageList\"],\"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(166, 'All Code', 'code', 'code/list', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\CodeController@index\",\"route_name\":[\"admin.features.code.list\", \"admin.features.code.view\"],\"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(170, 'AI Preferences', 'openai-preferences', 'features/preferences', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\OpenAIController@contentPreferences\", \"route_name\":[\"admin.features.preferences\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(171, 'Voiceover', 'voiceover', 'text-to-speech/list', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\TextToSpeechController@index\",\"route_name\":[\"admin.features.textToSpeech.lists\", \"admin.features.textToSpeech.view\"],\"menu_level\":\"1\"}', 1, '2025-03-14 23:36:49', NULL),
(172, 'Plans', 'plans', 'packages', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\PackageController@index\", \"route_name\":[\"package.index\", \"package.create\", \"package.show\", \"package.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:52', NULL),
(173, 'Credits', 'credits', 'credits', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\CreditController@index\", \"route_name\":[\"credit.index\", \"credit.create\", \"credit.show\", \"credit.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:52', NULL),
(174, 'Members', 'members', 'package-subscriptions', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\SubscriptionController@index\", \"route_name\":[\"package.subscription.index\", \"package.subscription.create\", \"package.subscription.show\", \"package.subscription.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:52', NULL),
(175, 'Payments', 'payments', 'payments', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\BlogController@index\", \"route_name\":[\"package.subscription.payment\", \"package.subscription.invoice\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:52', NULL),
(176, 'Settings', 'subscription-setting', 'subscriptions/settings', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\SubscriptionController@setting\", \"route_name\":[\"package.subscription.setting\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:52', NULL),
(181, 'Home pages', 'home-pages', 'page/home/list', '{\"permission\":\"Modules\\\\CMS\\\\Http\\\\Controllers\\\\CMSController@index\", \"route_name\":[\"page.home\", \"builder.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:52', NULL),
(182, 'Coupons', 'coupons', 'coupons', '{\"permission\":\"Modules\\\\Coupon\\\\Http\\\\Controllers\\\\CouponController@index\", \"route_name\":[\"coupon.index\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:52', NULL),
(185, 'Tickets', 'Ticket', 'ticket/list', '{\"permission\":\"Modules\\\\Ticket\\\\Http\\\\Controllers\\\\TicketController@index\", \"route_name\":[\"admin.tickets\", \"admin.threadReply\", \"admin.threadEdit\", \"admin.threadPdf\", \"admin.threadCsv\", \"admin.threadAdd\", \"admin.changePriority\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:53', NULL),
(186, 'Add Ticket', 'add-ticket', 'ticket/add', '{\"permission\":\"Modules\\\\Ticket\\\\Http\\\\Controllers\\\\TicketController@index\", \"route_name\":[\"admin.threadAdd\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:53', NULL),
(187, 'All Ticket', 'all-ticket', 'ticket/list', '{\"permission\":\"Modules\\\\Ticket\\\\Http\\\\Controllers\\\\TicketController@index\", \"route_name\":[\"admin.tickets\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:53', NULL),
(188, 'System Update', 'system-update', 'system-update', '{\"permission\":\"Modules\\\\Upgrater\\\\Http\\\\Controllers\\\\SystemUpdateController@upgrade\", \"route_name\":[\"systemUpdate.upgrade\"], \"menu_level\":\"2\"}', 1, '2025-03-14 23:36:53', NULL),
(190, 'Reviews', 'reviews', 'reviews', '{\"permission\":\"Modules\\\\Reviews\\\\Http\\\\Controllers\\\\ReviewsController@index\", \"route_name\":[\"admin.review\", \"admin.review.create\", \"admin.review.edit\"], \"menu_level\":\"1\"}', 1, '2025-03-14 23:36:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `filtered_content` longtext DEFAULT NULL,
  `raw_response` longtext DEFAULT NULL,
  `unique_identifier` varchar(191) NOT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `expense_type` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL COMMENT 'code, image, long_article, audio, speech, content etc.',
  `status` varchar(191) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `archives_meta`
--

CREATE TABLE `archives_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_type` varchar(80) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'null',
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audios`
--

CREATE TABLE `audios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `voice` varchar(191) NOT NULL,
  `characters` int(11) NOT NULL,
  `prompt` text NOT NULL,
  `slug` varchar(191) NOT NULL,
  `language` varchar(191) NOT NULL,
  `volume` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `pitch` varchar(11) NOT NULL,
  `speed` varchar(11) NOT NULL,
  `pause` varchar(11) NOT NULL,
  `audio_effect` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `summary` varchar(191) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Active',
  `total_views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'Active', '2025-03-14 23:36:52', NULL);

--
-- Triggers `blog_categories`
--
DELIMITER $$
CREATE TRIGGER `blog_category_AFDEL` AFTER DELETE ON `blog_categories` FOR EACH ROW UPDATE blogs SET category_id = "1" WHERE category_id = OLD.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `canned_links`
--

CREATE TABLE `canned_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(190) NOT NULL,
  `link` varchar(191) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_type` varchar(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canned_messages`
--

CREATE TABLE `canned_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(190) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_type` varchar(12) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_message` text DEFAULT NULL,
  `bot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bot_message` text DEFAULT NULL,
  `tokens` int(11) NOT NULL,
  `words` int(11) NOT NULL,
  `characters` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_bots`
--

CREATE TABLE `chat_bots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(15) NOT NULL,
  `message` text DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
  `promt` text DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_bots`
--

INSERT INTO `chat_bots` (`id`, `chat_category_id`, `user_id`, `name`, `code`, `message`, `role`, `promt`, `status`, `type`, `created_at`, `updated_at`, `is_default`, `deleted_at`) VALUES
(1, 1, 1, 'LawgicAI', 'HJREY', 'مرحباً، اسمي لوجيك. كيف يمكنني مساعدتك اليوم؟', 'Ai Assistant', 'أنت مستشار قانوني متخصص في القوانين السعودية. يجب أن تكون إجاباتك دقيقة، مختصرة، وواضحة، وتعتمد على القوانين الرسمية فقط. لا تجب على الأسئلة خارج نطاق القانون السعودي.', 'Active', NULL, '2025-03-11 00:00:00', '2025-03-21 22:06:33', 1, NULL),
(2, 5, 1, 'Dora', 'dora-101', 'Hello, I\'m Dora, an Image Expert. How may I assist you today?', 'Image Expert', 'Imagine being an Image Expertise professional who excels at reading image details. Your role involves analyzing and extracting key information from images. Consider the composition, resolution, dimensions, and any unique features of the image. Your expertise is crucial for maximizing the use of visual content.', 'Active', 'vision', '2025-03-14 23:36:51', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_bots_meta`
--

CREATE TABLE `chat_bots_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_type` varchar(80) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'null',
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_categories`
--

CREATE TABLE `chat_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_categories`
--

INSERT INTO `chat_categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Free Chat Bot', 'free-chat-bot', 'Free Chat Bot\'s Description', NULL, NULL),
(2, 'Standard Chat Bot', 'standard-chat-bot', 'Standard Chat Bot\'s Description', NULL, NULL),
(3, 'Professional Chat Bot', 'professional-chat-bot', 'Professional Chat Bot\'s Description', NULL, NULL),
(4, 'Premium Chat Bot', 'premium-chat-bot', 'Premium Chat Bot\'s Description', NULL, NULL),
(5, 'Others', 'others', 'Not having been sorted into a category.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_conversations`
--

CREATE TABLE `chat_conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `bot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_message` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `model` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `promt` text NOT NULL,
  `code` text NOT NULL,
  `tokens` int(11) NOT NULL,
  `words` int(11) NOT NULL,
  `characters` int(11) NOT NULL,
  `language` varchar(191) NOT NULL,
  `code_label` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `layout_id` bigint(20) UNSIGNED NOT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `page_id`, `layout_id`, `level`, `created_at`, `updated_at`) VALUES
(1, 11, 18, 1, NULL, NULL),
(2, 11, 16, 2, NULL, NULL),
(4, 11, 15, 4, NULL, NULL),
(5, 11, 7, 5, NULL, NULL),
(6, 11, 14, 6, NULL, NULL),
(7, 11, 5, 7, NULL, NULL),
(8, 11, 6, 8, NULL, NULL),
(9, 11, 8, 9, NULL, NULL),
(10, 11, 12, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `component_properties`
--

CREATE TABLE `component_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `value` varchar(15000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component_properties`
--

INSERT INTO `component_properties` (`id`, `component_id`, `name`, `type`, `value`) VALUES
(30, 2, 'background_type', 'string', 'backgroundImage'),
(31, 2, 'main_bg_image_light', 'string', '20231206/a94420f73c6d5a063572ef63dda3517e.png'),
(32, 2, 'main_bg_image_dark', 'string', '20231206/a94420f73c6d5a063572ef63dda3517e.png'),
(33, 2, 'main_bg_color_light', 'string', ''),
(34, 2, 'main_bg_color_dark', 'string', ''),
(35, 2, 'overline', 'string', 'المستشار القانوني'),
(36, 2, 'heading', 'string', 'احصل على استشارات قانونية دقيقة بكل سهولة'),
(37, 2, 'body', 'string', 'هو الأداة المثلى المدعومة بالذكاء الاصطناعي لمساعدتك في الحصول على إجابات قانونية فورية ودقيقة حول القوانين والأنظمة السعودية بأقل جهد ووقت وتكلفة.'),
(38, 2, 'text_color_light', 'string', ''),
(39, 2, 'text_color_dark', 'string', ''),
(40, 2, 'first_block', 'string', '1'),
(41, 2, 'bg_color_light', 'string', ''),
(42, 2, 'bg_color_dark', 'string', ''),
(43, 2, 'first_block_text_color_light', 'string', ''),
(44, 2, 'first_block_text_color_dark', 'string', ''),
(45, 2, 'border_width', 'string', ''),
(46, 2, 'border_style', 'string', ''),
(47, 2, 'border_color', 'string', ''),
(48, 2, 'block1_heading', 'string', 'دع الذكاء الاصطناعي يقوم بكل العمل من أجلك'),
(49, 2, 'block1_body', 'string', 'افتح باب القوة الكامنة للذكاء الاصطناعي مع تقنيتنا المتقدمة التي تساعدك على الحصول على استشارات قانونية مكتوبة بدقة وسهولة.'),
(50, 2, 'block1_second_body', 'string', 'ذكاءنا الاصطناعي يعرف كيف يقدم الإجابات التي تهمك ويبتكر محتوى قانوني يتناسب مع احتياجاتك.'),
(51, 2, 'image_light_mode', 'string', '20231206/f74a2b62c65012b6d5ab5d2b0ad316c7.png'),
(52, 2, 'second_block', 'string', '1'),
(53, 2, 'bg_color_light2', 'string', ''),
(54, 2, 'bg_color_dark2', 'string', ''),
(55, 2, 'second_block_text_color_light', 'string', ''),
(56, 2, 'second_block_text_color_dark', 'string', ''),
(57, 2, 'border_width2', 'string', ''),
(58, 2, 'border_style2', 'string', ''),
(59, 2, 'border_color2', 'string', ''),
(60, 2, 'block2_heading', 'string', 'وفر الوقت والمال'),
(61, 2, 'block2_body', 'string', 'وفر وقتك وأموالك مع نظامنا الآلي الذي يمكّنك من تقليل التكاليف مع الحصول على نتائج رائعة وسريعة.'),
(62, 2, 'third_block', 'string', '1'),
(63, 2, 'bg_color_light3', 'string', ''),
(64, 2, 'bg_color_dark3', 'string', ''),
(65, 2, 'third_block_text_color_light', 'string', ''),
(66, 2, 'third_block_text_color_dark', 'string', ''),
(67, 2, 'border_width3', 'string', ''),
(68, 2, 'border_style3', 'string', ''),
(69, 2, 'border_color3', 'string', ''),
(70, 2, 'image_light_mode3', 'string', '20231206/f0393e53ce18ff73add04126b8a22270.png'),
(71, 2, 'block3_heading', 'string', 'الخدمة <span style=\"color:#E22861;\">الوحيدة</span>  التي تحتاجها في الذكاء الاصطناعي'),
(72, 2, 'block3_body', 'string', 'واجهة بديهية ومنحنى تعلم بسيط تجعل \"LawgicAI\" الخيار المثالي لأي شخص يحتاج للحصول على استشارات قانونية بسرعة ودون التضحية بالجودة، لتحقيق أهدافك بشكل أسرع.'),
(73, 2, 'block3_second_body', 'string', 'تم تصميم \"LawgicAI\" للتركيز على تقديم استشارات قانونية شبيهة بالبشر تساعدك على الوصول إلى إجابات قانونية فورية، سواء كانت عن القوانين السعودية أو أي استفسار قانوني متعلق بالمملكة.'),
(74, 2, 'btn_name', 'string', 'تعرف عنا أكثر'),
(75, 2, 'btn_link', 'string', 'page/about-us'),
(76, 2, 'btn_text_color_light', 'string', ''),
(77, 2, 'btn_text_color_dark', 'string', ''),
(78, 2, 'pt_y', 'string', ''),
(227, 7, 'background_type', 'string', 'backgroundImage'),
(228, 7, 'main_bg_image_light', 'string', ''),
(229, 7, 'main_bg_image_dark', 'string', ''),
(230, 7, 'main_bg_color_light', 'string', ''),
(231, 7, 'main_bg_color_dark', 'string', ''),
(232, 7, 'overline', 'string', 'CUSTOMER REVIEWS'),
(233, 7, 'heading', 'string', 'Used By Millions Around The Globe'),
(234, 7, 'body', 'string', ' See what other people are saying about Artifism and be a part of it.'),
(235, 7, 'review_type', 'string', 'latestReviews'),
(236, 7, 'reviews', 'array', '[\"1\"]'),
(237, 7, 'review_limit', 'string', '8'),
(238, 7, 'text_color_light', 'string', ''),
(239, 7, 'text_color_dark', 'string', ''),
(240, 7, 'pt_y', 'string', ''),
(241, 8, 'background_type', 'string', 'backgroundImage'),
(242, 8, 'main_bg_image_light', 'string', '20231206/249342f82d4838a1f550384dce163518.png'),
(243, 8, 'main_bg_image_dark', 'string', '20231206/249342f82d4838a1f550384dce163518.png'),
(244, 8, 'main_bg_color_light', 'string', ''),
(245, 8, 'main_bg_color_dark', 'string', ''),
(246, 8, 'overline', 'string', 'BEFORE YOU BEGIN'),
(247, 8, 'heading', 'string', 'Frequently Asked Questions'),
(248, 8, 'body', 'string', ' See what other people are asking about Artifism and be a part of it.'),
(249, 8, 'faq_type', 'string', 'latestFaqs'),
(250, 8, 'faq_limit', 'string', '8'),
(251, 8, 'text_color_light', 'string', ''),
(252, 8, 'text_color_dark', 'string', ''),
(253, 8, 'pt_y', 'string', ''),
(305, 4, 'background_type', 'string', 'backgroundImage'),
(306, 4, 'bg_image_light', 'string', '20231206/0a8a47f13ec69c1ec1bcac39ac343773.png'),
(307, 4, 'bg_image_dark', 'string', '20231206/b75521158893bdeec4ed5897175a9a92.png'),
(308, 4, 'mob_bg_image_light', 'string', '20231206/ba09136613027ea56404986b2901f967.png'),
(309, 4, 'mob_bg_image_dark', 'string', '20231206/4c7cb0c9b8e582dd8f88082e71dd263b.png'),
(310, 4, 'bg_color_light', 'string', ''),
(311, 4, 'bg_color_dark', 'string', ''),
(312, 4, 'overline', 'string', 'مولد الاستشارات القانونية'),
(313, 4, 'heading', 'string', 'احصل على استشارات قانونية فورية كما لم يحدث من قبل'),
(314, 4, 'body', 'string', 'استخدم الذكاء الاصطناعي للحصول على إجابات قانونية دقيقة من النصوص التي تدخلها، حيث يتحول استفسارك إلى استشارة قانونية واضحة ومفهومة في ثوانٍ. أخيرًا، ستتمكن من الحصول على الإجابة المثالية التي تتناسب مع سؤالك.'),
(315, 4, 'text_color_light', 'string', ''),
(316, 4, 'text_color_dark', 'string', ''),
(317, 4, 'outline', 'array', '[{\"title\":\"\\u062f\\u0642\\u0629 \\u0645\\u062a\\u0646\\u0648\\u0639\\u0629\"},{\"title\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u062a\\u062c\\u0627\\u0631\\u064a \\u0628\\u062f\\u0648\\u0646 \\u062d\\u0642\\u0648\\u0642 \\u0645\\u0644\\u0643\\u064a\\u0629\"},{\"title\":\"\\u0628\\u062f\\u0648\\u0646 \\u0627\\u0639\\u0644\\u0627\\u0646\\u0627\\u062a\"}]'),
(318, 4, 'feature_slider_block', 'string', '1'),
(319, 4, 'feature_slider', 'array', '[{\"image\":\"20231206\\/9678b04cf2a8f2acab8218849b4c86a3.png\"},{\"image\":\"20231206\\/5f57072d18b1ef5eb6944ce21894e9d2.png\"},{\"image\":\"20231206\\/ef503ae5c2b4ef9f2fa2e4549aff9584.png\"},{\"image\":\"20231206\\/7a31006bdfd11434a3cc6d2264607d5b.png\"},{\"image\":\"20231206\\/9e2794e13e5a84bc4746e3d3e74251ae.png\"}]'),
(320, 4, 'default_slider_block', 'string', '1'),
(321, 4, 'default_slider', 'array', '[{\"image\":\"20231206\\/5415e032da3c25d121bad2011043cff7.png\"},{\"image\":\"20231206\\/4ed0c8417b3d1e5a2dae389a3456b334.png\"},{\"image\":\"20231206\\/706834b54dd60510c2b3578e1ed08bfc.png\"},{\"image\":\"20231206\\/eec361e16599c8301c84c065b75fe010.png\"},{\"image\":\"20231206\\/c666b9e6ed564ae7ccf01bbebf899f2e.png\"},{\"image\":\"20231206\\/c2cf9d978aaabc534f078d235fa14139.png\"},{\"image\":\"20231206\\/e48e4e02cbb94d424f2de0f7abba7db7.png\"},{\"image\":\"20231206\\/6dbb9fed6c5d243c196a98601a75585d.png\"},{\"image\":\"20231206\\/e30a4408f3463ec6629ba5e17a2fc552.png\"}]'),
(322, 4, 'first_button', 'string', '1'),
(323, 4, 'btn_name1', 'string', 'شاهد العرض التوضيحي'),
(324, 4, 'btn_link1', 'string', '#'),
(325, 4, 'btn_color_light1', 'string', ''),
(326, 4, 'btn_color_dark1', 'string', ''),
(327, 4, 'btn_text_color_light1', 'string', ''),
(328, 4, 'btn_text_color_dark1', 'string', ''),
(329, 4, 'second_button', 'string', '1'),
(330, 4, 'btn_name2', 'string', 'تعرف أكثر'),
(331, 4, 'btn_link2', 'string', 'page/about-us'),
(332, 4, 'btn_color_light2', 'string', ''),
(333, 4, 'btn_color_dark2', 'string', ''),
(334, 4, 'btn_text_color_light2', 'string', ''),
(335, 4, 'btn_text_color_dark2', 'string', ''),
(336, 4, 'border_width2', 'string', ''),
(337, 4, 'border_style2', 'string', ''),
(338, 4, 'border_color2', 'string', ''),
(339, 4, 'mt', 'string', ''),
(340, 4, 'mb', 'string', ''),
(385, 5, 'background_type', 'string', 'backgroundImage'),
(386, 5, 'main_bg_image_light', 'string', '20231206/1f9b9fe55d960b0854fce0757b4d9639.png'),
(387, 5, 'main_bg_image_dark', 'string', '20231206/1f9b9fe55d960b0854fce0757b4d9639.png'),
(388, 5, 'main_bg_color_light', 'string', ''),
(389, 5, 'main_bg_color_dark', 'string', ''),
(390, 5, 'heading', 'string', 'تعاون مع رواد الصناعة'),
(391, 5, 'body', 'string', 'آلاف من المسوقين، الوكالات، ورواد الأعمال يختاروننا لتبسيط وتحسين استشاراتهم القانونية.'),
(392, 5, 'brand', 'array', '[{\"light_logo\":\"20250316\\\\ef924e2861969244262b57769ac31123.jpg\"},{\"light_logo\":\"20231206\\/23c5ac6d472eec3e9dcc5bea6f100b08.svg\",\"dark_logo\":\"20231206\\/e27dc78dd9b87c189c330ae92c0339f3.svg\"},{\"light_logo\":\"20231206\\/23c5ac6d472eec3e9dcc5bea6f100b08.svg\",\"dark_logo\":\"20231206\\/2af1fcb36ddf02941a64f7b2d698aca3.svg\"},{\"light_logo\":\"20231206\\/ab65d2d9f3835024ee9a110327c8b452.svg\",\"dark_logo\":\"20231206\\/cfcbaeb9421b0c639e017fe16c136c40.svg\"},{\"light_logo\":\"20231206\\/26095ea6d2b67e714112c5c681cfa581.svg\",\"dark_logo\":\"20231206\\/f2e1f483961ad25daa1048b605b605f6.svg\"}]'),
(393, 5, 'text_color_light', 'string', ''),
(394, 5, 'text_color_dark', 'string', ''),
(395, 5, 'pt_y', 'string', ''),
(396, 6, 'background_type', 'string', 'backgroundImage'),
(397, 6, 'main_bg_image_light', 'string', ''),
(398, 6, 'main_bg_image_dark', 'string', ''),
(399, 6, 'main_bg_color_light', 'string', ''),
(400, 6, 'main_bg_color_dark', 'string', ''),
(401, 6, 'overline', 'string', 'التسعير'),
(402, 6, 'heading', 'string', 'خطط الاشتراك'),
(403, 6, 'body', 'string', 'نقدم خطط تسعير مرنة لتلبية احتياجات مستخدمينا، حيث يمكنك الحصول على استشارات قانونية ذكية بناءً على احتياجاتك. تحقق من جدول التسعير أدناه لمعرفة المزيد عن ميزاتنا وخدماتنا.'),
(404, 6, 'text_color_light', 'string', ''),
(405, 6, 'text_color_dark', 'string', ''),
(406, 6, 'plan_btn_name', 'string', 'Subscription'),
(407, 6, 'credit_btn_name', 'string', 'Credit'),
(408, 6, 'btn_color_light', 'string', ''),
(409, 6, 'btn_color_dark', 'string', ''),
(410, 6, 'btn_text_color_light', 'string', ''),
(411, 6, 'btn_text_color_dark', 'string', ''),
(412, 6, 'plan_type', 'string', 'latestPlans'),
(413, 6, 'plan_limit', 'string', '3'),
(414, 6, 'plan_text_color_light', 'string', ''),
(415, 6, 'plan_text_color_dark', 'string', ''),
(416, 6, 'plan_btn_color_light', 'string', ''),
(417, 6, 'plan_btn_color_dark', 'string', ''),
(418, 6, 'plan_btn_text_color_light', 'string', ''),
(419, 6, 'plan_btn_text_color_dark', 'string', ''),
(420, 6, 'credit_type', 'string', 'latestCredits'),
(421, 6, 'credit_limit', 'string', '3'),
(422, 6, 'credit_text_color_light_head', 'string', ''),
(423, 6, 'credit_text_color_dark_head', 'string', ''),
(424, 6, 'credit_text_color_light', 'string', ''),
(425, 6, 'credit_text_color_dark', 'string', ''),
(426, 6, 'credit_btn_color_light', 'string', ''),
(427, 6, 'credit_btn_color_dark', 'string', ''),
(428, 6, 'credit_btn_text_color_light', 'string', ''),
(429, 6, 'credit_btn_text_color_dark', 'string', ''),
(430, 6, 'mt', 'string', ''),
(431, 6, 'mb', 'string', ''),
(432, 9, 'background_type', 'string', 'backgroundImage'),
(433, 9, 'main_bg_image_light', 'string', ''),
(434, 9, 'main_bg_image_dark', 'string', ''),
(435, 9, 'main_bg_color_light', 'string', ''),
(436, 9, 'main_bg_color_dark', 'string', ''),
(437, 9, 'overline', 'string', 'آخر الأخبار'),
(438, 9, 'heading', 'string', 'ابقَ على اطلاع بأحدث المستجدات'),
(439, 9, 'blog_button', 'string', '1'),
(440, 9, 'btn_name', 'string', 'Head to all blogs'),
(441, 9, 'btn_link', 'string', 'blogs'),
(442, 9, 'btn_text_color_light', 'string', ''),
(443, 9, 'btn_text_color_dark', 'string', ''),
(444, 9, 'blog_type', 'string', 'latestBlogs'),
(445, 9, 'blog_limit', 'string', '10'),
(446, 9, 'newsletter_body', 'string', 'اشترك في نشرتنا البريدية لتصلك أحدث الأخبار والتحديثات حول منصتنا والاستشارات القانونية الذكية. لا تقلق، لا نرسل رسائل مزعجة!'),
(447, 9, 'newsletter_button', 'string', '1'),
(448, 9, 'newsletter_btn_name', 'string', 'اشترك'),
(449, 9, 'newsletter_btn_color_light', 'string', ''),
(450, 9, 'newsletter_btn_color_dark', 'string', ''),
(451, 9, 'newsletter_btn_text_color_light', 'string', ''),
(452, 9, 'newsletter_btn_text_color_dark', 'string', ''),
(453, 9, 'text_color_light', 'string', ''),
(454, 9, 'text_color_dark', 'string', ''),
(455, 9, 'pt_y', 'string', ''),
(456, 10, 'background_type', 'string', 'backgroundImage'),
(457, 10, 'main_bg_image_light', 'string', '20231206/80d11c9b6687bfefa68b236d8a5665a7.png'),
(458, 10, 'main_bg_image_dark', 'string', '20231206/80d11c9b6687bfefa68b236d8a5665a7.png'),
(459, 10, 'main_bg_color_light', 'string', ''),
(460, 10, 'main_bg_color_dark', 'string', ''),
(461, 10, 'heading', 'string', 'انسجام مع الذكاء القانوني <span style=\"color:#E22861;\"> بلا حدود.</span>'),
(462, 10, 'body', 'string', 'استكشف لوجيك مجانًا واكتشف كيف يمكنه مساعدتك في الحصول على استشارات قانونية دقيقة وفورية بسهولة.'),
(463, 10, 'image', 'string', '20231206/f4ecc96b70f326e8d042a44a0f4ff5a9.png'),
(464, 10, 'text_color_light', 'string', ''),
(465, 10, 'text_color_dark', 'string', ''),
(466, 10, 'first_button', 'string', '1'),
(467, 10, 'btn_name1', 'string', 'سجّل الآن'),
(468, 10, 'btn_link1', 'string', 'registration'),
(469, 10, 'btn_color_light1', 'string', ''),
(470, 10, 'btn_color_dark1', 'string', ''),
(471, 10, 'btn_text_color_light1', 'string', ''),
(472, 10, 'btn_text_color_dark1', 'string', ''),
(473, 10, 'second_button', 'string', '1'),
(474, 10, 'btn_name2', 'string', 'عرض خطط الاشتراك'),
(475, 10, 'btn_link2', 'string', 'pricing'),
(476, 10, 'btn_color_light2', 'string', ''),
(477, 10, 'btn_color_dark2', 'string', ''),
(478, 10, 'btn_text_color_light2', 'string', ''),
(479, 10, 'btn_text_color_dark2', 'string', ''),
(480, 10, 'mt', 'string', ''),
(481, 10, 'mb', 'string', ''),
(482, 1, 'background_type', 'string', 'backgroundImage'),
(483, 1, 'bg_image_light', 'string', '20231206/6d5f7e134dcccb2d24bf9c1bdfe50390.png'),
(484, 1, 'bg_image_dark', 'string', '20231206/e08dc47dbcfae42066aef937ae4c4bbb.png'),
(485, 1, 'bg_image_light_mob', 'string', '20231206/530c02dad9d3e967990552078c9e804a.png'),
(486, 1, 'bg_image_dark_mob', 'string', '20231206/a2fc369a55f48ae3b0c524b0e73c19e5.png'),
(487, 1, 'bg_color_light', 'string', ''),
(488, 1, 'bg_color_dark', 'string', ''),
(489, 1, 'overline', 'string', 'استشارات قانونية أسرع وأكثر دقة.'),
(490, 1, 'heading', 'string', 'LawgicAI'),
(491, 1, 'slider', 'array', '[{\"title\":\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0627\\u062a \\u0642\\u0627\\u0646\\u0648\\u0646\\u064a\\u0629 \\u0641\\u0648\\u0631\\u064a\\u0629\"},{\"title\":\"\\u0625\\u062c\\u0627\\u0628\\u0627\\u062a \\u062f\\u0642\\u064a\\u0642\\u0629 \\u062d\\u0648\\u0644 \\u0627\\u0644\\u0642\\u0648\\u0627\\u0646\\u064a\\u0646 \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629\"},{\"title\":\"\\u0646\\u0635\\u0627\\u0626\\u062d \\u0642\\u0627\\u0646\\u0648\\u0646\\u064a\\u0629 \\u0645\\u0648\\u062c\\u0647\\u0629 \\u0644\\u0627\\u062d\\u062a\\u064a\\u0627\\u062c\\u0627\\u062a\\u0643\"},{\"title\":\"\\u062d\\u0644\\u0648\\u0644 \\u0642\\u0627\\u0646\\u0648\\u0646\\u064a\\u0629 \\u0645\\u0628\\u062a\\u0643\\u0631\\u0629\"},{\"title\":\"\\u0645\\u0633\\u0627\\u0639\\u062f \\u0642\\u0627\\u0646\\u0648\\u0646\\u064a \\u0630\\u0643\\u064a\"},{\"title\":\"\"},{\"title\":\"\\u0648\\u0627\\u0644\\u0645\\u0632\\u064a\\u062f...\"}]'),
(492, 1, 'body', 'string', 'البوت الاستشاري الأول في السعودية المدعوم بالذكاء الاصطناعي لمساعدتك على اتخاذ القرارات القانونية بكل ثقة.'),
(493, 1, 'text_color_light', 'string', ''),
(494, 1, 'text_color_dark', 'string', ''),
(495, 1, 'first_button', 'string', '1'),
(496, 1, 'btn_name1', 'string', 'ابدأ مجانًا'),
(497, 1, 'btn_link1', 'string', 'registration'),
(498, 1, 'btn_color_light1', 'string', ''),
(499, 1, 'btn_color_dark1', 'string', ''),
(500, 1, 'btn_text_color_light1', 'string', ''),
(501, 1, 'btn_text_color_dark1', 'string', ''),
(502, 1, 'basic_link', 'string', '1'),
(503, 1, 'btn_name2', 'string', 'أعرف المزيد'),
(504, 1, 'btn_link2', 'string', 'page/about-us'),
(505, 1, 'btn_text_color_light2', 'string', ''),
(506, 1, 'btn_text_color_dark2', 'string', ''),
(507, 1, 'float_image', 'string', '1'),
(508, 1, 'image', 'string', '20231206/1fa6596b55f481a903717d1d3ab7353b.png'),
(509, 1, 'mob_image', 'string', '20231206/4c2d7dfae083fcd93701806ae8fdb775.png'),
(510, 1, 'display_icon', 'string', '1');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `use_case_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(3000) NOT NULL,
  `promt` text NOT NULL,
  `content` text NOT NULL,
  `tokens` int(11) NOT NULL,
  `words` int(11) NOT NULL,
  `characters` int(11) NOT NULL,
  `model` varchar(191) NOT NULL,
  `language` varchar(191) NOT NULL,
  `tone` varchar(191) NOT NULL,
  `creativity_label` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_meta`
--

CREATE TABLE `content_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_types`
--

INSERT INTO `content_types` (`id`, `name`, `slug`) VALUES
(1, 'Document', 'document'),
(2, 'Image Maker', 'image_maker'),
(3, 'Code Writer', 'code_writer'),
(4, 'Speech to text', 'speech_to_text'),
(5, 'Text To Speech', 'text_to_speech'),
(6, 'Long Article', 'long_article');

-- --------------------------------------------------------

--
-- Table structure for table `content_types_meta`
--

CREATE TABLE `content_types_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_types_meta`
--

INSERT INTO `content_types_meta` (`id`, `content_type_id`, `name`, `key`, `value`) VALUES
(1, 1, 'document', 'language', '{\"0\":\"English\",\"2\":\"Arabic\"}'),
(2, 1, 'document', 'tone', '[\"Casual\", \"Funny\", \"Bold\", \"Feminine\", \"Professional\", \"Friendly\", \"Dramatic\", \"Sarcastic\", \"Excited\", \"Empathetic\", \"Playful\"]'),
(3, 1, 'document', 'variant', '[\"1\",\"2\",\"3\"]'),
(4, 1, 'document', 'temperature', '[\"Optimal\",\"Low\",\"Medium\",\"High\"]'),
(5, 2, 'image_maker', 'openai_variant', '[\"1\"]'),
(6, 2, 'image_maker', 'openai_resulation', '[\"1024x1024\", \"1024x1792\", \"1792x1024\"]'),
(7, 2, 'image_maker', 'openai_artStyle', '[\"Normal\",\"Cartoon art\",\"3D Render\",\"Pixel art\",\"Isometric\",\"Vendor art\",\"Line art\",\"Watercolor art\",\"Anime art\"]'),
(8, 2, 'image_maker', 'openai_lightingStyle', '[\"Normal\",\"Studio\",\"Warm\",\"Cold\",\"Ambient\",\"Neon\",\"Foggy\"]'),
(9, 3, 'code_writer', 'language', '[\"PHP\",\"Java\",\"Rubby\", \"Python\", \"C#\", \"Go\", \"Kotlin\", \"Javascript\", \"TypeScript\", \"SQL\", \"NoSQL\"]'),
(10, 3, 'code_writer', 'codeLabel', '[\"Noob\",\"Moderate\",\"High\"]'),
(11, 2, 'image_maker', 'imageCreateFrom', '{\"openai\" : \"1\",\"stable_diffusion\" : \"1\"}'),
(12, 4, 'speech_to_text', 'language', '[\"en\",\"fr\",\"ar\",\"bg\",\"ca\",\"et\",\"nl\",\"ru\",\"es\",\"pt\",\"pl\",\"de\",\"sv\"]'),
(13, 5, 'text_to_speech', 'language', '[\"English\",\"Bengali\",\"French\",\"Chinese\",\"Arabic\",\"Bulgarian\",\"Catalan\",\"Dutch\",\"Russian\",\"Spanish\",\"Portuguese\",\"Polish\",\"German\",\"Sweden\"]'),
(14, 5, 'text_to_speech', 'volume', '[\"Low\",\"Default\",\"High\"]'),
(15, 5, 'text_to_speech', 'pitch', '[\"Low\",\"Default\",\"High\"]'),
(16, 5, 'text_to_speech', 'speed', '[\"Super Slow\",\"Slow\",\"Default\",\"Fast\",\"Super Fast\"]'),
(17, 5, 'text_to_speech', 'pause', '[\"0s\",\"1s\",\"2s\",\"3s\",\"4s\", \"5s\"]'),
(18, 5, 'text_to_speech', 'audio_effect', '[\"Smart Watch\",\"Smartphone\",\"Headphone\",\"Bluetooth\",\"Smart Bluetooth\",\"Smart TV\",\"Car Speaker\",\"Telephone\"]'),
(19, 5, 'text_to_speech', 'target_format', '[\"MP3\",\"WAV\",\"OGG\"]'),
(22, 2, 'image_maker', 'stable_diffusion_variant', '[\"1\", \"2\", \"3\"]'),
(23, 2, 'image_maker', 'stable_diffusion_resulation', '[\"1536x640\",\"1152x896\",\"1344x768\",\"1024x1024\",\"768x1344\", \"640x1536\", \"832x1216\", \"896x1152\"]'),
(24, 2, 'image_maker', 'stable_diffusion_artStyle', '[\"Normal\",\"Cartoon art\",\"3D Render\",\"Pixel art\",\"Isometric\",\"Vendor art\",\"Line art\",\"Watercolor art\",\"Anime art\"]'),
(25, 2, 'image_maker', 'stable_diffusion_lightingStyle', '[\"Normal\",\"Studio\",\"Warm\",\"Cold\",\"Ambient\",\"Neon\",\"Foggy\"]'),
(26, 6, 'long_article', 'long_article_providers', '[\"OpenAi\"]'),
(27, 6, 'long_article', 'long_article_models', '[\"gpt-4\",\"gpt-3.5-turbo\"]'),
(28, 6, 'long_article', 'long_article_languages', '[\"English\",\"French\",\"Chinese\",\"Arabic\",\"Byelorussian\",\"Bulgarian\",\"Catalan\",\"Estonian\", \"Dutch\"]'),
(29, 6, 'long_article', 'long_article_tones', '[\"Normal\",\"Studio\",\"Warm\",\"Cold\",\"Ambient\",\"Neon\",\"Foggy\",\"Dramatic\",\"Bold\",\"Casual\",\"Professional\",\"Friendly\"]'),
(30, 6, 'long_article', 'long_article_temperature', '[\"Optimal\",\"Low\",\"Medium\",\"High\"]'),
(31, 6, 'long_article', 'long_article_frequency_penalty', '0'),
(32, 6, 'long_article', 'long_article_presence_penalty', '0'),
(35, 2, 'image_maker', 'clipdrop_services', '[\"text-to-image\",\"sketch-to-image\",\"replace-background\",\"remove-background\",\"remove-text\",\"reimagine\"]'),
(36, 2, 'image_maker', 'clipdrop_artStyle', '[\"Normal\",\"Cartoon art\",\"3D Render\",\"Pixel art\",\"Isometric\",\"Vendor art\",\"Line art\",\"Watercolor art\",\"Anime art\"]'),
(37, 2, 'image_maker', 'clipdrop_lightingStyle', '[\"Normal\",\"Studio\",\"Warm\",\"Cold\",\"Ambient\",\"Neon\",\"Foggy\"]');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `usage_limit_per_coupon` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `minimum_spend` decimal(16,8) DEFAULT NULL,
  `usage_count` int(11) DEFAULT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT 0,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `code` varchar(100) NOT NULL,
  `discount_type` varchar(15) NOT NULL,
  `discount_amount` decimal(16,8) NOT NULL,
  `maximum_discount_amount` decimal(16,8) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_redeems`
--

CREATE TABLE `coupon_redeems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `subscription_detail_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `package_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(16,8) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `coupon_redeems`
--
DELIMITER $$
CREATE TRIGGER `coupon_redeems_ADEL` AFTER DELETE ON `coupon_redeems` FOR EACH ROW UPDATE coupons SET usage_count = (select count(coupon_id) from coupon_redeems WHERE coupon_id = coupons.id) WHERE coupons.id = OLD.coupon_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `coupon_redeems_AINS` AFTER INSERT ON `coupon_redeems` FOR EACH ROW UPDATE coupons SET usage_count = (select count(coupon_id) from coupon_redeems WHERE coupon_id = coupons.id) WHERE coupons.id = NEW.coupon_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'creator id',
  `name` varchar(100) NOT NULL,
  `code` varchar(65) NOT NULL,
  `price` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `sort_order` int(11) DEFAULT NULL,
  `plans` varchar(1000) DEFAULT NULL,
  `features` varchar(1000) DEFAULT NULL,
  `status` varchar(45) NOT NULL COMMENT 'Active / Inactive',
  `type` varchar(50) NOT NULL DEFAULT 'payment',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `user_id`, `name`, `code`, `price`, `sort_order`, `plans`, `features`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Bronze', 'bronze', 9.99000000, 1, NULL, '{\"word\":\"10000\",\"image\":\"100\",\"minute\":\"100\",\"character\":\"200000\",\"page\":\"5\",\"chatbot\":\"5\",\"video\":\"5\"}', 'Active', 'payment', NULL, NULL),
(2, NULL, 'Silver', 'silver', 19.99000000, 2, NULL, '{\"word\":\"10000\",\"image\":\"100\",\"minute\":\"100\",\"character\":\"400000\", \"page\":\"10\",\"chatbot\":\"10\", \"video\":\"10\"}', 'Active', 'payment', NULL, NULL),
(3, NULL, 'Gold', 'gold', 24.99000000, 3, NULL, '{\"word\":\"10000\",\"image\":\"100\",\"minute\":\"100\",\"character\":\"500000\",\"page\":\"15\",\"chatbot\":\"15\",\"video\":\"15\"}', 'Active', 'payment', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `credit_coupons`
--

CREATE TABLE `credit_coupons` (
  `credit_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `symbol` char(10) NOT NULL,
  `exchange_rate` decimal(16,8) DEFAULT NULL,
  `exchange_from` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `exchange_from`) VALUES
(1, 'BDT', '৳', NULL, NULL),
(2, 'EUR', '€', NULL, NULL),
(3, 'USD', '$', NULL, NULL),
(4, 'GBP', '£', NULL, NULL),
(5, 'RUB', '₽', NULL, NULL),
(6, 'AFN', 'Afs', NULL, NULL),
(7, 'ALL', 'Lek', NULL, NULL),
(8, 'DZD', 'DA', NULL, NULL),
(9, 'AOA', 'Kz', NULL, NULL),
(10, 'XCD', '$', NULL, NULL),
(11, 'ARS', '$', NULL, NULL),
(12, 'AMD', '֏', NULL, NULL),
(13, 'AWG', 'ƒ', NULL, NULL),
(14, 'SHP', '£', NULL, NULL),
(15, 'AUD', '$', NULL, NULL),
(16, 'AZN', '₼', NULL, NULL),
(17, 'BSD', '$', NULL, NULL),
(18, 'BHD', 'BD', NULL, NULL),
(19, 'BBD', '$', NULL, NULL),
(20, 'BYN', 'Rbls', NULL, NULL),
(21, 'BZD', '$', NULL, NULL),
(22, 'XOF', 'Fr', NULL, NULL),
(23, 'BMD', '$', NULL, NULL),
(24, 'BTN', 'Nu', NULL, NULL),
(25, 'INR', '₹', NULL, NULL),
(26, 'BOB', 'Bs', NULL, NULL),
(27, 'BAM', 'KM', NULL, NULL),
(28, 'BWP', 'P', NULL, NULL),
(29, 'BRL', 'R$', NULL, NULL),
(30, 'BND', '$', NULL, NULL),
(31, 'SGD', '$', NULL, NULL),
(32, 'BGN', 'Lev', NULL, NULL),
(33, 'BIF', 'Fr', NULL, NULL),
(34, 'KHR', 'CR', NULL, NULL),
(35, 'XAF', 'Fr', NULL, NULL),
(36, 'CAD', '$', NULL, NULL),
(37, 'CVE', '$', NULL, NULL),
(38, 'KYD', '$', NULL, NULL),
(39, 'CLP', '$', NULL, NULL),
(40, 'CNY', '¥', NULL, NULL),
(41, 'COP', '$', NULL, NULL),
(42, 'KMF', 'Fr', NULL, NULL),
(43, 'CDF', 'Fr', NULL, NULL),
(44, 'NZD', '$', NULL, NULL),
(45, 'CRC', '₡', NULL, NULL),
(46, 'HRK', 'kn', NULL, NULL),
(47, 'CUP', '$', NULL, NULL),
(48, 'ANG', 'ƒ', NULL, NULL),
(49, 'CZK', 'Kč', NULL, NULL),
(50, 'DKK', 'kr', NULL, NULL),
(51, 'DJF', 'Fr', NULL, NULL),
(52, 'DOP', '$', NULL, NULL),
(53, 'EGP', 'LE', NULL, NULL),
(54, 'ERN', 'Nkf', NULL, NULL),
(55, 'SZL', 'E', NULL, NULL),
(56, 'ZAR', 'R', NULL, NULL),
(57, 'ETB', 'Br', NULL, NULL),
(58, 'FKP', '£', NULL, NULL),
(59, 'FJD', '$', NULL, NULL),
(60, 'XPF', 'Fr', NULL, NULL),
(61, 'GMD', 'D', NULL, NULL),
(62, 'GEL', '₾', NULL, NULL),
(63, 'GHS', '₵', NULL, NULL),
(64, 'GIP', '£', NULL, NULL),
(65, 'GTQ', 'Q', NULL, NULL),
(66, 'GNF', 'Fr', NULL, NULL),
(67, 'GYD', '$', NULL, NULL),
(68, 'HTG', 'G', NULL, NULL),
(69, 'HNL', 'L', NULL, NULL),
(70, 'HKD', '$', NULL, NULL),
(71, 'HUF', 'Ft', NULL, NULL),
(72, 'ISK', 'kr', NULL, NULL),
(73, 'IDR', 'Rp', NULL, NULL),
(74, 'IRR', 'Rls', NULL, NULL),
(75, 'IQD', 'ID', NULL, NULL),
(76, 'ILS', '₪', NULL, NULL),
(77, 'JMD', '$', NULL, NULL),
(78, 'JPY', '¥', NULL, NULL),
(79, 'JOD', 'JD', NULL, NULL),
(80, 'KZT', '₸', NULL, NULL),
(81, 'KES', 'Shs', NULL, NULL),
(83, 'KPW', '₩', NULL, NULL),
(84, 'KRW', '₩', NULL, NULL),
(85, 'KWD', 'KD', NULL, NULL),
(86, 'KGS', 'som', NULL, NULL),
(87, 'LAK', '₭', NULL, NULL),
(88, 'LBP', 'LL', NULL, NULL),
(89, 'LSL', 'M', NULL, NULL),
(90, 'ZAR', 'R', NULL, NULL),
(91, 'LRD', '$', NULL, NULL),
(92, 'LYD', 'LD', NULL, NULL),
(93, 'CHF', 'Fr', NULL, NULL),
(94, 'MOP', 'MOP$', NULL, NULL),
(95, 'MGA', 'Ar', NULL, NULL),
(96, 'MWK', 'K', NULL, NULL),
(97, 'MYR', 'RM', NULL, NULL),
(98, 'MVR', 'Rf', NULL, NULL),
(99, 'MRU', 'UM', NULL, NULL),
(100, 'MUR', 'Rs', NULL, NULL),
(101, 'MXN', '$', NULL, NULL),
(102, 'MDL', 'Lei', NULL, NULL),
(103, 'MNT', '₮', NULL, NULL),
(104, 'MAD', 'DH', NULL, NULL),
(105, 'MZN', 'Mt', NULL, NULL),
(106, 'MMK', 'Ks', NULL, NULL),
(107, 'NAD', '$', NULL, NULL),
(108, 'NPR', 'Rs', NULL, NULL),
(109, 'NIO', 'C$', NULL, NULL),
(110, 'NGN', '₦', NULL, NULL),
(111, 'MKD', 'DEN', NULL, NULL),
(112, 'TRY', '₺', NULL, NULL),
(113, 'NOK', 'kr', NULL, NULL),
(114, 'OMR', 'RO', NULL, NULL),
(115, 'PKR', 'Rs', NULL, NULL),
(116, 'ILS', '₪', NULL, NULL),
(117, 'PAB', 'B/', NULL, NULL),
(118, 'PGK', 'K', NULL, NULL),
(119, 'PYG', '₲', NULL, NULL),
(120, 'PEN', 'S/', NULL, NULL),
(121, 'PHP', '₱', NULL, NULL),
(122, 'PLN', 'zł', NULL, NULL),
(123, 'QAR', 'QR', NULL, NULL),
(124, 'RON', 'Lei', NULL, NULL),
(125, 'RWF', 'Fr', NULL, NULL),
(126, 'WST', '$', NULL, NULL),
(127, 'STN', 'Db', NULL, NULL),
(128, 'SAR', 'Rls', NULL, NULL),
(129, 'RSD', 'DIN', NULL, NULL),
(130, 'SCR', 'Rs', NULL, NULL),
(131, 'SLE', 'Le', NULL, NULL),
(132, 'SBD', '$', NULL, NULL),
(133, 'SOS', 'Shs', NULL, NULL),
(134, 'LKR', 'Rs', NULL, NULL),
(135, 'SDG', 'LS', NULL, NULL),
(136, 'SRD', '$', NULL, NULL),
(137, 'SEK', 'kr', NULL, NULL),
(138, 'SYP', 'LS', NULL, NULL),
(139, 'TWD', '$', NULL, NULL),
(140, 'TJS', 'TJS', NULL, NULL),
(141, 'TZS', 'Shs', NULL, NULL),
(142, 'THB', '฿', NULL, NULL),
(143, 'TOP', 'T$', NULL, NULL),
(144, 'TTD', '$', NULL, NULL),
(145, 'TND', 'DT', NULL, NULL),
(146, 'TMT', 'm', NULL, NULL),
(147, 'UGX', 'Shs', NULL, NULL),
(148, 'UAH', '₴', NULL, NULL),
(149, 'AED', 'Dhs', NULL, NULL),
(150, 'UYU', '$', NULL, NULL),
(151, 'UZS', 'soum', NULL, NULL),
(152, 'VUV', 'VT', NULL, NULL),
(153, 'VES', 'Bs.S', NULL, NULL),
(154, 'VED', 'Bs.D', NULL, NULL),
(155, 'VND', '₫', NULL, NULL),
(156, 'YER', 'Rls', NULL, NULL),
(157, 'ZMW', 'K', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` int(11) NOT NULL,
  `protocol` varchar(191) NOT NULL,
  `encryption` varchar(191) NOT NULL,
  `smtp_host` varchar(191) NOT NULL,
  `smtp_port` varchar(191) NOT NULL,
  `smtp_email` varchar(191) NOT NULL,
  `smtp_username` varchar(191) NOT NULL,
  `smtp_password` varchar(191) NOT NULL,
  `from_address` varchar(191) NOT NULL,
  `from_name` varchar(191) NOT NULL,
  `status` varchar(10) NOT NULL COMMENT '1= verified, 0= unverified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `subject` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `language_id` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `variables` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `embeded_resources`
--

CREATE TABLE `embeded_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `original_name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `content` longtext NOT NULL,
  `vector` text DEFAULT NULL,
  `category` varchar(191) DEFAULT NULL COMMENT 'widgetChatBot etc.',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `embeded_resources_meta`
--

CREATE TABLE `embeded_resources_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_type` varchar(191) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_preferences`
--

CREATE TABLE `feature_preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_preferences`
--

INSERT INTO `feature_preferences` (`id`, `name`, `slug`) VALUES
(1, 'Document', 'document'),
(2, 'Image Maker', 'image_maker'),
(3, 'Code Writer', 'code_writer'),
(4, 'Speech to text', 'speech_to_text'),
(5, 'Text To Speech', 'text_to_speech'),
(6, 'Long Article', 'long_article'),
(7, 'Chatbot', 'chatbot'),
(8, 'Ai Doc Chat', 'ai_doc_chat'),
(9, 'Ai Plagiarism', 'ai_plagiarism'),
(10, 'Ai Detector', 'ai_detector');

-- --------------------------------------------------------

--
-- Table structure for table `feature_preference_metas`
--

CREATE TABLE `feature_preference_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_type` varchar(80) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'null',
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_preference_metas`
--

INSERT INTO `feature_preference_metas` (`id`, `owner_type`, `owner_id`, `type`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\OpenAI\\Entities\\FeaturePreference', 7, 'string', 'general_options', '{\"languages\":[\"Arabic\"],\"default_avatar\":\"1254\",\"default_floating_image\":\"1255\"}', NULL, '2025-03-21 22:21:32'),
(2, 'Modules\\OpenAI\\Entities\\FeaturePreference', 7, 'string', 'theme_options', '{\"color\":[\"#9163dd\",\"#e22861\",\"#fcca19\",\"#ff1493\",\"#2c2c2c\",\"#5af457\",\"#5707cf\",\"#f2ec36\"]}', NULL, NULL),
(3, 'Modules\\OpenAI\\Entities\\FeaturePreference', 7, 'string', 'settings', '{\"file_size\":\"10\",\"file_limit\":\"5\",\"url_limit\":\"5\",\"training_options\":{\"file_upload\":\"on\",\"website_url\":\"on\",\"pure_text\":\"on\"}}', NULL, '2025-03-21 22:21:03'),
(4, 'Modules\\OpenAI\\Entities\\FeaturePreference', 8, 'string', 'general_options', '{\"user_access_disable\":\"off\",\"provider\":\"openai\",\"model\":\"text-embedding-ada-002\"}', NULL, '2025-03-21 22:21:03'),
(5, 'Modules\\OpenAI\\Entities\\FeaturePreference', 10, 'string', 'settings', '{\"file_size\":\"10\",\"feature_options\":{\"file_upload\":\"on\",\"content_description\":\"on\"}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `params` varchar(191) DEFAULT NULL,
  `object_type` varchar(191) DEFAULT NULL,
  `object_id` varchar(191) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_size` double(8,2) DEFAULT NULL,
  `original_file_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `params`, `object_type`, `object_id`, `uploaded_by`, `file_name`, `file_size`, `original_file_name`, `created_at`) VALUES
(666, '{\"size\":228.7119140625,\"type\":\"png\"}', 'png', NULL, 1, '20221010/3d31dc001267229f58500e5a0a0b633b.png', 228.71, 'Banner Static.png', '2025-03-14 23:36:48'),
(667, '{\"size\":291.552734375,\"type\":\"png\"}', 'png', NULL, 1, '20221010/f344eaaaa40173a23c693d1b4b24c794.png', 291.55, 'wepik-photo-mode-2022910-12118 1.png', '2025-03-14 23:36:48'),
(668, '{\"size\":288.1962890625,\"type\":\"png\"}', 'png', NULL, 1, '20221010/6201fccfb042197c4e2ea92ad351f9a3.png', 288.20, 'pic-10.png', '2025-03-14 23:36:48'),
(669, '{\"size\":319.3583984375,\"type\":\"png\"}', 'png', NULL, 1, '20221010/7b28339091f2b31678ef9e77fb9067a3.png', 319.36, 'pic-6.png', '2025-03-14 23:36:48'),
(670, '{\"size\":212.4853515625,\"type\":\"png\"}', 'png', NULL, 1, '20221010/77cbd45f8be51b7a1748a7a559af0983.png', 212.49, 'pic-12.png', '2025-03-14 23:36:48'),
(672, '{\"size\":297.0341796875,\"type\":\"png\"}', 'png', NULL, 1, '20221010/3628f6815018ee542f5979bb7750f873.png', 297.03, 'pic-14.png', '2025-03-14 23:36:48'),
(673, '{\"size\":256.986328125,\"type\":\"png\"}', 'png', NULL, 1, '20221010/4c06550e9dc3926a7aa1c020c4c6d11f.png', 256.99, 'pic-15.png', '2025-03-14 23:36:48'),
(674, '{\"size\":397.021484375,\"type\":\"png\"}', 'png', NULL, 1, '20221010/ef061cb28f978966bf51ade380640ee5.png', 397.02, 'pic-5.png', '2025-03-14 23:36:48'),
(675, '{\"size\":211.693359375,\"type\":\"png\"}', 'png', NULL, 1, '20221010/50d21c161426b27d0ec3c7c6a0999905.png', 211.69, 'pic-4.png', '2025-03-14 23:36:48'),
(676, '{\"size\":276.2138671875,\"type\":\"png\"}', 'png', NULL, 1, '20221010/b7ef4c2fe7f6176eca4309b14fabb10f.png', 276.21, 'tender-feminine-woman-with-blue-eyes-smiles-pleasantly-has-toothy-smile-wears-white-comfortable-sweater-looks-directly-camera-isolated-pink-background 1.png', '2025-03-14 23:36:48'),
(677, '{\"size\":333.68359375,\"type\":\"png\"}', 'png', NULL, 1, '20221010/b9413981ec7bfcbdb1d271c930363f56.png', 333.68, 'image 1.png', '2025-03-14 23:36:48'),
(678, '{\"size\":282.533203125,\"type\":\"png\"}', 'png', NULL, 1, '20221010/eeeaa3f1642f41cb4fd4018fc010582f.png', 282.53, 'pic-13.png', '2025-03-14 23:36:48'),
(679, '{\"size\":125.8583984375,\"type\":\"png\"}', 'png', NULL, 1, '20221010/82ff6bfbf12d5cf5ac20834bb43b7fc0.png', 125.86, 'pic-9.png', '2025-03-14 23:36:48'),
(834, '{\"size\":0.38671875,\"type\":\"png\"}', 'png', NULL, 1, '20221114/4212b4d6425b622bf5391387b5446cea.png', 0.39, 'youtube.png', '2025-03-14 23:36:48'),
(835, '{\"size\":0.556640625,\"type\":\"png\"}', 'png', NULL, 1, '20221114/b4bf139f125acf287becce5bbb4c96f6.png', 0.56, 'pinterest.png', '2025-03-14 23:36:48'),
(836, '{\"size\":0.544921875,\"type\":\"png\"}', 'png', NULL, 1, '20221114/c9d20e7377473a90fdcb58637f74c458.png', 0.54, 'watsapp.png', '2025-03-14 23:36:48'),
(837, '{\"size\":0.4794921875,\"type\":\"png\"}', 'png', NULL, 1, '20221114/fff0c6e58139ddbfc3c8ff2980db1b1e.png', 0.48, 'instagramm.png', '2025-03-14 23:36:48'),
(838, '{\"size\":0.5361328125,\"type\":\"png\"}', 'png', NULL, 1, '20221114/cf2e05536d870bf7dd728006ec4f0293.png', 0.54, 'twitter.png', '2025-03-14 23:36:48'),
(839, '{\"size\":0.310546875,\"type\":\"png\"}', 'png', NULL, 1, '20221114/d509d72e02f0391123fc304d8b4fae99.png', 0.31, 'facebook-2 logo.png', '2025-03-14 23:36:48'),
(840, '{\"size\":0.4453125,\"type\":\"png\"}', 'png', NULL, 1, '20221114/82f880076d18bafc3bdb1fdd7988f547.png', 0.45, 'Group 50.png', '2025-03-14 23:36:48'),
(841, '{\"size\":0.6669921875,\"type\":\"png\"}', 'png', NULL, 1, '20221114/d3d95c9685b6785cdaabc5ea207175af.png', 0.67, 'Vector 189 (Stroke).png', '2025-03-14 23:36:48'),
(842, '{\"size\":0.869140625,\"type\":\"png\"}', 'png', NULL, 1, '20221114/84214fc7d8147f994367bad5e360fb05.png', 0.87, 'Subtract (Stroke).png', '2025-03-14 23:36:48'),
(843, '{\"size\":581.4609375,\"type\":\"png\"}', 'png', NULL, 1, '20221114/2e782eb90a0f43efbcd964050fbd8929.png', 581.46, 'i-have-solution-your-problem-cropped-shot-call-center-agent-sitting-his-desk-with-his-colleague-blurred-background 1.png', '2025-03-14 23:36:48'),
(1062, '{\"size\":48.9609375,\"type\":\"png\"}', 'png', NULL, 1, '20221114/86109a9933c986050759bf386f616462.png', 48.96, 'index-promo-12.png', '2025-03-14 23:36:48'),
(1063, '{\"size\":48.9609375,\"type\":\"png\"}', 'png', NULL, 1, '20221114/3326462095793b23ed56be61f1dbc350.png', 48.96, 'index-promo-12.png', '2025-03-14 23:36:48'),
(1113, '{\"size\":261.2060546875,\"type\":\"jpg\"}', 'jpg', NULL, 1, '20221203/6f44524bd84eeff829ad0e0befebf0de.jpg', 261.21, '5898.jpg', '2025-03-14 23:36:48'),
(1114, '{\"size\":366.2216796875,\"type\":\"jpg\"}', 'jpg', NULL, 1, '20221203/9d1961d93f8add5597d0dc7355c85c8b.jpg', 366.22, 'Card_Phone.jpg', '2025-03-14 23:36:48'),
(1143, '{\"size\":1.69140625,\"type\":\"png\"}', 'png', NULL, 1, '20230316/54fadd253ea8c4e55055d89c56f58d1d.png', 1.69, 'Ellipse 448.png', '2025-03-14 23:36:48'),
(1144, '{\"size\":1.7958984375,\"type\":\"png\"}', 'png', NULL, 1, '20230316/0b08a5bebecf5d41c0569e64ccbb9488.png', 1.80, 'Ellipse 449.png', '2025-03-14 23:36:48'),
(1145, '{\"size\":1.6494140625,\"type\":\"png\"}', 'png', NULL, 1, '20230316/da9ca4c5a05a143796518fd63461c80f.png', 1.65, 'Ellipse 451.png', '2025-03-14 23:36:48'),
(1146, '{\"size\":3.0107421875,\"type\":\"png\"}', 'png', NULL, 1, '20230316/3ecd7ac9f8462ad27c0b7ddb92da18ac.png', 3.01, 'Ellipse 453.png', '2025-03-14 23:36:48'),
(1147, '{\"size\":1.5087890625,\"type\":\"png\"}', 'png', NULL, 1, '20230316/fcae661e5ccadaca3c17ffdca6689361.png', 1.51, 'Ellipse 455.png', '2025-03-14 23:36:48'),
(1148, '{\"size\":1.666015625,\"type\":\"png\"}', 'png', NULL, 1, '20230316/d9c9f564732f106ecdddfa4f0c12a52f.png', 1.67, 'Ellipse 456.png', '2025-03-14 23:36:48'),
(1149, '{\"size\":1.921875,\"type\":\"png\"}', 'png', NULL, 1, '20230316/250d821bde46cd3884f07bcafae77962.png', 1.92, 'Ellipse 457.png', '2025-03-14 23:36:48'),
(1150, '{\"size\":2.060546875,\"type\":\"png\"}', 'png', NULL, 1, '20230316/5df314d304b1dfeb812bcd2cd6daf5ae.png', 2.06, 'Ellipse 458.png', '2025-03-14 23:36:48'),
(1151, '{\"size\":1.72265625,\"type\":\"png\"}', 'png', NULL, 1, '20230316/a5979792aa519ef1f1a32e6a6fad442a.png', 1.72, 'Ellipse 459.png', '2025-03-14 23:36:48'),
(1152, '{\"size\":1.7548828125,\"type\":\"png\"}', 'png', NULL, 1, '20230316/226620832d014545b4c7bca2726f47ad.png', 1.75, 'Ellipse 460.png', '2025-03-14 23:36:48'),
(1153, '{\"size\":1.6015625,\"type\":\"png\"}', 'png', NULL, 1, '20230316/692fea58d778ff46b6e25c1875732af0.png', 1.60, 'Ellipse 461.png', '2025-03-14 23:36:48'),
(1154, '{\"size\":0.919921875,\"type\":\"png\"}', 'png', NULL, 1, '20230316/01685cfc191c8bc88a6eab1401cfd3fb.png', 0.92, 'Ellipse 463.png', '2025-03-14 23:36:48'),
(1155, '{\"size\":2.0849609375,\"type\":\"png\"}', 'png', NULL, 1, '20230316/3637b77cc3a6b54c18e09c41fd026ec7.png', 2.08, 'Ellipse 465.png', '2025-03-14 23:36:48'),
(1156, '{\"size\":2.453125,\"type\":\"png\"}', 'png', NULL, 1, '20230316/d9c8772a24ce65650632a7bfde4d64c1.png', 2.45, 'Ellipse 466.png', '2025-03-14 23:36:48'),
(1157, '{\"size\":3.1298828125,\"type\":\"png\"}', 'png', NULL, 1, '20230316/3b4e535ac8594b8c451340fe71d4f37a.png', 3.13, 'Ellipse 468.png', '2025-03-14 23:36:48'),
(1158, '{\"size\":2.1923828125,\"type\":\"png\"}', 'png', NULL, 1, '20230316/a6c4aa45512c742cfa3e6200dd6d10f8.png', 2.19, 'Ellipse 470.png', '2025-03-14 23:36:48'),
(1159, '{\"size\":2.271484375,\"type\":\"png\"}', 'png', NULL, 1, '20230316/111e9cbbfa36b1d2f15f53e46aaef7a4.png', 2.27, 'Ellipse 476.png', '2025-03-14 23:36:48'),
(1160, '{\"size\":1.4921875,\"type\":\"png\"}', 'png', NULL, 1, '20230316/c9d73aa82001d62da94169b96bb34d3d.png', 1.49, 'Ellipse 478.png', '2025-03-14 23:36:48'),
(1161, '{\"size\":1.9501953125,\"type\":\"png\"}', 'png', NULL, 1, '20230316/059677b7bb2b019a2846525bc447eff1.png', 1.95, 'Ellipse 479.png', '2025-03-14 23:36:48'),
(1162, '{\"size\":3.4306640625,\"type\":\"png\"}', 'png', NULL, 1, '20230316/7aa919ca9de787b27ddc82681582d60b.png', 3.43, 'Ellipse 480.png', '2025-03-14 23:36:48'),
(1163, '{\"size\":1.5458984375,\"type\":\"png\"}', 'png', NULL, 1, '20230316/cd1fd439050ba14c3484ef04199a171b.png', 1.55, 'Ellipse 481.png', '2025-03-14 23:36:48'),
(1164, '{\"size\":1.484375,\"type\":\"png\"}', 'png', NULL, 1, '20230316/3fbe93ff4a1187be354ddc2ae78d8115.png', 1.48, 'Ellipse 482.png', '2025-03-14 23:36:48'),
(1165, '{\"size\":2.3369140625,\"type\":\"png\"}', 'png', NULL, 1, '20230316/fb982053b7cf3372ac2f539f0e49c582.png', 2.34, 'Ellipse 483.png', '2025-03-14 23:36:48'),
(1166, '{\"size\":2.712890625,\"type\":\"png\"}', 'png', NULL, 1, '20230316/fdc457adaf1792a6d17b9ee6f0718339.png', 2.71, 'Ellipse 484.png', '2025-03-14 23:36:48'),
(1167, '{\"size\":3.296875,\"type\":\"png\"}', 'png', NULL, 1, '20230330/8cb43aa79a3e22e214260ef8dc6090c2.png', 3.30, 'artifism-light.png', '2025-03-14 23:36:48'),
(1168, '{\"size\":3.5849609375,\"type\":\"png\"}', 'png', NULL, 1, '20230330/cabdcd95ee758d5c09e9b516e80a8bd5.png', 3.58, 'arifism-dark.png', '2025-03-14 23:36:48'),
(1169, '{\"size\":4.185546875,\"type\":\"ico\"}', 'ico', NULL, 1, '20230404/8cb18721948a20b11c98e1cca0872826.ico', 4.19, 'artifism-favicon.ico', '2025-03-14 23:36:48'),
(1170, '{\"size\":20.6796875,\"type\":\"png\"}', 'png', NULL, 1, '20230426/ee1e2e07e590f2649462ccb62c339504.png', 20.68, 'image_2023_04_11T09_09_21_059Z.png', '2025-03-14 23:36:48'),
(1182, '{\"size\":1000.71,\"type\":\"jpg\"}', 'jpg', NULL, 1, '20230611/dae9e49dc29f334b5120cb125455aea0.jpg', 1000.71, 'humanoid-robot-working-with-machine-factory-ai-generative.jpg', '2025-03-14 23:36:48'),
(1183, '{\"size\":1065.43,\"type\":\"jpg\"}', 'jpg', NULL, 1, '20230611/b5c631ef3d64bb1e948a958bd4de14d6.jpg', 1065.43, 'robot-hand-reaches-out-another-hand-with-grass-background.jpg', '2025-03-14 23:36:48'),
(1184, '{\"size\":467.06,\"type\":\"jpg\"}', 'jpg', NULL, 1, '20230611/e890bd85a3e61d503a92cda1c5985d89.jpg', 467.06, 'raster-illustration-young-man-wearing-vr-glasses-with-wires-personal-devices-sensor-neon-glow-cyberspace-metaverse-helmet-futuristic-vision-science-fiction-concept-3d-artwork-background.jpg', '2025-03-14 23:36:48'),
(1185, '{\"size\":836.34,\"type\":\"jpg\"}', 'jpg', NULL, 1, '20230611/22d6153dc4cc01f937f5da30c38bf235.jpg', 836.34, 'astronaut-spacewalk-mixed-media (1).jpg', '2025-03-14 23:36:48'),
(1186, '{\"size\":116.12890625,\"type\":\"png\"}', 'png', NULL, 1, '20230709/a419c745ee5cb1e9ac762f826b4c20a2.png', 116.13, 'Rectangle-robot.png', '2025-03-14 23:36:48'),
(1187, '{\"size\":36.43359375,\"type\":\"png\"}', 'png', NULL, 1, '20231007/6a0a67163cb2e7b9ab02b84f691d9305.png', 36.43, '100-years-ago-the-figure-of-a-smile-womanoid-reflecting-the-style-of-dress-in-the-23th-century-ele-969506291.png', '2025-03-14 23:36:48'),
(1188, '{\"size\":16.763671875,\"type\":\"png\"}', 'png', NULL, 1, '20240110/94b10b3b2419e9c8ae6952a1a3a7b5df.png', 16.76, 'a-handsome-20-year-old-guy-in-full-height-brown-hair-brown-eyes-freckles-on-his-face-angular-app-257326473.png', '2025-03-14 23:36:48'),
(1189, '{\"size\":39.650390625,\"type\":\"png\"}', 'png', NULL, 1, '20231007/e7125b837753faa9de628013f1c42998.png', 39.65, 'beautiful-woman-writer-brown-blonde-brown--eyes-round-frame-glasses-cute-face-ultra-detailed-i-189023692.png', '2025-03-14 23:36:48'),
(1190, '{\"size\":26.9033203125,\"type\":\"png\"}', 'png', NULL, 1, '20231007/940a5da2219e1ff2dd821f2e1dd52505.png', 26.90, 'full-scene-modern-bengali-girl-teenager-girl-normal-saree-long-black-hair-head-and-shoulders-po-656062952.png', '2025-03-14 23:36:48'),
(1191, '{\"size\":25.34765625,\"type\":\"png\"}', 'png', NULL, 1, '20231007/bafb7886bc935b538fd4625c9a56167e.png', 25.35, 'a-handsome-young-man-of-age-28-wearing-suit-looking-forwardmasculineconfidentdark-soft-background-892812288.png', '2025-03-14 23:36:48'),
(1192, '{\"size\":27.1220703125,\"type\":\"png\"}', 'png', NULL, 1, '20231007/e910d5fdf52c2ac080289e1223217fff.png', 27.12, 'a-moroccan-young-man-in-peasant-clothes-30-years-old-with-good-features-appears-to-have-a-kind-he-504078789.png', '2025-03-14 23:36:49'),
(1193, '{\"size\":21.673828125,\"type\":\"png\"}', 'png', NULL, 1, '20231207/a6d17870a845df5bc95ee0d7cb4d6cc8.png', 21.67, 'conventionally-attractive-twenty-five-year-old-american-man-messy-light-brown-hair-blue-eyes-fit - 176165787.png', '2025-03-14 23:36:49'),
(1194, '{\"size\":32.6083984375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/a553199ca0497038bde8699e2f70a857.png', 32.61, 'good-looking-young-male-as-a-character-in-a-comedy-moviemovie-scene-funnya-highly-detailed-fa.png', '2025-03-14 23:36:49'),
(1195, '{\"size\":22.537109375,\"type\":\"png\"}', 'png', NULL, 1, '20231007/0beb148526429036d054618558439ece.png', 22.54, 'portrait-of-an-adult-woman-40-yo-chromakey-beautiful-detailed-intricate-insanely-detailed-octane--229190450.png', '2025-03-14 23:36:49'),
(1196, '{\"size\":24.5302734375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/43bfb22d5132665241162a919fc51f47.png', 24.53, 'perfect-face-beautiful-swedish-army-woman-m90-camoflage-outfit-swedish-flag - brunette-hair-idea-436053226.png', '2025-03-14 23:36:49'),
(1197, '{\"size\":17.376953125,\"type\":\"png\"}', 'png', NULL, 1, '20231207/6e4e6ef0d9e271617258b239501d6594.png', 17.38, 'women-brown-hair-small-eye-straight-hair-front-low-nose-white-shirts-brown-eye-trending-on-a-443234400.png', '2025-03-14 23:36:49'),
(1198, '{\"size\":24.4404296875,\"type\":\"png\"}', 'png', NULL, 1, '20231007/add676aa81f7b015cca6b2ae2d3bb210.png', 24.44, 'a-ultra-realistic-portrait-of-a-charismatic-40-year-old-man-named-luiz-da-silva-perfect-composition-534792854.png', '2025-03-14 23:36:49'),
(1199, '{\"size\":35.322265625,\"type\":\"png\"}', 'png', NULL, 1, '20231007/e4c0f1a201e9ae05a16d3086175103af.png', 35.32, 'xi-jin-ping-clear-bright-eyes-head-and-shoulders-portrait-detailed-and-intricate-environment-4k-7860793.png', '2025-03-14 23:36:49'),
(1200, '{\"size\":18.0283203125,\"type\":\"png\"}', 'png', NULL, 1, '20231207/e80a86d1f709b6397efabb26f4732494.png', 18.03, 'an-alluring-and-fierce-israeli-man-with-short-blond-hair-and-brown-eyes-exuding-confidence-and-st-246686631.png', '2025-03-14 23:36:49'),
(1201, '{\"size\":20.0849609375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/5916badf5d574cfd7d27fdab8ed0fc32.png', 20.08, 'cinematic-photo - photography-model-shot-man-with-beard-and-short-hair-employer-in-nuclear-war-156508374.png', '2025-03-14 23:36:49'),
(1202, '{\"size\":23.123046875,\"type\":\"png\"}', 'png', NULL, 1, '20231207/91b1d2097402cc5b9b24e88ed47300fe.png', 23.12, 'handsome-twenty-five-year-old-caucasian-man-with-a-tan-short-neat-beard-brown-eyes-shaggy-dirty-b-919261148.png', '2025-03-14 23:36:49'),
(1203, '{\"size\":24.4404296875,\"type\":\"png\"}', 'png', NULL, 1, '20231007/add676aa81f7b015cca6b2ae2d3bb210.png', 24.44, 'a-ultra-realistic-portrait-of-a-charismatic-40-year-old-man-named-luiz-da-silva-perfect-composition-534792854.png', '2025-03-14 23:36:49'),
(1204, '{\"size\":39.650390625,\"type\":\"png\"}', 'png', NULL, 1, '20231007/e7125b837753faa9de628013f1c42998.png', 39.65, 'beautiful-woman-writer-brown-blonde-brown--eyes-round-frame-glasses-cute-face-ultra-detailed-i-189023692.png', '2025-03-14 23:36:49'),
(1205, '{\"size\":29.783203125,\"type\":\"png\"}', 'png', NULL, 1, '20231007/612121884d8f0902a50b7bbeeb42198d.png', 29.78, 'olpntng-style-full-head-photorealistic-photorealism-golden-ratio-present-day-attiretrendin-3905584.png', '2025-03-14 23:36:49'),
(1206, '{\"size\":36.43359375,\"type\":\"png\"}', 'png', NULL, 1, '20231007/6a0a67163cb2e7b9ab02b84f691d9305.png', 36.43, '100-years-ago-the-figure-of-a-smile-womanoid-reflecting-the-style-of-dress-in-the-23th-century-ele-969506291.png', '2025-03-14 23:36:49'),
(1207, '{\"size\":25.34765625,\"type\":\"png\"}', 'png', NULL, 1, '20231007/bafb7886bc935b538fd4625c9a56167e.png', 25.35, 'a-handsome-young-man-of-age-28-wearing-suit-looking-forwardmasculineconfidentdark-soft-background-892812288.png', '2025-03-14 23:36:49'),
(1208, '{\"size\":26.9033203125,\"type\":\"png\"}', 'png', NULL, 1, '20231007/940a5da2219e1ff2dd821f2e1dd52505.png', 26.90, 'full-scene-modern-bengali-girl-teenager-girl-normal-saree-long-black-hair-head-and-shoulders-po-656062952.png', '2025-03-14 23:36:49'),
(1209, '{\"size\":29.783203125,\"type\":\"png\"}', 'png', NULL, 1, '20231007/612121884d8f0902a50b7bbeeb42198d.png', 29.78, 'olpntng-style-full-head-photorealistic-photorealism-golden-ratio-present-day-attiretrendin-3905584.png', '2025-03-14 23:36:49'),
(1210, '{\"size\":39.650390625,\"type\":\"png\"}', 'png', NULL, 1, '20231007/e7125b837753faa9de628013f1c42998.png', 39.65, 'beautiful-woman-writer-brown-blonde-brown--eyes-round-frame-glasses-cute-face-ultra-detailed-i-189023692.png', '2025-03-14 23:36:49'),
(1211, '{\"size\":24.4404296875,\"type\":\"png\"}', 'png', NULL, 1, '20231007/add676aa81f7b015cca6b2ae2d3bb210.png', 24.44, 'a-ultra-realistic-portrait-of-a-charismatic-40-year-old-man-named-luiz-da-silva-perfect-composition-534792854.png', '2025-03-14 23:36:49'),
(1212, '{\"size\":35.322265625,\"type\":\"png\"}', 'png', NULL, 1, '20231007/e4c0f1a201e9ae05a16d3086175103af.png', 35.32, 'xi-jin-ping-clear-bright-eyes-head-and-shoulders-portrait-detailed-and-intricate-environment-4k-7860793.png', '2025-03-14 23:36:49'),
(1213, '{\"size\":23.73046875,\"type\":\"png\"}', 'png', NULL, 1, '20231007/6956261ea5765a2f09c551dda78b724f.png', 23.73, 'handsome-23-years-old-korean-male-with-shirt-double-eyelids-straight-nose-beautiful-clean-face-f-35782559.png', '2025-03-14 23:36:49'),
(1214, '{\"size\":32.0380859375,\"type\":\"png\"}', 'png', NULL, 1, '20231007/4ede9083362d921883ff3f25cd713516.png', 32.04, 'asian-modern-and-beautiful-hijab-girl-blue-hijab-color-plain-white-background-color-4k-hd-supe-563824481.png', '2025-03-14 23:36:49'),
(1215, '{\"size\":27.1220703125,\"type\":\"png\"}', 'png', NULL, 1, '20231007/e910d5fdf52c2ac080289e1223217fff.png', 27.12, 'a-moroccan-young-man-in-peasant-clothes-30-years-old-with-good-features-appears-to-have-a-kind-he-504078789.png', '2025-03-14 23:36:49'),
(1216, '{\"size\":45.037109375,\"type\":\"png\"}', 'png', NULL, 1, '20231007/eeec1a490559d5290c2d006585fbf7e9.png', 45.04, 'good-looking-young-femaleindigo-colorportrait-of-an-urban-good-looking-young-female-trending--337805477.png', '2025-03-14 23:36:49'),
(1217, '{\"size\":42.111328125,\"type\":\"png\"}', 'png', NULL, 1, '20231007/035bde6bf2f678cbc00b5d22ac032fc2.png', 42.11, 'painting-of-beautiful-young-woman-in-style-of-jeremy-mann-cinematic-4k-epic-steven-spielberg--741507031.png', '2025-03-14 23:36:49'),
(1218, '{\"size\":30.1904296875,\"type\":\"png\"}', 'png', NULL, 1, '20231007/aa6ec42b98fa1c92744e3ba195536b9b.png', 30.19, 'business-man-997159448.png', '2025-03-14 23:36:49'),
(1219, '{\"size\":22.845703125,\"type\":\"png\"}', 'png', NULL, 1, '20231007/efad894c4cc7512cdc1b51b27f51f3eb.png', 22.85, 'pixar-portrait-style-woman-painted-background-soft-lighting-589346799.png', '2025-03-14 23:36:49'),
(1220, '{\"size\":27.0849609375,\"type\":\"png\"}', 'png', NULL, 1, '20231007/2a49b1b158e311119f61c44c8465d910.png', 27.08, 'man-with-glasses-with-mustage-and-small-beard-only-on-his-chin--641033038.png', '2025-03-14 23:36:49'),
(1221, '{\"size\":22.537109375,\"type\":\"png\"}', 'png', NULL, 1, '20231007/0beb148526429036d054618558439ece.png', 22.54, 'portrait-of-an-adult-woman-40-yo-chromakey-beautiful-detailed-intricate-insanely-detailed-octane--229190450.png', '2025-03-14 23:36:49'),
(1222, '{\"size\":30.8720703125,\"type\":\"png\"}', 'png', NULL, 1, '20231007/2ed1c5393bb46bc1937a94393b3710a6.png', 30.87, 'portrait-of-detailed-very-beautiful-male-with--haughty-smile-make-a-selfi-beautiful-sexy-make-sel-75979952.png', '2025-03-14 23:36:49'),
(1223, '{\"size\":38.59765625,\"type\":\"png\"}', 'png', NULL, 1, '20231007/48149d04f4f6db5532d0ada05ca5498f.png', 38.60, 'a-close-up-of-a-irish-womans-face-extremely-detailed-detailed-eyes-detailed-lips-with-a-backdro-244215745.png', '2025-03-14 23:36:49'),
(1224, '{\"size\":24.171875,\"type\":\"png\"}', 'png', NULL, 1, '20231007/ffd3bb38e93d6472904c5d410a03f733.png', 24.17, 'ultra-realistic-digital-illustration-of-50-years-old-man-similar-with-uploaded-photo-intricate-deta-244647170.png', '2025-03-14 23:36:49'),
(1225, '{\"size\":48.8671875,\"type\":\"png\"}', 'png', NULL, 1, '20231007/5c2965b9f74e3a2e2b3878c43be6a382.png', 48.87, 'female27-years-oldlovely-pretty-cute-niceblond-hairvery-long-hairglassesvintage-fashi-10664113.png', '2025-03-14 23:36:49'),
(1226, '{\"size\":39.8984375,\"type\":\"png\"}', 'png', NULL, 1, '20231007/7a2bc624efef3702f499c778858d2327.png', 39.90, 'business-man-in-an-elegant-office-sitting-in-a-high-backed-chair-in-a-fine-italian-suit-35-years-818565589.png', '2025-03-14 23:36:49'),
(1227, '{\"size\":35.779296875,\"type\":\"png\"}', 'png', NULL, 1, '20231007/a1aa430a949c13d17d93f8a002a61ea8.png', 35.78, 'a-colorful-illustration--of-a-beautiful-woman-reading-a-book-sticker-style-colorful-sticker-2d-c-686460080.png', '2025-03-14 23:36:49'),
(1228, '{\"size\":25.998046875,\"type\":\"png\"}', 'png', NULL, 1, '20231007/a1b6bd47771bdd70eb59dfba3b9cab80.png', 26.00, 'a-man-standing-outside-with-a-microphone-935719209.png', '2025-03-14 23:36:49'),
(1229, '{\"size\":22.6669921875,\"type\":\"png\"}', 'png', NULL, 1, '20231207/e45728af80b03c137c0de6534cb19aa2.png', 22.67, 'photographed-using-sony-a9-ii-mirrorless-camera-by-photographer-photorealistic-a-20-years-old - 6799685.png', '2025-03-14 23:36:49'),
(1230, '{\"size\":32.6083984375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/a553199ca0497038bde8699e2f70a857.png', 32.61, 'good-looking-young-male-as-a-character-in-a-comedy-moviemovie-scene-funnya-highly-detailed-fa.png', '2025-03-14 23:36:49'),
(1231, '{\"size\":24.5302734375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/43bfb22d5132665241162a919fc51f47.png', 24.53, 'perfect-face-beautiful-swedish-army-woman-m90-camoflage-outfit-swedish-flag - brunette-hair-idea-436053226.png', '2025-03-14 23:36:49'),
(1232, '{\"size\":20.328125,\"type\":\"png\"}', 'png', NULL, 1, '20231207/42f2bb5c2c7e027af88a446041c8df84.png', 20.33, 'portrait-real-photo-handsome-handsome-brutal-guy-30-years-old-brutal-short-blonde-hair-big-blue.png', '2025-03-14 23:36:49'),
(1233, '{\"size\":22.3720703125,\"type\":\"png\"}', 'png', NULL, 1, '20231207/7ca04b3c119518227d9e6601acdda6f5.png', 22.37, 'a-beautiful-stunning-canadian-woman-with-perfect-amazing-eyes-standing-and-wearing-an-outfit-that-i-39970057.png', '2025-03-14 23:36:49'),
(1234, '{\"size\":20.0849609375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/5916badf5d574cfd7d27fdab8ed0fc32.png', 20.08, 'cinematic-photo - photography-model-shot-man-with-beard-and-short-hair-employer-in-nuclear-war-156508374.png', '2025-03-14 23:36:49'),
(1235, '{\"size\":22.1474609375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/412f50f5c4b094f396284fe7ec2359e4.png', 22.15, 'a-beautiful-young-woman-23-years-old-wears-a-blazer-and-skirt-is-sitting-at-a-cafeteria-table-clear - 972738875.png', '2025-03-14 23:36:49'),
(1236, '{\"size\":21.673828125,\"type\":\"png\"}', 'png', NULL, 1, '20231207/a6d17870a845df5bc95ee0d7cb4d6cc8.png', 21.67, 'conventionally-attractive-twenty-five-year-old-american-man-messy-light-brown-hair-blue-eyes-fit - 176165787.png', '2025-03-14 23:36:49'),
(1237, '{\"size\":23.123046875,\"type\":\"png\"}', 'png', NULL, 1, '20231207/91b1d2097402cc5b9b24e88ed47300fe.png', 23.12, 'handsome-twenty-five-year-old-caucasian-man-with-a-tan-short-neat-beard-brown-eyes-shaggy-dirty-b-919261148.png', '2025-03-14 23:36:49'),
(1238, '{\"size\":17.376953125,\"type\":\"png\"}', 'png', NULL, 1, '20231207/6e4e6ef0d9e271617258b239501d6594.png', 17.38, 'women-brown-hair-small-eye-straight-hair-front-low-nose-white-shirts-brown-eye-trending-on-a-443234400.png', '2025-03-14 23:36:49'),
(1239, '{\"size\":24.1787109375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/b7cb0a03cce07af5e452f9467197b064.png', 24.18, 'young-woman-argentinaie-aborigine-with-delicate-argentinaie-earrings-detailed-delicate-ethnic-earr-106339384.png', '2025-03-14 23:36:49'),
(1240, '{\"size\":24.8134765625,\"type\":\"png\"}', 'png', NULL, 1, '20231207/33e815898fb7149cfc356593cccdf7e4.png', 24.81, 'young-woman-inca-aborigine-with-feather-earrings-beautiful-wearing-poncho-long-hair-young-woman - 874209102.png', '2025-03-14 23:36:49'),
(1241, '{\"size\":18.0283203125,\"type\":\"png\"}', 'png', NULL, 1, '20231207/e80a86d1f709b6397efabb26f4732494.png', 18.03, 'an-alluring-and-fierce-israeli-man-with-short-blond-hair-and-brown-eyes-exuding-confidence-and-st-246686631.png', '2025-03-14 23:36:50'),
(1242, '{\"size\":20.16796875,\"type\":\"png\"}', 'png', NULL, 1, '20231207/d7cf88be33cde685dcc4d2189fabed45.png', 20.17, 'stylized-fantasy-portrait-of-a-beautiful-casual-smiling-young-desert-woman-wearing-adventurous-dark - 393326593.png', '2025-03-14 23:36:50'),
(1243, '{\"size\":20.3740234375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/27b2833ffdb3eb4ae3ff73cf5b24ebfd.png', 20.37, 'a-handsome-arab-young-man-without-a-hat-tells-stories-of-history-miki-asai-macro-photography-close-452297249.png', '2025-03-14 23:36:50'),
(1244, '{\"size\":21.18359375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/e932e83551a2037a6330af5b1bae96b5.png', 21.18, 'hermosa-seorita-18-aos-pelo-castao-largo-ligera-sonrisa-blusa-ligera-plano-medio-corto-4k-real-341677079.png', '2025-03-14 23:36:50'),
(1245, '{\"size\":17.1337890625,\"type\":\"png\"}', 'png', NULL, 1, '20231207/c9f5d978eef0c65db49a58c7b6eb6afc.png', 17.13, 'color-de-saco-negro-745032347.png', '2025-03-14 23:36:50'),
(1246, '{\"size\":17.802734375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/183c7a31952d424571877d9d8a234c7c.png', 17.80, 'irma-grese - 1942-nazi - highly-detailed-professional-digital-painting-unreal-engine-5-photorealis-687672529.png', '2025-03-14 23:36:50'),
(1247, '{\"size\":18.177734375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/c82a41040d545eff79bf4ed9e3d5daab.png', 18.18, '25-year-old-belgian-man-portrait-backlighting-head-only-slightly-overweight-broad-round-face-f-804028795.png', '2025-03-14 23:36:50'),
(1248, '{\"size\":21.08984375,\"type\":\"png\"}', 'png', NULL, 1, '20231207/87892a8b78128e02bf9620a66719453b.png', 21.09, 'a-realistic-photo-of-a-handsome-young-man-of-germanic-descent-close-cropped-hair-strong-features - 755550577.png', '2025-03-14 23:36:50'),
(1249, '{\"size\":19.115234375,\"type\":\"png\"}', 'png', NULL, 1, '20240312/a0596457a3be0d35f9e6af4777854510.png', 19.12, 'an-extremely-detailed-photo-portrait-of-beautiful-caucasian-female-in-corporate-clothes-brown-curly-872876670.png', '2025-03-14 23:36:50'),
(1250, '{\"size\":16.6650390625,\"type\":\"png\"}', 'png', NULL, 1, '20240312/270a87991c1f41ac848f9a3f7d1618ea.png', 16.67, 'black-background-photography-nice-beautiful-french-embarrassed-young-lady-poses-for-a-photo-lustfu-298195612 (1).png', '2025-03-14 23:36:50'),
(1251, '{\"size\":19.3017578125,\"type\":\"png\"}', 'png', NULL, 1, '20240312/a0bdd792bd435cfc28cf2b53eb46bead.png', 19.30, 'detailed-photograph-of-a-serious-looking-young-gentlewoman-looking-straight-into-the-camera-standin-65892122.png', '2025-03-14 23:36:50'),
(1252, '{\"size\":5.0048828125,\"type\":\"jpeg\"}', 'jpeg', NULL, 1, '20240312/29114203103557051d3b3dc5d3d998cb.jpeg', 5.00, 'main-bhi-sabji-banaa-rahi-hoon - 836036885.jpeg', '2025-03-14 23:36:50'),
(1253, '{\"size\":11.755859375,\"type\":\"png\"}', 'png', NULL, 1, '20240312/3436f90c8e8e5264f4074a7f4c3ebfd0.png', 11.76, 'portrait-from-the-waist-up-a-pleasant-looking-businessman-a-confident-look-in-a-business-suit-loo-318967739.png', '2025-03-14 23:36:50'),
(1254, '{\"size\":2.841796875,\"type\":\"png\"}', 'png', NULL, 1, '20240703/38ac8dce684255efc0f6c2d14590a76e.png', 2.84, 'default.png', '2025-03-14 23:36:51'),
(1255, '{\"size\":4.0107421875,\"type\":\"png\"}', 'png', NULL, 1, '20241008\\2bcf18ce59a7b45c4bca7a5327333f41.png', 4.01, 'img-robot-face.png', '2025-03-14 23:36:51'),
(1256, '{\"size\":38.671875,\"type\":\"png\"}', 'png', NULL, 1, '20240926\\3b301af11bcfa99ae97059eefb43f480.png', 38.67, 'robo image.png', '2025-03-14 23:36:51'),
(1257, '{\"size\":16.763671875,\"type\":\"png\"}', 'png', NULL, 1, '20240110/94b10b3b2419e9c8ae6952a1a3a7b5df.png', 16.76, 'a-handsome-20-year-old-guy-in-full-height-brown-hair-brown-eyes-freckles-on-his-face-angular-app-257326473.png', '2025-03-14 23:36:52'),
(1258, '{\"size\":13.84375,\"type\":\"png\"}', 'png', NULL, 1, '20240110/21182caa8c6d76c22f5295e48cb6cd62.png', 13.84, 'a-photo-realistic-portrait-of-a-young-brazilian-man-beard-character-20yr-old-happy-932249148.png', '2025-03-14 23:36:52'),
(1259, '{\"size\":9.951171875,\"type\":\"png\"}', 'png', NULL, 1, '20240110/694a124e361dbd1733556a97b5c42116.png', 9.95, 'young-male-students-realistic-highly-detailed-8k-808049739.png', '2025-03-14 23:36:52'),
(1260, '{\"size\":12.4931640625,\"type\":\"png\"}', 'png', NULL, 1, '20240110/0e2da067ac3242acf3df1126f963e32d.png', 12.49, 'sexy-man-16-years-balkan-soccer-player-ultra-realistic-real-face-4k-face-in-center-grey-back-134585987.png', '2025-03-14 23:36:52'),
(1261, '{\"size\":13.69140625,\"type\":\"png\"}', 'png', NULL, 1, '20240110/778767695ddd38831879ffe286e656d9.png', 13.69, '90s-fashion-inspired-portrait-close-up-photo-of-a-high-school-girl-with-fair-skin-backpack-secured-404148249.png', '2025-03-14 23:36:52'),
(1262, '{\"size\":13.734375,\"type\":\"png\"}', 'png', NULL, 1, '20240110/957b55d27e1f12e0e5c285bf46050519.png', 13.73, 'a-teenage-girl-with-black-hair-and-a-mark-on-her-wrist-wearing-a-school-uniform-and-a-backpack-she-376572093.png', '2025-03-14 23:36:52'),
(1263, '{\"size\":305.390625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/e08dc47dbcfae42066aef937ae4c4bbb.png', 305.39, 'main-bg-dark.png', '2025-03-14 23:36:52'),
(1264, '{\"size\":290.0087890625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/6d5f7e134dcccb2d24bf9c1bdfe50390.png', 290.01, 'main-bg.png', '2025-03-14 23:36:52'),
(1265, '{\"size\":47.49609375,\"type\":\"png\"}', 'png', NULL, 1, '20231206/530c02dad9d3e967990552078c9e804a.png', 47.50, 'mobile-hero-bg.png', '2025-03-14 23:36:52'),
(1266, '{\"size\":49.7958984375,\"type\":\"png\"}', 'png', NULL, 1, '20231206/a2fc369a55f48ae3b0c524b0e73c19e5.png', 49.80, 'mobile-hero-dark-bg.png', '2025-03-14 23:36:52'),
(1267, '{\"size\":31.2548828125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/1fa6596b55f481a903717d1d3ab7353b.png', 31.25, 'floating-robot.png', '2025-03-14 23:36:52'),
(1268, '{\"size\":20.0947265625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/4c2d7dfae083fcd93701806ae8fdb775.png', 20.09, 'floating-image-small.png', '2025-03-14 23:36:52'),
(1269, '{\"size\":64.9052734375,\"type\":\"png\"}', 'png', NULL, 1, '20231206/a94420f73c6d5a063572ef63dda3517e.png', 64.91, 'background-one.png', '2025-03-14 23:36:52'),
(1270, '{\"size\":44.9892578125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/f74a2b62c65012b6d5ab5d2b0ad316c7.png', 44.99, 'robot-hand.png', '2025-03-14 23:36:52'),
(1271, '{\"size\":18.4384765625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/f0393e53ce18ff73add04126b8a22270.png', 18.44, 'robot.png', '2025-03-14 23:36:52'),
(1272, '{\"size\":7.849609375,\"type\":\"png\"}', 'png', NULL, 1, '20231206/aa19d13e9bbc81b3145bf1f3f5609c2e.png', 7.85, 'dark-image-floating.png', '2025-03-14 23:36:52'),
(1273, '{\"size\":45.15625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/7e2983395853e80fc241d39587a814e8.png', 45.16, 'image-dash.png', '2025-03-14 23:36:52'),
(1274, '{\"size\":8.021484375,\"type\":\"png\"}', 'png', NULL, 1, '20231206/2634ae316f3414077b0aed1c2439e136.png', 8.02, 'image-floating.png', '2025-03-14 23:36:52'),
(1275, '{\"size\":21.328125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/d53b3e3df2b5786d65564a61acd732ad.png', 21.33, 'dark-image-use-cases.png', '2025-03-14 23:36:52'),
(1276, '{\"size\":19.5791015625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/d79a61654674c81e0dc1501a97e23372.png', 19.58, 'image-use-cases.png', '2025-03-14 23:36:52'),
(1277, '{\"size\":30.314453125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/d1410b52fed9fd0f05d8938d35f1819e.png', 30.31, 'robot-image-2.png', '2025-03-14 23:36:52'),
(1278, '{\"size\":3.5087890625,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/1abc1c43fdc1125632c0405d89ebbd75.svg', 3.51, 'flash 1.svg', '2025-03-14 23:36:52'),
(1279, '{\"size\":2.1435546875,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/c9425cf2b8fd125b11e515d63e02c804.svg', 2.14, 'rocket.svg', '2025-03-14 23:36:52'),
(1280, '{\"size\":2.2236328125,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/5f3d473fb049f7f6045bf6811cb00ec1.svg', 2.22, 'pen-tool.svg', '2025-03-14 23:36:52'),
(1281, '{\"size\":117.36328125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/5f57072d18b1ef5eb6944ce21894e9d2.png', 117.36, 'mountain.png', '2025-03-14 23:36:52'),
(1282, '{\"size\":132.41015625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/9678b04cf2a8f2acab8218849b4c86a3.png', 132.41, 'deer.png', '2025-03-14 23:36:52'),
(1283, '{\"size\":151.0087890625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/7a31006bdfd11434a3cc6d2264607d5b.png', 151.01, 'potrait.png', '2025-03-14 23:36:52'),
(1284, '{\"size\":99.2978515625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/9e2794e13e5a84bc4746e3d3e74251ae.png', 99.30, 'sports-car.png', '2025-03-14 23:36:52'),
(1285, '{\"size\":123.494140625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/ef503ae5c2b4ef9f2fa2e4549aff9584.png', 123.49, 'ziraffe.png', '2025-03-14 23:36:52'),
(1286, '{\"size\":38.0478515625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/706834b54dd60510c2b3578e1ed08bfc.png', 38.05, 'cloud-human.png', '2025-03-14 23:36:52'),
(1287, '{\"size\":99.2978515625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/e48e4e02cbb94d424f2de0f7abba7db7.png', 99.30, 'car.png', '2025-03-14 23:36:52'),
(1288, '{\"size\":32.3134765625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/eec361e16599c8301c84c065b75fe010.png', 32.31, 'helmet.png', '2025-03-14 23:36:52'),
(1289, '{\"size\":27.7060546875,\"type\":\"png\"}', 'png', NULL, 1, '20231206/e30a4408f3463ec6629ba5e17a2fc552.png', 27.71, 'human-brain.png', '2025-03-14 23:36:52'),
(1290, '{\"size\":30.0078125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/5415e032da3c25d121bad2011043cff7.png', 30.01, 'human-group.png', '2025-03-14 23:36:52'),
(1291, '{\"size\":21.9619140625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/c2cf9d978aaabc534f078d235fa14139.png', 21.96, 'rainbow.png', '2025-03-14 23:36:52'),
(1292, '{\"size\":34.447265625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/6dbb9fed6c5d243c196a98601a75585d.png', 34.45, 'Rectangle-robot.png', '2025-03-14 23:36:52'),
(1293, '{\"size\":26.6689453125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/c666b9e6ed564ae7ccf01bbebf899f2e.png', 26.67, 'robotics-hand.png', '2025-03-14 23:36:52'),
(1294, '{\"size\":31.0625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/4ed0c8417b3d1e5a2dae389a3456b334.png', 31.06, 'space-ship.png', '2025-03-14 23:36:52'),
(1295, '{\"size\":64.423828125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/b75521158893bdeec4ed5897175a9a92.png', 64.42, 'dark-bg-two.png', '2025-03-14 23:36:52'),
(1296, '{\"size\":69.791015625,\"type\":\"png\"}', 'png', NULL, 1, '20231206/0a8a47f13ec69c1ec1bcac39ac343773.png', 69.79, 'bg-two.png', '2025-03-14 23:36:52'),
(1297, '{\"size\":43.466796875,\"type\":\"png\"}', 'png', NULL, 1, '20231206/ba09136613027ea56404986b2901f967.png', 43.47, 'mobile-bg-2.png', '2025-03-14 23:36:52'),
(1298, '{\"size\":39.3173828125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/4c7cb0c9b8e582dd8f88082e71dd263b.png', 39.32, 'mobile-bg-dark-2.png', '2025-03-14 23:36:52'),
(1299, '{\"size\":17.7744140625,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/25ac749aaaf607179d97f0bc700f70da.svg', 17.77, 'conn3ctr.svg', '2025-03-14 23:36:52'),
(1300, '{\"size\":17.7705078125,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/e27dc78dd9b87c189c330ae92c0339f3.svg', 17.77, 'conn3ctr-dark.svg', '2025-03-14 23:36:52'),
(1301, '{\"size\":9.837890625,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/23c5ac6d472eec3e9dcc5bea6f100b08.svg', 9.84, 'fusion.svg', '2025-03-14 23:36:52'),
(1302, '{\"size\":9.83203125,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/2af1fcb36ddf02941a64f7b2d698aca3.svg', 9.83, 'fusion-dark.svg', '2025-03-14 23:36:52'),
(1303, '{\"size\":15.0009765625,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/26095ea6d2b67e714112c5c681cfa581.svg', 15.00, 'g-diamond.svg', '2025-03-14 23:36:52'),
(1304, '{\"size\":14.9990234375,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/f2e1f483961ad25daa1048b605b605f6.svg', 15.00, 'g-diamond-dark.svg', '2025-03-14 23:36:52'),
(1305, '{\"size\":13.181640625,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/7bf15bba56e2917093707576728be604.svg', 13.18, 'lense-eye-dark.svg', '2025-03-14 23:36:52'),
(1306, '{\"size\":13.1875,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/780eabea4d52188a109ca419a2efa503.svg', 13.19, 'lense-eye.svg', '2025-03-14 23:36:52'),
(1307, '{\"size\":14.7255859375,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/ab65d2d9f3835024ee9a110327c8b452.svg', 14.73, 'one-square.svg', '2025-03-14 23:36:52'),
(1308, '{\"size\":14.7255859375,\"type\":\"svg\"}', 'svg', NULL, 1, '20231206/cfcbaeb9421b0c639e017fe16c136c40.svg', 14.73, 'one-square-dark.svg', '2025-03-14 23:36:52'),
(1309, '{\"size\":17.21875,\"type\":\"png\"}', 'png', NULL, 1, '20231206/80d11c9b6687bfefa68b236d8a5665a7.png', 17.22, 'footer-bg.png', '2025-03-14 23:36:52'),
(1310, '{\"size\":23.4033203125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/f4ecc96b70f326e8d042a44a0f4ff5a9.png', 23.40, 'Holding_a_butterfly.png', '2025-03-14 23:36:52'),
(1311, '{\"size\":122.1787109375,\"type\":\"png\"}', 'png', NULL, 1, '20231206/249342f82d4838a1f550384dce163518.png', 122.18, 'bg-four.png', '2025-03-14 23:36:52'),
(1312, '{\"size\":129.595703125,\"type\":\"png\"}', 'png', NULL, 1, '20231206/1f9b9fe55d960b0854fce0757b4d9639.png', 129.60, 'bg-three.png', '2025-03-14 23:36:52'),
(1313, '{\"size\":51.3017578125,\"type\":\"png\"}', 'png', NULL, 1, '20250315\\40c9813ceef168215d982d34aaff478e.png', 51.30, 'LawgicAI.png', '2025-03-15 02:51:59'),
(1314, '{\"size\":38.4130859375,\"type\":\"png\"}', 'png', NULL, 1, '20250315\\7aa382b0132ca3dd65f6acf55d3ac603.png', 38.41, 'LawgicAI_night.png', '2025-03-15 02:53:45'),
(1315, '{\"size\":86.880859375,\"type\":\"png\"}', 'png', NULL, 1, '20250315\\32e8ed3982f8f8281417ec4ee083108c.png', 86.88, 'cabdcd95ee758d5c09e9b516e80a8bd5.png', '2025-03-15 04:38:13'),
(1316, '{\"size\":72.7890625,\"type\":\"png\"}', 'png', NULL, 1, '20250315\\8d593fd1a5a8bae1a7148dd27e3ed6fe.png', 72.79, 'LawgicAI (2).png', '2025-03-15 04:38:50'),
(1317, '{\"size\":4.7265625,\"type\":\"jpg\"}', 'jpg', NULL, 1, '20250316\\ef924e2861969244262b57769ac31123.jpg', 4.73, 'مكتب-سهل-السلمي-للمحاماة-والاستشارات.jpg', '2025-03-16 22:50:20'),
(1318, '{\"size\":3.2392578125,\"type\":\"jpg\"}', 'jpg', NULL, 1, '20250316\\9632cd379b22c5d42bf7208003991f53.jpg', 3.24, 'sahalfirm_logo.jpg', '2025-03-16 22:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `parent_id`, `user_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Drive', 'drive-1', '2025-03-14 23:36:50', NULL),
(2, NULL, 2, 'Drive', 'drive-2', '2025-03-14 23:36:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `folder_items`
--

CREATE TABLE `folder_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `item_type` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folder_meta`
--

CREATE TABLE `folder_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alias` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `sandbox` tinyint(1) NOT NULL COMMENT '1 - Sandbox & 0 - Production',
  `data` text NOT NULL,
  `instruction` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `alias`, `name`, `sandbox`, `data`, `instruction`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cashondelivery', 'CashOnDelivery', 0, '{\"status\":\"1\",\"instruction\":\"Kindly verify your order, and make cash payment in full (as mentioned on order invoice or shipping label) when the delivery agent arrives at your doorstep with your order.\"}', 'Kindly verify your order, and make cash payment in full (as mentioned on order invoice or shipping label) when the delivery agent arrives at your doorstep with your order.', 'thumbnail.png', 1, NULL, NULL),
(2, 'directbanktransfer', 'DirectBankTransfer', 1, '{\"status\":\"1\",\"instruction\":\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.\"}', 'Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.', 'thumbnail.png', 1, NULL, NULL),
(3, 'checkpayments', 'CheckPayments', 1, '{\"status\":\"1\",\"instruction\":\"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.\"}', 'Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.', 'thumbnail.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `geolocale_cities`
--

CREATE TABLE `geolocale_cities` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'Auto increase ID',
  `country_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Country ID',
  `division_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Division ID',
  `name` varchar(191) NOT NULL DEFAULT '' COMMENT 'City Name',
  `full_name` varchar(191) DEFAULT NULL COMMENT 'City Fullname',
  `code` varchar(64) DEFAULT NULL COMMENT 'City Code',
  `iana_timezone` varchar(191) DEFAULT NULL COMMENT 'IANA Timezone Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocale_cities`
--

INSERT INTO `geolocale_cities` (`id`, `country_id`, `division_id`, `name`, `full_name`, `code`, `iana_timezone`) VALUES
(99, 68, 500, 'Abu Dhabi', NULL, 'az', 'Asia/Dubai'),
(100, 68, NULL, 'Al l\'Ayn', NULL, 'al', NULL),
(101, 68, 502, 'Dubai', NULL, 'du', 'Asia/Dubai'),
(102, 68, NULL, 'Ash Shariqah', NULL, 'sh', NULL),
(98348, 68, 506, 'Umm Al Quwain City', 'Umm Al Quwain City', NULL, 'Asia/Dubai'),
(98349, 68, 504, 'Ras Al Khaimah City', 'Ras Al Khaimah City', NULL, 'Asia/Dubai'),
(98350, 68, 500, 'Muzayri‘', 'Muzayri`', NULL, 'Asia/Dubai'),
(98351, 68, 500, 'Zayed City', 'Zayed City', NULL, 'Asia/Dubai'),
(98352, 68, 505, 'Khawr Fakkān', 'Khawr Fakkan', NULL, 'Asia/Dubai'),
(98353, 68, 503, 'Dibba Al-Fujairah', 'Dibba Al-Fujairah', NULL, 'Asia/Dubai'),
(98354, 68, 503, 'Dibba Al-Hisn', 'Dibba Al-Hisn', NULL, 'Asia/Dubai'),
(98355, 68, 505, 'Sharjah', 'Sharjah', NULL, 'Asia/Dubai'),
(98356, 68, 500, 'Ar Ruways', 'Ar Ruways', NULL, 'Asia/Dubai'),
(98357, 68, 503, 'Al Fujairah City', 'Al Fujairah City', NULL, 'Asia/Dubai'),
(98358, 68, 500, 'Al Ain City', 'Al Ain City', NULL, 'Asia/Dubai'),
(98359, 68, 501, 'Ajman City', 'Ajman City', NULL, 'Asia/Dubai'),
(98360, 68, 505, 'Adh Dhayd', 'Adh Dhayd', NULL, 'Asia/Dubai'),
(98361, 68, 500, 'Khalifah A City', 'Khalifah A City', NULL, 'Asia/Dubai'),
(98362, 68, 500, 'Bani Yas City', 'Bani Yas City', NULL, 'Asia/Dubai'),
(98363, 68, 500, 'Musaffah', 'Musaffah', NULL, 'Asia/Dubai'),
(98364, 68, 500, 'Al Shamkhah City', 'Al Shamkhah City', NULL, 'Asia/Dubai'),
(98365, 68, 503, 'Reef Al Fujairah City', 'Reef Al Fujairah City', NULL, 'Asia/Dubai'),
(133162, 68, 505, 'Murbaḩ', 'Murbah', NULL, 'Asia/Dubai');

-- --------------------------------------------------------

--
-- Table structure for table `geolocale_cities_locale`
--

CREATE TABLE `geolocale_cities_locale` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'Auto increase ID',
  `city_id` bigint(20) UNSIGNED NOT NULL COMMENT 'City ID',
  `name` varchar(191) NOT NULL DEFAULT '' COMMENT 'Localized city name',
  `alias` varchar(191) DEFAULT NULL COMMENT 'Localized city alias',
  `full_name` varchar(191) DEFAULT NULL COMMENT 'Localized city fullname',
  `locale` varchar(6) DEFAULT NULL COMMENT 'locale name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocale_cities_locale`
--

INSERT INTO `geolocale_cities_locale` (`id`, `city_id`, `name`, `alias`, `full_name`, `locale`) VALUES
(99, 99, '阿布扎比', NULL, NULL, 'zh-cn'),
(100, 100, '艾因', NULL, NULL, 'zh-cn'),
(101, 101, '迪拜', NULL, NULL, 'zh-cn'),
(102, 102, '沙迦', NULL, NULL, 'zh-cn'),
(3856, 99, 'Abu Dhabi', NULL, NULL, 'en'),
(3857, 100, 'Al l\'Ayn', NULL, NULL, 'en'),
(3858, 101, 'Dubai', NULL, NULL, 'en'),
(3859, 102, 'Ash Shariqah', NULL, NULL, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `geolocale_continents`
--

CREATE TABLE `geolocale_continents` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'Auto increase ID',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT 'Continent Name',
  `code` varchar(2) NOT NULL DEFAULT '' COMMENT 'Continent Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocale_continents`
--

INSERT INTO `geolocale_continents` (`id`, `name`, `code`) VALUES
(1, 'Asia', 'as'),
(2, 'Europe', 'eu'),
(3, 'Africa', 'af'),
(4, 'Oceania', 'oc'),
(5, 'Antarctica', 'an'),
(6, 'North America', 'na'),
(7, 'South America', 'sa');

-- --------------------------------------------------------

--
-- Table structure for table `geolocale_continents_locale`
--

CREATE TABLE `geolocale_continents_locale` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'Auto increase ID',
  `continent_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Continent ID',
  `name` varchar(191) DEFAULT NULL COMMENT 'Localized Name',
  `alias` varchar(191) DEFAULT NULL COMMENT 'Localized Alias',
  `abbr` varchar(16) DEFAULT NULL COMMENT 'Localized Abbr name',
  `full_name` varchar(191) DEFAULT NULL COMMENT 'Localized Fullname',
  `locale` varchar(6) DEFAULT NULL COMMENT 'Locale'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocale_continents_locale`
--

INSERT INTO `geolocale_continents_locale` (`id`, `continent_id`, `name`, `alias`, `abbr`, `full_name`, `locale`) VALUES
(8, 1, 'Asia', NULL, 'as', NULL, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `geolocale_countries`
--

CREATE TABLE `geolocale_countries` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'Auto increase ID',
  `continent_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Continent ID',
  `name` varchar(191) NOT NULL DEFAULT '' COMMENT 'Country Common Name',
  `full_name` varchar(191) DEFAULT NULL COMMENT 'Country Fullname',
  `capital` varchar(191) DEFAULT NULL COMMENT 'Capital Common Name',
  `code` varchar(4) DEFAULT NULL COMMENT 'ISO3166-1-Alpha-2',
  `code_alpha3` varchar(6) DEFAULT NULL COMMENT 'ISO3166-1-Alpha-3',
  `code_numeric` smallint(6) DEFAULT NULL COMMENT 'ISO3166-1-Numeric',
  `emoji` varchar(16) DEFAULT NULL COMMENT 'Country Emoji',
  `has_division` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Has Division',
  `currency_code` varchar(3) DEFAULT NULL COMMENT 'iso_4217_code',
  `currency_name` varchar(128) DEFAULT NULL COMMENT 'iso_4217_name',
  `currency_symbol` varchar(191) DEFAULT NULL,
  `tld` varchar(8) DEFAULT NULL COMMENT 'Top level domain',
  `callingcode` varchar(8) DEFAULT NULL COMMENT 'Calling prefix'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocale_countries`
--

INSERT INTO `geolocale_countries` (`id`, `continent_id`, `name`, `full_name`, `capital`, `code`, `code_alpha3`, `code_numeric`, `emoji`, `has_division`, `currency_code`, `currency_name`, `currency_symbol`, `tld`, `callingcode`) VALUES
(68, 1, 'United Arab Emirates', 'The United Arab Emirates', 'Abu Dhabi', 'ae', 'are', 784, '🇦🇪', 0, 'AED', 'UAE Dirham', NULL, '.ae', '971');

-- --------------------------------------------------------

--
-- Table structure for table `geolocale_countries_locale`
--

CREATE TABLE `geolocale_countries_locale` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'Auto increase ID',
  `country_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Country ID',
  `name` varchar(191) NOT NULL DEFAULT '' COMMENT 'Localized Country Name',
  `alias` varchar(191) DEFAULT NULL COMMENT 'Localized Country Alias',
  `abbr` varchar(16) DEFAULT NULL COMMENT 'Localized Country Abbr Name',
  `full_name` varchar(191) DEFAULT NULL COMMENT 'Localized Country Fullname',
  `currency_name` varchar(191) DEFAULT NULL COMMENT 'Localized Country Currency Name',
  `locale` varchar(6) DEFAULT NULL COMMENT 'locale'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocale_countries_locale`
--

INSERT INTO `geolocale_countries_locale` (`id`, `country_id`, `name`, `alias`, `abbr`, `full_name`, `currency_name`, `locale`) VALUES
(315, 68, 'United Arab Emirates', NULL, NULL, 'The United Arab Emirates', 'UAE Dirham', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `geolocale_divisions`
--

CREATE TABLE `geolocale_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'Auto Increase ID',
  `country_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Country ID',
  `name` varchar(191) NOT NULL DEFAULT '' COMMENT 'Division Common Name',
  `full_name` varchar(191) DEFAULT NULL COMMENT 'Division Full Name',
  `code` varchar(64) DEFAULT NULL COMMENT 'ISO 3166-2 Code',
  `has_city` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Has city?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocale_divisions`
--

INSERT INTO `geolocale_divisions` (`id`, `country_id`, `name`, `full_name`, `code`, `has_city`) VALUES
(500, 68, 'Abu Dhabi', NULL, '1', 0),
(501, 68, 'Ajman', NULL, '2', 0),
(502, 68, 'Dubai', NULL, '3', 0),
(503, 68, 'Fujairah', NULL, '4', 0),
(504, 68, 'Raʼs al Khaymah', NULL, '5', 0),
(505, 68, 'Sharjah', NULL, '6', 0),
(506, 68, 'Imārat Umm al Qaywayn', NULL, '7', 0);

-- --------------------------------------------------------

--
-- Table structure for table `geolocale_divisions_locale`
--

CREATE TABLE `geolocale_divisions_locale` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'Auto Increase ID',
  `division_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Division ID',
  `name` varchar(191) NOT NULL DEFAULT '' COMMENT 'Localized Division Name',
  `abbr` varchar(16) DEFAULT NULL COMMENT 'Localized Division Abbr',
  `alias` varchar(191) DEFAULT NULL COMMENT 'Localized Division Alias',
  `full_name` varchar(191) DEFAULT NULL COMMENT 'Localized Division Fullname',
  `locale` varchar(6) DEFAULT NULL COMMENT 'locale'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocale_divisions_locale`
--

INSERT INTO `geolocale_divisions_locale` (`id`, `division_id`, `name`, `abbr`, `alias`, `full_name`, `locale`) VALUES
(341, 501, 'Ajman', NULL, NULL, NULL, 'en'),
(342, 502, 'Dubai', NULL, NULL, NULL, 'en'),
(343, 503, 'Fujairah', NULL, NULL, NULL, 'en'),
(344, 504, 'Imarat Ra\'s al Khaymah', NULL, NULL, NULL, 'en'),
(345, 505, 'Sharjah', NULL, NULL, NULL, 'en'),
(346, 506, 'Imarat Umm al Qaywayn', NULL, NULL, NULL, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `geolocale_languages`
--

CREATE TABLE `geolocale_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `iso_language_name` varchar(191) NOT NULL,
  `native_name` varchar(191) NOT NULL,
  `iso2` varchar(2) NOT NULL,
  `iso3` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocale_languages`
--

INSERT INTO `geolocale_languages` (`id`, `iso_language_name`, `native_name`, `iso2`, `iso3`) VALUES
(1, 'Abkhazian', 'аҧсуа бызшәа, аҧсшәа', 'ab', 'abk'),
(2, 'Afar', 'Afaraf', 'aa', 'aar'),
(3, 'Afrikaans', 'Afrikaans', 'af', 'afr'),
(4, 'Akan', 'Akan', 'ak', 'aka'),
(5, 'Albanian', 'Shqip', 'sq', 'sqi'),
(6, 'Amharic', 'አማርኛ', 'am', 'amh'),
(7, 'Arabic', 'العربية', 'ar', 'ara'),
(8, 'Aragonese', 'aragonés', 'an', 'arg'),
(9, 'Armenian', 'Հայերեն', 'hy', 'hye'),
(10, 'Assamese', 'অসমীয়া', 'as', 'asm'),
(11, 'Avaric', 'авар мацӀ, магӀарул мацӀ', 'av', 'ava'),
(12, 'Avestan', 'avesta', 'ae', 'ave'),
(13, 'Aymara', 'aymar aru', 'ay', 'aym'),
(14, 'Azerbaijani', 'azərbaycan dili', 'az', 'aze'),
(15, 'Bambara', 'bamanankan', 'bm', 'bam'),
(16, 'Bashkir', 'башҡорт теле', 'ba', 'bak'),
(17, 'Basque', 'euskara, euskera', 'eu', 'eus'),
(18, 'Belarusian', 'беларуская мова', 'be', 'bel'),
(19, 'Bengali', 'বাংলা', 'bn', 'ben'),
(20, 'Bihari languages', 'भोजपुरी', 'bh', 'bih'),
(21, 'Bislama', 'Bislama', 'bi', 'bis'),
(22, 'Bosnian', 'bosanski jezik', 'bs', 'bos'),
(23, 'Breton', 'brezhoneg', 'br', 'bre'),
(24, 'Bulgarian', 'български език', 'bg', 'bul'),
(25, 'Burmese', 'ဗမာစာ', 'my', 'mya'),
(26, 'Catalan, Valencian', 'català, valencià', 'ca', 'cat'),
(27, 'Chamorro', 'Chamoru', 'ch', 'cha'),
(28, 'Chechen', 'нохчийн мотт', 'ce', 'che'),
(29, 'Chichewa, Chewa, Nyanja', 'chiCheŵa, chinyanja', 'ny', 'nya'),
(30, 'Chinese', '中文 (Zhōngwén), 汉语, 漢語', 'zh', 'zho'),
(31, 'Chuvash', 'чӑваш чӗлхи', 'cv', 'chv'),
(32, 'Cornish', 'Kernewek', 'kw', 'cor'),
(33, 'Corsican', 'corsu, lingua corsa', 'co', 'cos'),
(34, 'Cree', 'ᓀᐦᐃᔭᐍᐏᐣ', 'cr', 'cre'),
(35, 'Croatian', 'hrvatski jezik', 'hr', 'hrv'),
(36, 'Czech', 'čeština, český jazyk', 'cs', 'ces'),
(37, 'Danish', 'dansk', 'da', 'dan'),
(38, 'Divehi, Dhivehi, Maldivian', 'ދިވެހި', 'dv', 'div'),
(39, 'Dutch, Flemish', 'Nederlands, Vlaams', 'nl', 'nld'),
(40, 'Dzongkha', 'རྫོང་ཁ', 'dz', 'dzo'),
(41, 'English', 'English', 'en', 'eng'),
(42, 'Esperanto', 'Esperanto', 'eo', 'epo'),
(43, 'Estonian', 'eesti, eesti keel', 'et', 'est'),
(44, 'Ewe', 'Eʋegbe', 'ee', 'ewe'),
(45, 'Faroese', 'føroyskt', 'fo', 'fao'),
(46, 'Fijian', 'vosa Vakaviti', 'fj', 'fij'),
(47, 'Finnish', 'suomi, suomen kieli', 'fi', 'fin'),
(48, 'French', 'français, langue française', 'fr', 'fra'),
(49, 'Fulah', 'Fulfulde, Pulaar, Pular', 'ff', 'ful'),
(50, 'Galician', 'Galego', 'gl', 'glg'),
(51, 'Georgian', 'ქართული', 'ka', 'kat'),
(52, 'German', 'Deutsch', 'de', 'deu'),
(53, 'Greek, Modern (1453-)', 'ελληνικά', 'el', 'ell'),
(54, 'Guarani', 'Avañe\'ẽ', 'gn', 'grn'),
(55, 'Gujarati', 'ગુજરાતી', 'gu', 'guj'),
(56, 'Haitian, Haitian Creole', 'Kreyòl ayisyen', 'ht', 'hat'),
(57, 'Hausa', '(Hausa) هَوُسَ', 'ha', 'hau'),
(58, 'Hebrew', 'עברית', 'he', 'heb'),
(59, 'Herero', 'Otjiherero', 'hz', 'her'),
(60, 'Hindi', 'हिन्दी, हिंदी', 'hi', 'hin'),
(61, 'Hiri Motu', 'Hiri Motu', 'ho', 'hmo'),
(62, 'Hungarian', 'magyar', 'hu', 'hun'),
(63, 'Interlingua (International Auxiliary Language Association)', 'Interlingua', 'ia', 'ina'),
(64, 'Indonesian', 'Bahasa Indonesia', 'id', 'ind'),
(65, 'Interlingue, Occidental', '(originally:) Occidental, (after WWII:) Interlingue', 'ie', 'ile'),
(66, 'Irish', 'Gaeilge', 'ga', 'gle'),
(67, 'Igbo', 'Asụsụ Igbo', 'ig', 'ibo'),
(68, 'Inupiaq', 'Iñupiaq, Iñupiatun', 'ik', 'ipk'),
(69, 'Ido', 'Ido', 'io', 'ido'),
(70, 'Icelandic', 'Íslenska', 'is', 'isl'),
(71, 'Italian', 'Italiano', 'it', 'ita'),
(72, 'Inuktitut', 'ᐃᓄᒃᑎᑐᑦ', 'iu', 'iku'),
(73, 'Japanese', '日本語 (にほんご)', 'ja', 'jpn'),
(74, 'Javanese', 'ꦧꦱꦗꦮ, Basa Jawa', 'jv', 'jav'),
(75, 'Kalaallisut, Greenlandic', 'kalaallisut, kalaallit oqaasii', 'kl', 'kal'),
(76, 'Kannada', 'ಕನ್ನಡ', 'kn', 'kan'),
(77, 'Kanuri', 'Kanuri', 'kr', 'kau'),
(78, 'Kashmiri', 'कश्मीरी, كشميري‎', 'ks', 'kas'),
(79, 'Kazakh', 'қазақ тілі', 'kk', 'kaz'),
(80, 'Central Khmer', 'ខ្មែរ, ខេមរភាសា, ភាសាខ្មែរ', 'km', 'khm'),
(81, 'Kikuyu, Gikuyu', 'Gĩkũyũ', 'ki', 'kik'),
(82, 'Kinyarwanda', 'Ikinyarwanda', 'rw', 'kin'),
(83, 'Kirghiz, Kyrgyz', 'Кыргызча, Кыргыз тили', 'ky', 'kir'),
(84, 'Komi', 'коми кыв', 'kv', 'kom'),
(85, 'Kongo', 'Kikongo', 'kg', 'kon'),
(86, 'Korean', '한국어', 'ko', 'kor'),
(87, 'Kurdish', 'Kurdî, کوردی‎', 'ku', 'kur'),
(88, 'Kuanyama, Kwanyama', 'Kuanyama', 'kj', 'kua'),
(89, 'Latin', 'latine, lingua latina', 'la', 'lat'),
(90, 'Luxembourgish, Letzeburgesch', 'Lëtzebuergesch', 'lb', 'ltz'),
(91, 'Ganda', 'Luganda', 'lg', 'lug'),
(92, 'Limburgan, Limburger, Limburgish', 'Limburgs', 'li', 'lim'),
(93, 'Lingala', 'Lingála', 'ln', 'lin'),
(94, 'Lao', 'ພາສາລາວ', 'lo', 'lao'),
(95, 'Lithuanian', 'lietuvių kalba', 'lt', 'lit'),
(96, 'Luba-Katanga', 'Kiluba', 'lu', 'lub'),
(97, 'Latvian', 'latviešu valoda', 'lv', 'lav'),
(98, 'Manx', 'Gaelg, Gailck', 'gv', 'glv'),
(99, 'Macedonian', 'македонски јазик', 'mk', 'mkd'),
(100, 'Malagasy', 'fiteny malagasy', 'mg', 'mlg'),
(101, 'Malay', 'Bahasa Melayu, بهاس ملايو‎', 'ms', 'msa'),
(102, 'Malayalam', 'മലയാളം', 'ml', 'mal'),
(103, 'Maltese', 'Malti', 'mt', 'mlt'),
(104, 'Maori', 'te reo Māori', 'mi', 'mri'),
(105, 'Marathi', 'मराठी', 'mr', 'mar'),
(106, 'Marshallese', 'Kajin M̧ajeļ', 'mh', 'mah'),
(107, 'Mongolian', 'Монгол хэл', 'mn', 'mon'),
(108, 'Nauru', 'Dorerin Naoero', 'na', 'nau'),
(109, 'Navajo, Navaho', 'Diné bizaad', 'nv', 'nav'),
(110, 'North Ndebele', 'isiNdebele', 'nd', 'nde'),
(111, 'Nepali', 'नेपाली', 'ne', 'nep'),
(112, 'Ndonga', 'Owambo', 'ng', 'ndo'),
(113, 'Norwegian Bokmål', 'Norsk Bokmål', 'nb', 'nob'),
(114, 'Norwegian Nynorsk', 'Norsk Nynorsk', 'nn', 'nno'),
(115, 'Norwegian', 'Norsk', 'no', 'nor'),
(116, 'Sichuan Yi, Nuosu', 'ꆈꌠ꒿ Nuosuhxop', 'ii', 'iii'),
(117, 'South Ndebele', 'isiNdebele', 'nr', 'nbl'),
(118, 'Occitan', 'occitan, lenga d\'òc', 'oc', 'oci'),
(119, 'Ojibwa', 'ᐊᓂᔑᓈᐯᒧᐎᓐ', 'oj', 'oji'),
(120, 'Church Slavic, Old Slavonic, Church Slavonic, Old Bulgarian, Old Church Slavonic', 'ѩзыкъ словѣньскъ', 'cu', 'chu'),
(121, 'Oromo', 'Afaan Oromoo', 'om', 'orm'),
(122, 'Oriya', 'ଓଡ଼ିଆ', 'or', 'ori'),
(123, 'Ossetian, Ossetic', 'ирон æвзаг', 'os', 'oss'),
(124, 'Punjabi, Panjabi', 'ਪੰਜਾਬੀ, پنجابی‎', 'pa', 'pan'),
(125, 'Pali', 'पालि, पाळि', 'pi', 'pli'),
(126, 'Persian', 'فارسی', 'fa', 'fas'),
(127, 'Polish', 'język polski, polszczyzna', 'pl', 'pol'),
(128, 'Pashto, Pushto', 'پښتو', 'ps', 'pus'),
(129, 'Portuguese', 'Português', 'pt', 'por'),
(130, 'Quechua', 'Runa Simi, Kichwa', 'qu', 'que'),
(131, 'Romansh', 'Rumantsch Grischun', 'rm', 'roh'),
(132, 'Rundi', 'Ikirundi', 'rn', 'run'),
(133, 'Romanian, Moldavian, Moldovan', 'Română', 'ro', 'ron'),
(134, 'Russian', 'русский', 'ru', 'rus'),
(135, 'Sanskrit', 'संस्कृतम्', 'sa', 'san'),
(136, 'Sardinian', 'sardu', 'sc', 'srd'),
(137, 'Sindhi', 'सिन्धी, سنڌي، سندھی‎', 'sd', 'snd'),
(138, 'Northern Sami', 'Davvisámegiella', 'se', 'sme'),
(139, 'Samoan', 'gagana fa\'a Samoa', 'sm', 'smo'),
(140, 'Sango', 'yângâ tî sängö', 'sg', 'sag'),
(141, 'Serbian', 'српски језик', 'sr', 'srp'),
(142, 'Gaelic, Scottish Gaelic', 'Gàidhlig', 'gd', 'gla'),
(143, 'Shona', 'chiShona', 'sn', 'sna'),
(144, 'Sinhala, Sinhalese', 'සිංහල', 'si', 'sin'),
(145, 'Slovak', 'Slovenčina, Slovenský Jazyk', 'sk', 'slk'),
(146, 'Slovenian', 'Slovenski Jezik, Slovenščina', 'sl', 'slv'),
(147, 'Somali', 'Soomaaliga, af Soomaali', 'so', 'som'),
(148, 'Southern Sotho', 'Sesotho', 'st', 'sot'),
(149, 'Spanish, Castilian', 'Español', 'es', 'spa'),
(150, 'Sundanese', 'Basa Sunda', 'su', 'sun'),
(151, 'Swahili', 'Kiswahili', 'sw', 'swa'),
(152, 'Swati', 'SiSwati', 'ss', 'ssw'),
(153, 'Swedish', 'Svenska', 'sv', 'swe'),
(154, 'Tamil', 'தமிழ்', 'ta', 'tam'),
(155, 'Telugu', 'తెలుగు', 'te', 'tel'),
(156, 'Tajik', 'тоҷикӣ, toçikī, تاجیکی‎', 'tg', 'tgk'),
(157, 'Thai', 'ไทย', 'th', 'tha'),
(158, 'Tigrinya', 'ትግርኛ', 'ti', 'tir'),
(159, 'Tibetan', 'བོད་ཡིག', 'bo', 'bod'),
(160, 'Turkmen', 'Türkmen, Түркмен', 'tk', 'tuk'),
(161, 'Tagalog', 'Wikang Tagalog', 'tl', 'tgl'),
(162, 'Tswana', 'Setswana', 'tn', 'tsn'),
(163, 'Tonga (Tonga Islands)', 'Faka Tonga', 'to', 'ton'),
(164, 'Turkish', 'Türkçe', 'tr', 'tur'),
(165, 'Tsonga', 'Xitsonga', 'ts', 'tso'),
(166, 'Tatar', 'татар теле, tatar tele', 'tt', 'tat'),
(167, 'Twi', 'Twi', 'tw', 'twi'),
(168, 'Tahitian', 'Reo Tahiti', 'ty', 'tah'),
(169, 'Uighur, Uyghur', 'ئۇيغۇرچە‎, Uyghurche', 'ug', 'uig'),
(170, 'Ukrainian', 'Українська', 'uk', 'ukr'),
(171, 'Urdu', 'اردو', 'ur', 'urd'),
(172, 'Uzbek', 'Oʻzbek, Ўзбек, أۇزبېك‎', 'uz', 'uzb'),
(173, 'Venda', 'Tshivenḓa', 've', 'ven'),
(174, 'Vietnamese', 'Tiếng Việt', 'vi', 'vie'),
(175, 'Volapük', 'Volapük', 'vo', 'vol'),
(176, 'Walloon', 'Walon', 'wa', 'wln'),
(177, 'Welsh', 'Cymraeg', 'cy', 'cym'),
(178, 'Wolof', 'Wollof', 'wo', 'wol'),
(179, 'Western Frisian', 'Frysk', 'fy', 'fry'),
(180, 'Xhosa', 'isiXhosa', 'xh', 'xho'),
(181, 'Yiddish', 'ייִדיש', 'yi', 'yid'),
(182, 'Yoruba', 'Yorùbá', 'yo', 'yor'),
(183, 'Zhuang, Chuang', 'Saɯ cueŋƅ, Saw cuengh', 'za', 'zha'),
(184, 'Zulu', 'isiZulu', 'zu', 'zul');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `original_name` varchar(191) NOT NULL,
  `promt` text NOT NULL,
  `slug` varchar(191) NOT NULL,
  `size` varchar(191) DEFAULT NULL,
  `art_style` varchar(191) DEFAULT NULL,
  `lighting_style` varchar(191) DEFAULT NULL,
  `libraries` varchar(191) DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'Active' COMMENT '''Active'', ''Inactive',
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `direction` varchar(8) NOT NULL DEFAULT 'ltr' COMMENT '(''ltr'', ''rtl'') ltr = left-to-right directionrtl = right-to-left direction'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `flag`, `status`, `is_default`, `direction`) VALUES
(1, 'English', 'en', 'en.jpg', 'Active', 0, 'ltr'),
(2, 'Bengali', 'bn', NULL, 'Inactive', 0, 'ltr'),
(3, 'French', 'fr', '', 'Inactive', 0, 'ltr'),
(4, 'Chinese', 'zh', NULL, 'Inactive', 0, 'ltr'),
(5, 'Arabic', 'ar', NULL, 'Active', 1, 'rtl'),
(6, 'Byelorussian', 'be', NULL, 'Inactive', 0, 'ltr'),
(7, 'Bulgarian', 'bg', NULL, 'Inactive', 0, 'ltr'),
(8, 'Catalan', 'ca', NULL, 'Inactive', 0, 'ltr'),
(9, 'Estonian', 'et', NULL, 'Inactive', 0, 'rtl'),
(10, 'Dutch', 'nl', NULL, 'Inactive', 0, 'ltr'),
(11, 'Russian', 'ru', NULL, 'Inactive', 0, 'ltr'),
(12, 'Spanish', 'es', NULL, 'Inactive', 0, 'ltr'),
(13, 'Portuguese', 'pt', NULL, 'Inactive', 0, 'ltr'),
(14, 'Polish', 'pl', NULL, 'Inactive', 0, 'ltr'),
(15, 'German', 'de', NULL, 'Inactive', 0, 'ltr'),
(16, 'Sweden', 'sv', NULL, 'Inactive', 0, 'ltr');

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

CREATE TABLE `layouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `layout_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layouts`
--

INSERT INTO `layouts` (`id`, `layout_type_id`, `name`, `description`, `file`, `image`, `created_at`, `updated_at`) VALUES
(5, 3, 'Review Block V1', 'Categories Block', 'review-template-v1', 'review-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(6, 3, 'FAQ Block V1', 'Categories Block', 'faq-template-v1', 'faq-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(7, 4, 'Brand Block', 'Brand Block', 'brands-template-v1', 'brands-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(8, 5, 'Blogs Grid', 'Blogs Grid', 'blogs-template-v1', 'blogs-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(12, 6, 'Footer Banner', 'Footer Banner', 'footer-banner-template-v1', 'footer-banner-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(14, 7, 'Subscription Plan', 'Subscription Plan', 'subscription-plan-template-v1', 'subscription-plan-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(15, 6, 'Image Generator', 'Image Generator', 'image-generator-template-v1', 'image-generator-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(16, 6, 'AI Template', 'AI Template', 'ai-template-v1', 'ai-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(17, 6, 'Ready Made Template', 'Ready Made Template', 'ready-made-template-v1', 'ready-made-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(18, 8, 'Hero Section', 'Hero Section', 'hero-template-v1', 'hero-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(19, 6, 'Custom Block', 'Custom Block', 'custom-block-template-v1', 'custom-block-template-v1.png', '2025-03-14 23:36:52', '2025-03-14 23:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `layout_types`
--

CREATE TABLE `layout_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layout_types`
--

INSERT INTO `layout_types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Categories', 'Categories', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(4, 'Brands', 'Product Brands', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(5, 'Blogs', 'Blogs Layout', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(6, 'Extras', 'Information Box', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(7, 'Subscription Blocks', 'Different Blocks', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(8, 'Hero Blocks', 'Different Hero Sections', '2025-03-14 23:36:52', '2025-03-14 23:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-12-13 10:08:14', '2025-03-21 22:08:02'),
(4, 'public header', '2021-12-20 09:43:48', '2025-03-16 23:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `params` varchar(1000) DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(191) DEFAULT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `class` varchar(191) DEFAULT NULL,
  `menu` bigint(20) UNSIGNED NOT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `is_custom_menu` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `label`, `link`, `params`, `is_default`, `icon`, `parent`, `sort`, `class`, `menu`, `depth`, `is_custom_menu`, `created_at`, `updated_at`) VALUES
(1, 'لوحة التحكم', 'dashboard', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\DashboardController@index\",\"route_name\":[\"dashboard\"]}', 1, 'fas fa-home', 0, 0, NULL, 1, 0, 0, NULL, NULL),
(2, 'إضافة مستخدم', 'user/create', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\UserController@create\",\"route_name\":[\"users.create\"]}', 1, NULL, 27, 2, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(8, 'جميع المستخدمين', 'user/list', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\UserController@index\",\"route_name\":[\"users.index\",\"users.edit\",\"users.pdf\",\"users.csv\",\"users.verify\", \"users.profile\"]}', 1, NULL, 27, 3, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(16, 'القوائم', 'menu-builder', '{\"permission\":\"Modules\\\\MenuBuilder\\\\Http\\\\Controllers\\\\MenuBuilderController@index\",\"route_name\":[\"menu.index\"]}', 1, 'fas fa-bars', 0, 37, NULL, 1, 0, 0, NULL, '2025-03-15 01:16:36'),
(19, 'الإعدادات العامة', 'general-setting', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\CompanySettingController@index\",\"route_name\":[\"preferences.index\", \"companyDetails.setting\", \"maintenance.enable\", \"language.translation\", \"language.index\", \"currency.convert\", \"withdrawalSetting.index\", \"setting.setRedirectLink\", \"gdpr.config\"]}', 1, NULL, 31, 49, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(27, 'المستخدمين', NULL, NULL, 0, 'fas fa-users', 0, 1, NULL, 1, 0, 0, NULL, NULL),
(31, 'الإعدادات', NULL, NULL, 0, 'fas fa-cog', 0, 48, NULL, 1, 0, 0, NULL, '2025-03-15 01:16:36'),
(49, 'Geo Locale', 'geolocale', '{\"permission\":\"Modules\\\\GeoLocale\\\\Http\\\\Controllers\\\\GeoLocaleController@index\", \"route_name\":[\"geolocale.index\"], \"menu_lavel\":\"1\"}', 0, NULL, 31, 54, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(54, 'الفئات', 'blog/category/list', '{\"permission\":\"Modules\\\\Blog\\\\Http\\\\Controllers\\\\BlogCategoryController@index\", \"route_name\":[\"blog.category.index\"], \"menu_level\":\"1\"}', 1, NULL, 56, 24, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(55, 'إضافة منشور', 'blog/create', '{\"permission\":\"Modules\\\\Blog\\\\Http\\\\Controllers\\\\BlogController@create\", \"route_name\":[\"blog.create\"], \"menu_level\":\"1\"}', 1, NULL, 56, 22, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(56, 'المدونات', NULL, NULL, 1, 'fab fa-blogger-b', 0, 21, NULL, 1, 0, 0, NULL, '2025-03-15 01:16:36'),
(57, 'إعداد الموقع', NULL, NULL, 1, 'fas fa-globe', 0, 38, NULL, 1, 0, 0, NULL, '2025-03-15 01:16:36'),
(59, 'جميع المنشورات', 'blogs', '{\"permission\":\"Modules\\\\Blog\\\\Http\\\\Controllers\\\\BlogController@index\", \"route_name\":[\"blog.index\", \"blog.edit\"], \"menu_level\":\"1\"}', 1, NULL, 56, 23, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(60, 'الصفحات', 'page/list', '{\"permission\":\"Modules\\\\CMS\\\\Http\\\\Controllers\\\\CMSController@index\", \"route_name\":[\"page.index\", \"page.create\", \"page.edit\"], \"menu_level\":\"1\"}', 1, NULL, 57, 40, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(61, 'مدير الوسائط', 'uploaded-files', '{\"permission\":\"Modules\\\\MediaManager\\\\Http\\\\Controllers\\\\MediaManagerController@uploadedFiles\", \"route_name\":[\"mediaManager.create\", \"mediaManager.upload\", \"mediaManager.uploadedFiles\", \"mediaManager.sortFiles\", \"mediaManager.paginateFiles\", \"mediaManager.download\", \"mediaManager.maxId\"], \"menu_level\":\"1\"}', 1, 'fas fa-folder-open', 0, 44, NULL, 1, 0, 0, NULL, '2025-03-15 01:16:36'),
(73, 'التسويق', NULL, NULL, 0, 'fas fa-bullhorn', 0, 31, NULL, 1, 0, 0, NULL, '2025-03-15 01:16:36'),
(84, 'جميع المشتركين', 'subscribers', '{\"permission\":\"Modules\\\\Newsletter\\\\Http\\\\Controllers\\\\SubscriberController@index\",\"route_name\":[\"subscriber.index\",\"subscriber.edit\",\"subscriber.update\",\"subscriber.pdf\",\"subscriber.csv\"]}', 1, NULL, 73, 36, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(92, 'المظهر', 'theme/list', '{\"permission\":\"Modules\\\\CMS\\\\Http\\\\Controllers\\\\ThemeOptionController@list\", \"route_name\":[\"theme.index\", \"theme.store\"], \"menu_level\":\"1\"}', 1, NULL, 57, 41, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(100, 'الحسابات', 'account-setting', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\AccountSettingController@index\",\"route_name\":[\"account.setting.option\", \"sso.index\", \"emailVerifySetting\", \"preferences.password\", \"permissionRoles.index\", \"roles.index\", \"roles.create\", \"roles.edit\", \"account.setting.defaultPackage\"]}', 1, NULL, 31, 52, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(101, 'إعدادات البريد الإلكتروني', 'email-setting', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\EmailConfigurationController@index\",\"route_name\":[\"emailConfigurations.index\", \"emailTemplates.index\", \"emailTemplates.create\", \"emailTemplates.edit\"]}', 1, NULL, 31, 53, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(112, 'أنشطة تسجيل الدخول', 'user/activity', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\UserController@index\",\"route_name\":[\"users.activity\"]}', 1, NULL, 27, 4, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(122, 'الأسعار', 'pricing', '{\"permission\":\"no-prefix\"}', 0, NULL, 0, 0, NULL, 4, 0, 0, NULL, '2025-03-16 20:59:43'),
(133, 'معلومات النظام', 'system-info', '{\"permission\":\"App\\\\Http\\\\Controllers\\\\SystemInfoController@index\", \"route_name\":[\"systemInfo.index\"], \"menu_level\":\"2\"}', 1, NULL, 31, 55, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(134, 'الاشتراكات', NULL, NULL, 1, 'fas fa-money-bill-alt', 0, 25, NULL, 1, 0, 0, NULL, '2025-03-15 01:16:36'),
(135, 'الخطط', 'packages', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\PackageController@index\", \"route_name\":[\"package.index\", \"package.create\", \"package.show\", \"package.edit\"], \"menu_level\":\"1\"}', 1, NULL, 134, 26, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(136, 'الأعضاء', 'package-subscriptions', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\SubscriptionController@index\", \"route_name\":[\"package.subscription.index\", \"package.subscription.create\", \"package.subscription.show\", \"package.subscription.edit\"], \"menu_level\":\"1\"}', 1, NULL, 134, 28, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(137, 'المدفوعات', 'payments', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\SubscriptionController@payment\", \"route_name\":[\"package.subscription.payment\", \"package.subscription.invoice\"], \"menu_level\":\"1\"}', 1, NULL, 134, 29, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(138, 'الإعدادات', 'subscriptions/settings', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\SubscriptionController@setting\", \"route_name\":[\"package.subscription.setting\"], \"menu_level\":\"1\"}', 1, NULL, 134, 30, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(141, 'جميع القوالب', 'use-cases', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\UseCasesController@index\",\"route_name\":[\"admin.use_case.create\", \"admin.use_case.list\", \"admin.use_case.edit\"]}', 1, NULL, 140, 6, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(142, 'جميع فئات القوالب', 'use-case/categories', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\UseCaseCategoriesController@index\",\"route_name\":[\"admin.use_case.category.list\", \"admin.use_case.category.create\", \"admin.use_case.category.edit\"]}', 1, NULL, 140, 7, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(144, 'المحتوى', 'content/list', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\OpenAIController@index\",\"route_name\":[\"admin.features.contents\", \"admin.features.content.edit\"]}', 1, NULL, 143, 12, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(145, 'الصور', 'images', '{\"permission\":\"modules\\\\openai\\\\http\\\\controllers\\\\admin\\\\v2\\\\ImageController@index\",\"route_name\":[\"admin.features.admin.image.index\"]}', 1, NULL, 143, 13, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(162, 'الكود', 'code/list', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\CodeController@images\",\"route_name\":[\"admin.features.code.list\", \"admin.features.code.view\"]}', 1, NULL, 143, 13, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(163, 'التفضيلات', 'features/preferences', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\OpenAIController@contentPreferences\",\"route_name\":[\"admin.features.preferences\"]}', 1, NULL, 31, 50, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(164, 'الكلام', 'speech/list', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\SpeechController@index\",\"route_name\":[\"admin.features.speeches\", \"admin.features.speech.edit\"]}', 1, NULL, 143, 15, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(165, 'قوالب الدردشة', NULL, NULL, 0, 'fas fa-file-alt', 0, 8, NULL, 1, 0, 0, NULL, '2025-03-15 01:10:19'),
(166, 'فئات الدردشة', 'chat/categories', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\ChatCategoriesController@index\",\"route_name\":[\"admin.chat.category.list\", \"admin.chat.category.create\", \"admin.chat.category.edit\"]}', 1, NULL, 165, 9, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(167, 'مساعدو الدردشة', 'chat/assistants', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\ChatAssistantsController@index\",\"route_name\":[\"admin.chat.assistant.list\", \"admin.chat.assistant.create\", \"admin.chat.assistant.edit\"]}', 1, NULL, 165, 10, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(169, 'Voice Verse', 'text-to-speech/voice/list', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\TextToSpeechController@allVoices\",\"route_name\":[\"admin.features.textToSpeech.voice.lists\", \"admin.features.textToSpeech.voice.edit\"]}', 1, NULL, 168, 20, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(170, 'Voiceover', 'text-to-speech/list', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\TextToSpeechController@index\",\"route_name\":[\"admin.features.textToSpeech.lists\", \"admin.features.textToSpeech.view\"]}', 1, NULL, 143, 14, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(171, 'مقالة طويلة', 'articles', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\LongArticleController@index\",\"route_name\":[\"admin.long_article.index\", \"admin.long_article.edit\"]}', 1, NULL, 143, 16, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(173, 'تفضيل الميزات', 'features', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\FeaturePreferenceController@manageFeature\",\"route_name\":[\"admin.features.feature_preference\"]}', 1, NULL, 31, 51, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(174, 'Ai Chatbot', 'ai-chatbot', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\v2\\\\AiChatbotController@index\",\"route_name\":[\"admin.features.ai_chatbot.index\", \"admin.features.ai_chatbot.edit\"]}', 1, NULL, 143, 17, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(175, 'Image To Video', 'image-to-video', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\v2\\\\ImageToVideoController@index\",\"route_name\":[\"admin.features.image-to-video.index\"]}', 1, NULL, 143, 18, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(177, 'Actor Imports', 'import/actors', '{\"permission\":\"Modules\\\\OpenAI\\\\Http\\\\Controllers\\\\Admin\\\\ImportController@isMethod\", \"route_name\":[\"admin.voiceover.imports\", \"admin.voiceover.import.actor\"], \"menu_level\":\"1\"}', 1, NULL, 176, 57, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(178, 'Credits', 'credits', '{\"permission\":\"Modules\\\\Subscription\\\\Http\\\\Controllers\\\\CreditController@index\", \"route_name\":[\"credit.index\", \"credit.create\", \"credit.show\", \"credit.edit\"], \"menu_level\":\"1\"}', 1, NULL, 134, 27, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(179, 'Home Pages', 'page/home/list', '{\"permission\":\"Modules\\\\CMS\\\\Http\\\\Controllers\\\\CMSController@index\", \"route_name\":[\"page.home\", \"builder.edit\", \"page.home.create\", \"page.home.edit\"], \"menu_level\":\"1\"}', 1, NULL, 57, 39, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(180, 'إضافة كوبون خصم', 'coupon/create', '{\"permission\":\"Modules\\\\Coupon\\\\Http\\\\Controllers\\\\CouponController@create\",\"route_name\":[\"coupon.create\"]}', 1, NULL, 73, 32, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(181, 'كل الكوبونات', 'coupons', '{\"permission\":\"Modules\\\\Coupon\\\\Http\\\\Controllers\\\\CouponController@index\",\"route_name\":[\"coupon.index\",\"coupon.edit\",\"coupon.pdf\",\"coupon.csv\",\"coupon.shop\",\"coupon.item\"]}', 1, NULL, 73, 33, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(182, 'استرداد كوبون', 'coupon-redeems', '{\"permission\":\"Modules\\\\Coupon\\\\Http\\\\Controllers\\\\CouponRedeemController@index\",\"route_name\":[\"couponRedeem.index\"]}', 1, NULL, 73, 34, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(183, 'إعدادات الكوبونات', 'coupon/setting', '{\"permission\":\"Modules\\\\Coupon\\\\Http\\\\Controllers\\\\CouponController@setting\",\"route_name\":[\"coupon.setting\"]}', 1, NULL, 73, 35, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(184, 'تذاكر الدعم', NULL, NULL, 1, 'fas fa-ticket-alt', 0, 45, NULL, 1, 0, 0, NULL, '2025-03-15 01:16:36'),
(185, 'إضافة تذكرة', 'ticket/add', '{\"permission\":\"Modules\\\\Ticket\\\\Http\\\\Controllers\\\\TicketController@add\", \"route_name\":[\"admin.threadAdd\"]}', 1, NULL, 184, 46, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(186, 'جميع التذاكر', 'ticket/list', '{\"permission\":\"Modules\\\\Ticket\\\\Http\\\\Controllers\\\\TicketController@index\", \"route_name\":[\"admin.tickets\", \"admin.threadReply\", \"admin.threadEdit\", \"admin.threadPdf\", \"admin.changePriority\"]}', 1, NULL, 184, 47, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(187, 'تحديث النظام', 'system-update', '{\"permission\":\"Modules\\\\Upgrater\\\\Http\\\\Controllers\\\\SystemUpdateController@upgrade\", \"route_name\":[\"systemUpdate.upgrade\", \"version.check\"], \"menu_level\":\"2\"}', 1, NULL, 63, 58, NULL, 1, 1, 0, NULL, '2025-03-15 01:10:19'),
(188, 'FAQ', 'faq', '{\"permission\":\"Modules\\\\FAQ\\\\Http\\\\Controllers\\\\FAQController@index\", \"route_name\":[\"admin.faq\", \"admin.faq.create\", \"admin.faq.edit\"], \"menu_level\":\"1\"}', 1, NULL, 57, 42, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(189, 'Reviews', 'reviews', '{\"permission\":\"Modules\\\\Reviews\\\\Http\\\\Controllers\\\\ReviewsController@index\",\"route_name\":[\"admin.review\", \"admin.review.create\", \"admin.review.edit\"], \"menu_level\":\"1\"}', 1, NULL, 57, 43, NULL, 1, 1, 0, NULL, '2025-03-15 01:16:36'),
(198, 'الشروط والأحكام', 'terms', NULL, 1, NULL, 0, 1, NULL, 4, 0, 0, NULL, '2025-03-16 20:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_type` varchar(80) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'null',
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2017_04_08_163453_create_geolocale_cities_locale_table', 1),
(7, '2017_04_08_163453_create_geolocale_cities_table', 1),
(8, '2017_04_08_163453_create_geolocale_continents_locale_table', 1),
(9, '2017_04_08_163453_create_geolocale_continents_table', 1),
(10, '2017_04_08_163453_create_geolocale_countries_locale_table', 1),
(11, '2017_04_08_163453_create_geolocale_countries_table', 1),
(12, '2017_04_08_163453_create_geolocale_divisions_locale_table', 1),
(13, '2017_04_08_163453_create_geolocale_divisions_table', 1),
(14, '2017_04_08_163454_add_foreign_keys_to_geolocale_cities_locale_table', 1),
(15, '2017_04_08_163454_add_foreign_keys_to_geolocale_cities_table', 1),
(16, '2017_04_08_163454_add_foreign_keys_to_geolocale_continents_locale_table', 1),
(17, '2017_04_08_163454_add_foreign_keys_to_geolocale_countries_locale_table', 1),
(18, '2017_04_08_163454_add_foreign_keys_to_geolocale_countries_table', 1),
(19, '2017_04_08_163454_add_foreign_keys_to_geolocale_divisions_locale_table', 1),
(20, '2017_04_08_163454_add_foreign_keys_to_geolocale_divisions_table', 1),
(21, '2017_08_11_073824_create_menus_wp_table', 1),
(22, '2017_08_11_074006_create_menu_items_wp_table', 1),
(23, '2019_12_23_153024_create_geolocale_languages_table', 1),
(24, '2020_04_06_093559_create_priorities_table', 1),
(25, '2020_04_06_093559_create_thread_replies_table', 1),
(26, '2020_04_06_093559_create_thread_statuses_table', 1),
(27, '2021_06_17_131601_create_canned_messages_table', 1),
(28, '2021_06_17_145137_create_canned_links_table', 1),
(29, '2021_07_22_172545_add_timezone_to_geolocale_cities_table', 1),
(30, '2021_07_22_221136_add_code_numeric_to_geolocale_countries', 1),
(31, '2021_10_10_065927_create_admin_menus_table', 1),
(32, '2021_10_10_065927_create_countries_table', 1),
(33, '2021_10_10_065927_create_currencies_table', 1),
(34, '2021_10_10_065927_create_email_configurations_table', 1),
(35, '2021_10_10_065927_create_email_templates_table', 1),
(36, '2021_10_10_065927_create_failed_jobs_table', 1),
(37, '2021_10_10_065927_create_languages_table', 1),
(38, '2021_10_10_065927_create_password_resets_table', 1),
(39, '2021_10_10_065927_create_permission_roles_table', 1),
(40, '2021_10_10_065927_create_permissions_table', 1),
(41, '2021_10_10_065927_create_preferences_table', 1),
(42, '2021_10_10_065927_create_role_users_table', 1),
(43, '2021_10_10_065927_create_roles_table', 1),
(44, '2021_10_10_065927_create_translations_table', 1),
(45, '2021_10_10_065927_create_users_table', 1),
(46, '2021_10_10_065928_add_foreign_keys_to_email_templates_table', 1),
(47, '2021_10_10_065928_add_foreign_keys_to_permission_roles_table', 1),
(48, '2021_10_10_065928_add_foreign_keys_to_role_users_table', 1),
(49, '2021_10_10_065928_create_addresses_table', 1),
(50, '2021_10_10_065929_add_foreign_keys_to_addresses_table', 1),
(51, '2021_12_15_064237_create_blog_categories_table', 1),
(52, '2021_12_15_064237_create_blogs_table', 1),
(53, '2021_12_15_064237_create_files_table', 1),
(54, '2021_12_15_064237_create_object_files_table', 1),
(55, '2021_12_15_064237_create_pages_table', 1),
(56, '2021_12_15_064237_create_theme_options_table', 1),
(57, '2022_02_06_031637_create_gateways_table', 1),
(58, '2022_02_09_045059_create_payment_log_table', 1),
(59, '2022_02_09_045060_add_foreign_keys_to_payment_log_table', 1),
(60, '2022_03_06_050657_create_layout_types_table', 1),
(61, '2022_03_06_050741_create_layouts_table', 1),
(62, '2022_03_06_051329_create_components_table', 1),
(63, '2022_03_06_051911_create_component_properties_table', 1),
(64, '2022_04_27_080907_create_subscribers_table', 1),
(65, '2022_05_18_074840_create_users_meta', 1),
(66, '2022_05_18_094636_create_metas', 1),
(67, '2022_10_30_062626_create_activity_log_table', 1),
(68, '2023_01_05_023932_blog_trigger', 1),
(69, '2023_02_15_065927_create_packages_table', 1),
(70, '2023_02_15_065928_create_packages_meta_table', 1),
(71, '2023_02_15_065929_create_package_subscriptions_table', 1),
(72, '2023_02_15_073603_add_foreign_keys_to_packages_meta_table', 1),
(73, '2023_02_16_050839_create_package_subscriptions_meta_table', 1),
(74, '2023_02_16_073603_add_foreign_keys_to_package_subscriptions_meta_table', 1),
(75, '2023_02_22_030517_create_use_case_categories_table', 1),
(76, '2023_02_22_030608_create_use_cases_table', 1),
(77, '2023_02_22_055305_create_use_case_use_case_category_table', 1),
(78, '2023_02_22_060607_create_chat_categories_table', 1),
(79, '2023_02_22_060608_create_chat_bots_table', 1),
(80, '2023_02_22_060608_create_chat_conversations_table', 1),
(81, '2023_02_22_060608_create_chats_table', 1),
(82, '2023_02_22_060608_create_codes_table', 1),
(83, '2023_02_22_060608_create_contents_table', 1),
(84, '2023_02_22_060608_create_images_table', 1),
(85, '2023_02_22_060608_create_options_table', 1),
(86, '2023_02_22_074237_create_content_meta_table', 1),
(87, '2023_02_22_074237_create_option_meta_table', 1),
(88, '2023_02_22_080517_make_columns_nullable_in_images_table', 1),
(89, '2023_04_06_093559_create_threads_table', 1),
(90, '2023_04_12_074335_create_faqs_table', 1),
(91, '2023_04_13_050150_create_subscription_details_table', 1),
(92, '2023_04_15_111603_create_reviews_table', 1),
(93, '2023_05_08_032820_create_content_types_table', 1),
(94, '2023_05_08_033142_create_content_types_meta_table', 1),
(95, '2023_07_23_024434_create_speeches_table', 1),
(96, '2023_08_10_050150_create_credits_table', 1),
(97, '2023_08_17_065927_create_coupons_table', 1),
(98, '2023_08_17_065928_add_foreign_keys_to_coupons_table', 1),
(99, '2023_08_17_065929_create_coupon_redeems_table', 1),
(100, '2023_08_17_065930_add_foreign_keys_to_coupon_redeems_table', 1),
(101, '2023_08_17_065931_create_credit_coupons_table', 1),
(102, '2023_08_17_065931_create_plan_coupons_table', 1),
(103, '2023_08_17_065932_add_foreign_keys_to_credit_coupons_table', 1),
(104, '2023_08_17_065932_add_foreign_keys_to_plan_coupons_table', 1),
(105, '2023_08_17_072819_coupon_trigger', 1),
(106, '2023_08_22_081330_create_teams_table', 1),
(107, '2023_08_22_090938_create_team_member_metas_table', 1),
(108, '2023_08_29_095624_create_audios_table', 1),
(109, '2023_08_31_050150_update_packages_table', 1),
(110, '2023_09_25_035203_create_embeded_resources_meta_table', 1),
(111, '2023_09_25_035203_create_embeded_resources_table', 1),
(112, '2023_10_05_080214_create_voices_table', 1),
(113, '2023_10_17_023418_add_type_column_to_credits_table', 1),
(114, '2023_10_17_083751_add_soft_delete_on_users_table', 1),
(115, '2023_10_19_082656_create_folders_table', 1),
(116, '2023_10_19_083023_create_folder_items_table', 1),
(117, '2023_10_19_092452_create_folder_meta_table', 1),
(118, '2023_10_23_105153_add_is_default_on_chat_bots_table', 1),
(119, '2023_10_23_105153_add_parent_id_on_images_table', 1),
(120, '2023_11_21_085519_create_archives_table', 1),
(121, '2023_11_21_085533_create_archive_metas_table', 1),
(122, '2024_01_10_064311_add_providers_on_voices_table', 1),
(123, '2024_02_17_082554_add_type_on_chat_bots', 1),
(124, '2024_02_17_093239_create_chat_bot_metas_table', 1),
(125, '2024_06_10_083706_add_null_on_embeded_resources_table', 1),
(126, '2024_06_30_062020_create_feature_preferences_table', 1),
(127, '2024_06_30_062041_create_feature_preference_metas_table', 1),
(128, '2024_07_16_092920_add_provider_embeded_resources_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0020ffe9e8a1bcca9670b5de4c6466d43388a68d44b78932ea3f37f8336f771b41497fd1498e736d', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:25:48', '2025-03-21 23:25:48', '2026-03-21 23:25:48'),
('00348fb40264f5e4d05f016704a2efc3171b0980793d241d1ed36376cf3548f52b43735db113a54b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:16:06', '2025-03-21 22:16:06', '2026-03-21 22:16:06'),
('00c180d44761b25d771193f8756400f4e22b69bcba885a9b11dc5dc1ab0946038bc9fc1ae9a83fe2', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:33:33', '2025-03-21 23:33:33', '2026-03-21 23:33:33'),
('014d47fe5573f7314c0b3a462ddaf9ce6d172065e383a9f8e1fa7559c3cd13aa6727e5848d33c339', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:48:20', '2025-03-15 22:48:20', '2026-03-15 22:48:20'),
('01668f235794147a2b8dc4830d59ab387401315716eefef0be1d04a37b12767c27c05c3764d92a79', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:51:58', '2025-03-16 23:51:58', '2026-03-16 23:51:58'),
('01ecbc346942ac78d74fb8dbf6c9263a9162700fdff9aa226a1f4124428c26fd44567dab7c310e1b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:18', '2025-03-21 22:32:18', '2026-03-21 22:32:18'),
('02777076e4bfbd9355b103f62e2bf41681a8cb6616dba84bac66cc4723bba5c289f08156eab55dae', 1, 1, 'authToken', '[]', 0, '2025-03-21 22:26:07', '2025-03-21 22:26:07', '2026-03-21 22:26:07'),
('02f632c44481702cd1469f5dcd7d5a2ed3978563cd5e8cd6532d548cb9bee504b4f2acab4914b65f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:39:38', '2025-03-16 22:39:38', '2026-03-16 22:39:38'),
('03606ab0d403f84c085dd8e0f928b64c6f59f700bc1b1f392401d6e0e68af28b6754e01bab08014d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:41:44', '2025-03-21 22:41:44', '2026-03-21 22:41:44'),
('037ec91af974bf3d85805a75024be66a9c1538fb3acbd599c5d3c4db4d8c7dfe82f4320c3b6e4a8c', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:42:26', '2025-03-15 04:42:26', '2026-03-15 04:42:26'),
('03965bbe364d14f545812e12c546445a32da53ac9f64254adaddb0a27f33b38f1fea13021246f42b', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:39:22', '2025-03-14 23:39:22', '2026-03-14 23:39:22'),
('03fbe0d49da0ed56c4f0e36716ce99b6ff00dbd70e53d7d0af29d5f632aa3c0c5bdf9275d3c719d9', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:38:21', '2025-03-21 23:38:21', '2026-03-21 23:38:21'),
('04890d3a3bce44f8bac05a51727ac2594c721052c70a03f5d6d3fd4c8c82af5b2cd4a70b8eabaa32', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:28:26', '2025-03-21 22:28:26', '2026-03-21 22:28:26'),
('04cf15b1daf5d86e7aa00dd816fb0d538f523f2dfb2d9bfe04bd63f2f9b656b6394b09a3cdd1289b', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:02:09', '2025-03-16 23:02:09', '2026-03-16 23:02:09'),
('04e580a525264d510b9444804257680c987a46805eb44ecc8c01498254efa869fb815745906a717c', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:55:26', '2025-03-16 23:55:26', '2026-03-16 23:55:26'),
('055e0b9b5a83db98f266ca86925bd8094c5e21a5fdb2ef387221c4a706d2ea049d4aa8107694b4ba', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:03:26', '2025-03-16 23:03:26', '2026-03-16 23:03:26'),
('0561c98ed040eb83360881b0800614ccc2628f10b6486b0c5d45696d7e3280ae4e63f74ffa30b811', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:22:54', '2025-03-21 22:22:54', '2026-03-21 22:22:54'),
('061d5e0326bc9a6bcdfa52556d3dfc9c2914e8854ff041994981c1f2d7d2d035641b12245939f02e', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:50:32', '2025-03-16 22:50:32', '2026-03-16 22:50:32'),
('06581ae41b95b28205b3844f0de2b30a9ae2d0c9691475c53e06cdbef85fa0434952aff636cc7843', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:34', '2025-03-21 22:32:34', '2026-03-21 22:32:34'),
('065b7c1bc65ea0a595ce5f26b510bbcd7207729e8e72332c51b1279f66bfa3c78cc85ef4193e12f7', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:35:43', '2025-03-21 23:35:43', '2026-03-21 23:35:43'),
('068bde67faa638def412d6c336c6ee460e809775a69497931e33a05da5f34184f70b190e6d090f1e', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:39:49', '2025-03-14 23:39:49', '2026-03-14 23:39:49'),
('069d8d45f83e1d071ad4c0e1b14a6ed5aaae07be1d5c7541ce22602921afd1a398745fd27ae62565', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:48', '2025-03-21 22:31:48', '2026-03-21 22:31:48'),
('06c89bd4fbd60803acfb755d70578bcc0ec8f32e34460cc3c26afed49980433bee6c7db611d4b677', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:52:01', '2025-03-15 02:52:01', '2026-03-15 02:52:01'),
('06ee45dab684b75a9034f1e31bc38e295eb3fe0049432ae93e14f7434bb5a63a381732057b2b1423', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:43:40', '2025-03-21 22:43:40', '2026-03-21 22:43:40'),
('083d1cf1f5bbc7c992e4277eea9d1f2955f6798c8d55e61aa3eb28fb85c82f19297a2cbdf574afb8', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:56', '2025-03-21 22:31:56', '2026-03-21 22:31:56'),
('090487fdca49f872a74bf5f1a220594f5f8e099ece1daeb185582e57102b41af5f3795332e01e6d1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:35:41', '2025-03-21 22:35:41', '2026-03-21 22:35:41'),
('090ab604d517bb1584ec48d481d65791fdd0a7928b2a482bec2f7a3c0e35958bd86665b1affc8680', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:42:42', '2025-03-15 22:42:42', '2026-03-15 22:42:42'),
('09a38a7e07afd8e53246e7bad95a3b331ee36300bce1e943d3327719ac0f6b9b7367c6e58eaa5a1e', 2, 1, 'accessToken', '[]', 0, '2025-03-16 00:39:47', '2025-03-16 00:39:47', '2026-03-16 00:39:47'),
('09c08d1370e59e63847c6db5f69696d2223938700837aa1972731df12b9987360ab93c8beec29b55', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:39:15', '2025-03-21 23:39:15', '2026-03-21 23:39:15'),
('0a18f6f97ab90db99724334c9df09e493c9b227669dc3e96c4c514b885bd1eac8ef2d4611f0493fa', 1, 1, 'authToken', '[]', 0, '2025-03-22 00:00:18', '2025-03-22 00:00:18', '2026-03-22 00:00:18'),
('0a328dcbcaac4ca56155d51cb587973fe4548875fc47c8780fd38de8c130f0729b258972102435ec', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:38:16', '2025-03-21 23:38:16', '2026-03-21 23:38:16'),
('0a7af9a6a2946fe9ec0678ad45b571d8d219998f0a3c92a175034a2e052958835e28a3811d3f0770', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:37:32', '2025-03-15 21:37:32', '2026-03-15 21:37:32'),
('0ae998e58a41d7e183cf253a4afaa3d25cadb1f5f2a92757236f8acb25ce6587e40c5e21966a1ba1', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:53:46', '2025-03-15 02:53:46', '2026-03-15 02:53:46'),
('0b0699b435fbc406e2084a6df1d45dabe425e07ce49b2d019d3536a7205db27929629416c86caa87', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:26:15', '2025-03-15 03:26:15', '2026-03-15 03:26:15'),
('0b403a575a5c9d84b82a682d2ec63255754e0f47ee220c2c22a92cd61afe75d2e7bf578adc813a16', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:44', '2025-03-21 22:31:44', '2026-03-21 22:31:44'),
('0b561b3190ee690e8a7b8ff30d986e1bc49d96e4e1ad22f8128ace6682ba52c5ddc5370d265e3c3a', 2, 1, 'accessToken', '[]', 0, '2025-03-15 23:43:01', '2025-03-15 23:43:01', '2026-03-15 23:43:01'),
('0b80de4e47af857869b44de53ec24950f4a2d2f1ccfe30cf3aa658a94ea3cd36a55511c305f265cb', 1, 1, 'accessToken', '[]', 0, '2025-03-15 20:41:27', '2025-03-15 20:41:28', '2026-03-15 20:41:27'),
('0b8a49fd95a205874ccfaea77d3ac17ec4bb84ccf9baf5cf415dc1f60583904adca4a53d43139465', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:42:17', '2025-03-15 04:42:17', '2026-03-15 04:42:17'),
('0bc9315b34ed9d7b0ec5258b7d41c5154a0240941dd379b7139862d7f9a1df354dd43f6a75e11ec4', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:34:56', '2025-03-15 04:34:56', '2026-03-15 04:34:56'),
('0c1fc72bf7c6509e179234d384d46bfe1bf0d0b939571ded3457bb58f92948116f04b43a1513a18c', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:50:42', '2025-03-15 22:50:42', '2026-03-15 22:50:42'),
('0cfcbd1db0bd54c5a32aef02a44f0148ce90c820f2d9b722a0a20ea97b12335d1f52146680985276', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:43:03', '2025-03-16 23:43:03', '2026-03-16 23:43:03'),
('0e2c89f35d43b60f770db0410287a5839639cb63b6e80e6cfc126e98fff11de1af04bef5ac77615b', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:40:46', '2025-03-21 23:40:46', '2026-03-21 23:40:46'),
('0ed67c6e4b9fbee7ecf899470cb402d5b16ad21efeb1e81e820c45638033b96f5f950af592d2559f', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:15', '2025-03-21 22:31:15', '2026-03-21 22:31:15'),
('0f28b223438d9b263ef3006f5accc443ec215cce42b110da988498cdc0e5079c1f70768822a19912', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:25', '2025-03-16 23:41:25', '2026-03-16 23:41:25'),
('0f28f7e060108816b3f994f9e53f17e38a0eb4f0563568f6468a90418fd3a248e85d65a9059098c7', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:38:34', '2025-03-21 23:38:34', '2026-03-21 23:38:34'),
('0f7af082db4ff1a59e1dd2ddc0481dec2f074f422d0021f6a3b7ce75420c6ecf9a8b231def864fc7', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:40:11', '2025-03-21 23:40:11', '2026-03-21 23:40:11'),
('0fd55ff47bdcb506381449f01ae05fbb1bb6e7a420822e8fad29826906fe2ca0093d8aae8cbaae37', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:58:24', '2025-03-21 22:58:24', '2026-03-21 22:58:24'),
('103f4cbeb6661a2b1484a7e993d67f68e1bdfa41420dcefe7c3f682809fde5616fd192a0e06ab85d', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:32:17', '2025-03-15 22:32:17', '2026-03-15 22:32:17'),
('105f1d2eb7caa2c2f90e9c7815391d550b5df80c5b8983c9e22b17fcabe6c2603c8bedc8295bb407', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:47:12', '2025-03-15 22:47:12', '2026-03-15 22:47:12'),
('1091bcc05dca7b70441a7687d09c327bbc10cab95681269e8016d19f6c6e09e259e9f2d2229d6c92', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:28:30', '2025-03-21 22:28:30', '2026-03-21 22:28:30'),
('10fbe5115bfb2dea85d430cbeb0068da5ce820290bc1fe77de191c5718049b17e1d02f230ad1c331', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:11:42', '2025-03-15 03:11:42', '2026-03-15 03:11:42'),
('1159b6cbc8738b9b6a016ca84c25743d90fffab82609bf28a00db607642a31d232b35489661fe921', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:33:29', '2025-03-21 22:33:29', '2026-03-21 22:33:29'),
('11b61d40667bc71abc801aaa47321edc5e0e501e8f98723efd0f7756dce31ea314d10f17bf553206', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:39:07', '2025-03-21 23:39:07', '2026-03-21 23:39:07'),
('11cdeb637f6d0c7f8672957e50a4fd916881419ba2fdcd4951acf8771f3090571993fc814d956846', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:24:15', '2025-03-15 04:24:15', '2026-03-15 04:24:15'),
('11d2f580f70a671dfbf741cded35dc29d8d7d425115ba5b772e6681ee0bbb27b15cc1611ae0257a2', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:39:18', '2025-03-16 22:39:18', '2026-03-16 22:39:18'),
('129a0729c821295ed1a1c740072765b072d7a7ef878c709ab9d07932f77a3958431376a460ad21b6', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:41:00', '2025-03-21 23:41:00', '2026-03-21 23:41:00'),
('12e6e49169512c13a0fb7f382759adf53abe1c09a8c93f3803e855e6d6da1b3258663353a9fb2212', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:52:03', '2025-03-16 23:52:03', '2026-03-16 23:52:03'),
('135d627ff15ac3458998b2229c17f61dd54e0054afd67567a63c6407c7d7e654f78d707136879d0d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:46:12', '2025-03-21 23:46:12', '2026-03-21 23:46:12'),
('13739cfd802b5acc3fe4c80b494475354d65ee67eedbd39f6276ba3d5333cfdf108e17e7f0b97480', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:30:47', '2025-03-21 22:30:47', '2026-03-21 22:30:47'),
('13e3c3b3d6add6d0535bc63c3d8d63cdb9af864de80bea50920c070801ea469fc044d65fcff3e9d0', 1, 1, 'authToken', '[]', 0, '2025-03-21 22:25:17', '2025-03-21 22:25:17', '2026-03-21 22:25:17'),
('149802e8f5a08daa59b7f877db94a82637217047a1805efc849806a1ff8fa3caef292fd3d8d5f271', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:11:26', '2025-03-15 04:11:26', '2026-03-15 04:11:26'),
('14cc8817352aad8e7a5a5bb3fe6ec9220d7ddaf5c9dbed2059c1ca73001dab1d5fc0fc7cf2b97ed9', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:43:06', '2025-03-21 23:43:06', '2026-03-21 23:43:06'),
('15017d0e2a935cb1e2646c310cd9cb3eaacbc01ea73e826f45328aa851a5c0d6f84002062f2ec8b2', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:40:28', '2025-03-15 04:40:28', '2026-03-15 04:40:28'),
('15ea5f5002ca0cfff008d3ac7f0ff7f5458b2c7e362c25ca234cd14a486e9a92902790b69f126509', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:14', '2025-03-21 22:42:14', '2026-03-21 22:42:14'),
('15fa3f54617ded4608d3f6ec5d6211ffa127aa1524f2b637503c18edfa386677e0e583412d787aa2', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:38:52', '2025-03-15 04:38:52', '2026-03-15 04:38:52'),
('166325eda70457288da3dd0fe7a1d525f758fbe161538bd7f213284eab0bf2a1d983eaa78fbccd06', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:38:52', '2025-03-15 22:38:52', '2026-03-15 22:38:52'),
('166a5dcce8bd096ada5f664e10b5e24abb620e6029db1e29a0c75f4cf66f0d624d34caaadb1fe40d', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:24:05', '2025-03-15 04:24:06', '2026-03-15 04:24:05'),
('167dd91f3c08c7b74d8e23159a9f79d6b1b159b93ac3f9f4be697453f5ccc4d80aa01aedbd494de4', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:57:30', '2025-03-16 23:57:30', '2026-03-16 23:57:30'),
('16dd075259d6161132518d8d3f7627ea3d04f4376019444d9da2743078074ca490ccc0bf1c96b24c', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:35:00', '2025-03-21 23:35:00', '2026-03-21 23:35:00'),
('17195cf9e7d37c01654242afb97222d10c12d0ce244c0f200a9668ddf8c8fe0e8c53c3f770d549db', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:52:39', '2025-03-16 22:52:39', '2026-03-16 22:52:39'),
('17613b0d958fe53222bacb87ff2134e8ba74496979ca2bc3f20f5a6319656d2ceb6aa150f38a5239', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:05', '2025-03-21 22:32:05', '2026-03-21 22:32:05'),
('17a2488bdbef38908acae354b7dd316932f209ade536fcd5038419866b43080d969b481fa1df5d0e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:46', '2025-03-21 22:32:46', '2026-03-21 22:32:46'),
('17c5ebf87ce3eeade34a865dff5760d8a09ff91a8e0fe67dc4f44f58b1bcf94e527f202cb0db5dea', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:07:40', '2025-03-21 22:07:40', '2026-03-21 22:07:40'),
('17cbe3b4185f3d8b5b78c5556140b7eff67e1acdaaeb0f0cedb5810d6002be7e5fb9593bcdc30782', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:35:12', '2025-03-15 04:35:12', '2026-03-15 04:35:12'),
('184ee9f7891e90469067db73fed361ac71463dbe8c956b914670e4501cc190eeee943813f9499952', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:34:10', '2025-03-21 23:34:10', '2026-03-21 23:34:10'),
('18874b91360fb8abaefcc69589bd387e5c21220ad907ebaaf4560230d9eb93fe795cd1a2d00370f8', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:04:07', '2025-03-17 00:04:07', '2026-03-17 00:04:07'),
('189e9248f3d996f4be63341d9fd0ca6f273134d086eecedbc84b506d95678cd6e33d54560f3416cf', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:03', '2025-03-21 22:31:03', '2026-03-21 22:31:03'),
('18f28491e21835386e1d5a15b7bd09212955d42c533d6865b91d549dcc62e043ba23ff5a7294041d', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:34:10', '2025-03-21 23:34:10', '2026-03-21 23:34:10'),
('19a3c9d8bacf4194ec9bdd3f99edb1f680b569bc2077ca87f8611d5349adc50e91e91d536df25cb2', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:13:40', '2025-03-21 22:13:40', '2026-03-21 22:13:40'),
('19b26f2133932f076ea4093d951269f1a16481a9a2dd2f9139c092e91c02fe9ade5c1501791c15e6', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:41:43', '2025-03-21 22:41:43', '2026-03-21 22:41:43'),
('19c44848a49e1ccc39a4de88267027ab19eaf8ee6c023b807480050adb1b41da493744c6805a27ce', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:03:10', '2025-03-21 22:03:11', '2026-03-21 22:03:10'),
('1a65dab36e615f884aaf9307a90b7482e67180f9c0ed8438a5926db936b2fc23f16759564ce4b88c', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:27:01', '2025-03-21 22:27:01', '2026-03-21 22:27:01'),
('1aa3506c434a4b60ae3d68cc8ff05bcedc03953626b35ca7f240cf25f7bcec6e95b905845791d7cc', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:39:19', '2025-03-15 21:39:19', '2026-03-15 21:39:19'),
('1aae5fc36b5936377e8f69f186548105c6e181e0898549bed7aed0cc02ad61bc4541dd1236aa7921', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:44:06', '2025-03-15 04:44:06', '2026-03-15 04:44:06'),
('1b105230801950efe4353d76bc18b244ab639287e3aa31bc8901410420fba4e87409b80b5ed5305f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:57:01', '2025-03-16 23:57:02', '2026-03-16 23:57:01'),
('1b291834f3b34aa71be724e9bc1da2f77d4ba593ec93628b242fcaf3e87b158b4a443894a50c95fa', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:28:24', '2025-03-21 23:28:24', '2026-03-21 23:28:24'),
('1b2e688eff4e61aa695159d18fb59c7a5c37ed87f5bbedee73d64d06028f22e1f5b4e62756b231ed', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:50:16', '2025-03-15 02:50:16', '2026-03-15 02:50:16'),
('1b7a3eefd28181de972727f719e47de7c670b2dfc690c7502623c69b90dfa61046fdaf106b1e4f99', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:31:46', '2025-03-15 03:31:46', '2026-03-15 03:31:46'),
('1bb35f6aebac93d396f427f764c869c8ca373e240932f539a41e99c00bd72dfa0f52fa9dd9b24a2c', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:04:27', '2025-03-17 00:04:27', '2026-03-17 00:04:27'),
('1bbff16b8f745655c8d3c0459ac600fee9426b472f55aec6b46875bd7c275888db83d7f343192216', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:04:10', '2025-03-16 23:04:10', '2026-03-16 23:04:10'),
('1c1df6e67f68dffd8f3344f851e3f9e0fa9a805944440d4a6ab322b1e43817bd86d719d12ef139dc', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:15:51', '2025-03-15 03:15:51', '2026-03-15 03:15:51'),
('1c6e493cf111ab4093a59b134773ef69fce87b476905769162caa89d48d32964415f364693231768', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:22:24', '2025-03-15 04:22:24', '2026-03-15 04:22:24'),
('1c7f1e1e6a2e39be9c567a16c78f9e785342f618c389fd9f9ebb7fcdaf4a98494488c70625d09072', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:02:27', '2025-03-15 04:02:27', '2026-03-15 04:02:27'),
('1c894a42f1f8e2cc6c5409b2b3bdf8a461c7d96241fc7dcde8c62c94c5056be9cc3c6d8b5f87b5b6', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:00', '2025-03-21 22:32:00', '2026-03-21 22:32:00'),
('1c8dadac41129fbc61d7767c44e01d80c4e84432462cf8e4fb856bbe535b2b5ac59aa44515b6812a', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:29:37', '2025-03-16 23:29:37', '2026-03-16 23:29:37'),
('1cdd54bc28fb614ef9966e5a29d57498b53a0607ea82b7c5d0a1e576f0d66ed03116b0fcc46650aa', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:03:49', '2025-03-16 23:03:49', '2026-03-16 23:03:49'),
('1d2dbbc7d16e75b47422c6e30ce1c89eeec4325415ad5c350d49213bd1b6824d893bdc6cec80a7bb', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:52:34', '2025-03-16 23:52:34', '2026-03-16 23:52:34'),
('1d390ecc59c591ae264f14fd4a9b39e88c80f2c27c374fcacb395475425f1eace528bbf0d28e8efb', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:46:47', '2025-03-15 22:46:47', '2026-03-15 22:46:47'),
('1d42998775c0dce498877de173402f35c1b681c1bc81bc8ee3b3144f31a6a7485b98497518aee9fa', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:49', '2025-03-21 22:31:49', '2026-03-21 22:31:49'),
('1d6aec8384a4ea51670c95cf09d9d247047156af299a9528c2093beb26c1e66edc560c8a2244160c', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:38:28', '2025-03-15 21:38:28', '2026-03-15 21:38:28'),
('1dba37d45b2ec58a372173eafb67c44cd7962089bb1616e9f60387dfc020579a539129eb4ec4a873', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:57:38', '2025-03-16 23:57:38', '2026-03-16 23:57:38'),
('1dcae85e20ee2f9a7e9b7fd712bd2ec6abd7939f729a7c2b905666752db86eb097d79d4865a00d05', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:52:32', '2025-03-21 23:52:32', '2026-03-21 23:52:32'),
('1e1a6a0f01e382b88c04fcc5a82d4e698d5658229f264027503a25cbfc09f3d387700795d527c1c5', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:49:37', '2025-03-15 22:49:37', '2026-03-15 22:49:37'),
('1e21dcf3bdc05d13d2a0dcc83b2755cd0599ca22f1081cf66a4e172d8ec60c760ad8d2f311cb6608', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:00:22', '2025-03-15 22:00:22', '2026-03-15 22:00:22'),
('1e90262f30e7cd9372efa8ec784fcbebeaae923517c3056ac36c4d0b49c0c338bb2bd9319f54977e', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:37:26', '2025-03-21 23:37:26', '2026-03-21 23:37:26'),
('1e9e674770a6a2290bbaecee7965fa195fe81bbea9514365fe068b0a0a502b9237fd2b4d43229042', 1, 1, 'authToken', '[]', 0, '2025-03-21 22:51:18', '2025-03-21 22:51:18', '2026-03-21 22:51:18'),
('1eebe4163a64b354599a00e70dde14c7560483169352fa3df5bfe7e9115718a556627aab7b8a389f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:14', '2025-03-16 23:41:14', '2026-03-16 23:41:14'),
('1f210823bdce9887e3b849da8180656833da7fc1efb40b2ccd78a5b99cb29724d6731f2f4fadd49b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:49:24', '2025-03-21 23:49:24', '2026-03-21 23:49:24'),
('1f223287e9cec6568b69c9b682b478dd522b6110669a8cd48101a80af030345111b386d6ee943c23', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:06:09', '2025-03-21 22:06:09', '2026-03-21 22:06:09'),
('1f76a2f3c9ca7bb2605b8eef71df80e98882f01d962939606bc96a3cd1c22600f5f66ed02f71ff96', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:25:30', '2025-03-21 23:25:30', '2026-03-21 23:25:30'),
('1fe7867fc1a8b024a3abf76f2c539236f656fe003f3525ab95b3b7f6332ba58efc8d2d8c82f3a31e', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:26:38', '2025-03-15 04:26:38', '2026-03-15 04:26:38'),
('2033a44b791e9ce8fa4bae54036554f10d0d4c55a12aff434790c0851270d5a34deddb7046673cd2', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:12:38', '2025-03-21 22:12:38', '2026-03-21 22:12:38'),
('20bad004ae8439159aacaf9eaa0c7fd194a046ed645864dcb48441632e906f4038f99be732e9aaa4', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:27:11', '2025-03-15 04:27:11', '2026-03-15 04:27:11'),
('2105bb6d83bac2adb592af3d9cc2f7d8a45856d2377932f91858d9e6e0caf960ca7edb0fa099fba7', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:33:51', '2025-03-15 04:33:51', '2026-03-15 04:33:51'),
('213b24588d2b2c8ff752752adacd9778b104f950e69eb0c6d12ad34927eb32625944c46854624122', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:59:52', '2025-03-16 23:59:52', '2026-03-16 23:59:52'),
('21756a07e5dfc900f30cfe51c12f84f05e4217e6bb039d72cb778debee77cc2afe2064acdfe82e20', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:18:18', '2025-03-21 22:18:18', '2026-03-21 22:18:18'),
('2216bc4069722866dff2a69aac91c71d2266ebba5931d54c708392ae7dad00496792de39c232bd46', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:26:30', '2025-03-15 04:26:30', '2026-03-15 04:26:30'),
('221bf478d5e8722bdba1b3388e23adde14134fd2b6fbe03a610acc4357d9cb45103a3f04739b6746', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:04:56', '2025-03-15 21:04:56', '2026-03-15 21:04:56'),
('22fe757c7ec801990a57b3abea5e0190bf0063d9931a7a49026128d0b665efb25d0347d741bff94d', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:56:58', '2025-03-16 23:56:58', '2026-03-16 23:56:58'),
('2379d05ae4ecc8646363756ce1c7f7f532c651252d2d3658def4b54fb18ac6270e5cc0279c2253fd', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:26:02', '2025-03-21 22:26:02', '2026-03-21 22:26:02'),
('2384910e0770af8b910cee365559cd494a2a7c7c5614136c705ad7fa1cfb6c4ce5dbdaa5216b93cc', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:03:46', '2025-03-15 04:03:46', '2026-03-15 04:03:46'),
('238d08247d61806aba8d59446e1e91e7c811f5681f600cbd37edc7ad782179a6d885cd9de0bd86d5', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:22:41', '2025-03-21 22:22:41', '2026-03-21 22:22:41'),
('23a56f0ba840d3f9a39e2cb501ece40831e268843690ed414b7c9925b01510a422acee397182f812', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:13:24', '2025-03-21 22:13:24', '2026-03-21 22:13:24'),
('23cc8bf070333f6248a08a05acd9c27a58eba29c02b9c847d6f83c34c25c9ba70a3ec2b6353ada01', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:27:50', '2025-03-16 23:27:50', '2026-03-16 23:27:50'),
('23f946d00c53871e5628be3a4deebdba77cd4ac84b0a302e934d13b425347400bc4be3a358fe7351', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:46:51', '2025-03-21 22:46:51', '2026-03-21 22:46:51'),
('246071625528e2dccb4974189a36d5ecee759b3ef1f82fcdecf57d4e0a4c8123cca3262b6d10b0dd', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:57:22', '2025-03-16 23:57:22', '2026-03-16 23:57:22'),
('251adbbd140b770f17013f9c5886a6fd128216204c407cf22ad871504043ace3d9597545bd00b671', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:41:16', '2025-03-21 22:41:16', '2026-03-21 22:41:16'),
('252c4fc17aa7b7fe2e4c5de219af13a37b9d79ee1a59e18ac9327c719ae6ec23b50c0d1592622ee1', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:57:44', '2025-03-15 02:57:44', '2026-03-15 02:57:44'),
('25f512331c5849009c4254e9f475b8f574d11edda41442c0f87c7a6947f0357a2e659fc308298909', 1, 1, 'authToken', '[]', 0, '2025-03-15 03:18:37', '2025-03-15 03:18:37', '2026-03-15 03:18:37'),
('26096d0b1a77fb20f7fdcfccc5a0c15bc445ed587e358172c8eb31de474d9df2d6542d3bb0ccaec2', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:42:44', '2025-03-21 23:42:44', '2026-03-21 23:42:44'),
('26223d44373f1653148db7b11166defeedadb2d32d0b753ec7bc65938498aea6eb61e1bd85047328', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:26:14', '2025-03-15 04:26:14', '2026-03-15 04:26:14'),
('26884ccec81ea7a820a03d0680da19f7087c3a88fc58fc7486b3ec01190e582fff294fded3920eeb', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:12', '2025-03-21 22:05:13', '2026-03-21 22:05:12'),
('26dbe6221d97d50a3c866e7912be933863caa7771dedb0190bc17a9305ab53d9407dad6d748a5e24', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:29:47', '2025-03-16 23:29:47', '2026-03-16 23:29:47'),
('2703f31236e988ca71f8b6d08f5da643be9318db4b508e7b7cedf14717b5f3fee2f35cdb13e59c5e', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:52:17', '2025-03-15 21:52:17', '2026-03-15 21:52:17'),
('2718b092ac7904868b943f2bea383fede0c8a295bd5afb546cce42c2f56a89fac5c780995331a3a5', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:17:12', '2025-03-16 23:17:12', '2026-03-16 23:17:12'),
('2726a6ed68d7d1f8d7584a732879f2467f4ba1ede094966c0fc135e277d02aafea5ad63915cf0397', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:33:15', '2025-03-21 23:33:15', '2026-03-21 23:33:15'),
('27524a656a73b04a90f8ed6d7442b5c4804ad16f95dbca9bdcfdbe780e1bfd786535b6ac9a34ab06', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:35:35', '2025-03-21 23:35:35', '2026-03-21 23:35:35'),
('28459a601ed217ea642e351ca2972a22b1e6207e7283ec6c201ad57b7af347a05748b28671c2ec67', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:03:37', '2025-03-16 23:03:37', '2026-03-16 23:03:37'),
('295d448d0c60369a59e727a25e735ae9f3d99c13551b8ca4ec16bd1d8875cf1b2d60064a2353a335', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:58:07', '2025-03-21 22:58:07', '2026-03-21 22:58:07'),
('2a4085e41b4658ed83e62d29436624c85131873ed4c8a866bc99d76ee477dde1255e6b527074bca6', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:33:49', '2025-03-15 22:33:49', '2026-03-15 22:33:49'),
('2a945893297ace87862195aa6976910718ee4a03e2214a38cf261488e2c35593b0a07d1a593d95e4', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:49:03', '2025-03-21 22:49:03', '2026-03-21 22:49:03'),
('2ad952f1d96c43d37a7645344ae105f1a64d8e64d9043b749ecdab15e8439fc7dc40643973f08f93', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:52:14', '2025-03-16 22:52:14', '2026-03-16 22:52:14'),
('2b55b3876fb51fb62403f6891e3a6310f015a3c0f93959139b218e514582246558c70ede76c8cd0c', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:20:07', '2025-03-16 23:20:07', '2026-03-16 23:20:07'),
('2bc17d37ff6b53dcf58a4b1bf1de3aa3ca5fcbd23ee7462e92ae366dbacc39eb68f4b4ea15b745a0', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:33:03', '2025-03-15 04:33:03', '2026-03-15 04:33:03'),
('2bcd61912fcbad771c2c9f308f9a33373cb9f5ba2e9b1fda9467e83fa7d94561f57cc904ba3dde93', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:55:56', '2025-03-21 23:55:56', '2026-03-21 23:55:56'),
('2bff183baa4ac49fbd30619fa919675c495720033f5b9b745e061e7957f2e5306341399af688db4d', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:55:34', '2025-03-16 23:55:34', '2026-03-16 23:55:34'),
('2c96db6d6fa8088f29c2cd5641e610bb32308f9a65022bffe30e7e42a6b653a510a2d04134aad1ce', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:30:00', '2025-03-15 21:30:00', '2026-03-15 21:30:00'),
('2c9b16f77118a8b0e37b8bba0d5aa58a16e4a089b6c8d2a6e471cd6fe752bf4ddbe3f7c0787b9c4d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:29:59', '2025-03-21 22:29:59', '2026-03-21 22:29:59'),
('2d2f665fb892dccf73a6f24fb320d715542a263379af52a9312bb55efa5f6b0c033da00f44568903', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:28:44', '2025-03-21 22:28:44', '2026-03-21 22:28:44'),
('2ddc206a8be74aa5471f842845ff238524271907818fdd59d4edaa33cc28372d1ec76793d3578135', 2, 1, 'authToken', '[]', 0, '2025-03-15 21:52:22', '2025-03-15 21:52:22', '2026-03-15 21:52:22'),
('2e5028b69d2e268fa1d4ae1857abbbae3b2597a6806698e5cb63468e2656d8e3479f18cbdb3240a7', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:12', '2025-03-21 22:05:13', '2026-03-21 22:05:12'),
('2e6a5646429a06457327b6f06e8fd41d864413254e3e86eb7f21e2f14c449cc299309839b6a465c2', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:39:36', '2025-03-16 23:39:36', '2026-03-16 23:39:36'),
('2f0c234f9005b41fe6605894d2f0e5844f73219441e2545439831c990a788d7ce8ff52ffdfda549b', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:22:28', '2025-03-15 04:22:28', '2026-03-15 04:22:28'),
('2f19849e82f9af276c093b12ff0e370d5729c3dab5848bab3237e026ca326b642f8ae92bc275ea57', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:47:02', '2025-03-16 22:47:02', '2026-03-16 22:47:02'),
('2f1d3752554aeeba7134fe48154817467fb0c936c566e038eb0290a5ab5b22f5b5f5375906ad01a8', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:52:23', '2025-03-16 22:52:23', '2026-03-16 22:52:23'),
('2f8a36b1690f11fee24b4026ff9e8b9db20f6d7aa5467f7115f9618667882cdec754ed45ccbfd9b0', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:17:22', '2025-03-21 22:17:22', '2026-03-21 22:17:22'),
('2fb049e362867cae726be1381cba76971b4c88c5002bdc09f841811083bf82957c122d3daef785d7', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:59:32', '2025-03-16 23:59:32', '2026-03-16 23:59:32'),
('2fc882fdeb81c7a6df54992f1e90b9849a71fea9a9729d23029e3b4c91d8918a2b7761de05193cd7', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:26:47', '2025-03-15 04:26:47', '2026-03-15 04:26:47'),
('2fdab7c8fb16f31098dcefc9e999008d6c1ecb1b69740359503b8581a9b987cde561fcd053574921', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:58:05', '2025-03-21 22:58:05', '2026-03-21 22:58:05'),
('2fdb42edd61c46aa8930a6e1cfd270d1d903b4f55a6ba41743a81d9055faa806bbd8dbc1be38bdba', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:07:20', '2025-03-21 22:07:20', '2026-03-21 22:07:20'),
('30d643436c209a18d6f1c7c88a5a46daca198042cedfecb5850f0427421a2bd60e466e075e9e4893', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:27:38', '2025-03-21 22:27:38', '2026-03-21 22:27:38'),
('30f7081c306e300324cccd8483e8bb5fb85f9aed30583056ae82532d0f930709fde1b4a5abb2cd9f', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:03:15', '2025-03-17 00:03:15', '2026-03-17 00:03:15'),
('31610671e9baf0557d7e35e6903ab510ae26b55e4c734938d4d461dc96e4219a466401b39c94efa6', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:25:30', '2025-03-21 23:25:30', '2026-03-21 23:25:30'),
('31cec5641007ae5521a002f7016806d6a9945deab3b8cb6673bb757d4c760221f2ee1aa0fea515b1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:49:51', '2025-03-21 22:49:51', '2026-03-21 22:49:51'),
('320a3e917b8d46db3370b787f91c934351bb2383d9c2945f8d5d7e89724cf45ed8de9349cb4783e8', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:39:35', '2025-03-15 21:39:35', '2026-03-15 21:39:35'),
('323249f5af4857b59c83b3df43201415d9926f60953c752f9766f4182300be1a691e92c88fd016c6', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:05:57', '2025-03-16 23:05:57', '2026-03-16 23:05:57'),
('329da1b13d78290433ee970d38fa9ad8074ef031f6296c5468780e32116603584dd5f41fd3258f95', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:03:28', '2025-03-17 00:03:28', '2026-03-17 00:03:28'),
('330475099bd19c8d8d240961e1279495755de2565915acf54fa462e228541120f13a96104266a485', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:26:49', '2025-03-15 21:26:49', '2026-03-15 21:26:49'),
('33507f4cd860e33166c9bd17030839c6b757fa961d74f4964a7a743dc214ddfaeb101c75fe2d0fdb', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:02:58', '2025-03-15 03:02:58', '2026-03-15 03:02:58'),
('342554c73f9ed321ed33e8d7eb3e7ef7373f44edb26ae07ba1468bd1d487b847f336afc512c35ebd', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:24:13', '2025-03-15 21:24:13', '2026-03-15 21:24:13'),
('344b2567ceb689fc9360b864b3860c131a9bb1833fdf8bcec2dc23ad425123ff4c0288db1f884fdb', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:40:40', '2025-03-17 00:40:40', '2026-03-17 00:40:40'),
('345f60c004b0373d3f188caa8f3a1f89862754b652511a121f0741011a58e2408d6e54698fe8e144', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:16:53', '2025-03-15 04:16:53', '2026-03-15 04:16:53'),
('34d9910c1fb942bc9c87983a20aa435f4009858d696ef13249a3fa5592091985a37dc266e3c55cb7', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:40:25', '2025-03-21 23:40:25', '2026-03-21 23:40:25'),
('35313ac474b37d20866bab1127743a5d8a63b9169a9e63cd3a2fa41467f42fe77413a81c3ce96afc', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:33:40', '2025-03-21 23:33:40', '2026-03-21 23:33:40'),
('35603a5906f0361cce5b3e2c8d7c8d274254ed93b1cdb9e27b3aba5f0493089ee3198f8c76a4100c', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:04:09', '2025-03-15 22:04:10', '2026-03-15 22:04:09'),
('35a98a0884b0ee56e0919dc550deb15515092dd7700566233907ebb3a85884fd091a1dbfd2d0545b', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:00:06', '2025-03-17 00:00:06', '2026-03-17 00:00:06'),
('35c0c03ffcbf398a660863b07f99e5405537dcb01a8d7725ec0ae7790b4a247f4f2220fa9addbbbe', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:41:05', '2025-03-21 23:41:05', '2026-03-21 23:41:05'),
('361f15ab6fa96e14690aadb634a2b86b6749055ba49931232ae00c57e3214cef6a2d78a50baa33b9', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:56:54', '2025-03-16 23:56:54', '2026-03-16 23:56:54'),
('362b77fe21b6813b22ff7b7c6da314d34c28f99fbb60774ffc4a495fb370ae605df39395814f6288', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:38:35', '2025-03-15 21:38:35', '2026-03-15 21:38:35'),
('363088cf9ba8dada7e9701545e94cd74ca6a4cf4d26f39eac47346e46854a578d9a9629d3330ef94', 1, 1, 'authToken', '[]', 0, '2025-03-17 00:45:36', '2025-03-17 00:45:36', '2026-03-17 00:45:36'),
('369c00133d6f2441966a1af2e0dca59f39297d0565a47904ec983f02ee242c14c55d536aac98d0df', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:28:56', '2025-03-21 22:28:56', '2026-03-21 22:28:56'),
('36b101bcb2fab60736be15112845377acef757cfece7916c846500614c3e18b32703c0327b0840d5', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:42:50', '2025-03-16 23:42:50', '2026-03-16 23:42:50'),
('36d19dce6f2961d6083fbadc2fadad3c8238964147f86da86c158c39ea260a464813418e8cfc83f4', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:20:33', '2025-03-21 23:20:33', '2026-03-21 23:20:33'),
('36d39b5cdb0ed845e2d0795a95da4e73d60c554c2c6f5ec07db43639fb2776c32afc1f8049f95bf4', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:39:33', '2025-03-15 04:39:33', '2026-03-15 04:39:33'),
('36db77aa583ad4b11c028d3915cf8cb13ec0a929b70c61a73cd3677b219fa5ff6e225166866bd909', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:48:05', '2025-03-15 22:48:05', '2026-03-15 22:48:05'),
('374aaa6ddeedc0f4eb4e62aff33eb2b192fed482fd4b290fc6c09a90ee3faa72262c320542c9964f', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:29:28', '2025-03-21 22:29:28', '2026-03-21 22:29:28'),
('37685d30db401aa00bfbfab346ad853df19170de02ae0edf5a7ae2b9616a210ccfe53f04f443b376', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:50:25', '2025-03-16 22:50:25', '2026-03-16 22:50:25'),
('37d7042c01f838a4b2f8118a0a6cdbb4d2e0f6febfcf2f18797cee8794cb17f0bfc45ae4a2f3ef3f', 1, 1, 'accessToken', '[]', 0, '2025-03-15 20:54:33', '2025-03-15 20:54:33', '2026-03-15 20:54:33'),
('37d8f0dc0b088b2e49e7c8990d82f3fb0978094af6a340833fb0e6df084795dc22d07f19d8cc2272', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:48:53', '2025-03-21 23:48:53', '2026-03-21 23:48:53'),
('37f56c50794fde3b3a67ee3baa3774be0d00918c3e8cc3437488c3b8ca5ca3e9e9af02ca68965745', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:40:08', '2025-03-15 22:40:08', '2026-03-15 22:40:08'),
('381fdd1e7e3300cb08ba165baeb6283dcec9ebaf0f7aaf6ebc0167aba205434b7e51ae7dcf691c86', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:37:33', '2025-03-21 23:37:33', '2026-03-21 23:37:33'),
('388b2410cb7ab2d7fb39ebcd89b3a1b498ef2503aa07058f899995a019acecc8d8ec0fba609a4f04', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:51:00', '2025-03-21 23:51:00', '2026-03-21 23:51:00'),
('39738eea0676669086f1033b46d050817c7b8cf6defdba10bcc49a9d20e47464d58bd0a99ad009d3', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:13:51', '2025-03-15 22:13:51', '2026-03-15 22:13:51'),
('397e5db33014bf975af649ec905602fd0bbf77a168a8370db8af39e4b2ec36d4347030a201a1e656', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:23:23', '2025-03-21 22:23:23', '2026-03-21 22:23:23'),
('39955366ce884d4180e11d5b499d7395f246684c91da71da516346ea52396b0bcf249ae80bcd1da6', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:29:29', '2025-03-15 04:29:29', '2026-03-15 04:29:29'),
('39a0806385a2a2ac733e67006ff121b25c368c28c6018c2685000becf23c041c07a776c4a7409559', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:18:09', '2025-03-15 04:18:09', '2026-03-15 04:18:09'),
('39afd12c8aca49daa6cf715a4fe633bb57b04b720a83262c821b3c61319be489c5299e433a3caec8', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:16:41', '2025-03-21 22:16:41', '2026-03-21 22:16:41'),
('39d33f7f3bdcc66dd8c4f0426391598136edccd1dd641b26993dc33471ddf67a1bfa9aa6ff276003', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:46:36', '2025-03-21 22:46:36', '2026-03-21 22:46:36'),
('39ef9126916f196d1cbb0dae4d427d498b787df2d9817e3697836073140b73a62a5c0f6ce2e8e588', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:53:35', '2025-03-15 02:53:35', '2026-03-15 02:53:35'),
('3a720b303d63301376126496910e2c24e906250640e61aa82d9e662165b66d2e1fb714ed7f7d77f9', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:25:22', '2025-03-15 04:25:22', '2026-03-15 04:25:22'),
('3a88f617635380b9aad57ce55db106a7ed89cf49f43303baea91a86d37e757a05f30c2365bb4f7c5', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:38:15', '2025-03-15 21:38:15', '2026-03-15 21:38:15'),
('3aaac6dd3d3d719f98393062c8ed08d83a4a6f53b32a0d5a7bcf820b3333547581f13dcc9e3881ab', 1, 1, 'accessToken', '[]', 0, '2025-03-16 00:39:32', '2025-03-16 00:39:32', '2026-03-16 00:39:32'),
('3ad2bfa50c52bc7b02e5cd279c63235b3d20092c5a016864fd4036209a5a82945fc59b01f3526f13', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:40:51', '2025-03-21 23:40:51', '2026-03-21 23:40:51'),
('3b3820c774e0d9e33227a2297287b6bdac2ccd3f7f920a7f7507224c26d33be7f31e07d792591206', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:40:56', '2025-03-16 23:40:56', '2026-03-16 23:40:56'),
('3b94fe52d60efd1f60f0a03b40252ab3f9700eec28776dc60e450cf87ee20a39c481b362264eea22', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:40:08', '2025-03-15 22:40:08', '2026-03-15 22:40:08'),
('3bc8c925026417231fdd2dcb8b21c322cabda655692e6848b23dde20c81d5023dbd84dc01408c7fd', 1, 1, 'accessToken', '[]', 0, '2025-03-15 20:57:58', '2025-03-15 20:57:58', '2026-03-15 20:57:58'),
('3c26733375a239edebfaf34a181dcc0e9c08e888f366c7b73428a20fd83e0df296b340bac3b8e5d7', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:48', '2025-03-21 22:42:48', '2026-03-21 22:42:48'),
('3c2817240492f9e1dfba8864475ae066ab760399005db482c6ffc7b8016966a0a4352005c2a93268', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:57:53', '2025-03-15 02:57:53', '2026-03-15 02:57:53'),
('3c6894334b7c3d81fc050d901395a56abfa04f0b9fefe901346094b98f4c79294588597ffed4ec24', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:19:18', '2025-03-21 22:19:18', '2026-03-21 22:19:18'),
('3d562093e3703e66e0bfb4234b6eb6abef7dbcb57c8ce74d38f0135fb53e53f48730f2429d66aa4f', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:23:30', '2025-03-21 22:23:30', '2026-03-21 22:23:30'),
('3d7e5255431576bb11abc028b09a0ed3fef08f4d5c076f21a06c9c9e0e6b4c59cc5d6fad50d575f4', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:37:36', '2025-03-14 23:37:36', '2026-03-14 23:37:36'),
('3d87c83c6e80457a286fac5fa15cb349dff2aaa3e2cc7fb4b40743a04ec26a91ce627be5a275db7b', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:33:57', '2025-03-21 23:33:57', '2026-03-21 23:33:57'),
('3db9269610ed58c39aa5f0db14c6ba71ca9e02bcf62a32d92f405b40bf266413ed84f3fd26cfa3ae', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:40:04', '2025-03-15 04:40:05', '2026-03-15 04:40:04'),
('3e04784d757eea24d3aa52d3b69154e0780564bef651d074bdb0aa9e784eb92d781ff0c02b418f26', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:24:19', '2025-03-21 22:24:19', '2026-03-21 22:24:19'),
('3f110bc73f710bba4df6e7dcdbab145240f7b8edb5ddd1b266853a0bf743078c8e87f308e92ae8f2', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:53:05', '2025-03-16 23:53:05', '2026-03-16 23:53:05'),
('3f28bdaa7b7f769b6fcc09b42c8650a4bfdfd462c56ea6c98371fdf8a8875f04168b9a7a9fb24bb8', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:42', '2025-03-21 22:42:42', '2026-03-21 22:42:42'),
('3f6d5690995ace161952aadf66fd00542705c35f0c5b9edc53b48e5308ff0fd6ce90ec31e0ec2ee8', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:13:51', '2025-03-15 22:13:51', '2026-03-15 22:13:51'),
('3fc7ada81b8b3cea013ba760fcb0566a4d8aa3a4d25e3df2cb59858af4adc95959d14db6737e319e', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:37:03', '2025-03-15 03:37:03', '2026-03-15 03:37:03'),
('4007ce0748daafe948104260f55940f69f15939a9d63eb2435d22730637b6107e23071fe9f98faea', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:34:09', '2025-03-16 23:34:09', '2026-03-16 23:34:09'),
('404aa922cdebea22a4b8c2b728d047764bf329cd98cf14ee303e7d158f2fa801d5e8a34319b011a6', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:12', '2025-03-21 22:05:13', '2026-03-21 22:05:12'),
('406bcf69a48f2846049232789c9802a5bfe4505b89dc80e1da4b7bc2c4fa1e5c45f2fb3b8b2a3a1c', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:46:20', '2025-03-16 23:46:20', '2026-03-16 23:46:20'),
('4125caeda88a30d53cd6b144e59e4fd71b1e73b1ff72a71e11b75a89508060b9383a17b7fce07a47', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:22:10', '2025-03-21 22:22:10', '2026-03-21 22:22:10'),
('4191a869e1027ea9080f7561f9985a54a6eb3363a247435bbfa72936ae7e5e68f6716e8735edf4db', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:49:24', '2025-03-16 23:49:24', '2026-03-16 23:49:24'),
('4238c4002c317effede307d7c399899749c3a0d9c66ae64528e289bcd42247fc4d82c637fa4cde58', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:28:09', '2025-03-21 22:28:09', '2026-03-21 22:28:09'),
('425e1788d3d536284107590b63a466154de6be50444aab5d4efe7109a01b6a83abb0049b8cf9e69a', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:30:28', '2025-03-16 23:30:28', '2026-03-16 23:30:28'),
('427c36e6eef7c817106d9451ff8e29967cbed6ba403da30cb90c0ddb2500c1f7d62ce8ec104655e7', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:27:25', '2025-03-16 23:27:25', '2026-03-16 23:27:25'),
('4325068d5e5c8ae60fc06bd78b8e2bc48a22d29a72a1fc1bbb1143bdd5b6d08e6cfab0b998212122', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:32:45', '2025-03-15 04:32:45', '2026-03-15 04:32:45'),
('4375fe7e6a20883c2031008b903803617945b309a4dce4ed8a3b3060cde8ddd7ea0fa999cbb0d927', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:46:58', '2025-03-21 22:46:58', '2026-03-21 22:46:58'),
('43d425cd2a627b7dc65ef0fcc539fbae9349cfd99ee7cf9d4b5d81e1d9f074d8b595e548c4a5d043', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:02:02', '2025-03-16 23:02:02', '2026-03-16 23:02:02'),
('4432142c2a2924f410bb532e10415b48f97fb9a607313a652f02a34c99ecf1f832a6bd534686a9a0', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:01:11', '2025-03-17 00:01:11', '2026-03-17 00:01:11'),
('444874f04d48057eb4838bdfff4fa897e2f619c5f88a4efdb33a9fa54e8867368bbf9e969cf27d21', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:24:56', '2025-03-15 04:24:56', '2026-03-15 04:24:56'),
('44a8cc35e40273c140f7041db1e1643d562b82c17d65b1a61e82fbd9ff41a5b74c0c7e04379f50fa', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:25:37', '2025-03-21 23:25:38', '2026-03-21 23:25:37'),
('44f2e90bffc2b24fe06cd3f0e6679efb1d79f514a1589a35d9276787a06d77cdceec246bfdebfdc6', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:15:32', '2025-03-21 22:15:32', '2026-03-21 22:15:32'),
('451118c4c6a7b214254f6ffe4698a5fbef9d748563eca0393c6dd4b95b0f505e6ce0d839c41bd728', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:17:23', '2025-03-16 23:17:23', '2026-03-16 23:17:23'),
('451cdb6a7124defd4c2e5a765e79cb16512a2219d52cae22e99d40ad1058e2e60fda66de1d91f0bc', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:50:07', '2025-03-16 23:50:07', '2026-03-16 23:50:07'),
('451fb762f73c75c39f3387198f50c22c4a9fec82d61aa31d4aec153a4ba8603b92deb3d5587c6ea0', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:38:34', '2025-03-21 23:38:34', '2026-03-21 23:38:34'),
('4540b0c25c331518669f224ed700dd122715dd1ccb37430c63484c0e901a7b8ee4885dd03d0997db', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:38:25', '2025-03-15 22:38:25', '2026-03-15 22:38:25'),
('4569451f9fef4b608a5e1fadb5e8b3c50fcb14d3fb27e3e1d1b0ba4b03e4e030e64a30d3637e1640', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:26:57', '2025-03-21 22:26:57', '2026-03-21 22:26:57'),
('469ef6a896e90d1b952fb64ba81a0bda924f0b484b1de6f4abe45bfc83b9ecb4abc0fab632a9a201', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:39:46', '2025-03-15 21:39:46', '2026-03-15 21:39:46'),
('473a2ef9cd7cc35806b515ac74a082efbc4744c5a9ba6dea0b30b203b0328e76aaf9fad782a0849f', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:16:54', '2025-03-21 22:16:54', '2026-03-21 22:16:54'),
('476c87df1296172f4c9429955ca685bb98fe0156fe51a562c2c4f55065b599713a9c3b77106e44d0', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:54:26', '2025-03-15 22:54:26', '2026-03-15 22:54:26'),
('47753d4f2a1b78eb0f1c2d54c1dc1cc27a097187bd4a1c4565c9959100e52251608440ef38ee5a29', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:26:07', '2025-03-21 22:26:07', '2026-03-21 22:26:07'),
('477c9b25000e0604520ef4263753f0e443d7af40fc9788124b9db1e1afabd820d301303e6c3f38ef', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:45:23', '2025-03-16 22:45:23', '2026-03-16 22:45:23'),
('479ecb4dcd1aab77c3e477b1167d455b5286b5bd3625b3d5c064784024e4a68c9b5024703298d3f1', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:04:09', '2025-03-15 22:04:09', '2026-03-15 22:04:09'),
('486ddb0c36375bb50118c70d04697f85c07230465b3841ac11037b3b74ae812034e25f3acb2a6bab', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:44:19', '2025-03-15 04:44:19', '2026-03-15 04:44:19'),
('48bad551d6749ff8635578ba0e5528cb99cb76ecd41d35efb6fcb1b1d7dbd06bc457a9b4ae779548', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:39:57', '2025-03-14 23:39:58', '2026-03-14 23:39:57'),
('4947b9ee3ecfd5a0acd14c0f13f15c7f2b1016667ee866ef721f07275cd7a79ba425aa6bf5559ac6', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:43:30', '2025-03-21 23:43:30', '2026-03-21 23:43:30'),
('4969555b2ec1bc0bf0f0518e5d686861484397e225df0bd390d34f393e8c6ea84bac387054194e79', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:43:15', '2025-03-21 22:43:15', '2026-03-21 22:43:15'),
('49b15dc55a0da075e1e0e38bbfc1e714ec3be15b2546ca240f42bbf5825be0d8316547f2c7272f30', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:41:30', '2025-03-16 22:41:30', '2026-03-16 22:41:30'),
('49e7978c2535a7763eb1c1f9b2c847dc7abf9bc5e473eeda2b417286fd0bccee37282c1965873788', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:33:02', '2025-03-15 04:33:02', '2026-03-15 04:33:02'),
('49f35f52be7c1d63084092d9c534300af75b054769dc2e46c8b259729a8501dacd44962e266cf421', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:00:49', '2025-03-17 00:00:49', '2026-03-17 00:00:49'),
('49f9048164ee2672d43f4bbc16b54c1bf57d3dce9291487cf6a7a5cd6f0a64db20abd3cf036c1d51', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:50:17', '2025-03-16 23:50:18', '2026-03-16 23:50:17'),
('4a20e9b3ccef83d94f8c9f91eade225894655b43b4baa1f495e73b7dadf16c062de91a1b0ea795ad', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:59:49', '2025-03-15 04:59:49', '2026-03-15 04:59:49'),
('4a235af35a2dbfc43a49781e03de879ba3ac36cb8e170674fd4ee6de794d2e0b5919bd2205d8db59', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:25:15', '2025-03-21 23:25:15', '2026-03-21 23:25:15'),
('4a3fab97239a7e034c508e9b009e182981d417e1fd05182e17ab676ffa62b5c52e069bd048039543', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:34:21', '2025-03-15 04:34:22', '2026-03-15 04:34:21'),
('4a601efae4de23fbde054ea7f4fa98e833b8fda56d7b127ca78cccfdd0d2520d58f3c965aafddbef', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:09', '2025-03-21 22:31:09', '2026-03-21 22:31:09'),
('4a99d92c26a4d0c9925793db0e1442ba0fee87b82d1730ce813d94051a15770da509e71fac8ce7f4', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:26:12', '2025-03-15 22:26:12', '2026-03-15 22:26:12'),
('4aa67492fd34f1ca7b22b11bc3d8e9de40844723a5e149a9c3b7208376b064cc7880a63056af0bd6', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:00:26', '2025-03-17 00:00:26', '2026-03-17 00:00:26'),
('4abbc3a3302b93b0b198d0d10e81ad8aa18df24e5197e91b49ebe77945bb7916d4d0b8d5145b3190', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:47:00', '2025-03-21 22:47:00', '2026-03-21 22:47:00'),
('4b88450d2d8272170511eac3e5cb48f0b04b39fe1cfd8b6522e0b1a98d23577e7e419aa9c63bbc87', 1, 1, 'accessToken', '[]', 0, '2025-03-15 20:53:43', '2025-03-15 20:53:43', '2026-03-15 20:53:43'),
('4baa3916e098ff9a348834e2b9ddbb10856b522dd5c91e2cdc4b01b1ff1cfbddd1fd9d2599a7bd39', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:56:33', '2025-03-21 23:56:33', '2026-03-21 23:56:33'),
('4bc3731e404583e7e548265a348c436020b0f22245904c86facebf35415eacdb03e06414591bbdd3', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:33:04', '2025-03-15 22:33:04', '2026-03-15 22:33:04'),
('4c10c5176800eccfa5b635010b7831823804a1e29a70a25fc189c20db7a304fa05006876b5a45cac', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:44:41', '2025-03-21 22:44:41', '2026-03-21 22:44:41'),
('4c2b45ad96b9987a23d9b5965e0be09633d0fbe59dc173c7ca16c684dc79262fbcebe2f3502fc5ec', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:36:47', '2025-03-21 22:36:47', '2026-03-21 22:36:47'),
('4c90c1571bcfb1495eb99f01de7fe492f0bc9a1c799a18165e02075d4f157d39a71be5bcb1747be5', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:41:53', '2025-03-17 00:41:53', '2026-03-17 00:41:53'),
('4cc0c2d11a2c4bfeb742ac919451e758eccf473880b1e20136069d515fdac56d6b73cba0ab5e47e7', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:14:31', '2025-03-15 22:14:31', '2026-03-15 22:14:31'),
('4cdfc289d61e4a23dbe4febed3909aa31b7b9fd21be24da155e5722c5b511374486a64966f9e47de', 1, 1, 'accessToken', '[]', 0, '2025-03-15 05:04:53', '2025-03-15 05:04:53', '2026-03-15 05:04:53'),
('4cea12a29acfd58c97bb6aee748fb741cd9c797a6b7fee1a59f77593cd1015dd735d15876dabff83', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:31:42', '2025-03-15 21:31:42', '2026-03-15 21:31:42'),
('4d8d83992e31c7776aa56a1f16451badb9ffbf1d60e49c7fca1c1599f1013266d5e7c128b8fc771f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:03:11', '2025-03-16 23:03:11', '2026-03-16 23:03:11'),
('4d9a203f22fdf0fe563489ce8dbf894c88d8a367c94e7222a9df1585a4e43ed486c046f7b198570b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:13', '2025-03-21 22:32:13', '2026-03-21 22:32:13'),
('4df710f81e9f3adf7032bbd4c649bd0a7400e4bbcd9d9797b13dd58494e6055da79a9a5ba94fabd9', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:11:34', '2025-03-15 03:11:34', '2026-03-15 03:11:34'),
('4e35ad54988406cff966ea367e694ff2275538c6cd9edf95cd95f33bdc76c4cb6e101a0acd449bf4', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:40:11', '2025-03-21 23:40:11', '2026-03-21 23:40:11');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4e9f32d270dda178c8e1562a2e88cfcba4e3afd3f7d9f0a7ad1f3fd5cbc27062404cb1cad088c55d', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:59:41', '2025-03-21 23:59:41', '2026-03-21 23:59:41'),
('4ead90d771608a7dda6d473f4a84803bf55e88b607bd0435f5517d8b7cc53f84111d2971cdd4caae', 1, 1, 'accessToken', '[]', 0, '2025-03-18 22:15:22', '2025-03-18 22:15:22', '2026-03-18 22:15:22'),
('4f67c5eec50b48c8d9b3e8f10a352c2f5dd5909c4a184b5bc544935b62581500d4fd5e74b8430e49', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:35:35', '2025-03-15 04:35:35', '2026-03-15 04:35:35'),
('4f7515b0001df2b49f6704f3a94e0f69355fe61765343fab72efe5b34295515f445a7bce798bd738', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:25:46', '2025-03-15 04:25:46', '2026-03-15 04:25:46'),
('4f89eba4d62dfd3676f801698821689b55f61c34f89caf47030a34e1ca12083be19fd2a3537c431f', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:56:33', '2025-03-21 23:56:33', '2026-03-21 23:56:33'),
('50520639ff2eddcdf9c4fbe6214230baf9561aff93d9c4d7952ec51a34d822abb192939e2fe2fac5', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:12:16', '2025-03-21 22:12:16', '2026-03-21 22:12:16'),
('50838ad9eedca713a1107d01e116d88001a466f02d17755c5656491d77c12a2caaa8a65f3c4feaeb', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:52:56', '2025-03-16 23:52:56', '2026-03-16 23:52:56'),
('50aa13c823f9ed5993c82fbf506f60891a20e56ec9570e9261014b037fa828e04feb7b91de5e3295', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:29:12', '2025-03-21 22:29:12', '2026-03-21 22:29:12'),
('50dfc178a69e49464020fafb09c34039357e0a4febffc13788d84d296268a9b37b20c153c91414a5', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:28:39', '2025-03-15 04:28:39', '2026-03-15 04:28:39'),
('51287ae689a42eb9b9f9425e992498535b956ec5d3dd36f75a2f3a0e4735192e2846a4ca7da7c0e7', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:24', '2025-03-21 22:32:24', '2026-03-21 22:32:24'),
('51c6047fb1cca95aeae6ff65ee4f0a1e3e34549fa270e9b9488751c763d8885acffe1da81d798cfa', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:33:25', '2025-03-21 23:33:25', '2026-03-21 23:33:25'),
('521a2c0d83426359999e1b6f5c168ea470cdb4ee8d6496af7058e8d7c1c695a696e2adab38cfd444', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:46:28', '2025-03-16 23:46:28', '2026-03-16 23:46:28'),
('52843b368ea98d832b1856ebcc7ad60c0715093ffed781ba21b681946ae8dbd80bbbfbc25fd78664', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:53:18', '2025-03-21 23:53:18', '2026-03-21 23:53:18'),
('5296f6832579fcf592cfd995ebc14bd2eafca0b3a472ced81aeed99210b25603b2f7f07f13ce909e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:57:06', '2025-03-21 23:57:06', '2026-03-21 23:57:06'),
('52ac97f960258db687363df94a6e306c29076d0cd771dee26002dfe41c00e33ae9c6a0437105e7c4', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:44:50', '2025-03-21 22:44:50', '2026-03-21 22:44:50'),
('531465092aa57aef2d8aac1908c0922b0102b59b12f8d5db9de49976847ecebae0821a388d03f22f', 1, 1, 'accessToken', '[]', 0, '2025-03-15 20:53:51', '2025-03-15 20:53:51', '2026-03-15 20:53:51'),
('5349ed33b738145cc7e74fb7176f2e100b8dcf27a63088e5455f74cf7be9747b802220f1b47e9fea', 2, 1, 'authToken', '[]', 0, '2025-03-16 00:35:46', '2025-03-16 00:35:46', '2026-03-16 00:35:46'),
('53f471239488284a3a176cc6cad12873ce81eceb6cbc018e7c43738b4d7a0340378e7fe8359e48b0', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:35', '2025-03-21 22:42:35', '2026-03-21 22:42:35'),
('53f527f745f6e6aaea9d67aaa4c18205834fff0671099d0e9f94c917ab59bc795cb247724874926b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:20:32', '2025-03-21 23:20:32', '2026-03-21 23:20:32'),
('53f6ffe206ea76167d2c258d0ee2efca1f287d069019d7259f17e0cd25cd91438246bb2c11ffb606', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:50:49', '2025-03-21 22:50:49', '2026-03-21 22:50:49'),
('54b610a01be4529233d3d2ea5cc8e1ab51c66f024a4ac236d046d16a89106a7ddf2055562acf4ae3', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:53:18', '2025-03-21 23:53:18', '2026-03-21 23:53:18'),
('54d623d144dd06d9fc6defeae252c566358a080e3cf665fd8b4c44416f277f062d81962bfbe022bf', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:29:21', '2025-03-15 03:29:21', '2026-03-15 03:29:21'),
('55c3fb850ca2d4a366929682440cbc227598d64c97025aadbbd9626da4366cc036298e1ea478782f', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:01', '2025-03-21 22:42:01', '2026-03-21 22:42:01'),
('55cfb94763346bf9f4aaaa1e503a3ad6a80979a9850d31d4e49af0feec05e889532cb34bc11c268d', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:49:28', '2025-03-16 23:49:28', '2026-03-16 23:49:28'),
('56c8f927fb210ad1e9b71f9c4f9c45df8894a9007352e1935a84d457789287dfae3c11a837a34d85', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:54', '2025-03-21 22:31:54', '2026-03-21 22:31:54'),
('579090038f09fb36bf19d72da1a2f0a889dadce491338eff0859a1440337e5f86b6ab94622275f96', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:07', '2025-03-21 22:32:07', '2026-03-21 22:32:07'),
('57cf4a7366783cf6bef54698e9cb7117eec230e51729590a1784b9cec75b20621c3ee8bb1be92ba3', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:08:37', '2025-03-15 21:08:37', '2026-03-15 21:08:37'),
('57e661d7c2bfe8e3c88e1cf5efec6433cedbbcd9be764e6fcba06ebaeb552ce1d8e473f9825cc940', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:58:07', '2025-03-16 23:58:07', '2026-03-16 23:58:07'),
('58135f2505174b8f6152eb723f0a4761540b0f1bea490bb8fbe514116c61b18d9f024ae50372c536', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:39:24', '2025-03-16 23:39:24', '2026-03-16 23:39:24'),
('581e761d6af7307429695c10191555c3c2a9f255bfa5aa5acbf04f46f70248c6943952c152ad4ebf', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:37', '2025-03-21 22:31:37', '2026-03-21 22:31:37'),
('589c767ec5b9d3c03e5d1b57b04c0b5a5fe2190528e3e45db09c4cb68e8f045976f620b829775f2c', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:54:21', '2025-03-21 23:54:21', '2026-03-21 23:54:21'),
('592a3a40a4d18213454ae9abc8b3af43bea98ee335fc49d20a0c1ffb3633c5944fef514affb1bcb8', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:56:05', '2025-03-15 04:56:06', '2026-03-15 04:56:05'),
('5963bf9ab3605aa915b06bc1984d444d6e2e9084e002394e41bd83cdda89458f7ca2cb06fb59cac8', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:18:16', '2025-03-21 23:18:16', '2026-03-21 23:18:16'),
('59a07d7e3a4457d3f76b5aad34fd6500bdde74cc34a5f335d640d945b66f71269ca29a0f670e0d20', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:00:09', '2025-03-17 00:00:09', '2026-03-17 00:00:09'),
('59c0539fa82bc48fceb5f2b9dd41166b1075e87b562f6b28950981a141bf309c5b2c6bb7f6bb1715', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:51:44', '2025-03-15 22:51:44', '2026-03-15 22:51:44'),
('5a0387a127db777990d522aa73c424a889cb1a348cce29b9cedb10b7e446cff59eef548ea648c4c9', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:49:24', '2025-03-21 23:49:24', '2026-03-21 23:49:24'),
('5a6564eca64e5a0c42d845fc4f61bad7568daf64febbd081b56326c07c3291eeaf4ea103caa83aa9', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:35:36', '2025-03-21 22:35:36', '2026-03-21 22:35:36'),
('5aa7680b882254a2264a3e5ad558d05ab02e506fb675bdb3a5f6e1c77d22c736f10dd49d52ddcf65', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:32:51', '2025-03-15 22:32:51', '2026-03-15 22:32:51'),
('5b7b7b4242f4f06b5cc2f0ddba9a9e6238636124ab8116e4cb645c2006476ce67de9a048932a6dd1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:17', '2025-03-21 22:31:17', '2026-03-21 22:31:17'),
('5b9b5fc5c6727b7329dc80e4bf9bf51fd257cdebf7ba82d4fdac8dd36b29dae453613bf8505fb1d0', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:11:47', '2025-03-21 22:11:47', '2026-03-21 22:11:47'),
('5bff0a606107782f2fc54d12dd409653f9607d0b2b23acad5ad8415c4e0e7230e1bdc8ecb6cfdc30', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:47:45', '2025-03-15 03:47:45', '2026-03-15 03:47:45'),
('5ca5768dea571311e41347e9dee06f2da2f713b5370d54ca7f4112fec8be647a6798aa07c95b7336', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:33:04', '2025-03-15 22:33:04', '2026-03-15 22:33:04'),
('5d1f05a8495613f3806034b492c17cb813a3f1db22954dc75ac8f3d24fdfdf78949953915325f7b2', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:33:47', '2025-03-21 23:33:47', '2026-03-21 23:33:47'),
('5e73f4341c94b8f148ff005021c15fd95caf41ec83b1bd8aa2b1af8f83085e0ec34656a155d06904', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:25:29', '2025-03-15 04:25:29', '2026-03-15 04:25:29'),
('5ea01da6ce0dc6aa92b6b63032346d3781a5b011c175a44c3fe00ebe595244061ff9f3277695d2ee', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:51:23', '2025-03-15 22:51:23', '2026-03-15 22:51:23'),
('5ee9c3b339240a5808e88cba537eeaa32a060300930388579fe291cbb096910d92b1701d9563606c', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:33:15', '2025-03-21 22:33:15', '2026-03-21 22:33:15'),
('5f333f6972a8eab159e690cea985d0a133c72c4a4fd6acbb999e13e4d45cec850dd4dfe25cb88135', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:51', '2025-03-21 22:32:51', '2026-03-21 22:32:51'),
('5f395dd2a529924c18df6dc88cf9b9a355e6aabce308c9175582066311b445f94de5c36639df3950', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:52:15', '2025-03-15 02:52:15', '2026-03-15 02:52:15'),
('5f3e25b0eb2031196adb4b343f3dfd920bc5158087124427a5301a76ac2e029ac2294987f24f56b1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:33:33', '2025-03-21 22:33:33', '2026-03-21 22:33:33'),
('5f7d6d25128895798ac3777946acba29ea79d9337155bf45cbb1c07d91dae7f0fc786241757fde0e', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:24:53', '2025-03-21 23:24:53', '2026-03-21 23:24:53'),
('5fa1841b5f5b83fabf77e8e18fa2b8479c84a8b8708942737ab8dcdfcc2a4b0b1341adf92d4c3e1d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:25:15', '2025-03-21 23:25:15', '2026-03-21 23:25:15'),
('5fae61510b00e69b58f3b8c5a5ba9ebe4db925fe18894426a9c6b27e9dcb5e6e21f0576443ed554b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:42', '2025-03-21 22:31:42', '2026-03-21 22:31:42'),
('6008613357982407dbf3bf76e34db79eefdc3e1ca38ba9fa943a9852913b10a349234d6584e8d7d1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:21:55', '2025-03-21 22:21:55', '2026-03-21 22:21:55'),
('603a9e11777e83fb0ae3acf0f4564119cb9a652b298a899c3c3483001f085cc406f05d8a7cb9c466', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:26:43', '2025-03-15 04:26:43', '2026-03-15 04:26:43'),
('6041121513ce11fdf92bd16d9e72bb81f695fbe18ffe7a34ba20abbdf02cde888e2add790d8b9658', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:47:51', '2025-03-21 22:47:51', '2026-03-21 22:47:51'),
('60e0e28ef290723030c2a2c037486e4660f29e83e973f98b1972d281e5da3232efcd9b954faf3aec', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:33:34', '2025-03-21 22:33:34', '2026-03-21 22:33:34'),
('60f3d02d9fedac34ebc428344922b597780353085df23426de4fafd828ecd9825b4eb86b9ae285a8', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:12', '2025-03-21 22:05:13', '2026-03-21 22:05:12'),
('61026ed65df3255c4139fd32e70bbcf60ed922ddef8312044a1c29bd362fc17b024eb5fa3e5ba69c', 2, 1, 'accessToken', '[]', 0, '2025-03-16 00:38:43', '2025-03-16 00:38:43', '2026-03-16 00:38:43'),
('61caeeb5233a52cf28360e8020b5f8b22359bd5f1f603db9e39def399d4fed214324f217f0695254', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:36', '2025-03-21 22:42:36', '2026-03-21 22:42:36'),
('62b8b7f025b161b0c10bcefd2e915cdb758355496775148151dd4b64cf6795631b58cd07806ae1a0', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:43:25', '2025-03-21 22:43:25', '2026-03-21 22:43:25'),
('62e604105d00ac078bd707ed96d9c3027f3037c33db5311070ccaeca6b1a4631c633d717cd659dba', 2, 1, 'authToken', '[]', 0, '2025-03-15 21:52:54', '2025-03-15 21:52:54', '2026-03-15 21:52:54'),
('63c57fc1a8f5cb5a92a5937f500aee8096f2a9a1d1af85ec6c6f7daa8f47ef88d934e7bbd38643db', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:35:30', '2025-03-15 04:35:30', '2026-03-15 04:35:30'),
('64666cbaa561ae6c7e5cd435ad44f671032869a76aad0bc6f02727ad13c0cd067a28593f1ac9a51b', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:01:06', '2025-03-15 21:01:06', '2026-03-15 21:01:06'),
('64e23c542790a64767a7cc5ab5a0bccb49c02f2db8bfbafee714e857d68a36bb6537bfaea0c60010', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:48:40', '2025-03-16 23:48:40', '2026-03-16 23:48:40'),
('659c01a0622234012b3258431daba7a6fc982dd52315651b56d5eccce4fded6ab48e38e98ce60463', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:12:45', '2025-03-21 22:12:45', '2026-03-21 22:12:45'),
('65d16bafd2afdc2976552101afe8cebdd326b458ef0fc2ffc65dad28bd7845748932351051d8ae46', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:00:45', '2025-03-15 21:00:45', '2026-03-15 21:00:45'),
('65fa84ae23d9e480c4d979d5fda743602bbae528d06b43dfc1316529bee6cbcf199dc68a73ce347a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:39:56', '2025-03-15 04:39:56', '2026-03-15 04:39:56'),
('660d880114d488ff5b3e713624cb078dbe3585a73f0db94bda8e2cccf42fafe6c52b0e345b60183d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:25:44', '2025-03-21 23:25:44', '2026-03-21 23:25:44'),
('661696edc185114043b61d8a2809e5ca180ea8e06224ce8e846e6ade6aa595149da0b6275effcb99', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:24:16', '2025-03-21 22:24:16', '2026-03-21 22:24:16'),
('669a320827b10d2c115bd24ab14c8cc4c750905f77596d33cf60b0b5c6e84641499063b193f01b75', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:39:21', '2025-03-21 23:39:21', '2026-03-21 23:39:21'),
('676201cbb1fe5e033fe5d5ae1efd788ca4a9ef625f4190db69a4e5639d2349fad5b4b7551bc3e9a1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:36:33', '2025-03-21 22:36:33', '2026-03-21 22:36:33'),
('678bed27a089c29d74b4afa4b42988040b1b0711a85cdfb90efb8f4f2cbafe1d647ca39e69725159', 1, 1, 'accessToken', '[]', 0, '2025-03-15 23:44:07', '2025-03-15 23:44:07', '2026-03-15 23:44:07'),
('67d54c37a7a3131dcc8f1fcfdf6f86736c97cb168fb45ee5fb0136f35191c1f9de2894360864808e', 1, 1, 'accessToken', '[]', 0, '2025-03-15 05:04:13', '2025-03-15 05:04:13', '2026-03-15 05:04:13'),
('67d56c8c67c1850660f4a43d9ffaf42ceeb8528949b79a3f36907aa79671568ef7197dc1936a51e4', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:26:12', '2025-03-15 22:26:12', '2026-03-15 22:26:12'),
('67f9788c6d16799bf2fc482dab9dbcbd8b3cf781c0678b8202360a1e89f9c1af62ee222ca9a963e7', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:39:01', '2025-03-16 22:39:01', '2026-03-16 22:39:01'),
('68064c1f128c63d9667eecdb844e6a0400ae406ac85123eb5e54ee3dd3a8176604916fa0637aaf33', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:43:06', '2025-03-21 23:43:06', '2026-03-21 23:43:06'),
('6851e04347ac2237a60b89a74ddc7208cfbe5a88876210c8a3b708bd536a10cc0a9072d55b859a2a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:40:55', '2025-03-21 23:40:55', '2026-03-21 23:40:55'),
('689d0e581322e010e18b25921be1ce62355a7f5694beaf603a26cbd1815d1a2e602c54e0c6c36512', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:20:23', '2025-03-15 21:20:23', '2026-03-15 21:20:23'),
('68e1b79387a3f6856425e17bfa5a5049e962bbd070116446125afa836da014966f877d45effba701', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:48:39', '2025-03-21 22:48:40', '2026-03-21 22:48:39'),
('68e206030849751c146f613d7c4c7612653aaddb463f232278dfd913a8858947a839ccb935ce3e58', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:25:43', '2025-03-16 23:25:43', '2026-03-16 23:25:43'),
('69105f35ea7eebb41e49847a680c87cf2d37dbaeeaef23a221cf1b1cbaf3aca37fcde9a3855fc0bb', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:50:45', '2025-03-15 02:50:45', '2026-03-15 02:50:45'),
('6925fc1ce31db0c1ddebe245a231154b741d4faab592a0360c4f2e29bf49856888e79812a48905f3', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:06:42', '2025-03-15 04:06:42', '2026-03-15 04:06:42'),
('695f19d7495317cd5c15d6c5b7c6920265024afea1c2e571c524441293c220b255c2e47f74cf61c5', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:46:20', '2025-03-21 23:46:20', '2026-03-21 23:46:20'),
('6a1666ca317ccdadd23ad20793194df4e7fc50804e29c783899c3a6ea2800e1ed0266fd9a6f87985', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:51:49', '2025-03-16 23:51:49', '2026-03-16 23:51:49'),
('6aa6190aafb69a510f013604b090177b7c9193349933b3aff9b690dc5155a8294b8028f621b441a6', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:22:16', '2025-03-15 04:22:16', '2026-03-15 04:22:16'),
('6b044320852fe7e21ae36d3925ec67c637bd09f3d59d7c5918fd7769c361d53c686070a409551d59', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:15:45', '2025-03-15 03:15:45', '2026-03-15 03:15:45'),
('6b0beb62e8d972ac0dade491816aa6238aeafbe583ff482dd78f872eda7cff93e541d3e878c6bd7e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:20', '2025-03-21 22:05:20', '2026-03-21 22:05:20'),
('6b1e9fd00f47b8a15e6965cbcb52a5526cd5a7f07c2ef05115c55a36b61c85af531570242feeccf5', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:03', '2025-03-16 23:41:03', '2026-03-16 23:41:03'),
('6b22fbd3ac61c63297d3e7d83c4c92eb30239963d7c193cd588ad13b5d210e71122f7c3ebf00863f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:30', '2025-03-16 23:41:30', '2026-03-16 23:41:30'),
('6b85c4607229de4cad8a81a1a4f00bcbe96323e18fa22c591cec0c9120b2884da7cc3c60c26790fb', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:08:56', '2025-03-15 03:08:57', '2026-03-15 03:08:56'),
('6bc69f92aedeeca5551a3de0eea0f2e69537abaae56051e45af9d47627ed86942246a65941fe8148', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:22', '2025-03-21 22:31:22', '2026-03-21 22:31:22'),
('6c1d6b71bfcc1f4d8aea7e5505590895eb4fb77e5a436da8820740e9e031e5abcf5a67f16170196e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:14:40', '2025-03-21 23:14:41', '2026-03-21 23:14:40'),
('6c216e90da52d103c73ccc8d4d7f47b8da286bb99dafab4c31584d84bcac1e5e7ec20f9bc2d642b9', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:18:32', '2025-03-21 23:18:32', '2026-03-21 23:18:32'),
('6c2c14ec7422b1af8e973d5e766f3c03abadf86d66fec53caa1ad99f7acedae9eecd98928e99fd93', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:46:13', '2025-03-21 22:46:13', '2026-03-21 22:46:13'),
('6cbcf8a2cb06501923a8da6fa6322ca479326df890bd0b9dbd8293da3910599cff88314d1c87f462', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:41', '2025-03-21 22:42:41', '2026-03-21 22:42:41'),
('6d2af4f228f39e0dc35024fe993944199c8f9255c97a458a82d3731b7c124f934a76a6fc8c5aef5e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:36:48', '2025-03-21 22:36:48', '2026-03-21 22:36:48'),
('6d3da9984d4a4effeb3003f1deb567f053302a860d1d2cca3cbf77d3cdcbc20e5d28a0ea46757ab7', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:15:51', '2025-03-15 22:15:51', '2026-03-15 22:15:51'),
('6d700cc909b5dd715de5f323d2a6ecf930dfdb16bb6423f4321c668dd85867338908f7ee8f4ae719', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:03:59', '2025-03-17 00:03:59', '2026-03-17 00:03:59'),
('6d77fafb7545cea9d401564adc46799bccc5cbbc5314892b6cfca10e806c26bf32514f25f4406273', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:29:30', '2025-03-16 23:29:30', '2026-03-16 23:29:30'),
('6df8f1ee6fe25d53aff06cee5b946c7b94d99c8d9283f9259d651245e6f719b2d54e7c7732cb04fe', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:46:43', '2025-03-15 04:46:43', '2026-03-15 04:46:43'),
('6e1b7be958b97b50b13c3aea1e0e2760c2762fe382f897a495b16054e3654647fd04579120488a84', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:39:55', '2025-03-15 21:39:55', '2026-03-15 21:39:55'),
('6e3b2af423afb5e89e56cf3202fee508ace7211742896327e2a38d0f45cae57a70421ca9aab8817e', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:54:16', '2025-03-15 22:54:16', '2026-03-15 22:54:16'),
('6f45520227377096f40d4e9016df1b47ae725c51761a39f6ffd57c7f50bde837bfc6c28b0cc254f7', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:16:14', '2025-03-21 23:16:14', '2026-03-21 23:16:14'),
('6fcd13f1cf9ea7e7fea7cc6c8d49aa9937207b1a5327a0a0706b5eb8d0124ec10a511ee1347014f4', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:40', '2025-03-21 22:05:40', '2026-03-21 22:05:40'),
('70413deca4bdf785102334c82bd5439e60035f9f8ab7354adf73497151c388b616372561f8f273a0', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:24:58', '2025-03-21 22:24:58', '2026-03-21 22:24:58'),
('707a12754bfc287b9a263c55f810b2ed3d0344035a123393689286ebd448a105125884f1787d9d70', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:43:16', '2025-03-16 23:43:16', '2026-03-16 23:43:16'),
('70c8de9fab3652487de8a9d68f52f3bd110ff5709d44c7d5ddbcbf8f0bc0861f2dc78faf7bc3c565', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:44:56', '2025-03-15 22:44:56', '2026-03-15 22:44:56'),
('712ed141bfb004ea76cfbe18217f2743a3d43f02e50e99843e8081f87ba159b94552d6cb2de8fd53', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:16:51', '2025-03-21 22:16:51', '2026-03-21 22:16:51'),
('7130fcf575f125b3b6c2d944d633c6ab1b1804ef80ebd91f16c440c7e9ee9bf0851cbb79a7f51f5a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:45:48', '2025-03-21 23:45:48', '2026-03-21 23:45:48'),
('71ac51b2cd1b4d8ab6a5063c02fe28025c4adbbb16aee74dadf34c128727ad5c3066c50851963830', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:12', '2025-03-21 22:32:12', '2026-03-21 22:32:12'),
('71c09fa6a5acbfeb992f47bcc6c191c52da15630b10df8a3020cc9e079eccb352ff7fa26933ba746', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:33:10', '2025-03-15 04:33:10', '2026-03-15 04:33:10'),
('721da497311b25cede6839aac0f74ac5d3f8357e04205300707a6e065eb4f55bb7f04f526fc381d3', 1, 1, 'authToken', '[]', 0, '2025-03-15 03:18:29', '2025-03-15 03:18:29', '2026-03-15 03:18:29'),
('72308af98691c3780014638685491ce998759c4ce4ef106df68eb20f74916b06b678bcedb9142ffc', 1, 1, 'accessToken', '[]', 0, '2025-03-22 00:00:18', '2025-03-22 00:00:18', '2026-03-22 00:00:18'),
('7272ab71a02a2a70add8d100189730adce9d7ea377aead548552bcf4eaacc53ebed58f5442c21056', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:57:03', '2025-03-15 22:57:03', '2026-03-15 22:57:03'),
('72bfa6b2f0409cbc454d81713dea61ec17d7ff037a890624e9a1a789b98aa2779903cf46c86114c7', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:24:37', '2025-03-15 04:24:37', '2026-03-15 04:24:37'),
('72e30aaa497f9c56ce8407fe9f92313f8ddf2bebfdc9e79dafe911fb06ac5a93cd15cb8e6825bb9a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:30:52', '2025-03-21 22:30:52', '2026-03-21 22:30:52'),
('72fc05f242632068dddcaece056cb2cf315beb71dcd761502b9d4103d8f59b7312107bd337486cf6', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:12', '2025-03-21 22:05:13', '2026-03-21 22:05:12'),
('7314830b39741d2cee8308bd3fd7dd8d02c94feaf239173b40dd5fbff543d638e04401bde98a64ff', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:45:01', '2025-03-21 22:45:01', '2026-03-21 22:45:01'),
('73e10946713b2eaf57f3551272f09e7c9a3ddb3e17820e511d4195ce19758328a8f7c477668db089', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:51:03', '2025-03-15 22:51:03', '2026-03-15 22:51:03'),
('74473c95ce7f525d1378b4ab8a1e9e77a23831aec8d005fedef6f5b312e05beeeb78ca812fc6325d', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:40:09', '2025-03-15 04:40:09', '2026-03-15 04:40:09'),
('748ac23d50a86681087181b05d2b4fc1e9351a529a8a1733566f27b609684ba86d7e6a552c5d8fe1', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:52:48', '2025-03-15 21:52:48', '2026-03-15 21:52:48'),
('75146337e3d0b40de1a6b0eb05888d2f291f8d414198be8006c14e8e1815e045b601c2ab0913d6e5', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:41:59', '2025-03-21 22:41:59', '2026-03-21 22:41:59'),
('751bed005b1868809b7dfe7c0d9d815fae081fe55422fd14c0134a4be56b57c8bb3fa2c2ca67b232', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:48:49', '2025-03-15 22:48:49', '2026-03-15 22:48:49'),
('7523200d4aa751ba1549a625b3dfded2916d9acd230d8ecdd643129cd6bb6a1e087bb5e6bc7b6c3e', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:28:20', '2025-03-16 23:28:20', '2026-03-16 23:28:20'),
('75276b818dae40e7f3254f384c6970e6f4e2424c1b9e70c0dde8a0846e5a7e50e53d6edfaea0395b', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:37:33', '2025-03-21 23:37:33', '2026-03-21 23:37:33'),
('753ed80adfa5d76e7d006170c1f26c0a395c87e29e182ab9b4570d52b4e72539d7af9f465f0f6b45', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:14:16', '2025-03-16 23:14:16', '2026-03-16 23:14:16'),
('75c43d46f9dd54304c63a8b5a23f48dc8810f7d409571b7ba2dbfc1d7c7153b7288b9a12a18eb7b5', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:04:02', '2025-03-21 22:04:02', '2026-03-21 22:04:02'),
('76245cde79eabfa2ef61a36c47a3494b23451b354b5bd2fae9839ce4747b428652038f453d5cfdf0', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:04:16', '2025-03-17 00:04:16', '2026-03-17 00:04:16'),
('764be4c97dd5f9c00c99bd7e411e5c6c27887aea7befed1ba6b524b8e3465f899ae8c2566f1e648f', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:21:27', '2025-03-15 04:21:27', '2026-03-15 04:21:27'),
('7762b22bc697b304b2481ab3ff9adfbe21319387b5e5797a2032149de8e3b95d95252c6e7027af4f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:31:38', '2025-03-16 23:31:38', '2026-03-16 23:31:38'),
('7783aec3e1e110ba8a03ebc3322d8bb1ff7a40ea26cbf34f524e0ea4440f067e0b99e3311172109a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:26:44', '2025-03-15 03:26:44', '2026-03-15 03:26:44'),
('77dd0a1eb8214571e7ea4740786eea4bc4a69e3827327fcf1072e571f57bc8b9f3dcf4e03b134e8c', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:03:01', '2025-03-17 00:03:01', '2026-03-17 00:03:01'),
('77df211fcf15b823bed847e74fcb9a6fd7e16018855420b087b18df8e70873fc47c4b29a4e299be5', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:24:40', '2025-03-21 22:24:40', '2026-03-21 22:24:40'),
('77f4007145ee6b3a9baad790a66545dd5c417e96ab4f0b92a4f852ae3bd40fcaef8260fed9c11049', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:31:43', '2025-03-16 23:31:43', '2026-03-16 23:31:43'),
('78acfbb29781fa72585f33cc2470f6129c8d60fbe15bec80b8c3c29c00e73ff6e8b1df610ba787a9', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:40:06', '2025-03-14 23:40:06', '2026-03-14 23:40:06'),
('78d5f954ae86a9136b440f91de6626a79f93108f038696d1fe2265b2aab0011bc7bd3768ac8f6e8c', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:20:12', '2025-03-21 23:20:12', '2026-03-21 23:20:12'),
('78e1e146dfcfccf38b0148aba2c103009b5aa6478f6576c6ff668ca6ac0cb33baef32f290de5ebbe', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:35:10', '2025-03-21 23:35:10', '2026-03-21 23:35:10'),
('793df9160d44cd613f56a72879aff5023913fc9a9bc9d601fb444dbd1f8f32c91655f1a1e9e85ea5', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:15:35', '2025-03-21 22:15:35', '2026-03-21 22:15:35'),
('79c0273da7ab397f4c7ae29c3b4fcaaa3e74de0ac432ff5c6a5c5cd688725ddfd239f15e7bce7ea0', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:48:14', '2025-03-21 22:48:14', '2026-03-21 22:48:14'),
('79dc081bb790939b4b4328eccbb94f87cd441e385d58aecbd3b05602707b3792ec6a5be017dc7c82', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:51:18', '2025-03-21 22:51:18', '2026-03-21 22:51:18'),
('7a417c44740b0397d0279569c8551ff53ffb1b536c204d8bad1c5b877d56386d9c073e3d6bd49544', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:38:58', '2025-03-15 04:38:58', '2026-03-15 04:38:58'),
('7a5d15f4b9ba1f00e16441f588c8bcb5f976d91819fc03f67d58fae701a6a0c7691472a9d2104e86', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:09:07', '2025-03-15 21:09:07', '2026-03-15 21:09:07'),
('7a808167d62d82e8b6bd050777a6cfaadca1852eeffd6fbb590e1c6b6672bc3fd1ed387cea4a3205', 2, 1, 'accessToken', '[]', 0, '2025-03-15 23:40:21', '2025-03-15 23:40:21', '2026-03-15 23:40:21'),
('7aca2b7fe27d896e9083ee9b383f13606ec2acd73559634be18348e6e3103e6e4cd8cdc8a9f620bf', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:38:14', '2025-03-15 04:38:14', '2026-03-15 04:38:14'),
('7ae5727a11a87e88b225e0e482f9b5f71a8fc419ab34434e1d11b68bd89fef9debaf2bf120917901', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:55:56', '2025-03-21 23:55:56', '2026-03-21 23:55:56'),
('7b40b336c5a2d1e3ea877f2c29fbd34e96947040e6999473d5fb15775f9d35e0375909a91c44ac01', 1, 1, 'accessToken', '[]', 0, '2025-03-15 20:45:11', '2025-03-15 20:45:11', '2026-03-15 20:45:11'),
('7bbbde25d1ec6bce02c3e25a62f5484b1f2896b7e3d4b756468c1219010dc53ab8dafc11fc3f8801', 1, 1, 'accessToken', '[]', 0, '2025-03-15 20:45:39', '2025-03-15 20:45:39', '2026-03-15 20:45:39'),
('7c3b2706ac93696205e43717c39c4bb23d81ac9aa83054a02219113e16e51af05d7b86e7452433d3', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:40:05', '2025-03-15 22:40:05', '2026-03-15 22:40:05'),
('7c6c939801e12da76b626c5cfe8d6d1070fbc52b8d28d7b2d7aca53ffef5052f1718c128806ee7b1', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:36:45', '2025-03-16 23:36:45', '2026-03-16 23:36:45'),
('7dd3151eada61afad92a335f035115b755b89ddd30316dfc6c3a261ed12502fd158d4386bb7deed1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:13:55', '2025-03-21 22:13:55', '2026-03-21 22:13:55'),
('7df1eba1a08b7ae7f2ef6a00a4375c5ba7d071fe42a6521615436e431ddb711ae7728a939f6dae4c', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:40:15', '2025-03-16 23:40:15', '2026-03-16 23:40:15'),
('7ef5faa91e2ead45edd9136003244629df5f1b87bb740a407855c15ff962bca76e174e1523b7e8f1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:30', '2025-03-21 22:32:30', '2026-03-21 22:32:30'),
('7f2611bc5b833c714125fec62d1be11d20d72b164e70cb1485c657c16c77d18c01b5be901931ee5d', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:54:13', '2025-03-15 02:54:13', '2026-03-15 02:54:13'),
('7f4be2c415f603160edfc4aa74fa6f28b9569565544e40553be9dcf7d11fc8023e4cb3177c1de000', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:02:48', '2025-03-17 00:02:48', '2026-03-17 00:02:48'),
('7f76081440235d6f3556e41581e0ebfd5f5ec88b8c58b1155710db53b13e1d18cc03e6ac759413c2', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:21:33', '2025-03-21 22:21:33', '2026-03-21 22:21:33'),
('7f7e8b36692cbb38b5899429c0c6f90172a2eec5bfbe98fa4664c445057405b529474df11c27e7e3', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:57:58', '2025-03-16 23:57:58', '2026-03-16 23:57:58'),
('7fab17938927dd3e3d5806f190001b9fc01f335118f859bab778b5dd85aa7e8d9d47ef42a15c5fda', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:18:33', '2025-03-15 04:18:33', '2026-03-15 04:18:33'),
('7fcff8463c415fc8ac70a4986c10d1031d2b117258cddc5027dc73303d8be8de8ebe6f80ab04091f', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:16:13', '2025-03-15 22:16:13', '2026-03-15 22:16:13'),
('8008b9d7d5934ef018fe8aebe99949ab2c700cd623f0ae9de7e83d348474ba93df115c6de2aa8504', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:05:43', '2025-03-17 00:05:43', '2026-03-17 00:05:43'),
('8010c7f7edea868f4a735213f506c0d777c4b653dea2af01f293f3c4950fcf7473db030043f2c34b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:25:43', '2025-03-21 22:25:43', '2026-03-21 22:25:43'),
('80313e731cbf724850a7de9bcecb07f19c06a66761e30dfde0d445d3e3ca42e365ccbaa5e0d80d1c', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:34:35', '2025-03-15 04:34:35', '2026-03-15 04:34:35'),
('804756f3bfefd80ffe17f491aa022f9d79eb41f696a1ee7384a92bf9479a75951a1f18c17d77559a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:29:10', '2025-03-15 04:29:10', '2026-03-15 04:29:10'),
('80dc2c1c2a33256b4587545a03ec39915a230ba7c681332e87891c23970ab17da7d48c9a4973aed1', 1, 1, 'accessToken', '[]', 0, '2025-03-15 23:43:26', '2025-03-15 23:43:26', '2026-03-15 23:43:26'),
('80ed0531a321ec8cbd9c302a61219c4875032279205df13283203f619fa4ee31674093c4b1dcba76', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:55:29', '2025-03-15 03:55:29', '2026-03-15 03:55:29'),
('8117bbf2b31d99f693e40db1817a66c84ea82c048db56d95d8416398e681c118f4264296f3b39b73', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:14:04', '2025-03-16 23:14:04', '2026-03-16 23:14:04'),
('816d4db4a5c5713a64c58fceb22b26338924df56dcd826eff6b6d1a1255670d24dc317f4fa237ab9', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:35', '2025-03-21 22:31:35', '2026-03-21 22:31:35'),
('8297d702ec29ff8cfbab91b1e37a4838821e609c7bffeb06161788158afe09c52c1b8394f6bf6f6a', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:50:11', '2025-03-16 23:50:11', '2026-03-16 23:50:11'),
('82aa8591aa7c94ee56a23b105fd15f22ac060bdfcb41213cea9a4c567f1a28b74e18457fd3e8ccb6', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:27:54', '2025-03-15 04:27:54', '2026-03-15 04:27:54'),
('82e4f5aa416f9b84842f25fc8bf8b84a0b871a4f45e5e43b3b462485565b42644889a9e7704d37c7', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:58:25', '2025-03-21 22:58:25', '2026-03-21 22:58:25'),
('8306375a342bac9bd91940fa069a109fb69427bb58322a9c8ae5fe1744e32122b0a128431df0fbf5', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:25:50', '2025-03-16 23:25:50', '2026-03-16 23:25:50'),
('8316562596c0295e710d2a084c1d19e1be76684611184cde96919576473a31f6e6b79d634041834e', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:40:25', '2025-03-15 04:40:25', '2026-03-15 04:40:25'),
('841cef290a2a5b3aec04b15a4a961ce0dc1f05252583ace9ca82bd7c0d75b581a16764aa0d1684b9', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:56:02', '2025-03-15 22:56:02', '2026-03-15 22:56:02'),
('8429ad27722ea75ba5e1231f3439e5f5e86bff02e0ad02d0988a580b56be782557fbee4972850719', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:21:39', '2025-03-15 04:21:39', '2026-03-15 04:21:39'),
('84a89528e507b99851b8a9cfc1eb008e46e979f9dfe8d86d829fac34ccc6954d62644587b7a173cd', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:20:01', '2025-03-16 23:20:01', '2026-03-16 23:20:01'),
('84b13c6687822f2dfa47424345716b31f410f7d3ce76e264943062924598cf976475d337903496c8', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:24:39', '2025-03-15 21:24:39', '2026-03-15 21:24:39'),
('84c3161e1e765f200aa230b2eac3abc217435ecfe9ef8c897b88ada3c4d65fc0244af961266ba700', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:24:05', '2025-03-21 22:24:05', '2026-03-21 22:24:05'),
('850c2984aa7ff6585fd74681d4e152becc0a73cefa4d1da5a2ae5e2b7283dee4e3e79b530d56da53', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:22:20', '2025-03-15 04:22:20', '2026-03-15 04:22:20'),
('852cc168b4e13223e7d3a7f10764c667a7e3fbccec28a60bdfbc63653eb37a28945f86d700566fa7', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:27:58', '2025-03-16 23:27:58', '2026-03-16 23:27:58'),
('8530e431a6c4294eacfbb817cc0ee0fd877a1fbfcd271a8da42dceca942cc775710c9e606efe5385', 1, 1, 'accessToken', '[]', 0, '2025-03-15 05:05:04', '2025-03-15 05:05:04', '2026-03-15 05:05:04'),
('853f796b3cdeeede1fe396256f5e67916e3245cecda75a2a8c2d47b2cbfab384579e81fefb111c3e', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:53:46', '2025-03-15 02:53:46', '2026-03-15 02:53:46'),
('85403ec1be02e2647b0a0b103a1d381d03a850b9257d3d4cc527e7036e8fbb92278525936ea00acb', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:47:55', '2025-03-21 23:47:55', '2026-03-21 23:47:55'),
('85935c66c381fd0e3ab418bbbff19d13b7a6e7d7878f14901f467a345fed17d0899a7b58569317db', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:58:04', '2025-03-16 23:58:04', '2026-03-16 23:58:04'),
('86390b4515551e08cbf02ac1c60955ffe276895f2732e5027ab3e8e0aaf099e5ce7e00e326784b01', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:19:48', '2025-03-16 23:19:48', '2026-03-16 23:19:48'),
('8669a100755b1d244a7404ae564cf2f8b79ccdc1a72a56db7bf3eb7b9e93315d7802baad1970c9a2', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:43:10', '2025-03-16 23:43:10', '2026-03-16 23:43:10'),
('87e664e249d876d3fea71c35fc2673b0889b1936f9f94ca21bb6f5be79c255718c86cfcad2911b04', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:57:44', '2025-03-21 22:57:44', '2026-03-21 22:57:44'),
('886c975d8ae854834f61b55bda12ab0229bf50f45b15b3e70a44d042fcbfa799d2c284e0de55e01b', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:33:23', '2025-03-15 22:33:23', '2026-03-15 22:33:23'),
('89126266697ae800391cc94cef10009b03cc1ea348aaee1abd495e50695e9d1846a35645dcd5408f', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:11:23', '2025-03-15 03:11:23', '2026-03-15 03:11:23'),
('8912d8154e02f2bbf300aa013c85a0b0a22ecf10c17bcfb52537b8e0cee955282e490b5a12c4c28d', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:37:16', '2025-03-21 23:37:16', '2026-03-21 23:37:16'),
('894beaaa081ce1a445aeadab98338dba041f8de48d02e92841e29dc2b5c677888b5b5169e535f731', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:56:04', '2025-03-15 03:56:04', '2026-03-15 03:56:04'),
('895a6014edb4abc83b6b8c6aad05429456f146fe7325bd0d5c746d861406580288da95aa7450fb57', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:11', '2025-03-21 22:31:11', '2026-03-21 22:31:11'),
('897bda6e771c3162ddf0900213cf75ccbdf07cb7aa0b651f78235f0c32bf39da3c3cb929393856e8', 1, 1, 'accessToken', '[]', 0, '2025-03-15 05:03:52', '2025-03-15 05:03:52', '2026-03-15 05:03:52'),
('899f9b09b357ad50ead658d050584db25f4bc0a4b5252d20de3156cc48077967a15369e1ad18c58d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:22:35', '2025-03-21 22:22:35', '2026-03-21 22:22:35'),
('89afed0a58891e2884abc63a45b92e9fcaa1f80baef0bede231556db15a0e6ebafbec1ccfbfdb215', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:14:31', '2025-03-15 22:14:31', '2026-03-15 22:14:31'),
('8a724cf3a4db6ba9a45b5e62814e57a88f6109af4e47902b057f229f73382a8e8b04bc55af7a298e', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:36:43', '2025-03-16 23:36:43', '2026-03-16 23:36:43'),
('8aee3795f27b79627a981a0593e69c5c5608919b3582534df4fe6de739e4b367d07c48335179bb01', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:26:38', '2025-03-15 21:26:38', '2026-03-15 21:26:38'),
('8b4e9ddd603dc46455d563db6b351fbef6c77a58cde629dd5cd702b56bc223a02f3289fd78faf642', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:27:29', '2025-03-15 04:27:29', '2026-03-15 04:27:29'),
('8b67f7ca035519d6f3d41f51bb1b507fbe8549f5e10fd1c1a6aaf1803e97211aca6b03d636164842', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:03:19', '2025-03-21 22:03:19', '2026-03-21 22:03:19'),
('8bc3e5e9512069914746be03dc18f3cd6d500c03d34775383e9ac41c0555750e4d34325c9dfb3337', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:00:31', '2025-03-15 04:00:31', '2026-03-15 04:00:31'),
('8be6df1b9f94ce760f46f933ad2c513a2cea06aeabfd5ffc2842b1821797b365f8ba0a609a5a122a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:30:54', '2025-03-21 22:30:54', '2026-03-21 22:30:54'),
('8d38706cee4b770cddc1c49c7edba8eecba05501d1925250ed9e3bf73e603c7a89c0d807921fd86b', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:03:54', '2025-03-15 22:03:54', '2026-03-15 22:03:54'),
('8d50cbd709501a15db6356930385aa654f5ffcf6ac4e610a6aff5ffde20744faf754e7d571e29327', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:00:23', '2025-03-15 22:00:23', '2026-03-15 22:00:23'),
('8d5fb096ba619e0b16f31eec812bed16537ab177c0c139df259cf00575db1889de2d9f743618ba47', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:54:09', '2025-03-16 22:54:09', '2026-03-16 22:54:09'),
('8e06638396e95f19edc8c259d6d6594ffa5f641573f5b9c7215635f62405c38b977d5d980fa915af', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:51:49', '2025-03-21 23:51:49', '2026-03-21 23:51:49'),
('8e129176fac2735a7286052725db5fcea3cb1dc1b2ea31294f35a6a5d258e1b220b957f2037f08bf', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:29:52', '2025-03-15 04:29:52', '2026-03-15 04:29:52'),
('8e4dd972d6b898e284dd0b43661e0cea3d3090143512f35ef9757072a90f9f43e8330fc1c82f020a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:25:06', '2025-03-15 04:25:06', '2026-03-15 04:25:06'),
('8eb0d7f69156d47b517b81a7217d5adc59ed21efbf4004ae2898a9db4a38cf8f24fe6a58e9545a60', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:57:06', '2025-03-21 23:57:06', '2026-03-21 23:57:06'),
('8ebca1912e248365fdf846731c02aebfbfa4e0ba61e85cc081dc5af9ff745a66ada1ad3636e4f438', 1, 1, 'accessToken', '[]', 0, '2025-03-15 20:43:00', '2025-03-15 20:43:00', '2026-03-15 20:43:00'),
('8ebdd0007a92fe35616fa2a2f9875bcf5402dad287ddd9720afb62b4e5937c23d23c8cff4d57ca60', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:51:39', '2025-03-15 02:51:39', '2026-03-15 02:51:39'),
('8ec3a801709fd062f2fb7319e8b051b510c6f18445d8111f6d570763b6dbc050538bbae3930bd199', 1, 1, 'accessToken', '[]', 0, '2025-03-15 05:04:05', '2025-03-15 05:04:05', '2026-03-15 05:04:05'),
('8f05ac36746bc6335e797a2a34186a1a02460c73cac0654fffde68a7c4a8b8d8d7bc579f8da3f382', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:32:17', '2025-03-15 22:32:17', '2026-03-15 22:32:17'),
('8f1f808161b64d7657fa470c082426801c649c7ed3c3dac6298c9bdb878c064f96e4673e36d8461f', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:32:51', '2025-03-15 22:32:51', '2026-03-15 22:32:51'),
('8f49a1cf9753ec03972c7121732c99096605df6286f9f4a16d265446239dd12367c6f5ad4d9705c7', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:20:43', '2025-03-21 22:20:43', '2026-03-21 22:20:43'),
('8fa6e52a6ef7fc3d26d5f445062ecddfbd83fb0565f9ff4b70706c7651500c3cc1e4626364b629ab', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:39:07', '2025-03-21 23:39:07', '2026-03-21 23:39:07'),
('8fe6c29b9fb46d8503af999e829a1235bbbb6aed0d09e29fe0d700cbfc3cd488e145974ee90e0d78', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:54:26', '2025-03-16 22:54:26', '2026-03-16 22:54:26'),
('9097df6a5fba1ece9b9582960b733c728558e18e00066e33c7836cf369c8634b2d4e65f1caa6bd50', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:33:33', '2025-03-21 23:33:33', '2026-03-21 23:33:33'),
('90b9ada938eb0ced286368fb67caa0b56c000d7207767f9db0e2b1a09857e2a6ef62a0d8c6ead36c', 1, 1, 'authToken', '[]', 0, '2025-03-17 00:41:53', '2025-03-17 00:41:53', '2026-03-17 00:41:53'),
('912b95d3d69c0e6e2268beb4f9c3781f69a20e36c06ee93e0da7f5682c2516f3953c8f10f751a7fe', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:45:36', '2025-03-17 00:45:36', '2026-03-17 00:45:36'),
('914f1ad1bf41c49ef6888964df26b70bb588421bf5cfbc1d0f45a5d3bfafc2322c6b7f9a4cfafcdf', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:41:05', '2025-03-21 23:41:05', '2026-03-21 23:41:05'),
('915703963b68d97e045247cdcf0117914550713149f81e0d707e43b2cf7005613f2c5f6aba54eec4', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:30:25', '2025-03-21 22:30:25', '2026-03-21 22:30:25'),
('915d052c5059fc749f2b21febd148ebb8b89ab564511a2f5ff0f00954fa99679c55feb2be326950f', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:39:21', '2025-03-21 23:39:21', '2026-03-21 23:39:21'),
('918de827686ef379eb54c17c8f766900db7269061000d061a7112b6efbcf10fcf1141c96ee9eb30f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:59:03', '2025-03-16 23:59:03', '2026-03-16 23:59:03'),
('91a883f036509a0311a81b7ac25ff93f38fc0e1dacb55f210e86922047206681c19a3b2129a0ffa3', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:50:21', '2025-03-16 22:50:21', '2026-03-16 22:50:21'),
('91dcceeea6b2115413c59d559140ab354d4ef7a8abb3d6943fbea842ad20d23792711e001befd34e', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:50:35', '2025-03-15 22:50:35', '2026-03-15 22:50:35'),
('92022bf9c5bc7bec627afc0fc85a324ec5449e628b8dbd40132068d2e0aa00abe7e01e0b6fdbaed7', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:01:06', '2025-03-15 22:01:06', '2026-03-15 22:01:06'),
('921fc5676c30187ccfbd0b8a2fe2eb29650d9ed812110dca52ec952deaee963f7851ac5f17fc156f', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:19:22', '2025-03-15 22:19:22', '2026-03-15 22:19:22'),
('92a73d2a25515e0ec2c42b63718f552909fe1c58bf7c711b759f9234b721fdd2be3ddf2d0a44cc82', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:03:50', '2025-03-21 22:03:50', '2026-03-21 22:03:50'),
('92b441ab87ae37455b115d1156439c0e5c5e688d164d40f8ebc21fda0baecf83bc9a41e5228defc2', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:14:49', '2025-03-21 23:14:49', '2026-03-21 23:14:49'),
('92f8d5e0fa2c8e0230ac849d965c473c7b09991cdf54efcc718f325d8d9339c5c1c6260d760d1b15', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:42:10', '2025-03-15 04:42:10', '2026-03-15 04:42:10'),
('931195f11143a541f59fc86e52a238dfda980aed8a0c7f24084d58641cc9aace043cfde761a39575', 1, 1, 'authToken', '[]', 0, '2025-03-15 05:04:53', '2025-03-15 05:04:53', '2026-03-15 05:04:53'),
('93948515bbf4101c89398446e5708c479e037c4d62fded962c40f59f7c481a75fa805117a19bf16b', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:19:22', '2025-03-15 22:19:22', '2026-03-15 22:19:22'),
('93ce651689547fb3ede573e1450bbdc598da8bc9fe3a77b43c280b900b7af50dd1493dcb60b43d7e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:19:52', '2025-03-21 22:19:52', '2026-03-21 22:19:52'),
('93d62a7c49f7a90c6df4301dcd93d482356b61c3e82f6790df29238f150f71aaaaaefd2d093e809b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:07:42', '2025-03-21 23:07:42', '2026-03-21 23:07:42'),
('93f40194bd65a1825d195db531d3cca1be4f98066ff52d350d982d4899cb6740752e3688e892e901', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:02', '2025-03-21 22:32:02', '2026-03-21 22:32:02'),
('944caaa9c2bead5889cf493459eba4528cdf3e521275a6a7b3ddf354f9064ce2707a5f7ad97fc55d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:58:33', '2025-03-21 22:58:33', '2026-03-21 22:58:33'),
('94b291942750b0e9c9b1b658f48d30fecb8c94fdbbff972f3ceed1f8cc85258875ef4c5b7792f919', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:25:33', '2025-03-16 23:25:33', '2026-03-16 23:25:33'),
('95609d1233151c819aa78225c6c43aa655eef15f8802e571a903083f0ae1d9cba4bac4cd723fe901', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:50:42', '2025-03-15 22:50:42', '2026-03-15 22:50:42'),
('95a3f190f7f68d8490bd3609a7052fe70945da21c37eaf26dcd3ebd166cf4b8377a6ae4e1b75bbf0', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:10:39', '2025-03-15 21:10:39', '2026-03-15 21:10:39'),
('9612c92617fa5b938ed8e5f2849adc57301c9a3fe2963d6a7fd31bd4b7f66fca83a0482f3cfd198a', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:04:23', '2025-03-17 00:04:23', '2026-03-17 00:04:23'),
('961d4c547b689c72da1358f9a6d4b4e7684f9cb7293df911fc1170f4336568f75ff20fac504f2b4d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:22:29', '2025-03-21 22:22:29', '2026-03-21 22:22:29'),
('9695116db5541ae856f9b72638034a12bade593b67c554516711aa6c8091aa0daa4d3bd56f75acbf', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:09:03', '2025-03-15 03:09:03', '2026-03-15 03:09:03'),
('96db5da475ff206be6d449ecb178b2a8b869331e341508ea619bebf70658d4b396197e757bddff35', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:19:07', '2025-03-16 23:19:07', '2026-03-16 23:19:07'),
('96dd4fc5c6a579cd94ab97bf6275b0d6b61d828bf24b43c9b44c1947fa6c8d43788ffe272b8f488b', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:17:21', '2025-03-15 03:17:21', '2026-03-15 03:17:21'),
('971e033ace516480326d0a24655b574a693a8f172794ac9aa9651bd0915d3dcfe2a1101b86fd7a94', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:40:51', '2025-03-21 23:40:51', '2026-03-21 23:40:51'),
('9772dbf2c26d935920c1b7afe012f2466fb696c1acc356ddfb08c30d0c5ddbea82907710ad5d6502', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:46:11', '2025-03-21 22:46:11', '2026-03-21 22:46:11'),
('977bf561593999c8c329e545823b9a867bf0e30365f3b08368a77e32c994301e9443a8588f40f3eb', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:34:14', '2025-03-15 04:34:14', '2026-03-15 04:34:14'),
('97d059d51175ac1622c053cd4fe7b4c26b9410f0fd14e2a97dd598dd1cf5f0142de434eefa8d545a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:50:01', '2025-03-21 22:50:01', '2026-03-21 22:50:01'),
('984593ddcab5e3c0e0e75799453b9de1de9385ce01b5646c4a45dde7c6bbe847827291d6e487418c', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:25', '2025-03-21 22:32:25', '2026-03-21 22:32:25'),
('98b76935bdc640d343f6cda80b829914f50c101c1141b1f24732d136ab383d26883a8fcc40e1d548', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:31:46', '2025-03-15 21:31:46', '2026-03-15 21:31:46'),
('98dde34d8ea2d41ac653dba15fd2fe5d53bf219936a4993cce30ae49dec7c5e49f8e0b7ef6484f4a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:38:52', '2025-03-15 04:38:52', '2026-03-15 04:38:52'),
('991c68a858acf4c2df45afabb49fa27afbf8c73ef8e1d6dae3b024e50c49bcdb3f9ad231f453bf6b', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:47:43', '2025-03-15 04:47:43', '2026-03-15 04:47:43'),
('992b24b630a5895b524f5a0b083f75599f3e2e95a54602740a287a2040e0027c4a81558d6ff275ba', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:49:24', '2025-03-15 22:49:24', '2026-03-15 22:49:24'),
('994f7457cb86fbf60bee7bccae39dfb973c281851b14210dce32a6a2502bfeb7fe3fe7932fa9448d', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:26:58', '2025-03-15 21:26:58', '2026-03-15 21:26:58'),
('99f4ab35a358ba7a868a05ab4c0c9d930ed4db9378b7a6eb7faafe7638bb9917f954b59d3475d4cd', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:49:18', '2025-03-15 22:49:18', '2026-03-15 22:49:18'),
('9a78d2b590a680a66cb628c1302566fd2290588f4cf3a43aa66697d1f7d8868e139244dd3e882aff', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:33:03', '2025-03-21 22:33:03', '2026-03-21 22:33:03'),
('9b1eb869fcf63d91a7b15adb3a90fb37c171d952842aed4e83f535f4afa468447c42e40ca4dae807', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:24:48', '2025-03-15 22:24:48', '2026-03-15 22:24:48'),
('9b7d6f2215a986b41f038c56c4ff0dfe8e1660eeb1b8fe38c155e717cb47699bdb42722e44bc5fba', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:51:57', '2025-03-15 22:51:57', '2026-03-15 22:51:57'),
('9bbc50b08d779f07b528ee872b5155887fe2b6f7604c3bfec323e157ad847eef35bedb86cf7da168', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:43:38', '2025-03-21 22:43:38', '2026-03-21 22:43:38'),
('9c03bbb836710aa3db50ba1faba8799dcb13d50b904d35925c8a763093199b102126dcf8936f3d1b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:39', '2025-03-21 22:32:39', '2026-03-21 22:32:39'),
('9cd21e1b1513165633fea9bda88edd8dd0157f3737ccfeb7101a8c9575f36996d130eac27620c3a5', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:11:28', '2025-03-15 03:11:28', '2026-03-15 03:11:28'),
('9ceceeb8126f0144c4c8236d60ad84efd10627b5624d514110a366f2f728643cfa74397edf964167', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:08:51', '2025-03-21 23:08:52', '2026-03-21 23:08:51'),
('9d0c9a204d20a2c77e217d96f9be7d9773fc05690c83533c6583b40b4b2e25de36ba296495aa8e61', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:44:59', '2025-03-21 22:45:00', '2026-03-21 22:44:59'),
('9e1e0062bef1124725d29271cb7ec65b869fa4ca7c93c5f432306083226f98aafccf0515045c07a4', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:05:32', '2025-03-17 00:05:32', '2026-03-17 00:05:32'),
('9e70d27ec5740b2b0e7430afc8d157b1f301a1c1468ae77fd134a0d306e0564d6c967c9d19bdcf35', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:26:21', '2025-03-15 04:26:21', '2026-03-15 04:26:21'),
('9ed7f2fa96f49b7ad9359f21545bb06e7e5be289ee5b03e907bd10d6403c7bb52703a3e6ae66927f', 1, 1, 'authToken', '[]', 0, '2025-03-21 22:58:32', '2025-03-21 22:58:32', '2026-03-21 22:58:32'),
('9f5cd9659d7fc450b206028732710da9e00e3497539932641dacadefce91814a656fc3dc1fe17856', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:19:23', '2025-03-15 04:19:23', '2026-03-15 04:19:23'),
('9f8e04640ec9b45790d64fb4443fdf2610d3e51f70ea049e0c381cf6d3f3dc45f754a25383498b60', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:59:26', '2025-03-15 03:59:26', '2026-03-15 03:59:26'),
('a0416112bad4d34ad145e59d41a84dfbe0f70333cb1c074b5877b27f1f980f20ec816c95e8bd986c', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:00', '2025-03-16 23:41:00', '2026-03-16 23:41:00'),
('a055bf817bec63b8d8fd51edf089ff0092a46d468256f625d17aedfa35f7d791fd73ded1744b0b03', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:46:31', '2025-03-21 22:46:31', '2026-03-21 22:46:31'),
('a0d718d3f3f161a96aa6de8a343de58ef90d3d7a9efb148de607e3f7976153ec940d6aefc4eb286e', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:31:00', '2025-03-16 23:31:00', '2026-03-16 23:31:00'),
('a12a1706324330391e9d7e8151f65a269762fe700f63bbb1f8c8fc2b2f8f444a747f8abd29dfa135', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:14:41', '2025-03-21 23:14:41', '2026-03-21 23:14:41'),
('a132886e9e00cd37a093399c441782c6efaaf8d0ab79095492f105de896d016eb9841e9f3cbd6fe2', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:34:04', '2025-03-21 23:34:04', '2026-03-21 23:34:04'),
('a1d2c8076dcc85a59b8a63e76e8121fcb00a3a9a5c5f5a8d408301f5bdc276fed205183c53cf66d4', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:27:32', '2025-03-15 04:27:32', '2026-03-15 04:27:32');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('a24be259aee147aabd55f2c497e6bd0899c2759cc1b6c2686adcffaf40decbc6c1e6072f29adeb06', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:38:51', '2025-03-15 04:38:51', '2026-03-15 04:38:51'),
('a24e7c089f2839942bd4c71f41482b938543504911fa0ef0020f76331929f3e6f862bdf20c83204c', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:30:24', '2025-03-16 23:30:24', '2026-03-16 23:30:24'),
('a278739b0e995e47fcb31d2856d78e4d88402bbedc2269642a661f3ffd4baa42bab893978209b730', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:14:32', '2025-03-21 23:14:32', '2026-03-21 23:14:32'),
('a2ad406db1728a7470ab0301800170a2ce5e1b699d9aea4820e85643ab2e9b118f9f65a314316c6e', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:25:31', '2025-03-15 04:25:31', '2026-03-15 04:25:31'),
('a327cf57e692ad31ea67853a72c60f75215e1118cf86d998581d3b48c804dea8a6c3b328cb636be0', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:32:01', '2025-03-15 21:32:01', '2026-03-15 21:32:01'),
('a35ba2322073e04f302a2e359f3b944e3f58d4f0f8e74323089768586def7bd03205517f504fa556', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:53:34', '2025-03-21 23:53:34', '2026-03-21 23:53:34'),
('a3b789ab4a402a792287121b9be7d052cf1755e6ab3fc0692feae77eb05d11c09247bc9d3380c803', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:30:34', '2025-03-21 22:30:34', '2026-03-21 22:30:34'),
('a3c00c30c2429a10268304f6e4ba1e26bc29202d51746e1ad7ff85179be02f1a2386b18c4c286138', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:30:22', '2025-03-15 04:30:22', '2026-03-15 04:30:22'),
('a4146bdc549dc19ab668e35cb4fad2265d523707092b1ee05ff6cc556c7d5c9e586e9816d5ed5a18', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:20:29', '2025-03-21 23:20:29', '2026-03-21 23:20:29'),
('a4296c4826b6884ab3cb028df3db57688a60a41f1ac85ad3e82661d894d6fa01725b1e718eaf774e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:12:56', '2025-03-21 22:12:56', '2026-03-21 22:12:56'),
('a46c1eda84dede461860a8c80f1ffd3433336925711dd73a3951859c1097e2ec2a05ca21c9cda7e7', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:38:33', '2025-03-16 22:38:33', '2026-03-16 22:38:33'),
('a478cbe61cde580e9653097cd799ed434bdc210e1be059199e6f7a1d7e3a539c6ef4564121a52e44', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:16:24', '2025-03-21 23:16:24', '2026-03-21 23:16:24'),
('a4c8aa10c0b8176c72dc2d1f9f6dfc9da16d20ed4f80fbdff8ff776a56110bfcf564288f8779da5a', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:27:18', '2025-03-16 23:27:18', '2026-03-16 23:27:18'),
('a4ce30d706ec932b6308e3f7d3bd228b2c2e93537852d607e005433e017cac2dd718a1b1ffc66ee7', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:42:44', '2025-03-21 23:42:44', '2026-03-21 23:42:44'),
('a507ad29642ce8b7f2ac0ed1a91abbce5bf4d24298a49749496dee17ecc48019d742e68c0910fb38', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:52:23', '2025-03-16 22:52:23', '2026-03-16 22:52:23'),
('a52ab1533a5fd9e62d735e749bf7fae615a4570a285efc239aaee9c83fb96c52696acb05db7f8ccf', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:40:34', '2025-03-15 04:40:34', '2026-03-15 04:40:34'),
('a5580d189aeb608d226bf41639fcd060dbe3a4ee0a13be5eae07fe2c50b87ab31c1ed0f701e6309a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:27:59', '2025-03-21 22:27:59', '2026-03-21 22:27:59'),
('a58e97248f263d30a93e2b1c6015fea37e41b159f2e3e95c3644faf3d1b8e346a288a96899237d14', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:28:43', '2025-03-21 22:28:43', '2026-03-21 22:28:43'),
('a5a5672f46706be91975ec59634578e7591e71870d46369bdbd3128817af1653825734a24a7438bb', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:21:29', '2025-03-16 23:21:29', '2026-03-16 23:21:29'),
('a60fa62238586300daed7f6a27d902aacd69b164d29fe87faebc15746247aecb3e2b9e42a9495984', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:24:58', '2025-03-16 23:24:58', '2026-03-16 23:24:58'),
('a681c10fa90ec63cac04af0693bd1827380ffb4f74a2ff3df265cbcd83334ddb963477af1b442bc7', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:45:23', '2025-03-21 23:45:23', '2026-03-21 23:45:23'),
('a686f1015147d46e63068e570cacaf3f2093385b6e49a9066ed7236e306f0d4363ed98c123920db3', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:33:49', '2025-03-15 22:33:49', '2026-03-15 22:33:49'),
('a6c0ca97652613c499afdbfa367fcd7b79f71e3fa4b70e45f67f5b01dad3879d70ffaeef6864c63a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:28:17', '2025-03-15 22:28:17', '2026-03-15 22:28:17'),
('a6e8faf1dd519f997089c4183d667ffd46747058482300f6971ec2ed2a57e3a4ddf7980a10a31fdf', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:23:04', '2025-03-21 22:23:04', '2026-03-21 22:23:04'),
('a6ebc2b940f7bd06ff32b5b2f85f1d09652cf2683afec739159b54b2fb08dcdad21a361685314d50', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:30:03', '2025-03-15 04:30:04', '2026-03-15 04:30:03'),
('a7e9261dd9054173cf1ef391e354d2d7e0da7d478c31df013d34a7338d384628318d0916194751ad', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:33:04', '2025-03-15 04:33:04', '2026-03-15 04:33:04'),
('a8127d71adffcd965369d7d8eeb58698f60dd23f54774e447532fa3602e910874a33b2617eabf9c5', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:42:08', '2025-03-16 23:42:08', '2026-03-16 23:42:08'),
('a816634c5a271efd6e0113a5ee78eb23742cd0bd50af6eefeaf4d607c23ae6cedccfcc273e41088c', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:08', '2025-03-16 23:41:08', '2026-03-16 23:41:08'),
('a870f4cae85f031db69b36b91519408cfb81c736f7485c8c3bbc82b0864e422a2fb65ad2d170317c', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:43', '2025-03-21 22:05:43', '2026-03-21 22:05:43'),
('a8b8a500d4ed229dce2561b8b5c35cee1c03694c971af7328b7b74ee359186794febf49c3c9f74bd', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:07:03', '2025-03-21 22:07:03', '2026-03-21 22:07:03'),
('aaa31464f4132e91155da39929ca0a081094d3e906611c4e0e16501735010076afe31d967bbb5369', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:13:37', '2025-03-15 22:13:37', '2026-03-15 22:13:37'),
('aaff4dfe2b99cb4b21d5f056786720e2279d9163e95016b6cfeb8d407c46487b15af03a6b5133c39', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:43:21', '2025-03-21 22:43:21', '2026-03-21 22:43:21'),
('ab2d021d96da2469dd791a8ba25bea57cefd02c5651b7d4b58de6e93e6800587159ce3041398cc5a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:56:36', '2025-03-15 02:56:36', '2026-03-15 02:56:36'),
('ab5578ca0fcef4b29b2c55bb0f80529b76269a59dad9271197c929d901ede9892f424978b1cecf16', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:43:14', '2025-03-21 22:43:14', '2026-03-21 22:43:14'),
('ab5f954a81575e1f02d34886017df7b2fbec7acc18b8d5c641ab0ad21e0b5ef56c75ea87f0192fed', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:54:20', '2025-03-21 23:54:20', '2026-03-21 23:54:20'),
('ab6b625f5eac6859c8890ed3b68baa8d02121482097f0f02b801cbc0146f92347275e9bc478f0609', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:28:16', '2025-03-21 23:28:16', '2026-03-21 23:28:16'),
('abfd1c818fd50c338a546da58ba0182006ee126e7a5d954c66a069af8f493b037d17b5970ba52b33', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:20', '2025-03-21 22:31:20', '2026-03-21 22:31:20'),
('ac1cd545d23c516a5ee73e2478dc15d9f5d6d9b3e8f4b35e14bc0df0be44c5b39620ba52d7f57662', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:02:28', '2025-03-17 00:02:28', '2026-03-17 00:02:28'),
('acd97987743738e00ac0438bcd9de960f94714ee0d73413d647263088d4372a4df92754094e89f8d', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:59:45', '2025-03-16 23:59:45', '2026-03-16 23:59:45'),
('ad4af56cbb2bd6c4159bd332334c76e970bf57303e195785834eead37b72ef684b655d88356df6b0', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:39:06', '2025-03-15 04:39:06', '2026-03-15 04:39:06'),
('adaa97078ce6045f43c6b213886220d7f26cd1b457cda6d369d673017c0c3cca2b66dd7d6c25b615', 1, 1, 'authToken', '[]', 0, '2025-03-21 22:26:35', '2025-03-21 22:26:35', '2026-03-21 22:26:35'),
('addc4bcc68b7c8a24ad0e3091b2b8bc10e250cf3cde2ab81b2b083f1c02dbcd64f716349a7b1749e', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:28:04', '2025-03-15 04:28:04', '2026-03-15 04:28:04'),
('adfe37ddf7574131c4396524f195353593f8bae16be3b2a4a9c29b14b360cd7a792199bbb4abeaa2', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:47:36', '2025-03-21 22:47:36', '2026-03-21 22:47:36'),
('ae8cc372ae4a4423c0cba27f0fa3898dde98dc53467dd9c0e673a46313a651021d7457fd83737fc9', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:11:37', '2025-03-21 22:11:37', '2026-03-21 22:11:37'),
('aea046b12db62e82cf6137927ffb2fe78ee4362b32cb5e951e8fa61c60c13b4ce1bcb1fb459a37b6', 1, 1, 'accessToken', '[]', 0, '2025-03-18 22:15:36', '2025-03-18 22:15:36', '2026-03-18 22:15:36'),
('aed8edc531b3a6dc2157219bc8ceaa091f4ed664dd20cf90fe09e1ce8800fc0473795e1b9a2341a1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:01', '2025-03-21 22:31:01', '2026-03-21 22:31:01'),
('af322911df5de3dc24fe85fe1ed8efe0670d2d01f1f03eeb88223bb036c9dee526da555c93eff190', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:32', '2025-03-21 22:31:33', '2026-03-21 22:31:32'),
('af3d1f67503c5a514b3d943b4b0e04a2c13e55a7a0ff5230a86644c8b96b9a3ec0a24b37fc183866', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:19:30', '2025-03-15 21:19:30', '2026-03-15 21:19:30'),
('af483b70c209b1a51b619bed436a6b385b5d56fb96e633de1e19b48afabab0b6a08c1a45b52406e5', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:13:12', '2025-03-16 23:13:12', '2026-03-16 23:13:12'),
('af5191c661091530bb0d3df76ce54d300cf05042864284d432097718a8c14b7669c5f1fb9159b784', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:30:53', '2025-03-16 23:30:53', '2026-03-16 23:30:53'),
('af52a4a031928223367dc833a68eae35240025e784568603123cf60b5a11ddae2a14a11abf4f901f', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:47:55', '2025-03-21 23:47:55', '2026-03-21 23:47:55'),
('afa4ecca29daa3f248fdd66e408281c981fa2fd0e6167d49c48b3a6fbc65a7901f488d2a65426d8d', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:55:23', '2025-03-15 22:55:23', '2026-03-15 22:55:23'),
('b0007f780663e4f05c50c696feaa2a2efbde39d2546cb1408a173b1358a7eb7b3daec1a3cd4cd1f6', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:00:22', '2025-03-17 00:00:22', '2026-03-17 00:00:22'),
('b00f14416586b156eaebc12e90b54f858e12c60da38fdd8e0421d71cea9a0b7d117aac3cb4b1c378', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:36:40', '2025-03-21 22:36:40', '2026-03-21 22:36:40'),
('b034222d8cd8e8731bfc999a808df49049af20ab7a8063d14dece1fd0a0cff6f626a3c713def22c9', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:25:48', '2025-03-21 23:25:48', '2026-03-21 23:25:48'),
('b0812090d71d2249af00394626516cfbe32b857108e5933d068499ce3a239cefa81a2257248154f0', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:33:40', '2025-03-15 04:33:40', '2026-03-15 04:33:40'),
('b0c9fa913df6fe1c0aa1d636b9e174282396d62b2bffba6895ad8b0c3b4c2f2b11e9813edc1c3a40', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:26:03', '2025-03-15 21:26:03', '2026-03-15 21:26:03'),
('b1c99bb738471905dfdcc606d1f2b9e3975325b330256442463ebe897f7fec8d5d9a1203dbd09d0e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:43:19', '2025-03-21 22:43:19', '2026-03-21 22:43:19'),
('b2454c0c032745fb92d6ed0c2cf5cabc8941611b3f487fe7e0226674e16b0d45dfc8ab08dff79242', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:48:28', '2025-03-21 22:48:28', '2026-03-21 22:48:28'),
('b286f54eebb4c39b97e2622680dcf45cd49852139006ce52472c791788a2aea98931796299a44afc', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:00:32', '2025-03-15 21:00:32', '2026-03-15 21:00:32'),
('b2b05545b3e1664e90405c466ba302427a150c24cee4e1734b6c1cc3169fe62c72c35ae06ba14f8e', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:56', '2025-03-16 23:41:56', '2026-03-16 23:41:56'),
('b314060e44f81774f5b2bc1d3b3e3e185791adf4648db3a147c4d9462576ecd3c175e3ab67a3b223', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:41:12', '2025-03-14 23:41:12', '2026-03-14 23:41:12'),
('b348c6a61b1f4adc592c927fb044031fd161c191ae24a832afa980049d4a3a6f6166882e661c1e60', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:39:52', '2025-03-15 04:39:52', '2026-03-15 04:39:52'),
('b37f2a8e59a568ff578b7efb5e704ced7a90cdd1702903751d0844cb4525c89e0427b6807f252041', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:16:44', '2025-03-21 22:16:44', '2026-03-21 22:16:44'),
('b39e5c09d4c8e611c8088be3664e8539b8057871e85cdf0dc9d32e48cefdd5d3d09d69d3112e99d9', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:14:44', '2025-03-21 23:14:44', '2026-03-21 23:14:44'),
('b3f920aa48952333ceec880a8f5069974ceafaf9109c41cab635f8e5a41d5d96cecda79fc9563138', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:06:34', '2025-03-21 22:06:34', '2026-03-21 22:06:34'),
('b41073c8c284d1b6348e601194e414f1e325a22faa1c9e07ee5ee63b153ae6d92960e9027a49e381', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:43:56', '2025-03-15 04:43:56', '2026-03-15 04:43:56'),
('b42ba59652906cfc00b8543c63cbe6c5d9f8ca89f8483a01253745205d30f8f4e5fb4efe4af80269', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:27:31', '2025-03-21 22:27:32', '2026-03-21 22:27:31'),
('b42f5c1f25a40a5ee1fce37d1d2768dfad552423164115642ca9ec5094359133e863fca0fe4d307f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:05:30', '2025-03-16 23:05:30', '2026-03-16 23:05:30'),
('b4a10b54fb95dc3f1830506d832b425f236d0022370973455c4ad44b2a33a2604291fda9cf10721d', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:04:47', '2025-03-17 00:04:47', '2026-03-17 00:04:47'),
('b4d64e024f0f966f27b6802ed2512e6f854e82a944eb427ae5471290ba7626e64ee6e116f3b9855f', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:26:38', '2025-03-21 23:26:39', '2026-03-21 23:26:38'),
('b4e307e9d5babd627be13259cd2be5b55ee557928c58be7f96b3be1a82e37ddca03a6dfe33bcf584', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:52:26', '2025-03-16 22:52:26', '2026-03-16 22:52:26'),
('b4eef9c9d55914c4fba5c771aa298bb2e4dffcf3c0a4d5dbb55903628f9b4639af4800b57a3e3de4', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:40:51', '2025-03-16 23:40:51', '2026-03-16 23:40:51'),
('b5ee50edd65e1943fb5b4dd9154cc4d104c087e2bb7b206837a230d05b4d3c38ce282a17ef4ab953', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:26:35', '2025-03-21 22:26:35', '2026-03-21 22:26:35'),
('b5f7d7373a22b8bfa33ad97180cb43648f3413f201b8cfad3a8b4977ddb2415852682f15d706ffd6', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:52', '2025-03-21 22:42:52', '2026-03-21 22:42:52'),
('b605d7abd3b210a949bee2407acf381e5bbd6898f878e34daf0125b902e9ca3089ea882be9dbbb42', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:40:45', '2025-03-16 23:40:46', '2026-03-16 23:40:45'),
('b679f3d81c1dc38f725d9411bde0932b98cc717ceb32aa8c9704847a73e19ef7ae96f4d2bec4f897', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:25:56', '2025-03-15 22:25:56', '2026-03-15 22:25:56'),
('b6f800dcc66fcea9b6037465e20c3b61be133dd46f1eeda9dbf759b11a8f31db045d997de5c649b4', 1, 1, 'accessToken', '[]', 0, '2025-03-15 20:58:42', '2025-03-15 20:58:42', '2026-03-15 20:58:42'),
('b71530925c0e17fd76429e12352e8bb60e8bbc99b049e37f817166357eacb0e47a148ff550e47751', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:21:04', '2025-03-21 22:21:04', '2026-03-21 22:21:04'),
('b71d6fd889b1e39b716699187cbe0df2f1da3db456512c9d79fe02caad97f3bd1d62bde00c0dab83', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:37:44', '2025-03-14 23:37:44', '2026-03-14 23:37:44'),
('b76e0757eddaad97ed53364f94016db245beacc1a5cd146ffc2c7992249fc67f67c7b93cbf66b2ab', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:52:49', '2025-03-16 23:52:50', '2026-03-16 23:52:49'),
('b77317f18e37d16bc58f6e64b8a88d1332a4fca19e070ecc5c411fe126f13727c1752df91da79fed', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:18:37', '2025-03-15 03:18:37', '2026-03-15 03:18:37'),
('b7bb64194e3cb2dc883da50129d15582366bfcea5a7abe9abf9dd554db6268e35626da3349d61463', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:36:12', '2025-03-21 22:36:12', '2026-03-21 22:36:12'),
('b7e87316c1b2d7ffc173c2e4a78cf91e5b96872d25945dc1812009482f5f24e4dc8de383799f0dc8', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:51:04', '2025-03-21 22:51:04', '2026-03-21 22:51:04'),
('b82948fc733549c65613592d6294da2069b363747919e8433d98b82f5b4db010ba840b43216d529e', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:57:14', '2025-03-16 23:57:14', '2026-03-16 23:57:14'),
('b94f724dcb0a7c51fdf2380e7d36e7a29d5e2c1e1035474dfb61c6521c9860e34b0d34611e8e18fd', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:54:19', '2025-03-16 22:54:19', '2026-03-16 22:54:19'),
('b969f22af9bf72b7134e75712dd5412a26d54446e319d6e8a0d6680d2312f1cff8bee1c1fbc4b183', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:35:34', '2025-03-21 22:35:34', '2026-03-21 22:35:34'),
('b9777657c65b156af3a2845305a2faefd8db7be2a9633d701c6f5da7f7e5698133dd1619f8f19074', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:57:56', '2025-03-21 22:57:56', '2026-03-21 22:57:56'),
('badccef123836bb7b28f8963b1c07cd45b3dee46925c4e87b9a57d58e62859a99101b5b00a4df89b', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:26:19', '2025-03-15 22:26:19', '2026-03-15 22:26:19'),
('bb291806eabdd171821667512f58f1256050b2805a4982c788d5e007d1757020cc9a1a15becbe873', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:35:00', '2025-03-21 23:35:00', '2026-03-21 23:35:00'),
('bb63421abef05e74af0a96d60a20dde33f5b9b8b050696176020c928b174a89ddc2c4c2e92585e67', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:28:15', '2025-03-21 22:28:15', '2026-03-21 22:28:15'),
('bbd1115504f04022853ea932f7905e8abbfcef42dd0063bd13af17b858ea4253dfa51db7856ce06b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:18:16', '2025-03-21 23:18:16', '2026-03-21 23:18:16'),
('bbfab1e12918e15602463492eb0a2693e26308c5227d854aa0cd20d9b7d292214b9f278d4a21532a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:54:33', '2025-03-15 02:54:33', '2026-03-15 02:54:33'),
('bc14c77655b551e8069e50e89459d5c7ff39dd4b84834711a37c287d4cb1e0c940ecff481f268bb1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:48:57', '2025-03-21 23:48:57', '2026-03-21 23:48:57'),
('bc5d11404c768f96161b186a305d382c8f6a4f91dbab68cd72fb9df30cc85c5fc6e8c5745366ab0e', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:38:10', '2025-03-15 21:38:10', '2026-03-15 21:38:10'),
('bc6d65d88d8fcb4eb129120917ec47afeb2ab4f328182b4afd43a262c64f5fc6aab7e752bc9cb35b', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:13:37', '2025-03-15 22:13:37', '2026-03-15 22:13:37'),
('bc859e21bab3cdaec7c848cce4c33bed893e995e151191e6e3f8ce521ec9cf1396de11b2f8441f98', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:59:46', '2025-03-16 23:59:46', '2026-03-16 23:59:46'),
('bc85e2529131f67224b061c963de84b10c824a25ba997562f2d881ff5d238fe49f9a28f700e82ce5', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:31:48', '2025-03-16 23:31:48', '2026-03-16 23:31:48'),
('bce32a83d5d3f6a601388929da217aae28b6ba2baa0c3db06edd8314efb0d2f47a05aedf1033f526', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:43:30', '2025-03-21 23:43:30', '2026-03-21 23:43:30'),
('bce87d2904d880d12a3cf611de6fe067a44f32fe67661bc24c86a1da9170805fdc4925eb54f0515c', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:38:01', '2025-03-21 23:38:01', '2026-03-21 23:38:01'),
('bcf72d0e0e6a9b87f916f19fa2e4445a994d21ea89c3bd1a0287de2d5ce4e67c514e851c243eb5c1', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:38:21', '2025-03-21 23:38:21', '2026-03-21 23:38:21'),
('bd3c298782a39aca40ed6abd1e200ed58ec5503b528e552c51862e54fd150c410fdf1b841b04f650', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:15:19', '2025-03-15 03:15:19', '2026-03-15 03:15:19'),
('bd9776680371b5038ba489285e137cbadf268892d1b966c3eef8dc69366c87ffcb6bc30d415c2cea', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:29:20', '2025-03-15 04:29:20', '2026-03-15 04:29:20'),
('be37969f2f944dbb6eeb75c746340c8beb0ee33b01c67583708520a702be5d2a2df98dcb9d998be1', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:39:06', '2025-03-14 23:39:06', '2026-03-14 23:39:06'),
('be3ecdcd6f593d5775b78ffee225978512f8f8585923574396f98ab39ada97d632b8011353f9fcd5', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:26:18', '2025-03-15 21:26:18', '2026-03-15 21:26:18'),
('befa9e10ea364e412ac47e0ac56c3e6a7d4917275cde52e90e378945949bad6989685083dd99a520', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:13', '2025-03-21 22:42:13', '2026-03-21 22:42:13'),
('bf05aaac7e59a646bf00b5919cdcb6a4f42e40cd731aba68d093a98dac62f18f7d2d0e2ddcf62b37', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:24:48', '2025-03-15 22:24:48', '2026-03-15 22:24:48'),
('bf44ce02c42313a91027e9663d16066649136d251aaae3fff21e5cc3cce64d67bcf77d084a153841', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:17:28', '2025-03-16 23:17:28', '2026-03-16 23:17:28'),
('bfa1c83a30593b32820465ee28e3ad4e484388ba4588a50862886d23a2a3aaff5ea276d8e325c913', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:24:48', '2025-03-15 04:24:48', '2026-03-15 04:24:48'),
('bfb4a8bdd8c25be9fcf18711bb9a9c232db95b6ce62ada6e56a8a294c6b7c9f17c7bf6cfef560359', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:39:26', '2025-03-15 04:39:26', '2026-03-15 04:39:26'),
('c0c4bba3c82060d674afbbd5c5d439dc8dca77fa21aad60a97efda1a294a508ebc0e210dc45a49a8', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:03:24', '2025-03-15 22:03:24', '2026-03-15 22:03:24'),
('c0d06ccfb0ce6152b7cc27091e25f53f18dbea64295ccc8454e08149cd9017e767d311a1944bbe09', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:01:21', '2025-03-15 22:01:21', '2026-03-15 22:01:21'),
('c1460639726493eddf295bd88468db9faed15242a60027cf3dc92291f08536474dc21f953f8d939e', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:59:40', '2025-03-16 23:59:40', '2026-03-16 23:59:40'),
('c21891ef68ea253710f9df03bd6ca2868458b87907e241acdc96323a2f0660d385282b542885aee5', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:08:05', '2025-03-21 22:08:05', '2026-03-21 22:08:05'),
('c21c26b757c5c928ca5323b47c1b20cfdc1ebca0736a6983f9a4d5ab152a4ee083aee97655efe025', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:26:40', '2025-03-15 22:26:40', '2026-03-15 22:26:40'),
('c2310e18c00802f01b261402c163a7e6c10c6007c00e6f06c601d70ac130233ac6488668282ecb41', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:33:23', '2025-03-15 22:33:23', '2026-03-15 22:33:23'),
('c25e8b4bd6d7c61cee7106ae03f41076cd6a078deee376392197b14bc3cb1afcc68c4eb490cfbaca', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:48:45', '2025-03-16 23:48:45', '2026-03-16 23:48:45'),
('c296ced22558237d9afe520a4cb65a8d276054de18b85956cab7d775f4fea801fde141e1e5ad623a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:25:17', '2025-03-21 22:25:17', '2026-03-21 22:25:17'),
('c2c0c2fee0ad5058276a6fc5049f7b41575a77b4495a23d3b214f10e9c4dce8b584986d263ece7df', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:08:25', '2025-03-15 03:08:25', '2026-03-15 03:08:25'),
('c2c1de3da8161ae6c18174d1422c9e94104d84b15874cbb7918525a745f8048378e2eeb66202d047', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:51:44', '2025-03-15 22:51:44', '2026-03-15 22:51:44'),
('c3067965d87e07de8d9737920dc4aa393fa015f4ac8c7362c533a54c7cc096a8646857f530c42cef', 1, 1, 'accessToken', '[]', 0, '2025-03-18 22:15:43', '2025-03-18 22:15:43', '2026-03-18 22:15:43'),
('c3d4df175682fdbed6895aa8c9032c31154ae605e381fa4ad54d6eb2ec9ba0357a48af934eab5898', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:18:29', '2025-03-15 03:18:29', '2026-03-15 03:18:29'),
('c4276f9627756b07e0375c046257922be35fce36f999c94da0fb29eefb90545c3f064eaa3d0247b9', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:51:03', '2025-03-15 22:51:03', '2026-03-15 22:51:03'),
('c481e921c96432b0b16f486478492ca10bdbfa771db00085e3953540c3979159ed3de642ca452281', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:41:28', '2025-03-21 22:41:28', '2026-03-21 22:41:28'),
('c4c87cfdea0481226acde9438c5bcc7672a0997c8a9f366736f694f2be58519f0fa6bfe566ef7847', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:17:15', '2025-03-21 22:17:15', '2026-03-21 22:17:15'),
('c59671c3fdc777c512ce8483195fbfa3b41dd61720ea36dc86c4ee2d3f2ce8844fa9c90809fb030e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:46:20', '2025-03-21 23:46:20', '2026-03-21 23:46:20'),
('c5d01a19f02a18720581fd333b45e451d0d0dcb3ec627c532f7b715032126ae2fc94a348c53c5a91', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:06:48', '2025-03-21 22:06:48', '2026-03-21 22:06:48'),
('c6670501fbd1b0a5a4909f495622cb45d8bd162d0f02e591f5fd40f68b32fd6467d3514753e0a0ca', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:50:54', '2025-03-15 02:50:54', '2026-03-15 02:50:54'),
('c6a543772b846c394c5141997ba72bcfd59069508c912ec4d9e350b9e8914268f94c5483ea0ba56f', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:26:30', '2025-03-21 22:26:30', '2026-03-21 22:26:30'),
('c6f43b71aa9221eedf092a0c528805c2d12b0caf23d6fb2916d9d87c314e8707401d4475a900b8ff', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:58', '2025-03-21 22:05:58', '2026-03-21 22:05:58'),
('c72f04ab301b8198603322dfc91cce61075bd229ef2de0781cbf19ff9df20a3089e6d14d25fdcadd', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:23:36', '2025-03-21 22:23:36', '2026-03-21 22:23:36'),
('c76e96a7e59cff8785b17967fc15d12829cb7a92a9f6f1e2f26970f195a1852f1df4fac124f2acfa', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:33:02', '2025-03-15 04:33:02', '2026-03-15 04:33:02'),
('c781a140354b2da1904d91c069fc35ad1ef32df0d25b744f2223b8345596c3492f0906b1b5a950f8', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:26:40', '2025-03-15 22:26:40', '2026-03-15 22:26:40'),
('c7e56e5c781ca5e97130627267c7a1cea91261c93c1af09b09fa6f64e592a41f5c61fc97c1520e4b', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:46:29', '2025-03-21 22:46:29', '2026-03-21 22:46:29'),
('c834fb8b061d1f3619814b996742accba074b5532ebe096ebfa5b9f11fae7e071efd97e7102d1db1', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:45:23', '2025-03-21 23:45:23', '2026-03-21 23:45:23'),
('c845e1b084cde44f3aaf1a042dfe9e532a11d6750907114dafff4a4ac4edeb2bcc9ee1a1e97a9dac', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:44:40', '2025-03-21 22:44:40', '2026-03-21 22:44:40'),
('c93ef97d13b1245d70c44ae45b09f50b16ecd489b119e083f4b0cdd5eadc8b6b6a14ba0a699e998f', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:02:00', '2025-03-17 00:02:00', '2026-03-17 00:02:00'),
('c944ce22673c7e2dc2126f36fada21c787f129a6e0b3edef1419ff86f28c99062379249c53c8f5e1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:20:32', '2025-03-21 23:20:32', '2026-03-21 23:20:32'),
('c9beca4266748b9f52f19e306e2f71591e970cf30177dcdb00efa7773e33f946088f18375ba5495e', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:52:22', '2025-03-15 21:52:22', '2026-03-15 21:52:22'),
('caad2557a1064d4b55521c44a594c924222df22504eb28c27bd0b8c1d2e259830b4a6f075d1e0323', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:58:28', '2025-03-16 23:58:28', '2026-03-16 23:58:28'),
('cbe0e2d47c3f38779f58279aeb5bdfbfce194337ee7b2664704407ce559093cd9f331daea328f02d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:43:26', '2025-03-21 22:43:26', '2026-03-21 22:43:26'),
('cc67728059b323c1930ec17d3003b1974b5575c2e46b6ec6270e9874669932c0132c3cf32380d988', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:52:32', '2025-03-21 23:52:32', '2026-03-21 23:52:32'),
('cc6bd58dfeedaad6d80f981eb3c9da682f0c41ec4388cb7d706d0f55b23b03921093a55ecb2d2758', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:13:57', '2025-03-16 23:13:57', '2026-03-16 23:13:57'),
('ce002334ab5ef0de239f742c07291fc5099472cdadcc10d0cd5569b66eaa209f72e4a506c02f36b4', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:44:21', '2025-03-21 23:44:21', '2026-03-21 23:44:21'),
('ceef303b56f1de03c4e648b0c8736951d47b96ffdb1fde08e7eda0d0eeae324cccc8e1b9d3c4b1a8', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:31:04', '2025-03-16 23:31:04', '2026-03-16 23:31:04'),
('cf41117ce230772b0c60760e569e9b0c6f49c2ac38269921df7074eda32ef3a51239368713c48632', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:02:55', '2025-03-17 00:02:55', '2026-03-17 00:02:55'),
('cf4fc202e1b3542924b9f5a699078cb92bf1c227d54ce7f9c658a385782953a97927add4f809de8d', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:28:35', '2025-03-21 23:28:35', '2026-03-21 23:28:35'),
('cfa5834b2400fdc032967ccb9e253a827bdd7582d4ddbc0c7af0edbe6c2732e03d8cfdb4ef1d3d2f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:51', '2025-03-16 23:41:51', '2026-03-16 23:41:51'),
('d050d243c99038c4e46ccb7ce36e91200e7a8be2dfa6a1acddcd97ea3837af02fd81f3f5607b494b', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:53:20', '2025-03-16 22:53:20', '2026-03-16 22:53:20'),
('d09f9c4313a15de1cddd3e34968c4113c1b84a875fc89b7d6b24627057d67628d5a4734349995ce6', 1, 1, 'accessToken', '[]', 0, '2025-03-15 05:04:36', '2025-03-15 05:04:36', '2026-03-15 05:04:36'),
('d0dcdcf8c6af53eb06262b75ca784aeda6c514b5811af3cd136d491d7a4778512bef0a32dfc14341', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:02:45', '2025-03-15 04:02:45', '2026-03-15 04:02:45'),
('d1f260752e97fcc65b9b6efae2e01e8aa33ba605d6028148db66ef5e2d3930cdb9cf1251ca53764d', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:33:15', '2025-03-21 23:33:15', '2026-03-21 23:33:15'),
('d203011042b4b04e588a716a79cc2eee061e3b3d2065e9b0a4d601499600a5f196bb7829dc776d41', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:27:06', '2025-03-21 22:27:06', '2026-03-21 22:27:06'),
('d204c7315dba14cb6950a285135fc37a79bf9eef5932035664b8afc4e68ae2b91db8560df4dcf089', 2, 1, 'accessToken', '[]', 0, '2025-03-16 00:35:46', '2025-03-16 00:35:46', '2026-03-16 00:35:46'),
('d20fec30c595a708771ecfc50de444ca2fbbc2401561bad0b0cd9c6c95d8f1e201b7e553c2892173', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:57:51', '2025-03-21 22:57:51', '2026-03-21 22:57:51'),
('d2298ca53a8ecef45812968ff5a0cd32f2eba47445bd18249a01ae230f1eec329a7a88fe687a139f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:40:08', '2025-03-16 23:40:08', '2026-03-16 23:40:08'),
('d23b07e98a6d9a2404e870c7c1f3f4fb44def1ecb010ce61f053855f423895f4fcc711b7d847c61a', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:14:32', '2025-03-21 23:14:32', '2026-03-21 23:14:32'),
('d2d478e9ab7e4f83ec8a346d16b8f5f004e6f4ceeb7a1272deda0b4fcf264d8fc7559e772b04d5e9', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:51:49', '2025-03-21 23:51:49', '2026-03-21 23:51:49'),
('d2d8fa508f714409da9772bea537c3c22a4f606644bbb5966d742a91bd92cd9253a55c1a8bf1382b', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:38:29', '2025-03-14 23:38:29', '2026-03-14 23:38:29'),
('d3541f7a89ffbe0f7cd6311976726674b43c84c257c9e1e49501ca17e12371b78ac9a6951e465464', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:35:00', '2025-03-15 04:35:00', '2026-03-15 04:35:00'),
('d39fd9aecbe81877008efd2fd2b8a862d3bce3925eb93c5aeea9bc54a83842a64dddbf579e0077c1', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:05:34', '2025-03-21 22:05:34', '2026-03-21 22:05:34'),
('d3a4066b262478bee1cff7b6b8de4f39f11bb742fbd758c8432c7793ee8d61f214dcca3e5822ce9b', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:44:21', '2025-03-21 23:44:21', '2026-03-21 23:44:21'),
('d3b12632c674200b9819de62c094ff3bc7d941c4e23a9b3bfe21f0dea6c9e901c227955c9f37b7ef', 1, 1, 'accessToken', '[]', 0, '2025-03-15 23:41:07', '2025-03-15 23:41:07', '2026-03-15 23:41:07'),
('d3fe8a7c7f5c9f22244bec3acba3b1b89dc278b4563915ee56c768982ec82078b1b47eeffd5259a8', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:26:20', '2025-03-15 22:26:20', '2026-03-15 22:26:20'),
('d4174a79ced53b88df6b3cd82b94496937150232ddfa0435c3fe6b8cb35274dc249f616b7e79295c', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:15:51', '2025-03-15 22:15:51', '2026-03-15 22:15:51'),
('d41e5fa76070c1d759be791c48c08cea910fde33914e1ac7aaedc314e324a403132637b0ed52a0f0', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:52:52', '2025-03-15 22:52:52', '2026-03-15 22:52:52'),
('d50e0d4a47cc4100089cc60a31a0d83e16666c29186fa822938157221a553b55c980c4b31c03b769', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:29:03', '2025-03-15 04:29:03', '2026-03-15 04:29:03'),
('d50f474da21935f09accd5cb1b71f4528c819f8919eee9d35adeb72b94f9f6961478838aad1474e2', 1, 1, 'accessToken', '[]', 0, '2025-03-15 05:04:20', '2025-03-15 05:04:20', '2026-03-15 05:04:20'),
('d5345451996f25b49614119ad88bcd66f4342507c5666995a263c44f4372f4f84063e6a4c645b7f9', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:57:32', '2025-03-15 02:57:32', '2026-03-15 02:57:32'),
('d58a2564e6698b02887ecd08723ab49c6184fd515985545f15a9f850c29122d4a748caa6fa8a4cd5', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:37', '2025-03-16 23:41:37', '2026-03-16 23:41:37'),
('d597ab74face4adccb7c5b36bc2ac1b06ffbb0fe2c2ce45fd98da15a7e4c2273bae97c429fd2dbdd', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:35:28', '2025-03-21 23:35:28', '2026-03-21 23:35:28'),
('d62658d06702b6d9f429b712d95eadc030ab5bf01fc7e2283f7a04f84c2deae16d7e7670bca437cd', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:03:07', '2025-03-16 23:03:07', '2026-03-16 23:03:07'),
('d63cf97161cb03f1c329ba9ce9cec2c8a0c13589cf6dda8a7a142d58bc7669d4e3dd6adfb43053e4', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:34:39', '2025-03-15 04:34:39', '2026-03-15 04:34:39'),
('d70928345cdca7e71290374da860758a816ff216814afc54cd61861762913169deda8d0a71a254ba', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:56:05', '2025-03-15 04:56:06', '2026-03-15 04:56:05'),
('d74fd9ed81f463d7a3ca0475dafd35a82386ad29d6c16ce017d81b5aaf17a72962bdbeb066a741cb', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:30:38', '2025-03-21 22:30:38', '2026-03-21 22:30:38'),
('d76b8778f5f91dae968450f5aa36defe0979618af4dafbd20dd762ab83880c80bd00501918a7c2c9', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:24:53', '2025-03-21 23:24:53', '2026-03-21 23:24:53'),
('d79ceeccb846d809535f5cda379a02721cc4bc8f95a11fe1f341ec551f97583ef5b28d18e9d3853d', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:53:34', '2025-03-21 23:53:34', '2026-03-21 23:53:34'),
('d8e2a411f8049037af02e5e9a56eb23d65877ec1bc70eb00302d380a79cf0aba908d83172b22db6e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:35', '2025-03-21 22:32:35', '2026-03-21 22:32:35'),
('d95503e73d13971eec73a17f77f79621587d3dac2c9809a510a2468571007e76a9a83fc7f5637d9d', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:26:38', '2025-03-21 23:26:38', '2026-03-21 23:26:38'),
('d9e796f72baa2d79f6bf6f413e8b66ff02b4681568fbdd5c9d04b634a44131a7ac90a4412dce370a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:57:54', '2025-03-21 22:57:54', '2026-03-21 22:57:54'),
('da1e4f643b46026af9ac5c0e38ede2ae41a9019e7203454b978285a2e2a404d5deec6addaf13c9bc', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:41:22', '2025-03-21 22:41:22', '2026-03-21 22:41:22'),
('da8697e6d2e4c73cd200a2637532a6e59fe2aabd75dc5902f3cd579120221f0e1d9b300d9950e308', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:40:08', '2025-03-15 22:40:08', '2026-03-15 22:40:08'),
('daa1a13e3084a90f8218908b9832de7afc0ed23eb20ec2411a9454cbf2650459336d2c39311e59c3', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:04:16', '2025-03-16 23:04:16', '2026-03-16 23:04:16'),
('daa2f92ad8e86c2ad4632bda261421a08fa29e5bf156238a5d576471d1d6ad791fc94ac8002eee3d', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:08:40', '2025-03-15 03:08:40', '2026-03-15 03:08:40'),
('daf6be49453d639f1ef3611d5b043bc0b801427b71b06ab41d2c710e90b6d8b80387d58a79735841', 1, 1, 'accessToken', '[]', 0, '2025-03-15 23:40:10', '2025-03-15 23:40:11', '2026-03-15 23:40:10'),
('db673bad138f31644ad3212fa7c93d9fdecb7833a69093ad85900e2f6dda01c7858bb335215b951f', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:41:33', '2025-03-16 23:41:33', '2026-03-16 23:41:33'),
('dc0d7e9a88eef6c63c59a4c331b405159f589335d48c04f447c33e1ae4fb0e96d27738e300061984', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:52:41', '2025-03-16 23:52:41', '2026-03-16 23:52:41'),
('dcb585d8ab970d605d3b2f4848704e56e2d817e32bd7808ba2998072744fea8d20b9935d394a5d97', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:57:32', '2025-03-16 23:57:32', '2026-03-16 23:57:32'),
('dda7e22fce120356ef003e9f28ac9af574053959606985b2245f404897af427407baf984599ce7e9', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:42:56', '2025-03-16 23:42:56', '2026-03-16 23:42:56'),
('ddfba3d263f62f7bcc1065648664e8214721ea82807187fa928c6eb8ffb07a5ca10d4af2d4a9ad0a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:08:52', '2025-03-21 23:08:52', '2026-03-21 23:08:52'),
('de6fab48f61989700540cd91368cdc33577fb18dda34e1d921e1a63ce0069dacb36c5d2a6426eced', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:48:57', '2025-03-21 23:48:57', '2026-03-21 23:48:57'),
('de8b957e2281b5300050e65759569fb6ea4d96d891dae96f98a16bc52f014b5d655217579d21f227', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:03:24', '2025-03-15 22:03:24', '2026-03-15 22:03:24'),
('deb3511a5a2852d113ecca10b339f80a6b74dc620b44f7999ef401f3041aba2a5f612fc954da2708', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:52:54', '2025-03-15 21:52:54', '2026-03-15 21:52:54'),
('dee0b4c9c9bb57280d4b5d6f6e6d6eb9d61edc7408cd4fa5bbcd51d6a7fe31a3088581821798902d', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:25:49', '2025-03-15 04:25:49', '2026-03-15 04:25:49'),
('df31d53d95eb893dcaa62ba418e731ffcecf866df479cfee7e3a902d189e38f50bdb0fc365cda40c', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:41:39', '2025-03-21 22:41:40', '2026-03-21 22:41:39'),
('df927ae346d473fb6f9c48ecd8fa77f71613e54dfd98740ddfb3cfeb38547f7b6ce4b6660f140405', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:40', '2025-03-21 22:32:40', '2026-03-21 22:32:40'),
('e04f513ec68d389bfc2e67a427c490e67b33f1292a95a53a6e4ec75c806e3eb1f8aa77b832dbfa10', 2, 1, 'accessToken', '[]', 0, '2025-03-16 00:35:41', '2025-03-16 00:35:41', '2026-03-16 00:35:41'),
('e126908b5dd4da7cfc298e2d284394ebae5cbff12e3b81ab1f6205871c3294fcc61944221f25ea4d', 2, 1, 'accessToken', '[]', 0, '2025-03-16 00:40:01', '2025-03-16 00:40:01', '2026-03-16 00:40:01'),
('e1818a6dc812bd39a295b7641ae5dd768414b556ead6750f2833b7c5f01f3a40e4e34564b2dbfca9', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:51:00', '2025-03-21 23:51:00', '2026-03-21 23:51:00'),
('e1ae0e00386dd9f456e85d38677abdacafccf46bee5911dc3ba851a32cc7616cc827d8d0f6335f1d', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:15:45', '2025-03-21 22:15:45', '2026-03-21 22:15:45'),
('e1c57d6667cd0a85c44be980a16e5701a7015c9545cec90336b91610e2321f83678fb0e6bb757052', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:55:40', '2025-03-16 23:55:40', '2026-03-16 23:55:40'),
('e25eaf2a78e5ccd48a0024026078c854b4916dccee4c0bd5829dab84f00df233877d9eb68cb34468', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:04:05', '2025-03-15 22:04:05', '2026-03-15 22:04:05'),
('e27403860d61cff4b9d793d96db5ddf5db4da7f333f1e7a6be2a6c20bf7369db68235f3255a6b165', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:25:11', '2025-03-15 04:25:11', '2026-03-15 04:25:11'),
('e27e35884820bb919444f333e74a51dad5a6e72f5ce231a5fbd6024fbaca31fd2a11142f1c2d88fd', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:24:37', '2025-03-21 22:24:37', '2026-03-21 22:24:37'),
('e2b056e6effbd359f12179150b985db20202452f631b90ea686b4cf8b2761a45a133a7fe75b872e8', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:40:46', '2025-03-21 23:40:46', '2026-03-21 23:40:46'),
('e37c3d019840a8750c8ec3b4cbf52dd04871b65cf9b31cf2129aca3c68f491ec1786b54679f2fb63', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:57:03', '2025-03-16 23:57:03', '2026-03-16 23:57:03'),
('e382bea54613892ad1e6ece14f8208106ce2b2e10c63d5e48da2328598bce3aaef12cfebc8bcbe1e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:14:49', '2025-03-21 23:14:49', '2026-03-21 23:14:49'),
('e3b0a6dc587ee621aa90f83dbc5c9b138cda3b8f7e88158bdf6b692e1d46c2d3e9cc81ae3947c7fc', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:03:11', '2025-03-15 21:03:11', '2026-03-15 21:03:11'),
('e3dcde8bbdf31ca365ff0b7d7bbd06e140ce21bf39361effcb4d776dd914e836436c943c88abbf74', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:27:48', '2025-03-15 04:27:48', '2026-03-15 04:27:48'),
('e422ca45ca2a9cd5320f76e0806e9fe3436eb483adfbfe441533ba8fc9c5490981ad0d4f912a4929', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:31:41', '2025-03-15 03:31:41', '2026-03-15 03:31:41'),
('e46f6bcd67fc6aac84112516315827db57eb94f55259b3a53c84ab64cac89dd051bff558bf304ec7', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:16:14', '2025-03-21 23:16:14', '2026-03-21 23:16:14'),
('e4e31135d3146c5cb81bd9911e5c120d5d8e60d4ae6f8d3180875737c0f8b3b1c5863f5a9b30cb6f', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:38:25', '2025-03-15 22:38:25', '2026-03-15 22:38:25'),
('e500ae194fddf0c432638dc2cb5613c5740e28f5fb927ffe2d15422a391790897f74efaad9d34ffe', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:49:14', '2025-03-21 22:49:14', '2026-03-21 22:49:14'),
('e6212da5ff706ffb3a8c5dfcd4f44506dbc138f90224c405728a0b71710674cd1c6eecd271c89707', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:28:51', '2025-03-15 04:28:51', '2026-03-15 04:28:51'),
('e69989726253cf4fe5b001c290f60a996f8dac405684ac3314f34a1f91e4d3d848b4deefb7a18d43', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:00:52', '2025-03-15 04:00:52', '2026-03-15 04:00:52'),
('e77b0e6c459af8246f081740d7e7b46a02e95a0093c3f4e0156d855269585fba4815d6599b4b2cda', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:44:35', '2025-03-21 22:44:35', '2026-03-21 22:44:35'),
('e828df12231eec0c39c267f03dd20c930f1896628fa2c6f628840db8f5151437d53c954313606af2', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:41:50', '2025-03-16 22:41:50', '2026-03-16 22:41:50'),
('e897a2510f6aae06e0290cce24984d89440a0747b58d029c74ed2f313b5a14f455f2e62f51791f04', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:16:57', '2025-03-16 23:16:57', '2026-03-16 23:16:57'),
('e8f79fa23a0d9b57c1653df26f8c4d8bebed842c96322b4926fe6a17fb1ca950984a369aee2ec464', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:38:01', '2025-03-21 23:38:01', '2026-03-21 23:38:01'),
('e8f8d9a9dd7e4715b72d6797a8153557c08e52e1820a6ae9ceb722a44adbcee85149e4fabf97aaa4', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:35:28', '2025-03-21 23:35:28', '2026-03-21 23:35:28'),
('e9a99a55847fe957d06f6637eea929cfeaedaa5ef60d22c4e7388bb723f34f287b24f0bf89a58383', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:59:41', '2025-03-21 23:59:41', '2026-03-21 23:59:41'),
('ea122a2282e640f41e37fabc563d881af2f1d1da2ce5b8b499c7e698ee34f6bb0bd3385f03da2a91', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:53:52', '2025-03-15 22:53:52', '2026-03-15 22:53:52'),
('ea99a654c432337ca8e7202c72789f09ab6f22381fe5756873c9e8922fc540c718a4828cbe967bee', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:11:38', '2025-03-15 03:11:38', '2026-03-15 03:11:38'),
('eaa0caf26b8fc1889fd9914d7418e186bcadbd55725f5831c4155319065955502780b43eb569ff5f', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:57', '2025-03-21 22:32:57', '2026-03-21 22:32:57'),
('eabb274dca3e74b83540df8af0f05ed3022daffa7a27652cac7347bfd11ff6f0d5d862d93cfc4243', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:24:43', '2025-03-21 22:24:43', '2026-03-21 22:24:43'),
('eb0c267a7729a244f13f312ce9ca29fc1a87595d80541485f4a775ba567fa9a6112ab9e231f99333', 1, 1, 'authToken', '[]', 0, '2025-03-18 22:15:43', '2025-03-18 22:15:43', '2026-03-18 22:15:43'),
('eb37ed0eebbf6f48bc002c1bff031b5168400a21534bb52e4d2953abef0b0891ac0d8c83385c2e5b', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:01:40', '2025-03-15 03:01:40', '2026-03-15 03:01:40'),
('eb5cbabebce3ad587dd560676c8007338ac3c2a9c77b57681840f91e1a4f7715af2fad469cbcfc5c', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:31', '2025-03-21 22:42:31', '2026-03-21 22:42:31'),
('eb66723c5fdff7b4769e884e59382edbb52a7284fc4a2feb8e9a0ec2dc13a162f123854e5fb61454', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:01:53', '2025-03-15 03:01:53', '2026-03-15 03:01:53'),
('eb7da8fb087c2741b21768c6a517167a466617691a4c87e9147f54396169551c09ace15837430f15', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:28:30', '2025-03-21 23:28:30', '2026-03-21 23:28:30'),
('ec3f6ba86b2b11cfb85665a39461e01b29dcb7e1a57e6f542692dfd4d91f7ac090f88882d44ec5a7', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:37:42', '2025-03-15 21:37:42', '2026-03-15 21:37:42'),
('ec68415f59c93fe33c3c329b4091d3c5780313caf14b8dc46f1a7e6ec777f89abb2baf59c3bd5985', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:26:36', '2025-03-15 03:26:36', '2026-03-15 03:26:36'),
('eca5137735aaad1e283ee8e177e5ec3fa943c07bd21d0dc7d1eb34a09d2140887efab9aa61e38b48', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:15:56', '2025-03-21 22:15:56', '2026-03-21 22:15:56'),
('ecf784979187d215303ec1ecf112ce1324750a7f159022cd682d96f7036630ff9d31a10c10015c52', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:20:12', '2025-03-21 23:20:12', '2026-03-21 23:20:12'),
('ed5234e9b5fdbf6359b053c1129131de82103bc53af64f4660f6f2db2dc360c3bdc39a62ebfad070', 1, 1, 'accessToken', '[]', 0, '2025-03-15 22:38:52', '2025-03-15 22:38:52', '2026-03-15 22:38:52'),
('eda76da2ef9600ac20e3b4d66f3443ea39de96831525f2a6fa347f5b371147750eb4dd71d9c05632', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:37:43', '2025-03-15 04:37:43', '2026-03-15 04:37:43'),
('edd91e0f6d2a02c2cd147613c142b5d4742ebbf5c845978c4f710d067b1ef34c529d9f828fbbac8f', 1, 1, 'accessToken', '[]', 0, '2025-03-14 23:37:49', '2025-03-14 23:37:49', '2026-03-14 23:37:49'),
('ee95f3926fadc3306138c5e5503904eb55d76b439ece82d3585ad42067b3bb8cc69ecd0a7babe075', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:57:11', '2025-03-15 22:57:11', '2026-03-15 22:57:11'),
('ef0b3c78cc23d51560dc71db9e01a172ed0222b7b2b1bc6466e4bd45971c977d438257b1f184e7d4', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:47', '2025-03-21 22:42:47', '2026-03-21 22:42:47'),
('f01b42be672e38f7faee46843edcad33a181cd9767162abc471997434ffa1fa3dbe5897c47e64bdc', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:51:38', '2025-03-21 22:51:38', '2026-03-21 22:51:38'),
('f1a082a7de3d8e53f6fc9502c70cf090d42cfbece73f1c78343075651f0ec9cca69b4e37c6ac076d', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:37:16', '2025-03-21 23:37:16', '2026-03-21 23:37:16'),
('f229211edaba1cb8365f000605549d2c2eac0d272f335810e1fbfded4438c911eafc539187746cab', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:28:56', '2025-03-15 04:28:56', '2026-03-15 04:28:56'),
('f2983a9fd51d1e4f3bda9de4055fac709df51e9655f5ef33edd7a8df2c0a90397a6b26166a551c74', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:42:29', '2025-03-21 22:42:29', '2026-03-21 22:42:29'),
('f2a47a966b3b4dbba751e56224eb57ec2efee4d349c4863c2c2394c2178f52741531676f19952d4e', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:40:23', '2025-03-15 04:40:23', '2026-03-15 04:40:23'),
('f2d6847bc1515fe94d0b6c4482c42cfc76c3fc3c33b4b29893346691bf4a0c2bb536a8e5839618c1', 1, 1, 'accessToken', '[]', 0, '2025-03-15 21:38:22', '2025-03-15 21:38:22', '2026-03-15 21:38:22'),
('f2e3677c4a829317c23f91aba60c141cfdc6181df943bee3bb40d074a593de217441ecd02e2a3f71', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:50:09', '2025-03-16 22:50:09', '2026-03-16 22:50:09'),
('f3133664d8d0284fe022ebb08a1c1b71dda2cbabc1c3b567ebc1f811b721f5406fd4e4db30fcd623', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:40:18', '2025-03-15 04:40:18', '2026-03-15 04:40:18'),
('f3c488978601d642c20c3862221b85af7776a01f6d4af6dcb09dfe5b311110059b2c712865065733', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:53:46', '2025-03-15 02:53:46', '2026-03-15 02:53:46'),
('f4059b0dfd3d5c81fbc9433cab0a1bb42db77ee06a6358014c93372da37b76c47654a8a2824197cb', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:25:39', '2025-03-21 22:25:39', '2026-03-21 22:25:39'),
('f42e9e68fea9997e39cacd65b8290d93f7b052a33022b658bcc6f4e26d8dca576cc8e9da0497549e', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:44:49', '2025-03-21 22:44:49', '2026-03-21 22:44:49'),
('f43e2e8ace338aa2c91cb14f2e314b410b6b9f89e562b35136395f90050a60ec6b51ba0719522049', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:23:54', '2025-03-15 04:23:54', '2026-03-15 04:23:54'),
('f4514824c7d0feb3a730d9e86b68e0ef80d49b7647a553b5952930211ad6531edfde8f70463246dd', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:21:19', '2025-03-16 23:21:19', '2026-03-16 23:21:19'),
('f4888e01724e8d647b91e896d46a043bc23e552a1cef13a7b3c18a34d9f87ca5467165ccc323b47a', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:51:23', '2025-03-15 22:51:23', '2026-03-15 22:51:23'),
('f4d225f98ac9910a57e0f753672d93bb0d0aa40109aedf2f407a983a77c52c67f3d837c040b7051f', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:30:34', '2025-03-15 04:30:34', '2026-03-15 04:30:34'),
('f50a3b7868a4a6e4a133a2932508110a1f46e2a97ec4171923d01649fb0c781ee9254dcb4ef75822', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:35:47', '2025-03-15 04:35:47', '2026-03-15 04:35:47'),
('f5390e65e024edd0acfcbf4afeafce3fd6748dc2e1291b32543a2cee400ad7c2bf3b0e71c8383435', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:53:10', '2025-03-16 22:53:10', '2026-03-16 22:53:10'),
('f5a5e6eb8dc4f2e3eef99a4a758b2b9da8d122e90b9356d89aae52910752cccf345d0a0b4a01d953', 1, 1, 'authToken', '[]', 0, '2025-03-17 00:40:40', '2025-03-17 00:40:40', '2026-03-17 00:40:40'),
('f5d2e4d13027735b566b633fc7074da92cd9ccc620d01c61f5a3e6610958377d3315d7fd97d9c2e5', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:20', '2025-03-21 22:32:20', '2026-03-21 22:32:20'),
('f605774e464fc7ccb1ca1ea9b37dfe036202748527a3b1acf66c885346dbb7b611dbec6e2ca29d97', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:47:03', '2025-03-21 22:47:03', '2026-03-21 22:47:03'),
('f659f746470e9774c011c7178f14636e5af3614af4f48ed6a76db8d9de078e38b404123d617a7ab1', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:03:40', '2025-03-17 00:03:40', '2026-03-17 00:03:40'),
('f710fd8677e404c5590ee4056b015de832c7c37974e80895707594eda45f1d9fe623491e170b87fc', 1, 1, 'authToken', '[]', 0, '2025-03-21 23:48:53', '2025-03-21 23:48:53', '2026-03-21 23:48:53'),
('f7dbd6f98963c467c2301bcd2fb0ec2c88baee1a589116cb300fba30ec7d956d3de0700e363b1138', 2, 1, 'accessToken', '[]', 0, '2025-03-21 23:35:47', '2025-03-21 23:35:47', '2026-03-21 23:35:47'),
('f8790a15c756dec3f7759d3ab3353aa419c892947b6d0ceadc3a8f21574daff968c94f14f20d31db', 2, 1, 'authToken', '[]', 0, '2025-03-21 23:28:35', '2025-03-21 23:28:35', '2026-03-21 23:28:35'),
('f898d91cf4b9287087e24e7e73f227699d4b546183ac8481b7553cce018059fb6f86dca43a3437a0', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:32:28', '2025-03-21 22:32:28', '2026-03-21 22:32:28'),
('f8a1deb30db0b773c6e832f76f95b5a1f5db293732c35074d847faa64018769072b1baf00120bfce', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:43:47', '2025-03-15 04:43:48', '2026-03-15 04:43:47'),
('f8d02a9d9ec7bfa46cb4a486492e7fa17318aacb5f090128178cc15f7c940f3b0b983573d9d2a005', 1, 1, 'accessToken', '[]', 0, '2025-03-15 03:27:44', '2025-03-15 03:27:44', '2026-03-15 03:27:44'),
('f97cb5a1d101696912aab786d3ef34b1ba5d37a0d86a56fad26b6f4fa17b2f19f30991c44a708a1a', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:41:06', '2025-03-21 22:41:06', '2026-03-21 22:41:06'),
('f994f541d0b790af0361c2dd26cbccf5255e6111dfca9c4c84f815006fb6f9303b76407f29f189a8', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:18:39', '2025-03-15 04:18:39', '2026-03-15 04:18:39'),
('f9c07b276cd70113f34eb5c06e8a8bf27fa6cc7ba277db0ba6a253ed41555c863234c64adecb5409', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:25:55', '2025-03-15 22:25:55', '2026-03-15 22:25:55'),
('fa5a7ebe8870fbd654291bc89ade93958ad2be355389d30e75dccfddf9a937ea54aed687d17b1f10', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:54:43', '2025-03-16 23:54:43', '2026-03-16 23:54:43'),
('fa6f665afccd7281ed7cf21d0f6f0b079428db79dbd20bc65a9544ab8915e66a937c2226e6cc11af', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:11:28', '2025-03-21 22:11:28', '2026-03-21 22:11:28'),
('fa78c57df850db45395e7954e36298d1b4b23629be0b334108147a2298bd4b475481b599354555b2', 1, 1, 'accessToken', '[]', 0, '2025-03-21 23:46:06', '2025-03-21 23:46:06', '2026-03-21 23:46:06');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('fa9368881815a6eac22d5bc58589261b14353d50c70c4212b636c23cd270ab861e53ef84c5a6666a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:35:17', '2025-03-15 04:35:17', '2026-03-15 04:35:17'),
('fb0629095c0f8ce3187539bab3a7f23a2fd6a0906c8e44cb589116aaccfb1e5df618f0be50c191ef', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:31:25', '2025-03-21 22:31:25', '2026-03-21 22:31:25'),
('fb62e4357c44abcc5257ad9df6b21eaa10ba99a214c84fe89bbbfd031f0b267e6680d087d235f878', 2, 1, 'accessToken', '[]', 0, '2025-03-15 21:40:00', '2025-03-15 21:40:00', '2026-03-15 21:40:00'),
('fbb399b85f9b7520ff97eb391b4a7cf9846fede1baac5464e7cae6972fe82f3b1c078d342acd5f9c', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:59:04', '2025-03-16 23:59:04', '2026-03-16 23:59:04'),
('fc1c270c7d23442e8bc3106a594d11f33c29bacd1069762248b9d371f5ac12a1721af0bf3d2eb34c', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:27:04', '2025-03-15 04:27:04', '2026-03-15 04:27:04'),
('fca4c9e4fad88e6fdb4afd646988e0b8153daba07fffc477ba1459e562beb707be5bfb7700dc9bba', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:07:54', '2025-03-21 22:07:54', '2026-03-21 22:07:54'),
('fcbab47a919512832ed728db70bc36945fa866634667855c2ccb772df7868e6b1f0b674699dda20d', 1, 1, 'accessToken', '[]', 0, '2025-03-16 22:39:13', '2025-03-16 22:39:13', '2026-03-16 22:39:13'),
('fce2b6641346e0e16140bbb5d54458d0a5fa67a88038538e6ea86f1f9e423befd4688caf2cef37fa', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:16:11', '2025-03-21 22:16:11', '2026-03-21 22:16:11'),
('fcedd6a3548a29a2446f76c6e8d26b1a9d93ae71199db96c7db31c3709110a33e850e5c9e02554af', 1, 1, 'accessToken', '[]', 0, '2025-03-17 00:02:41', '2025-03-17 00:02:41', '2026-03-17 00:02:41'),
('fd68ac053236d608fa063a3db93a13cec505ac47a8f5f509a6a5ec471a96b6d328bf8d1c4f152edb', 1, 1, 'accessToken', '[]', 0, '2025-03-16 23:06:06', '2025-03-16 23:06:06', '2026-03-16 23:06:06'),
('fdb90885c8170eaa40d678f6f22555719d89cc54c312e0822eeda918d9b0c06fd0e5ff7f710975cb', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:39:02', '2025-03-15 04:39:02', '2026-03-15 04:39:02'),
('fde969a3e6d6a179ac60f98a53f5ca758a700cd96a5b42cb534eb0db1d4759612fa4e71e264e3b31', 2, 1, 'authToken', '[]', 0, '2025-03-16 00:38:43', '2025-03-16 00:38:43', '2026-03-16 00:38:43'),
('fe4bdc6e97268b109454fd4d33dc3f8052d4742ff64fd8fbd60b4589d68bace01e22b93950f52a17', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:56:19', '2025-03-15 22:56:19', '2026-03-15 22:56:19'),
('fe6f23f5109ad9a8815cf73787410ebe5644b06983d5e9bd0c5f05230c6b7786c0695529a1bd406c', 1, 1, 'accessToken', '[]', 0, '2025-03-21 22:08:25', '2025-03-21 22:08:25', '2026-03-21 22:08:25'),
('fe78a27cf162ff0fc379b2f4e53a1a5e0175ea2ea245739cb74eafba7747590a1cc146949709044e', 2, 1, 'accessToken', '[]', 0, '2025-03-15 22:48:25', '2025-03-15 22:48:25', '2026-03-15 22:48:25'),
('fec3eb57da24f23c85c43b73a0e460cf5a38567a0d79165799d24556889d4c14d0f61e70b5fb1ae7', 1, 1, 'authToken', '[]', 0, '2025-03-15 05:05:04', '2025-03-15 05:05:04', '2026-03-15 05:05:04'),
('fecd48ee05cb5ce24078dbc60c8d2e5ad808d42c20efc3036bcf183c3b5f1b6248fc0a1983a9b743', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:16:13', '2025-03-15 22:16:13', '2026-03-15 22:16:13'),
('fed3618f8120ee0df88f2d048f75cf327af4d2258efba1e85fca9bfc491f26032ae86032ae5dadf4', 2, 1, 'authToken', '[]', 0, '2025-03-15 22:03:54', '2025-03-15 22:03:54', '2026-03-15 22:03:54'),
('ff079bbb916be16c94a412974666ac47ed8e6035ae63e9f08720b4e928998be95c0a90900d7577ae', 1, 1, 'authToken', '[]', 0, '2025-03-15 22:28:17', '2025-03-15 22:28:17', '2026-03-15 22:28:17'),
('ff4d0fcdda641fc5a2cefb0f3f04367db866994e8d291e63b772b0514c762a65383738f438562c9a', 1, 1, 'accessToken', '[]', 0, '2025-03-15 02:54:23', '2025-03-15 02:54:23', '2026-03-15 02:54:23'),
('ffa69e1900f8a92e3364858a2c8461bfb90697e53b96be2615a26b5b96a5b68252f2be049ac5ae32', 1, 1, 'accessToken', '[]', 0, '2025-03-15 04:25:38', '2025-03-15 04:25:38', '2026-03-15 04:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Artifism Personal Access Client', '7OYtttL1xNj3S058xLuZrYwoAhi13ZUxcQibRmdT', NULL, 'http://localhost', 1, 0, 0, '2025-03-14 23:36:55', '2025-03-14 23:36:55'),
(2, NULL, 'Artifism Password Grant Client', 'RHabf32nZcwhlSQSVthYobn3YklAcb6U62mE1EuU', 'users', 'http://localhost', 0, 1, 0, '2025-03-14 23:36:55', '2025-03-14 23:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-03-14 23:36:55', '2025-03-14 23:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `object_files`
--

CREATE TABLE `object_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_type` varchar(191) NOT NULL,
  `object_id` int(11) NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `object_files`
--

INSERT INTO `object_files` (`id`, `object_type`, `object_id`, `file_id`) VALUES
(2, 'theme_options', 1, 1168),
(6, 'theme_options', 11, 1315),
(42, 'users', 1, 667),
(154, 'preferences', 48, 1315),
(155, 'preferences', 47, 1169),
(235, 'blogs', 31, 1113),
(236, 'blogs', 32, 1114),
(251, 'use_cases', 1, 1143),
(252, 'use_cases', 2, 1144),
(253, 'use_cases', 3, 1159),
(254, 'use_cases', 4, 1148),
(255, 'use_cases', 5, 1164),
(256, 'use_cases', 6, 1158),
(257, 'use_cases', 7, 1158),
(258, 'use_cases', 8, 1165),
(259, 'use_cases', 9, 1162),
(260, 'use_cases', 10, 1166),
(261, 'use_cases', 11, 1163),
(262, 'use_cases', 12, 1157),
(263, 'use_cases', 13, 1160),
(264, 'use_cases', 14, 1147),
(265, 'use_cases', 15, 1159),
(266, 'use_cases', 16, 1145),
(267, 'use_cases', 17, 1155),
(268, 'use_cases', 18, 1161),
(269, 'use_cases', 19, 1146),
(270, 'use_cases', 20, 1159),
(271, 'use_cases', 21, 1159),
(272, 'use_cases', 22, 1159),
(273, 'use_cases', 23, 1159),
(274, 'use_cases', 24, 1157),
(275, 'use_cases', 25, 1157),
(276, 'use_cases', 26, 1157),
(277, 'use_cases', 27, 1157),
(278, 'use_cases', 28, 1157),
(279, 'use_cases', 29, 1150),
(280, 'use_cases', 30, 1149),
(281, 'use_cases', 31, 1156),
(282, 'use_cases', 32, 1151),
(283, 'use_cases', 33, 1152),
(284, 'use_cases', 34, 1153),
(285, 'use_cases', 35, 1154),
(286, 'use_cases', 36, 1154),
(287, 'use_cases', 37, 1159),
(288, 'preferences', 114, 1316),
(289, 'preferences', 115, 1168),
(290, 'theme_options', 91, 1168),
(291, 'theme_options', 93, 1315),
(292, 'use_cases', 38, 1170),
(294, 'blogs', 35, 1185),
(295, 'blogs', 36, 1184),
(296, 'blogs', 38, 1183),
(297, 'blogs', 39, 1182),
(298, 'chat_bots', 1, 1186),
(299, 'voices', 1, 1187),
(300, 'voices', 2, 1188),
(301, 'voices', 3, 1189),
(302, 'voices', 4, 1190),
(303, 'voices', 5, 1191),
(304, 'voices', 6, 1192),
(305, 'voices', 7, 1193),
(306, 'voices', 8, 1194),
(307, 'voices', 9, 1195),
(308, 'voices', 10, 1196),
(309, 'voices', 11, 1197),
(310, 'voices', 12, 1198),
(311, 'voices', 13, 1199),
(312, 'voices', 14, 1200),
(313, 'voices', 15, 1201),
(314, 'voices', 16, 1202),
(315, 'voices', 17, 1203),
(316, 'voices', 18, 1204),
(317, 'voices', 19, 1205),
(318, 'voices', 20, 1206),
(319, 'voices', 21, 1207),
(320, 'voices', 22, 1208),
(321, 'voices', 23, 1209),
(322, 'voices', 24, 1210),
(323, 'voices', 25, 1211),
(324, 'voices', 26, 1212),
(325, 'voices', 27, 1213),
(326, 'voices', 28, 1214),
(327, 'voices', 29, 1215),
(328, 'voices', 30, 1216),
(329, 'voices', 31, 1217),
(330, 'voices', 32, 1218),
(331, 'voices', 33, 1219),
(332, 'voices', 34, 1220),
(333, 'voices', 35, 1221),
(334, 'voices', 36, 1222),
(335, 'voices', 37, 1223),
(336, 'voices', 38, 1224),
(337, 'voices', 39, 1225),
(338, 'voices', 40, 1226),
(339, 'voices', 41, 1227),
(340, 'voices', 42, 1228),
(341, 'voices', 43, 1229),
(342, 'voices', 44, 1230),
(343, 'voices', 45, 1231),
(344, 'voices', 46, 1232),
(345, 'voices', 47, 1233),
(346, 'voices', 48, 1234),
(347, 'voices', 49, 1235),
(348, 'voices', 50, 1236),
(349, 'voices', 51, 1237),
(350, 'voices', 52, 1238),
(351, 'voices', 53, 1239),
(352, 'voices', 54, 1240),
(353, 'voices', 55, 1241),
(354, 'voices', 56, 1242),
(355, 'voices', 57, 1243),
(356, 'voices', 58, 1244),
(357, 'voices', 59, 1245),
(358, 'voices', 60, 1246),
(359, 'voices', 61, 1247),
(360, 'voices', 62, 1248),
(361, 'voices', 63, 1249),
(362, 'voices', 64, 1250),
(363, 'voices', 65, 1251),
(364, 'voices', 66, 1252),
(365, 'voices', 67, 1253),
(366, 'feature_preferences', 7, 1254),
(367, 'chat_bots', 2, 1256),
(368, 'voices', 68, 1188),
(369, 'voices', 69, 1258),
(370, 'voices', 70, 1259),
(371, 'voices', 71, 1260),
(372, 'voices', 72, 1261),
(373, 'voices', 73, 1262);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_case_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `use_case_id`, `type`, `key`, `created_at`, `updated_at`) VALUES
(1, 25, 'textarea', 'job_description', '2025-03-14 23:36:49', NULL),
(2, 25, 'text', 'experience', '2025-03-14 23:36:49', NULL),
(3, 2, 'text', 'title', '2025-03-14 23:36:49', NULL),
(4, 2, 'text', 'topic', '2025-03-14 23:36:49', NULL),
(5, 3, 'textarea', 'story', '2025-03-14 23:36:49', NULL),
(8, 1, 'text', 'blog_idea', '2025-03-14 23:36:49', NULL),
(9, 4, 'text', 'google_ad', '2025-03-14 23:36:49', NULL),
(10, 5, 'text', 'facebook_ad', '2025-03-14 23:36:49', NULL),
(11, 6, 'text', 'keyword_generator', '2025-03-14 23:36:49', NULL),
(12, 8, 'text', 'seo_meta', '2025-03-14 23:36:49', NULL),
(13, 7, 'text', 'keyword_extractor', '2025-03-14 23:36:49', NULL),
(14, 9, 'text', 'marketing_stratigy', '2025-03-14 23:36:49', NULL),
(15, 10, 'text', 'page', '2025-03-14 23:36:49', NULL),
(16, 10, 'text', 'audience', '2025-03-14 23:36:49', NULL),
(17, 11, 'text', 'product_name', '2025-03-14 23:36:49', NULL),
(18, 11, 'text', 'keyword', '2025-03-14 23:36:49', NULL),
(19, 12, 'text', 'product_name', '2025-03-14 23:36:49', NULL),
(20, 12, 'text', 'audience', '2025-03-14 23:36:49', NULL),
(21, 12, 'textarea', 'description', '2025-03-14 23:36:49', NULL),
(22, 13, 'text', 'product_name', '2025-03-14 23:36:49', NULL),
(23, 13, 'textarea', 'product_description', '2025-03-14 23:36:49', NULL),
(24, 14, 'text', 'profession', '2025-03-14 23:36:49', NULL),
(25, 14, 'textarea', 'skils', '2025-03-14 23:36:49', NULL),
(26, 14, 'text', 'experience', '2025-03-14 23:36:49', NULL),
(27, 15, 'text', 'experience', '2025-03-14 23:36:49', NULL),
(28, 15, 'textarea', 'skils', '2025-03-14 23:36:49', NULL),
(29, 15, 'text', 'education', '2025-03-14 23:36:49', NULL),
(31, 16, 'text', 'title', '2025-03-14 23:36:49', NULL),
(32, 16, 'text', 'content', '2025-03-14 23:36:49', NULL),
(33, 17, 'text', 'content', '2025-03-14 23:36:49', NULL),
(34, 18, 'text', 'business_idea', '2025-03-14 23:36:49', NULL),
(35, 18, 'text', 'keyword', '2025-03-14 23:36:49', NULL),
(36, 19, 'text', 'brand_name', '2025-03-14 23:36:49', NULL),
(37, 19, 'text', 'audience', '2025-03-14 23:36:49', NULL),
(38, 20, 'text', 'headline', '2025-03-14 23:36:49', NULL),
(39, 21, 'textarea', 'improve', '2025-03-14 23:36:49', NULL),
(40, 22, 'textarea', 'rephrase', '2025-03-14 23:36:49', NULL),
(41, 23, 'textarea', 'summarize', '2025-03-14 23:36:49', NULL),
(42, 24, 'text', 'cover_letter', '2025-03-14 23:36:49', NULL),
(43, 24, 'text', 'skill', '2025-03-14 23:36:49', NULL),
(44, 26, 'text', 'company_name', '2025-03-14 23:36:49', NULL),
(45, 26, 'text', 'company_task', '2025-03-14 23:36:49', NULL),
(46, 27, 'text', 'question_answer', '2025-03-14 23:36:49', NULL),
(47, 28, 'text', 'interview_question', '2025-03-14 23:36:49', NULL),
(48, 28, 'textarea', 'interview_question_content', '2025-03-14 23:36:49', NULL),
(49, 29, 'text', 'aida_content', '2025-03-14 23:36:49', NULL),
(50, 30, 'text', 'pas_content', '2025-03-14 23:36:49', NULL),
(51, 31, 'textarea', 'child_content', '2025-03-14 23:36:49', NULL),
(52, 32, 'text', 'notification', '2025-03-14 23:36:49', NULL),
(53, 32, 'text', 'notification_content', '2025-03-14 23:36:49', NULL),
(54, 33, 'text', 'tweet', '2025-03-14 23:36:49', NULL),
(55, 34, 'text', 'video_title', '2025-03-14 23:36:49', NULL),
(56, 34, 'text', 'video_content', '2025-03-14 23:36:49', NULL),
(57, 35, 'text', 'youtube_video_title', '2025-03-14 23:36:49', NULL),
(58, 35, 'text', 'youtube_video_content', '2025-03-14 23:36:49', NULL),
(59, 36, 'text', 'youtube_video_idea', '2025-03-14 23:36:49', NULL),
(60, 37, 'text', 'poetry', '2025-03-14 23:36:49', NULL),
(61, 38, 'textarea', 'question', '2025-03-14 23:36:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `option_meta`
--

CREATE TABLE `option_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_meta`
--

INSERT INTO `option_meta` (`id`, `option_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 2, 'required', 'required', '2025-03-14 23:36:49', NULL),
(3, 2, 'label', 'Year of experience', '2025-03-14 23:36:49', NULL),
(4, 2, 'placeholder', 'Year of experience', '2025-03-14 23:36:49', NULL),
(6, 1, 'required', 'required', '2025-03-14 23:36:49', NULL),
(7, 1, 'label', 'Job Post', '2025-03-14 23:36:49', NULL),
(8, 1, 'placeholder', 'Job Post', '2025-03-14 23:36:49', NULL),
(9, 3, 'required', 'required', '2025-03-14 23:36:49', NULL),
(10, 3, 'label', 'Title of your blog article', '2025-03-14 23:36:49', NULL),
(11, 3, 'placeholder', 'Article about the smartphone', '2025-03-14 23:36:49', NULL),
(12, 4, 'required', 'required', '2025-03-14 23:36:49', NULL),
(13, 4, 'label', 'Keyword or content of your blog', '2025-03-14 23:36:49', NULL),
(14, 4, 'placeholder', 'Story about a horror night, first day at school', '2025-03-14 23:36:49', NULL),
(15, 5, 'required', 'required', '2025-03-14 23:36:49', NULL),
(16, 5, 'label', 'Story About', '2025-03-14 23:36:49', NULL),
(17, 5, 'placeholder', 'Story about a horror night, first day at school', '2025-03-14 23:36:49', NULL),
(24, 8, 'required', 'required', '2025-03-14 23:36:49', NULL),
(25, 8, 'label', 'Blog Idea and outline about', '2025-03-14 23:36:49', NULL),
(26, 8, 'placeholder', 'Travel, Technology', '2025-03-14 23:36:49', NULL),
(27, 9, 'placeholder', 'Mobile, Technology', '2025-03-14 23:36:49', NULL),
(28, 9, 'label', 'Google add about', '2025-03-14 23:36:49', NULL),
(29, 9, 'required', 'required', '2025-03-14 23:36:49', NULL),
(30, 10, 'required', 'required', '2025-03-14 23:36:49', NULL),
(31, 10, 'label', 'Facebook add about', '2025-03-14 23:36:49', NULL),
(32, 10, 'placeholder', 'Mobile, Technology', '2025-03-14 23:36:49', NULL),
(33, 11, 'placeholder', 'Shop name, Business name', '2025-03-14 23:36:49', NULL),
(34, 11, 'label', 'Keyword about', '2025-03-14 23:36:49', NULL),
(35, 11, 'required', 'required', '2025-03-14 23:36:49', NULL),
(36, 12, 'required', 'required', '2025-03-14 23:36:49', NULL),
(37, 12, 'label', 'SEO meta title about', '2025-03-14 23:36:49', NULL),
(38, 12, 'placeholder', 'Mobile, TV', '2025-03-14 23:36:49', NULL),
(39, 13, 'required', 'required', '2025-03-14 23:36:49', NULL),
(40, 13, 'label', 'Content Extractor From Text', '2025-03-14 23:36:49', NULL),
(41, 13, 'placeholder', 'Text content where you find the keyword', '2025-03-14 23:36:49', NULL),
(42, 14, 'required', 'required', '2025-03-14 23:36:49', NULL),
(43, 14, 'label', 'Marketing and Strategies about', '2025-03-14 23:36:49', NULL),
(44, 14, 'placeholder', 'Marketing and Strategies about Electronic item', '2025-03-14 23:36:49', NULL),
(45, 16, 'placeholder', 'Landing page about smartwatch, health care', '2025-03-14 23:36:49', NULL),
(46, 16, 'label', 'landing page about', '2025-03-14 23:36:49', NULL),
(47, 16, 'required', 'required', '2025-03-14 23:36:49', NULL),
(48, 15, 'required', 'required', '2025-03-14 23:36:49', NULL),
(49, 15, 'label', 'Targeted Audience', '2025-03-14 23:36:49', NULL),
(50, 15, 'placeholder', 'Targeted audience is old generation', '2025-03-14 23:36:49', NULL),
(51, 17, 'placeholder', 'Best laptop in your budget', '2025-03-14 23:36:49', NULL),
(52, 17, 'label', 'Product Name', '2025-03-14 23:36:49', NULL),
(53, 17, 'required', 'required', '2025-03-14 23:36:49', NULL),
(54, 18, 'required', 'required', '2025-03-14 23:36:49', NULL),
(55, 18, 'label', 'Keyword', '2025-03-14 23:36:49', NULL),
(56, 18, 'placeholder', 'Best laptop, Mobile', '2025-03-14 23:36:49', NULL),
(57, 19, 'placeholder', 'Electronics, laptop, Mobile', '2025-03-14 23:36:49', NULL),
(58, 19, 'label', 'Product Name', '2025-03-14 23:36:49', NULL),
(59, 19, 'required', 'required', '2025-03-14 23:36:49', NULL),
(60, 20, 'required', 'required', '2025-03-14 23:36:49', NULL),
(61, 20, 'label', 'Target Audience ', '2025-03-14 23:36:49', NULL),
(62, 20, 'placeholder', 'Women, Girl', '2025-03-14 23:36:49', NULL),
(63, 21, 'placeholder', 'Smart phone that can use for daily life and make life easier.', '2025-03-14 23:36:49', NULL),
(64, 21, 'label', 'Product Description', '2025-03-14 23:36:49', NULL),
(65, 21, 'required', 'required', '2025-03-14 23:36:49', NULL),
(66, 22, 'required', 'required', '2025-03-14 23:36:49', NULL),
(67, 22, 'label', 'Product Name', '2025-03-14 23:36:49', NULL),
(68, 22, 'placeholder', 'Water Bottle', '2025-03-14 23:36:49', NULL),
(69, 23, 'placeholder', 'Quality of this bottle is so good and easy to use ', '2025-03-14 23:36:49', NULL),
(70, 23, 'label', 'Product Description', '2025-03-14 23:36:49', NULL),
(71, 23, 'required', 'required', '2025-03-14 23:36:49', NULL),
(72, 24, 'required', 'required', '2025-03-14 23:36:49', NULL),
(73, 24, 'label', 'Profession', '2025-03-14 23:36:49', NULL),
(74, 24, 'placeholder', 'Network engineer, Web developer', '2025-03-14 23:36:49', NULL),
(75, 25, 'placeholder', 'PHP, Laravel', '2025-03-14 23:36:49', NULL),
(76, 25, 'label', 'Skills ', '2025-03-14 23:36:49', NULL),
(77, 25, 'required', 'required', '2025-03-14 23:36:49', NULL),
(78, 26, 'required', 'required', '2025-03-14 23:36:49', NULL),
(79, 26, 'label', 'Experinece', '2025-03-14 23:36:49', NULL),
(80, 26, 'placeholder', '2 / 3', '2025-03-14 23:36:49', NULL),
(81, 27, 'placeholder', '2 / 3', '2025-03-14 23:36:49', NULL),
(82, 27, 'label', 'Experinece', '2025-03-14 23:36:49', NULL),
(83, 27, 'required', 'required', '2025-03-14 23:36:49', NULL),
(84, 28, 'required', 'required', '2025-03-14 23:36:49', NULL),
(85, 28, 'label', 'Skills ', '2025-03-14 23:36:49', NULL),
(86, 28, 'placeholder', 'PHP, Laravel', '2025-03-14 23:36:49', NULL),
(87, 29, 'placeholder', 'Bsc in Computer science', '2025-03-14 23:36:49', NULL),
(88, 29, 'label', 'Education', '2025-03-14 23:36:49', NULL),
(89, 29, 'required', 'required', '2025-03-14 23:36:49', NULL),
(90, 31, 'required', 'required', '2025-03-14 23:36:49', NULL),
(91, 31, 'label', 'Mail Title', '2025-03-14 23:36:49', NULL),
(92, 31, 'placeholder', 'Marketing about shirt', '2025-03-14 23:36:49', NULL),
(93, 32, 'placeholder', 'Best fabric, Quality sewing', '2025-03-14 23:36:49', NULL),
(94, 32, 'label', 'Content', '2025-03-14 23:36:49', NULL),
(95, 32, 'required', 'required', '2025-03-14 23:36:49', NULL),
(96, 33, 'required', 'required', '2025-03-14 23:36:49', NULL),
(97, 33, 'label', 'Call to action about', '2025-03-14 23:36:49', NULL),
(98, 33, 'placeholder', 'Joining at office', '2025-03-14 23:36:49', NULL),
(99, 34, 'placeholder', 'about garments, fabrics', '2025-03-14 23:36:49', NULL),
(100, 34, 'label', 'Business Idea About', '2025-03-14 23:36:49', NULL),
(101, 34, 'required', 'required', '2025-03-14 23:36:49', NULL),
(102, 35, 'required', 'required', '2025-03-14 23:36:49', NULL),
(103, 35, 'label', 'Content', '2025-03-14 23:36:49', NULL),
(104, 35, 'placeholder', 'Soft Cotton, Fabric ', '2025-03-14 23:36:49', NULL),
(105, 36, 'placeholder', 'Megasoft', '2025-03-14 23:36:49', NULL),
(106, 36, 'label', 'Name', '2025-03-14 23:36:49', NULL),
(107, 36, 'required', 'required', '2025-03-14 23:36:49', NULL),
(108, 37, 'required', 'required', '2025-03-14 23:36:49', NULL),
(109, 37, 'label', 'Target Audience', '2025-03-14 23:36:49', NULL),
(110, 37, 'placeholder', 'Young generation', '2025-03-14 23:36:49', NULL),
(111, 38, 'placeholder', 'Breaking news', '2025-03-14 23:36:49', NULL),
(112, 38, 'label', 'Headline About', '2025-03-14 23:36:49', NULL),
(113, 38, 'required', 'required', '2025-03-14 23:36:49', NULL),
(114, 39, 'required', 'required', '2025-03-14 23:36:49', NULL),
(115, 39, 'label', 'Content Improvement', '2025-03-14 23:36:49', NULL),
(116, 39, 'placeholder', 'write content and get the improve version of it.', '2025-03-14 23:36:49', NULL),
(117, 40, 'placeholder', 'write content and get the improve version of it.', '2025-03-14 23:36:49', NULL),
(118, 40, 'label', 'Content Rephrase', '2025-03-14 23:36:49', NULL),
(119, 40, 'required', 'required', '2025-03-14 23:36:49', NULL),
(120, 41, 'required', 'required', '2025-03-14 23:36:49', NULL),
(121, 41, 'label', 'Content Summarize', '2025-03-14 23:36:49', NULL),
(122, 41, 'placeholder', 'write content and get the summary of it.', '2025-03-14 23:36:49', NULL),
(123, 42, 'placeholder', 'Junior Develoepr', '2025-03-14 23:36:49', NULL),
(124, 42, 'label', 'Cover letter for', '2025-03-14 23:36:49', NULL),
(125, 42, 'required', 'required', '2025-03-14 23:36:49', NULL),
(126, 43, 'required', 'required', '2025-03-14 23:36:49', NULL),
(127, 43, 'label', 'Experties in', '2025-03-14 23:36:49', NULL),
(128, 43, 'placeholder', 'PHP, MySQL, Ajax', '2025-03-14 23:36:49', NULL),
(129, 44, 'placeholder', 'ABC Company', '2025-03-14 23:36:49', NULL),
(130, 44, 'label', 'Company Name', '2025-03-14 23:36:49', NULL),
(131, 44, 'required', 'required', '2025-03-14 23:36:49', NULL),
(132, 45, 'required', 'required', '2025-03-14 23:36:49', NULL),
(133, 45, 'label', 'Company Works With', '2025-03-14 23:36:49', NULL),
(134, 45, 'placeholder', 'AI, Development, Technology', '2025-03-14 23:36:49', NULL),
(135, 46, 'placeholder', 'about AI, Web Development, Technology', '2025-03-14 23:36:49', NULL),
(136, 46, 'label', 'Question And Answer About', '2025-03-14 23:36:49', NULL),
(137, 46, 'required', 'required', '2025-03-14 23:36:49', NULL),
(138, 47, 'required', 'required', '2025-03-14 23:36:49', NULL),
(139, 47, 'label', 'Interview Question About', '2025-03-14 23:36:49', NULL),
(140, 47, 'placeholder', 'about AI, Web Development, Technology', '2025-03-14 23:36:49', NULL),
(141, 48, 'placeholder', 'Technology, General Knowledge', '2025-03-14 23:36:49', NULL),
(142, 48, 'label', 'Interview Question Content', '2025-03-14 23:36:49', NULL),
(143, 48, 'required', 'required', '2025-03-14 23:36:49', NULL),
(144, 49, 'required', 'required', '2025-03-14 23:36:49', NULL),
(145, 49, 'label', 'AIDA Model about', '2025-03-14 23:36:49', NULL),
(146, 49, 'placeholder', 'Technology, General Knowledge', '2025-03-14 23:36:49', NULL),
(147, 50, 'placeholder', 'Technology, General Knowledge', '2025-03-14 23:36:49', NULL),
(148, 50, 'label', 'PAS Model About', '2025-03-14 23:36:49', NULL),
(149, 50, 'required', 'required', '2025-03-14 23:36:49', NULL),
(150, 51, 'required', 'required', '2025-03-14 23:36:49', NULL),
(151, 51, 'label', 'Content For Child', '2025-03-14 23:36:49', NULL),
(152, 51, 'placeholder', 'Write teh content that you want to lower grade context for child.', '2025-03-14 23:36:49', NULL),
(153, 52, 'placeholder', 'Notification for discount', '2025-03-14 23:36:49', NULL),
(154, 52, 'label', 'Notification For', '2025-03-14 23:36:49', NULL),
(155, 52, 'required', 'required', '2025-03-14 23:36:49', NULL),
(156, 53, 'required', 'required', '2025-03-14 23:36:49', NULL),
(157, 53, 'label', 'Notification Content', '2025-03-14 23:36:49', NULL),
(158, 53, 'placeholder', 'Discount, Offer ', '2025-03-14 23:36:49', NULL),
(159, 54, 'placeholder', 'Tweet about your activity', '2025-03-14 23:36:49', NULL),
(160, 54, 'label', 'Tweet For', '2025-03-14 23:36:49', NULL),
(161, 54, 'required', 'required', '2025-03-14 23:36:49', NULL),
(162, 55, 'required', 'required', '2025-03-14 23:36:49', NULL),
(163, 55, 'label', 'Video Title', '2025-03-14 23:36:49', NULL),
(164, 55, 'placeholder', 'New Vlog with My New Bike ', '2025-03-14 23:36:49', NULL),
(165, 56, 'placeholder', 'Bike tour, New place', '2025-03-14 23:36:49', NULL),
(166, 56, 'label', 'Video Content', '2025-03-14 23:36:49', NULL),
(167, 56, 'required', 'required', '2025-03-14 23:36:49', NULL),
(168, 57, 'required', 'required', '2025-03-14 23:36:49', NULL),
(169, 57, 'label', 'Youtube Video Title', '2025-03-14 23:36:49', NULL),
(170, 57, 'placeholder', 'Bike tour, New place', '2025-03-14 23:36:49', NULL),
(171, 58, 'placeholder', 'Bike tour, New place', '2025-03-14 23:36:49', NULL),
(172, 58, 'label', 'Youtube Video Description', '2025-03-14 23:36:49', NULL),
(173, 58, 'required', 'required', '2025-03-14 23:36:49', NULL),
(174, 59, 'required', 'required', '2025-03-14 23:36:49', NULL),
(175, 59, 'label', 'Youtube Video Ideas', '2025-03-14 23:36:49', NULL),
(176, 59, 'placeholder', 'Vlog, Technology', '2025-03-14 23:36:49', NULL),
(177, 60, 'placeholder', 'nature and its beauty', '2025-03-14 23:36:49', NULL),
(178, 60, 'label', 'Poetry About', '2025-03-14 23:36:49', NULL),
(179, 60, 'required', 'required', '2025-03-14 23:36:49', NULL),
(180, 61, 'required', 'required', '2025-03-14 23:36:49', NULL),
(181, 61, 'label', 'Question About', '2025-03-14 23:36:49', NULL),
(182, 61, 'placeholder', 'Why the sky is blue?', '2025-03-14 23:36:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `short_description` varchar(191) DEFAULT NULL,
  `sale_price` varchar(400) NOT NULL,
  `discount_price` varchar(400) NOT NULL,
  `billing_cycle` varchar(400) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `trial_day` int(11) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `renewable` tinyint(1) DEFAULT 0,
  `status` varchar(45) NOT NULL DEFAULT 'Pending' COMMENT 'Active / Inactive / Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `name`, `code`, `short_description`, `sale_price`, `discount_price`, `billing_cycle`, `sort_order`, `trial_day`, `usage_limit`, `renewable`, `status`, `created_at`, `updated_at`) VALUES
(8, 1, 'الخطة المبدئية', 'p-starter', NULL, '{\"lifetime\":0,\"yearly\":0,\"monthly\":19.99,\"weekly\":0,\"days\":0}', '{\"lifetime\":null,\"yearly\":null,\"monthly\":null,\"weekly\":null,\"days\":null}', '{\"lifetime\":\"0\",\"yearly\":\"0\",\"monthly\":\"1\",\"weekly\":\"0\",\"days\":\"0\"}', 1, NULL, NULL, 1, 'Active', '2025-03-14 23:36:52', '2025-03-16 23:03:06'),
(9, 1, 'الخطة المميزة', 'p-premium', NULL, '{\"lifetime\":0,\"yearly\":0,\"monthly\":49.99,\"weekly\":0,\"days\":0}', '{\"lifetime\":null,\"yearly\":null,\"monthly\":null,\"weekly\":null,\"days\":null}', '{\"lifetime\":\"0\",\"yearly\":\"0\",\"monthly\":\"1\",\"weekly\":\"0\",\"days\":\"0\"}', 2, NULL, NULL, 1, 'Active', '2025-03-14 23:36:52', '2025-03-16 23:05:29'),
(10, 1, 'الخطة البلاتينيوم', 'p-platinum', NULL, '{\"lifetime\":0,\"yearly\":0,\"monthly\":\"129.00000000\",\"weekly\":0,\"days\":0}', '{\"lifetime\":0,\"yearly\":0,\"monthly\":\"\",\"weekly\":0,\"days\":0}', '{\"lifetime\":0,\"yearly\":0,\"monthly\":1,\"weekly\":0,\"days\":0}', 3, NULL, NULL, 1, 'Active', '2025-03-14 23:36:52', '2025-03-16 23:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `packages_meta`
--

CREATE TABLE `packages_meta` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `feature` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_subscriptions`
--

CREATE TABLE `package_subscriptions` (
  `id` int(11) NOT NULL,
  `code` varchar(65) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `activation_date` date NOT NULL,
  `billing_date` date DEFAULT NULL,
  `next_billing_date` date DEFAULT NULL,
  `billing_price` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `billing_cycle` varchar(45) DEFAULT NULL,
  `amount_billed` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `amount_received` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `amount_due` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `is_customized` tinyint(1) NOT NULL DEFAULT 0,
  `renewable` tinyint(1) NOT NULL DEFAULT 0,
  `payment_status` varchar(45) NOT NULL COMMENT 'Paid / Unpaid',
  `status` varchar(45) NOT NULL COMMENT 'Pending / Active / Inactive/ Expired / Cancel',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_subscriptions`
--

INSERT INTO `package_subscriptions` (`id`, `code`, `user_id`, `package_id`, `activation_date`, `billing_date`, `next_billing_date`, `billing_price`, `billing_cycle`, `amount_billed`, `amount_received`, `amount_due`, `is_customized`, `renewable`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AVSBMF535T', 2, 10, '2025-03-11', '2025-03-11', '2025-04-10', 129.00000000, 'monthly', 129.00000000, 129.00000000, 0.00000000, 0, 1, 'Paid', 'Active', '2025-03-14 23:36:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_subscriptions_meta`
--

CREATE TABLE `package_subscriptions_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_subscription_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'null',
  `key` varchar(191) NOT NULL,
  `value` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_subscriptions_meta`
--

INSERT INTO `package_subscriptions_meta` (`id`, `package_subscription_id`, `type`, `key`, `value`) VALUES
(1, 1, 'feature_word', 'type', 'number'),
(2, 1, 'feature_word', 'is_value_fixed', '0'),
(3, 1, 'feature_word', 'title', 'Word limit'),
(4, 1, 'feature_word', 'title_position', 'before'),
(5, 1, 'feature_word', 'value', '200000'),
(6, 1, 'feature_word', 'description', 'Word description will be here'),
(7, 1, 'feature_word', 'is_visible', '1'),
(8, 1, 'feature_word', 'status', 'Active'),
(9, 1, 'feature_word', 'usage', '7491'),
(10, 1, 'feature_image', 'type', 'number'),
(11, 1, 'feature_image', 'is_value_fixed', '0'),
(12, 1, 'feature_image', 'title', 'Image limit'),
(13, 1, 'feature_image', 'title_position', 'before'),
(14, 1, 'feature_image', 'value', '1000'),
(15, 1, 'feature_image', 'description', 'Image description will be here'),
(16, 1, 'feature_image', 'is_visible', '1'),
(17, 1, 'feature_image', 'status', 'Active'),
(18, 1, 'feature_image', 'usage', '0'),
(19, 1, 'feature_image-resolution', 'type', 'number'),
(20, 1, 'feature_image-resolution', 'is_value_fixed', '1'),
(21, 1, 'feature_image-resolution', 'title', 'Max Image Resolution'),
(22, 1, 'feature_image-resolution', 'title_position', 'before'),
(23, 1, 'feature_image-resolution', 'value', '1024x1024'),
(24, 1, 'feature_image-resolution', 'description', 'Image description will be here'),
(25, 1, 'feature_image-resolution', 'is_visible', '1'),
(26, 1, 'feature_image-resolution', 'status', 'Active'),
(27, 1, 'feature_image-resolution', 'usage', '0'),
(28, 1, 'feature_custom1', 'type', 'string'),
(29, 1, 'feature_custom1', 'title', 'Artifism Bot (ChatGPT-like chatbot)'),
(30, 1, 'feature_custom1', 'description', NULL),
(31, 1, 'feature_custom1', 'is_visible', '1'),
(32, 1, 'feature_custom1', 'status', 'Active'),
(33, 1, 'feature_custom1', 'usage', '0'),
(34, 1, 'feature_custom2', 'type', 'string'),
(35, 1, 'feature_custom2', 'title', '100+ AI Templates'),
(36, 1, 'feature_custom2', 'description', NULL),
(37, 1, 'feature_custom2', 'is_visible', '1'),
(38, 1, 'feature_custom2', 'status', 'Active'),
(39, 1, 'feature_custom2', 'usage', '0'),
(40, 1, 'feature_custom3', 'type', 'string'),
(41, 1, 'feature_custom3', 'title', '25+ Languages'),
(42, 1, 'feature_custom3', 'description', NULL),
(43, 1, 'feature_custom3', 'is_visible', '1'),
(44, 1, 'feature_custom3', 'status', 'Active'),
(45, 1, 'feature_custom3', 'usage', '0'),
(46, 1, 'feature_custom4', 'type', 'string'),
(47, 1, 'feature_custom4', 'title', 'Landing Page Generator'),
(48, 1, 'feature_custom4', 'description', NULL),
(49, 1, 'feature_custom4', 'is_visible', '1'),
(50, 1, 'feature_custom4', 'status', 'Active'),
(51, 1, 'feature_custom4', 'usage', '0'),
(52, 1, 'feature_custom5', 'type', 'string'),
(53, 1, 'feature_custom5', 'title', '1-Click WordPress Export'),
(54, 1, 'feature_custom5', 'description', NULL),
(55, 1, 'feature_custom5', 'is_visible', '1'),
(56, 1, 'feature_custom5', 'status', 'Active'),
(57, 1, 'feature_custom5', 'usage', '0'),
(58, 1, 'feature_custom6', 'type', 'string'),
(59, 1, 'feature_custom6', 'title', 'Zapier Integration'),
(60, 1, 'feature_custom6', 'description', NULL),
(61, 1, 'feature_custom6', 'is_visible', '1'),
(62, 1, 'feature_custom6', 'status', 'Active'),
(63, 1, 'feature_custom6', 'usage', '0'),
(64, 1, 'feature_custom7', 'type', 'string'),
(65, 1, 'feature_custom7', 'title', 'Browser extensions'),
(66, 1, 'feature_custom7', 'description', NULL),
(67, 1, 'feature_custom7', 'is_visible', '1'),
(68, 1, 'feature_custom7', 'status', 'Active'),
(69, 1, 'feature_custom7', 'usage', '0'),
(70, 1, 'feature_custom8', 'type', 'string'),
(71, 1, 'feature_custom8', 'title', 'AI Article Writer'),
(72, 1, 'feature_custom8', 'description', NULL),
(73, 1, 'feature_custom8', 'is_visible', '1'),
(74, 1, 'feature_custom8', 'status', 'Active'),
(75, 1, 'feature_custom8', 'usage', '0'),
(76, 1, 'feature_custom9', 'type', 'string'),
(77, 1, 'feature_custom9', 'title', 'Sonic Editor (Google Docs like Editor)'),
(78, 1, 'feature_custom9', 'description', NULL),
(79, 1, 'feature_custom9', 'is_visible', '1'),
(80, 1, 'feature_custom9', 'status', 'Active'),
(81, 1, 'feature_custom9', 'usage', '0'),
(82, 1, 'feature_custom10', 'type', 'string'),
(83, 1, 'feature_custom10', 'title', 'API Access'),
(84, 1, 'feature_custom10', 'description', NULL),
(85, 1, 'feature_custom10', 'is_visible', '1'),
(86, 1, 'feature_custom10', 'status', 'Active'),
(87, 1, 'feature_custom10', 'usage', '0'),
(88, 1, '', 'duration', NULL),
(89, 1, '', 'trial', NULL),
(90, 1, '', 'usecaseCategory', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"8\",\"7\",\"9\"]'),
(91, 1, '', 'usecaseTemplate', '[\"blog-ideas-outlines\",\"blog-post-writing\",\"story-writing\",\"google-ad-copy\",\"facebook-ad-copy\",\"keyword-generator\",\"keyword-extractor\",\"seo-meta-title-details\",\"marketing-copy-strategies\",\"landing-page-website-copy\",\"amazon-product-outlines\",\"product-description\",\"product-reviews-responders\",\"linkedin-profile-copy\",\"personal-bio\",\"email-writing\",\"call-to-action\",\"business-ideas-strategies\",\"brand-name\",\"tagline-headline\",\"content-improver\",\"content-rephrase\",\"text-summarizer\",\"cv-resume-cover-letter\",\"job-description\",\"company-description\",\"questions-answers\",\"interview-questions\",\"aida-framework\",\"pas-framework\",\"explain-it-to-a-child\",\"sms-notifications\",\"tweet-generator\",\"video-scripts\",\"youtube-descriptions\",\"youtube-ideas-outlines\",\"poetry\"]'),
(92, 1, 'feature_minute', 'type', 'number'),
(93, 1, 'feature_minute', 'is_value_fixed', '0'),
(94, 1, 'feature_minute', 'title', 'Minute Limit'),
(95, 1, 'feature_minute', 'title_position', 'before'),
(96, 1, 'feature_minute', 'value', '0'),
(97, 1, 'feature_minute', 'description', 'Audio description will be here'),
(98, 1, 'feature_minute', 'is_visible', '0'),
(99, 1, 'feature_minute', 'status', 'Active'),
(100, 1, 'feature_minute', 'usage', '0'),
(101, 1, '', 'chatCategory', '[\"1\",\"5\",\"4\",\"3\",\"2\"]'),
(102, 1, '', 'chatAssistants', '[\"HJREY\",\"HJREY-2\",\"HJREY-3\",\"ZXCVB-7\",\"MNBVC-6\",\"QWERT-2\",\"QWERT-3\",\"LKJHG-9\",\"MNOPQ-2\",\"ZXCVB-5\",\"ASDFG-1\",\"ZXCVB-4\",\"HJREY-4\",\"PLKDS-2\",\"RTYUI-6\",\"ZXCVB-7\",\"MNBVC-2\",\"LKJHG-2\",\"ZXCVB-8\",\"PLKJH-4\",\"MNBVC-8\",\"HJREW-7\",\"ZXCVB-9\",\"LKJHG-3\",\"QWERT-6\"]'),
(103, 1, 'feature_character', 'type', 'number'),
(104, 1, 'feature_character', 'is_value_fixed', '0'),
(105, 1, 'feature_character', 'title', 'Character Limit'),
(106, 1, 'feature_character', 'title_position', 'before'),
(107, 1, 'feature_character', 'value', '500000'),
(108, 1, 'feature_character', 'description', 'Character description will be here'),
(109, 1, 'feature_character', 'is_visible', '0'),
(110, 1, 'feature_character', 'status', 'Active'),
(111, 1, 'feature_character', 'usage', '0'),
(112, 1, 'feature_page', 'type', 'number'),
(113, 1, 'feature_page', 'is_value_fixed', '0'),
(114, 1, 'feature_page', 'title', 'Page Limit'),
(115, 1, 'feature_page', 'title_position', 'before'),
(116, 1, 'feature_page', 'value', '30'),
(117, 1, 'feature_page', 'description', 'Page description will be here'),
(118, 1, 'feature_page', 'is_visible', '0'),
(119, 1, 'feature_page', 'status', 'Active'),
(120, 1, 'feature_page', 'usage', '0'),
(121, 1, 'feature_chatbot', 'type', 'number'),
(122, 1, 'feature_chatbot', 'is_value_fixed', '0'),
(123, 1, 'feature_chatbot', 'title', 'Chatbot Limit'),
(124, 1, 'feature_chatbot', 'title_position', 'before'),
(125, 1, 'feature_chatbot', 'value', '30'),
(126, 1, 'feature_chatbot', 'description', 'Character description will be here'),
(127, 1, 'feature_chatbot', 'is_visible', '0'),
(128, 1, 'feature_chatbot', 'status', 'Active'),
(129, 1, 'feature_chatbot', 'usage', '0'),
(130, 1, 'feature_video', 'type', 'number'),
(131, 1, 'feature_video', 'is_value_fixed', '0'),
(132, 1, 'feature_video', 'title', 'Video Limit'),
(133, 1, 'feature_video', 'title_position', 'before'),
(134, 1, 'feature_video', 'value', '30'),
(135, 1, 'feature_video', 'description', 'Video description will be here'),
(136, 1, 'feature_video', 'is_visible', '0'),
(137, 1, 'feature_video', 'status', 'Active'),
(138, 1, 'feature_video', 'usage', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `css` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `meta_title` varchar(150) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Active',
  `type` varchar(191) DEFAULT NULL,
  `layout` varchar(191) NOT NULL DEFAULT 'default',
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `css`, `description`, `meta_title`, `meta_description`, `status`, `type`, `layout`, `default`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '* { box-sizing: border-box; } body {margin: 0;}#iz8k{padding:10px;margin:0 0 10px 0;}#ifjs{padding:10px;margin:0 0 30px 0;}#ijco{padding:10px;margin:0 0 10px 0;}#ik5t{padding:10px;margin:0 0 30px 0;}#inbk{padding:10px;margin:0 0 10px 0;}#ie1c{padding:10px;margin:0 0 10px 0;}#ipwh{padding:10px;margin:0 0 10px 0;}#icok{padding:10px;margin:0 0 10px 0;}#i94k{padding:10px;margin:0 0 10px 0;}#i1b2u{padding:10px;margin:0 0 30px 0;}#imwjf{padding:10px;margin:0 0 30px 0;}#ihlvo{padding:10px;margin:0 0 30px 0;}#ijkuk{padding:10px;margin:0 0 30px 0;}#ib7ow{padding:10px;margin:0 0 30px 0;}#izl75{padding:10px;margin:0 0 10px 0;}#iiluk{padding:10px;margin:0 0 15px 0;}#izhb9{padding:10px;margin:0 0 10px 0;}#i5bvu{padding:10px;margin:0 0 10px 0;}#iwi92{padding:10px;margin:0 0 30px 0;}#ieavt{padding:10px;margin:0 0 30px 0;}#i325j{padding:10px;margin:0 0 10px 0;}#iwrsl{padding:10px;margin:0 0 10px 0;}#ifv2k{padding:10px;margin:0 0 10px 0;}#ivprk{padding:10px;margin:0 0 10px 0;}#ijnmf{padding:10px;margin:0 0 10px 0;}#isrc5{padding:10px;margin:0 0 10px 0;}#iajog{padding:10px;margin:0 0 30px 0;}#izz1f{padding:10px;margin:0 0 30px 0;}#igvdo{padding:10px;margin:0 0 30px 0;}#ivdq6{padding:10px;margin:0 0 30px 0;}#ih0zr{padding:10px;margin:0 0 30px 0;}#ijo7b{padding:10px;margin:0 0 30px 0;}#ie4ia{padding:10px;margin:0 0 10px 0;}#ikrzn{padding:10px;margin:0 0 30px 0;}', '<body id=\"izt5\"><div id=\"iz8k\"><h1 style=\"text-align:justify\"><strong>Introduction</strong></h1>\r\n                </div><div id=\"ifjs\"><p>Welcome to Artifism, Inc.<br />\r\n                Artifism, Inc. (&ldquo;us&rdquo;, &ldquo;we&rdquo;, or &ldquo;our&rdquo;) operates https://demo.artifism.techvill.net/ (hereinafter referred to as &ldquo;Service&rdquo;).<br />\r\n                Our Privacy Policy governs your visit to https://demo.artifism.techvill.net/, and explains how we collect, safeguard and disclose information that results from your use of our Service.<br />\r\n                By using Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, the terms used in this Privacy Policy have the same meanings as in our Terms and Conditions.<br />\r\n                Our Terms and Conditions (&ldquo;Terms&rdquo;) govern all use of our Service and together with the Privacy Policy constitutes your agreement with us (&ldquo;agreement&rdquo;).</p>\r\n                </div><div id=\"i5bvu\"><h1 style=\"text-align:justify\"><strong>Definitions</strong></h1>\r\n                </div><div id=\"ieavt\"><p>Service means the https://demo.artifism.techvill.net/ website operated by Artifism, Inc.<br />\r\n                Personal Data means data about a living individual who can be identified from those data (or from those and other information either in our possession or likely to come into our possession).<br />\r\n                Usage Data is data collected automatically either generated by the use of Service or from Service infrastructure itself (for example, the duration of a page visit).<br />\r\n                Cookies are small files stored on your device (computer or mobile device).<br />\r\n                Data Controller means a natural or legal person who (either alone or jointly or in common with other persons) determines the purposes for which and the manner in which any personal data are, or are to be, processed. For the purpose of this Privacy Policy, we are a Data Controller of your data.<br />\r\n                Data Processors (on service providers) means any natural or legal person who processes the data on behalf of the Data Controller. We may use the services of various Service Providers in order to process your data more effectively.<br />\r\n                Data Subject is any living individual who is the subject of Personal Data.<br />\r\n                The User is the individual using our Service. The User corresponds to the Data Subject, who is the subject of Personal Data.</p>\r\n                </div><div id=\"izhb9\"><h1 style=\"text-align:justify\"><strong>Information Collection and Use</strong></h1>\r\n                </div><div id=\"iwi92\"><p>We collect several different types of information for various purposes to provide and improve our Service to you.</p>\r\n                </div><div id=\"izl75\"><h1 style=\"text-align:justify\"><strong>Types of Data Collected</strong></h1>\r\n                </div><div id=\"iiluk\"><p><strong>Personal Data</strong><br />\r\n                While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (&ldquo;Personal Data&rdquo;). Personally identifiable information may include, but is not limited to:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>Email address<br />\r\n                First name and last name<br />\r\n                Cookies and Usage Data</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>We may use your Personal Data to contact you with newsletters, marketing or promotional materials and other information that may be of interest to you. You may opt out of receiving any, or all, of these communications from us by following the unsubscribe link or by emailing at support@artifism.com.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Personal Data</strong><br />\r\n                We may also collect information that your browser sends whenever you visit our Service or when you access Service by or through a mobile device (&ldquo;Usage Data&rdquo;).<br />\r\n                This Usage Data may include information such as your computer&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.<br />\r\n                When you access Service with a mobile device, this Usage Data may include information such as the type of mobile device you use, your mobile device unique ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browser you use, unique device identifiers and other diagnostic data.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Personal Data</strong><br />\r\n                We use cookies and similar tracking technologies to track the activity on our Service and we hold certain information.<br />\r\n                Cookies are files with a small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Other tracking technologies are also used such as beacons, tags and scripts to collect and track information and to improve and analyze our Service.<br />\r\n                You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>Examples of Cookies we use:<br />\r\n                Session Cookies: We use Session Cookies to operate our Service.<br />\r\n                Preference Cookies: We use Preference Cookies to remember your preferences and various settings.<br />\r\n                Security Cookies: We use Security Cookies for security purposes.<br />\r\n                Advertising Cookies: Advertising Cookies are used to serve you with advertisements that may be relevant to you and your interests.</p>\r\n                </div><div id=\"icok\"><h1 style=\"text-align:justify\"><strong>Use of Data</strong></h1>\r\n                </div><div id=\"ib7ow\"><p>Artifism, Inc. uses the collected data for various purposes:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Personal Data</strong><br />\r\n                to provide and maintain our Service;<br />\r\n                to notify you about changes to our Service;<br />\r\n                to allow you to participate in interactive features of our Service when you choose to do so;<br />\r\n                to provide customer support;<br />\r\n                to gather analysis or valuable information so that we can improve our Service;<br />\r\n                to monitor the usage of our Service;<br />\r\n                to detect, prevent and address technical issues;<br />\r\n                to fulfill any other purpose for which you provide it;<br />\r\n                to carry out our obligations and enforce our rights arising from any contracts entered into between you and us, including for billing and collection;<br />\r\n                to provide you with notices about your account and/or subscription, including expiration and renewal notices, email-instructions, etc.;<br />\r\n                to provide you with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless you have opted not to receive such information;<br />\r\n                in any other way we may describe when you provide the information;<br />\r\n                for any other purpose with your consent.</p>\r\n                </div><div id=\"inbk\"><h1 style=\"text-align:justify\"><strong>Retention of Data</strong></h1>\r\n                </div><div id=\"ik5t\"><p>We will retain your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.<br />\r\n                We will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period, except when this data is used to strengthen the security or to improve the functionality of our Service, or we are legally obligated to retain this data for longer time periods.</p>\r\n                </div><div id=\"ie1c\"><h1 style=\"text-align:justify\"><strong>Transfer of Data</strong></h1>\r\n                </div><div id=\"ijkuk\"><p>Your information, including Personal Data, may be transferred to &ndash; and maintained on &ndash; computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ from those of your jurisdiction. Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.<br />\r\n                Artifism, Inc. will take all the steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organisation or a country unless there are adequate controls in place including the security of your data and other personal information.</p>\r\n                </div><div id=\"ipwh\"><h1 style=\"text-align:justify\"><strong>Disclosure of Data</strong></h1>\r\n                </div><div id=\"ihlvo\"><p>We may disclose personal information that we collect, or you provide:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Disclosure for Law Enforcement.</strong><br />\r\n                Under certain circumstances, we may be required to disclose your Personal Data if required to do so by law or in response to valid requests by public authorities.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Business Transaction.</strong><br />\r\n                If we or our subsidiaries are involved in a merger, acquisition or asset sale, your Personal Data may be transferred.<br />\r\n                Other cases. We may disclose your information also:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>to fulfill the purpose for which you provide it;<br />\r\n                for the purpose of including your company&rsquo;s logo on our website;</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>for any other purpose with your consent.</p>\r\n                </div><div id=\"isrc5\"><h1 style=\"text-align:justify\"><strong>Security of Data</strong></h1>\r\n                </div><div id=\"ijo7b\"><p>The security of your data is important to us but remember that no method of transmission over the Internet or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</p>\r\n                </div><div id=\"ijnmf\"><h1 style=\"text-align:justify\"><strong>Your Data Protection Rights Under General Data Protection Regulation (GDPR)</strong></h1>\r\n                </div><div id=\"ih0zr\"><p>If you are a resident of the European Union (EU) and European Economic Area (EEA), you have certain data protection rights, covered by GDPR. &ndash; See more at https://eur-lex.europa.eu/eli/reg/2016/679/oj</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>We aim to take reasonable steps to allow you to correct, amend, delete, or limit the use of your Personal Data.<br />\r\n                If you wish to be informed what Personal Data we hold about you and if you want it to be removed from our systems, please email us at support@artifism.com.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>In certain circumstances, you have the following data protection rights:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>the right to access, update or to delete the information we have on you;<br />\r\n                the right of rectification. You have the right to have your information rectified if that information is inaccurate or incomplete;<br />\r\n                the right to object. You have the right to object to our processing of your Personal Data;<br />\r\n                the right of restriction. You have the right to request that we restrict the processing of your personal information;<br />\r\n                the right to data portability. You have the right to be provided with a copy of your Personal Data in a structured, machine-readable and commonly used format;<br />\r\n                the right to withdraw consent. You also have the right to withdraw your consent at any time where we rely on your consent to process your personal information;</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>Please note that we may ask you to verify your identity before responding to such requests. Please note, we may not able to provide Service without some necessary data.<br />\r\n                You have the right to complain to a Data Protection Authority about our collection and use of your Personal Data. For more information, please contact your local data protection authority in the European Economic Area (EEA).</p>\r\n                </div><div id=\"ivprk\"><h1 style=\"text-align:justify\"><strong>Service Providers</strong></h1>\r\n                </div><div id=\"ivdq6\"><p>We may employ third party companies and individuals to facilitate our Service (&ldquo;Service Providers&rdquo;), provide Service on our behalf, perform Service-related services or assist us in analysing how our Service is used.<br />\r\n                These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>\r\n                </div><div id=\"ifv2k\"><h1 style=\"text-align:justify\"><strong>CI/CD tools</strong></h1>\r\n                </div><div id=\"igvdo\"><p>We may use third-party Service Providers to automate the development process of our Service.<br />\r\n                GitHub<br />\r\n                GitHub is provided by GitHub, Inc.<br />\r\n                GitHub is a development platform to host and review code, manage projects, and build software.<br />\r\n                For more information on what data GitHub collects for what purpose and how the protection of the data is ensured, please visit GitHub Privacy Policy page: https://help.github.com/en/articles/github-privacy-statement.</p>\r\n                </div><div id=\"iwrsl\"><h1 style=\"text-align:justify\"><strong>Behavioral Remarketing</strong></h1>\r\n                </div><div id=\"izz1f\"><p>Artifism, Inc. uses remarketing services to advertise on third party websites to you after you visited our Service. We and our third-party vendors use cookies to inform, optimize and serve ads based on your past visits to our Service.<br />\r\n                GitHub is provided by GitHub, Inc.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Google Ads (AdWords)</strong><br />\r\n                Google Ads (AdWords) remarketing service is provided by Google Inc.<br />\r\n                You can opt-out of Google Analytics for Display Advertising and customize the Google Display Network ads by visiting the Google Ads Settings page: http://www.google.com/settings/ads<br />\r\n                Google also recommends installing the Google Analytics Opt-out Browser Add-on &ndash; https://tools.google.com/dlpage/gaoptout &ndash; for your web browser. Google Analytics Opt-out Browser Add-on provides visitors with the ability to prevent their data from being collected and used by Google Analytics. For more information on the privacy practices of Google, please visit the Google Privacy Terms web page: https://policies.google.com/privacy?hl=en<br />\r\n                For more information on the privacy practices of Google, please visit the Google Privacy Terms web page: https://policies.google.com/privacy?hl=en</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Facebook</strong><br />\r\n                Facebook remarketing service is provided by Facebook Inc.<br />\r\n                Facebook remarketing service is provided by Facebook Inc. You can learn more about interest-based advertising from Facebook by visiting this page: https://www.facebook.com/help/164968693837950<br />\r\n                To opt-out from Facebook&#39;s interest-based ads, follow these instructions from Facebook: https://www.facebook.com/help/568137493302217<br />\r\n                Facebook adheres to the Self-Regulatory Principles for Online Behavioural Advertising established by the Digital Advertising Alliance. You can also opt-out from Facebook and other participating companies through the Digital Advertising Alliance in the USA http://www.aboutads.info/choices/, the Digital Advertising Alliance of Canada in Canada http://youradchoices.ca/ or the European Interactive Digital Advertising Alliance in Europe http://www.youronlinechoices.eu/, or opt-out using your mobile device settings.<br />\r\n                For more information on the privacy practices of Facebook, please visit Facebook&#39;s Data Policy: https://www.facebook.com/privacy/explanation</p>\r\n                </div><div id=\"i325j\"><h1 style=\"text-align:justify\"><strong>Payments</strong></h1>\r\n                </div><div id=\"iajog\"><p>We may provide paid products and/or services within Service. In that case, we use third-party services for payment processing (e.g. payment processors).<br />\r\n                We will not store or collect your payment card details. That information is provided directly to our third-party payment processors whose use of your personal information is governed by their Privacy Policy. These payment processors adhere to the standards set by PCI-DSS as managed by the PCI Security Standards Council, which is a joint effort of brands like Visa, Mastercard, American Express and Discover. PCI-DSS requirements help ensure the secure handling of payment information.<br />\r\n                The payment processors we work with are:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>PayPal or Braintree:</strong><br />\r\n                Their Privacy Policy can be viewed at https://www.paypal.com/webapps/mpp/ua/privacy-full</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Stripe:</strong><br />\r\n                Their Privacy Policy can be viewed at: https://stripe.com/us/privacy</p>\r\n                </div><div id=\"ijco\"><h1 style=\"text-align:justify\"><strong>Links to Other Sites</strong></h1>\r\n                </div><div id=\"imwjf\"><p>Our Service may contain links to other sites that are not operated by us. If you click a third party link, you will be directed to that third party&#39;s site. We strongly advise you to review the Privacy Policy of every site you visit.<br />\r\n                We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n                </div><div id=\"ie4ia\"><h1 style=\"text-align:justify\"><strong>Changes to This Privacy Policy</strong></h1>\r\n                </div><div id=\"ikrzn\"><p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.<br />\r\n                We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update &ldquo;effective date&rdquo; at the top of this Privacy Policy.<br />\r\n                You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n                </div><div id=\"i94k\"><h1 style=\"text-align:justify\"><strong>Contact Us</strong></h1>\r\n                </div><div id=\"i1b2u\"><p>If you have any questions about this Privacy Policy, please contact us:</p>\r\n\r\n                <p>By email: support@artifism.com.</p>\r\n                </div></body>', 'About us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dapibus venenatis turpis vel vulputate. Donec in lacinia arcu. Aenean sapien magna, eleifend at gravida in, luctus a quam.', 'Inactive', 'page', 'default', 0, NULL, '2025-03-16 23:40:50'),
(2, 'Privacy Policy', 'privacy-policy', '* { box-sizing: border-box; } body {margin: 0;}', '<body id=\"idnh\"><section class=\"bdg-sect\"><p class=\"paragraph\"><br />\r\n                At Artifism, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and protect the information you provide when using our project, Artifism, which utilizes OpenAI technology. By using Artifism, you consent to the practices described in this Privacy Policy.<br />\r\n                <br />\r\n                <strong><big>Information We Collect:</big></strong><br />\r\n                <br />\r\n                <strong>1.1.</strong> Personal Information: When you interact with Artifism, we may collect certain personally identifiable information, including but not limited to your name, email address, and any additional information you voluntarily provide. We only collect personal information that is necessary to provide you with the services offered by Artifism.<br />\r\n                <br />\r\n                <strong>1.2.</strong> Usage Information: We may also collect non-personally identifiable information about your usage of Artifism, such as your IP address, device information, browser type, and operating system. This information is collected automatically and is used to improve the functionality and performance of Artifism.<br />\r\n                Use of Information:<br />\r\n                <br />\r\n                <strong>2.1.</strong> Personal Information: We use the personal information we collect to provide and improve the services offered by Artifism. This includes responding to your inquiries, providing customer support, and delivering personalized content. We may also use your personal information to send you important updates and notifications about Artifism or promotional materials if you have opted-in to receive them.<br />\r\n                <br />\r\n                <strong>2.2.</strong> Usage Information: The non-personally identifiable information we collect is used for statistical purposes, to analyze trends, administer Artifism, and gather demographic information about our user base. This information helps us enhance the user experience, optimize Artifism&#39;s performance, and ensure the security of our systems.<br />\r\n                <br />\r\n                <big><strong>Information Sharing and Disclosure:</strong></big><br />\r\n                <br />\r\n                <strong>3.1. </strong>Third-Party Service Providers: We may share your personal information with trusted third-party service providers who assist us in operating Artifism, such as hosting providers, analytics providers, and customer support providers. These third parties are bound by confidentiality obligations and are only authorized to use your personal information as necessary to provide services to us.<br />\r\n                <br />\r\n                <strong>3.2. </strong>Legal Requirements: We may disclose your personal information if required by law, regulation, or legal process, or if we believe that such disclosure is necessary to protect our rights, enforce our Terms of Service, or respond to a legal request.<br />\r\n                <br />\r\n                <big><strong>Data Security:</strong></big><br />\r\n                <br />\r\n                We take reasonable measures to protect your personal information from unauthorized access, loss, misuse, or alteration. However, please note that no method of transmission over the internet or electronic storage is 100% secure. Therefore, while we strive to protect your personal information, we cannot guarantee its absolute security.<br />\r\n                <br />\r\n                <strong><big>Your Rights and Choices:</big></strong><br />\r\n                <br />\r\n                5.1. Access and Correction: You have the right to access, correct, or update your personal information held by us. You can do so by contacting us using the information provided at the end of this Privacy Policy.<br />\r\n                <br />\r\n                5.2. Opt-Out: If you no longer wish to receive promotional communications from us, you can opt-out by following the unsubscribe instructions provided in those communications.<br />\r\n                <br />\r\n                <strong><big>Third-Party Links:</big></strong><br />\r\n                <br />\r\n                Artifism may contain links to third-party websites or services that are not operated by us. This Privacy Policy does not apply to those third-party websites or services. We recommend reviewing the privacy policies of those third parties before interacting with them.<br />\r\n                <br />\r\n                <strong><big>Children&#39;s Privacy:</big></strong><br />\r\n                <br />\r\n                Artifism is not intended for individuals under the age of 18. We do not knowingly collect personal information from individuals under 18 years of age. If you believe we may have inadvertently collected information from a child under 18, please contact us using the information provided below, and we will promptly delete that information.<br />\r\n                <br />\r\n                <big><strong>Changes to this Privacy Policy:</strong></big><br />\r\n                <br />\r\n                We reserve the right to modify this Privacy Policy at any time. Any changes we make will be effective immediately upon posting the updated Privacy Policy on Artifism. We encourage you to review this Privacy Policy periodically to stay informed about our privacy practices.<br />\r\n                <br />\r\n                <big><strong>Contact Us:</strong></big><br />\r\n                <br />\r\n                If you have any questions or concerns about this Privacy Policy or our privacy practices, please contact us at [Insert contact information].<br />\r\n                By using Artifism, you acknowledge that you have read, understood, and agreed to the terms of this Privacy Policy.<br />\r\n                End of Privacy Policy.</p></section></body>', 'Privacy Policy', 'Protecting your privacy is our top priority. Discover how Artifism, powered by OpenAI, safeguards your personal information while providing an exceptional user experience. Read our privacy policy for transparency on data collection, usage, and security measures.', 'Inactive', 'page', 'default', 0, NULL, '2025-03-16 23:40:59');
INSERT INTO `pages` (`id`, `name`, `slug`, `css`, `description`, `meta_title`, `meta_description`, `status`, `type`, `layout`, `default`, `created_at`, `updated_at`) VALUES
(3, 'Refund Policy', 'refund-policy', '* { box-sizing: border-box; } body {margin: 0;}#iz8k{padding:10px;margin:0 0 10px 0;}#ifjs{padding:10px;margin:0 0 30px 0;}#ijco{padding:10px;margin:0 0 10px 0;}#ik5t{padding:10px;margin:0 0 30px 0;}#inbk{padding:10px;margin:0 0 10px 0;}#ie1c{padding:10px;margin:0 0 10px 0;}#ipwh{padding:10px;margin:0 0 10px 0;}#icok{padding:10px;margin:0 0 10px 0;}#i94k{padding:10px;margin:0 0 10px 0;}#i1b2u{padding:10px;margin:0 0 30px 0;}#imwjf{padding:10px;margin:0 0 30px 0;}#ihlvo{padding:10px;margin:0 0 30px 0;}#ijkuk{padding:10px;margin:0 0 30px 0;}#ib7ow{padding:10px;margin:0 0 30px 0;}#izl75{padding:10px;margin:0 0 10px 0;}#iiluk{padding:10px;margin:0 0 30px 0;}#izhb9{padding:10px;margin:0 0 10px 0;}#i5bvu{padding:10px;margin:0 0 10px 0;}#iwi92{padding:10px;margin:0 0 30px 0;}#ieavt{padding:10px;margin:0 0 30px 0;}#i325j{padding:10px;margin:0 0 10px 0;}#iwrsl{padding:10px;margin:0 0 10px 0;}#ifv2k{padding:10px;margin:0 0 10px 0;}#ivprk{padding:10px;margin:0 0 10px 0;}#ijnmf{padding:10px;margin:0 0 10px 0;}#isrc5{padding:10px;margin:0 0 10px 0;}#iajog{padding:10px;margin:0 0 30px 0;}#izz1f{padding:10px;margin:0 0 30px 0;}#igvdo{padding:10px;margin:0 0 30px 0;}#ivdq6{padding:10px;margin:0 0 30px 0;}#ih0zr{padding:10px;margin:0 0 30px 0;}#ijo7b{padding:10px;margin:0 0 30px 0;}#ie4ia{padding:10px;margin:0 0 10px 0;}#ikrzn{padding:10px;margin:0 0 30px 0;}', '<body id=\"izt5\"><div id=\"iz8k\"><h1 style=\"text-align:justify\"><strong>Introduction</strong></h1>\r\n                </div><div id=\"ifjs\"><p>Welcome to Artifism, Inc.<br />\r\n                Artifism, Inc. (&ldquo;us&rdquo;, &ldquo;we&rdquo;, or &ldquo;our&rdquo;) operates https://demo.artifism.techvill.net/ (hereinafter referred to as &ldquo;Service&rdquo;).<br />\r\n                Our Privacy Policy governs your visit to https://demo.artifism.techvill.net/, and explains how we collect, safeguard and disclose information that results from your use of our Service.<br />\r\n                By using Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, the terms used in this Privacy Policy have the same meanings as in our Terms and Conditions.<br />\r\n                Our Terms and Conditions (&ldquo;Terms&rdquo;) govern all use of our Service and together with the Privacy Policy constitutes your agreement with us (&ldquo;agreement&rdquo;).</p>\r\n                </div><div id=\"i5bvu\"><h1 style=\"text-align:justify\"><strong>Definitions</strong></h1>\r\n                </div><div id=\"ieavt\"><p>Service means the https://demo.artifism.techvill.net/ website operated by Artifism, Inc.<br />\r\n                Personal Data means data about a living individual who can be identified from those data (or from those and other information either in our possession or likely to come into our possession).<br />\r\n                Usage Data is data collected automatically either generated by the use of Service or from Service infrastructure itself (for example, the duration of a page visit).<br />\r\n                Cookies are small files stored on your device (computer or mobile device).<br />\r\n                Data Controller means a natural or legal person who (either alone or jointly or in common with other persons) determines the purposes for which and the manner in which any personal data are, or are to be, processed. For the purpose of this Privacy Policy, we are a Data Controller of your data.<br />\r\n                Data Processors (on service providers) means any natural or legal person who processes the data on behalf of the Data Controller. We may use the services of various Service Providers in order to process your data more effectively.<br />\r\n                Data Subject is any living individual who is the subject of Personal Data.<br />\r\n                The User is the individual using our Service. The User corresponds to the Data Subject, who is the subject of Personal Data.</p>\r\n                </div><div id=\"izhb9\"><h1 style=\"text-align:justify\"><strong>Information Collection and Use</strong></h1>\r\n                </div><div id=\"iwi92\"><p>We collect several different types of information for various purposes to provide and improve our Service to you.</p>\r\n                </div><div id=\"izl75\"><h1 style=\"text-align:justify\"><strong>Types of Data Collected</strong></h1>\r\n                </div><div id=\"iiluk\"><p><strong>Personal Data</strong><br />\r\n                While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (&ldquo;Personal Data&rdquo;). Personally identifiable information may include, but is not limited to:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>Email address<br />\r\n                First name and last name<br />\r\n                Cookies and Usage Data</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>We may use your Personal Data to contact you with newsletters, marketing or promotional materials and other information that may be of interest to you. You may opt out of receiving any, or all, of these communications from us by following the unsubscribe link or by emailing at support@artifism.com.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Personal Data</strong><br />\r\n                We may also collect information that your browser sends whenever you visit our Service or when you access Service by or through a mobile device (&ldquo;Usage Data&rdquo;).<br />\r\n                This Usage Data may include information such as your computer&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.<br />\r\n                When you access Service with a mobile device, this Usage Data may include information such as the type of mobile device you use, your mobile device unique ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browser you use, unique device identifiers and other diagnostic data.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Personal Data</strong><br />\r\n                We use cookies and similar tracking technologies to track the activity on our Service and we hold certain information.<br />\r\n                Cookies are files with a small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Other tracking technologies are also used such as beacons, tags and scripts to collect and track information and to improve and analyze our Service.<br />\r\n                You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>Examples of Cookies we use:<br />\r\n                Session Cookies: We use Session Cookies to operate our Service.<br />\r\n                Preference Cookies: We use Preference Cookies to remember your preferences and various settings.<br />\r\n                Security Cookies: We use Security Cookies for security purposes.<br />\r\n                Advertising Cookies: Advertising Cookies are used to serve you with advertisements that may be relevant to you and your interests.</p>\r\n                </div><div id=\"icok\"><h1 style=\"text-align:justify\"><strong>Use of Data</strong></h1>\r\n                </div><div id=\"ib7ow\"><p>Artifism, Inc. uses the collected data for various purposes:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Personal Data</strong><br />\r\n                to provide and maintain our Service;<br />\r\n                to notify you about changes to our Service;<br />\r\n                to allow you to participate in interactive features of our Service when you choose to do so;<br />\r\n                to provide customer support;<br />\r\n                to gather analysis or valuable information so that we can improve our Service;<br />\r\n                to monitor the usage of our Service;<br />\r\n                to detect, prevent and address technical issues;<br />\r\n                to fulfill any other purpose for which you provide it;<br />\r\n                to carry out our obligations and enforce our rights arising from any contracts entered into between you and us, including for billing and collection;<br />\r\n                to provide you with notices about your account and/or subscription, including expiration and renewal notices, email-instructions, etc.;<br />\r\n                to provide you with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless you have opted not to receive such information;<br />\r\n                in any other way we may describe when you provide the information;<br />\r\n                for any other purpose with your consent.</p>\r\n                </div><div id=\"inbk\"><h1 style=\"text-align:justify\"><strong>Retention of Data</strong></h1>\r\n                </div><div id=\"ik5t\"><p>We will retain your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.<br />\r\n                We will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period, except when this data is used to strengthen the security or to improve the functionality of our Service, or we are legally obligated to retain this data for longer time periods.</p>\r\n                </div><div id=\"ie1c\"><h1 style=\"text-align:justify\"><strong>Transfer of Data</strong></h1>\r\n                </div><div id=\"ijkuk\"><p>Your information, including Personal Data, may be transferred to &ndash; and maintained on &ndash; computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ from those of your jurisdiction. Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.<br />\r\n                Artifism, Inc. will take all the steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organisation or a country unless there are adequate controls in place including the security of your data and other personal information.</p>\r\n                </div><div id=\"ipwh\"><h1 style=\"text-align:justify\"><strong>Disclosure of Data</strong></h1>\r\n                </div><div id=\"ihlvo\"><p>We may disclose personal information that we collect, or you provide:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Disclosure for Law Enforcement.</strong><br />\r\n                Under certain circumstances, we may be required to disclose your Personal Data if required to do so by law or in response to valid requests by public authorities.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Business Transaction.</strong><br />\r\n                If we or our subsidiaries are involved in a merger, acquisition or asset sale, your Personal Data may be transferred.<br />\r\n                Other cases. We may disclose your information also:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>to fulfill the purpose for which you provide it;<br />\r\n                for the purpose of including your company&rsquo;s logo on our website;</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>for any other purpose with your consent.</p>\r\n                </div><div id=\"isrc5\"><h1 style=\"text-align:justify\"><strong>Security of Data</strong></h1>\r\n                </div><div id=\"ijo7b\"><p>The security of your data is important to us but remember that no method of transmission over the Internet or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</p>\r\n                </div><div id=\"ijnmf\"><h1 style=\"text-align:justify\"><strong>Your Data Protection Rights Under General Data Protection Regulation (GDPR)</strong></h1>\r\n                </div><div id=\"ih0zr\"><p>If you are a resident of the European Union (EU) and European Economic Area (EEA), you have certain data protection rights, covered by GDPR. &ndash; See more at https://eur-lex.europa.eu/eli/reg/2016/679/oj</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>We aim to take reasonable steps to allow you to correct, amend, delete, or limit the use of your Personal Data.<br />\r\n                If you wish to be informed what Personal Data we hold about you and if you want it to be removed from our systems, please email us at support@artifism.com.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>In certain circumstances, you have the following data protection rights:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>the right to access, update or to delete the information we have on you;<br />\r\n                the right of rectification. You have the right to have your information rectified if that information is inaccurate or incomplete;<br />\r\n                the right to object. You have the right to object to our processing of your Personal Data;<br />\r\n                the right of restriction. You have the right to request that we restrict the processing of your personal information;<br />\r\n                the right to data portability. You have the right to be provided with a copy of your Personal Data in a structured, machine-readable and commonly used format;<br />\r\n                the right to withdraw consent. You also have the right to withdraw your consent at any time where we rely on your consent to process your personal information;</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p>Please note that we may ask you to verify your identity before responding to such requests. Please note, we may not able to provide Service without some necessary data.<br />\r\n                You have the right to complain to a Data Protection Authority about our collection and use of your Personal Data. For more information, please contact your local data protection authority in the European Economic Area (EEA).</p>\r\n                </div><div id=\"ivprk\"><h1 style=\"text-align:justify\"><strong>Service Providers</strong></h1>\r\n                </div><div id=\"ivdq6\"><p>We may employ third party companies and individuals to facilitate our Service (&ldquo;Service Providers&rdquo;), provide Service on our behalf, perform Service-related services or assist us in analysing how our Service is used.<br />\r\n                These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>\r\n                </div><div id=\"ifv2k\"><h1 style=\"text-align:justify\"><strong>CI/CD tools</strong></h1>\r\n                </div><div id=\"igvdo\"><p>We may use third-party Service Providers to automate the development process of our Service.<br />\r\n                GitHub<br />\r\n                GitHub is provided by GitHub, Inc.<br />\r\n                GitHub is a development platform to host and review code, manage projects, and build software.<br />\r\n                For more information on what data GitHub collects for what purpose and how the protection of the data is ensured, please visit GitHub Privacy Policy page: https://help.github.com/en/articles/github-privacy-statement.</p>\r\n                </div><div id=\"iwrsl\"><h1 style=\"text-align:justify\"><strong>Behavioral Remarketing</strong></h1>\r\n                </div><div id=\"izz1f\"><p>Artifism, Inc. uses remarketing services to advertise on third party websites to you after you visited our Service. We and our third-party vendors use cookies to inform, optimize and serve ads based on your past visits to our Service.<br />\r\n                GitHub is provided by GitHub, Inc.</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Google Ads (AdWords)</strong><br />\r\n                Google Ads (AdWords) remarketing service is provided by Google Inc.<br />\r\n                You can opt-out of Google Analytics for Display Advertising and customize the Google Display Network ads by visiting the Google Ads Settings page: http://www.google.com/settings/ads<br />\r\n                Google also recommends installing the Google Analytics Opt-out Browser Add-on &ndash; https://tools.google.com/dlpage/gaoptout &ndash; for your web browser. Google Analytics Opt-out Browser Add-on provides visitors with the ability to prevent their data from being collected and used by Google Analytics. For more information on the privacy practices of Google, please visit the Google Privacy Terms web page: https://policies.google.com/privacy?hl=en<br />\r\n                For more information on the privacy practices of Google, please visit the Google Privacy Terms web page: https://policies.google.com/privacy?hl=en</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Facebook</strong><br />\r\n                Facebook remarketing service is provided by Facebook Inc.<br />\r\n                Facebook remarketing service is provided by Facebook Inc. You can learn more about interest-based advertising from Facebook by visiting this page: https://www.facebook.com/help/164968693837950<br />\r\n                To opt-out from Facebook&#39;s interest-based ads, follow these instructions from Facebook: https://www.facebook.com/help/568137493302217<br />\r\n                Facebook adheres to the Self-Regulatory Principles for Online Behavioural Advertising established by the Digital Advertising Alliance. You can also opt-out from Facebook and other participating companies through the Digital Advertising Alliance in the USA http://www.aboutads.info/choices/, the Digital Advertising Alliance of Canada in Canada http://youradchoices.ca/ or the European Interactive Digital Advertising Alliance in Europe http://www.youronlinechoices.eu/, or opt-out using your mobile device settings.<br />\r\n                For more information on the privacy practices of Facebook, please visit Facebook&#39;s Data Policy: https://www.facebook.com/privacy/explanation</p>\r\n                </div><div id=\"i325j\"><h1 style=\"text-align:justify\"><strong>Payments</strong></h1>\r\n                </div><div id=\"iajog\"><p>We may provide paid products and/or services within Service. In that case, we use third-party services for payment processing (e.g. payment processors).<br />\r\n                We will not store or collect your payment card details. That information is provided directly to our third-party payment processors whose use of your personal information is governed by their Privacy Policy. These payment processors adhere to the standards set by PCI-DSS as managed by the PCI Security Standards Council, which is a joint effort of brands like Visa, Mastercard, American Express and Discover. PCI-DSS requirements help ensure the secure handling of payment information.<br />\r\n                The payment processors we work with are:</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>PayPal or Braintree:</strong><br />\r\n                Their Privacy Policy can be viewed at https://www.paypal.com/webapps/mpp/ua/privacy-full</p>\r\n\r\n                <p>&nbsp;</p>\r\n\r\n                <p><strong>Stripe:</strong><br />\r\n                Their Privacy Policy can be viewed at: https://stripe.com/us/privacy</p>\r\n                </div><div id=\"ijco\"><h1 style=\"text-align:justify\"><strong>Links to Other Sites</strong></h1>\r\n                </div><div id=\"imwjf\"><p>Our Service may contain links to other sites that are not operated by us. If you click a third party link, you will be directed to that third party&#39;s site. We strongly advise you to review the Privacy Policy of every site you visit.<br />\r\n                We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n                </div><div id=\"ie4ia\"><h1 style=\"text-align:justify\"><strong>Changes to This Privacy Policy</strong></h1>\r\n                </div><div id=\"ikrzn\"><p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.<br />\r\n                We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update &ldquo;effective date&rdquo; at the top of this Privacy Policy.<br />\r\n                You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n                </div><div id=\"i94k\"><h1 style=\"text-align:justify\"><strong>Contact Us</strong></h1>\r\n                </div><div id=\"i1b2u\"><p>If you have any questions about this Privacy Policy, please contact us:</p>\r\n\r\n                <p>By email: support@artifism.com.</p>\r\n                </div></body>', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dapibus venenatis turpis vel vulputate. Donec in lacinia arcu. Aenean sapien magna, eleifend at gravida in, luctus a quam.', 'Inactive', 'page', 'default', 0, NULL, '2025-03-16 23:41:07'),
(4, 'Digital Payments', 'digital-payments', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}.gjs-row{display:table;padding:10px;width:100%;}#ie0e{padding:30px 10px;text-align:justify;}', '<body><div id=\"idi5\" class=\"gjs-row\"><div id=\"ie0e\"><p id=\"iurxl\"><span id=\"i6ays\"><span id=\"i5l6m\"></span></span><span id=\"it00b\"><span id=\"ike6m\"></span></span><span id=\"i0wfh\"><span id=\"i9v0z\"></span></span></p><p id=\"im1kn\"><br />\r\n                Our digital payment system is designed to provide you with a seamless and secure payment experience. With Artifism, you can enjoy the convenience of using a wide range of trusted payment gateways. Our system supports popular payment processors such as AuthorizeNet, Instamojo, MtnMomo, Stripe, SslCommerz, NGenius, Paypal, Paystack, Paytm, and Razorpay.<br />\r\n                <br />\r\n                Here&#39;s a brief description of each supported payment gateway:<br />\r\n                <strong>AuthorizeNet:</strong> AuthorizeNet is a popular payment gateway that enables businesses to accept credit card payments securely. It provides robust fraud detection tools and advanced security features to protect sensitive customer data.<br />\r\n                <br />\r\n                <strong>CheckPayments:</strong> CheckPayments is a payment gateway that allows businesses to accept payments via checks. It provides a convenient way for customers to make payments using traditional paper checks while automating the check processing and verification process.<br />\r\n                <br />\r\n                <strong>Instamojo:</strong> Instamojo is a leading Indian payment gateway that supports multiple payment methods, including credit cards, debit cards, and mobile wallets. It offers easy integration, reliable payment processing, and comprehensive reporting features.<br />\r\n                <br />\r\n                <strong>MtnMomo:</strong> MtnMomo is a mobile money payment gateway widely used in Africa. It enables users to make payments and transfer funds securely using their mobile phones and M-Pesa accounts.<br />\r\n                StripeRecurring: StripeRecurring is a payment gateway that specializes in handling recurring payments. It offers businesses the ability to set up and manage subscriptions, membership fees, and other recurring billing models with ease.<br />\r\n                <br />\r\n                <strong>Stripe:</strong> Stripe is a globally recognized payment gateway that supports online payments with credit cards, debit cards, and digital wallets. It offers a developer-friendly platform, robust security, and extensive customization options.<br />\r\n                <br />\r\n                <strong>SslCommerz:</strong> SslCommerz is a popular payment gateway in Bangladesh. It supports various payment methods and offers seamless integration, secure transactions, and comprehensive transaction reporting.<br />\r\n                <br />\r\n                <strong>NGenius:</strong> NGenius is a payment gateway by Worldline that provides secure and reliable payment processing services. It supports a wide range of payment methods and offers advanced reporting and analytics features for businesses.<br />\r\n                <br />\r\n                <strong>Paypal: </strong>Paypal is a widely used global payment gateway that allows users to make online payments using their Paypal account, credit cards, or bank accounts. It offers a trusted and secure platform for transactions.<br />\r\n                <br />\r\n                <strong>PaypalRecurring:</strong> PaypalRecurring is a Paypal service specifically designed for managing and processing recurring payments. It simplifies the setup and management of subscription-based services and recurring billing cycles.<br />\r\n                <br />\r\n                <strong>Paystack: </strong>Paystack is a Nigerian payment gateway that enables businesses to accept online payments via various channels, including cards, bank transfers, and mobile money. It offers seamless integration, reliable transaction processing, and detailed reporting.<br />\r\n                <br />\r\n                <strong>Paytm:</strong> Paytm is a leading Indian payment gateway that supports online payments through multiple channels, including credit cards, debit cards, UPI, and mobile wallets. It provides a user-friendly interface and robust security measures.<br />\r\n                <br />\r\n                <strong>Razorpay:</strong> Razorpay is an Indian payment gateway that offers businesses a comprehensive solution for accepting online payments. It supports various payment methods and provides advanced features like smart routing, fraud prevention, and subscription management.<br />\r\n                <br />\r\n                Each of these payment gateways brings unique features and capabilities, allowing businesses to offer diverse payment options to their customers while ensuring the security and reliability of transactions. Our digital payment system seamlessly integrates with these gateways, empowering you to choose the payment methods that best suit your needs and preferences.<br />\r\n                <br />\r\n                Whether you prefer traditional payment methods like credit cards or cutting-edge options such as mobile wallets, our system has you covered. By integrating with multiple payment gateways, we offer you the flexibility to choose the payment method that suits your needs best.<br />\r\n                <br />\r\n                When it comes to security, we take your financial information seriously. Our digital payment system employs advanced encryption technology to protect your sensitive data during transmission. We adhere to strict industry standards to ensure that your payment details are kept confidential and secure.<br />\r\n                <br />\r\n                With Artifism&#39;s digital payment system, you can confidently make transactions with peace of mind, knowing that your information is handled with the utmost care. Experience the convenience, reliability, and security that our system provides, making your payment process smooth and hassle-free.<br />\r\n                &nbsp;</p><p><span id=\"i5rnc\"><span id=\"ibhli\"></span></span><span id=\"ikb37\"><span id=\"ie9me\"></span></span></p><p><span id=\"if2hj\"><span id=\"idsx1\"></span></span></p><p id=\"itufe\"><span id=\"i4egb\"><span id=\"i0ffn\"></span></span><span id=\"irox5\"><span id=\"ighpw\"></span></span></p><p><span id=\"ieu86\"><span id=\"ik65k\"></span></span></p><p><span id=\"ijpuw\"><span id=\"ix01x\"></span></span></p></div></div></body>', 'Cras maximus pretium finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dapibus venenatis turpis vel vulputate. Donec in lacinia arcu. Aenean sapien magna, eleifend at gravida in, luctus a quam.', 'Inactive', 'page', 'default', 0, NULL, '2025-03-16 23:41:29'),
(9, 'Contact Us', 'contact-us', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}#ie3j{justify-content:space-between;}#i77dl{border-radius:12px 12px 12px 12px;display:block;}#ifk9{margin:20px 0 50px 0;}#iv0vc{font-size:42px;font-weight:700;display:flex;line-height:55px;margin:14px 0 0 0;}.pl-1{color:#ff9c00;}#iwjhg{font-size:18px;line-height:27px;margin:5px 0 0 0;}#iegke{background-color:#f4f4f4;border-radius:12px 12px 12px 12px;padding:32px 0 32px 32px;margin:36px 0 0 0;}#ivthu{font-size:18px;line-height:23px;color:#2c2c2c;font-weight:700;}#iyxqs{display:flex;}#i5xny{width:2px;height:23px;background-color:#fcca19;margin:0 8px 0 0;}#i9udb{margin:15px 0 0 0;font-size:16px;line-height:26px;color:#898989;font-weight:500;}#iwe8p{display:flex;margin:26px 0 0 0;}#i8b9g{display:flex;margin:26px 0 0 0;}#izb5k{color:black;background-color:#fcca19;padding:12px 12px 12px 12px;border-radius:4px 4px 4px 4px;margin:0 18px 0 0;}#ih8cs{font-size:16px;line-height:25px;color:#2c2c2c;font-weight:500;}#ifd56{display:flex;margin:30px 0 0 0;}#i4nzf{padding:12px 12px 12px 12px;background-color:#fcca19;margin:0 18px 0 0;border-radius:4px 4px 4px 4px;}#i6op6{font-size:16px;line-height:24px;font-weight:500;color:#2c2c2c;display:flex;}#iy44j{padding:12px 12px 12px 12px;background-color:#fcca19;border-radius:4px 4px 4px 4px;margin:0 18px 0 0;}#i3emb{font-size:16px;line-height:24px;font-weight:500;color:#2c2c2c;display:flex;}#ieftr{width:2px;height:23px;background-color:#fcca19;margin:0 8px 0 0;}#ispie{display:flex;}#ig3w7{font-size:18px;line-height:23px;font-weight:700;color:#2c2c2c;}#i3d0h{color:black;}#i6l6k{color:black;}#i1oew{color:black;}#i0c3t{color:black;}#iwh9j{color:black;}#i3h7a{color:black;}', '<body><div id=\"ifk9\"><div id=\"ie3j\" class=\"grid mx-4 gap-5 grid-cols-1 lg:grid-cols-2\"><div id=\"i5jk\"><div id=\"i6n37\"><div class=\"mt-20\"><nav aria-label=\"Breadcrumb\" class=\"text-sm\"><ol class=\"list-none p-0 flex flex-wrap md:inline-flex text-xs md:text-sm roboto-medium font-medium text-gray-10 leading-5\"><li class=\"flex items-center\"><svg width=\"13\" height=\"15\" viewBox=\"0 0 13 15\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"-mt-1 mr-2\"><path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.35643 1.89407C4.93608 2.1717 4.43485 2.59943 3.69438 3.23412L2.916 3.9013C2.0595 4.63545 1.82512 4.85827 1.69934 5.13174C1.57357 5.4052 1.55692 5.72817 1.55692 6.85625V10.1569C1.55692 10.9127 1.55857 11.4013 1.60698 11.7613C1.65237 12.099 1.72565 12.2048 1.7849 12.264C1.84416 12.3233 1.94997 12.3966 2.28759 12.442C2.64759 12.4904 3.13619 12.492 3.89206 12.492H8.56233C9.31819 12.492 9.80679 12.4904 10.1668 12.442C10.5044 12.3966 10.6102 12.3233 10.6695 12.264C10.7287 12.2048 10.802 12.099 10.8474 11.7613C10.8958 11.4013 10.8975 10.9127 10.8975 10.1569V6.85625C10.8975 5.72817 10.8808 5.4052 10.755 5.13174C10.6293 4.85827 10.3949 4.63545 9.53838 3.9013L8.76 3.23412C8.01953 2.59943 7.5183 2.1717 7.09795 1.89407C6.69581 1.62848 6.44872 1.55676 6.22719 1.55676C6.00566 1.55676 5.75857 1.62848 5.35643 1.89407ZM4.49849 0.595063C5.03749 0.239073 5.5849 0 6.22719 0C6.86948 0 7.41689 0.239073 7.95589 0.595063C8.4674 0.932894 9.04235 1.42573 9.7353 2.01972L10.5515 2.71933C10.5892 2.75162 10.6264 2.78347 10.6632 2.81492C11.3564 3.40806 11.8831 3.85873 12.1694 4.48124C12.4557 5.10375 12.4551 5.79693 12.4543 6.70926C12.4543 6.75764 12.4542 6.80662 12.4542 6.85625L12.4542 10.2081C12.4543 10.8981 12.4543 11.4927 12.3903 11.9688C12.3217 12.479 12.167 12.9681 11.7703 13.3648C11.3736 13.7615 10.8845 13.9162 10.3742 13.9848C9.89812 14.0488 9.30358 14.0488 8.61355 14.0488H3.84083C3.1508 14.0488 2.55626 14.0488 2.08015 13.9848C1.56991 13.9162 1.08082 13.7615 0.68411 13.3648C0.2874 12.9681 0.132701 12.479 0.064101 11.9688C9.07021e-05 11.4927 0.000124017 10.8981 0.000162803 10.2081L0.000164659 6.85625C0.000164659 6.80662 0.000122439 6.75763 8.07765e-05 6.70926C-0.000705247 5.79693 -0.00130245 5.10374 0.285011 4.48124C0.571324 3.85873 1.09802 3.40806 1.79122 2.81492C1.82798 2.78347 1.8652 2.75162 1.90288 2.71933L2.68126 2.05215C2.69391 2.0413 2.70652 2.03049 2.71909 2.01972C3.41204 1.42573 3.98698 0.932893 4.49849 0.595063Z\" fill=\"#898989\"></path><path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.50293 9.37853C3.50293 8.51876 4.19991 7.82178 5.05969 7.82178H7.39482C8.25459 7.82178 8.95158 8.51876 8.95158 9.37853V13.2704C8.95158 13.7003 8.60309 14.0488 8.1732 14.0488C7.74331 14.0488 7.39482 13.7003 7.39482 13.2704V9.37853H5.05969V13.2704C5.05969 13.7003 4.71119 14.0488 4.28131 14.0488C3.85142 14.0488 3.50293 13.7003 3.50293 13.2704V9.37853Z\" fill=\"#898989\"></path></svg><a href=\"..\" id=\"il2mk\">Home</a><p class=\"px-2\">/</p></li><li><a href=\"javascript:void(0)\" aria-current=\"page\" class=\"text-gray-12\">Contact Us</a></li></ol></nav></div><div id=\"iv0vc\" class=\"dm-bold\"><div id=\"iia7g\"><p>GET IN</p></div><div id=\"ieeak\" class=\"pl-1\"><p>TOUCH</p></div></div><div id=\"iwwrv\"></div></div><div id=\"iwjhg\" class=\"dm-regular\"><p>If you have any queries, concerns or suggestions,<br/>\r\nplease contact us.</p></div><div id=\"i6uxw\"><div id=\"iegke\"><div id=\"iyxqs\"><div id=\"i5xny\"></div><div id=\"ivthu\" class=\"dm-bold\"><p>HEADQUARTERS</p></div></div><div id=\"i9udb\" class=\"dm-sans\"><p>Our team of professionals are live 24/7 and are<br/>\r\nready to help you get to your query.</p></div><div id=\"iyptk\"><div id=\"ifd56\"><div id=\"i8jf9\"><img src=\"../public/uploads/20221114/84214fc7d8147f994367bad5e360fb05.png\" id=\"izb5k\"/></div><div id=\"i093w\"></div><div id=\"ih8cs\" class=\"dm-sans\"><p>184 Main Rd E, St Albans, San Francisco,<br/>\r\nUnited States of America.</p></div></div></div><div id=\"iqfkw\"><div id=\"i8b9g\"><div id=\"ip87f\"></div><div id=\"i7yhb\"><img id=\"i4nzf\" src=\"../public/uploads/20221114/d3d95c9685b6785cdaabc5ea207175af.png\"/></div><div id=\"i6op6\" class=\"dm-sans items-center\"><p>+46 963 350 1945, +46 746 346 84663</p></div></div></div><div id=\"i0bic\"><div id=\"iwe8p\"><div id=\"ikkkq\"></div><div id=\"i5le6\"><img id=\"iy44j\" src=\"../public/uploads/20221114/82f880076d18bafc3bdb1fdd7988f547.png\"/></div><div id=\"i3emb\" class=\"items-center\"><p>support@techvill.net</p></div></div></div><div id=\"ispie\" class=\"mt-14\"><div id=\"ieftr\"></div><div id=\"ig3w7\" class=\"dm-bold uppercase\"><p>follow us on</p></div></div><div id=\"ige2g\" class=\"flex gap-5 items-center mt-5\"><a href=\"https://www.youtube.com/\" target=\"_blank\"><img id=\"i0c3t\" src=\"../public/uploads/20221114/4212b4d6425b622bf5391387b5446cea.png\"/></a><a href=\"https://www.pinterest.com/\" target=\"_blank\"><img id=\"i1oew\" src=\"../public/uploads/20221114/b4bf139f125acf287becce5bbb4c96f6.png\"/></a><a href=\"https://www.facebook.com/\" target=\"_blank\"><img id=\"i3d0h\" src=\"../public/uploads/20221114/d509d72e02f0391123fc304d8b4fae99.png\"/></a><a href=\"https://twitter.com/\" target=\"_blank\"><img id=\"i6l6k\" src=\"../public/uploads/20221114/cf2e05536d870bf7dd728006ec4f0293.png\"/></a><a href=\"https://www.messenger.com/\" target=\"_blank\"><img id=\"i3h7a\" src=\"../public/uploads/20221114/c9d20e7377473a90fdcb58637f74c458.png\"/></a><a href=\"https://www.instagram.com/\" target=\"_blank\"><img id=\"iwh9j\" src=\"../public/uploads/20221114/fff0c6e58139ddbfc3c8ff2980db1b1e.png\"/></a></div></div></div></div><img id=\"i77dl\" src=\"../public/uploads/20221114/2e782eb90a0f43efbcd964050fbd8929.png\" class=\"w-full h-full\"/></div></div></body>', NULL, NULL, 'Inactive', 'page', 'default', 0, NULL, '2025-03-16 23:41:50'),
(10, 'الشروط والأحكام', 'terms', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}#iz8k{padding:10px;margin:0 0 10px 0;float:right;position:static;text-align:right;}#iiluk{padding:10px;margin:0 0 15px 0;}@media (max-width: 480px){#izj8l{float:right;}}', '<body><div id=\"iz8k\"><div id=\"iiluk\"><p><strong></strong></p><p><strong id=\"ia7g\"><h3 data-start=\"23\" data-end=\"44\"><strong data-start=\"27\" data-end=\"42\">قبول الشروط</strong></h3>\n<p data-start=\"45\" data-end=\"217\"></p></strong></p><p id=\"iwrk\">من خلال الوصول إلى <em>منصة LawgicAI</em> أو استخدامها، فإنك توافق على الالتزام بهذه الشروط والأحكام. إذا كنت لا توافق على أي جزء من هذه الشروط، يرجى الامتناع عن استخدام المنصة.</p><p></p></div><div id=\"iiluk-2\"><p><strong></strong></p><p><strong id=\"ilq5q\"><h3 data-start=\"219\" data-end=\"243\"><strong data-start=\"223\" data-end=\"241\">استخدام المنصة</strong></h3>\n<p data-start=\"244\" data-end=\"403\"></p></strong></p><p id=\"izj8l\">يُسمح لك باستخدام <em>منصة LawgicAI</em> لأغراض قانونية وبما يتوافق مع جميع القوانين والأنظمة المعمول بها. يُحظر تمامًا أي استخدام غير مصرح به أو غير قانوني للمنصة.</p><p></p></div><div id=\"iiluk-3\"><p><strong></strong></p><p id=\"izazn\"><strong id=\"iahcb\"><h3 data-start=\"405\" data-end=\"430\"><strong data-start=\"409\" data-end=\"428\">الملكية الفكرية</strong></h3>\n<p data-start=\"431\" data-end=\"684\"></p></strong></p><p id=\"ii0nl\">جميع حقوق الملكية الفكرية المتعلقة بـ <em>منصة LawgicAI</em>، بما في ذلك على سبيل المثال لا الحصر البرامج والخوارزميات والتصاميم والعلامات التجارية والمحتوى، مملوكة لنا أو مرخصة لنا. أنت توافق على عدم التعدي على أي من هذه الحقوق أو استخدامها بشكل غير قانوني.</p><p></p></div><div id=\"iiluk-4\"><p><strong></strong></p><p><strong id=\"isbeh\"><h3 data-start=\"686\" data-end=\"711\"><strong data-start=\"690\" data-end=\"709\">خصوصية البيانات</strong></h3>\n<p data-start=\"712\" data-end=\"895\"></p></strong></p><p id=\"itq65\">قد تقوم <em>منصة LawgicAI</em> بجمع ومعالجة بياناتك وفقًا لسياسة الخصوصية الخاصة بنا. من خلال استخدامك للمنصة، فإنك توافق على جمع بياناتك وتخزينها واستخدامها كما هو موضح في سياسة الخصوصية.</p><p></p></div><div id=\"iiluk-5\"><p><strong></strong></p><p id=\"i6lwr\"><strong id=\"ituqr\"><h3 data-start=\"897\" data-end=\"922\"><strong data-start=\"901\" data-end=\"920\">إخلاء المسؤولية</strong></h3>\n<p data-start=\"923\" data-end=\"1073\"></p></strong></p><p id=\"iava5\">يتم تقديم <em>منصة LawgicAI</em> &quot;كما هي&quot; دون أي ضمانات صريحة أو ضمنية. نحن لا نضمن دقة أو موثوقية أو توفر المنصة، ونخلي مسؤوليتنا عن أي أخطاء أو انقطاعات.</p><p></p></div><div id=\"iiluk-6\"><p><strong></strong></p><p><strong id=\"ixlkf\"><h3 data-start=\"1075\" data-end=\"1100\"><strong data-start=\"1079\" data-end=\"1098\">تحديد المسؤولية</strong></h3>\n<p data-start=\"1101\" data-end=\"1308\"></p></strong></p><p id=\"imn42\">لن نكون مسؤولين بأي حال من الأحوال عن أي أضرار مباشرة أو غير مباشرة أو عرضية أو تبعية أو عقابية تنشأ عن استخدامك للمنصة أو تتعلق بها، بما في ذلك أي أضرار ناجمة عن فقدان البيانات أو الأرباح أو توقف الأعمال.</p><p></p></div><div id=\"iiluk-7\"><p><strong></strong></p><p id=\"iz1y9\"><strong id=\"ipioc\"><h3 data-start=\"1310\" data-end=\"1332\"><strong data-start=\"1314\" data-end=\"1330\">تعديل الشروط</strong></h3>\n<p data-start=\"1333\" data-end=\"1536\"></p></strong></p><p id=\"i2ubs\">نحتفظ بالحق في تعديل أو تحديث هذه الشروط والأحكام في أي وقت دون إشعار مسبق. تقع على عاتقك مسؤولية مراجعة الشروط بانتظام. استمرارك في استخدام المنصة بعد إجراء أي تعديلات يعني موافقتك على الشروط المحدثة.</p><p></p></div><div id=\"iiluk-8\"><p><strong></strong></p><p><strong id=\"i98mx\"><h3 data-start=\"1538\" data-end=\"1563\"><strong data-start=\"1542\" data-end=\"1561\">إنهاء الاستخدام</strong></h3>\n<p data-start=\"1564\" data-end=\"1723\"></p></strong></p><p id=\"izkef\">يجوز لنا تعليق أو إنهاء وصولك إلى <em>منصة LawgicAI</em> وفقًا لتقديرنا الخاص ودون إشعار مسبق أو مسؤولية، لأي سبب من الأسباب، بما في ذلك انتهاك هذه الشروط والأحكام.</p><p></p></div><div id=\"iiluk-9\"><p><strong></strong></p><p id=\"iisxb\"><strong id=\"ik08l\"><h3 data-start=\"1725\" data-end=\"1749\"><strong data-start=\"1729\" data-end=\"1747\">القانون الحاكم</strong></h3>\n<p data-start=\"1750\" data-end=\"1914\" data-is-last-node=\"\" data-is-only-node=\"\"></p></strong></p><p id=\"i1k5j\">تخضع هذه الشروط والأحكام وتُفسر وفقًا لأنظمة المملكة العربية السعودية. أي نزاع ينشأ عن هذه الشروط سيتم الفصل فيه من قبل المحاكم المختصة في المملكة العربية السعودية.</p><p></p></div></div></body>', 'Artifism', NULL, 'Active', 'page', 'default', 0, NULL, '2025-03-16 23:52:33'),
(11, 'الصفحة الرئيسية', 'الصفحة-الرئيسية', NULL, '', NULL, NULL, 'Active', 'home', 'default', 1, NULL, '2025-03-15 04:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `unique_code` varchar(191) DEFAULT NULL,
  `sending_details` text NOT NULL,
  `response_raw` text DEFAULT NULL,
  `response` text DEFAULT NULL,
  `gateway` varchar(191) DEFAULT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `total` decimal(16,8) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `controller_path` text NOT NULL,
  `controller_name` varchar(45) NOT NULL,
  `method_name` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `controller_path`, `controller_name`, `method_name`, `created_at`, `updated_at`) VALUES
(5, 'App\\Http\\Controllers\\DashboardController@index', 'App\\Http\\Controllers\\DashboardController', 'DashboardController', 'index', '2025-03-14 23:36:48', NULL),
(6, 'App\\Http\\Controllers\\RoleController@index', 'App\\Http\\Controllers\\RoleController', 'RoleController', 'index', '2025-03-14 23:36:48', NULL),
(7, 'App\\Http\\Controllers\\RoleController@create', 'App\\Http\\Controllers\\RoleController', 'RoleController', 'create', '2025-03-14 23:36:48', NULL),
(8, 'App\\Http\\Controllers\\RoleController@store', 'App\\Http\\Controllers\\RoleController', 'RoleController', 'store', '2025-03-14 23:36:48', NULL),
(9, 'App\\Http\\Controllers\\RoleController@edit', 'App\\Http\\Controllers\\RoleController', 'RoleController', 'edit', '2025-03-14 23:36:48', NULL),
(10, 'App\\Http\\Controllers\\RoleController@update', 'App\\Http\\Controllers\\RoleController', 'RoleController', 'update', '2025-03-14 23:36:48', NULL),
(11, 'App\\Http\\Controllers\\RoleController@destroy', 'App\\Http\\Controllers\\RoleController', 'RoleController', 'destroy', '2025-03-14 23:36:48', NULL),
(12, 'App\\Http\\Controllers\\PermissionRoleController@index', 'App\\Http\\Controllers\\PermissionRoleController', 'PermissionRoleController', 'index', '2025-03-14 23:36:48', NULL),
(13, 'App\\Http\\Controllers\\PermissionRoleController@generatePermission', 'App\\Http\\Controllers\\PermissionRoleController', 'PermissionRoleController', 'generatePermission', '2025-03-14 23:36:48', NULL),
(14, 'App\\Http\\Controllers\\PermissionRoleController@assignPermission', 'App\\Http\\Controllers\\PermissionRoleController', 'PermissionRoleController', 'assignPermission', '2025-03-14 23:36:48', NULL),
(15, 'App\\Http\\Controllers\\UserController@index', 'App\\Http\\Controllers\\UserController', 'UserController', 'index', '2025-03-14 23:36:48', NULL),
(16, 'App\\Http\\Controllers\\UserController@create', 'App\\Http\\Controllers\\UserController', 'UserController', 'create', '2025-03-14 23:36:48', NULL),
(17, 'App\\Http\\Controllers\\UserController@store', 'App\\Http\\Controllers\\UserController', 'UserController', 'store', '2025-03-14 23:36:48', NULL),
(18, 'App\\Http\\Controllers\\UserController@edit', 'App\\Http\\Controllers\\UserController', 'UserController', 'edit', '2025-03-14 23:36:48', NULL),
(19, 'App\\Http\\Controllers\\UserController@updatePassword', 'App\\Http\\Controllers\\UserController', 'UserController', 'updatePassword', '2025-03-14 23:36:48', NULL),
(20, 'App\\Http\\Controllers\\UserController@update', 'App\\Http\\Controllers\\UserController', 'UserController', 'update', '2025-03-14 23:36:48', NULL),
(21, 'App\\Http\\Controllers\\UserController@destroy', 'App\\Http\\Controllers\\UserController', 'UserController', 'destroy', '2025-03-14 23:36:48', NULL),
(22, 'App\\Http\\Controllers\\UserController@pdf', 'App\\Http\\Controllers\\UserController', 'UserController', 'pdf', '2025-03-14 23:36:48', NULL),
(23, 'App\\Http\\Controllers\\UserController@csv', 'App\\Http\\Controllers\\UserController', 'UserController', 'csv', '2025-03-14 23:36:48', NULL),
(24, 'App\\Http\\Controllers\\MailTemplateController@index', 'App\\Http\\Controllers\\MailTemplateController', 'MailTemplateController', 'index', '2025-03-14 23:36:48', NULL),
(25, 'App\\Http\\Controllers\\MailTemplateController@create', 'App\\Http\\Controllers\\MailTemplateController', 'MailTemplateController', 'create', '2025-03-14 23:36:48', NULL),
(26, 'App\\Http\\Controllers\\MailTemplateController@store', 'App\\Http\\Controllers\\MailTemplateController', 'MailTemplateController', 'store', '2025-03-14 23:36:48', NULL),
(27, 'App\\Http\\Controllers\\MailTemplateController@edit', 'App\\Http\\Controllers\\MailTemplateController', 'MailTemplateController', 'edit', '2025-03-14 23:36:48', NULL),
(28, 'App\\Http\\Controllers\\MailTemplateController@update', 'App\\Http\\Controllers\\MailTemplateController', 'MailTemplateController', 'update', '2025-03-14 23:36:48', NULL),
(29, 'App\\Http\\Controllers\\MailTemplateController@destroy', 'App\\Http\\Controllers\\MailTemplateController', 'MailTemplateController', 'destroy', '2025-03-14 23:36:48', NULL),
(30, 'App\\Http\\Controllers\\PreferenceController@index', 'App\\Http\\Controllers\\PreferenceController', 'PreferenceController', 'index', '2025-03-14 23:36:48', NULL),
(31, 'App\\Http\\Controllers\\EmailConfigurationController@index', 'App\\Http\\Controllers\\EmailConfigurationController', 'EmailConfigurationController', 'index', '2025-03-14 23:36:48', NULL),
(32, 'App\\Http\\Controllers\\CompanySettingController@index', 'App\\Http\\Controllers\\CompanySettingController', 'CompanySettingController', 'index', '2025-03-14 23:36:48', NULL),
(33, 'App\\Http\\Controllers\\LanguageController@translation', 'App\\Http\\Controllers\\LanguageController', 'LanguageController', 'translation', '2025-03-14 23:36:48', NULL),
(34, 'App\\Http\\Controllers\\LanguageController@index', 'App\\Http\\Controllers\\LanguageController', 'LanguageController', 'index', '2025-03-14 23:36:48', NULL),
(35, 'App\\Http\\Controllers\\LanguageController@store', 'App\\Http\\Controllers\\LanguageController', 'LanguageController', 'store', '2025-03-14 23:36:48', NULL),
(36, 'App\\Http\\Controllers\\LanguageController@edit', 'App\\Http\\Controllers\\LanguageController', 'LanguageController', 'edit', '2025-03-14 23:36:48', NULL),
(37, 'App\\Http\\Controllers\\LanguageController@update', 'App\\Http\\Controllers\\LanguageController', 'LanguageController', 'update', '2025-03-14 23:36:48', NULL),
(38, 'App\\Http\\Controllers\\LanguageController@translationStore', 'App\\Http\\Controllers\\LanguageController', 'LanguageController', 'translationStore', '2025-03-14 23:36:48', NULL),
(39, 'App\\Http\\Controllers\\DashboardController@switchLanguage', 'App\\Http\\Controllers\\DashboardController', 'DashboardController', 'switchLanguage', '2025-03-14 23:36:48', NULL),
(45, 'App\\Http\\Controllers\\UserController@verification', 'App\\Http\\Controllers\\UserController', 'UserController', 'verification', '2025-03-14 23:36:48', NULL),
(46, 'App\\Http\\Controllers\\UserController@updateProfile', 'App\\Http\\Controllers\\UserController', 'UserController', 'updateProfile', '2025-03-14 23:36:48', NULL),
(47, 'App\\Http\\Controllers\\UserController@profile', 'App\\Http\\Controllers\\UserController', 'UserController', 'profile', '2025-03-14 23:36:48', NULL),
(48, 'App\\Http\\Controllers\\UserController@updateProfilePassword', 'App\\Http\\Controllers\\UserController', 'UserController', 'updateProfilePassword', '2025-03-14 23:36:48', NULL),
(49, 'App\\Http\\Controllers\\SsoController@index', 'App\\Http\\Controllers\\SsoController', 'SsoController', 'index', '2025-03-14 23:36:48', NULL),
(50, 'App\\Http\\Controllers\\MaintenanceModeController@enable', 'App\\Http\\Controllers\\MaintenanceModeController', 'MaintenanceModeController', 'enable', '2025-03-14 23:36:48', NULL),
(52, 'App\\Http\\Controllers\\Site\\LoginController@authenticate', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'authenticate', '2025-03-14 23:36:48', NULL),
(55, 'App\\Http\\Controllers\\Site\\LoginController@logout', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'logout', '2025-03-14 23:36:48', NULL),
(56, 'App\\Http\\Controllers\\Site\\LoginController@redirectToGoogle', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'redirectToGoogle', '2025-03-14 23:36:48', NULL),
(57, 'App\\Http\\Controllers\\Site\\LoginController@handelGoogleCallback', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'handelGoogleCallback', '2025-03-14 23:36:48', NULL),
(58, 'App\\Http\\Controllers\\Site\\LoginController@redirectToFacebook', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'redirectToFacebook', '2025-03-14 23:36:48', NULL),
(59, 'App\\Http\\Controllers\\Site\\LoginController@handelFacebookCallback', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'handelFacebookCallback', '2025-03-14 23:36:48', NULL),
(67, 'Modules\\Blog\\Http\\Controllers\\BlogCategoryController@index', 'Modules\\Blog\\Http\\Controllers\\BlogCategoryController', 'BlogCategoryController', 'index', '2025-03-14 23:36:48', NULL),
(68, 'Modules\\Blog\\Http\\Controllers\\BlogCategoryController@delete', 'Modules\\Blog\\Http\\Controllers\\BlogCategoryController', 'BlogCategoryController', 'delete', '2025-03-14 23:36:48', NULL),
(69, 'Modules\\Blog\\Http\\Controllers\\BlogController@index', 'Modules\\Blog\\Http\\Controllers\\BlogController', 'BlogController', 'index', '2025-03-14 23:36:48', NULL),
(70, 'Modules\\Blog\\Http\\Controllers\\BlogController@create', 'Modules\\Blog\\Http\\Controllers\\BlogController', 'BlogController', 'create', '2025-03-14 23:36:48', NULL),
(71, 'Modules\\Blog\\Http\\Controllers\\BlogController@edit', 'Modules\\Blog\\Http\\Controllers\\BlogController', 'BlogController', 'edit', '2025-03-14 23:36:48', NULL),
(72, 'Modules\\Blog\\Http\\Controllers\\BlogController@delete', 'Modules\\Blog\\Http\\Controllers\\BlogController', 'BlogController', 'delete', '2025-03-14 23:36:48', NULL),
(73, 'Modules\\CMS\\Http\\Controllers\\CMSController@index', 'Modules\\CMS\\Http\\Controllers\\CMSController', 'CMSController', 'index', '2025-03-14 23:36:48', NULL),
(74, 'Modules\\CMS\\Http\\Controllers\\CMSController@create', 'Modules\\CMS\\Http\\Controllers\\CMSController', 'CMSController', 'create', '2025-03-14 23:36:48', NULL),
(75, 'Modules\\CMS\\Http\\Controllers\\CMSController@edit', 'Modules\\CMS\\Http\\Controllers\\CMSController', 'CMSController', 'edit', '2025-03-14 23:36:48', NULL),
(76, 'Modules\\CMS\\Http\\Controllers\\CMSController@delete', 'Modules\\CMS\\Http\\Controllers\\CMSController', 'CMSController', 'delete', '2025-03-14 23:36:48', NULL),
(79, 'App\\Http\\Controllers\\Site\\SiteController@page', 'App\\Http\\Controllers\\Site\\SiteController', 'SiteController', 'page', '2025-03-14 23:36:48', NULL),
(80, 'Modules\\Blog\\Http\\Controllers\\BlogCategoryController@store', 'Modules\\Blog\\Http\\Controllers\\BlogCategoryController', 'BlogCategoryController', 'store', '2025-03-14 23:36:48', NULL),
(81, 'Modules\\Blog\\Http\\Controllers\\BlogCategoryController@update', 'Modules\\Blog\\Http\\Controllers\\BlogCategoryController', 'BlogCategoryController', 'update', '2025-03-14 23:36:48', NULL),
(82, 'Modules\\Blog\\Http\\Controllers\\BlogController@store', 'Modules\\Blog\\Http\\Controllers\\BlogController', 'BlogController', 'store', '2025-03-14 23:36:48', NULL),
(83, 'Modules\\Blog\\Http\\Controllers\\BlogController@update', 'Modules\\Blog\\Http\\Controllers\\BlogController', 'BlogController', 'update', '2025-03-14 23:36:48', NULL),
(84, 'Modules\\CMS\\Http\\Controllers\\CMSController@store', 'Modules\\CMS\\Http\\Controllers\\CMSController', 'CMSController', 'store', '2025-03-14 23:36:48', NULL),
(85, 'Modules\\CMS\\Http\\Controllers\\CMSController@update', 'Modules\\CMS\\Http\\Controllers\\CMSController', 'CMSController', 'update', '2025-03-14 23:36:48', NULL),
(86, 'Modules\\MenuBuilder\\Http\\Controllers\\MenuBuilderController@index', 'Modules\\MenuBuilder\\Http\\Controllers\\MenuBuilderController', 'MenuBuilderController', 'index', '2025-03-14 23:36:48', NULL),
(87, 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController@createNewMenu', 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController', 'MenuController', 'createNewMenu', '2025-03-14 23:36:48', NULL),
(88, 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController@delete', 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController', 'MenuController', 'delete', '2025-03-14 23:36:48', NULL),
(89, 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController@addCustomMenu', 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController', 'MenuController', 'addCustomMenu', '2025-03-14 23:36:48', NULL),
(90, 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController@update', 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController', 'MenuController', 'update', '2025-03-14 23:36:48', NULL),
(91, 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController@generateMenuControl', 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController', 'MenuController', 'generateMenuControl', '2025-03-14 23:36:48', NULL),
(92, 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController@deleteMenu', 'Modules\\MenuBuilder\\Http\\Controllers\\MenuController', 'MenuController', 'deleteMenu', '2025-03-14 23:36:48', NULL),
(94, 'App\\Http\\Controllers\\AddonsMangerController@index', 'App\\Http\\Controllers\\AddonsMangerController', 'AddonsMangerController', 'index', '2025-03-14 23:36:48', NULL),
(95, 'Modules\\CMS\\Http\\Controllers\\ThemeOptionController@list', 'Modules\\CMS\\Http\\Controllers\\ThemeOptionController', 'ThemeOptionController', 'list', '2025-03-14 23:36:48', NULL),
(96, 'Modules\\CMS\\Http\\Controllers\\ThemeOptionController@store', 'Modules\\CMS\\Http\\Controllers\\ThemeOptionController', 'ThemeOptionController', 'store', '2025-03-14 23:36:48', NULL),
(97, 'App\\Http\\Controllers\\PreferenceController@password', 'App\\Http\\Controllers\\PreferenceController', 'PreferenceController', 'password', '2025-03-14 23:36:48', NULL),
(98, 'App\\Http\\Controllers\\Site\\LoginController@showResetForm', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'showResetForm', '2025-03-14 23:36:48', NULL),
(99, 'App\\Http\\Controllers\\Site\\LoginController@setPassword', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'setPassword', '2025-03-14 23:36:48', NULL),
(100, 'App\\Http\\Controllers\\Site\\LoginController@sendResetLinkEmail', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'sendResetLinkEmail', '2025-03-14 23:36:48', NULL),
(101, 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController@create', 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController', 'MediaManagerController', 'create', '2025-03-14 23:36:48', NULL),
(102, 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController@store', 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController', 'MediaManagerController', 'store', '2025-03-14 23:36:48', NULL),
(103, 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController@upload', 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController', 'MediaManagerController', 'upload', '2025-03-14 23:36:48', NULL),
(104, 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController@uploadedFiles', 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController', 'MediaManagerController', 'uploadedFiles', '2025-03-14 23:36:48', NULL),
(105, 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController@sortFiles', 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController', 'MediaManagerController', 'sortFiles', '2025-03-14 23:36:48', NULL),
(106, 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController@paginateFiles', 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController', 'MediaManagerController', 'paginateFiles', '2025-03-14 23:36:48', NULL),
(107, 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController@download', 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController', 'MediaManagerController', 'download', '2025-03-14 23:36:48', NULL),
(108, 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController@paginateData', 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController', 'MediaManagerController', 'paginateData', '2025-03-14 23:36:48', NULL),
(109, 'Modules\\Report\\Http\\Controllers\\ReportController@index', 'Modules\\Report\\Http\\Controllers\\ReportController', 'ReportController', 'index', '2025-03-14 23:36:48', NULL),
(110, 'Modules\\CMS\\Http\\Controllers\\BuilderController@edit', 'Modules\\CMS\\Http\\Controllers\\BuilderController', 'BuilderController', 'edit', '2025-03-14 23:36:48', NULL),
(111, 'Modules\\CMS\\Http\\Controllers\\BuilderController@editElement', 'Modules\\CMS\\Http\\Controllers\\BuilderController', 'BuilderController', 'editElement', '2025-03-14 23:36:48', NULL),
(112, 'Modules\\CMS\\Http\\Controllers\\BuilderController@updateComponent', 'Modules\\CMS\\Http\\Controllers\\BuilderController', 'BuilderController', 'updateComponent', '2025-03-14 23:36:48', NULL),
(113, 'Modules\\CMS\\Http\\Controllers\\BuilderController@deleteComponent', 'Modules\\CMS\\Http\\Controllers\\BuilderController', 'BuilderController', 'deleteComponent', '2025-03-14 23:36:48', NULL),
(117, 'App\\Http\\Controllers\\EmailController@emailVerifySetting', 'App\\Http\\Controllers\\EmailController', 'EmailController', 'emailVerifySetting', '2025-03-14 23:36:48', NULL),
(119, 'App\\Http\\Controllers\\Site\\LoginController@resetOtp', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'resetOtp', '2025-03-14 23:36:48', NULL),
(135, 'App\\Http\\Controllers\\Site\\LoginController@emailSignup', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'emailSignup', '2025-03-14 23:36:48', NULL),
(138, 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController@deleteImage', 'Modules\\MediaManager\\Http\\Controllers\\MediaManagerController', 'MediaManagerController', 'deleteImage', '2025-03-14 23:36:48', NULL),
(139, 'Modules\\GeoLocale\\Http\\Controllers\\GeoLocaleController@index', 'Modules\\GeoLocale\\Http\\Controllers\\GeoLocaleController', 'GeoLocaleController', 'index', '2025-03-14 23:36:48', NULL),
(140, 'Modules\\GeoLocale\\Http\\Controllers\\CountryController@index', 'Modules\\GeoLocale\\Http\\Controllers\\CountryController', 'CountryController', 'index', '2025-03-14 23:36:48', NULL),
(141, 'Modules\\GeoLocale\\Http\\Controllers\\CountryController@show', 'Modules\\GeoLocale\\Http\\Controllers\\CountryController', 'CountryController', 'show', '2025-03-14 23:36:48', NULL),
(142, 'Modules\\GeoLocale\\Http\\Controllers\\CountryController@store', 'Modules\\GeoLocale\\Http\\Controllers\\CountryController', 'CountryController', 'store', '2025-03-14 23:36:48', NULL),
(143, 'Modules\\GeoLocale\\Http\\Controllers\\CountryController@update', 'Modules\\GeoLocale\\Http\\Controllers\\CountryController', 'CountryController', 'update', '2025-03-14 23:36:48', NULL),
(144, 'Modules\\GeoLocale\\Http\\Controllers\\CountryController@destroy', 'Modules\\GeoLocale\\Http\\Controllers\\CountryController', 'CountryController', 'destroy', '2025-03-14 23:36:48', NULL),
(145, 'Modules\\GeoLocale\\Http\\Controllers\\StateController@index', 'Modules\\GeoLocale\\Http\\Controllers\\StateController', 'StateController', 'index', '2025-03-14 23:36:48', NULL),
(146, 'Modules\\GeoLocale\\Http\\Controllers\\StateController@show', 'Modules\\GeoLocale\\Http\\Controllers\\StateController', 'StateController', 'show', '2025-03-14 23:36:48', NULL),
(147, 'Modules\\GeoLocale\\Http\\Controllers\\StateController@getCountryStates', 'Modules\\GeoLocale\\Http\\Controllers\\StateController', 'StateController', 'getCountryStates', '2025-03-14 23:36:48', NULL),
(148, 'Modules\\GeoLocale\\Http\\Controllers\\StateController@store', 'Modules\\GeoLocale\\Http\\Controllers\\StateController', 'StateController', 'store', '2025-03-14 23:36:48', NULL),
(149, 'Modules\\GeoLocale\\Http\\Controllers\\StateController@update', 'Modules\\GeoLocale\\Http\\Controllers\\StateController', 'StateController', 'update', '2025-03-14 23:36:48', NULL),
(150, 'Modules\\GeoLocale\\Http\\Controllers\\StateController@destroy', 'Modules\\GeoLocale\\Http\\Controllers\\StateController', 'StateController', 'destroy', '2025-03-14 23:36:48', NULL),
(151, 'Modules\\GeoLocale\\Http\\Controllers\\CityController@getCountryCities', 'Modules\\GeoLocale\\Http\\Controllers\\CityController', 'CityController', 'getCountryCities', '2025-03-14 23:36:48', NULL),
(152, 'Modules\\GeoLocale\\Http\\Controllers\\CityController@getStateCities', 'Modules\\GeoLocale\\Http\\Controllers\\CityController', 'CityController', 'getStateCities', '2025-03-14 23:36:48', NULL),
(153, 'Modules\\GeoLocale\\Http\\Controllers\\CityController@store', 'Modules\\GeoLocale\\Http\\Controllers\\CityController', 'CityController', 'store', '2025-03-14 23:36:48', NULL),
(154, 'Modules\\GeoLocale\\Http\\Controllers\\CityController@update', 'Modules\\GeoLocale\\Http\\Controllers\\CityController', 'CityController', 'update', '2025-03-14 23:36:48', NULL),
(155, 'Modules\\GeoLocale\\Http\\Controllers\\CityController@destroy', 'Modules\\GeoLocale\\Http\\Controllers\\CityController', 'CityController', 'destroy', '2025-03-14 23:36:48', NULL),
(159, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController@index', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController', 'CountryController', 'index', '2025-03-14 23:36:48', NULL),
(160, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController@show', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController', 'CountryController', 'show', '2025-03-14 23:36:48', NULL),
(161, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController@store', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController', 'CountryController', 'store', '2025-03-14 23:36:48', NULL),
(162, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController@update', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController', 'CountryController', 'update', '2025-03-14 23:36:48', NULL),
(163, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController@destroy', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CountryController', 'CountryController', 'destroy', '2025-03-14 23:36:48', NULL),
(164, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController@index', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController', 'StateController', 'index', '2025-03-14 23:36:48', NULL),
(165, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController@show', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController', 'StateController', 'show', '2025-03-14 23:36:48', NULL),
(166, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController@getCountryStates', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController', 'StateController', 'getCountryStates', '2025-03-14 23:36:48', NULL),
(167, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController@store', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController', 'StateController', 'store', '2025-03-14 23:36:48', NULL),
(168, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController@update', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController', 'StateController', 'update', '2025-03-14 23:36:48', NULL),
(169, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController@destroy', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\StateController', 'StateController', 'destroy', '2025-03-14 23:36:48', NULL),
(170, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController@getCountryCities', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController', 'CityController', 'getCountryCities', '2025-03-14 23:36:48', NULL),
(171, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController@getStateCities', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController', 'CityController', 'getStateCities', '2025-03-14 23:36:48', NULL),
(172, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController@store', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController', 'CityController', 'store', '2025-03-14 23:36:48', NULL),
(173, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController@update', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController', 'CityController', 'update', '2025-03-14 23:36:48', NULL),
(174, 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController@destroy', 'Modules\\GeoLocale\\Http\\Controllers\\Api\\User\\CityController', 'CityController', 'destroy', '2025-03-14 23:36:48', NULL),
(175, 'Modules\\CMS\\Http\\Controllers\\BuilderController@updateAllComponents', 'Modules\\CMS\\Http\\Controllers\\BuilderController', 'BuilderController', 'updateAllComponents', '2025-03-14 23:36:48', NULL),
(176, 'Infoamin\\Installer\\Http\\Controllers\\WelcomeController@welcome', 'Infoamin\\Installer\\Http\\Controllers\\WelcomeController', 'WelcomeController', 'welcome', '2025-03-14 23:36:48', NULL),
(177, 'Infoamin\\Installer\\Http\\Controllers\\DatabaseController@create', 'Infoamin\\Installer\\Http\\Controllers\\DatabaseController', 'DatabaseController', 'create', '2025-03-14 23:36:48', NULL),
(178, 'Infoamin\\Installer\\Http\\Controllers\\RequirementsController@requirements', 'Infoamin\\Installer\\Http\\Controllers\\RequirementsController', 'RequirementsController', 'requirements', '2025-03-14 23:36:48', NULL),
(179, 'Infoamin\\Installer\\Http\\Controllers\\PermissionsController@checkPermissions', 'Infoamin\\Installer\\Http\\Controllers\\PermissionsController', 'PermissionsController', 'checkPermissions', '2025-03-14 23:36:48', NULL),
(180, 'Infoamin\\Installer\\Http\\Controllers\\DatabaseController@seedMigrate', 'Infoamin\\Installer\\Http\\Controllers\\DatabaseController', 'DatabaseController', 'seedMigrate', '2025-03-14 23:36:48', NULL),
(181, 'Infoamin\\Installer\\Http\\Controllers\\PermissionsController@verifyPurchaseCode', 'Infoamin\\Installer\\Http\\Controllers\\PermissionsController', 'PermissionsController', 'verifyPurchaseCode', '2025-03-14 23:36:48', NULL),
(182, 'Infoamin\\Installer\\Http\\Controllers\\DatabaseController@store', 'Infoamin\\Installer\\Http\\Controllers\\DatabaseController', 'DatabaseController', 'store', '2025-03-14 23:36:48', NULL),
(183, 'Infoamin\\Installer\\Http\\Controllers\\UserController@createUser', 'Infoamin\\Installer\\Http\\Controllers\\UserController', 'UserController', 'createUser', '2025-03-14 23:36:48', NULL),
(184, 'Infoamin\\Installer\\Http\\Controllers\\UserController@storeUser', 'Infoamin\\Installer\\Http\\Controllers\\UserController', 'UserController', 'storeUser', '2025-03-14 23:36:48', NULL),
(185, 'Infoamin\\Installer\\Http\\Controllers\\FinalController@finish', 'Infoamin\\Installer\\Http\\Controllers\\FinalController', 'FinalController', 'finish', '2025-03-14 23:36:48', NULL),
(186, 'Infoamin\\Installer\\Http\\Controllers\\PermissionsController@clearCache', 'Infoamin\\Installer\\Http\\Controllers\\PermissionsController', 'PermissionsController', 'clearCache', '2025-03-14 23:36:48', NULL),
(188, 'Modules\\Addons\\Http\\Controllers\\AddonsController@upload', 'Modules\\Addons\\Http\\Controllers\\AddonsController', 'AddonsController', 'upload', '2025-03-14 23:36:48', NULL),
(189, 'Modules\\Addons\\Http\\Controllers\\AddonsController@switchStatus', 'Modules\\Addons\\Http\\Controllers\\AddonsController', 'AddonsController', 'switchStatus', '2025-03-14 23:36:48', NULL),
(190, 'App\\Http\\Controllers\\UserController@findUser', 'App\\Http\\Controllers\\UserController', 'UserController', 'findUser', '2025-03-14 23:36:48', NULL),
(191, 'Modules\\PageBuilder\\Http\\Controllers\\PageBuilderController@index', 'Modules\\PageBuilder\\Http\\Controllers\\PageBuilderController', 'PageBuilderController', 'index', '2025-03-14 23:36:48', NULL),
(192, 'Modules\\PageBuilder\\Http\\Controllers\\PageBuilderController@store', 'Modules\\PageBuilder\\Http\\Controllers\\PageBuilderController', 'PageBuilderController', 'store', '2025-03-14 23:36:48', NULL),
(193, 'Modules\\PageBuilder\\Http\\Controllers\\PageBuilderController@storeImage', 'Modules\\PageBuilder\\Http\\Controllers\\PageBuilderController', 'PageBuilderController', 'storeImage', '2025-03-14 23:36:48', NULL),
(194, 'App\\Http\\Controllers\\AccountSettingController@index', 'App\\Http\\Controllers\\AccountSettingController', 'AccountSettingController', 'index', '2025-03-14 23:36:48', NULL),
(195, 'App\\Http\\Controllers\\UserController@allUserActivity', 'App\\Http\\Controllers\\UserController', 'UserController', 'allUserActivity', '2025-03-14 23:36:48', NULL),
(196, 'App\\Http\\Controllers\\UserController@deleteUserActivity', 'App\\Http\\Controllers\\UserController', 'UserController', 'deleteUserActivity', '2025-03-14 23:36:48', NULL),
(202, 'Modules\\CMS\\Http\\Controllers\\BuilderController@ajaxResourceFetch', 'Modules\\CMS\\Http\\Controllers\\BuilderController', 'BuilderController', 'ajaxResourceFetch', '2025-03-14 23:36:48', NULL),
(203, 'Modules\\GeoLocale\\Http\\Controllers\\CountryController@search', 'Modules\\GeoLocale\\Http\\Controllers\\CountryController', 'CountryController', 'search', '2025-03-14 23:36:48', NULL),
(204, 'Modules\\GeoLocale\\Http\\Controllers\\StateController@search', 'Modules\\GeoLocale\\Http\\Controllers\\StateController', 'StateController', 'search', '2025-03-14 23:36:48', NULL),
(205, 'App\\Http\\Controllers\\BatchController@destroy', 'App\\Http\\Controllers\\BatchController', 'BatchController', 'destroy', '2025-03-14 23:36:48', NULL),
(206, 'App\\Http\\Controllers\\SystemInfoController@index', 'App\\Http\\Controllers\\SystemInfoController', 'SystemInfoController', 'index', '2025-03-14 23:36:48', NULL),
(207, 'Modules\\Subscription\\Http\\Controllers\\PackageController@index', 'Modules\\Subscription\\Http\\Controllers\\PackageController', 'PackageController', 'index', '2025-03-14 23:36:48', NULL),
(208, 'Modules\\Subscription\\Http\\Controllers\\PackageController@create', 'Modules\\Subscription\\Http\\Controllers\\PackageController', 'PackageController', 'create', '2025-03-14 23:36:48', NULL),
(209, 'Modules\\Subscription\\Http\\Controllers\\PackageController@store', 'Modules\\Subscription\\Http\\Controllers\\PackageController', 'PackageController', 'store', '2025-03-14 23:36:48', NULL),
(211, 'Modules\\Subscription\\Http\\Controllers\\PackageController@edit', 'Modules\\Subscription\\Http\\Controllers\\PackageController', 'PackageController', 'edit', '2025-03-14 23:36:48', NULL),
(212, 'Modules\\Subscription\\Http\\Controllers\\PackageController@update', 'Modules\\Subscription\\Http\\Controllers\\PackageController', 'PackageController', 'update', '2025-03-14 23:36:48', NULL),
(213, 'Modules\\Subscription\\Http\\Controllers\\PackageController@destroy', 'Modules\\Subscription\\Http\\Controllers\\PackageController', 'PackageController', 'destroy', '2025-03-14 23:36:48', NULL),
(214, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@index', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'index', '2025-03-14 23:36:48', NULL),
(215, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@create', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'create', '2025-03-14 23:36:48', NULL),
(216, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@store', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'store', '2025-03-14 23:36:48', NULL),
(217, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@show', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'show', '2025-03-14 23:36:48', NULL),
(218, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@edit', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'edit', '2025-03-14 23:36:48', NULL),
(219, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@update', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'update', '2025-03-14 23:36:48', NULL),
(220, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@destroy', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'destroy', '2025-03-14 23:36:48', NULL),
(221, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@setting', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'setting', '2025-03-14 23:36:48', NULL),
(222, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@payment', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'payment', '2025-03-14 23:36:48', NULL),
(223, 'Laravel\\Passport\\Http\\Controllers\\AccessTokenController@issueToken', 'Laravel\\Passport\\Http\\Controllers\\AccessTokenController', 'AccessTokenController', 'issueToken', '2025-03-14 23:36:48', NULL),
(224, 'Laravel\\Passport\\Http\\Controllers\\AuthorizationController@authorize', 'Laravel\\Passport\\Http\\Controllers\\AuthorizationController', 'AuthorizationController', 'authorize', '2025-03-14 23:36:48', NULL),
(225, 'Laravel\\Passport\\Http\\Controllers\\TransientTokenController@refresh', 'Laravel\\Passport\\Http\\Controllers\\TransientTokenController', 'TransientTokenController', 'refresh', '2025-03-14 23:36:48', NULL),
(226, 'Laravel\\Passport\\Http\\Controllers\\ApproveAuthorizationController@approve', 'Laravel\\Passport\\Http\\Controllers\\ApproveAuthorizationController', 'ApproveAuthorizationController', 'approve', '2025-03-14 23:36:48', NULL),
(227, 'Laravel\\Passport\\Http\\Controllers\\DenyAuthorizationController@deny', 'Laravel\\Passport\\Http\\Controllers\\DenyAuthorizationController', 'DenyAuthorizationController', 'deny', '2025-03-14 23:36:48', NULL),
(228, 'Laravel\\Passport\\Http\\Controllers\\AuthorizedAccessTokenController@forUser', 'Laravel\\Passport\\Http\\Controllers\\AuthorizedAccessTokenController', 'AuthorizedAccessTokenController', 'forUser', '2025-03-14 23:36:48', NULL),
(229, 'Laravel\\Passport\\Http\\Controllers\\AuthorizedAccessTokenController@destroy', 'Laravel\\Passport\\Http\\Controllers\\AuthorizedAccessTokenController', 'AuthorizedAccessTokenController', 'destroy', '2025-03-14 23:36:48', NULL),
(230, 'Laravel\\Passport\\Http\\Controllers\\ClientController@forUser', 'Laravel\\Passport\\Http\\Controllers\\ClientController', 'ClientController', 'forUser', '2025-03-14 23:36:48', NULL),
(231, 'Laravel\\Passport\\Http\\Controllers\\ClientController@store', 'Laravel\\Passport\\Http\\Controllers\\ClientController', 'ClientController', 'store', '2025-03-14 23:36:48', NULL),
(232, 'Laravel\\Passport\\Http\\Controllers\\ClientController@update', 'Laravel\\Passport\\Http\\Controllers\\ClientController', 'ClientController', 'update', '2025-03-14 23:36:48', NULL),
(233, 'Laravel\\Passport\\Http\\Controllers\\ClientController@destroy', 'Laravel\\Passport\\Http\\Controllers\\ClientController', 'ClientController', 'destroy', '2025-03-14 23:36:48', NULL),
(234, 'Laravel\\Passport\\Http\\Controllers\\ScopeController@all', 'Laravel\\Passport\\Http\\Controllers\\ScopeController', 'ScopeController', 'all', '2025-03-14 23:36:48', NULL),
(235, 'Laravel\\Passport\\Http\\Controllers\\PersonalAccessTokenController@forUser', 'Laravel\\Passport\\Http\\Controllers\\PersonalAccessTokenController', 'PersonalAccessTokenController', 'forUser', '2025-03-14 23:36:48', NULL),
(236, 'Laravel\\Passport\\Http\\Controllers\\PersonalAccessTokenController@store', 'Laravel\\Passport\\Http\\Controllers\\PersonalAccessTokenController', 'PersonalAccessTokenController', 'store', '2025-03-14 23:36:48', NULL),
(237, 'Laravel\\Passport\\Http\\Controllers\\PersonalAccessTokenController@destroy', 'Laravel\\Passport\\Http\\Controllers\\PersonalAccessTokenController', 'PersonalAccessTokenController', 'destroy', '2025-03-14 23:36:48', NULL),
(238, 'Livewire\\Controllers\\FileUploadHandler@handle', 'Livewire\\Controllers\\FileUploadHandler', 'FileUploadHandler', 'handle', '2025-03-14 23:36:48', NULL),
(239, 'Livewire\\Controllers\\FilePreviewHandler@handle', 'Livewire\\Controllers\\FilePreviewHandler', 'FilePreviewHandler', 'handle', '2025-03-14 23:36:48', NULL),
(240, 'Livewire\\Controllers\\LivewireJavaScriptAssets@source', 'Livewire\\Controllers\\LivewireJavaScriptAssets', 'LivewireJavaScriptAssets', 'source', '2025-03-14 23:36:48', NULL),
(241, 'Livewire\\Controllers\\LivewireJavaScriptAssets@maps', 'Livewire\\Controllers\\LivewireJavaScriptAssets', 'LivewireJavaScriptAssets', 'maps', '2025-03-14 23:36:48', NULL),
(251, 'App\\Http\\Controllers\\DashboardController@salesOfTheMonth', 'App\\Http\\Controllers\\DashboardController', 'DashboardController', 'salesOfTheMonth', '2025-03-14 23:36:48', NULL),
(252, 'App\\Http\\Controllers\\DashboardController@latestRegistration', 'App\\Http\\Controllers\\DashboardController', 'DashboardController', 'latestRegistration', '2025-03-14 23:36:48', NULL),
(253, 'App\\Http\\Controllers\\DashboardController@latestTransaction', 'App\\Http\\Controllers\\DashboardController', 'DashboardController', 'latestTransaction', '2025-03-14 23:36:48', NULL),
(255, 'App\\Http\\Controllers\\LanguageController@destroy', 'App\\Http\\Controllers\\LanguageController', 'LanguageController', 'destroy', '2025-03-14 23:36:48', NULL),
(256, 'Modules\\AuthorizeNet\\Http\\Controllers\\AuthorizeNetController@store', 'Modules\\AuthorizeNet\\Http\\Controllers\\AuthorizeNetController', 'AuthorizeNetController', 'store', '2025-03-14 23:36:48', NULL),
(257, 'Modules\\AuthorizeNet\\Http\\Controllers\\AuthorizeNetController@edit', 'Modules\\AuthorizeNet\\Http\\Controllers\\AuthorizeNetController', 'AuthorizeNetController', 'edit', '2025-03-14 23:36:48', NULL),
(260, 'Modules\\CheckPayments\\Http\\Controllers\\CheckPaymentsController@store', 'Modules\\CheckPayments\\Http\\Controllers\\CheckPaymentsController', 'CheckPaymentsController', 'store', '2025-03-14 23:36:48', NULL),
(261, 'Modules\\CheckPayments\\Http\\Controllers\\CheckPaymentsController@edit', 'Modules\\CheckPayments\\Http\\Controllers\\CheckPaymentsController', 'CheckPaymentsController', 'edit', '2025-03-14 23:36:48', NULL),
(262, 'Modules\\Coinbase\\Http\\Controllers\\CoinbaseController@store', 'Modules\\Coinbase\\Http\\Controllers\\CoinbaseController', 'CoinbaseController', 'store', '2025-03-14 23:36:48', NULL),
(263, 'Modules\\Coinbase\\Http\\Controllers\\CoinbaseController@edit', 'Modules\\Coinbase\\Http\\Controllers\\CoinbaseController', 'CoinbaseController', 'edit', '2025-03-14 23:36:48', NULL),
(264, 'Modules\\Coinpayment\\Http\\Controllers\\CoinpaymentController@store', 'Modules\\Coinpayment\\Http\\Controllers\\CoinpaymentController', 'CoinpaymentController', 'store', '2025-03-14 23:36:48', NULL),
(265, 'Modules\\Coinpayment\\Http\\Controllers\\CoinpaymentController@edit', 'Modules\\Coinpayment\\Http\\Controllers\\CoinpaymentController', 'CoinpaymentController', 'edit', '2025-03-14 23:36:48', NULL),
(266, 'Modules\\DirectBankTransfer\\Http\\Controllers\\DirectBankTransferController@store', 'Modules\\DirectBankTransfer\\Http\\Controllers\\DirectBankTransferController', 'DirectBankTransferController', 'store', '2025-03-14 23:36:48', NULL),
(267, 'Modules\\DirectBankTransfer\\Http\\Controllers\\DirectBankTransferController@edit', 'Modules\\DirectBankTransfer\\Http\\Controllers\\DirectBankTransferController', 'DirectBankTransferController', 'edit', '2025-03-14 23:36:48', NULL),
(268, 'Modules\\Flutterwave\\Http\\Controllers\\FlutterwaveController@store', 'Modules\\Flutterwave\\Http\\Controllers\\FlutterwaveController', 'FlutterwaveController', 'store', '2025-03-14 23:36:48', NULL),
(269, 'Modules\\Flutterwave\\Http\\Controllers\\FlutterwaveController@edit', 'Modules\\Flutterwave\\Http\\Controllers\\FlutterwaveController', 'FlutterwaveController', 'edit', '2025-03-14 23:36:48', NULL),
(270, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@paymentConfirmation', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'paymentConfirmation', '2025-03-14 23:36:48', NULL),
(271, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@paymentFailed', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'paymentFailed', '2025-03-14 23:36:48', NULL),
(272, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@paymentGateways', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'paymentGateways', '2025-03-14 23:36:48', NULL),
(273, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@pay', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'pay', '2025-03-14 23:36:48', NULL),
(274, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@makePayment', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'makePayment', '2025-03-14 23:36:48', NULL),
(275, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@paymentCallback', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'paymentCallback', '2025-03-14 23:36:48', NULL),
(276, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@paymentCancelled', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'paymentCancelled', '2025-03-14 23:36:48', NULL),
(277, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@paymentHook', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'paymentHook', '2025-03-14 23:36:48', NULL),
(278, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@enableModule', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'enableModule', '2025-03-14 23:36:48', NULL),
(279, 'Modules\\Gateway\\Http\\Controllers\\GatewayController@disableModule', 'Modules\\Gateway\\Http\\Controllers\\GatewayController', 'GatewayController', 'disableModule', '2025-03-14 23:36:48', NULL),
(280, 'Modules\\Instamojo\\Http\\Controllers\\InstamojoController@store', 'Modules\\Instamojo\\Http\\Controllers\\InstamojoController', 'InstamojoController', 'store', '2025-03-14 23:36:48', NULL),
(281, 'Modules\\Instamojo\\Http\\Controllers\\InstamojoController@edit', 'Modules\\Instamojo\\Http\\Controllers\\InstamojoController', 'InstamojoController', 'edit', '2025-03-14 23:36:48', NULL),
(282, 'Modules\\MtnMomo\\Http\\Controllers\\MtnMomoController@store', 'Modules\\MtnMomo\\Http\\Controllers\\MtnMomoController', 'MtnMomoController', 'store', '2025-03-14 23:36:48', NULL),
(283, 'Modules\\MtnMomo\\Http\\Controllers\\MtnMomoController@edit', 'Modules\\MtnMomo\\Http\\Controllers\\MtnMomoController', 'MtnMomoController', 'edit', '2025-03-14 23:36:48', NULL),
(284, 'Modules\\NGenius\\Http\\Controllers\\NGeniusController@store', 'Modules\\NGenius\\Http\\Controllers\\NGeniusController', 'NGeniusController', 'store', '2025-03-14 23:36:48', NULL),
(285, 'Modules\\NGenius\\Http\\Controllers\\NGeniusController@viewAddon', 'Modules\\NGenius\\Http\\Controllers\\NGeniusController', 'NGeniusController', 'viewAddon', '2025-03-14 23:36:48', NULL),
(286, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@templates', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'templates', '2025-03-14 23:36:48', NULL),
(287, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@getFormFiledByUsecase', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'getFormFiledByUsecase', '2025-03-14 23:36:48', NULL),
(288, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@getContent', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'getContent', '2025-03-14 23:36:48', NULL),
(289, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@deleteContent', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'deleteContent', '2025-03-14 23:36:48', NULL),
(290, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@editContent', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'editContent', '2025-03-14 23:36:48', NULL),
(291, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@updateContent', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'updateContent', '2025-03-14 23:36:48', NULL),
(292, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@documents', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'documents', '2025-03-14 23:36:48', NULL),
(293, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@template', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'template', '2025-03-14 23:36:48', NULL),
(294, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@imageTemplate', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'imageTemplate', '2025-03-14 23:36:48', NULL),
(300, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController', 'UseCasesController', 'index', '2025-03-14 23:36:48', NULL),
(301, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController@create', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController', 'UseCasesController', 'create', '2025-03-14 23:36:48', NULL),
(302, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController', 'UseCasesController', 'edit', '2025-03-14 23:36:48', NULL),
(303, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController', 'UseCasesController', 'destroy', '2025-03-14 23:36:48', NULL),
(304, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'index', '2025-03-14 23:36:48', NULL),
(305, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController@create', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'create', '2025-03-14 23:36:48', NULL),
(306, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'edit', '2025-03-14 23:36:48', NULL),
(307, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'destroy', '2025-03-14 23:36:48', NULL),
(308, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController@searchCategory', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'searchCategory', '2025-03-14 23:36:48', NULL),
(309, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController', 'OpenAIController', 'index', '2025-03-14 23:36:48', NULL),
(310, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController', 'OpenAIController', 'edit', '2025-03-14 23:36:48', NULL),
(311, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController@update', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController', 'OpenAIController', 'update', '2025-03-14 23:36:48', NULL),
(312, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController', 'OpenAIController', 'delete', '2025-03-14 23:36:48', NULL),
(314, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\UseCasesController@searchTabData', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\UseCasesController', 'UseCasesController', 'searchTabData', '2025-03-14 23:36:48', NULL),
(315, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\UseCasesController@toggleFavorite', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\UseCasesController', 'UseCasesController', 'toggleFavorite', '2025-03-14 23:36:48', NULL),
(333, 'Modules\\Paypal\\Http\\Controllers\\PaypalController@store', 'Modules\\Paypal\\Http\\Controllers\\PaypalController', 'PaypalController', 'store', '2025-03-14 23:36:48', NULL),
(334, 'Modules\\Paypal\\Http\\Controllers\\PaypalController@edit', 'Modules\\Paypal\\Http\\Controllers\\PaypalController', 'PaypalController', 'edit', '2025-03-14 23:36:48', NULL),
(335, 'Modules\\Paystack\\Http\\Controllers\\PaystackController@store', 'Modules\\Paystack\\Http\\Controllers\\PaystackController', 'PaystackController', 'store', '2025-03-14 23:36:48', NULL),
(336, 'Modules\\Paystack\\Http\\Controllers\\PaystackController@edit', 'Modules\\Paystack\\Http\\Controllers\\PaystackController', 'PaystackController', 'edit', '2025-03-14 23:36:48', NULL),
(337, 'Modules\\Paytm\\Http\\Controllers\\PaytmController@store', 'Modules\\Paytm\\Http\\Controllers\\PaytmController', 'PaytmController', 'store', '2025-03-14 23:36:48', NULL),
(338, 'Modules\\Paytm\\Http\\Controllers\\PaytmController@edit', 'Modules\\Paytm\\Http\\Controllers\\PaytmController', 'PaytmController', 'edit', '2025-03-14 23:36:48', NULL),
(339, 'Modules\\Razorpay\\Http\\Controllers\\RazorpayController@store', 'Modules\\Razorpay\\Http\\Controllers\\RazorpayController', 'RazorpayController', 'store', '2025-03-14 23:36:48', NULL),
(340, 'Modules\\Razorpay\\Http\\Controllers\\RazorpayController@edit', 'Modules\\Razorpay\\Http\\Controllers\\RazorpayController', 'RazorpayController', 'edit', '2025-03-14 23:36:48', NULL),
(341, 'Modules\\SslCommerz\\Http\\Controllers\\SslCommerzController@store', 'Modules\\SslCommerz\\Http\\Controllers\\SslCommerzController', 'SslCommerzController', 'store', '2025-03-14 23:36:48', NULL),
(342, 'Modules\\SslCommerz\\Http\\Controllers\\SslCommerzController@edit', 'Modules\\SslCommerz\\Http\\Controllers\\SslCommerzController', 'SslCommerzController', 'edit', '2025-03-14 23:36:48', NULL),
(343, 'Modules\\Stripe\\Http\\Controllers\\StripeController@store', 'Modules\\Stripe\\Http\\Controllers\\StripeController', 'StripeController', 'store', '2025-03-14 23:36:48', NULL),
(344, 'Modules\\Stripe\\Http\\Controllers\\StripeController@edit', 'Modules\\Stripe\\Http\\Controllers\\StripeController', 'StripeController', 'edit', '2025-03-14 23:36:48', NULL),
(345, 'Modules\\Reviews\\Http\\Controllers\\ReviewsController@index', 'Modules\\Reviews\\Http\\Controllers\\ReviewsController', 'ReviewsController', 'index', '2025-03-14 23:36:48', NULL);
INSERT INTO `permissions` (`id`, `name`, `controller_path`, `controller_name`, `method_name`, `created_at`, `updated_at`) VALUES
(346, 'Modules\\Reviews\\Http\\Controllers\\ReviewsController@create', 'Modules\\Reviews\\Http\\Controllers\\ReviewsController', 'ReviewsController', 'create', '2025-03-14 23:36:48', NULL),
(347, 'Modules\\Reviews\\Http\\Controllers\\ReviewsController@store', 'Modules\\Reviews\\Http\\Controllers\\ReviewsController', 'ReviewsController', 'store', '2025-03-14 23:36:48', NULL),
(348, 'Modules\\Reviews\\Http\\Controllers\\ReviewsController@edit', 'Modules\\Reviews\\Http\\Controllers\\ReviewsController', 'ReviewsController', 'edit', '2025-03-14 23:36:48', NULL),
(349, 'Modules\\Reviews\\Http\\Controllers\\ReviewsController@update', 'Modules\\Reviews\\Http\\Controllers\\ReviewsController', 'ReviewsController', 'update', '2025-03-14 23:36:48', NULL),
(350, 'Modules\\Reviews\\Http\\Controllers\\ReviewsController@destroy', 'Modules\\Reviews\\Http\\Controllers\\ReviewsController', 'ReviewsController', 'destroy', '2025-03-14 23:36:48', NULL),
(351, 'Modules\\FAQ\\Http\\Controllers\\FAQController@index', 'Modules\\FAQ\\Http\\Controllers\\FAQController', 'FAQController', 'index', '2025-03-14 23:36:48', NULL),
(352, 'Modules\\FAQ\\Http\\Controllers\\FAQController@create', 'Modules\\FAQ\\Http\\Controllers\\FAQController', 'FAQController', 'create', '2025-03-14 23:36:48', NULL),
(353, 'Modules\\FAQ\\Http\\Controllers\\FAQController@store', 'Modules\\FAQ\\Http\\Controllers\\FAQController', 'FAQController', 'store', '2025-03-14 23:36:48', NULL),
(354, 'Modules\\FAQ\\Http\\Controllers\\FAQController@edit', 'Modules\\FAQ\\Http\\Controllers\\FAQController', 'FAQController', 'edit', '2025-03-14 23:36:48', NULL),
(355, 'Modules\\FAQ\\Http\\Controllers\\FAQController@update', 'Modules\\FAQ\\Http\\Controllers\\FAQController', 'FAQController', 'update', '2025-03-14 23:36:48', NULL),
(356, 'Modules\\FAQ\\Http\\Controllers\\FAQController@destroy', 'Modules\\FAQ\\Http\\Controllers\\FAQController', 'FAQController', 'destroy', '2025-03-14 23:36:48', NULL),
(357, 'App\\Http\\Controllers\\Site\\FrontendController@index', 'App\\Http\\Controllers\\Site\\FrontendController', 'FrontendController', 'index', '2025-03-14 23:36:48', NULL),
(358, 'App\\Http\\Controllers\\Site\\FrontendController@useCases', 'App\\Http\\Controllers\\Site\\FrontendController', 'FrontendController', 'useCases', '2025-03-14 23:36:48', NULL),
(359, 'App\\Http\\Controllers\\Site\\FrontendController@privacyPolicy', 'App\\Http\\Controllers\\Site\\FrontendController', 'FrontendController', 'privacyPolicy', '2025-03-14 23:36:48', NULL),
(360, 'App\\Http\\Controllers\\Site\\LoginController@showLoginForm', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'showLoginForm', '2025-03-14 23:36:48', NULL),
(361, 'App\\Http\\Controllers\\Site\\LoginController@registration', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'registration', '2025-03-14 23:36:48', NULL),
(362, 'App\\Http\\Controllers\\Site\\LoginController@reset', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'reset', '2025-03-14 23:36:48', NULL),
(363, 'App\\Http\\Controllers\\Site\\LoginController@impersonate', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'impersonate', '2025-03-14 23:36:48', NULL),
(364, 'App\\Http\\Controllers\\Site\\LoginController@cancelImpersonate', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'cancelImpersonate', '2025-03-14 23:36:48', NULL),
(365, 'App\\Http\\Controllers\\Site\\SiteController@switchLanguage', 'App\\Http\\Controllers\\Site\\SiteController', 'SiteController', 'switchLanguage', '2025-03-14 23:36:48', NULL),
(366, 'App\\Http\\Controllers\\Site\\ThemeController@switch', 'App\\Http\\Controllers\\Site\\ThemeController', 'ThemeController', 'switch', '2025-03-14 23:36:48', NULL),
(367, 'App\\Http\\Controllers\\Site\\LoginController@paymentConfirm', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'paymentConfirm', '2025-03-14 23:36:48', NULL),
(369, 'App\\Http\\Controllers\\User\\UserController@update', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'update', '2025-03-14 23:36:48', NULL),
(371, 'App\\Http\\Controllers\\User\\UserController@updatePassword', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'updatePassword', '2025-03-14 23:36:48', NULL),
(375, 'App\\Http\\Controllers\\User\\DashboardController@index', 'App\\Http\\Controllers\\User\\DashboardController', 'DashboardController', 'index', '2025-03-14 23:36:48', NULL),
(376, 'App\\Http\\Controllers\\User\\UserController@profile', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'profile', '2025-03-14 23:36:48', NULL),
(377, 'App\\Http\\Controllers\\User\\UserController@subscription', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'subscription', '2025-03-14 23:36:48', NULL),
(378, 'App\\Http\\Controllers\\User\\UserController@subscriptionHistory', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'subscriptionHistory', '2025-03-14 23:36:48', NULL),
(381, 'App\\Http\\Controllers\\Api\\V1\\AuthController@signUp', 'App\\Http\\Controllers\\Api\\V1\\AuthController', 'AuthController', 'signUp', '2025-03-14 23:36:48', NULL),
(382, 'App\\Http\\Controllers\\Api\\V1\\AuthController@login', 'App\\Http\\Controllers\\Api\\V1\\AuthController', 'AuthController', 'login', '2025-03-14 23:36:48', NULL),
(383, 'App\\Http\\Controllers\\Api\\V1\\AuthController@logout', 'App\\Http\\Controllers\\Api\\V1\\AuthController', 'AuthController', 'logout', '2025-03-14 23:36:48', NULL),
(384, 'App\\Http\\Controllers\\Api\\V1\\PreferenceController@preference', 'App\\Http\\Controllers\\Api\\V1\\PreferenceController', 'PreferenceController', 'preference', '2025-03-14 23:36:48', NULL),
(386, 'App\\Http\\Controllers\\Api\\V1\\AuthController@checkOtp', 'App\\Http\\Controllers\\Api\\V1\\AuthController', 'AuthController', 'checkOtp', '2025-03-14 23:36:48', NULL),
(388, 'App\\Http\\Controllers\\Api\\V1\\AuthController@setPassword', 'App\\Http\\Controllers\\Api\\V1\\AuthController', 'AuthController', 'setPassword', '2025-03-14 23:36:48', NULL),
(389, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@codeTemplate', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'codeTemplate', '2025-03-14 23:36:48', NULL),
(390, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ImageController@deleteImage', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ImageController', 'ImageController', 'deleteImage', '2025-03-14 23:36:48', NULL),
(391, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ImageController@saveImage', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ImageController', 'ImageController', 'saveImage', '2025-03-14 23:36:48', NULL),
(392, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ImageController@list', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ImageController', 'ImageController', 'list', '2025-03-14 23:36:48', NULL),
(393, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ImageController@view', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ImageController', 'ImageController', 'view', '2025-03-14 23:36:48', NULL),
(395, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ImageController@saveImage', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ImageController', 'ImageController', 'saveImage', '2025-03-14 23:36:48', NULL),
(396, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ImageController@list', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ImageController', 'ImageController', 'list', '2025-03-14 23:36:48', NULL),
(397, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ImageController@view', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ImageController', 'ImageController', 'view', '2025-03-14 23:36:48', NULL),
(398, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\DocumentsController@fetchAndFilter', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\DocumentsController', 'DocumentsController', 'fetchAndFilter', '2025-03-14 23:36:48', NULL),
(399, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\DocumentsController@toggleBookmark', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\DocumentsController', 'DocumentsController', 'toggleBookmark', '2025-03-14 23:36:48', NULL),
(404, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'index', '2025-03-14 23:36:48', NULL),
(405, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@view', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'view', '2025-03-14 23:36:48', NULL),
(406, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@update', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'update', '2025-03-14 23:36:48', NULL),
(407, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'delete', '2025-03-14 23:36:48', NULL),
(408, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController', 'ImageController', 'index', '2025-03-14 23:36:48', NULL),
(409, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController', 'ImageController', 'delete', '2025-03-14 23:36:48', NULL),
(410, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController@view', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController', 'ImageController', 'view', '2025-03-14 23:36:48', NULL),
(411, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@ask', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'ask', '2025-03-14 23:36:48', NULL),
(412, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@image', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'image', '2025-03-14 23:36:48', NULL),
(413, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@code', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'code', '2025-03-14 23:36:48', NULL),
(414, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController', 'UseCasesController', 'index', '2025-03-14 23:36:48', NULL),
(415, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController@create', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController', 'UseCasesController', 'create', '2025-03-14 23:36:48', NULL),
(416, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController', 'UseCasesController', 'show', '2025-03-14 23:36:48', NULL),
(417, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController', 'UseCasesController', 'edit', '2025-03-14 23:36:48', NULL),
(418, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController', 'UseCasesController', 'destroy', '2025-03-14 23:36:48', NULL),
(419, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'index', '2025-03-14 23:36:48', NULL),
(420, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController@create', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'create', '2025-03-14 23:36:48', NULL),
(421, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'show', '2025-03-14 23:36:48', NULL),
(422, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'edit', '2025-03-14 23:36:48', NULL),
(423, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'destroy', '2025-03-14 23:36:48', NULL),
(424, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController', 'OpenAIController', 'index', '2025-03-14 23:36:48', NULL),
(425, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController@view', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController', 'OpenAIController', 'view', '2025-03-14 23:36:48', NULL),
(426, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController@update', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController', 'OpenAIController', 'update', '2025-03-14 23:36:48', NULL),
(427, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController', 'OpenAIController', 'delete', '2025-03-14 23:36:48', NULL),
(428, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\ImageController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\ImageController', 'ImageController', 'index', '2025-03-14 23:36:48', NULL),
(429, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\ImageController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\ImageController', 'ImageController', 'delete', '2025-03-14 23:36:48', NULL),
(430, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\ImageController@view', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\ImageController', 'ImageController', 'view', '2025-03-14 23:36:48', NULL),
(431, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController@ask', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController', 'OpenAIController', 'ask', '2025-03-14 23:36:48', NULL),
(432, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController@image', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController', 'OpenAIController', 'image', '2025-03-14 23:36:48', NULL),
(433, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController@code', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\OpenAIController', 'OpenAIController', 'code', '2025-03-14 23:36:48', NULL),
(434, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController', 'UseCasesController', 'index', '2025-03-14 23:36:48', NULL),
(435, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController@create', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController', 'UseCasesController', 'create', '2025-03-14 23:36:48', NULL),
(436, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController', 'UseCasesController', 'show', '2025-03-14 23:36:48', NULL),
(437, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController', 'UseCasesController', 'edit', '2025-03-14 23:36:48', NULL),
(438, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCasesController', 'UseCasesController', 'destroy', '2025-03-14 23:36:48', NULL),
(439, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'index', '2025-03-14 23:36:48', NULL),
(440, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController@create', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'create', '2025-03-14 23:36:48', NULL),
(441, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'show', '2025-03-14 23:36:48', NULL),
(442, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'edit', '2025-03-14 23:36:48', NULL),
(443, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\UseCaseCategoriesController', 'UseCaseCategoriesController', 'destroy', '2025-03-14 23:36:48', NULL),
(444, 'Modules\\Subscription\\Http\\Controllers\\PackageController@getTemplate', 'Modules\\Subscription\\Http\\Controllers\\PackageController', 'PackageController', 'getTemplate', '2025-03-14 23:36:48', NULL),
(446, 'App\\Http\\Controllers\\User\\UserController@verifyEmailByAjax', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'verifyEmailByAjax', '2025-03-14 23:36:48', NULL),
(447, 'App\\Http\\Controllers\\User\\UserController@verifyOtpByAjax', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'verifyOtpByAjax', '2025-03-14 23:36:48', NULL),
(448, 'App\\Http\\Controllers\\User\\UserController@updateEmailByAjax', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'updateEmailByAjax', '2025-03-14 23:36:48', NULL),
(449, 'App\\Http\\Controllers\\User\\UserController@verification', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'verification', '2025-03-14 23:36:48', NULL),
(450, 'App\\Http\\Controllers\\User\\UserController@editEmail', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'editEmail', '2025-03-14 23:36:48', NULL),
(451, 'App\\Http\\Controllers\\User\\UserController@updateEmail', 'App\\Http\\Controllers\\User\\UserController', 'UserController', 'updateEmail', '2025-03-14 23:36:48', NULL),
(454, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@invoice', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'invoice', '2025-03-14 23:36:48', NULL),
(455, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@invoicePdf', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'invoicePdf', '2025-03-14 23:36:48', NULL),
(456, 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController@invoiceEmail', 'Modules\\Subscription\\Http\\Controllers\\PackageSubscriptionController', 'PackageSubscriptionController', 'invoiceEmail', '2025-03-14 23:36:48', NULL),
(457, 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController@index', 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController', 'SubscriberController', 'index', '2025-03-14 23:36:48', NULL),
(458, 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController@edit', 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController', 'SubscriberController', 'edit', '2025-03-14 23:36:48', NULL),
(459, 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController@update', 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController', 'SubscriberController', 'update', '2025-03-14 23:36:48', NULL),
(460, 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController@destroy', 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController', 'SubscriberController', 'destroy', '2025-03-14 23:36:48', NULL),
(461, 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController@pdf', 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController', 'SubscriberController', 'pdf', '2025-03-14 23:36:48', NULL),
(462, 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController@csv', 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController', 'SubscriberController', 'csv', '2025-03-14 23:36:48', NULL),
(463, 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController@store', 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController', 'SubscriberController', 'store', '2025-03-14 23:36:48', NULL),
(464, 'Barryvdh\\Debugbar\\Controllers\\OpenHandlerController@handle', 'Barryvdh\\Debugbar\\Controllers\\OpenHandlerController', 'OpenHandlerController', 'handle', '2025-03-14 23:36:48', NULL),
(465, 'Barryvdh\\Debugbar\\Controllers\\OpenHandlerController@clockwork', 'Barryvdh\\Debugbar\\Controllers\\OpenHandlerController', 'OpenHandlerController', 'clockwork', '2025-03-14 23:36:48', NULL),
(466, 'Barryvdh\\Debugbar\\Controllers\\AssetController@css', 'Barryvdh\\Debugbar\\Controllers\\AssetController', 'AssetController', 'css', '2025-03-14 23:36:48', NULL),
(467, 'Barryvdh\\Debugbar\\Controllers\\AssetController@js', 'Barryvdh\\Debugbar\\Controllers\\AssetController', 'AssetController', 'js', '2025-03-14 23:36:48', NULL),
(468, 'Barryvdh\\Debugbar\\Controllers\\CacheController@delete', 'Barryvdh\\Debugbar\\Controllers\\CacheController', 'CacheController', 'delete', '2025-03-14 23:36:48', NULL),
(469, 'App\\Http\\Controllers\\CurrencyController@findCurrencyAjaxQuery', 'App\\Http\\Controllers\\CurrencyController', 'CurrencyController', 'findCurrencyAjaxQuery', '2025-03-14 23:36:48', NULL),
(470, 'App\\Http\\Controllers\\Site\\FrontendController@pricing', 'App\\Http\\Controllers\\Site\\FrontendController', 'FrontendController', 'pricing', '2025-03-14 23:36:48', NULL),
(471, 'App\\Http\\Controllers\\Site\\LoginController@resendUserVerificationCode', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'resendUserVerificationCode', '2025-03-14 23:36:48', NULL),
(472, 'App\\Http\\Controllers\\UserController@verify', 'App\\Http\\Controllers\\UserController', 'UserController', 'verify', '2025-03-14 23:36:48', NULL),
(473, 'App\\Http\\Controllers\\UserController@verifyByOtp', 'App\\Http\\Controllers\\UserController', 'UserController', 'verifyByOtp', '2025-03-14 23:36:48', NULL),
(474, 'App\\Http\\Controllers\\Site\\LoginController@resetPasswordSuccess', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'resetPasswordSuccess', '2025-03-14 23:36:48', NULL),
(475, 'App\\Http\\Controllers\\Site\\LoginController@passwordResetNotify', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'passwordResetNotify', '2025-03-14 23:36:48', NULL),
(476, 'App\\Http\\Controllers\\Site\\LoginController@resendPasswordReset', 'App\\Http\\Controllers\\Site\\LoginController', 'LoginController', 'resendPasswordReset', '2025-03-14 23:36:48', NULL),
(477, 'App\\Http\\Controllers\\Site\\ResetDataController@reset', 'App\\Http\\Controllers\\Site\\ResetDataController', 'ResetDataController', 'reset', '2025-03-14 23:36:48', NULL),
(478, 'App\\Http\\Controllers\\User\\SubscriptionController@package', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'package', '2025-03-14 23:36:48', NULL),
(479, 'App\\Http\\Controllers\\User\\SubscriptionController@storeSubscription', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'storeSubscription', '2025-03-14 23:36:48', NULL),
(480, 'App\\Http\\Controllers\\User\\SubscriptionController@updateSubscription', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'updateSubscription', '2025-03-14 23:36:48', NULL),
(481, 'App\\Http\\Controllers\\User\\SubscriptionController@cancelSubscription', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'cancelSubscription', '2025-03-14 23:36:48', NULL),
(482, 'App\\Http\\Controllers\\User\\SubscriptionController@billDetails', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'billDetails', '2025-03-14 23:36:48', NULL),
(483, 'App\\Http\\Controllers\\User\\SubscriptionController@billPdf', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'billPdf', '2025-03-14 23:36:48', NULL),
(484, 'App\\Http\\Controllers\\User\\SubscriptionController@payPendingSubscription', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'payPendingSubscription', '2025-03-14 23:36:48', NULL),
(485, 'App\\Http\\Controllers\\User\\SubscriptionController@planDescription', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'planDescription', '2025-03-14 23:36:48', NULL),
(486, 'App\\Http\\Controllers\\User\\SubscriptionController@subscriptionPaid', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'subscriptionPaid', '2025-03-14 23:36:48', NULL),
(487, 'App\\Http\\Controllers\\User\\SubscriptionController@subscriptionUpdatePaid', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'subscriptionUpdatePaid', '2025-03-14 23:36:48', NULL),
(488, 'App\\Http\\Controllers\\User\\SubscriptionController@subscriptionPendingPaymentResponse', 'App\\Http\\Controllers\\User\\SubscriptionController', 'SubscriptionController', 'subscriptionPendingPaymentResponse', '2025-03-14 23:36:48', NULL),
(489, 'App\\Http\\Controllers\\Api\\V1\\AuthController@resendUserVerificationCode', 'App\\Http\\Controllers\\Api\\V1\\AuthController', 'AuthController', 'resendUserVerificationCode', '2025-03-14 23:36:48', NULL),
(490, 'App\\Http\\Controllers\\Api\\V1\\AuthController@verifyByOtp', 'App\\Http\\Controllers\\Api\\V1\\AuthController', 'AuthController', 'verifyByOtp', '2025-03-14 23:36:48', NULL),
(491, 'App\\Http\\Controllers\\Api\\V1\\AuthController@sendPasswordResetLink', 'App\\Http\\Controllers\\Api\\V1\\AuthController', 'AuthController', 'sendPasswordResetLink', '2025-03-14 23:36:48', NULL),
(492, 'App\\Http\\Controllers\\Api\\V1\\AuthController@resendPasswordReset', 'App\\Http\\Controllers\\Api\\V1\\AuthController', 'AuthController', 'resendPasswordReset', '2025-03-14 23:36:48', NULL),
(493, 'Modules\\Blog\\Http\\Controllers\\Frontend\\BlogController@allBlogs', 'Modules\\Blog\\Http\\Controllers\\Frontend\\BlogController', 'BlogController', 'allBlogs', '2025-03-14 23:36:48', NULL),
(494, 'Modules\\Blog\\Http\\Controllers\\Frontend\\BlogController@blogSearch', 'Modules\\Blog\\Http\\Controllers\\Frontend\\BlogController', 'BlogController', 'blogSearch', '2025-03-14 23:36:48', NULL),
(495, 'Modules\\Blog\\Http\\Controllers\\Frontend\\BlogController@blogDetails', 'Modules\\Blog\\Http\\Controllers\\Frontend\\BlogController', 'BlogController', 'blogDetails', '2025-03-14 23:36:48', NULL),
(496, 'Modules\\Blog\\Http\\Controllers\\Frontend\\BlogController@blogCategory', 'Modules\\Blog\\Http\\Controllers\\Frontend\\BlogController', 'BlogController', 'blogCategory', '2025-03-14 23:36:48', NULL),
(497, 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController@automatedDatabaseBackupForm', 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController', 'DatabaseBackupController', 'automatedDatabaseBackupForm', '2025-03-14 23:36:48', NULL),
(498, 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController@store', 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController', 'DatabaseBackupController', 'store', '2025-03-14 23:36:48', NULL),
(499, 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController@manualDatabaseBackupForm', 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController', 'DatabaseBackupController', 'manualDatabaseBackupForm', '2025-03-14 23:36:48', NULL),
(500, 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController@manualDatabaseBackup', 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController', 'DatabaseBackupController', 'manualDatabaseBackup', '2025-03-14 23:36:48', NULL),
(501, 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController@list', 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController', 'DatabaseBackupController', 'list', '2025-03-14 23:36:48', NULL),
(502, 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController@download', 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController', 'DatabaseBackupController', 'download', '2025-03-14 23:36:48', NULL),
(503, 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController@destroy', 'Modules\\DatabaseBackup\\Http\\Controllers\\DatabaseBackupController', 'DatabaseBackupController', 'destroy', '2025-03-14 23:36:48', NULL),
(504, 'Modules\\DatabaseBackup\\Http\\Controllers\\DropboxSettingController@create', 'Modules\\DatabaseBackup\\Http\\Controllers\\DropboxSettingController', 'DropboxSettingController', 'create', '2025-03-14 23:36:48', NULL),
(505, 'Modules\\DatabaseBackup\\Http\\Controllers\\DropboxSettingController@store', 'Modules\\DatabaseBackup\\Http\\Controllers\\DropboxSettingController', 'DropboxSettingController', 'store', '2025-03-14 23:36:48', NULL),
(506, 'Modules\\DatabaseBackup\\Http\\Controllers\\GoogleDriveSettingController@create', 'Modules\\DatabaseBackup\\Http\\Controllers\\GoogleDriveSettingController', 'GoogleDriveSettingController', 'create', '2025-03-14 23:36:48', NULL),
(507, 'Modules\\DatabaseBackup\\Http\\Controllers\\GoogleDriveSettingController@store', 'Modules\\DatabaseBackup\\Http\\Controllers\\GoogleDriveSettingController', 'GoogleDriveSettingController', 'store', '2025-03-14 23:36:48', NULL),
(508, 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController@unsubscribe', 'Modules\\Newsletter\\Http\\Controllers\\SubscriberController', 'SubscriberController', 'unsubscribe', '2025-03-14 23:36:48', NULL),
(509, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController@favouriteDocuments', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\OpenAIController', 'OpenAIController', 'favouriteDocuments', '2025-03-14 23:36:48', NULL),
(510, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\CodeController@index', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\CodeController', 'CodeController', 'index', '2025-03-14 23:36:48', NULL),
(511, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\CodeController@view', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\CodeController', 'CodeController', 'view', '2025-03-14 23:36:48', NULL),
(512, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\CodeController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\CodeController', 'CodeController', 'delete', '2025-03-14 23:36:48', NULL),
(514, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ChatController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ChatController', 'ChatController', 'delete', '2025-03-14 23:36:48', NULL),
(515, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ChatController@update', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ChatController', 'ChatController', 'update', '2025-03-14 23:36:48', NULL),
(516, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController@create', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\UseCasesController', 'UseCasesController', 'create', '2025-03-14 23:36:48', NULL),
(517, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ImageController@deleteImages', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ImageController', 'ImageController', 'deleteImages', '2025-03-14 23:36:48', NULL),
(518, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\CodeController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\CodeController', 'CodeController', 'index', '2025-03-14 23:36:48', NULL),
(519, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\CodeController@view', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\CodeController', 'CodeController', 'view', '2025-03-14 23:36:48', NULL),
(520, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\CodeController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\CodeController', 'CodeController', 'delete', '2025-03-14 23:36:48', NULL),
(521, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController@contentPreferences', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController', 'OpenAIController', 'contentPreferences', '2025-03-14 23:36:48', NULL),
(522, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController@createContentPreferences', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\OpenAIController', 'OpenAIController', 'createContentPreferences', '2025-03-14 23:36:48', NULL),
(523, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@chat', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'chat', '2025-03-14 23:36:48', NULL),
(524, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@chatConversation', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'chatConversation', '2025-03-14 23:36:48', NULL),
(525, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@history', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'history', '2025-03-14 23:36:48', NULL),
(526, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\CodeController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\CodeController', 'CodeController', 'index', '2025-03-14 23:36:48', NULL),
(527, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\CodeController@view', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\CodeController', 'CodeController', 'view', '2025-03-14 23:36:48', NULL),
(528, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\CodeController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\CodeController', 'CodeController', 'delete', '2025-03-14 23:36:48', NULL),
(529, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController@contentPreferences', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController', 'OpenAIPreferenceController', 'contentPreferences', '2025-03-14 23:36:48', NULL),
(530, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController@imagePreferences', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController', 'OpenAIPreferenceController', 'imagePreferences', '2025-03-14 23:36:48', NULL),
(531, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController@codePreferences', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController', 'OpenAIPreferenceController', 'codePreferences', '2025-03-14 23:36:48', NULL),
(532, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UserController@update', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UserController', 'UserController', 'update', '2025-03-14 23:36:48', NULL),
(533, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UserController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UserController', 'UserController', 'index', '2025-03-14 23:36:48', NULL),
(534, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\CodeController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\CodeController', 'CodeController', 'index', '2025-03-14 23:36:48', NULL),
(535, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\CodeController@view', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\CodeController', 'CodeController', 'view', '2025-03-14 23:36:48', NULL),
(536, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\CodeController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\Admin\\CodeController', 'CodeController', 'delete', '2025-03-14 23:36:48', NULL),
(537, 'Modules\\PaypalRecurring\\Http\\Controllers\\PaypalRecurringController@store', 'Modules\\PaypalRecurring\\Http\\Controllers\\PaypalRecurringController', 'PaypalRecurringController', 'store', '2025-03-14 23:36:48', NULL),
(538, 'Modules\\PaypalRecurring\\Http\\Controllers\\PaypalRecurringController@edit', 'Modules\\PaypalRecurring\\Http\\Controllers\\PaypalRecurringController', 'PaypalRecurringController', 'edit', '2025-03-14 23:36:48', NULL),
(539, 'Modules\\StripeRecurring\\Http\\Controllers\\StripeRecurringController@store', 'Modules\\StripeRecurring\\Http\\Controllers\\StripeRecurringController', 'StripeRecurringController', 'store', '2025-03-14 23:36:48', NULL),
(540, 'Modules\\StripeRecurring\\Http\\Controllers\\StripeRecurringController@edit', 'Modules\\StripeRecurring\\Http\\Controllers\\StripeRecurringController', 'StripeRecurringController', 'edit', '2025-03-14 23:36:48', NULL),
(541, 'Modules\\Subscription\\Http\\Controllers\\PackageController@getInfo', 'Modules\\Subscription\\Http\\Controllers\\PackageController', 'PackageController', 'getInfo', '2025-03-14 23:36:48', NULL),
(542, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController@detail', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController', 'PackageSubscriptionController', 'detail', '2025-03-14 23:36:48', NULL),
(543, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController@history', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController', 'PackageSubscriptionController', 'history', '2025-03-14 23:36:48', NULL),
(544, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController@viewBill', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController', 'PackageSubscriptionController', 'viewBill', '2025-03-14 23:36:48', NULL),
(545, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController@payBill', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController', 'PackageSubscriptionController', 'payBill', '2025-03-14 23:36:48', NULL),
(546, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController@downloadBill', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController', 'PackageSubscriptionController', 'downloadBill', '2025-03-14 23:36:48', NULL),
(547, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController@cancel', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController', 'PackageSubscriptionController', 'cancel', '2025-03-14 23:36:48', NULL),
(548, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController@plan', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController', 'PackageSubscriptionController', 'plan', '2025-03-14 23:36:48', NULL),
(549, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController@store', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController', 'PackageSubscriptionController', 'store', '2025-03-14 23:36:48', NULL),
(550, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController@setting', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\User\\PackageSubscriptionController', 'PackageSubscriptionController', 'setting', '2025-03-14 23:36:48', NULL),
(551, 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\PackageController@index', 'Modules\\Subscription\\Http\\Controllers\\Api\\V1\\PackageController', 'PackageController', 'index', '2025-03-14 23:36:48', NULL),
(552, 'Modules\\Upgrader\\Http\\Controllers\\SystemUpdateController@upgrade', 'Modules\\Upgrader\\Http\\Controllers\\SystemUpdateController', 'SystemUpdateController', 'upgrade', '2025-03-14 23:36:48', NULL),
(553, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController@history', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController', 'ChatController', 'history', '2025-03-14 23:36:48', NULL),
(554, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController', 'ChatController', 'delete', '2025-03-14 23:36:48', NULL),
(555, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController@update', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController', 'ChatController', 'update', '2025-03-14 23:36:48', NULL),
(556, 'Modules\\Subscription\\Http\\Controllers\\CreditController@index', 'Modules\\Subscription\\Http\\Controllers\\CreditController', 'CreditController', 'index', '2025-03-14 23:36:48', NULL),
(557, 'Modules\\Subscription\\Http\\Controllers\\CreditController@create', 'Modules\\Subscription\\Http\\Controllers\\CreditController', 'CreditController', 'create', '2025-03-14 23:36:48', NULL),
(558, 'Modules\\Subscription\\Http\\Controllers\\CreditController@store', 'Modules\\Subscription\\Http\\Controllers\\CreditController', 'CreditController', 'store', '2025-03-14 23:36:48', NULL),
(559, 'Modules\\Subscription\\Http\\Controllers\\CreditController@edit', 'Modules\\Subscription\\Http\\Controllers\\CreditController', 'CreditController', 'edit', '2025-03-14 23:36:48', NULL),
(560, 'Modules\\Subscription\\Http\\Controllers\\CreditController@update', 'Modules\\Subscription\\Http\\Controllers\\CreditController', 'CreditController', 'update', '2025-03-14 23:36:48', NULL),
(561, 'Modules\\Subscription\\Http\\Controllers\\CreditController@destroy', 'Modules\\Subscription\\Http\\Controllers\\CreditController', 'CreditController', 'destroy', '2025-03-14 23:36:48', NULL),
(562, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController@history', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatControlle', 'ChatController', 'history', '2025-03-14 23:36:48', NULL),
(563, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatControlle', 'ChatController', 'delete', '2025-03-14 23:36:48', NULL),
(564, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController@update', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatControlle', 'ChatController', 'update', '2025-03-14 23:36:48', NULL),
(565, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatController@create', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\ChatControlle', 'ChatController', 'create', '2025-03-14 23:36:48', NULL),
(566, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@contentTogglebookmark', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'contentTogglebookmark', '2025-03-14 23:36:48', NULL),
(567, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController@useCaseToggleFavorite', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UseCasesController', 'UseCasesController', 'useCaseToggleFavorite', '2025-03-14 23:36:48', NULL),
(568, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController@chatPreferences', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController', 'OpenAIPreferenceController', 'chatPreferences', '2025-03-14 23:36:48', NULL),
(569, 'App\\Http\\Controllers\\CompanySettingController@setRedirectLink', 'App\\Http\\Controllers\\CompanySettingController', 'CompanySettingController', 'setRedirectLink', '2025-03-14 23:36:48', NULL),
(570, 'App\\Http\\Controllers\\AccountSettingController@defaultPackage', 'App\\Http\\Controllers\\AccountSettingController', 'AccountSettingController', 'defaultPackage', '2025-03-14 23:36:48', NULL),
(571, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\SpeechToTextController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\SpeechToTextController', 'SpeechToTextController', 'index', '2025-03-14 23:36:49', NULL),
(572, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\SpeechToTextController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\SpeechToTextController', 'SpeechToTextController', 'edit', '2025-03-14 23:36:49', NULL),
(573, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\SpeechToTextController@update', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\SpeechToTextController', 'SpeechToTextController', 'update', '2025-03-14 23:36:49', NULL),
(574, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\SpeechToTextController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\SpeechToTextController', 'SpeechToTextController', 'delete', '2025-03-14 23:36:49', NULL),
(575, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@speechTemplate', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'speechTemplate', '2025-03-14 23:36:49', NULL),
(576, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@speechLists', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'speechLists', '2025-03-14 23:36:49', NULL),
(577, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@editSpeech', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'editSpeech', '2025-03-14 23:36:49', NULL),
(578, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@updateSpeech', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'updateSpeech', '2025-03-14 23:36:49', NULL),
(579, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@deleteSpeech', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'deleteSpeech', '2025-03-14 23:36:49', NULL),
(580, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController@speechToText', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIController', 'OpenAIController', 'speechToText', '2025-03-14 23:36:49', NULL),
(581, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\SpeechToTextController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\SpeechToTextController', 'SpeechToTextController', 'index', '2025-03-14 23:36:49', NULL),
(582, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\SpeechToTextController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\SpeechToTextController', 'SpeechToTextController', 'show', '2025-03-14 23:36:49', NULL),
(583, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\SpeechToTextController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\SpeechToTextController', 'SpeechToTextController', 'edit', '2025-03-14 23:36:49', NULL),
(584, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\SpeechToTextController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\SpeechToTextController', 'SpeechToTextController', 'destroy', '2025-03-14 23:36:49', NULL),
(585, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatCategoriesController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatCategoriesController', 'ChatCategoriesController', 'index', '2025-03-14 23:36:49', NULL),
(586, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatCategoriesController@create', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatCategoriesController', 'ChatCategoriesController', 'create', '2025-03-14 23:36:49', NULL),
(587, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatCategoriesController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatCategoriesController', 'ChatCategoriesController', 'edit', '2025-03-14 23:36:49', NULL),
(588, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatCategoriesController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatCategoriesController', 'ChatCategoriesController', 'destroy', '2025-03-14 23:36:49', NULL),
(589, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatAssistantsController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatAssistantsController', 'ChatAssistantsController', 'index', '2025-03-14 23:36:49', NULL),
(590, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatAssistantsController@create', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatAssistantsController', 'ChatAssistantsController', 'create', '2025-03-14 23:36:49', NULL),
(591, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatAssistantsController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatAssistantsController', 'ChatAssistantsController', 'edit', '2025-03-14 23:36:49', NULL),
(592, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatAssistantsController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\ChatAssistantsController', 'ChatAssistantsController', 'destroy', '2025-03-14 23:36:49', NULL),
(593, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\TextToSpeechController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\TextToSpeechController', 'TextToSpeechController', 'index', '2025-03-14 23:36:49', NULL),
(594, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\TextToSpeechController@show', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\TextToSpeechController', 'TextToSpeechController', 'show', '2025-03-14 23:36:49', NULL),
(595, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\TextToSpeechController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\TextToSpeechController', 'TextToSpeechController', 'delete', '2025-03-14 23:36:49', NULL),
(596, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController@textToSpeechTemplate', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController', 'TextToSpeechController', 'textToSpeechTemplate', '2025-03-14 23:36:49', NULL),
(597, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController@textToSpeechList', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController', 'TextToSpeechController', 'textToSpeechList', '2025-03-14 23:36:49', NULL),
(598, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController@show', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController', 'TextToSpeechController', 'show', '2025-03-14 23:36:49', NULL),
(599, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController', 'TextToSpeechController', 'delete', '2025-03-14 23:36:49', NULL),
(600, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\TextToSpeechController', 'TextToSpeechController', 'destroy', '2025-03-14 23:36:49', NULL);
INSERT INTO `permissions` (`id`, `name`, `controller_path`, `controller_name`, `method_name`, `created_at`, `updated_at`) VALUES
(601, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\TextToSpeechController@textToSpeech', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\TextToSpeechController', 'TextToSpeechController', 'textToSpeech', '2025-03-14 23:36:49', NULL),
(602, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UserController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\UserController', 'UserController', 'destroy', '2025-03-14 23:36:49', NULL),
(603, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\TextToSpeechController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\TextToSpeechController', 'TextToSpeechController', 'index', '2025-03-14 23:36:49', NULL),
(604, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\TextToSpeechController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\TextToSpeechController', 'TextToSpeechController', 'show', '2025-03-14 23:36:49', NULL),
(605, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\TextToSpeechController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\TextToSpeechController', 'TextToSpeechController', 'destroy', '2025-03-14 23:36:49', NULL),
(606, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ChatController@allChatAssistants', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ChatController', 'ChatController', 'allChatAssistants', '2025-03-14 23:36:49', NULL),
(607, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController', 'LongArticleController', 'index', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(608, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController', 'LongArticleController', 'edit', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(609, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController@update', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController', 'LongArticleController', 'update', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(610, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController', 'LongArticleController', 'destroy', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(611, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController@csv', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController', 'LongArticleController', 'csv', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(612, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController@pdf', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\LongArticleController', 'LongArticleController', 'pdf', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(613, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@index', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'index', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(614, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@create', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'create', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(615, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@view', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'view', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(616, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'edit', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(617, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@update', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'update', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(618, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'delete', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(619, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@generateTitles', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'generateTitles', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(620, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@generateOutlines', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'generateOutlines', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(621, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@initArticle', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'initArticle', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(622, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@generateArticle', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'generateArticle', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(623, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@displayTitleData', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'displayTitleData', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(624, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@displayOutlineData', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'displayOutlineData', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(625, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController@displayArticleBlogData', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\LongArticleController', 'LongArticleController', 'displayArticleBlogData', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(626, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotController', 'ChatBotController', 'index', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(627, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotController', 'ChatBotController', 'show', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(628, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatController', 'ChatController', 'index', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(629, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatController', 'ChatController', 'show', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(630, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatController', 'ChatController', 'store', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(631, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatController', 'ChatController', 'destroy', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(632, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController@converstaionList', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController', 'ImageController', 'converstaionList', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(633, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController@converstaionView', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController', 'ImageController', 'converstaionView', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(634, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController@conversationDelete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\ImageController', 'ImageController', 'conversationDelete', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(635, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController@aiProviders', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController', 'OpenAIPreferenceController', 'aiProviders', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(636, 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController@conversationData', 'Modules\\OpenAI\\Http\\Controllers\\Api\\V1\\User\\OpenAIPreferenceController', 'OpenAIPreferenceController', 'conversationData', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(637, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController', 'EmbedController', 'index', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(638, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController', 'EmbedController', 'store', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(639, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController', 'EmbedController', 'show', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(640, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController', 'EmbedController', 'delete', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(641, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController@summarize', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController', 'EmbedController', 'summarize', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(642, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController@askQuestion', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\EmbedController', 'EmbedController', 'askQuestion', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(643, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\DocChatController@conversation', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\DocChatController', 'DocChatController', 'conversation', '2025-03-14 23:36:50', '2025-03-14 23:36:50'),
(644, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController@documents', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController', 'PrebuiltTemplateContentController', 'documents', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(645, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController@favouriteDocuments', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController', 'PrebuiltTemplateContentController', 'favouriteDocuments', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(646, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController@template', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController', 'PrebuiltTemplateContentController', 'template', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(647, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController@getFormFiledByUsecase', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController', 'PrebuiltTemplateContentController', 'getFormFiledByUsecase', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(648, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController@getContent', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController', 'PrebuiltTemplateContentController', 'getContent', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(649, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController@deleteContent', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController', 'PrebuiltTemplateContentController', 'deleteContent', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(650, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController@editContent', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController', 'PrebuiltTemplateContentController', 'editContent', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(651, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController@updateContent', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\PrebuiltTemplateContentController', 'PrebuiltTemplateContentController', 'updateContent', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(652, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\CodeController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\CodeController', 'CodeController', 'store', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(653, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController@generate', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController', 'TemplateController', 'generate', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(654, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController@process', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController', 'TemplateController', 'process', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(655, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@template', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'template', '2025-03-14 23:36:51', NULL),
(656, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@index', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'index', '2025-03-14 23:36:51', NULL),
(657, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'edit', '2025-03-14 23:36:51', NULL),
(658, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@update', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'update', '2025-03-14 23:36:51', NULL),
(659, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\SpeechToTextController', 'SpeechToTextController', 'delete', '2025-03-14 23:36:51', NULL),
(660, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\SpeechToTextController@generate', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\SpeechToTextController', 'SpeechToTextController', 'generate', '2025-03-14 23:36:51', NULL),
(661, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\PlagiarismController@generate', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\PlagiarismController', 'PlagiarismController', 'generate', '2025-03-14 23:36:51', NULL),
(662, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\v2\\PlagiarismController@template', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\v2\\PlagiarismController', 'PlagiarismController', 'template', '2025-03-14 23:36:51', NULL),
(663, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageController', 'ImageController', 'store', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(664, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageController', 'ImageController', 'destroy', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(665, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\HistoryController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\HistoryController', 'HistoryController', 'index', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(666, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\HistoryController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\HistoryController', 'HistoryController', 'show', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(667, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\HistoryController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\HistoryController', 'HistoryController', 'destroy', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(668, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiChatController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiChatController', 'AiChatController', 'show', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(669, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiChatController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiChatController', 'AiChatController', 'store', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(670, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiDocChatController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiDocChatController', 'AiDocChatController', 'index', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(671, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiDocChatController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiDocChatController', 'AiDocChatController', 'store', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(672, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiDocChatController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiDocChatController', 'AiDocChatController', 'delete', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(673, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\DocChatAskController@askQuestion', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\DocChatAskController', 'DocChatAskController', 'askQuestion', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(674, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeatureManagerController@preference', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeatureManagerController', 'FeatureManagerController', 'preference', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(675, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeatureManagerController@addiontalOptions', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeatureManagerController', 'FeatureManagerController', 'addiontalOptions', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(676, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController', 'ChatBotWidgetController', 'index', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(677, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController', 'ChatBotWidgetController', 'store', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(678, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController', 'ChatBotWidgetController', 'show', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(679, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController@update', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController', 'ChatBotWidgetController', 'update', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(680, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController', 'ChatBotWidgetController', 'delete', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(681, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController@destroyImage', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController', 'ChatBotWidgetController', 'destroyImage', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(682, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController@dashboard', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotWidgetController', 'ChatBotWidgetController', 'dashboard', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(683, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController', 'ChatBotTrainingController', 'index', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(684, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController', 'ChatBotTrainingController', 'store', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(685, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController@train', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController', 'ChatBotTrainingController', 'train', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(686, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController', 'ChatBotTrainingController', 'destroy', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(687, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController@fetchUrl', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController', 'ChatBotTrainingController', 'fetchUrl', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(688, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController@csv', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotTrainingController', 'ChatBotTrainingController', 'csv', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(689, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeatureManagerController@providers', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeatureManagerController', 'FeatureManagerController', 'providers', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(690, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeatureManagerController@models', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeatureManagerController', 'FeatureManagerController', 'models', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(691, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeaturePreferenceController@featureOptions', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\FeaturePreferenceController', 'FeaturePreferenceController', 'featureOptions', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(692, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserTestConversationController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserTestConversationController', 'ChatBotUserTestConversationController', 'store', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(693, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserTestConversationController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserTestConversationController', 'ChatBotUserTestConversationController', 'show', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(694, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserConversationController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserConversationController', 'ChatBotUserConversationController', 'index', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(695, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserConversationController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserConversationController', 'ChatBotUserConversationController', 'show', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(696, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserConversationController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ChatBotUserConversationController', 'ChatBotUserConversationController', 'delete', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(697, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\UserAccessController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\UserAccessController', 'UserAccessController', 'index', '2025-03-14 23:36:51', '2025-03-14 23:36:51'),
(698, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiDetectorController@generate', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\AiDetectorController', 'AiDetectorController', 'generate', '2025-03-14 23:36:51', NULL),
(699, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\v2\\AiDetectorController@template', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\v2\\AiDetectorController', 'AiDetectorController', 'template', '2025-03-14 23:36:51', NULL),
(700, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController@index', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController', 'AiChatbotController', 'index', '2025-03-14 23:36:51', NULL),
(701, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController@edit', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController', 'AiChatbotController', 'edit', '2025-03-14 23:36:51', NULL),
(702, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController@update', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController', 'AiChatbotController', 'update', '2025-03-14 23:36:51', NULL),
(703, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController', 'AiChatbotController', 'delete', '2025-03-14 23:36:51', NULL),
(704, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController@pdf', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController', 'AiChatbotController', 'pdf', '2025-03-14 23:36:51', NULL),
(705, 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController@csv', 'Modules\\OpenAI\\Http\\Controllers\\Admin\\v2\\AiChatbotController', 'AiChatbotController', 'csv', '2025-03-14 23:36:51', NULL),
(706, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VisionController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VisionController', 'VisionController', 'store', '2025-03-14 23:36:51', NULL),
(707, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v3\\User\\FeatureManagerController@providers', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v3\\User\\FeatureManagerController', 'FeatureManagerController', 'providers', '2025-03-14 23:36:51', NULL),
(708, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\UseCaseController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\UseCaseController', 'UseCaseController', 'index', '2025-03-14 23:36:52', NULL),
(709, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\CodeController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\CodeController', 'CodeController', 'index', '2025-03-14 23:36:52', NULL),
(710, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\CodeController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\CodeController', 'CodeController', 'show', '2025-03-14 23:36:52', NULL),
(711, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\CodeController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\CodeController', 'CodeController', 'delete', '2025-03-14 23:36:52', NULL),
(712, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController', 'TemplateController', 'index', '2025-03-14 23:36:52', NULL),
(713, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController', 'TemplateController', 'show', '2025-03-14 23:36:52', NULL),
(714, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\TemplateController', 'TemplateController', 'delete', '2025-03-14 23:36:52', NULL),
(715, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageController', 'ImageController', 'index', '2025-03-14 23:36:52', NULL),
(716, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageController@toggleFavorite', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageController', 'ImageController', 'toggleFavorite', '2025-03-14 23:36:52', NULL),
(717, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageToVideoController@store', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\ImageToVideoController', 'ImageToVideoController', 'store', '2025-03-14 23:36:52', '2025-03-14 23:36:52'),
(718, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController@template', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController', 'VoiceoverController', 'template', '2025-03-14 23:36:52', NULL),
(719, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController@index', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController', 'VoiceoverController', 'index', '2025-03-14 23:36:52', NULL),
(720, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController@show', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController', 'VoiceoverController', 'show', '2025-03-14 23:36:52', NULL),
(721, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController@delete', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController', 'VoiceoverController', 'delete', '2025-03-14 23:36:52', NULL),
(722, 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Customer\\VoiceoverController', 'VoiceoverController', 'destroy', '2025-03-14 23:36:52', NULL),
(723, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VoiceoverController@generate', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VoiceoverController', 'VoiceoverController', 'generate', '2025-03-14 23:36:52', NULL),
(724, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VoiceoverController@index', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VoiceoverController', 'VoiceoverController', 'index', '2025-03-14 23:36:52', NULL),
(725, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VoiceoverController@show', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VoiceoverController', 'VoiceoverController', 'show', '2025-03-14 23:36:52', NULL),
(726, 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VoiceoverController@destroy', 'Modules\\OpenAI\\Http\\Controllers\\Api\\v2\\User\\VoiceoverController', 'VoiceoverController', 'destroy', '2025-03-14 23:36:52', NULL),
(727, 'Modules\\Coupon\\Http\\Controllers\\CouponController@index', 'Modules\\Coupon\\Http\\Controllers\\CouponController', 'CouponController', 'index', '2025-03-14 23:36:52', NULL),
(728, 'Modules\\Coupon\\Http\\Controllers\\CouponController@create', 'Modules\\Coupon\\Http\\Controllers\\CouponController', 'CouponController', 'create', '2025-03-14 23:36:52', NULL),
(729, 'Modules\\Coupon\\Http\\Controllers\\CouponController@store', 'Modules\\Coupon\\Http\\Controllers\\CouponController', 'CouponController', 'store', '2025-03-14 23:36:52', NULL),
(730, 'Modules\\Coupon\\Http\\Controllers\\CouponController@edit', 'Modules\\Coupon\\Http\\Controllers\\CouponController', 'CouponController', 'edit', '2025-03-14 23:36:52', NULL),
(731, 'Modules\\Coupon\\Http\\Controllers\\CouponController@update', 'Modules\\Coupon\\Http\\Controllers\\CouponController', 'CouponController', 'update', '2025-03-14 23:36:52', NULL),
(732, 'Modules\\Coupon\\Http\\Controllers\\CouponController@destroy', 'Modules\\Coupon\\Http\\Controllers\\CouponController', 'CouponController', 'destroy', '2025-03-14 23:36:52', NULL),
(733, 'Modules\\Coupon\\Http\\Controllers\\CouponController@downloadPdf', 'Modules\\Coupon\\Http\\Controllers\\CouponController', 'CouponController', 'downloadPdf', '2025-03-14 23:36:52', NULL),
(734, 'Modules\\Coupon\\Http\\Controllers\\CouponController@downloadCsv', 'Modules\\Coupon\\Http\\Controllers\\CouponController', 'CouponController', 'downloadCsv', '2025-03-14 23:36:52', NULL),
(735, 'Modules\\Coupon\\Http\\Controllers\\CouponRedeemController@index', 'Modules\\Coupon\\Http\\Controllers\\CouponRedeemController', 'CouponRedeemController', 'index', '2025-03-14 23:36:52', NULL),
(736, 'Modules\\Coupon\\Http\\Controllers\\CouponRedeemController@pdf', 'Modules\\Coupon\\Http\\Controllers\\CouponRedeemController', 'CouponRedeemController', 'pdf', '2025-03-14 23:36:52', NULL),
(737, 'Modules\\Coupon\\Http\\Controllers\\CouponRedeemController@csv', 'Modules\\Coupon\\Http\\Controllers\\CouponRedeemController', 'CouponRedeemController', 'csv', '2025-03-14 23:36:52', NULL),
(738, 'Modules\\Ticket\\Http\\Controllers\\TicketController@index', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'index', '2025-03-14 23:36:53', NULL),
(739, 'Modules\\Ticket\\Http\\Controllers\\TicketController@store', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'store', '2025-03-14 23:36:53', NULL),
(740, 'Modules\\Ticket\\Http\\Controllers\\TicketController@view', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'view', '2025-03-14 23:36:53', NULL),
(741, 'Modules\\Ticket\\Http\\Controllers\\TicketController@replyStore', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'replyStore', '2025-03-14 23:36:53', NULL),
(742, 'Modules\\Ticket\\Http\\Controllers\\TicketController@edit', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'edit', '2025-03-14 23:36:53', NULL),
(743, 'Modules\\Ticket\\Http\\Controllers\\TicketController@update', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'update', '2025-03-14 23:36:53', NULL),
(744, 'Modules\\Ticket\\Http\\Controllers\\TicketController@pdf', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'pdf', '2025-03-14 23:36:53', NULL),
(745, 'Modules\\Ticket\\Http\\Controllers\\TicketController@delete', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'delete', '2025-03-14 23:36:53', NULL),
(746, 'Modules\\Ticket\\Http\\Controllers\\TicketController@add', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'add', '2025-03-14 23:36:53', NULL),
(747, 'Modules\\Ticket\\Http\\Controllers\\TicketController@changePriority', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'changePriority', '2025-03-14 23:36:53', NULL),
(748, 'Modules\\Ticket\\Http\\Controllers\\TicketController@changeAssignee', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'changeAssignee', '2025-03-14 23:36:53', NULL),
(749, 'Modules\\Ticket\\Http\\Controllers\\TicketController@updateReply', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'updateReply', '2025-03-14 23:36:53', NULL),
(750, 'Modules\\Ticket\\Http\\Controllers\\CannedController@messages', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'messages', '2025-03-14 23:36:53', NULL),
(751, 'Modules\\Ticket\\Http\\Controllers\\CannedController@storeMessage', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'storeMessage', '2025-03-14 23:36:53', NULL),
(752, 'Modules\\Ticket\\Http\\Controllers\\CannedController@search', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'search', '2025-03-14 23:36:53', NULL),
(753, 'Modules\\Ticket\\Http\\Controllers\\CannedController@editMessage', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'editMessage', '2025-03-14 23:36:53', NULL),
(754, 'Modules\\Ticket\\Http\\Controllers\\CannedController@updateMessage', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'updateMessage', '2025-03-14 23:36:53', NULL),
(755, 'Modules\\Ticket\\Http\\Controllers\\CannedController@destroyMessage', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'destroyMessage', '2025-03-14 23:36:53', NULL),
(756, 'Modules\\Ticket\\Http\\Controllers\\CannedController@links', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'links', '2025-03-14 23:36:53', NULL),
(757, 'Modules\\Ticket\\Http\\Controllers\\CannedController@storeLink', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'storeLink', '2025-03-14 23:36:53', NULL),
(758, 'Modules\\Ticket\\Http\\Controllers\\CannedController@editLink', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'editLink', '2025-03-14 23:36:53', NULL),
(759, 'Modules\\Ticket\\Http\\Controllers\\CannedController@updateLink', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'updateLink', '2025-03-14 23:36:53', NULL),
(760, 'Modules\\Ticket\\Http\\Controllers\\CannedController@destroyLink', 'Modules\\Ticket\\Http\\Controllers\\CannedController', 'CannedController', 'destroyLink', '2025-03-14 23:36:53', NULL),
(761, 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController@index', 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController', 'TicketController', 'index', '2025-03-14 23:36:53', NULL),
(762, 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController@create', 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController', 'TicketController', 'create', '2025-03-14 23:36:53', NULL),
(763, 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController@store', 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController', 'TicketController', 'store', '2025-03-14 23:36:53', NULL),
(764, 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController@view', 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController', 'TicketController', 'view', '2025-03-14 23:36:53', NULL),
(765, 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController@update', 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController', 'TicketController', 'update', '2025-03-14 23:36:53', NULL),
(766, 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController@replyStore', 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController', 'TicketController', 'replyStore', '2025-03-14 23:36:53', NULL),
(767, 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController@pdf', 'Modules\\Ticket\\Http\\Controllers\\User\\TicketController', 'TicketController', 'pdf', '2025-03-14 23:36:53', NULL),
(768, 'Modules\\Ticket\\Http\\Controllers\\TicketController@changeStatus', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'changeStatus', '2025-03-14 23:36:53', NULL),
(769, 'Modules\\Ticket\\Http\\Controllers\\TicketController@csv', 'Modules\\Ticket\\Http\\Controllers\\TicketController', 'TicketController', 'csv', '2025-03-14 23:36:53', NULL),
(770, 'Modules\\Ticket\\Http\\Controllers\\User\\FilesController@downloadAttachment', 'Modules\\Ticket\\Http\\Controllers\\User\\FilesController', 'FilesController', 'downloadAttachment', '2025-03-14 23:36:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `permission_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`permission_id`, `role_id`) VALUES
(398, 2),
(399, 2),
(390, 2),
(391, 2),
(392, 2),
(393, 2),
(286, 2),
(287, 2),
(288, 2),
(289, 2),
(290, 2),
(291, 2),
(292, 2),
(293, 2),
(294, 2),
(389, 2),
(314, 2),
(315, 2),
(408, 2),
(409, 2),
(410, 2),
(404, 2),
(405, 2),
(406, 2),
(407, 2),
(411, 2),
(412, 2),
(413, 2),
(419, 2),
(420, 2),
(421, 2),
(422, 2),
(423, 2),
(414, 2),
(415, 2),
(416, 2),
(417, 2),
(418, 2),
(542, 2),
(543, 2),
(544, 2),
(545, 2),
(546, 2),
(548, 2),
(464, 2),
(465, 2),
(466, 2),
(467, 2),
(468, 2),
(469, 2),
(470, 2),
(471, 2),
(472, 2),
(529, 2),
(530, 2),
(531, 2),
(533, 2),
(566, 2),
(567, 2),
(568, 2),
(571, 2),
(572, 2),
(573, 2),
(574, 2),
(575, 2),
(576, 2),
(577, 2),
(578, 2),
(579, 2),
(580, 2),
(581, 2),
(582, 2),
(583, 2),
(584, 2),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 2),
(597, 2),
(598, 2),
(599, 2),
(600, 2),
(601, 2),
(602, 2),
(526, 2),
(527, 2),
(528, 2),
(532, 2),
(514, 2),
(515, 2),
(523, 2),
(524, 2),
(525, 2),
(603, 2),
(604, 2),
(605, 2),
(606, 2),
(613, 2),
(614, 2),
(615, 2),
(616, 2),
(617, 2),
(618, 2),
(619, 2),
(620, 2),
(621, 2),
(622, 2),
(623, 2),
(624, 2),
(625, 2),
(613, 2),
(614, 2),
(615, 2),
(616, 2),
(617, 2),
(618, 2),
(619, 2),
(620, 2),
(621, 2),
(622, 2),
(623, 2),
(624, 2),
(625, 2),
(626, 2),
(627, 2),
(628, 2),
(629, 2),
(630, 2),
(631, 2),
(628, 2),
(629, 2),
(630, 2),
(631, 2),
(632, 2),
(633, 2),
(634, 2),
(635, 2),
(636, 2),
(637, 2),
(638, 2),
(639, 2),
(640, 2),
(641, 2),
(642, 2),
(643, 2),
(510, 2),
(511, 2),
(512, 2),
(644, 2),
(645, 2),
(646, 2),
(647, 2),
(648, 2),
(649, 2),
(650, 2),
(651, 2),
(652, 2),
(653, 2),
(654, 2),
(655, 2),
(656, 2),
(657, 2),
(658, 2),
(659, 2),
(660, 2),
(661, 2),
(662, 2),
(663, 2),
(664, 2),
(665, 2),
(666, 2),
(667, 2),
(668, 2),
(669, 2),
(670, 2),
(671, 2),
(672, 2),
(673, 2),
(674, 2),
(675, 2),
(676, 2),
(677, 2),
(678, 2),
(679, 2),
(680, 2),
(681, 2),
(682, 2),
(683, 2),
(684, 2),
(685, 2),
(686, 2),
(687, 2),
(688, 2),
(689, 2),
(690, 2),
(691, 2),
(692, 2),
(693, 2),
(694, 2),
(695, 2),
(696, 2),
(697, 2),
(698, 2),
(699, 2),
(700, 1),
(701, 1),
(702, 1),
(703, 1),
(704, 1),
(705, 1),
(706, 2),
(707, 2),
(708, 2),
(709, 2),
(710, 2),
(711, 2),
(712, 2),
(713, 2),
(714, 2),
(715, 2),
(716, 2),
(717, 2),
(718, 2),
(719, 2),
(720, 2),
(721, 2),
(722, 2),
(723, 2),
(724, 2),
(725, 2),
(726, 2),
(738, 1),
(739, 1),
(740, 1),
(741, 1),
(742, 1),
(743, 1),
(744, 1),
(745, 1),
(746, 1),
(747, 1),
(748, 1),
(749, 1),
(750, 1),
(751, 1),
(752, 1),
(753, 1),
(754, 1),
(755, 1),
(756, 1),
(757, 1),
(758, 1),
(759, 1),
(760, 1),
(761, 2),
(762, 2),
(763, 2),
(764, 2),
(765, 2),
(766, 2),
(767, 2),
(768, 1),
(769, 1),
(770, 2);

-- --------------------------------------------------------

--
-- Table structure for table `plan_coupons`
--

CREATE TABLE `plan_coupons` (
  `package_id` int(11) NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL,
  `field` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `category`, `field`, `value`) VALUES
(1, 'preference', 'row_per_page', '25'),
(2, 'preference', 'date_format', '1'),
(3, 'preference', 'date_sepa', '-'),
(5, 'company', 'site_short_name', 'LA'),
(8, 'preference', 'date_format_type', 'dd-mm-yyyy'),
(9, 'company', 'company_name', 'LawgicAI'),
(10, 'company', 'company_email', 'admin@gmail.com'),
(11, 'company', 'company_phone', '+966577777777'),
(12, 'company', 'company_street', 'City Hall Park Path'),
(13, 'company', 'company_city', 'Abu Dhabi'),
(14, 'company', 'company_state', '1'),
(15, 'company', 'company_zip_code', '1200'),
(17, 'company', 'dflt_lang', 'ar'),
(18, 'company', 'dflt_currency_id', '3'),
(21, 'company', 'company_gstin', '11'),
(29, 'preference', 'default_timezone', 'Asia/Manila'),
(44, 'preference', 'thousand_separator', ','),
(45, 'preference', 'decimal_digits', '2'),
(46, 'preference', 'symbol_position', 'before'),
(47, 'company', 'company_icon', '4b24511c095a0ce03fdcb53acab1ef2d_25_data_center_icon_191506ico.ico'),
(48, 'company', 'company_logo', 'cabdcd95ee758d5c09e9b516e80a8bd5.png'),
(49, 'preference', 'pdf', 'mPdf'),
(51, 'preference', 'file_size', '10'),
(55, 'preference', 'sso_service', '[\"Facebook\",\"Google\"]'),
(56, 'preference', 'order_prefix', 'ORD-'),
(61, 'verification', 'email', 'both'),
(88, 'preference', 'customer_signup', '1'),
(90, 'preference', 'order_refund', '1'),
(95, 'company', 'company_country', 'ae'),
(100, 'preference', 'hide_decimal', '1'),
(101, 'preference', 'user_default_signup_status', 'Active'),
(105, 'openai', 'long_desc_length', '300'),
(106, 'openai', 'ai_model', 'gpt-3.5-turbo'),
(107, 'openai', 'max_token_length', '2500'),
(108, 'openai', 'ai_model_demo', 'gpt-4o'),
(109, 'openai', 'max_token_demo', '300'),
(110, 'openai', 'demo_word_limit', '200'),
(111, 'openai', 'demo_img_limit', '3'),
(113, 'openai', 'short_desc_length', '190'),
(114, 'company', 'company_logo_light', '8cb43aa79a3e22e214260ef8dc6090c2.png'),
(115, 'company', 'company_logo_dark', 'cabdcd95ee758d5c09e9b516e80a8bd5.png'),
(116, 'subscription', 'subscription_downgrade', '1'),
(117, 'subscription', 'subscription_change_plan', '1'),
(120, 'subscription', 'subscription_renewal', 'manual'),
(123, 'preference', 'otp_expire_time', '120'),
(124, 'preference', 'welcome_email', '0'),
(126, 'openai', 'word_count_method', 'token'),
(130, 'long_article', 'long_article_provider', 'OpenAi'),
(131, 'long_article', 'long_article_model', 'gpt-4'),
(132, 'long_article', 'long_article_language', '[\"English\",\"French\",\"Chinese\",\"Arabic\",\"Byelorussian\",\"Bulgarian\",\"Catalan\",\"Estonian\", \"Dutch\"]'),
(133, 'long_article', 'long_article_tone', '[\"Normal\",\"Studio\",\"Warm\",\"Cold\",\"Ambient\",\"Neon\",\"Foggy\",\"Dramatic\",\"Bold\",\"Casual\",\"Professional\",\"Friendly\"]'),
(134, 'long_article', 'long_article_temperature', '[\"Optimal\",\"Low\",\"Medium\",\"High\"]'),
(135, 'long_article', 'long_article_frequency_penalty', '0'),
(136, 'long_article', 'long_article_presence_penalty', '0'),
(147, 'longarticle', 'longarticle_openai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\"},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"openai\"},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":[\"gpt-4\",\"gpt-3.5-turbo\",\"gpt-4o\"]},{\"type\":\"dropdown\",\"label\":\"Tones\",\"name\":\"tone\",\"value\":[\"Normal\",\"Formal\",\"Casual\",\"Professional\",\"Serious\",\"Friendly\",\"Playful\",\"Authoritative\",\"Empathetic\",\"Persuasive\",\"Optimistic\",\"Sarcastic\",\"Informative\",\"Inspiring\",\"Humble\",\"Nostalgic\",\"Dramatic\"]},{\"type\":\"dropdown\",\"label\":\"Languages\",\"name\":\"language\",\"value\":[\"English\",\"French\",\"Arabic\",\"Byelorussian\",\"Bulgarian\",\"Catalan\",\"Estonian\",\"Dutch\"]},{\"type\":\"dropdown\",\"label\":\"Frequency Penalty\",\"name\":\"frequency_penalty\",\"value\":[0,0.5,1,1.5,2],\"default_value\":0},{\"type\":\"dropdown\",\"label\":\"Presence Penalty\",\"name\":\"presence_penalty\",\"value\":[0,0.5,1,1.5,2],\"default_value\":0},{\"type\":\"dropdown\",\"label\":\"Temperature\",\"name\":\"temperature\",\"value\":[0,0.5,1,1.5,2],\"default_value\":1},{\"type\":\"dropdown\",\"label\":\"Top P\",\"name\":\"top_p\",\"value\":[0,0.25,0.5,0.75,1],\"default_value\":1},{\"type\":\"number\",\"label\":\"Max Tokens\",\"name\":\"max_tokens\",\"min\":1,\"max\":4096,\"value\":\"2048\",\"visibility\":true,\"required\":true}]'),
(148, 'aichat', 'aichat_openai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\",\"visibility\":true},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"openai\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":{\"3\":\"gpt-3.5-turbo\"},\"visibility\":true,\"required\":true},{\"type\":\"dropdown\",\"label\":\"Tones\",\"name\":\"tone\",\"value\":[\"Normal\"],\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Languages\",\"name\":\"language\",\"value\":[\"Arabic\"],\"visibility\":true},{\"type\":\"number\",\"label\":\"Max Tokens\",\"name\":\"max_tokens\",\"min\":1,\"max\":4096,\"value\":\"2048\",\"visibility\":true,\"required\":true}]'),
(149, 'templatecontent', 'templatecontent_openai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\"},{\"type\":\"dropdown\",\"label\":\"Language\",\"name\":\"language\",\"value\":[\"English\",\"French\",\"Arabic\",\"Byelorussian\",\"Bulgarian\",\"Catalan\",\"Estonian\",\"Dutch\",\"Russian\",\"Spanish\",\"Portuguese\",\"Polish\",\"German\",\"Sweden\"]},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":[\"gpt-4\",\"gpt-3.5-turbo\",\"gpt-4o\"]},{\"type\":\"dropdown\",\"label\":\"Tone\",\"name\":\"tone\",\"value\":[\"Casual\",\"Funny\",\"Bold\",\"Feminine\",\"Professional\",\"Friendly\",\"Dramatic\",\"Playful\",\"Excited\",\"Sarcastic\",\"Empathetic\"]},{\"type\":\"dropdown\",\"label\":\"Number Of Variant\",\"name\":\"variant\",\"value\":[1,2,3]},{\"type\":\"dropdown\",\"label\":\"Creativity Level\",\"name\":\"creativity_level\",\"value\":[\"Optimal\",\"Low\",\"Medium\",\"High\"]},{\"type\":\"number\",\"label\":\"Max Tokens\",\"name\":\"max_tokens\",\"min\":1,\"max\":4096,\"value\":\"2048\",\"visibility\":true,\"required\":true}]'),
(150, 'code', 'code_openai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\"},{\"type\":\"dropdown\",\"label\":\"Language\",\"name\":\"language\",\"value\":[\"PHP\",\"Java\",\"Rubby\",\"Python\",\"C#\",\"Go\",\"Kotlin\",\"HTML\",\"Javascript\",\"TypeScript\",\"SQL\",\"NoSQL\"]},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":[\"gpt-4\",\"gpt-3.5-turbo\",\"gpt-4o\"]},{\"type\":\"dropdown\",\"label\":\"Code Level\",\"name\":\"code_level\",\"value\":[\"Noob\",\"Moderate\",\"High\"]},{\"type\":\"number\",\"label\":\"Max Tokens\",\"name\":\"max_tokens\",\"min\":1,\"max\":4096,\"value\":\"2048\",\"visibility\":true,\"required\":true},{\"type\":\"dropdown-with-image\",\"label\":\"Code Language\",\"name\":\"code_language\",\"value\":[{\"label\":\"PHP\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\php.png\"},{\"label\":\"Java\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\java.png\"},{\"label\":\"Rubby\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\rubby.jpg\"},{\"label\":\"Python\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\python.png\"},{\"label\":\"C#\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\c-sharp.png\"},{\"label\":\"Go\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\go-lang.png\"},{\"label\":\"Kotlin\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\kotlin.png\"},{\"label\":\"HTML\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\html-5.png\"},{\"label\":\"Javascript\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\js.png\"},{\"label\":\"TypeScript\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\typescript.png\"},{\"label\":\"SQL\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\mysql.png\"},{\"label\":\"NoSQL\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\code\\\\no-sql.png\"}],\"visibility\":true}]'),
(151, 'openai', 'user_permission', '{\"hide_template\":\"1\",\"hide_image\":\"1\",\"hide_code\":\"1\",\"hide_speech_to_text\":\"1\",\"hide_text_to_speech\":\"1\",\"hide_long_article\":\"1\",\"hide_chat\":\"0\",\"hide_plagiarism\":\"1\",\"hide_aichatbot\":\"0\",\"hide_ai_detector\":\"1\",\"hide_video\":\"1\"}'),
(152, 'speechtotext', 'speechtotext_openai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\",\"visibility\":true},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"openai\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":[\"whisper-1\"],\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Word Filters\",\"name\":\"word_filter\",\"value\":[\"Active\",\"Inactive\"],\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Languages\",\"name\":\"language\",\"value\":[\"English\",\"French\",\"Arabic\",\"Bulgarian\",\"Byelorussian\",\"Catalan\",\"Estonian\",\"Dutch\",\"Russian\",\"Spanish\",\"Portuguese\",\"Polish\",\"German\",\"Sweden\"],\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Temperature\",\"name\":\"temperature\",\"value\":[0,0.2,0.5,0.8,1],\"default_value\":0,\"visibility\":true}]'),
(153, 'aiembedding', 'aiembedding_openai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\"},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"openai\"},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":[\"text-embedding-ada-002\",\"text-embedding-3-large\",\"text-embedding-3-small\"]}]'),
(154, 'chatbot', 'chatbot_openai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\"},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"openai\"},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":{\"3\":\"gpt-3.5-turbo\"}}]'),
(155, 'aidocchat', 'aidocchat_openai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\"},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"openai\"},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":[\"gpt-4o\",\"gpt-4-1106-preview\",\"gpt-4-0125-preview\",\"gpt-4\",\"gpt-3.5-turbo\",\"gpt-3.5-turbo-16k\",\"gpt-3.5-turbo-1106\",\"gpt-3.5-turbo-0125\"],\"required\":true},{\"type\":\"dropdown\",\"label\":\"Temperature\",\"name\":\"temperature\",\"value\":[0,0.5,1,1.5,2],\"default_value\":1},{\"type\":\"number\",\"label\":\"Max Tokens\",\"name\":\"max_tokens\",\"min\":1,\"max\":4096,\"value\":\"2048\",\"visibility\":true,\"required\":true}]'),
(156, 'imagemaker', 'imagemaker_openai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\",\"visibility\":false},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"openai\",\"visibility\":false},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":[\"dall-e-2\",\"dall-e-3\"],\"default_value\":\"dall-e-2\",\"visibility\":true,\"required\":true},{\"type\":\"dropdown\",\"label\":\"Variant\",\"name\":\"variant\",\"value\":[1,2,3,4,5,6,7,8,9,10],\"default_value\":1,\"visibility\":true,\"required\":true},{\"type\":\"dropdown\",\"label\":\"Quality\",\"name\":\"quality\",\"value\":[\"standard\",\"hd\"],\"default_value\":\"standard\",\"visibility\":true,\"required\":true},{\"type\":\"dropdown\",\"label\":\"Size\",\"name\":\"size\",\"value\":[\"256x256\",\"512x512\",\"1024x1024\",\"1792x1024\",\"1024x1792\"],\"visibility\":true,\"required\":true},{\"type\":\"dropdown\",\"label\":\"Art Style\",\"name\":\"art_style\",\"value\":[\"Normal\",\"3D Model\",\"Analog Film\",\"Anime\",\"Cinematic\",\"Comic Book\",\"Digital Art\",\"Enhance\",\"Fantacy Art\",\"Icometric\",\"Line Art\",\"Low Poly\",\"Modeling Compound\",\"Neon Punk\",\"Origami\",\"Photographic\",\"Pixel Art\",\"Tile Texture\",\"Water Color\"],\"default\":\"Normal\",\"visibility\":true,\"required\":true},{\"type\":\"dropdown\",\"label\":\"Light Effect\",\"name\":\"light_effect\",\"value\":[\"Normal\",\"Studio\",\"Warm\",\"Cold\",\"Ambient\",\"Neon\",\"Foggy\"],\"default\":\"Normal\",\"visibility\":true,\"required\":true},{\"type\":\"dropdown-with-image\",\"label\":\"Image Art Style\",\"name\":\"image_art_style\",\"value\":[{\"label\":\"Normal\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\normal.jpg\"},{\"label\":\"3D Model\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\3d-animation.png\"},{\"label\":\"Analog Film\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\analog-film.jpg\"},{\"label\":\"Anime\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\anime.png\"},{\"label\":\"Cinematic\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\cinematic.jpg\"},{\"label\":\"Comic Book\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\comic.png\"},{\"label\":\"Digital Art\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\digital-art.png\"},{\"label\":\"Enhance\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\enhance.png\"},{\"label\":\"Fantasy Art\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\fantasy.png\"},{\"label\":\"Isometric\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\isometric.jpg\"},{\"label\":\"Line Art\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\line-art.png\"},{\"label\":\"Low Poly\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\low-poly.png\"},{\"label\":\"Modeling Compound\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\modeling-compound.png\"},{\"label\":\"Neon Punk\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\neon-punk.png\"},{\"label\":\"Origami\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\origami.jpg\"},{\"label\":\"Photographic\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\photographic.jpg\"},{\"label\":\"Pixel Art\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\pixel-art.jpg\"},{\"label\":\"Tile Texture\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\tile-texture.jpg\"},{\"label\":\"Water Color\",\"url\":\"Modules\\\\OpenAI\\\\Resources\\\\assets\\\\image\\\\art-style\\\\water-color.png\"}],\"visibility\":true}]'),
(162, 'videomaker', 'videomaker_stabilityai', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\",\"visibility\":true},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"stabilityai\",\"visibility\":false},{\"type\":\"number\",\"label\":\"Motion Intensity\",\"name\":\"motion_intensity\",\"min\":0,\"max\":255,\"value\":\"160\",\"tooltip\":\"Lower values generally result in less motion in the output video, while higher values generally result in more motion. The range is 0 ~ 255\",\"visibility\":true},{\"type\":\"number\",\"label\":\"Seed\",\"name\":\"seed\",\"value\":\"0\",\"min\":0,\"max\":4294967294,\"tooltip\":\"A specific value from 0 to 4294967294 that is used to guide the randomness of the generation.\",\"visibility\":true},{\"type\":\"slider\",\"label\":\"Image Strength\",\"name\":\"image_strength\",\"min\":0,\"max\":10,\"value\":\"6\",\"required\":true,\"tooltip\":\"A specific value from 0 to 10 to express how strongly the video sticks to the original image.\",\"visibility\":true}]'),
(163, 'voiceover', 'voiceover_google', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\",\"visibility\":true},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"google\",\"visibility\":true},{\"type\":\"integer\",\"label\":\"Maximum Text Blocks Limit\",\"name\":\"conversation_limit\",\"value\":\"4\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Languages\",\"name\":\"language\",\"value\":[\"English\",\"Bengali\",\"French\",\"Chinese\",\"Arabic\",\"Bulgarian\",\"Catalan\",\"Dutch\",\"Russian\",\"Spanish\",\"Portuguese\",\"Polish\",\"German\",\"Sweden\"],\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Volumes\",\"name\":\"volume\",\"value\":[\"-6.00\",\"0.00\",\"6.00\"],\"default_value\":\"0.00\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Pitches\",\"name\":\"pitch\",\"value\":[\"-20.00\",\"0.00\",\"20.00\"],\"default_value\":\"0.00\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Speeds\",\"name\":\"speed\",\"value\":[\"0.25\",\"0.50\",\"1.00\",\"2.00\",\"4.00\"],\"default_value\":\"1.00\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Pauses\",\"name\":\"pause\",\"value\":[\"0s\",\"1s\",\"2s\",\"3s\",\"4s\",\"5s\"],\"default_value\":\"0s\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Audio Effect\",\"name\":\"audio_effect\",\"value\":[\"wearable-class-device\",\"handset-class-device\",\"headphone-class-device\",\"small-bluetooth-speaker-class-device\",\"medium-bluetooth-speaker-class-device\",\"large-home-entertainment-class-device\",\"large-automotive-class-device\",\"telephony-class-application\"],\"default_value\":\"wearable-class-device\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Converted To\",\"name\":\"target_format\",\"value\":[\"MP3\",\"WAV\",\"OGG\"],\"default_value\":\"MP3\",\"visibility\":true}]'),
(164, 'plagiarism', 'plagiarism_plagiarismcheck', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\",\"visibility\":true},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"plagiarismcheck\",\"visibility\":true}]'),
(165, 'aidetector', 'aidetector_plagiarismcheck', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"on\",\"visibility\":true},{\"type\":\"text\",\"label\":\"Provider\",\"name\":\"provider\",\"value\":\"plagiarismcheck\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Supported File Types\",\"name\":\"file_format\",\"value\":{\"0\":\"doc\",\"1\":\"docx\",\"2\":\"pdf\",\"4\":\"odt\",\"5\":\"rtf\"},\"visibility\":false}]'),
(166, 'openai', 'bad_words', ''),
(167, 'aichat', 'aichat_deepseek', '[{\"type\":\"checkbox\",\"label\":\"Provider State\",\"name\":\"status\",\"value\":\"\",\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Models\",\"name\":\"model\",\"value\":[\"deepseek-chat\"],\"visibility\":true,\"required\":true},{\"type\":\"dropdown\",\"label\":\"Tones\",\"name\":\"tone\",\"value\":[\"Normal\",\"Formal\",\"Casual\",\"Professional\",\"Serious\",\"Friendly\",\"Playful\",\"Authoritative\",\"Empathetic\",\"Persuasive\",\"Optimistic\",\"Sarcastic\",\"Informative\",\"Inspiring\",\"Humble\",\"Nostalgic\",\"Dramatic\"],\"visibility\":true},{\"type\":\"dropdown\",\"label\":\"Languages\",\"name\":\"language\",\"value\":[\"Arabic\"],\"visibility\":true},{\"type\":\"number\",\"label\":\"Max Tokens\",\"name\":\"max_tokens\",\"min\":1,\"max\":4096,\"value\":\"2048\",\"visibility\":true,\"required\":true}]');

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `name`) VALUES
(3, 'High'),
(1, 'Low'),
(2, 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(70) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'user' COMMENT 'admin, user',
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin', 'Admin description', '2025-03-14 23:36:48', NULL),
(2, 'User', 'user', 'user', 'Customer description', '2025-03-14 23:36:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `speeches`
--

CREATE TABLE `speeches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `content` text NOT NULL,
  `duration` double(8,2) NOT NULL,
  `language` varchar(191) NOT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_size` double(8,2) DEFAULT NULL,
  `original_file_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `confirmation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Active' COMMENT 'Active/Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_details`
--

CREATE TABLE `subscription_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(65) NOT NULL,
  `unique_code` varchar(191) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `package_subscription_id` int(11) NOT NULL,
  `activation_date` date NOT NULL,
  `billing_date` date DEFAULT NULL,
  `next_billing_date` date DEFAULT NULL,
  `billing_price` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `billing_cycle` varchar(45) DEFAULT NULL,
  `amount_billed` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `amount_received` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `payment_method` varchar(45) DEFAULT NULL,
  `features` varchar(1000) DEFAULT NULL,
  `duration` varchar(5) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `is_trial` tinyint(1) NOT NULL DEFAULT 0,
  `renewable` tinyint(1) NOT NULL DEFAULT 0,
  `payment_status` varchar(45) NOT NULL COMMENT 'Paid / Unpaid',
  `status` varchar(45) NOT NULL COMMENT 'Pending / Active / Inactive/ Expired / Cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_details`
--

INSERT INTO `subscription_details` (`id`, `code`, `unique_code`, `user_id`, `package_id`, `package_subscription_id`, `activation_date`, `billing_date`, `next_billing_date`, `billing_price`, `billing_cycle`, `amount_billed`, `amount_received`, `payment_method`, `features`, `duration`, `currency`, `is_trial`, `renewable`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AVSBMF535T', '116660010364bcda7ef0f4f4.40410543', 2, 10, 1, '2025-03-11', '2025-03-11', '2025-04-10', 129.00000000, 'monthly', 129.00000000, 129.00000000, 'Stripe', '[\"word\",\"image\",\"image-resolution\"]', NULL, 'USD', 0, 1, 'Paid', 'Active', '2025-03-11 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `package_id` bigint(20) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Inactive',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_member_metas`
--

CREATE TABLE `team_member_metas` (
  `id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `category` varchar(50) NOT NULL,
  `field` varchar(100) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theme_options`
--

CREATE TABLE `theme_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_options`
--

INSERT INTO `theme_options` (`id`, `name`, `value`) VALUES
(1, 'default_template_footer_logo_light', ''),
(4, 'default_template_payment_methods', ''),
(5, 'default_template_phone_no', '0'),
(6, 'default_template_email', '0'),
(7, 'default_template_currency', '0'),
(8, 'default_template_footer', '{\"main\":{\"text_color\":\"#ffffff\",\"bg_color\":\"#763cd4\",\"direction\":\"left\",\"about_us\":{\"sort\":\"1\",\"status\":\"1\",\"title\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"data\":{\"social_data\":{\"1\":{\"label\":\"facebook\",\"link\":\"https:\\/\\/www.facebook.com\"},\"2\":{\"label\":\"youtube\",\"link\":\"https:\\/\\/www.youtube.com\"},\"3\":{\"label\":\"whatsapp\",\"link\":\"https:\\/\\/www.whatsapp.com\"},\"4\":{\"label\":\"instagram\",\"link\":\"\"},\"5\":{\"label\":\"wechat\",\"link\":\"\"},\"6\":{\"label\":\"tiktok\",\"link\":\"\"},\"7\":{\"label\":\"telegram\",\"link\":\"\"},\"8\":{\"label\":\"snapchat\",\"link\":\"\"},\"9\":{\"label\":\"twitter\",\"link\":\"https:\\/\\/www.twitter.com\"},\"10\":{\"label\":\"reddit\",\"link\":\"\"},\"11\":{\"label\":\"quora\",\"link\":\"\"},\"12\":{\"label\":\"skype\",\"link\":\"\"},\"13\":{\"label\":\"microsoft_teams\",\"link\":\"\"},\"14\":{\"label\":\"linkedin\",\"link\":\"https:\\/\\/www.linkedin.com\"}}}},\"useful_links\":{\"sort\":\"2\",\"status\":\"1\",\"title\":\"LawgicAI\",\"data\":{\"1\":{\"label\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"link\":\"http:\\/\\/localhost\\/ai\\/page\\/about-us\"},\"2\":{\"label\":\"\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0639\\u0646\\u0627\",\"link\":\"http:\\/\\/localhost\\/ai\\/page\\/contact-us\"},\"3\":{\"label\":\"\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u064a\\u0629\",\"link\":\"http:\\/\\/localhost\\/ai\\/page\\/privacy-policy\"},\"4\":{\"label\":\"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0631\\u0642\\u0645\\u064a\",\"link\":\"http:\\/\\/localhost\\/ai\\/page\\/digital-payments\"},\"5\":{\"label\":\"\\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0648\\u0627\\u0644\\u0623\\u062d\\u0643\\u0627\\u0645\",\"link\":\"http:\\/\\/localhost\\/ai\\/page\\/terms\"}}},\"pages\":{\"sort\":\"3\",\"status\":\"0\",\"title\":\"Case Uses\",\"data\":{\"1\":{\"label\":\"Blog Ideas & Outlines\",\"link\":\"http:\\/\\/localhost\\/aii\\/user\\/templates\\/blog-ideas-outlines\"},\"2\":{\"label\":\"Image Generator\",\"link\":\"http:\\/\\/localhost\\/aii\\/user\\/image\"},\"3\":{\"label\":\"Marketing Copy & Strategies\",\"link\":\"http:\\/\\/localhost\\/aii\\/user\\/templates\\/marketing-copy-strategies\"},\"4\":{\"label\":\"Business Ideas Strategies\",\"link\":\"http:\\/\\/localhost\\/aii\\/user\\/templates\\/business-ideas-strategies\"},\"5\":{\"label\":\"Google Ad Copy\",\"link\":\"http:\\/\\/localhost\\/aii\\/user\\/templates\\/google-ad-copy\"}}},\"resource_links\":{\"sort\":\"4\",\"status\":\"0\",\"title\":\"Resources\",\"data\":{\"1\":{\"label\":\"Blog\",\"link\":\"http:\\/\\/localhost\\/aii\\/blogs\"},\"2\":{\"label\":\"Guides & Tutorials\",\"link\":\"https:\\/\\/platform.openai.com\\/docs\\/introduction\"},\"3\":{\"label\":\"API Docs\",\"link\":\"https:\\\\\\/\\\\\\/stablediffusionapi.com\\\\\\/docs\\\\\\/\"},\"4\":{\"label\":\"Community\",\"link\":\"https:\\/\\/community.openai.com\\/\"}}},\"support_links\":{\"sort\":\"5\",\"status\":\"1\",\"title\":\"Support\",\"data\":{\"1\":{\"label\":\"OpenAI API\",\"link\":\"https:\\/\\/platform.openai.com\\/docs\\/introduction\"},\"2\":{\"label\":\"Stable Diffusion API\",\"link\":\"https:\\\\\\/\\\\\\/stablediffusionapi.com\\\\\\/docs\\\\\\/\"}}}},\"bottom\":{\"status\":\"1\",\"text_color\":\"#ffffff\",\"bg_color\":\"#763cd4\",\"border_top\":\"#dbdbdb\",\"title\":\"2025 LawgicAI, Inc. All Rights Reserved.\",\"position\":\"center\"}}'),
(10, 'default_template_header', '{\"main\":{\"text_color\":\"#ffffff\",\"bg_color\":\"#000000\",\"show_logo\":\"1\",\"show_switch_bar\":\"1\",\"show_menu\":\"1\"}}'),
(11, 'default_template_header_logo_light', ''),
(12, 'default_template_is_color_picker_active', '0'),
(13, 'default_template_social', '{\"facebook\":\"1\",\"whatsapp\":\"1\",\"instagram\":\"1\",\"pinterest\":\"1\",\"linkedin\":\"1\"}'),
(14, 'default_template_page', '{\"term_condition\":\"\\u0627\\u0644\\u0634\\u0631\\u0648\\u0637-\\u0648\\u0627\\u0644\\u0623\\u062d\\u0643\\u0627\\u0645\"}'),
(15, 'default_template_header_mobile_logo', ''),
(18, 'default_template_primary_color', '#fcca19'),
(91, 'default_template_footer_logo_dark', ''),
(93, 'default_template_header_logo_dark', ''),
(94, 'layout_faq', '{\"1\":\"bottom\"}'),
(95, 'file_id', '[\"1315\",\"1315\"]');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `thread_type` varchar(8) DEFAULT NULL,
  `priority_id` int(10) UNSIGNED DEFAULT NULL,
  `thread_status_id` int(10) UNSIGNED DEFAULT NULL,
  `thread_key` varchar(45) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `last_reply` datetime DEFAULT NULL,
  `assigned_member_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thread_replies`
--

CREATE TABLE `thread_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `receiver_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` text DEFAULT NULL,
  `has_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thread_statuses`
--

CREATE TABLE `thread_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status_order` int(11) NOT NULL,
  `color` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thread_statuses`
--

INSERT INTO `thread_statuses` (`id`, `name`, `status_order`, `color`) VALUES
(1, 'Not Started', 1, '#F22012'),
(2, 'In Progress', 3, '#04a9f5'),
(3, 'Testing', 4, '#5a4d4d'),
(4, 'Complete', 5, '#00b894'),
(5, 'On Hold', 2, '#fdcb6e'),
(6, 'Open', 6, '#F22012'),
(7, 'Answered', 7, '#0000ff');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(32) NOT NULL,
  `field_name` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `sso_account_id` varchar(191) DEFAULT NULL,
  `sso_service` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Pending',
  `activation_code` varchar(191) DEFAULT NULL,
  `activation_otp` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `birthday`, `gender`, `address`, `sso_account_id`, `sso_service`, `remember_token`, `status`, `activation_code`, `activation_otp`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$ZdUZd3gPqC5ZOk/z0eb6kOn2fpAXPVGN.jBXEEMv.XiuY68mF/Vj6', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', NULL, NULL, '2025-03-14 23:36:48', '2025-03-14 23:37:25', NULL),
(2, 'Blaine Keller', 'user@gmail.com', NULL, '$2y$10$d0TN5l6NAx/zrqfYbW4eY.3qNwtLIeHhLOqoMgiuqLsDg6GXmcqeu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, '2025-03-14 23:36:48', '2025-03-15 21:38:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_type` varchar(80) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'null',
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_meta`
--

INSERT INTO `users_meta` (`id`, `owner_type`, `owner_id`, `type`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'string', 'designation', 'Entrepreneur', NULL, NULL),
(2, 'App\\Models\\User', 1, 'string', 'description', 'Agatha Williams is a visionary entrepreneur, making waves in the business world with his innovative ideas and unwavering determination. With a keen eye for opportunities, he has successfully founded and led multiple ventures, leaving a significant impact on various industries. Agatha\'s passion for growth and empowerment drives him to inspire others to achieve greatness. A trailblazer and trendsetter, he continues to redefine success and shape the future of entrepreneurship.', NULL, NULL),
(3, 'App\\Models\\User', 1, 'string', 'facebook', 'https://www.facebook.com', NULL, NULL),
(4, 'App\\Models\\User', 1, 'string', 'twitter', 'https://www.twitter.com', NULL, NULL),
(5, 'App\\Models\\User', 1, 'string', 'instagram', 'https://www.instagram.com', NULL, NULL),
(6, 'App\\Models\\User', 1, 'string', 'theme_preference', 'light', '2025-03-14 23:37:35', '2025-03-21 22:03:18'),
(7, 'App\\Models\\User', 2, 'NULL', 'designation', NULL, '2025-03-15 21:38:09', '2025-03-15 21:38:09'),
(8, 'App\\Models\\User', 2, 'NULL', 'description', NULL, '2025-03-15 21:38:09', '2025-03-15 21:38:09'),
(9, 'App\\Models\\User', 2, 'NULL', 'facebook', NULL, '2025-03-15 21:38:09', '2025-03-15 21:38:09'),
(10, 'App\\Models\\User', 2, 'NULL', 'twitter', NULL, '2025-03-15 21:38:09', '2025-03-15 21:38:09'),
(11, 'App\\Models\\User', 2, 'NULL', 'instagram', NULL, '2025-03-15 21:38:09', '2025-03-15 21:38:09'),
(12, 'App\\Models\\User', 2, 'string', 'theme_preference', 'light', '2025-03-15 21:38:50', '2025-03-15 21:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `use_cases`
--

CREATE TABLE `use_cases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `prompt` text NOT NULL,
  `creator_type` varchar(191) NOT NULL COMMENT 'User Type',
  `creator_id` bigint(20) UNSIGNED NOT NULL COMMENT 'User ID',
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `use_cases`
--

INSERT INTO `use_cases` (`id`, `name`, `description`, `slug`, `prompt`, `creator_type`, `creator_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Blog Ideas & Outlines', 'Brainstorm new blog posts topics that will engage readers and rank well on Google.', 'blog-ideas-outlines', 'What are some great blog ideas and outline about: [[blog_idea]].', 'admin', 1, 'active', NULL, NULL),
(2, 'Blog Post Writing', 'Write engaging introduction and section paragraphs for your blog.', 'blog-post-writing', 'Please generate a blog post idea with the title of [[title]] that would be engaging, informative, and interesting for a general audience. The blog post should be approximately 1000 words long and should focus on [[topic]] topic.', 'admin', 1, 'active', NULL, NULL),
(3, 'Story Writing', 'Write deliciously creative stories to engage your readers.', 'story-writing', 'Please generate a story about [[story]]. the story must be realstic and get attention to reader.', 'admin', 1, 'active', NULL, NULL),
(4, 'Google Ad Copy', 'High-quality pairs (Title & Description) of Google ad copy to drive more traffic.', 'google-ad-copy', 'Please generate 15 set of Google Ads for a [[foofle_ad]]. The ads should be should highlight the key features, benefits, and unique selling points of the product or service', 'admin', 1, 'active', NULL, NULL),
(5, 'Facebook Ad Copy', 'Create high-performing Facebook Ads to generate more leads.', 'facebook-ad-copy', 'Please generate social media ads for [[facebook_ad]] and the the target audience is new generaton.', 'admin', 1, 'active', NULL, NULL),
(6, 'Keyword Generator', 'Come up with related keywords, key phrases, and questions using AI writing assistant.', 'keyword-generator', 'Please generate keyword about [[keyword_generator]] and the keyword should be real life content.', 'admin', 1, 'active', NULL, NULL),
(7, 'Keyword Extractor', 'The ultimate SEO tool you\'ll need to research keywords that rank.', 'keyword-extractor', 'Extract the top 10 keywords from the following text: [[keyword_extractor]].', 'admin', 1, 'active', NULL, NULL),
(8, 'SEO Meta Title & Details', 'Write SEO optimized title tags and meta descriptions that will rank well on Google.', 'seo-meta-title-details', 'Write strong meta description for a page about [[seo_meta]]', 'admin', 1, 'active', NULL, NULL),
(9, 'Marketing Copy & Strategies', 'Brainstorm different angles to add vibrancy to your marketing.', 'marketing-copy-strategies', 'Write an article about marketing strategies for [[marketing_stratigy]] businesses. Include information on what marketing is, why it is important, and some effective marketing strategies that businesses can use', 'admin', 1, 'active', NULL, NULL),
(10, 'Landing Page & Website Copy', 'Generate creative and persuasive copies for sections of your websites.', 'landing-page-website-copy', 'Generate landing page content for a new product launch.The target audience [[audience]] and The product is a [[page]]. The landing page should highlight the features and benefits of the product, and encourage visitors to sign up for more information or make a purchase', 'admin', 1, 'active', NULL, NULL),
(11, 'Amazon Product Outlines', 'Create product titles & descriptions according to Amazon’s guidelines. Grab your shopper\'s attention with branded ads.', 'amazon-product-outlines', 'Please write a product description for [[product_name]]. The product should be described in a way that highlights its unique features, benefits, and the keyword should be in [[keyword]] . The tone of the description should be engaging and persuasive, with an emphasis on converting potential customers into buyers', 'admin', 1, 'active', NULL, NULL),
(12, 'Product Description', 'Craft epic product descriptions to increase conversion for your eCommerce store.', 'product-description', 'Please write a product description for [[product_name]]. The product should be described in a way that highlights its unique features, benefits, and the target audience is [[audience]]. the product description must include [[description]]', 'admin', 1, 'active', NULL, NULL),
(13, 'Product Reviews & Responders', 'Write well detailed product reviews and thoughtful responses to customers.', 'product-reviews-responders', 'Create 5 creative customer reviews for a product [[product_name]]. Product description is [[product_description]]', 'admin', 1, 'active', NULL, NULL),
(14, 'LinkedIn Profile Copy', 'A blend of creativity and professionalism to enrich your profile that captures attention.', 'linkedin-profile-copy', 'Create a LinkedIn profile for a [[profession]]. Include a summary, education, and skills section. professional experince with [[experience]] years of experience Use [[skils]] relevant to the industry and position', 'admin', 1, 'active', NULL, NULL),
(15, 'Personal Bio', 'Describe yourself effectively in a few words. Perfect to use while creating online profiles.', 'personal-bio', 'Please write a brief bio for yourself that highlights your experience at [[experience]], skills of [[skils]], and accomplishments. Your bio should be written in the third person and be no longer than 900 words. Include information about your education and degree of [[education]], and other relevant details that would make you stand out to potential employers or clients', 'admin', 1, 'active', NULL, NULL),
(16, 'Email Writing', 'Create professional emails for marketing, sales, engagement, & more in seconds.', 'email-writing', 'Please write an email and the title of email must be [[title]]. The email should be described in a way that highlights its unique features, benefits, and the keyword should be in [[content]] . ', 'admin', 1, 'active', NULL, NULL),
(17, 'Call to Action', 'Come up with creative and high converting CTAs for your ads, posts, landing pages, and more.', 'call-to-action', 'Generate a call-to-action that is attention-grabbing and compelling for a [[content]]. The call-to-action should encourage the reader to take immediate action and include a sense of urgency', 'admin', 1, 'active', NULL, NULL),
(18, 'Business Ideas & Strategies', 'Confused what business you should start or how to boost profit? Brainstorm here.', 'business-ideas-strategies', 'Please generate at least 15 business idea. The business idea should focus on [[business_idea]] and the content must include [[keyword]]', 'admin', 1, 'active', NULL, NULL),
(19, 'Brand Name', 'Give your new launches the perfect name without brainstorming in no time.', 'brand-name', 'Please generate at least 10 brand name that would be suitable for a [[brand_name]] company. The brand should be memorable, catchy, and easy to pronounce. Please ensure that the brand name is unique and has not been registered or trademarked by any other company. The traget audinece is [[audience]] please provide a short description of why you think the brand name is a good fit for the company', 'admin', 1, 'active', NULL, NULL),
(20, 'Tagline & Headline', 'Generate creative and catchy taglines and headlines for your profile, product, website, articles, and much more.', 'tagline-headline', 'Generate 10 attention-grabbing headlines about [[headline]].', 'admin', 1, 'active', NULL, NULL),
(21, 'Content Improver', 'Content writing assistant to simplify your writing and make it mistake-free. Best Grammarly alternative.', 'content-improver', 'Please improve the [[improve]] text and correct any grammar mistakes', 'admin', 1, 'active', NULL, NULL),
(22, 'Content Rephrase', 'Discover different ways to write the same thing. New words, new styles.', 'content-rephrase', 'Please rephrase the [[rephrase]] text and correct any grammar mistakes', 'admin', 1, 'active', NULL, NULL),
(23, 'Text Summarizer', 'This is hands down the best way to summarize any piece of content.', 'text-summarizer', 'Please summarize the [[summarize]] text and correct any grammar mistakes', 'admin', 1, 'active', NULL, NULL),
(24, 'Cover Letter', 'Create convincing resume and cover letter for job applications to stand.', 'cv-resume-cover-letter', 'Please generate a cover letter for a candidate applying for a [[cover_letter]] position. The candidate id expert in [[skill]] , and is looking for an opportunity to improve', 'admin', 1, 'active', NULL, NULL),
(25, 'Job Description', 'Create engaging job descriptions for any position to attract the best candidates.', 'job-description', 'Please generate a job description for the position of [[job_description]]. This is for [[experience]] yeras of experience.  The job description should be detailed and accurate, and should include information about the company, the responsibilities and requirements of the position, and the qualifications and skills required for the role. Please also include any relevant information about the compensation and benefits package, as well as any opportunities for growth and advancement within the company', 'admin', 1, 'active', NULL, NULL),
(26, 'Company Description', 'Sharp bios and communication to describe your company to the right people.', 'company-description', 'Please generate a comapny description. The name of the company is [[company_name]]. This company works with [[company_task]]  The description should be detailed and accurate, and should include information about the company, the responsibilities, Please also include opportunities for growth and advancement within the company', 'admin', 1, 'active', NULL, NULL),
(27, 'Questions & Answers', 'Come up with questions & answers for Quora, company knowledge base, and more.', 'questions-answers', 'Please generate at least 10 questions and answers related to [[question_answer]]. and the answers should be accurate, well-researched, and supported by credible sources', 'admin', 1, 'active', NULL, NULL),
(28, 'Interview Questions', 'Prepare thoughtful and interesting interview questions for any job, podcast, or show.', 'interview-questions', 'Please generate 10 interview questions about [[interview_question]]. The question must include [[interview_question_content]]. The questions should be challenging enough to assess the candidate\'s skills, knowledge', 'admin', 1, 'active', NULL, NULL),
(29, 'AIDA Framework', 'Break down your content into Attention, Interest, Desire, Action.', 'aida-framework', 'Write a persuasive marketing article on [[aida_content]]using the AIDA model. The article should grab the reader\'s Attention, build Interest by highlighting the features and benefits of the product, create Desire by emphasizing its unique selling proposition, and end with a strong Call-to-Action to encourage the reader to make a purchase.', 'admin', 1, 'active', NULL, NULL),
(30, 'PAS Framework', 'Specify the Pain points, find out how to Agitate & provide a Solution.', 'pas-framework', 'Write a persuasive piece about the [[pas_content]] using the PAS (Problem-Agitate-Solution) model. Start by identifying a common problem that people face, and then agitate the problem by describing the negative consequences of not having a smartphone. Finally, present the solution by highlighting the specific ways in which smartphones can help solve the problem and improve people\'s lives', 'admin', 1, 'active', NULL, NULL),
(31, 'Explain it to a Child', 'Rephrase text to a lower grade level make it more simple to understand and easier to read.', 'explain-it-to-a-child', 'Please provide a simplified explanation of the following topic for a child and the topic is : [[child_content]]', 'admin', 1, 'active', NULL, NULL),
(32, 'SMS & Notifications', 'Generate creative and catchy notifications for your business that brings customers back.', 'sms-notifications', 'Write a notification message to inform customers about [[notification]]. The notification must contain [[notification_content]] and will be available for a limited time only. Make sure to highlight the benefits of the discount and encourage customers to take advantage of it', 'admin', 1, 'active', NULL, NULL),
(33, 'Tweet Generator', 'Generate tweets and threads using AI, that are relevant and on-trend.', 'tweet-generator', 'Write a tweet about [[tweet]]. Make sure the tweet is relevent and relevent to current trend and must contenet 250 words with hash tags.', 'admin', 1, 'active', NULL, NULL),
(34, 'Video Scripts', 'Create script outlines for your videos and tell a story.', 'video-scripts', 'Please generate a video description. The video title about [[video_title]]. The video description should be attention-grabbing, informative, and persuasive, and should include [[video_content]] keywords and phrases.', 'admin', 1, 'active', NULL, NULL),
(35, 'YouTube Descriptions', 'Generate engaging titles and description for your youtube videos to get more views & subscribers.', 'youtube-descriptions', 'Please generate a youtube video description. The video title about [[youtube_video_title]]. The youtube video description should be attention-grabbing, informative, and persuasive, and should include [[youtube_video_content]] keywords and phrases.', 'admin', 1, 'active', NULL, NULL),
(36, 'YouTube Ideas & Outlines', 'Let\'s take your vision ahead. Plan your YouTube journey with structured outlines.', 'youtube-ideas-outlines', 'Write 15 youtube video ideas about [[youtube_video_idea]]', 'admin', 1, 'active', NULL, NULL),
(37, 'Poetry', 'Write fun and creative poetry for outstanding impressions.', 'poetry', 'Write a poem about [[poetry]], using rich and vivid imagery to capture the reader\'s imagination', 'admin', 1, 'active', NULL, NULL),
(38, 'Ask Any Question', 'No need for search engines for the information you’re looking for.', 'ask-any-question', 'Please give me the details answer about [[question]] this. The answer should be specific.', 'admin', 1, 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `use_case_categories`
--

CREATE TABLE `use_case_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `use_case_categories`
--

INSERT INTO `use_case_categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ads & Marketing Tools', 'ads-marketing-tools', 'Ads & Marketing Tools Description', NULL, NULL),
(2, 'Articles & Blogs', 'articles-blogs', 'Articles & Blogs Description', NULL, NULL),
(3, 'E-commerce', 'e-commerce', 'E-commerce Description', NULL, NULL),
(4, 'General Writing & Ideas', 'general-writing-ideas', 'General Writing & Ideas Description', NULL, NULL),
(5, 'Jobs & Companies', 'jobs-companies', 'Jobs & Companies Description', NULL, NULL),
(6, 'Miscellaneous', 'miscellaneous', 'Miscellaneous Description', NULL, NULL),
(7, 'Profile Enhancer', 'profile-enhancer', 'Profile Enhancer Description', NULL, NULL),
(8, 'Website', 'website', 'Website Description', NULL, NULL),
(9, 'Others', 'others', 'Not having been sorted into a category.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `use_case_use_case_category`
--

CREATE TABLE `use_case_use_case_category` (
  `use_case_id` bigint(20) UNSIGNED NOT NULL,
  `use_case_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `use_case_use_case_category`
--

INSERT INTO `use_case_use_case_category` (`use_case_id`, `use_case_category_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 8),
(11, 3),
(12, 3),
(13, 3),
(14, 7),
(15, 7),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6);

-- --------------------------------------------------------

--
-- Table structure for table `voices`
--

CREATE TABLE `voices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `voice_name` varchar(191) NOT NULL,
  `language_code` varchar(191) NOT NULL,
  `gender` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `status` varchar(15) NOT NULL,
  `providers` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voices`
--

INSERT INTO `voices` (`id`, `name`, `voice_name`, `language_code`, `gender`, `file_name`, `status`, `providers`, `created_at`, `updated_at`) VALUES
(1, 'Aria', '9BWtsMINqrJLrRacOk9x', 'en', 'Female', '20250129/954d1fb5ec0df431f87e29682e645bb3.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:48', NULL),
(2, 'Roger', 'CwhRBWXzGAHq8TQ4Fs17', 'en', 'Male', '20250129/013d221b0200b2e8622166f0fc334f6d.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:48', NULL),
(3, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'en', 'Female', '20250129/80438e1c501822b12252aaec2ab95806.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:48', NULL),
(4, 'Laura', 'FGY2WhTYpPnrIDTdsKH5', 'en', 'Female', '20250129/8884a6ab5ba892e09d7033d25608e2fa.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:48', NULL),
(5, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'en', 'Male', '20250129/9f91f1202c3c2ca7a6594ac0097aa49b.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:48', NULL),
(6, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'en', 'Male', '20250129/05b9574a607d96021a9701b5162c7e69.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(7, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'en', 'Male', '20250129/0501b378b903d4cbb6a8804c1634db21.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(8, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'en', 'Male', '20250129/c84ea9cc3545fde00f40b4fdd06c87c5.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(9, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'en', 'Female', '20250129/3effa93c035a0a56364b49fa1e10b538.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(10, 'Alice', 'Xb7hH8MSUJpSbSDYk0k2', 'en', 'Female', '20250129/b2ee43f0fc12178f92ea1563eff157d9.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(11, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'en', 'Female', '20250129/8e9b5015e0b14d2e32162da12043bdf1.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(12, 'Will', 'bIHbv24MWmeRgasZH58o', 'en', 'Male', '20250129/2b18dd18ec2fbcc5b964f0ec6c039997.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(13, 'Jessica', 'cgSgspJ2msm6clMCkdW9', 'en', 'Female', '20250129/a90e5c9136fca18e249f3fa03ee3d34c.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(14, 'Eric', 'cjVigY5qzO86Huf0OWal', 'en', 'Male', '20250129/5d0c6b3e8ddbe7a820138182133cc877.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(15, 'Chris', 'iP95p4xoKVk53GoZ742B', 'en', 'Male', '20250129/5a18a6037989db188282b850c5de41aa.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(16, 'Brian', 'nPczCjzI2devNBz1zQrb', 'en', 'Male', '20250129/7f7390cc36dea5097d5994a8eda14d33.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(17, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'en', 'Male', '20250129/078ac0c68da623583d7c162803b16763.mp3\"', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(18, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'en', 'Female', '20250129/0218c6b346467f6e06e9a8b597126698.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(19, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'en', 'Male', '20250129/0e229051e831d010a538124dc0de6566.mp3', 'Active', 'elevenlabs', '2025-03-14 23:36:49', NULL),
(20, 'Oliva Watson', 'en-GB-Standard-A', 'en-GB', 'Female', '20231007/e6367158209c88c574897cf59d76df57.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(21, 'Alexander Smith', 'en-GB-Standard-B', 'en-GB', 'Male', '20231007/b75d07163740090aad47cb0e3b5c2a53.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(22, 'Anika Sen', 'bn-IN-Standard-A', 'bn-IN', 'Female', '20231007/ac01756094518729171fb7c8e14fbf3e.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(23, 'Aarav Dasgupta', 'bn-IN-Standard-B', 'bn-IN', 'Male', '20231007/7d0929368a8849ef25580799d6c8844e.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(24, 'Sophie Lefebvre', 'fr-CA-Standard-A', 'fr-CA', 'Female', '20231007/5b3f7d48e95da0e0806b2ceb894fb318.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(25, 'Jean Martin', 'fr-CA-Standard-B', 'fr-CA', 'Male', '20231007/78cda68fd07cb4d5e56011125718f995.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(26, 'Li Wei', 'yue-HK-Standard-A', 'yue-HK', 'Female', '20231007/806b3b78cb6f9131a0f1ff8c0b06f6be.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(27, 'Zhang Ming', 'yue-HK-Standard-B', 'yue-HK', 'Male', '20231007/6024c6b2b58a74a920d546504d21df45.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(28, 'Fatima Ali', 'ar-XA-Standard-A', 'ar-XA', 'Female', '20231007/3a4718972af6cf1ae1eefad6e96349da.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(29, 'Ahmed Khan', 'ar-XA-Standard-B', 'ar-XA', 'Male', '20231007/6b20b576b8b73c91cae77abd5cdba35f.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(30, 'Maria Georgieva', 'bg-BG-Standard-A', 'bg-BG', 'Female', '20231007/8e727887558125a6ec46ee1ee426ad61.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(31, 'Anna Bakker', 'nl-NL-Standard-A', 'nl-NL', 'Female', '20231007/43057997c83cdfc322118c5bb3d58e8e.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(32, 'Pieter Janssen', 'nl-NL-Standard-B', 'nl-NL', 'Male', '20231007/bf6f25d59663808c61c1809969ca151f.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(33, 'Olga Kuznetsova', 'ru-RU-Standard-A', 'ru-RU', 'Female', '20231007/758a12b1e1aeb91cea77c2267417de2b.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(34, 'Alexei Sokolov', 'ru-RU-Standard-B', 'ru-RU', 'Male', '20231007/277be8c4407af3bb04011d3f408864b5.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(35, 'Ana Martínez', 'es-ES-Standard-A', 'es-ES', 'Female', '20231007/3749de7e932abc110bd8aa79bad882e4.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(36, 'Carlos Rodríguez', 'es-ES-Standard-B', 'es-ES', 'Male', '20231007/e06889086f86d01b87140734c63c67c7.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(37, 'Sofia Ferreira', 'pt-BR-Standard-A', 'pt-BR', 'Female', '20231007/4c19abbc46f3dc2252e3a8cc63fb935e.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(38, 'Pedro Pereira', 'pt-BR-Standard-B', 'pt-BR', 'Male', '20231007/bbe15c8f9882fc164eb89264ca28a3fd.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(39, 'Anna Nowak', 'pl-PL-Standard-A', 'pl-PL', 'Female', '20231007/7a716295243e1a71d634fd45cf4232f2.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(40, 'Marek Kowalski', 'pl-PL-Standard-B', 'pl-PL', 'Male', '20231007/f09253b40aa3fa79d89aa7eb0daa9d7b.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(41, 'Laura Fischer', 'de-DE-Standard-A', 'de-DE', 'Female', '20231007/0ce1422876916c436281eb78644a5edf.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(42, 'Stefan Wagner', 'de-DE-Standard-B', 'de-DE', 'Male', '20231007/c049f7f87760fa7d6567262f3162c79a.MP3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(43, 'Mira Sol', 'sv-SE-Standard-C', 'sv-SE', 'Female', '20231207/473716ad42ef06bc4547351735a81032.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(44, 'Elias Storm', 'sv-SE-Standard-E', 'sv-SE', 'Male', '20231207/f9648bc3be6cd965a407e13ca9f92449.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(45, 'Linnea Frost', 'sv-SE-Standard-B', 'sv-SE', 'Female', '20231207/52195a810df5170c9ff5f9a7af7495ca.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(46, 'Viktor Moon', 'sv-SE-Standard-D', 'sv-SE', 'Male', '20231207/dab2dd44b49ecb909d97ef04f563a600.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(47, 'Amber Heath', 'en-GB-Standard-C', 'en-GB', 'Female', '20231207/e1c40a68d98e57e6fd0c318049347217.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(48, 'Leo Finch', 'en-GB-Standard-D', 'en-GB', 'Male', '20231207/8d2e56a23faab9d02e52ce5e98a36e03.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(49, 'Luna Blake', 'en-GB-Standard-F', 'en-GB', 'Female', '20231207/6d72a1c75ac3478c760246a4382a3158.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(50, 'Oliver Thames', 'en-US-Standard-A', 'en-US', 'Male', '20231207/2d104c8fe1edc817e7cc44fb08820891.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(51, 'Henry Bristol', 'en-US-Standard-B', 'en-US', 'Male', '20231207/26196f194d5a2e5063f3ac3b25fb091c.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(52, 'Elsie Oxford', 'en-US-Standard-C', 'en-US', 'Female', '20231207/169e583d1e4e031e4c17f723d5f38d1d.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(53, 'Sofia Luz', 'pt-BR-Standard-C', 'pt-BR', 'Female', '20231207/eef063f9c5e676f6ffe1a553bb92782d.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(54, 'Lara Costa', 'pt-PT-Standard-A', 'pt-PT', 'Female', '20231207/e6d0f3c0066feec62730273cf744df88.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(55, 'Beatriz Alves', 'pt-PT-Standard-B', 'pt-PT', 'Male', '20231207/443326853059ab176e34e8b72757f8ba.mp3', 'Active', 'google', '2025-03-14 23:36:49', '2025-03-14 23:36:52'),
(56, 'Layla Noor', 'ar-XA-Standard-D', 'ar-XA', 'Female', '20231207/17d23cd2f3c4f3577a2b338f8598018b.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(57, 'Amir Fahad', 'ar-XA-Standard-C', 'ar-XA', 'Male', '20231207/8547c3854ac1f64a3d19850c68d0f91d.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(58, 'Valentina Rojas', 'es-ES-Standard-C', 'es-ES', 'Female', '20231207/bbf999009a137d372d99d39097eafcf3.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(59, 'Lucia Perez', 'es-ES-Standard-D', 'es-ES', 'Female', '20231207/871cf3233cb90653b1d1d87597a04e11.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(60, 'Felix Stern', 'de-DE-Standard-C', 'de-DE', 'Female', '20231207/f3bd234d702e0f3d33ea826fdb51b31d.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(61, 'Simon Mond', 'de-DE-Standard-D', 'de-DE', 'Male', '20231207/648e4762fe68b8f6be9d7e33b45a7486.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(62, 'Paul Kirsch', 'de-DE-Standard-E', 'de-DE', 'Male', '20231207/593585fb1cd2d97cd6dc7942ddcc6522.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(63, 'Lyra Faye', 'en-US-Standard-E', 'en-US', 'Female', '20240312/f2166de7860687ef5d931b6beb3d427c.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(64, 'Aria Serene', 'en-US-Standard-F', 'en-US', 'Female', '20240312/ce38c617d0c2c2d0a35e702850ec24cc.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(65, 'Nova Celeste', 'en-US-Standard-G', 'en-US', 'Female', '20240312/058808c764fbdf424cd39759f34040aa.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(66, 'Thorne Archer', 'en-US-Standard-I', 'en-US', 'Male', '20240312/623e467fd605d95f913ace2f7540948b.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(67, 'Atlas Steele', 'en-US-Standard-J', 'en-US', 'Male', '20240312/a7c684a488a5f802e79f1d0a7b7223b3.mp3', 'Active', 'google', '2025-03-14 23:36:50', '2025-03-14 23:36:52'),
(68, 'Ethan Parker', 'alloy', 'en', 'Male', '20240225/929cd09396dec0c965376d75e616255d.mp3', 'Active', 'openai', '2025-03-14 23:36:52', NULL),
(69, 'Caleb Mitchell', 'echo', 'en', 'Male', '20240225/68d64183f163eee1fea7120397500104.mp3', 'Active', 'openai', '2025-03-14 23:36:52', NULL),
(70, 'Lucas Bennett', 'fable', 'en', 'Male', '20240225/1fec1847d2cc6de9595b256673605874.mp3', 'Active', 'openai', '2025-03-14 23:36:52', NULL),
(71, 'Mason Anderson', 'onyx', 'en', 'Male', '20240225/2bccf1aa0586e188c8a0fac2e75f92dc.mp3', 'Active', 'openai', '2025-03-14 23:36:52', NULL),
(72, 'Isabella Cruz', 'nova', 'en', 'Female', '20240225/eea878f17d6e4818c702b2d8e7dd425f.mp3', 'Active', 'openai', '2025-03-14 23:36:52', NULL),
(73, 'Harper Nguyen', 'shimmer', 'en', 'Female', '20240225/d7405fa1df584b5da80b13c0eb179cca.mp3', 'Active', 'openai', '2025-03-14 23:36:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_logs_log_name_index` (`log_name`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign_idx` (`user_id`),
  ADD KEY `addresses_first_name_index` (`first_name`),
  ADD KEY `addresses_last_name_index` (`last_name`),
  ADD KEY `addresses_city_index` (`city`),
  ADD KEY `addresses_state_index` (`state`),
  ADD KEY `addresses_zip_index` (`zip`),
  ADD KEY `addresses_country_index` (`country`);

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_menus_slug_unique` (`slug`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archives_user_id_foreign` (`user_id`);

--
-- Indexes for table `archives_meta`
--
ALTER TABLE `archives_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `archives_meta_key_owner_type_owner_id_unique` (`key`,`owner_type`,`owner_id`),
  ADD KEY `archives_meta_key_index` (`key`);

--
-- Indexes for table `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audios_user_id_foreign` (`user_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canned_links`
--
ALTER TABLE `canned_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canned_links_title_index` (`title`),
  ADD KEY `canned_links_link_index` (`link`),
  ADD KEY `canned_links_created_by_foreign_idx` (`created_by`),
  ADD KEY `canned_links_created_type_index` (`created_type`);

--
-- Indexes for table `canned_messages`
--
ALTER TABLE `canned_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canned_messages_title_index` (`title`),
  ADD KEY `canned_messages_created_by_foreign_idx` (`created_by`),
  ADD KEY `canned_messages_created_type_index` (`created_type`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user_id_foreign` (`user_id`),
  ADD KEY `chats_bot_id_foreign` (`bot_id`),
  ADD KEY `chats_chat_conversation_id_foreign` (`chat_conversation_id`);

--
-- Indexes for table `chat_bots`
--
ALTER TABLE `chat_bots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chat_bots_code_unique` (`code`),
  ADD UNIQUE KEY `chat_bots_user_id_name_deleted_at_unique` (`user_id`,`name`,`deleted_at`),
  ADD KEY `chat_bots_name_index` (`name`),
  ADD KEY `chat_bots_chat_category_id_foreign` (`chat_category_id`),
  ADD KEY `chat_bots_is_default_index` (`is_default`);

--
-- Indexes for table `chat_bots_meta`
--
ALTER TABLE `chat_bots_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chat_bots_meta_key_owner_type_owner_id_unique` (`key`,`owner_type`,`owner_id`),
  ADD KEY `chat_bots_meta_key_index` (`key`);

--
-- Indexes for table `chat_categories`
--
ALTER TABLE `chat_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chat_categories_slug_unique` (`slug`),
  ADD KEY `chat_categories_name_index` (`name`);

--
-- Indexes for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_conversations_user_id_foreign` (`user_id`),
  ADD KEY `chat_conversations_bot_id_foreign` (`bot_id`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codes_user_id_foreign` (`user_id`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_page_id_foreign_idx` (`page_id`);

--
-- Indexes for table `component_properties`
--
ALTER TABLE `component_properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `component_properties_name_component_id_unique` (`name`,`component_id`),
  ADD KEY `component_properties_component_id_foreign_idx` (`component_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_parent_id_foreign` (`parent_id`),
  ADD KEY `contents_user_id_foreign` (`user_id`),
  ADD KEY `contents_use_case_id_foreign` (`use_case_id`);

--
-- Indexes for table `content_meta`
--
ALTER TABLE `content_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_meta_content_id_foreign` (`content_id`);

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_types_slug_unique` (`slug`);

--
-- Indexes for table `content_types_meta`
--
ALTER TABLE `content_types_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_types_meta_key_content_type_id_unique` (`key`,`content_type_id`),
  ADD KEY `content_types_meta_content_type_id_index` (`content_type_id`),
  ADD KEY `content_types_meta_key_index` (`key`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_name_index` (`name`),
  ADD KEY `countries_code_index` (`code`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_name_index` (`name`),
  ADD KEY `coupons_creator_id_index` (`creator_id`),
  ADD KEY `coupons_usage_limit_per_coupon_index` (`usage_limit_per_coupon`),
  ADD KEY `coupons_usage_limit_per_user_index` (`usage_limit_per_user`),
  ADD KEY `coupons_code_index` (`code`),
  ADD KEY `coupons_discount_type_index` (`discount_type`),
  ADD KEY `coupons_discount_amount_index` (`discount_amount`),
  ADD KEY `coupons_start_date_index` (`start_date`),
  ADD KEY `coupons_end_date_index` (`end_date`),
  ADD KEY `coupons_status_index` (`status`);

--
-- Indexes for table `coupon_redeems`
--
ALTER TABLE `coupon_redeems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_redeems_coupon_id_index` (`coupon_id`),
  ADD KEY `coupon_redeems_user_id_index` (`user_id`),
  ADD KEY `coupon_redeems_subscription_detail_id_index` (`subscription_detail_id`),
  ADD KEY `coupon_redeems_package_id_index` (`package_id`),
  ADD KEY `coupon_redeems_discount_amount_index` (`discount_amount`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credits_user_id_index` (`user_id`),
  ADD KEY `credits_status_index` (`status`);

--
-- Indexes for table `credit_coupons`
--
ALTER TABLE `credit_coupons`
  ADD KEY `credit_coupons_credit_id_foreign_idx` (`credit_id`),
  ADD KEY `credit_coupons_coupon_id_foreign_idx` (`coupon_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_name_index` (`name`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_name_index` (`name`),
  ADD KEY `email_templates_slug_index` (`slug`),
  ADD KEY `email_templates_subject_index` (`subject`),
  ADD KEY `email_templates_language_id_idx` (`language_id`);

--
-- Indexes for table `embeded_resources`
--
ALTER TABLE `embeded_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `embeded_resources_user_id_index` (`user_id`);

--
-- Indexes for table `embeded_resources_meta`
--
ALTER TABLE `embeded_resources_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_preferences`
--
ALTER TABLE `feature_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feature_preferences_slug_unique` (`slug`);

--
-- Indexes for table `feature_preference_metas`
--
ALTER TABLE `feature_preference_metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feature_preference_metas_key_owner_type_owner_id_unique` (`key`,`owner_type`,`owner_id`),
  ADD KEY `feature_preference_metas_key_index` (`key`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder_items`
--
ALTER TABLE `folder_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder_items_folder_id_foreign` (`folder_id`);

--
-- Indexes for table `folder_meta`
--
ALTER TABLE `folder_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `folder_meta_key_folder_id_unique` (`key`,`folder_id`),
  ADD KEY `folder_meta_folder_id_foreign` (`folder_id`),
  ADD KEY `folder_meta_key_index` (`key`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_alias_unique` (`alias`);

--
-- Indexes for table `geolocale_cities`
--
ALTER TABLE `geolocale_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniq_city` (`country_id`,`division_id`,`name`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `geolocale_cities_locale`
--
ALTER TABLE `geolocale_cities_locale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_city_id_locale` (`city_id`,`locale`);

--
-- Indexes for table `geolocale_continents`
--
ALTER TABLE `geolocale_continents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniq_continent` (`name`);

--
-- Indexes for table `geolocale_continents_locale`
--
ALTER TABLE `geolocale_continents_locale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_continent_id_locale` (`continent_id`,`locale`);

--
-- Indexes for table `geolocale_countries`
--
ALTER TABLE `geolocale_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_country` (`continent_id`,`name`);

--
-- Indexes for table `geolocale_countries_locale`
--
ALTER TABLE `geolocale_countries_locale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_country_id_locale` (`country_id`,`locale`);

--
-- Indexes for table `geolocale_divisions`
--
ALTER TABLE `geolocale_divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_division` (`country_id`,`name`);

--
-- Indexes for table `geolocale_divisions_locale`
--
ALTER TABLE `geolocale_divisions_locale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_division_id_locale` (`division_id`,`locale`);

--
-- Indexes for table `geolocale_languages`
--
ALTER TABLE `geolocale_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_user_id_foreign` (`user_id`),
  ADD KEY `images_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_name_index` (`name`),
  ADD KEY `languages_short_name_index` (`short_name`),
  ADD KEY `languages_status_index` (`status`),
  ADD KEY `languages_is_default_index` (`is_default`);

--
-- Indexes for table `layouts`
--
ALTER TABLE `layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layout_types`
--
ALTER TABLE `layout_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_foreign` (`menu`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metas_key_owner_type_owner_id_unique` (`key`,`owner_type`,`owner_id`),
  ADD KEY `metas_key_index` (`key`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `object_files`
--
ALTER TABLE `object_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_files_file_id_foreign` (`file_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_use_case_id_foreign` (`use_case_id`);

--
-- Indexes for table `option_meta`
--
ALTER TABLE `option_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_meta_option_id_foreign` (`option_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_user_id_index` (`user_id`);

--
-- Indexes for table `packages_meta`
--
ALTER TABLE `packages_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_meta_key_package_id_feature_unique` (`key`,`package_id`,`feature`),
  ADD KEY `packages_meta_package_id_index` (`package_id`),
  ADD KEY `packages_meta_feature_index` (`feature`),
  ADD KEY `packages_meta_key_index` (`key`);

--
-- Indexes for table `package_subscriptions`
--
ALTER TABLE `package_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_subscriptions_user_id_index` (`user_id`),
  ADD KEY `package_subscriptions_package_id_index` (`package_id`),
  ADD KEY `package_subscriptions_is_customized_index` (`is_customized`),
  ADD KEY `package_subscriptions_renewable_index` (`renewable`),
  ADD KEY `package_subscriptions_payment_status_index` (`payment_status`),
  ADD KEY `package_subscriptions_status_index` (`status`);

--
-- Indexes for table `package_subscriptions_meta`
--
ALTER TABLE `package_subscriptions_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_key_id_type` (`key`,`package_subscription_id`,`type`),
  ADD KEY `package_subscriptions_meta_package_subscription_id_foreign_idx` (`package_subscription_id`),
  ADD KEY `package_subscriptions_meta_key_index` (`key`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_logs_code_unique` (`code`),
  ADD UNIQUE KEY `payment_logs_unique_code_unique` (`unique_code`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_name_index` (`name`),
  ADD KEY `permissions_controller_name_index` (`controller_name`),
  ADD KEY `permissions_method_name_index` (`method_name`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD KEY `permission_roles_permission_id_idx` (`permission_id`),
  ADD KEY `permission_roles_role_id_foreign_idx` (`role_id`);

--
-- Indexes for table `plan_coupons`
--
ALTER TABLE `plan_coupons`
  ADD KEY `plan_coupons_package_id_foreign_idx` (`package_id`),
  ADD KEY `plan_coupons_coupon_id_foreign_idx` (`coupon_id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `preferences_field_unique` (`field`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priorities_name_index` (`name`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_status_index` (`status`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_name_index` (`name`),
  ADD KEY `roles_type_index` (`type`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD KEY `role_users_role_id_foreign_idx` (`role_id`),
  ADD KEY `role_users_user_id_foreign_idx` (`user_id`);

--
-- Indexes for table `speeches`
--
ALTER TABLE `speeches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speeches_user_id_foreign` (`user_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `subscription_details`
--
ALTER TABLE `subscription_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_details_unique_code_unique` (`unique_code`),
  ADD KEY `subscription_details_user_id_index` (`user_id`),
  ADD KEY `subscription_details_package_id_index` (`package_id`),
  ADD KEY `subscription_details_package_subscription_id_index` (`package_subscription_id`),
  ADD KEY `subscription_details_renewable_index` (`renewable`),
  ADD KEY `subscription_details_payment_status_index` (`payment_status`),
  ADD KEY `subscription_details_status_index` (`status`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_foreign` (`user_id`),
  ADD KEY `teams_parent_id_foreign` (`parent_id`),
  ADD KEY `teams_status_index` (`status`);

--
-- Indexes for table `team_member_metas`
--
ALTER TABLE `team_member_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_member_metas_team_id_foreign` (`team_id`);

--
-- Indexes for table `theme_options`
--
ALTER TABLE `theme_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threads_receiver_id_foreign_idx` (`receiver_id`),
  ADD KEY `threads_status_to_index` (`thread_status_id`),
  ADD KEY `threads_key_to_index` (`thread_key`),
  ADD KEY `threads_sender_id_index` (`sender_id`),
  ADD KEY `threads_member_to_index` (`assigned_member_id`);

--
-- Indexes for table `thread_replies`
--
ALTER TABLE `thread_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_replies_sender_id_index` (`sender_id`),
  ADD KEY `thread_replies_receiver_id_index` (`receiver_id`),
  ADD KEY `thread_replies_date_index` (`date`),
  ADD KEY `thread_replies_has_attachment_index` (`has_attachment`),
  ADD KEY `thread_replies_is_read_index` (`is_read`);

--
-- Indexes for table `thread_statuses`
--
ALTER TABLE `thread_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_statuses_name_index` (`name`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_name_index` (`name`),
  ADD KEY `users_email_index` (`email`),
  ADD KEY `users_status_index` (`status`),
  ADD KEY `users_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_meta_key_owner_type_owner_id_unique` (`key`,`owner_type`,`owner_id`),
  ADD KEY `users_meta_key_index` (`key`);

--
-- Indexes for table `use_cases`
--
ALTER TABLE `use_cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `use_cases_slug_unique` (`slug`),
  ADD KEY `use_cases_name_index` (`name`),
  ADD KEY `use_cases_creator_type_index` (`creator_type`),
  ADD KEY `use_cases_creator_id_index` (`creator_id`);

--
-- Indexes for table `use_case_categories`
--
ALTER TABLE `use_case_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `use_case_categories_slug_unique` (`slug`),
  ADD KEY `use_case_categories_name_index` (`name`);

--
-- Indexes for table `use_case_use_case_category`
--
ALTER TABLE `use_case_use_case_category`
  ADD KEY `use_case_use_case_category_use_case_id_foreign` (`use_case_id`),
  ADD KEY `use_case_use_case_category_use_case_category_id_foreign` (`use_case_category_id`);

--
-- Indexes for table `voices`
--
ALTER TABLE `voices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voices_voice_name_unique` (`voice_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archives_meta`
--
ALTER TABLE `archives_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audios`
--
ALTER TABLE `audios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `canned_links`
--
ALTER TABLE `canned_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `canned_messages`
--
ALTER TABLE `canned_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_bots`
--
ALTER TABLE `chat_bots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_bots_meta`
--
ALTER TABLE `chat_bots_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_categories`
--
ALTER TABLE `chat_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `component_properties`
--
ALTER TABLE `component_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_meta`
--
ALTER TABLE `content_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_types`
--
ALTER TABLE `content_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `content_types_meta`
--
ALTER TABLE `content_types_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_redeems`
--
ALTER TABLE `coupon_redeems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `embeded_resources`
--
ALTER TABLE `embeded_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `embeded_resources_meta`
--
ALTER TABLE `embeded_resources_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_preferences`
--
ALTER TABLE `feature_preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feature_preference_metas`
--
ALTER TABLE `feature_preference_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1319;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `folder_items`
--
ALTER TABLE `folder_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folder_meta`
--
ALTER TABLE `folder_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `geolocale_cities`
--
ALTER TABLE `geolocale_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto increase ID', AUTO_INCREMENT=133163;

--
-- AUTO_INCREMENT for table `geolocale_cities_locale`
--
ALTER TABLE `geolocale_cities_locale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto increase ID', AUTO_INCREMENT=3860;

--
-- AUTO_INCREMENT for table `geolocale_continents`
--
ALTER TABLE `geolocale_continents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto increase ID', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `geolocale_continents_locale`
--
ALTER TABLE `geolocale_continents_locale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto increase ID', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `geolocale_countries`
--
ALTER TABLE `geolocale_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto increase ID', AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `geolocale_countries_locale`
--
ALTER TABLE `geolocale_countries_locale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto increase ID', AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `geolocale_divisions`
--
ALTER TABLE `geolocale_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto Increase ID', AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `geolocale_divisions_locale`
--
ALTER TABLE `geolocale_divisions_locale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto Increase ID', AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `geolocale_languages`
--
ALTER TABLE `geolocale_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `layout_types`
--
ALTER TABLE `layout_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `object_files`
--
ALTER TABLE `object_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `option_meta`
--
ALTER TABLE `option_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `packages_meta`
--
ALTER TABLE `packages_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=780;

--
-- AUTO_INCREMENT for table `package_subscriptions`
--
ALTER TABLE `package_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package_subscriptions_meta`
--
ALTER TABLE `package_subscriptions_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=771;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `speeches`
--
ALTER TABLE `speeches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_details`
--
ALTER TABLE `subscription_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_member_metas`
--
ALTER TABLE `team_member_metas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theme_options`
--
ALTER TABLE `theme_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thread_replies`
--
ALTER TABLE `thread_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thread_statuses`
--
ALTER TABLE `thread_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `use_cases`
--
ALTER TABLE `use_cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `use_case_categories`
--
ALTER TABLE `use_case_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `voices`
--
ALTER TABLE `voices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `archives`
--
ALTER TABLE `archives`
  ADD CONSTRAINT `archives_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `audios`
--
ALTER TABLE `audios`
  ADD CONSTRAINT `audios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_bot_id_foreign` FOREIGN KEY (`bot_id`) REFERENCES `chat_bots` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chats_chat_conversation_id_foreign` FOREIGN KEY (`chat_conversation_id`) REFERENCES `chat_conversations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chat_bots`
--
ALTER TABLE `chat_bots`
  ADD CONSTRAINT `chat_bots_chat_category_id_foreign` FOREIGN KEY (`chat_category_id`) REFERENCES `chat_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  ADD CONSTRAINT `chat_conversations_bot_id_foreign` FOREIGN KEY (`bot_id`) REFERENCES `chat_bots` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_conversations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `codes`
--
ALTER TABLE `codes`
  ADD CONSTRAINT `codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `components`
--
ALTER TABLE `components`
  ADD CONSTRAINT `components_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `component_properties`
--
ALTER TABLE `component_properties`
  ADD CONSTRAINT `component_properties_component_id_foreign` FOREIGN KEY (`component_id`) REFERENCES `components` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contents_use_case_id_foreign` FOREIGN KEY (`use_case_id`) REFERENCES `use_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `content_meta`
--
ALTER TABLE `content_meta`
  ADD CONSTRAINT `content_meta_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_redeems`
--
ALTER TABLE `coupon_redeems`
  ADD CONSTRAINT `coupon_redeems_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `coupon_redeems_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `credit_coupons`
--
ALTER TABLE `credit_coupons`
  ADD CONSTRAINT `credit_coupons_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `credit_coupons_credit_id_foreign` FOREIGN KEY (`credit_id`) REFERENCES `credits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `embeded_resources`
--
ALTER TABLE `embeded_resources`
  ADD CONSTRAINT `embeded_resources_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `folder_items`
--
ALTER TABLE `folder_items`
  ADD CONSTRAINT `folder_items_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `folder_meta`
--
ALTER TABLE `folder_meta`
  ADD CONSTRAINT `folder_meta_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `geolocale_cities`
--
ALTER TABLE `geolocale_cities`
  ADD CONSTRAINT `geolocale_cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `geolocale_countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `geolocale_cities_ibfk_2` FOREIGN KEY (`division_id`) REFERENCES `geolocale_divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `geolocale_cities_locale`
--
ALTER TABLE `geolocale_cities_locale`
  ADD CONSTRAINT `geolocale_cities_locale_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `geolocale_cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `geolocale_continents_locale`
--
ALTER TABLE `geolocale_continents_locale`
  ADD CONSTRAINT `geolocale_continents_locale_ibfk_1` FOREIGN KEY (`continent_id`) REFERENCES `geolocale_continents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `geolocale_countries`
--
ALTER TABLE `geolocale_countries`
  ADD CONSTRAINT `geolocale_countries_ibfk_1` FOREIGN KEY (`continent_id`) REFERENCES `geolocale_continents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `geolocale_countries_locale`
--
ALTER TABLE `geolocale_countries_locale`
  ADD CONSTRAINT `geolocale_countries_locale_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `geolocale_countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `geolocale_divisions`
--
ALTER TABLE `geolocale_divisions`
  ADD CONSTRAINT `geolocale_divisions_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `geolocale_countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `geolocale_divisions_locale`
--
ALTER TABLE `geolocale_divisions_locale`
  ADD CONSTRAINT `geolocale_divisions_locale_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `geolocale_divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_foreign` FOREIGN KEY (`menu`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `object_files`
--
ALTER TABLE `object_files`
  ADD CONSTRAINT `object_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_use_case_id_foreign` FOREIGN KEY (`use_case_id`) REFERENCES `use_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `option_meta`
--
ALTER TABLE `option_meta`
  ADD CONSTRAINT `option_meta_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packages_meta`
--
ALTER TABLE `packages_meta`
  ADD CONSTRAINT `packages_meta_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_subscriptions_meta`
--
ALTER TABLE `package_subscriptions_meta`
  ADD CONSTRAINT `package_subscriptions_meta_package_subscription_id_foreign` FOREIGN KEY (`package_subscription_id`) REFERENCES `package_subscriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plan_coupons`
--
ALTER TABLE `plan_coupons`
  ADD CONSTRAINT `plan_coupons_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `plan_coupons_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speeches`
--
ALTER TABLE `speeches`
  ADD CONSTRAINT `speeches_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team_member_metas`
--
ALTER TABLE `team_member_metas`
  ADD CONSTRAINT `team_member_metas_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `threads_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `use_case_use_case_category`
--
ALTER TABLE `use_case_use_case_category`
  ADD CONSTRAINT `use_case_use_case_category_use_case_category_id_foreign` FOREIGN KEY (`use_case_category_id`) REFERENCES `use_case_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `use_case_use_case_category_use_case_id_foreign` FOREIGN KEY (`use_case_id`) REFERENCES `use_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
