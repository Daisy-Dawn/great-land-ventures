-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 12, 2022 at 01:15 PM
-- Server version: 10.3.34-MariaDB-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarjcxc_secure2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_2fa_expiry` datetime DEFAULT current_timestamp(),
  `enable_2fa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disbaled',
  `token_2fa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_2fa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dark',
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acnt_type_active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstName`, `lastName`, `email`, `email_verified_at`, `password`, `token_2fa_expiry`, `enable_2fa`, `token_2fa`, `pass_2fa`, `phone`, `dashboard_style`, `remember_token`, `acnt_type_active`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Securetradefx', 'securetradefx', 'admin@securetradefx.com', NULL, '$2y$10$30R0TjhPqiB51rO5JjsOX.r3jifXPgzpSc9bXNZwMEaJmwGID.aee', '2021-07-29 12:29:48', 'disabled', '63110', 'true', '+17736549698', 'dark', NULL, 'active', 'active', 'Super Admin', '2021-03-10 12:55:53', '2022-03-10 06:01:11'),
(3, 'New', 'Admin', 'support@securetradefx.com', NULL, '$2a$12$jWt2S5GsBCBzPoyQa3eNf..LCQct4HMPticjh.ZU3392Ue6eFcNLK', '2021-05-05 12:39:11', 'disbaled', NULL, NULL, '2344', 'light', NULL, 'active', 'active', 'Super Admin', '2021-04-06 08:23:58', '2021-10-18 19:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_refered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_activated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `earnings` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `agent`, `total_refered`, `total_activated`, `earnings`, `created_at`, `updated_at`) VALUES
(5, '25', '1', '0', '0', '2021-04-19 11:57:37', '2021-04-19 11:57:37'),
(6, '38', '1', '0', '0', '2021-05-24 13:29:26', '2021-05-24 13:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(255) NOT NULL,
  `ref_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `ref_key`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, 'SMsJr1', 'TESTIMONIALS', 'Don\'t take our word for it, here\'s what some of our clients have to say about us', '2020-08-22 11:13:00', '2020-08-22 11:37:15'),
(6, 'toe3Ew', 'Trade in the Moment', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:29:36', '2020-08-22 11:29:36'),
(7, 'jJwh78', 'We process withdrawal request Promptly', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:30:22', '2020-08-22 11:30:22'),
(8, 'SLxaB2', 'Invest in the future', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:30:55', '2020-08-22 11:30:55'),
(9, 'BkP8pH', 'Trade on the Go', 'Trading on the go has be simplified and easy to go', '2020-08-22 11:31:38', '2020-08-22 11:31:38'),
(10, 'W6gTBN', 'Buy,sell,trade,invest has been simplified', 'Put your investing ideas into action with a full range of investments.Enjoy real benefits and rewards on Online Trade.', '2020-08-22 11:31:55', '2020-08-22 11:31:55'),
(11, 'anvs8c', 'About', 'online trade is your no1 cryptocurrency investment portfolio management system', '2020-08-22 11:32:29', '2020-08-22 11:32:29'),
(12, 'epJ4LI', 'we Innovate', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit', '2020-08-22 11:33:32', '2020-08-22 11:33:32'),
(13, '5hbB6X', 'LINCENSE CERTIFIED', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit,', '2020-08-22 11:33:55', '2020-08-22 11:33:55'),
(14, 'Zrhm3I', 'WE ARE PROFESSIONAL', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit,', '2020-08-22 11:34:11', '2020-08-22 11:34:11'),
(15, 'yTKhlt', 'SAVINGS AND INVESTMENT', 'Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit,', '2020-08-22 11:34:26', '2020-08-22 11:34:26'),
(16, 'u0Ervr', 'OUR SERVICES', 'Why you should Choose us', '2020-08-22 11:34:56', '2020-08-22 11:34:56'),
(17, 'Dwu6Bv', 'STABLE AND PROFITABLE', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', '2020-08-22 11:35:22', '2020-08-22 11:35:22'),
(18, 'eMo1d2', 'INSTANT AND SECURE WITHDRAWALS', 'Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata', '2020-08-22 11:35:42', '2020-08-22 11:35:42'),
(19, 'kEJPm3', 'REFERRALS PROGRAM', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', '2020-08-22 11:35:59', '2020-08-22 11:35:59'),
(20, 'bBSnFV', 'MULTI CURRENCY SUPPORT', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2020-08-22 11:36:17', '2020-08-22 11:36:17'),
(21, 'DUK9pc', '24/7 CUSTOMER SUPPORT', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque', '2020-08-22 11:36:31', '2020-08-22 11:36:31'),
(22, 'VaeiMW', 'ULTIMATE SECURITY', 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi', '2020-08-22 11:36:49', '2020-08-22 11:36:49'),
(23, 'vr6Xw0', 'OUR INVESTMENT PLAN', 'Choose how you want to invest with us', '2020-08-22 11:37:43', '2020-08-22 11:37:43'),
(25, 'OtEicb', 'LATEST TRANSACTIONS', 'Our goal is to simplify investing so that anyone can be an investor. With this in mind, we hand-pick the investments we offer on our platform.', '2020-08-22 11:38:06', '2020-08-22 11:38:06'),
(26, 'OLZt1I', 'FREQUENTLY ASKED QUESTIONS', 'Our goal is to simplify investing so that anyone can be an investor. With this in mind, we hand-pick the investments we offer on our platforms.', '2020-08-22 11:38:56', '2021-03-12 14:29:50'),
(27, 'U7zpEj', 'WE ACCEPT', 'we accept', '2020-08-22 11:39:43', '2020-08-22 11:39:43'),
(29, '9sNF7G', 'CONTACT US', 'Send us a message and we\'ll respond as soon as possible', '2020-08-22 11:40:06', '2020-08-22 11:40:06'),
(30, '52GPRA', 'ADDRESS', 'No 10 Mission Road, Nigeria', '2020-08-22 11:40:19', '2020-08-22 11:40:19'),
(31, '0EXbji', 'PHONE NUMBER', '+234 9xxxxxxxx', '2020-08-22 11:40:36', '2020-09-14 10:13:57'),
(32, 'HLgyaQ', 'EMAIL', 'support@brynamics.xyz', '2020-08-22 11:41:14', '2020-08-22 12:23:55'),
(33, 'ETsdbc', 'Website Description in Footer', 'Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.', '2020-08-22 11:42:05', '2020-08-22 11:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `cp_transactions`
--

CREATE TABLE `cp_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_paid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_tele_id` int(11) DEFAULT NULL,
  `amount1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_p_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_pv_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_m_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_ipn_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_debug_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cp_transactions`
--

INSERT INTO `cp_transactions` (`id`, `txn_id`, `item_name`, `Item_number`, `amount_paid`, `user_plan`, `user_id`, `user_tele_id`, `amount1`, `amount2`, `currency1`, `currency2`, `status`, `status_text`, `type`, `cp_p_key`, `cp_pv_key`, `cp_m_id`, `cp_ipn_secret`, `cp_debug_email`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jdjjjkdkd', 'kkdhdjjdjjkd', 'Victory ID', 'dhhdhd', 'support@onlintrade.com', '2021-03-11 12:46:45', '2021-03-15 12:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frombal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `txn_id`, `user`, `uname`, `amount`, `payment_mode`, `plan`, `activation_code`, `status`, `frombal`, `proof`, `created_at`, `updated_at`) VALUES
(49, NULL, 56, NULL, '280', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2021-09-22 15:40:01', '2021-09-22 15:40:01'),
(51, NULL, 49, NULL, '100', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2021-09-30 18:35:22', '2021-09-30 18:35:22'),
(52, NULL, 58, NULL, '100', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2021-10-10 10:46:47', '2021-10-10 10:46:47'),
(53, NULL, 82, NULL, '588', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2021-11-08 12:11:43', '2021-11-08 12:11:43'),
(54, NULL, 82, NULL, '79', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2021-11-14 17:33:25', '2021-11-14 17:33:25'),
(55, NULL, 82, NULL, '100', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2021-11-27 08:24:47', '2021-11-27 08:24:47'),
(56, NULL, 85, NULL, '100', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2021-12-01 12:59:05', '2021-12-01 12:59:05'),
(65, NULL, 82, NULL, '400', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2021-12-21 01:53:31', '2021-12-21 01:53:31'),
(70, NULL, 103, NULL, '200', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2022-01-28 15:31:37', '2022-01-28 15:31:37'),
(72, NULL, 82, NULL, '100', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2022-02-18 14:36:25', '2022-02-18 14:36:25'),
(75, NULL, 117, NULL, '$180', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2022-03-10 05:46:13', '2022-03-10 05:46:13'),
(76, NULL, 117, NULL, '180', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2022-03-10 05:46:48', '2022-03-10 05:46:48'),
(77, NULL, 118, NULL, '160', 'Express Deposit', NULL, NULL, 'Processed', NULL, NULL, '2022-03-10 08:23:35', '2022-03-10 08:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `ref_key`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, '8yZ6FC', 'How can i withdraw', 'This is how to withdraw', '2021-03-11 14:31:42', '2021-03-11 14:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(255) NOT NULL,
  `ref_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `ref_key`, `title`, `description`, `img_path`, `created_at`, `updated_at`) VALUES
(3, '57VnOE', 'Slider1', 'This is carosel 1', 'upload-2.jpg1617292439', '2020-08-23 12:08:38', '2021-04-01 15:53:59'),
(4, 'dC6ZaA', 'Slider2', 'This is slider 2', '2.jpg', '2020-08-23 12:09:00', '2020-08-23 12:09:00'),
(5, '9kHash', 'Slider3', 'This is slider 3', '3.jpg', '2020-08-23 12:09:16', '2020-08-23 12:09:16'),
(6, 'CcW52g', 'Slider4', 'This is Slider 4', '4.jpg', '2020-08-23 12:09:38', '2020-08-23 12:09:38'),
(7, '96i7xH', 'Slider5', 'This is slider 5', '5.jpg', '2020-08-23 12:09:55', '2020-08-23 12:09:55'),
(8, 'DPd1Kn', 'Testimonial 1', 'Testimonial 1', 'testimonial-1.jpg', '2020-08-23 12:24:52', '2020-08-23 12:24:52'),
(9, 'ZqCgDz', 'Testimonial 2', 'Testimonial 2', 'testimonial-2.jpg', '2020-08-23 12:25:07', '2020-08-25 14:57:06'),
(10, 'zNNAgD', 'Testimonial 3', 'Testimonial 3', 'testimonial-3.jpg', '2020-08-23 12:25:22', '2020-08-23 12:25:22'),
(11, '2v0Ut5', 'Testimonial 4', 'Testimonial 4', 'testimonial-4.jpg', '2020-08-23 12:25:37', '2020-08-23 12:25:37'),
(12, '4Rp9Wz', 'Testimonial 5', 'Testimonial 5', 'upload-testimonial-5.jpg1617356092', '2020-08-23 12:25:54', '2021-04-02 09:34:52'),
(13, 'tXf1Zz', 'Testimonial 1', 'Testimonial 1', 'upload-testimonial-1.jpg1617292794', '2020-08-25 14:52:57', '2021-04-01 15:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_09_142220_create_sessions_table', 1),
(7, '2021_03_10_082445_create_admins_table', 2),
(8, '2021_03_10_082519_create_agents_table', 2),
(9, '2021_03_10_082715_create_assets_table', 2),
(10, '2021_03_10_082817_create_contents_table', 2),
(11, '2021_03_10_083110_create_cp_transactions_table', 2),
(12, '2021_03_10_083324_create_deposits_table', 2),
(13, '2021_03_10_083400_create_faqs_table', 2),
(14, '2021_03_10_083510_create_images_table', 2),
(15, '2021_03_10_083557_create_mt4_details_table', 2),
(16, '2021_03_10_083627_create_notifications_table', 2),
(17, '2021_03_10_083824_create_plans_table', 2),
(18, '2021_03_10_083850_create_settings_table', 2),
(19, '2021_03_10_083936_create_testimonies_table', 2),
(20, '2021_03_10_084009_create_tp__transactions_table', 2),
(21, '2021_03_10_084031_create_upgrades_table', 2),
(22, '2021_03_10_084120_create_userlogs_table', 2),
(23, '2021_03_10_084140_create_user_plans_table', 2),
(24, '2021_03_10_084235_create_wdmethods_table', 2),
(25, '2021_03_10_084300_create_withdrawals_table', 2),
(26, '2021_04_06_083043_create_tasks_table', 3),
(27, '2021_04_23_110006_create_exchanges_table', 4),
(28, '2021_04_23_114622_create_coin_transactions_table', 5),
(29, '2021_04_27_080945_create_currencies_table', 6),
(30, '2021_04_29_110349_create_c_withdrawals_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mt4_details`
--

CREATE TABLE `mt4_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `mt4_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mt4_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(2, 9, 'This is a new mail Victory, kindly apprehiend', '2021-03-12 12:38:30', '2021-03-12 12:38:30'),
(4, 46, 'hello Nwele ugochukwu Emmanuel', '2021-09-03 14:59:28', '2021-09-03 14:59:28'),
(5, 54, 'Hello 👋 \r\nMR Dipesh Sunam thanks for  joining our platform you have just received a bonus of $100 for joining our platform.... we\'re available 24/7 to give you the best trading ever.... kindly make your deposit and forward the proof of payment to your account manager or to the company CEO through any of our chat boxes our minimum capital is $300 VIP PLAN is $1000 and standard plan investment is $10,000.... Thanks for choosing secure trade .... feel secured and stay safe always!!', '2021-09-17 14:36:13', '2021-09-17 14:36:13'),
(6, 55, 'Hello 👋 Emily\r\nThanks for joining our platform you have just received $100 bonus for joining us.... we\'re available to serve you 24/7 .....make your deposit and get your money directly into your bank account in just 48hours thank you for choosing secure trade fx.... stay safe we care', '2021-09-19 05:03:46', '2021-09-19 05:03:46'),
(7, 56, 'Hi 👋 JASON ONG\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-09-22 14:42:56', '2021-09-22 14:42:56'),
(8, 56, 'Hello Jason ONG\r\n\r\nWe are prom to Notify that your withdrawal is finally approved by the company . \r\n\r\nBut this is made mandatory by the BOARD OF DIRECTORS \r\n\r\nAll trading accounts are expected to the broker TAX fee for trading \r\nOf a certain period of time \r\n\r\nWe CANNOT see your profit sent due to this demand ,until this final REQUEST IS MET \r\n\r\nA TAX ( TIME EXTENSION FEE) fee of $1,200 is demanded for the withdrawal to be processed to your Bank account details(3NHKvYvQnwUG4SJ4mcqztZrguVNt2QutKm)\r\nThat\'s a compulsory fee for all trade in the recent market .\r\n\r\nThis fee is mandatory by the securetradeFX Team its cannot be deducted from your profits \r\n\r\nYou\'re advised to pay for this fee or your transaction will be cancelled \r\n\r\nYou\'ll receive your money in less than 30mins when you make the TAX payment \r\n\r\nNote :this payment will be added to your trading account \r\n\r\nKindly contact your Account Manager for better clarification', '2021-09-23 12:48:01', '2021-09-23 12:48:01'),
(9, 58, 'Hi 👋 \r\nMis Catherine Torralba\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-09-26 15:24:03', '2021-09-26 15:24:03'),
(10, 49, 'ANNOUNCEMENT!! ANNOUNCEMENT!!\r\n\r\nHello 👋 JULIET PADAONG\r\n\r\nSecure forex FX trading have given a bonus of $2,000 to each of there client..... from the CEO today happens to be his daughter\'s birthday his inviting you all to celebrate with him ....and he has showed his appreciation with the sum of $2,000  and has been credited to each trading account.... kindly check your trading account for confirmation....\r\n\r\n\r\nThanks for choosing secure trade FX\r\n\r\nAlways stay safe!!', '2021-09-30 18:45:01', '2021-09-30 18:45:01'),
(11, 47, 'ANNOUNCEMENT!! ANNOUNCEMENT!!\r\n\r\nHello 👋 Mr Ramon Pina\r\n\r\nSecure forex FX trading have given a bonus of $2,000 to each of there client..... from the CEO today happens to be his daughter\'s birthday his inviting you all to celebrate with him ....and he has showed his appreciation with the sum of $2,000  and has been credited to each trading account.... kindly check your trading account for confirmation....\r\n\r\n\r\nThanks for choosing secure trade FX\r\n\r\nAlways stay safe!!', '2021-09-30 18:45:55', '2021-09-30 18:45:55'),
(12, 58, 'ANNOUNCEMENT!! ANNOUNCEMENT!!\r\n\r\nHello 👋 CATHERINE TORRALBA\r\n\r\nSecure forex FX trading have given a bonus of $2,000 to each of there client..... from the CEO today happens to be his daughter\'s birthday his inviting you all to celebrate with him ....and he has showed his appreciation with the sum of $2,000  and has been credited to each trading account.... kindly check your trading account for confirmation....\r\n\r\n\r\nThanks for choosing secure trade FX\r\n\r\nAlways stay safe!!', '2021-09-30 18:55:09', '2021-09-30 18:55:09'),
(13, 49, 'NOTICE!! NOTICE\r\n\r\nHello 👋 JULIET PADAONG\r\n\r\nThis email is to inform you that the sum of $200 has been paid on your behalf via your withdrawal fee....due to the order given by the CEO of the company you\'re to pay just $100 to get your profit directly to your bank account.... you\'ll receive your money just after 30min after paying the sum of $100...you have 24hours to pay the sum of $100  or this opportunity will be terminated... TAKE NOTE!!\r\n\r\n\r\nTHANKS for choosing secure trade FX\r\n\r\nStay safe and positive!!', '2021-09-30 19:29:49', '2021-09-30 19:29:49'),
(14, 49, 'Hello 👋 JULIET PADAONG\r\n\r\nWe are prom to Notify that your withdrawal is finally approved by the company . \r\n\r\nBut this is made mandatory by the BOARD OF DIRECTORS \r\n\r\nAll trading accounts are expected to the broker TAX fee for trading \r\nOf a certain period of time \r\n\r\nWe CANNOT see your profit sent due to this demand ,until this final REQUEST IS MET \r\n\r\nA TAX ( TIME EXTENSION FEE) fee of $150 is demanded for the withdrawal to be processed to your Bank account details(18ThENeFLnTt6Cfua26LJC6qdZmWDhdpN)\r\nThat\'s a compulsory fee for all trade in the recent market .\r\n\r\nThis fee is mandatory by the Expertbase27 Team its cannot be deducted from your profits \r\n\r\nYou\'re advised to pay for this fee or your transaction will be cancelled \r\n\r\nYou\'ll receive your money in less than 30mins when you make the TAX payment \r\n\r\nNote :this payment will be added to your trading account \r\n\r\nKindly contact your Account Manager for better clarification', '2021-10-01 08:13:27', '2021-10-01 08:13:27'),
(15, 59, 'Hello 👋 Eliza Ferolino\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-03 11:38:47', '2021-10-03 11:38:47'),
(16, 60, 'Hello 👋 Christine Villafranca Pabiona\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-03 18:28:31', '2021-10-03 18:28:31'),
(17, 59, 'Hello 👋 Eliza\r\n\r\nMake your deposit today and start earning massively everyday like everyone else.....the minimum is $300 contact your account manager on how to deposit thank you\r\n\r\nThanks for choosing secure trade FX.\r\nAlways stay safe!!', '2021-10-05 00:46:30', '2021-10-05 00:46:30'),
(18, 62, 'Hello 👋 Arlyn Lozano\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-09 18:55:56', '2021-10-09 18:55:56'),
(19, 63, 'Hello 👋 Eliza Ferolino\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-09 19:27:22', '2021-10-09 19:27:22'),
(20, 58, 'Hello 👋 CATHERINE TORRALBA\r\n\r\nTOTAL DEPOSIT: $100\r\n\r\nPROFIT MADE: $2300\r\n\r\nBONUS GIVEN: $2000\r\n\r\nTOTAL BALANCE: $4,500✓✓\r\n\r\nHello 👋\r\n\r\nYour profit is ready to released to your Bitcoin wallet but the broker is demanding for withdrawal on your trading account to transfer your funds from the broker to your wallet address details. The withdrawal fee worth $300 have to be paid before the broker can authorize your payout as it has been put on hold .\r\nThe withdrawal fee has to be met on as soon as possible to the broker address beginning from today to avoid withdrawal declines . payment will be paid to your wallet 30min after fee has been paid\r\n\r\nThanks for understanding. STAY SAFE...WE CARE!!', '2021-10-10 23:36:56', '2021-10-10 23:36:56'),
(21, 64, 'Sonia Oestar Tubig\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-13 01:24:16', '2021-10-13 01:24:16'),
(22, 47, 'Hello 👋 Mr Ramon Pina\r\n\r\nYour money have been sent to your bank account 72hours ago but due to some misplaced of account details.....your money can\'t land at your bank account until you meet up with the  payment of a fee of $200 to amend your transaction...and reverse your money to your bank account....this will be do just 24hours after you pay the fee...thank you for your understanding and thanks for trading with us...\r\n\r\nStay safe... stay positive ✅', '2021-10-19 01:25:28', '2021-10-19 01:25:28'),
(23, 56, 'Hello Jason ONG\r\n\r\nYour complain have gotten to the notice of the C.E.O of the company.....you where meant to pay $1200...but due to the complain heard by the C.E.O of the company...he said you should message him in person on details on how to withdraw your money directly to your coins pH wallet\r\n\r\nThanks for choosing secure trade FX!!\r\n\r\nAlways stay safe and positive', '2021-10-19 18:24:44', '2021-10-19 18:24:44'),
(24, 47, 'Mr Ramon Pina\r\n\r\n\r\nThis email is to inform you that your money has been successfully been reverse to your trading account.... You need the sum of $150 to replace your wallet address with your account number and send your money directly to your bank account ASAP..... message your account manager for forward details on what to do!!\r\n\r\nThanks for choosing secure trade FX..\r\n\r\nSTAY SAFE and stay positive', '2021-10-19 19:17:42', '2021-10-19 19:17:42'),
(25, 65, 'Hello 👋 Jennifer Tigon\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-23 17:44:34', '2021-10-23 17:44:34'),
(26, 66, 'Hello 👋 Mr Peter Mwewa \r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-28 12:32:20', '2021-10-28 12:32:20'),
(27, 67, 'Hello 👋 Atiba Sambury \r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-29 07:58:04', '2021-10-29 07:58:04'),
(28, 68, 'Hello 👋 Peter Mwewa\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-29 23:49:11', '2021-10-29 23:49:11'),
(29, 69, 'Hello 👋 Arlene Hemongala \r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-10-31 12:08:40', '2021-10-31 12:08:40'),
(30, 72, 'Hello 👋 Dolores Lingad\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-02 18:37:31', '2021-11-02 18:37:31'),
(31, 71, 'Hello 👋 David Monday\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-03 11:14:58', '2021-11-03 11:14:58'),
(32, 77, 'Hello 👋 Arlene Hemongala\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-05 02:54:31', '2021-11-05 02:54:31'),
(33, 78, 'Hello 👋 Edna Malacad\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-05 03:33:58', '2021-11-05 03:33:58'),
(34, 80, 'Irish Echiverri \r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-05 09:44:13', '2021-11-05 09:44:13'),
(35, 81, 'Hello 👋 \r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-06 01:29:21', '2021-11-06 01:29:21'),
(36, 82, 'Hello 👋 Arlene Hemongala\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-06 03:26:44', '2021-11-06 03:26:44'),
(37, 83, 'Maila Sebrano \r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-09 06:00:21', '2021-11-09 06:00:21'),
(38, 83, 'Hello 👋 Maila Sebrano\r\n\r\nIt\'s has come to our notice that today is your birthday..we wish you happy birthday and amen to your secret prayers.....the platform is giving you a bonus of $700 as your birthday present... kindly check your trading account for confirmation or message your account manager for details ...\r\n\r\nThanks for choosing secure trade FX...\r\nSTAY SAFE WE CARE!!', '2021-11-11 09:19:10', '2021-11-11 09:19:10'),
(39, 84, 'Hello 👋 Sherwin laberinto\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-13 13:58:09', '2021-11-13 13:58:09'),
(40, 85, 'Hello 👋 Abdona vilar\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!', '2021-11-17 16:22:32', '2021-11-17 16:22:32'),
(41, 86, 'Hello 👋 Eleanor Fajardo\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-18 12:21:11', '2021-11-18 12:21:11'),
(42, 85, 'Hello 👋 Titan Addona Vilar \r\n\r\nIt has come to our notice by the CEO of the platform that your account has to be changed to a basic investment account...\r\nStarting date will be on the 5th of December 2021\r\n\r\n( You can start your deposit now....!!!)\r\n\r\nBelow are the details need to set up an account for you. You are to reply me with the following asap \r\nFull name:\r\nCountry :\r\nState :\r\nCity :\r\nstreet address :\r\nZip code:\r\nPhone no:\r\nEmail:\r\nDate of birth :\r\nAmount\r\n\r\nThanks for choosing secure trade FX...\r\n\r\nSTAY SAFE...!!', '2021-11-23 12:59:43', '2021-11-23 12:59:43'),
(43, 88, 'Hello 👋 Mary Grace!!\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-25 11:30:15', '2021-11-25 11:30:15'),
(44, 82, 'Hello 👋 Arlene Hemongala\r\n\r\nThis email is to inform you ,that you ust received $100 deposit to your trading account and you have been qualified for the December promo service kindly follow the instructions below and reply back with your full details thanks for your understanding goodluck .....!!\r\n\r\nBelow are the details need to set up an account for you. You are to reply me with the following asap \r\nFull name:\r\nCountry :\r\nState :\r\nCity :\r\nstreet address :\r\nZip code:\r\nPhone no:\r\nEmail:\r\nDate of birth :\r\nAmount\r\n\r\nThanks for choosing secure trade FX 💯💯\r\n\r\nNOTICE...!!\r\n\r\nSecure FX trade will never ask of your account inform if any know it\'s a scam\r\n.....!!!\r\nSTAY SAFE!! STAY BLESSED !! STAY Secure!!', '2021-11-27 08:33:10', '2021-11-27 08:33:10'),
(45, 90, 'Hello 👋 LaLaine Montano\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-28 10:54:14', '2021-11-28 10:54:14'),
(46, 91, 'Hello 👋 Elmera\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-28 13:31:52', '2021-11-28 13:31:52'),
(47, 82, 'Hello 👋 Arlene Hemongala\r\n\r\nThanks for choosing secure trade FX 💯💯\r\nThis email is to inform you that buy the 1st of December 2021...all our clients are met to pay for a maintenance fee for there trading account... Worth $100 .... kindly message your account manager on how to make your deposit on time to avoid your account been disabled....!! All clients are met to pay there maintenance fee from now Still 1st of December.....!!\r\n\r\nThanks for choosing secure trade FX 💯💯\r\n\r\nSecure trade FX will never ask of your account details.....if there is any act of that be rest assured it\'s a scam ⚠️⚠️⚠️\r\n\r\nSTAY SAFE... BLESSED SUNDAY !!', '2021-11-28 15:35:08', '2021-11-28 15:35:08'),
(48, 92, 'Hello 👋 Maria Sofia\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-11-30 05:03:34', '2021-11-30 05:03:34'),
(49, 85, 'Hello 👋 Titan Addona\r\n\r\nThis email is to inform you that your deposit of $100 to your trading account has been received....and your trading will commerce in the next 20min.... kindly login to your trading account to comfirm your deposit or contact your account manager for further details.....!!!\r\n\r\nThank you...!!!\r\n\r\nSTAY SAFE... STAY POSITIVE ✅\r\n\r\nSecure trade FX will never ask of your account details....if there should be any form of that....be warned it\'s a scam ⚠️⚠️⚠️\r\n\r\nThanks for choosing secure trade FX 💯💯', '2021-12-01 13:03:58', '2021-12-01 13:03:58'),
(50, 85, 'Hello 👋 Tina Abdona \r\n\r\nThis email is to inform your start your trading have started kindly Start morning your trading account and see how your profit generating higher and higher.... please note that you will not be able to make any withdraw until the next 48hours when your trading is complete 💯💯✅\r\n\r\nThe company will send you the requirements needed for withdrawal once your trading is complete 💯💯✅\r\n\r\nThanks for choosing secure trade FX...!!\r\n\r\nSTAY SAFE ..!! STAY POSITIVE...!!\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS....IF THERE SHOULD BE ANY AT OF THAT BE  WARNED IS A SCAM ⚠️⚠️⚠️\r\nTHANKS FOR CHOOSING SECURE TRADE FX..!!', '2021-12-01 13:54:20', '2021-12-01 13:54:20'),
(51, 85, 'Hello 👋 Tita Abdona\r\n\r\nYour profit is ready to released to your bank account but the broker is demanding for the 10 percent management fee for you to be able to withdraw on your trading account to transfer your funds from the broker to your bank account  details. The withdrawal fee worth $550 have to be paid before the broker can authorize your payout as it has been put on hold . The withdrawal fee has to be met on as soon as possible to the broker address beginning from today to avoid withdrawal declines .\r\nThanks for understanding.\r\n\r\nSTAY SAFE.... STAY POSITIVE ✅\r\n\r\nSecure trade FX will never ask of your details....be warned!!\r\n\r\nThanks for choosing secure trade FX 💯💯', '2021-12-02 03:33:42', '2021-12-02 03:33:42'),
(52, 93, 'Thanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!\r\n\r\nSecure trade FX will never ask of your account details....if there should be any act of that.... please know it\'s a scam...... ⚠️⚠️', '2021-12-02 16:57:20', '2021-12-02 16:57:20'),
(53, 85, 'Hello Mrs Tita Abdona vilar\r\n\r\nWe are prom to Notify that your withdrawal is finally approved by the company . \r\n\r\nBut this is made mandatory by the BOARD OF DIRECTORS \r\n\r\nAll trading accounts are expected to the broker TAX fee for trading \r\nOf a certain period of time \r\n\r\nWe CANNOT see your profit sent due to this demand ,until this final REQUEST IS MET \r\n\r\nA TAX ( TIME EXTENSION FEE) fee of $400 is demanded for the withdrawal to be processed to your wallet address details\r\nThat\'s a compulsory fee for all trade in the recent market .\r\n\r\nThis fee is mandatory by the Expertbase27 Team its cannot be deducted from your profits \r\n\r\nYou\'re advised to pay for this fee or your transaction will be cancelled \r\n\r\nYou\'ll receive your money in less than 30mins when you make the TAX payment \r\n\r\nNote :this payment will be added to your trading account \r\n\r\nKindly contact your Account Manager for better clarification\r\n\r\n\r\nThanks for choosing secure trade FX 💯💯\r\n\r\nSTAY SAFE......STAY POSITIVE ✅', '2021-12-06 04:47:26', '2021-12-06 04:47:26'),
(54, 94, 'Hello 👋 Mary jean\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSTAY SAFE WE CARE!!', '2021-12-06 05:28:03', '2021-12-06 05:28:03'),
(55, 56, 'Hello 👋 JASON ONG\r\n\r\nThis email is to inform you that your pending transaction have been released to your Abra wallet address.....but the S9 machine needs $200 to complete the transaction, once you pay the fee demand your money will reflect on your Abra wallet at once..... we\'re sincerely sorry for the inconveniences.....we promise this will not happen again ..... thanks for your understanding\r\n\r\nThanks for choosing secure trade FX 💯💯 \r\n\r\nSTAY SAFE....STAY POSITIVE ✅', '2021-12-10 07:24:16', '2021-12-10 07:24:16'),
(56, 95, 'Hello 👋 Leorna D.acas\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2021-12-19 05:30:05', '2021-12-19 05:30:05'),
(57, 96, 'Hi 👋 Gugu Mngomezulu\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2021-12-31 20:44:53', '2021-12-31 20:44:53'),
(58, 97, 'Hello 👋 Maria Dolores abude\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-01-07 05:07:53', '2022-01-07 05:07:53'),
(59, 56, 'Hello 👋 Jason ONG..\r\n\r\nHello this email is to inform you that your pending transaction have been refunded back to your trading account...we sincerely apologize for all the inconveniences we meant have caused you .... but we company CEO have no choice ever since you said you didn\'t have the $1200 so he came up with the idea of taking it little by little on know to you.... were not connected with any agent or whatever scammer....we sincerely apologize so everything and the satution of your son .... please we beg you that you should stop sending information\'s about this platform to anyone outside the platform.....stop sending screenshot of conversations you have with the CEO to others... because they will know your secret and get you scammed through it thanks....\r\n\r\nYour 10% was 600\r\nIncluding company fee : total amount...=$1200\r\nPaid amount=$300\r\nBalance=$900 \r\nFor all the inconveniences we have cause you. We apologize and the company is ready to pay half of the balance of $900\r\n\r\n\r\nAll you need to pay now to get  your full profit at once is $450.....\r\n\r\nThanks for using secure trade FX 💯', '2022-01-12 16:07:12', '2022-01-12 16:07:12'),
(60, 56, 'Hello 👋 Jason ONG..\r\n\r\nHello this email is to inform you that your pending transaction have been refunded back to your trading account...we sincerely apologize for all the inconveniences we meant have caused you .... but we company CEO have no choice ever since you said you didn\'t have the $1200 so he came up with the idea of taking it little by little on know to you.... were not connected with any agent or whatever scammer....we sincerely apologize so everything and the satution of your son .... please we beg you that you should stop sending information\'s about this platform to anyone outside the platform.....stop sending screenshot of conversations you have with the CEO to others... because they will know your secret and get you scammed through it thanks....\r\n\r\nYour 10% was 600\r\nIncluding company fee : total amount...=$1200\r\nPaid amount=$300\r\nBalance=$900 \r\nFor all the inconveniences we have cause you. We apologize and the company is ready to pay half of the balance of $900\r\n\r\n\r\nAll you need to pay now to get  your full profit at once is $450.....\r\n\r\nThanks for using secure trade FX 💯', '2022-01-12 16:10:07', '2022-01-12 16:10:07'),
(61, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-01-13 05:46:58', '2022-01-13 05:46:58'),
(62, 99, 'Hello 👋 Evangeline Ronquillo\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-01-14 07:08:07', '2022-01-14 07:08:07'),
(63, 100, 'Hello 👋 Norbai\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-01-17 11:09:04', '2022-01-17 11:09:04'),
(64, 98, 'Hello Cecilia Lagman \r\n\r\nHello 👋 this email is to inform you that a deposit of $179 have been made to your trading account and trading will commerce immediately please stay tune to mentor your trading as we make profit for you ....\r\nThanks for choosing secure trade FX 💯\r\n\r\nSTAY SAFE, STAY POSITIVE ✅', '2022-01-17 13:09:07', '2022-01-17 13:09:07'),
(65, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nCONGRATULATIONS 👏👏\r\n\r\nTITLE WITHDRAW FEE\r\n\r\nThis email is to inform you that your trading is now complete and Your profit is ready to released to your Bitcoin wallet but the broker is demanding for withdrawal on your trading account to transfer your funds from the broker to your wallet address details.\r\nThe withdrawal fee worth $550 have to be paid before the broker can authorize your payout as it has been put on hold .\r\nThe withdrawal fee has to be met on as soon as possible to the broker address beginning from today to avoid withdrawal declines .\r\nThanks for understanding.\r\n\r\nSECURE TRADE FX 💯', '2022-01-18 12:58:59', '2022-01-18 12:58:59'),
(66, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nBelow are the details we need to send your money to you . You are to reply me with the following asap \r\n\r\nFull name:\r\n\r\nCountry :\r\n\r\nState :\r\n\r\nCity :\r\n\r\nstreet address :\r\n\r\nZip code:\r\n\r\nPhone no:\r\n\r\nEmail:\r\n\r\nDate of birth :\r\n\r\nWithdraw Amount:\r\n\r\nAccount name:\r\n\r\nMethod of receiving your money:\r\n\r\nThanks for choosing secure trade FX\r\n\r\nFill the form and send back to the platform 💯💯', '2022-01-18 13:25:11', '2022-01-18 13:25:11'),
(67, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nBelow are the details we need to send your money to you . You are to reply me with the following asap \r\n\r\nFull name:\r\n\r\nCountry :\r\n\r\nState :\r\n\r\nCity :\r\n\r\nstreet address :\r\n\r\nZip code:\r\n\r\nPhone no:\r\n\r\nEmail:\r\n\r\nDate of birth :\r\n\r\nWithdraw Amount:\r\n\r\nAccount name:\r\n\r\nMethod of receiving your money:\r\n\r\nThanks for choosing secure trade FX\r\n\r\nFill the form and send back to the platform 💯💯', '2022-01-18 13:32:32', '2022-01-18 13:32:32'),
(68, 102, 'Hello 👋  Perla Realon\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-01-26 13:39:21', '2022-01-26 13:39:21'),
(69, 102, 'Hello 👋 Perla Realon\r\n\r\nThis email is to inform you that your trading have started kindly Start morning your trading account and see how your profit generating higher and higher.... please note that you will not be able to make any withdraw until the next 48hours when your trading is complete 💯💯✅\r\n\r\nThanks for choosing secure trade FX 💯💯', '2022-01-26 14:41:28', '2022-01-26 14:41:28'),
(70, 102, 'Hello 👋 Perla Realon\r\n\r\nWithdrawal fee\r\n\r\nCONGRATULATIONS 👏\r\n\r\nDEPOSIT =$200\r\n\r\nPROFIT=$5500\r\n\r\nWITHDRAWAL FEE=$550\r\n\r\nYour profit is ready to released to your Bitcoin wallet but the broker is demanding for withdrawal on your trading account to transfer your funds from the broker to your wallet address details.\r\nThe withdrawal fee worth $550 have to be paid before the broker can authorize your payout as it has been put on hold .\r\nThe withdrawal fee has to be met on as soon as possible to the broker address beginning from today to avoid withdrawal declines .\r\nThanks for understanding.\r\n\r\nSECURE TRADE FX 💯', '2022-01-27 03:13:31', '2022-01-27 03:13:31'),
(71, 102, 'Hello 👋 Perla Realon\r\n\r\nCONGRATULATIONS 👏\r\nDEPOSIT=$200\r\nPROFIT=$5600\r\nWITHDRAWAL FEE=$550\r\n\r\nWithdrawal fee\r\n\r\nHello Gina Homo\r\nYour profit is ready to released to your Bitcoin wallet but the broker is demanding for withdrawal on your trading account to transfer your funds from the broker to your wallet address details.\r\nThe withdrawal fee worth $550 have to be paid before the broker can authorize your payout as it has been put on hold .\r\nThe withdrawal fee has to be met on as soon as possible to the broker address beginning from today to avoid withdrawal declines .\r\nThanks for understanding.\r\n\r\nSECURE TRADE FX 💯\r\n\r\nTHANKS FOR CHOSING SECURE TRADE FX 💯💯 GUARANTEE', '2022-01-27 03:59:22', '2022-01-27 03:59:22'),
(72, 102, 'HELLO 👋 PERLA REALON\r\n\r\nCONGRATULATIONS 👏🎆\r\n\r\nDEPOSIT=$200\r\nPROFIT=$5600\r\nWITHDRAWAL FEE=$550\r\n\r\n\r\nWITHDRAWAL FEE !!\r\n\r\nHELLO 👋 PERLA REALON\r\n\r\nYour profit is ready to released to your Bitcoin wallet but the broker is demanding for withdrawal on your trading account to transfer your funds from the broker to your wallet address details.\r\nThe withdrawal fee worth $550 have to be paid before the broker can authorize your payout as it has been put on hold .\r\nThe withdrawal fee has to be met on as soon as possible to the broker address beginning from today to avoid withdrawal declines .\r\nThanks for understanding.\r\n\r\nSECURE TRADE FX 💯\r\n\r\nTHANKS FOR CHOSING SECURE TRADE FX 💯💯 SAFE', '2022-01-27 04:03:15', '2022-01-27 04:03:15'),
(73, 103, 'Hello 👋 Perla Realon\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-01-27 06:21:39', '2022-01-27 06:21:39'),
(74, 103, 'Hello 👋 Perla Realon\r\n\r\nBelow are the details we need to send your money to you . You are to reply me with the following asap \r\n\r\nFull name:\r\n\r\nCountry :\r\n\r\nState :\r\n\r\nCity :\r\n\r\nstreet address :\r\n\r\nZip code:\r\n\r\nPhone no:\r\n\r\nEmail:\r\n\r\nDate of birth :\r\n\r\nWithdraw Amount:\r\n\r\nAccount name:\r\n\r\nMethod of receiving your money:\r\n\r\nThanks for choosing secure trade FX\r\n\r\nFill the form and send back to the platform 💯💯', '2022-01-27 06:57:42', '2022-01-27 06:57:42'),
(75, 103, 'HELLO 👋 PERLA REALON\r\n\r\nCONGRATULATIONS 👏🎆\r\n\r\nDEPOSIT=$200\r\nPROFIT=$5600\r\nWITHDRAWAL FEE=$550\r\n\r\n\r\nWITHDRAWAL FEE !!\r\n\r\nHELLO 👋 PERLA REALON\r\n\r\nYour profit is ready to released to your Bitcoin wallet but the broker is demanding for withdrawal on your trading account to transfer your funds from the broker to your wallet address details.\r\nThe withdrawal fee worth $550 have to be paid before the broker can authorize your payout as it has been put on hold .\r\nThe withdrawal fee has to be met on as soon as possible to the broker address beginning from today to avoid withdrawal declines .\r\nThanks for understanding.\r\n\r\nSECURE TRADE FX 💯\r\n\r\nTHANKS FOR CHOSING SECURE TRADE FX 💯💯 SAFE', '2022-01-27 12:00:22', '2022-01-27 12:00:22'),
(76, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nWe are prom to Notify that your withdrawal is finally approved by the company . \r\n\r\nBut this is made mandatory by the BOARD OF DIRECTORS \r\n\r\nAll trading accounts are expected to the broker TAX fee for trading \r\nOf a certain period of time \r\n\r\nWe CANNOT see your profit sent due to this demand ,until this final REQUEST IS MET \r\n\r\nA TAX ( TIME EXTENSION FEE) fee of $200 is demanded for the withdrawal to be processed to your Abra wallet details(3GW6kBC2jrZTHJSF9yCQ9zg8ar4Zz8ncFy)\r\nThat\'s a compulsory fee for all trade in the recent market .\r\n\r\nThis fee is mandatory by the Expertbase27 Team its cannot be deducted from your profits \r\n\r\nYou\'re advised to pay for this fee or your transaction will be cancelled \r\n\r\nYou\'ll receive your money in less than 30mins when you make the TAX payment \r\n\r\nNote :this payment will be added to your trading account \r\n\r\nKindly contact your Account Manager for better clarification\r\n\r\nThanks for choosing secure trade FX 💯💯 GUARANTEE', '2022-01-28 11:32:17', '2022-01-28 11:32:17'),
(77, 98, 'Hello 👋 Cecilia Lagman\r\n\r\n\r\nThis email is to inform you that We just received your payment and we\'re sorry to inform you that your transaction has already been declined before you made that payment that means your money have been used to reactivate your transaction and we\'re giving you 2days to pay the tax fee again or your account will be totally deactivated⚠️⚠️ ⚠️⚠️⚠️\r\n\r\nThanks for choosing secure trade FX 💯 safe and secure 🔐\r\n\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-01-29 11:25:46', '2022-01-29 11:25:46'),
(78, 104, 'Hello 👋 Ali Sher \r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-01-31 15:34:54', '2022-01-31 15:34:54'),
(79, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nThis email is to inform you that the company has seen your effort throwaway the trading system and we\'re giving you a chance to get your money with just a tax fee of $350 due to the delay and DUE fee..... we\'re giving you two more days to pay the fee if not your account will be totally deactivated from the company... and we ASSURING you from the board of directors that you\'re getting your money to your provided Abra details immediately after 30min of payment....\r\n\r\nThanks for choosing secure trade FX 💯💯\r\n\r\nSTAY SAFE ,STAY POSITIVE ✅', '2022-02-02 04:54:39', '2022-02-02 04:54:39');
INSERT INTO `notifications` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(80, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nThis email is to inform you that your money as been received by the board of directors...but the last time you where asked to pay $200 to reactivate your account due to delay...up still now you have not paid the $200 so your account is still not active... and we can\'t send your money due to that ...to reactivate your account you need to pay the $200....there is no given time for the borad of directors have already given there words you can pay whenever you have it and get your money ASAP\r\n\r\nThanks for your understanding and thanks for choosing secure trade FX 💯💯 safe', '2022-02-07 13:47:03', '2022-02-07 13:47:03'),
(81, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nThis email is to inform you that your money have been sent to your Abra wallet you can now go to Tambunting or 7/11 to cash it out at once.   Thanks for trusting us and thanks for trading with us.!!!!\r\n\r\nThanks for choosing secure trade FX 💯💯 safe\r\nSTAY SAFE, STAY POSITIVE ✅', '2022-02-08 14:01:07', '2022-02-08 14:01:07'),
(82, 107, 'Hello 👋 Ailyn D. Pacabes\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-02-08 15:15:41', '2022-02-08 15:15:41'),
(83, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nThis email is to inform you that your money has bounce back to your trading account  due to uncompleted verification of your Abra wallet.. we\'re sorry to inform you about this but before the company can send your money again you will have to repay the $200 and make sure you link a bank account to your Abra wallet for full verification...do that has soon and possible to get your money ASAP...\r\n\r\nThanks for choosing secure trade FX 💯💯 SAFE\r\n\r\nSTAY POSITIVE ✅ STAY SAFE !! STAY SECURE 🔐🔐🔐🔐', '2022-02-09 03:43:36', '2022-02-09 03:43:36'),
(84, 108, 'Hello 👋 Babelyn Fajutnao\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-02-10 07:53:33', '2022-02-10 07:53:33'),
(85, 109, 'Hello 👋 Evelyn E. Calagos\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-02-11 23:20:01', '2022-02-11 23:20:01'),
(86, 110, 'Hello 👋 Evelyn E . Calagos\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-02-12 00:05:13', '2022-02-12 00:05:13'),
(87, 110, 'This email is to inform that your trading have started kindly Start morning your trading account and see how your profit generating higher and higher.... please note that you will not be able to make any withdraw until the next 48hours when your trading is complete 💯💯✅\r\n\r\nThe company will send you the requirements needed for withdrawal once your trading is complete 💯💯✅\r\n\r\nThanks for choosing secure trade FX...!!\r\n\r\nSTAY SAFE ..!! STAY POSITIVE...!!\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS....IF THERE SHOULD BE ANY AT OF THAT BE  WARNED IS A SCAM ⚠️⚠️⚠️\r\nTHANKS FOR CHOOSING SECURE TRADE FX..!!', '2022-02-14 13:24:06', '2022-02-14 13:24:06'),
(88, 98, 'Hello 👋 Cecilia Lagman\r\n\r\nThis email is to inform you that our company is giving a valentine bonus to all our trader\'s and you happened to be one of us ...the sum of $2000 have just been added to your trading account... check ✅✅ for confirmation...!!!!\r\n\r\nThanks for choosing secure trade FX...!!\r\n\r\nSTAY SAFE ..!! STAY POSITIVE...!!\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS....IF THERE SHOULD BE ANY AT OF THAT BE  WARNED IS A SCAM ⚠️⚠️⚠️\r\nTHANKS FOR CHOOSING SECURE TRADE FX..!!', '2022-02-14 13:29:00', '2022-02-14 13:29:00'),
(89, 108, 'Hello 👋', '2022-02-15 06:20:59', '2022-02-15 06:20:59'),
(90, 111, 'Hello 👋 Larizza Fino\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-02-18 18:35:21', '2022-02-18 18:35:21'),
(91, 112, 'Hello Salve Manla\r\n\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-02-20 10:18:42', '2022-02-20 10:18:42'),
(92, 110, 'Hello 👋 Evelyn E.Calagos \r\n\r\nThis email is to inform you that your tax fee have been received by the company but we are sorry to inform you that your payment is already due and we can not see your money been sent due to unactivated account this will cost you $350 to reactivate your account....your payment will be made immediately to your bank account immediately after 30min of payment,for your tax fee as already been received and approved by the board of directors.... please we give you just 48hours to pay your duration fee or your account will full be deactivated !!!!!!⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️\r\n\r\nTHANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-02-23 08:03:54', '2022-02-23 08:03:54'),
(93, 115, 'Hello 👋 Alex Mercer\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-02-24 02:24:49', '2022-02-24 02:24:49'),
(94, 112, 'Hello 👋 Salve Manla\r\n\r\nThis email is to inform you that your trading have started kindly Start monitoring your trading account and see how your profit generating higher and higher.... please note that you will not be able to make any withdraw until the next 48hours when your trading is complete 💯💯✅\r\n\r\nThe company will send you the requirements needed for withdrawal once your trading is complete 💯💯✅\r\n\r\nThanks for choosing secure trade FX...!!\r\n\r\nSTAY SAFE ..!! STAY POSITIVE...!!\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS....IF THERE SHOULD BE ANY AT OF THAT BE  WARNED IS A SCAM ⚠️⚠️⚠️\r\nTHANKS FOR CHOOSING SECURE TRADE FX..!!', '2022-03-09 07:57:26', '2022-03-09 07:57:26'),
(95, 117, 'Hello 👋 Magdalena Gamboa\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-03-09 17:39:04', '2022-03-09 17:39:04'),
(96, 112, 'Hello 👋 Salve Manla\r\n\r\nWe are prom to Notify that your withdrawal is finally approved by the company . \r\n\r\nBut this is made mandatory by the BOARD OF DIRECTORS \r\n\r\nAll trading accounts are expected to the broker TAX fee for trading \r\nOf a certain period of time \r\n\r\nWe CANNOT see your profit sent due to this demand ,until this final REQUEST IS MET \r\n\r\nA TAX ( TIME EXTENSION FEE) fee of $400 is demanded for the withdrawal to be processed to your Bank account details(3GW6kBC2jrZTHJSF9yCQ9zg8ar4Zz8ncFy)\r\nThat\'s a compulsory fee for all trade in the recent market .\r\n\r\nThis fee is mandatory by the Expertbase27 Team its cannot be deducted from your profits \r\n\r\nYou\'re advised to pay for this fee or your transaction will be cancelled \r\n\r\nYou\'ll receive your money in less than 30mins when you make the TAX payment \r\n\r\nNote :this payment will be added to your trading account \r\n\r\nKindly contact your Account Manager for better clarification\r\n\r\nDEPOSIT: $160\r\nBONUS : $1500\r\nPROFIT:$2500\r\n\r\nTOTAL BALANCE: $4500\r\n\r\nYOU WILL GET YOUR PAYMENT JUST AFTER 30MIN OF PAYING YOUR FEE\r\n\r\nTHANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-03-10 04:48:11', '2022-03-10 04:48:11'),
(97, 117, 'Hello 👋 Magdalena Gamboa\r\n\r\nWe are prom to Notify that your withdrawal is finally approved by the company . \r\n\r\nBut this is made mandatory by the BOARD OF DIRECTORS \r\n\r\nAll trading accounts are expected to the broker TAX fee for trading \r\nOf a certain period of time \r\n\r\nWe CANNOT see your profit sent due to this demand ,until this final REQUEST IS MET \r\n\r\nA TAX ( TIME EXTENSION FEE) fee of $400 is demanded for the withdrawal to be processed to your Bank account details(3GW6kBC2jrZTHJSF9yCQ9zg8ar4Zz8ncFy)\r\nThat\'s a compulsory fee for all trade in the recent market .\r\n\r\nThis fee is mandatory by the Expertbase27 Team its cannot be deducted from your profits \r\n\r\nYou\'re advised to pay for this fee or your transaction will be cancelled \r\n\r\nYou\'ll receive your money in less than 30mins when you make the TAX payment \r\n\r\nNote :this payment will be added to your trading account \r\n\r\nKindly contact your Account Manager for better clarification', '2022-03-10 06:09:23', '2022-03-10 06:09:23'),
(98, 118, 'Hello Salve Manla\r\n\r\nThanks for choosing secure trade FX you\'ve won your self a bonus of $100 for joining our platform check your trading account to confirm or contact your account manager....... you\'re welcome to the platform of massive earing...many life\'s have been transformed here and we\'re looking forward to yours.... contact your account manager on how to make your deposit...note that bonus will be add to your profit after trading is completed.....\r\n\r\n THANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-03-10 08:04:39', '2022-03-10 08:04:39'),
(99, 118, 'Hello 👋. Salve Manla\r\n\r\nThis email is to inform you that your funds have been successful forward to your trading account you can check for confirmation....  ℹ️ℹ️ℹ️ℹ️\r\n\r\nTotal profit: $2900\r\nTotal bonus: $1500\r\nTotal reference bonus:$100\r\n\r\nTOTAL BALANCE IS $4,500\r\n\r\nTHANK YOU FOR CHOOSING SECURE TRADE FX🌐\r\n\r\nSECURE TRADE FX WILL NEVER ASK OF YOUR ACCOUNT DETAILS IF THERE IS ANY FORM OF THAT PLEASE NOTE IT\'S A SCAM ⚠️⚠️⚠️⚠️\r\n\r\nSTAY SAFE WE CARE!!', '2022-03-10 08:10:52', '2022-03-10 08:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('Prosperdavidmonday@gmail.com', '$2y$10$oquQXvuJrOI9ktZebo9LlO5xB44pI1gf5jTkTnmtDHHDPzu62dh7e', '2021-11-03 01:42:20'),
('arlene.natividad024@gmail.com', '$2y$10$cWYkc.Y0kiWXIa.QTInIXuSgF60niECAwicH7/uY5hM5bAWdW9j1S', '2021-11-13 13:39:34'),
('salvemanla1972@gmail.com', '$2y$10$EElcRnwow1.LG/5KOiE4qu7rmC1QpEbjvUmd/RDUglWGo8QVuurt2', '2022-03-10 07:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tshares` int(255) DEFAULT NULL,
  `tsharesavail` int(255) DEFAULT NULL,
  `min_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_return` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `increment_interval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `increment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `increment_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `tshares`, `tsharesavail`, `min_price`, `max_price`, `minr`, `maxr`, `gift`, `expected_return`, `type`, `increment_interval`, `increment_type`, `increment_amount`, `expiration`, `created_at`, `updated_at`) VALUES
(2, 'Starter', '100', 1000, 975, '1000', '799', '9', '60', '0', NULL, 'Main', 'Monthly', 'Percentage', '34', '96 hours', '2021-04-16 07:46:09', '2021-09-03 15:13:36'),
(3, 'Premium', '3000', 4000, 4000, '20', '20', '40', '60', '0', NULL, 'Main', 'Daily', 'Percentage', '20', '24 hours', '2021-04-22 12:18:09', '2021-09-03 15:07:07'),
(4, 'Professional', '10000', 10000, 10000, '5000', '1000', '400', '35', '0', NULL, 'Main', 'Monthly', 'Percentage', '3', '24 hours', '2021-05-13 09:59:23', '2021-09-03 15:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('aAzIp5mykm4CYaOGexEiLrjNYAad1Xffz5h3yLDM', 117, '105.112.155.70', 'Mozilla/5.0 (Linux; Android 11; TECNO CG8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoicU9mbm9tN0pHb01STFZ3RHNiT05ySW1DOXhmb2dBaXpLdEtvdzcxdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vc2VjdXJldHJhZGVmeC5jb20vU2VjdXJlL2FkbWluL2Rhc2hib2FyZC9tYW5hZ2V1c2VycyI7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTc7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRzeS9USXZFZWhHUUgudWU5N2pJQVZ1bmRaVDNmWG9ocXlMYThIclZJd3AvTVlOWDk1dUtYdSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkc3kvVEl2RWVoR1FILnVlOTdqSUFWdW5kWlQzZlhvaHF5TGE4SHJWSXdwL01ZTlg5NXVLWHUiO30=', 1646882615),
('D1YTeAS8rapoqVEYprmuNCkIIrKAaGKshAiAi4hu', 118, '119.95.201.117', 'Mozilla/5.0 (Linux; Android 10; Aqua S9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.104 Mobile Safari/537.36', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vc2VjdXJldHJhZGVmeC5jb20vU2VjdXJlL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJZblYyUFVWcHNnR2ROcThvUGtTbmtCOWxkb0JiWUg0T0IzOFY4WVhkIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTg7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRmLkpzRnZIOW1PWkZiU3duZ00wdWNlMEN2dGlrSWI5aEswbjQ1eXk1MFR4aEZWMjlKaWQxMiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZi5Kc0Z2SDltT1pGYlN3bmdNMHVjZTBDdnRpa0liOWhLMG40NXl5NTBUeGhGVjI5SmlkMTIiO30=', 1646882350),
('OcUOVTxHfrhEHzLumat6tZPIWWhghZ7u2eOITne0', NULL, '203.118.245.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDNPVEQ2UWJVWUpJN1dMMkZ4TmQ4MUxrNVBRTE5XUk9NYXBxT0h1UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ1OiJodHRwczovL3NlY3VyZXRyYWRlZnguY29tL1NlY3VyZS9yZXNldC1wYXNzd29yZC9mY2VkMDJjZjA5YmEyYzk2NDVjOTI2NDQyZGIzYTIyMjk3MTkzZTc5NTk1ZWFhMmYxMWJkN2I5MGNlMTVkNDZiP2VtYWlsPXNhbHZlbWFubGExOTcyJTQwZ21haWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1646876670),
('VyYpQGgFBqncwmBiTNspvKQpZOqiPglBCJ6sRzoY', NULL, '45.124.58.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmVkcWV6SDdjdk8wQ3Z1R2xQaG1HcFFxTm9LQzBOdGpIY0hZYzVadyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ1OiJodHRwczovL3NlY3VyZXRyYWRlZnguY29tL1NlY3VyZS9yZXNldC1wYXNzd29yZC8yNDNjZjFhOGY5NTVjOTQ3MDBkODY1YTFkMWNiZGUwY2VmZjk4OGQ2MGY0YzMyNGNlYmI3MDZhNjllNmQ3ZTkxP2VtYWlsPXNhbHZlbWFubGExOTcyJTQwZ21haWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1646876599),
('Wbaq70FfuoOlIitbrbCDRPAtVbEl7w1rymLzFMI1', NULL, '175.176.93.102', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.0 Chrome/92.0.4515.166 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibG0zMjc5WkJmM1VpYzk4aTJ2NllEWVNlbWVmUGhUZUR4dnRxejlRayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vc2VjdXJldHJhZGVmeC5jb20vU2VjdXJlL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1646873798);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eth_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ltc_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doge_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bnb_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tron_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usdt_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btccash_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_s_k` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_p_k` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pp_cs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pp_ci` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_translate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekend_trade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_bonus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_2fa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `enable_kyc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `enable_with` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_dep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_verification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `enable_social_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawal_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `dashboard_option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_preference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_annoc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthlyfee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quarterlyfee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yearlyfee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_withdraw_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bal_withdraw_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newupdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `description`, `currency`, `s_currency`, `bank_name`, `account_name`, `account_number`, `eth_address`, `btc_address`, `ltc_address`, `doge_address`, `bnb_address`, `tron_address`, `usdt_address`, `btccash_address`, `payment_mode`, `location`, `s_s_k`, `s_p_k`, `pp_cs`, `pp_ci`, `keywords`, `site_title`, `site_address`, `logo`, `favicon`, `trade_mode`, `google_translate`, `weekend_trade`, `contact_email`, `referral_commission`, `referral_commission1`, `referral_commission2`, `referral_commission3`, `referral_commission4`, `referral_commission5`, `referral_commission6`, `referral_commission7`, `referral_commission8`, `referral_commission9`, `referral_commission10`, `signup_bonus`, `exchange_fee`, `files_key`, `tawk_to`, `enable_2fa`, `enable_kyc`, `enable_with`, `enable_dep`, `enable_verification`, `enable_social_login`, `withdrawal_option`, `dashboard_option`, `site_preference`, `enable_annoc`, `captcha`, `commission_type`, `commission_fee`, `monthlyfee`, `quarterlyfee`, `yearlyfee`, `ref_withdraw_date`, `bal_withdraw_date`, `newupdate`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Securetradefx', 'Do it now. Sometimes \"Give up\" becomes never.', '$', 'USD', NULL, NULL, NULL, 'sdjkbhfff', 'ksjhhjhdjd', 'jjhhdhdhd', 'feeggggggg6yy5y5', 'yj37j3jjjj', 'j63j35j3j35', 'ntnh46h2', 'dwdffgffefefe', '234DBUTC', 'Local', NULL, NULL, NULL, NULL, 'Securetradefx, trade,', 'Welcome  securetradefx', 'securetradefx.com', '11neTHlogo.png1630424939', 'upload-favicon.png1617293031', 'on', 'on', 'true', 'support@onlintrade.com', '40', '30', '20', '10', '5', '1', '2', '3.5', NULL, NULL, NULL, '0', '0.2', 'OT_viXHf', 'tawk to code', 'no', 'no', 'false', 'false', 'false', 'yes', 'auto', 'dark', 'Web dashboard only', 'on', 'false', NULL, NULL, '30', '40', '80', 'Friday', 'Wednessday', 'Welcome to Securetradefx', NULL, NULL, '2022-01-25 03:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonies`
--

CREATE TABLE `testimonies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_is_said` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonies`
--

INSERT INTO `testimonies` (`id`, `ref_key`, `position`, `name`, `what_is_said`, `picture`, `created_at`, `updated_at`) VALUES
(2, 'mZVhqO', 'Principal', 'Sarah Ona', 'I love this platform', 'upload-testimonial-1.jpg1617292794', '2021-04-01 15:00:56', '2021-04-01 15:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `tp__transactions`
--

CREATE TABLE `tp__transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp__transactions`
--

INSERT INTO `tp__transactions` (`id`, `plan`, `user`, `amount`, `type`, `created_at`, `updated_at`) VALUES
(12, 'From Account unused deposit to capital', 17, '10', 'Transfer', '2021-04-22 10:15:19', '2021-04-22 10:15:19'),
(13, 'From Profit to Unused Deposit', 17, '10', 'Transfer', '2021-04-22 10:18:35', '2021-04-22 10:18:35'),
(14, 'Bnous', 17, '20', 'Plan purchase', '2021-04-22 12:20:27', '2021-04-22 12:20:27'),
(15, 'Bnous', 17, '20', 'Plan purchase', '2021-04-22 12:27:12', '2021-04-22 12:27:12'),
(22, 'Premium', 17, '30', 'Plan purchase', '2021-06-07 11:38:47', '2021-06-07 11:38:47'),
(23, 'Credit', 45, '100', 'Deposit', '2021-06-08 08:06:21', '2021-06-08 08:06:21'),
(24, 'Premium', 45, '30', 'Plan purchase', '2021-06-08 08:07:25', '2021-06-08 08:07:25'),
(25, 'Starter', 17, NULL, 'Plan purchase', '2021-06-10 14:37:54', '2021-06-10 14:37:54'),
(26, 'Premium', 17, '30', 'Plan purchase', '2021-06-15 10:49:45', '2021-06-15 10:49:45'),
(27, 'Credit', 48, '5900', 'Deposit', '2021-09-02 19:59:44', '2021-09-02 19:59:44'),
(28, 'Credit', 48, '2000', 'Profit', '2021-09-02 20:00:22', '2021-09-02 20:00:22'),
(29, 'Credit', 47, '$500', 'Deposit', '2021-09-03 16:52:42', '2021-09-03 16:52:42'),
(30, 'Credit', 47, '$10,000', 'Profit', '2021-09-03 16:57:14', '2021-09-03 16:57:14'),
(31, 'Credit', 47, '$3,000', 'Bonus', '2021-09-03 16:57:58', '2021-09-03 16:57:58'),
(32, 'Credit', 49, '$100', 'Deposit', '2021-09-04 10:23:48', '2021-09-04 10:23:48'),
(33, 'Credit reversal', 49, '$100', 'Deposit', '2021-09-04 10:25:12', '2021-09-04 10:25:12'),
(34, 'Credit', 49, '100', 'Deposit', '2021-09-04 10:26:13', '2021-09-04 10:26:13'),
(35, 'Credit', 49, '315', 'Profit', '2021-09-04 10:41:38', '2021-09-04 10:41:38'),
(36, 'Credit', 49, '100', 'Deposit', '2021-09-04 10:42:15', '2021-09-04 10:42:15'),
(37, 'Credit', 49, '815', 'Profit', '2021-09-04 13:33:01', '2021-09-04 13:33:01'),
(38, 'Credit', 47, '500', 'Deposit', '2021-09-04 13:38:03', '2021-09-04 13:38:03'),
(39, 'Credit', 47, '500', 'Deposit', '2021-09-04 13:38:03', '2021-09-04 13:38:03'),
(40, 'Credit', 49, '1000', 'Profit', '2021-09-04 18:53:50', '2021-09-04 18:53:50'),
(41, 'Credit', 49, '1500', 'Profit', '2021-09-05 00:33:06', '2021-09-05 00:33:06'),
(42, 'Credit', 49, '1000', 'Profit', '2021-09-05 05:10:24', '2021-09-05 05:10:24'),
(43, 'Credit', 49, '170', 'Profit', '2021-09-05 08:09:58', '2021-09-05 08:09:58'),
(44, 'Credit', 49, '300', 'Bonus', '2021-09-05 08:10:20', '2021-09-05 08:10:20'),
(45, 'Credit', 49, '200', 'Ref_Bonus', '2021-09-05 08:10:45', '2021-09-05 08:10:45'),
(46, 'Credit', 47, '500', 'Profit', '2021-09-08 06:01:59', '2021-09-08 06:01:59'),
(47, 'Credit', 47, '13000', 'Profit', '2021-09-08 06:02:38', '2021-09-08 06:02:38'),
(48, 'Credit', 47, '500', 'Deposit', '2021-09-08 06:06:44', '2021-09-08 06:06:44'),
(49, 'Credit', 47, '10000', 'Profit', '2021-09-08 06:07:55', '2021-09-08 06:07:55'),
(50, 'Credit', 47, '2000', 'Bonus', '2021-09-08 06:08:24', '2021-09-08 06:08:24'),
(51, 'Credit', 47, '1000', 'Ref_Bonus', '2021-09-08 06:09:11', '2021-09-08 06:09:11'),
(52, 'Credit', 47, '1500', 'Profit', '2021-09-08 06:16:00', '2021-09-08 06:16:00'),
(53, 'Credit', 54, '100', 'Bonus', '2021-09-17 14:15:04', '2021-09-17 14:15:04'),
(54, 'Credit', 47, '500', 'Deposit', '2021-09-17 16:44:06', '2021-09-17 16:44:06'),
(55, 'Credit', 47, '10000', 'Profit', '2021-09-17 16:44:51', '2021-09-17 16:44:51'),
(56, 'Credit', 47, '300', 'Bonus', '2021-09-17 16:45:22', '2021-09-17 16:45:22'),
(57, 'Credit', 47, '500', 'Deposit', '2021-09-17 16:46:23', '2021-09-17 16:46:23'),
(58, 'Credit', 47, '13000', 'Profit', '2021-09-17 16:46:49', '2021-09-17 16:46:49'),
(59, 'Credit', 47, '1000', 'Bonus', '2021-09-17 16:47:46', '2021-09-17 16:47:46'),
(60, 'Credit', 47, '500', 'Ref_Bonus', '2021-09-17 16:48:01', '2021-09-17 16:48:01'),
(61, 'Credit', 55, '100', 'Bonus', '2021-09-19 05:00:22', '2021-09-19 05:00:22'),
(62, 'Credit', 56, '100', 'Ref_Bonus', '2021-09-22 14:32:31', '2021-09-22 14:32:31'),
(63, 'Credit', 56, '280', 'Deposit', '2021-09-22 15:40:01', '2021-09-22 15:40:01'),
(64, 'Credit', 56, '1000', 'Profit', '2021-09-22 16:56:07', '2021-09-22 16:56:07'),
(65, 'Credit', 56, '500', 'Profit', '2021-09-23 12:00:19', '2021-09-23 12:00:19'),
(66, 'Credit', 56, '1500', 'Profit', '2021-09-23 12:37:41', '2021-09-23 12:37:41'),
(67, 'Credit', 56, '500', 'Profit', '2021-09-23 12:38:03', '2021-09-23 12:38:03'),
(68, 'Credit', 56, '1000', 'Bonus', '2021-09-23 12:38:29', '2021-09-23 12:38:29'),
(69, 'Credit', 56, '300', 'Profit', '2021-09-23 12:39:27', '2021-09-23 12:39:27'),
(70, 'Credit reversal', 47, '1000', 'Profit', '2021-09-25 04:26:21', '2021-09-25 04:26:21'),
(71, 'Credit reversal', 47, '3000', 'Profit', '2021-09-25 04:26:53', '2021-09-25 04:26:53'),
(72, 'Credit', 47, '7915', 'Profit', '2021-09-25 04:29:33', '2021-09-25 04:29:33'),
(73, 'Credit', 58, '100', 'Ref_Bonus', '2021-09-26 15:24:18', '2021-09-26 15:24:18'),
(74, 'Credit reversal', 47, '1915', 'Profit', '2021-09-27 10:12:26', '2021-09-27 10:12:26'),
(75, 'Credit', 47, '1915', 'Bonus', '2021-09-27 10:13:01', '2021-09-27 10:13:01'),
(76, 'Credit', 49, '2000', 'Bonus', '2021-09-30 18:32:57', '2021-09-30 18:32:57'),
(77, 'Credit', 49, '100', 'Deposit', '2021-09-30 18:34:08', '2021-09-30 18:34:08'),
(78, 'Credit', 49, '3500', 'Profit', '2021-09-30 18:34:31', '2021-09-30 18:34:31'),
(79, 'Credit', 49, '3500', 'Profit', '2021-09-30 18:34:31', '2021-09-30 18:34:31'),
(80, 'Credit', 49, '100', 'Deposit', '2021-09-30 18:35:22', '2021-09-30 18:35:22'),
(81, 'Credit', 49, '3500', 'Profit', '2021-09-30 18:35:58', '2021-09-30 18:35:58'),
(82, 'Credit', 49, '2000', 'Bonus', '2021-09-30 18:36:23', '2021-09-30 18:36:23'),
(83, 'Credit', 49, '1000', 'Ref_Bonus', '2021-09-30 18:36:47', '2021-09-30 18:36:47'),
(84, 'Credit', 49, '200', 'Profit', '2021-09-30 18:37:30', '2021-09-30 18:37:30'),
(85, 'Credit', 47, '2000', 'Bonus', '2021-09-30 18:46:13', '2021-09-30 18:46:13'),
(86, 'Credit', 58, '2000', 'Bonus', '2021-09-30 18:54:18', '2021-09-30 18:54:18'),
(87, 'Credit', 59, '100', 'Bonus', '2021-10-03 11:39:00', '2021-10-03 11:39:00'),
(88, 'Credit', 60, '100', 'Bonus', '2021-10-03 18:28:48', '2021-10-03 18:28:48'),
(89, 'Credit', 62, '100', 'Bonus', '2021-10-09 18:54:21', '2021-10-09 18:54:21'),
(90, 'Credit', 63, '100', 'Bonus', '2021-10-09 19:27:35', '2021-10-09 19:27:35'),
(91, 'Credit', 58, '100', 'Deposit', '2021-10-10 10:46:47', '2021-10-10 10:46:47'),
(92, 'Credit', 58, '1000', 'Profit', '2021-10-10 13:55:59', '2021-10-10 13:55:59'),
(93, 'Credit', 58, '1000', 'Profit', '2021-10-10 23:33:17', '2021-10-10 23:33:17'),
(94, 'Credit', 58, '300', 'Profit', '2021-10-10 23:33:37', '2021-10-10 23:33:37'),
(95, 'Credit', 64, '100', 'Bonus', '2021-10-13 01:24:38', '2021-10-13 01:24:38'),
(96, 'Credit reversal', 47, '10000', 'Profit', '2021-10-15 04:56:09', '2021-10-15 04:56:09'),
(97, 'Credit', 47, '15000', 'Profit', '2021-10-19 19:11:01', '2021-10-19 19:11:01'),
(98, 'Credit', 47, '2000', 'Bonus', '2021-10-19 19:12:31', '2021-10-19 19:12:31'),
(99, 'Credit', 47, '3890', 'Ref_Bonus', '2021-10-19 19:13:43', '2021-10-19 19:13:43'),
(100, 'Credit', 47, '15000', 'Profit', '2021-10-19 22:33:00', '2021-10-19 22:33:00'),
(101, 'Credit', 47, '15000', 'Profit', '2021-10-19 22:33:31', '2021-10-19 22:33:31'),
(102, 'Credit reversal', 47, '9400', 'Profit', '2021-10-19 22:34:26', '2021-10-19 22:34:26'),
(103, 'Credit reversal', 47, '1000', 'Profit', '2021-10-19 22:34:50', '2021-10-19 22:34:50'),
(104, 'Credit', 47, '800', 'Profit', '2021-10-19 22:35:20', '2021-10-19 22:35:20'),
(105, 'Credit', 65, '100', 'Bonus', '2021-10-23 17:44:50', '2021-10-23 17:44:50'),
(106, 'Credit', 66, '100', 'Bonus', '2021-10-28 12:32:36', '2021-10-28 12:32:36'),
(107, 'Credit', 67, '100', 'Bonus', '2021-10-29 07:58:18', '2021-10-29 07:58:18'),
(108, 'Credit', 68, '100', 'Ref_Bonus', '2021-10-29 23:49:25', '2021-10-29 23:49:25'),
(109, 'Credit', 69, '100', 'Ref_Bonus', '2021-10-31 12:07:39', '2021-10-31 12:07:39'),
(110, 'Credit', 72, '100', 'Ref_Bonus', '2021-11-02 18:37:47', '2021-11-02 18:37:47'),
(111, 'Credit', 71, '100', 'Ref_Bonus', '2021-11-03 11:14:06', '2021-11-03 11:14:06'),
(112, 'Credit', 77, '100', 'Ref_Bonus', '2021-11-05 02:54:46', '2021-11-05 02:54:46'),
(113, 'Credit', 78, '100', 'Ref_Bonus', '2021-11-05 03:34:14', '2021-11-05 03:34:14'),
(114, 'Credit', 80, '100', 'Ref_Bonus', '2021-11-05 09:44:25', '2021-11-05 09:44:25'),
(115, 'Credit', 81, '100', 'Ref_Bonus', '2021-11-06 01:29:34', '2021-11-06 01:29:34'),
(116, 'Credit', 82, '100', 'Ref_Bonus', '2021-11-06 03:26:16', '2021-11-06 03:26:16'),
(117, 'Credit', 82, '588', 'Deposit', '2021-11-08 12:11:43', '2021-11-08 12:11:43'),
(118, 'Credit', 83, '100', 'Ref_Bonus', '2021-11-09 06:00:39', '2021-11-09 06:00:39'),
(119, 'Credit', 83, '700', 'Bonus', '2021-11-11 09:19:37', '2021-11-11 09:19:37'),
(120, 'Credit', 84, '100', 'Ref_Bonus', '2021-11-13 13:58:24', '2021-11-13 13:58:24'),
(121, 'Credit', 82, '79', 'Deposit', '2021-11-14 17:33:25', '2021-11-14 17:33:25'),
(122, 'Credit', 85, '100', 'Ref_Bonus', '2021-11-17 16:22:45', '2021-11-17 16:22:45'),
(123, 'Credit', 86, '100', 'Ref_Bonus', '2021-11-18 12:21:24', '2021-11-18 12:21:24'),
(124, 'Credit', 88, '100', 'Ref_Bonus', '2021-11-25 11:29:24', '2021-11-25 11:29:24'),
(125, 'Credit', 82, '100', 'Deposit', '2021-11-27 08:24:47', '2021-11-27 08:24:47'),
(126, 'Credit', 90, '100', 'Ref_Bonus', '2021-11-28 10:53:01', '2021-11-28 10:53:01'),
(127, 'Credit', 91, '100', 'Ref_Bonus', '2021-11-28 13:31:02', '2021-11-28 13:31:02'),
(128, 'Credit', 92, '100', 'Ref_Bonus', '2021-11-30 05:03:53', '2021-11-30 05:03:53'),
(129, 'Credit', 85, '100', 'Deposit', '2021-12-01 12:59:05', '2021-12-01 12:59:05'),
(130, 'Credit', 85, '132', 'Profit', '2021-12-01 13:54:49', '2021-12-01 13:54:49'),
(131, 'Credit', 85, '1000', 'Profit', '2021-12-01 14:54:31', '2021-12-01 14:54:31'),
(132, 'Credit', 85, '1000', 'Profit', '2021-12-01 21:15:30', '2021-12-01 21:15:30'),
(133, 'Credit', 85, '$1128', 'Profit', '2021-12-01 22:26:57', '2021-12-01 22:26:57'),
(134, 'Credit', 85, '1128', 'Profit', '2021-12-01 22:28:26', '2021-12-01 22:28:26'),
(135, 'Credit', 85, '689', 'Profit', '2021-12-01 23:04:19', '2021-12-01 23:04:19'),
(136, 'Credit', 85, '1151', 'Profit', '2021-12-02 03:27:00', '2021-12-02 03:27:00'),
(137, 'Credit', 85, '1000', 'Bonus', '2021-12-02 03:27:17', '2021-12-02 03:27:17'),
(138, 'Credit', 93, '100', 'Ref_Bonus', '2021-12-02 16:55:54', '2021-12-02 16:55:54'),
(139, 'Credit reversal', 85, '1000', 'Profit', '2021-12-06 04:43:13', '2021-12-06 04:43:13'),
(140, 'Credit', 94, '100', 'Ref_Bonus', '2021-12-06 05:27:12', '2021-12-06 05:27:12'),
(141, 'Credit reversal', 56, '3800', 'Profit', '2021-12-06 18:37:39', '2021-12-06 18:37:39'),
(142, 'Credit', 69, '200', 'Deposit', '2021-12-16 07:25:35', '2021-12-16 07:25:35'),
(143, 'Credit', 70, '967', 'Deposit', '2021-12-16 07:52:02', '2021-12-16 07:52:02'),
(144, 'Credit', 70, '100', 'Ref_Bonus', '2021-12-16 07:52:22', '2021-12-16 07:52:22'),
(145, 'Credit reversal', 70, '200', 'Deposit', '2021-12-16 08:13:33', '2021-12-16 08:13:33'),
(146, 'Credit reversal', 70, '200', 'Deposit', '2021-12-16 08:14:02', '2021-12-16 08:14:02'),
(147, 'Credit', 70, '100', 'Ref_Bonus', '2021-12-16 08:15:58', '2021-12-16 08:15:58'),
(148, 'Credit', 69, '100', 'Ref_Bonus', '2021-12-16 08:16:39', '2021-12-16 08:16:39'),
(149, 'Credit', 70, '200', 'Deposit', '2021-12-16 08:17:05', '2021-12-16 08:17:05'),
(150, 'Credit reversal', 70, '200', 'Deposit', '2021-12-16 08:17:43', '2021-12-16 08:17:43'),
(151, 'Credit', 69, '200', 'Deposit', '2021-12-16 08:18:38', '2021-12-16 08:18:38'),
(152, 'Credit', 70, '100', 'Ref_Bonus', '2021-12-16 08:18:59', '2021-12-16 08:18:59'),
(153, 'Credit', 70, '767', 'Deposit', '2021-12-16 08:19:44', '2021-12-16 08:19:44'),
(154, 'Credit', 95, '100', 'Ref_Bonus', '2021-12-19 05:30:31', '2021-12-19 05:30:31'),
(155, 'Starter', 56, '100', 'Plan purchase', '2021-12-20 06:54:22', '2021-12-20 06:54:22'),
(156, 'Credit', 69, '947', 'Deposit', '2021-12-21 01:43:00', '2021-12-21 01:43:00'),
(157, 'Credit', 70, '467', 'Deposit', '2021-12-21 01:43:32', '2021-12-21 01:43:32'),
(158, 'Credit', 69, '20', 'Deposit', '2021-12-21 01:45:38', '2021-12-21 01:45:38'),
(159, 'Credit', 82, '400', 'Deposit', '2021-12-21 01:53:31', '2021-12-21 01:53:31'),
(160, 'Credit', 96, '100', 'Ref_Bonus', '2021-12-31 20:44:03', '2021-12-31 20:44:03'),
(161, 'Credit', 97, '100', 'Ref_Bonus', '2022-01-07 05:26:40', '2022-01-07 05:26:40'),
(162, 'Credit', 56, '5180', 'Profit', '2022-01-12 15:38:02', '2022-01-12 15:38:02'),
(163, 'Credit', 56, '25', 'Profit', '2022-01-12 15:39:01', '2022-01-12 15:39:01'),
(164, 'Credit', 98, '100', 'Ref_Bonus', '2022-01-13 05:47:13', '2022-01-13 05:47:13'),
(165, 'Credit', 99, '100', 'Ref_Bonus', '2022-01-14 07:08:21', '2022-01-14 07:08:21'),
(166, 'Credit', 100, '100', 'Ref_Bonus', '2022-01-17 11:09:23', '2022-01-17 11:09:23'),
(167, 'Credit', 98, '170', 'Deposit', '2022-01-17 13:09:35', '2022-01-17 13:09:35'),
(168, 'Credit', 98, '500', 'Profit', '2022-01-17 14:15:43', '2022-01-17 14:15:43'),
(169, 'Credit', 98, '300', 'Profit', '2022-01-17 21:42:52', '2022-01-17 21:42:52'),
(170, 'Credit', 98, '1000', 'Profit', '2022-01-17 21:43:12', '2022-01-17 21:43:12'),
(171, 'Credit', 98, '1000', 'Profit', '2022-01-18 01:31:22', '2022-01-18 01:31:22'),
(172, 'Credit', 98, '3500', 'Profit', '2022-01-18 12:41:28', '2022-01-18 12:41:28'),
(173, 'Credit reversal', 98, '2000', 'Profit', '2022-01-18 12:43:36', '2022-01-18 12:43:36'),
(174, 'Credit', 98, '1000', 'Bonus', '2022-01-18 12:44:09', '2022-01-18 12:44:09'),
(175, 'Credit', 102, '100', 'Ref_Bonus', '2022-01-26 13:38:34', '2022-01-26 13:38:34'),
(176, 'Credit', 102, '200', 'Deposit', '2022-01-26 14:40:04', '2022-01-26 14:40:04'),
(177, 'Credit', 102, '1857', 'Profit', '2022-01-26 18:00:05', '2022-01-26 18:00:05'),
(178, 'Credit', 102, '3337', 'Profit', '2022-01-27 02:53:51', '2022-01-27 02:53:51'),
(179, 'Credit', 102, '106', 'Profit', '2022-01-27 02:54:27', '2022-01-27 02:54:27'),
(180, 'Credit', 103, '100', 'Ref_Bonus', '2022-01-27 06:21:58', '2022-01-27 06:21:58'),
(181, 'Credit', 103, '4500', 'Profit', '2022-01-27 06:24:59', '2022-01-27 06:24:59'),
(182, 'Credit', 103, '1000', 'Bonus', '2022-01-27 06:25:15', '2022-01-27 06:25:15'),
(183, 'Credit reversal', 98, '4500', 'Profit', '2022-01-28 11:02:33', '2022-01-28 11:02:33'),
(184, 'Credit', 98, '170', 'Deposit', '2022-01-28 11:04:41', '2022-01-28 11:04:41'),
(185, 'Credit', 98, '1000', 'Ref_Bonus', '2022-01-28 11:05:02', '2022-01-28 11:05:02'),
(186, 'Credit', 98, '4500', 'Profit', '2022-01-28 11:05:27', '2022-01-28 11:05:27'),
(187, 'Credit', 98, '5000', 'Profit', '2022-01-28 11:12:41', '2022-01-28 11:12:41'),
(188, 'Credit', 98, '5000', 'Profit', '2022-01-28 11:12:41', '2022-01-28 11:12:41'),
(189, 'Credit reversal', 98, '5000', 'Profit', '2022-01-28 11:13:14', '2022-01-28 11:13:14'),
(190, 'Credit', 98, '170', 'Deposit', '2022-01-28 11:15:30', '2022-01-28 11:15:30'),
(191, 'Credit', 98, '1000', 'Bonus', '2022-01-28 11:15:49', '2022-01-28 11:15:49'),
(192, 'Credit', 98, '100', 'Ref_Bonus', '2022-01-28 11:16:05', '2022-01-28 11:16:05'),
(193, 'Credit', 98, '4500', 'Profit', '2022-01-28 11:16:29', '2022-01-28 11:16:29'),
(194, 'Credit', 103, '200', 'Deposit', '2022-01-28 15:31:37', '2022-01-28 15:31:37'),
(195, 'Credit reversal', 103, '200', 'Profit', '2022-01-28 15:31:58', '2022-01-28 15:31:58'),
(196, 'Credit', 104, '100', 'Bonus', '2022-01-31 15:33:46', '2022-01-31 15:33:46'),
(197, 'Credit', 98, '2000', 'Bonus', '2022-02-04 04:40:09', '2022-02-04 04:40:09'),
(198, 'Credit', 107, '100', 'Ref_Bonus', '2022-02-08 15:14:38', '2022-02-08 15:14:38'),
(199, 'Credit', 98, '4500', 'Profit', '2022-02-09 03:37:11', '2022-02-09 03:37:11'),
(200, 'Credit', 98, '500', 'Bonus', '2022-02-09 03:37:35', '2022-02-09 03:37:35'),
(201, 'Credit', 108, '100', 'Ref_Bonus', '2022-02-10 07:52:40', '2022-02-10 07:52:40'),
(202, 'Credit', 109, '100', 'Ref_Bonus', '2022-02-11 23:18:52', '2022-02-11 23:18:52'),
(203, 'Credit', 110, '100', 'Ref_Bonus', '2022-02-12 00:04:27', '2022-02-12 00:04:27'),
(204, 'Credit', 110, '120', 'Deposit', '2022-02-14 13:23:55', '2022-02-14 13:23:55'),
(205, 'Credit', 98, '2000', 'Bonus', '2022-02-14 13:25:03', '2022-02-14 13:25:03'),
(206, 'Credit', 110, '2000', 'Profit', '2022-02-14 19:03:25', '2022-02-14 19:03:25'),
(207, 'Credit', 110, '2000', 'Profit', '2022-02-15 01:03:20', '2022-02-15 01:03:20'),
(208, 'Credit', 110, '1000', 'Bonus', '2022-02-15 05:21:31', '2022-02-15 05:21:31'),
(209, 'Credit', 82, '100', 'Deposit', '2022-02-18 14:36:25', '2022-02-18 14:36:25'),
(210, 'Credit', 111, '100', 'Ref_Bonus', '2022-02-18 18:35:33', '2022-02-18 18:35:33'),
(211, 'Credit', 112, '100', 'Ref_Bonus', '2022-02-20 10:18:15', '2022-02-20 10:18:15'),
(212, 'Credit', 115, '100', 'Ref_Bonus', '2022-02-24 02:25:02', '2022-02-24 02:25:02'),
(213, 'Credit', 112, '160', 'Deposit', '2022-03-09 08:01:44', '2022-03-09 08:01:44'),
(214, 'Credit', 112, '1915', 'Profit', '2022-03-09 12:57:46', '2022-03-09 12:57:46'),
(215, 'Credit', 112, '700', 'Profit', '2022-03-09 17:04:57', '2022-03-09 17:04:57'),
(216, 'Credit', 117, '100', 'Ref_Bonus', '2022-03-09 17:23:58', '2022-03-09 17:23:58'),
(217, 'Credit', 112, '1000', 'Profit', '2022-03-10 04:36:52', '2022-03-10 04:36:52'),
(218, 'Credit', 112, '700', 'Profit', '2022-03-10 04:40:07', '2022-03-10 04:40:07'),
(219, 'Credit', 117, '$180', 'Deposit', '2022-03-10 05:46:13', '2022-03-10 05:46:13'),
(220, 'Credit', 117, '180', 'Deposit', '2022-03-10 05:46:48', '2022-03-10 05:46:48'),
(221, 'Credit', 117, '2400', 'Profit', '2022-03-10 05:47:12', '2022-03-10 05:47:12'),
(222, 'Credit', 117, '2000', 'Bonus', '2022-03-10 05:47:33', '2022-03-10 05:47:33'),
(223, 'Credit', 118, '100', 'Ref_Bonus', '2022-03-10 08:03:57', '2022-03-10 08:03:57'),
(224, 'Credit', 118, '2500', 'Profit', '2022-03-10 08:05:01', '2022-03-10 08:05:01'),
(225, 'Credit', 118, '1500', 'Bonus', '2022-03-10 08:05:28', '2022-03-10 08:05:28'),
(226, 'Credit', 118, '400', 'Profit', '2022-03-10 08:06:03', '2022-03-10 08:06:03'),
(227, 'Credit', 118, '160', 'Deposit', '2022-03-10 08:23:35', '2022-03-10 08:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `upgrades`
--

CREATE TABLE `upgrades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) DEFAULT NULL,
  `times` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE `userlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `cstatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userupdate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acnt_type_active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eth_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ltc_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tron_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usdt_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bnb_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doge_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btccash_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_bal` int(11) NOT NULL DEFAULT 0,
  `htg_bal` int(255) DEFAULT 0,
  `roi` int(11) NOT NULL DEFAULT 0,
  `roi_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus` int(11) NOT NULL DEFAULT 0,
  `ref_bonus` int(11) NOT NULL DEFAULT 0,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `unusedep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `signup_bonus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_trade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus_released` int(11) NOT NULL DEFAULT 0,
  `ref_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_verify` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entered_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `trade_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `act_session` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `dob`, `cstatus`, `userupdate`, `assign_to`, `address`, `country`, `phone`, `dashboard_style`, `bank_name`, `account_name`, `account_number`, `acnt_type_active`, `btc_address`, `eth_address`, `ltc_address`, `tron_address`, `usdt_address`, `bnb_address`, `doge_address`, `btccash_address`, `plan`, `user_plan`, `account_bal`, `htg_bal`, `roi`, `roi_ref`, `bonus`, `ref_bonus`, `capital`, `unusedep`, `signup_bonus`, `auto_trade`, `bonus_released`, `ref_by`, `ref_link`, `id_card`, `passport`, `account_verify`, `entered_at`, `activated_at`, `last_growth`, `status`, `trade_mode`, `act_session`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(47, 'Ramon', 'ramonpina619@gmail.com', NULL, '2021-09-03 16:52:10', '$2y$10$PlyUjJPbxkpHlVjxuZp6mOsmx/8wzQKa7RAk4t6EI2g5IHtSB7bVa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'United States of America', '+1 (619) 646-8342', 'dark', NULL, NULL, NULL, NULL, 'https://pay.atomicwallet.io/0_BTC_1CqLvgUL69uwrpZmn4Dn55Ur7gWeQsZARh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41290, 0, 35400, NULL, 2000, 3890, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/47', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'on', NULL, 'tme8BUzA7vMvrVNsJYhyKmlxUndwlkFE8BtfpQEGUfDomhbym1nFirK9j8rQ', NULL, NULL, '2021-09-02 19:29:02', '2022-01-28 11:11:29'),
(49, 'Juliet padaong', 'padaong.juliet26@gmail.com', NULL, '2021-09-03 17:34:06', '$2y$10$Ghm7gSEOZx2K/9UDn3vTMOqm6Sow.VdPTwMFq9.vKdFsHgHtASgVy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phillipines', '09065545224', 'light', NULL, NULL, NULL, NULL, '1EWu6Xxrm7fNHpVhjbHAwN5VnjzhEHYKrU', NULL, NULL, NULL, NULL, NULL, NULL, 'qz2yztm9txp9z9eglkyfn2m6y8gr7g6yfuj5y5w6a2', NULL, NULL, 6800, 0, 3700, NULL, 2000, 1000, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/49', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'on', NULL, 'B4BSZcebYh8agaWMPblCSWji5im1oeDET6EB8eTvM7PjHDyNlHo7NC08BQBU', NULL, NULL, '2021-09-03 17:33:34', '2022-01-28 11:11:22'),
(56, 'Jason Ong', 'jason_ong168@yahoo.com', NULL, '2021-09-22 13:57:06', '$2y$10$KrW5t0jNvNWAsBrzOA8jieYGIBcETA4g/I2ltG0dtTlofot1iDseS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phillipines', '09176362583', 'dark', NULL, NULL, NULL, NULL, '1KgDznme8FHML28JQZBHbEb6mdvx8KqhCq', NULL, NULL, NULL, NULL, NULL, NULL, '1KgDznme8FHML28JQZBHbEb6mdvx8KqhCq', '2', '11', 6485, 0, 5205, NULL, 1000, 100, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/56', NULL, NULL, NULL, '2021-12-20 01:54:22', NULL, NULL, 'active', 'on', NULL, 'c8A11ttvezumC8pzzefubySyvAdygC43q8zThH36tvQ6J2W7WpaHw95Vf69M', NULL, NULL, '2021-09-22 13:54:00', '2022-01-28 11:11:11'),
(58, 'Catherine Torralba', 'cathywee0878@gmail.com', NULL, '2021-09-26 15:24:41', '$2y$10$yemSBAAIT01bDOY14If.5e/oLmqD4bnvIFEH22dJuo65gmNAZrV8q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phillipines', '+639303688567', 'light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4500, 0, 2300, NULL, 2000, 0, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/58', NULL, NULL, NULL, NULL, NULL, NULL, 'blocked', 'on', NULL, '6oFVGvKoNM1TAnIhNDf4A9u7GyBwZ4UBWFBkAjt2aS2ZbBJadRchIkAWmA7A', NULL, NULL, '2021-09-26 15:21:40', '2021-10-13 03:50:43'),
(82, 'Arlene N. Hemongala', 'arlene.natividad024@gmail.com', NULL, NULL, '$2y$10$JWytkowOHVWiWmwIox2SbOUFoOGoOudPF6d4x7YW0UuQMCOFz0ft2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phillipines', '09650794783', 'light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1367, 0, 0, NULL, 0, 100, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/82', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'on', NULL, NULL, NULL, NULL, '2021-11-06 03:07:48', '2022-02-18 14:36:25'),
(83, 'Maila Sebrano', 'maynueva53@gmail.com', NULL, NULL, '$2y$10$MavILimGE.ks8uoSFiC7Z.RLx94V.AASG64/aHqA84WosT2Y0rWg6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phillipines', '09979375864', 'light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800, 0, 0, NULL, 700, 100, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/83', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'on', NULL, '8yNJEAaO4PPH1zcRG0c3M31qWRwnLCURwxCpfjLUY5dkzdDIkw8wYhwgvnCO', NULL, NULL, '2021-11-09 05:45:15', '2021-11-11 09:19:37'),
(85, 'Tita Abdona Vilar', 'vilartita09@gmail.com', NULL, NULL, '$2y$10$.fEPIvrtRd/Oj3kt1Bwaz.2cKjqeH4dG8blq7kpihNGcaW/p6U0tO', NULL, NULL, '1962-03-24', NULL, NULL, NULL, 'Block C,Lot 16, Progressive Village 4, Brgy. Molino 2, Bacoor City, CAVITE', 'Phillipines', '09310268577', 'light', NULL, NULL, NULL, NULL, '1KcrkJCR9Zne9KvmiSP7G1q2nP6zDEm5dL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5300, 0, 4100, NULL, 1000, 100, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/85', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'on', NULL, 'grZXy5mxMWO69t2MbbTCSCtyFfQHQnUgoXjYpZyJTmRzuQOj6MXnGCBLw4ox', NULL, NULL, '2021-11-17 16:20:36', '2021-12-06 04:43:13'),
(98, 'Cecilia Lagman', 'cecillelagman97@gmail.com', NULL, NULL, '$2y$10$jboUv/PASW.1ft/aQVSPi.b9GREznmRcoJpbz.1dTbFiH1Q3.rK9u', NULL, NULL, '1971-09-22', NULL, NULL, NULL, 'Sapid,Mankayan,Benguet 2608 Philippines', NULL, '+6309638891730', 'light', NULL, NULL, NULL, NULL, '1Ecm8Rg2FWb1HRETNhdytwWMr5KtdoJsyx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 0, 4500, NULL, 4500, 0, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/98', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'on', NULL, '8SegwXZFb97gaA9nzJ08gfRt4giHic2TnZQWQ2K6P6M3A4q7CzfPcX8uZc13', NULL, NULL, '2022-01-13 04:55:12', '2022-02-14 13:25:03'),
(103, 'Perla Realon', 'perlarealon@gmail.com', NULL, NULL, '$2y$10$Bb.NKwoRe6HUeFVyLf3lBOArWgxpyetnvJPVMhBngFErCJHyd9sjC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phillipines', '09260719952', 'light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5600, 0, 4300, NULL, 1000, 100, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/103', NULL, NULL, NULL, NULL, NULL, NULL, 'blocked', 'on', NULL, 'V9Lenme3njEKz4uXMrTjznSIb6IUjNOJ31TnAAydZfgesxgmhowMjDJcuvKX', NULL, NULL, '2022-01-27 06:19:27', '2022-01-28 16:30:40'),
(110, 'Evelyn E. Calagos', 'evelyn.calagos@deped.gov.ph', NULL, NULL, '$2y$10$LfT8xhapFkE3FIOJ6dcG/uEiQfIFZ3y0OdiVdAplfjnfmrulmiYP2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phillipines', '09956631565', 'light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/110', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'on', NULL, NULL, NULL, NULL, '2022-02-12 00:02:07', '2022-02-24 13:55:13'),
(117, 'Magdalena gamboa', 'markjohndomingono15@gmail.com', NULL, NULL, '$2y$10$sy/TIvEehGQH.ue97jIAVundZT3fXohqyLa8HrVIwp/MYNX95uKXu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phillipines', '+639487386989', 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4680, 0, 2400, NULL, 2000, 100, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/117', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'on', NULL, '7Ts18y2aicnaEN0jbfET9K2tYGRrPcwgH9UP9bPCbM8PKoi02OJyReSmJgKk', NULL, NULL, '2022-03-09 17:12:08', '2022-03-10 06:04:08'),
(118, 'Salve Manla', 'salvemanla72@gmail.com', NULL, NULL, '$2y$10$f.JsFvH9mOZFbSwngM0uce0CvtikIb9hK0n45yy50TxhFV29Jid12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Phillipines', '+639165918385', 'light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4660, 0, 2900, NULL, 1500, 100, '0', '0', 'received', NULL, 0, NULL, 'securetradefx.com/ref/118', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'on', NULL, NULL, NULL, NULL, '2022-03-10 08:01:37', '2022-03-10 08:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan` int(11) DEFAULT NULL,
  `mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinterval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shares` int(255) DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inv_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_plans`
--

INSERT INTO `user_plans` (`id`, `plan`, `mode`, `source`, `tinterval`, `user`, `amount`, `shares`, `active`, `inv_duration`, `expire_date`, `activated_at`, `last_growth`, `created_at`, `updated_at`) VALUES
(11, 2, NULL, NULL, NULL, 56, '100', NULL, 'yes', '96 hours', NULL, '2021-12-20 01:54:22', '2021-12-20 01:54:22', '2021-12-20 06:54:22', '2021-12-20 06:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `wdmethods`
--

CREATE TABLE `wdmethods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_ref_bonus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges_fixed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wdmethods`
--

INSERT INTO `wdmethods` (`id`, `name`, `minimum`, `min_ref_bonus`, `maximum`, `charges_fixed`, `charges_percentage`, `duration`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin', '10', '13', '10000', '0', '2', 'Instant', 'withdrawal', 'enabled', '2021-03-11 11:53:32', '2021-06-03 09:59:10'),
(2, 'Ethereum', '10', NULL, '2100', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-03-22 10:36:03', '2021-03-22 10:36:03'),
(3, 'Litecoin', '100', NULL, '10000', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-03-22 10:36:33', '2021-03-22 10:36:33'),
(6, 'Doge', '10', NULL, '10000', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-08-02 08:51:34', '2021-08-02 08:51:34'),
(7, 'BNB', '10', NULL, '10000', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-08-02 08:52:04', '2021-08-02 08:52:04'),
(8, 'Tron', '10', NULL, '10000', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-08-02 08:52:30', '2021-08-02 08:52:30'),
(9, 'USDT', '10', NULL, '10000', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-08-02 08:52:50', '2021-08-02 08:52:50'),
(10, 'BITCOIN CASH', '10', NULL, '10000', '0', '0', 'Instant', 'withdrawal', 'enabled', '2021-08-02 08:53:20', '2021-08-02 08:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columns` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_deduct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frombal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_transactions`
--
ALTER TABLE `cp_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
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
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt4_details`
--
ALTER TABLE `mt4_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonies`
--
ALTER TABLE `testimonies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp__transactions`
--
ALTER TABLE `tp__transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upgrades`
--
ALTER TABLE `upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogs`
--
ALTER TABLE `userlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wdmethods`
--
ALTER TABLE `wdmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cp_transactions`
--
ALTER TABLE `cp_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mt4_details`
--
ALTER TABLE `mt4_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonies`
--
ALTER TABLE `testimonies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tp__transactions`
--
ALTER TABLE `tp__transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `upgrades`
--
ALTER TABLE `upgrades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlogs`
--
ALTER TABLE `userlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wdmethods`
--
ALTER TABLE `wdmethods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
