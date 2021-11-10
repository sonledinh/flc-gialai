-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2021 lúc 12:03 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gialai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(9, 'action_scheduler/migration_hook', 'complete', '2021-11-09 04:44:30', '2021-11-09 04:44:30', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636433070;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636433070;}', 1, 1, '2021-11-09 04:44:30', '2021-11-09 04:44:30', 0, NULL),
(10, 'wp_mail_smtp_summary_report_email', 'pending', '2021-11-15 14:00:00', '2021-11-15 14:00:00', '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1636984800;s:18:\"\0*\0first_timestamp\";i:1636984800;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1636984800;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(11, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[2]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-11-09 04:51:38', '2021-11-09 04:51:38', 0, NULL),
(12, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[3]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2021-11-10 07:43:26', '2021-11-10 07:43:26', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 9, 'action created', '2021-11-09 04:43:30', '2021-11-09 04:43:30'),
(2, 9, 'action started via WP Cron', '2021-11-09 04:44:30', '2021-11-09 04:44:30'),
(3, 9, 'action complete via WP Cron', '2021-11-09 04:44:30', '2021-11-09 04:44:30'),
(4, 10, 'action created', '2021-11-09 04:45:13', '2021-11-09 04:45:13'),
(5, 11, 'action created', '2021-11-09 04:49:33', '2021-11-09 04:49:33'),
(6, 11, 'action started via WP Cron', '2021-11-09 04:51:37', '2021-11-09 04:51:37'),
(7, 11, 'action complete via WP Cron', '2021-11-09 04:51:38', '2021-11-09 04:51:38'),
(8, 12, 'action created', '2021-11-10 07:34:48', '2021-11-10 07:34:48'),
(9, 12, 'action started via WP Cron', '2021-11-10 07:43:26', '2021-11-10 07:43:26'),
(10, 12, 'action complete via WP Cron', '2021-11-10 07:43:26', '2021-11-10 07:43:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-11-09 04:34:37', '2021-11-09 04:34:37', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/flc-gialai', 'yes'),
(2, 'home', 'http://localhost/flc-gialai', 'yes'),
(3, 'blogname', 'flcgialai.com.vn/', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ledinhson209@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:4;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'flc_gialai', 'yes'),
(41, 'stylesheet', 'flc_gialai', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1651984476', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'vi', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:8:{i:1636542209;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1636544078;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1636562078;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1636605278;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636605330;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636605332;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637123678;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1636432573;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Xác thực SSL không thành công.\";}}', 'yes'),
(134, '_site_transient_timeout_browser_f8256d37159e3faf28ae61a6406601c3', '1637037331', 'no'),
(135, '_site_transient_browser_f8256d37159e3faf28ae61a6406601c3', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"95.0.4638.69\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(136, '_site_transient_timeout_php_check_f03419f679b2e071a92e69acf99160bf', '1637037331', 'no'),
(137, '_site_transient_php_check_f03419f679b2e071a92e69acf99160bf', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(154, 'current_theme', 'flc_gialai', 'yes'),
(155, 'theme_mods_flc_gialai', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'acf_version', '5.9.3', 'yes'),
(168, '_transient_timeout_acf_plugin_updates', '1636605650', 'no'),
(169, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";}}', 'no'),
(172, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1636432941;s:7:\"version\";s:5:\"5.5.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(175, 'action_scheduler_hybrid_store_demarkation', '8', 'yes'),
(176, 'schema-ActionScheduler_StoreSchema', '4.0.1636433009', 'yes'),
(177, 'schema-ActionScheduler_LoggerSchema', '2.0.1636433009', 'yes'),
(178, 'wp_mail_smtp_initial_version', '3.1.0', 'no'),
(179, 'wp_mail_smtp_version', '3.1.0', 'no'),
(180, 'wp_mail_smtp', 'a:3:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:22:\"ledinhson209@gmail.com\";s:9:\"from_name\";s:17:\"flcgialai.com.vn/\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:2:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}}', 'no'),
(181, 'wp_mail_smtp_activated_time', '1636433009', 'no'),
(182, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1636433009;}', 'yes'),
(185, 'action_scheduler_lock_async-request-runner', '1636542241', 'yes'),
(189, 'wp_mail_smtp_migration_version', '4', 'yes'),
(190, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(191, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(192, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1636433019;s:9:\"dismissed\";b:0;}', 'yes'),
(195, 'cfdb7_view_install_date', '2021-11-09 4:44:11', 'yes'),
(197, 'action_scheduler_migration_status', 'complete', 'yes'),
(204, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1636530206;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(340, 'category_children', 'a:0:{}', 'yes'),
(435, '_site_transient_timeout_theme_roots', '1636531493', 'no'),
(436, '_site_transient_theme_roots', 'a:1:{s:10:\"flc_gialai\";s:7:\"/themes\";}', 'no'),
(438, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.7.3.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.7.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.3\";s:7:\"version\";s:5:\"5.7.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1636529695;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(439, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636529696;s:7:\"checked\";a:1:{s:10:\"flc_gialai\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(440, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636529697;s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.5.2\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.5.9\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.1.0\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"1.6.2\";s:7:\"updated\";s:19:\"2019-05-02 05:31:57\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.6.2/vi.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.5.2\";s:7:\"updated\";s:19:\"2019-11-12 17:58:46\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.5.2/vi.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"3.1.0\";s:7:\"updated\";s:19:\"2019-11-12 11:21:12\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/wp-mail-smtp/3.1.0/vi.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.5.9\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.1.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2468655\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2468655\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}}', 'no'),
(441, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":7,\"critical\":1}', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 7, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(8, 7, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <ledinhson209@gmail.com>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(9, 7, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <ledinhson209@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(10, 7, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(11, 7, '_additional_settings', NULL),
(12, 7, '_locale', 'vi'),
(13, 2, '_wp_trash_meta_status', 'publish'),
(14, 2, '_wp_trash_meta_time', '1636444155'),
(15, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(16, 3, '_wp_trash_meta_status', 'draft'),
(17, 3, '_wp_trash_meta_time', '1636444158'),
(18, 3, '_wp_desired_post_slug', 'chinh-sach-bao-mat'),
(19, 10, '_edit_last', '1'),
(20, 10, '_edit_lock', '1636539983:1'),
(21, 10, '_wp_page_template', 'template-pages/home.php'),
(22, 12, '_edit_last', '1'),
(23, 12, '_edit_lock', '1636540075:1'),
(24, 40, '_wp_attached_file', '2021/11/bn-1.jpg'),
(25, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1064;s:6:\"height\";i:672;s:4:\"file\";s:16:\"2021/11/bn-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bn-1-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bn-1-1024x647.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:647;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bn-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bn-1-768x485.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:485;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 41, '_wp_attached_file', '2021/11/bn-2.jpg'),
(27, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1931;s:6:\"height\";i:1070;s:4:\"file\";s:16:\"2021/11/bn-2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bn-2-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bn-2-1024x567.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:567;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bn-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bn-2-768x426.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"bn-2-1536x851.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:851;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 42, '_wp_attached_file', '2021/11/bn-3.jpg'),
(29, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1930;s:6:\"height\";i:1323;s:4:\"file\";s:16:\"2021/11/bn-3.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bn-3-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bn-3-1024x702.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bn-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bn-3-768x526.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"bn-3-1536x1053.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1053;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:27:\"Shutterstock / Bo Valentino\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:113:\"pink heather landscape with a blue sky; Shutterstock ID 539696089; purchase_order: -; job: -; client: -; other: -\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:9:\"539696089\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:22:{i:0;s:5:\"bloom\";i:1;s:8:\"blooming\";i:2;s:7:\"blossom\";i:3;s:4:\"blue\";i:4;s:7:\"calluna\";i:5;s:12:\"conservation\";i:6;s:5:\"erica\";i:7;s:6:\"flower\";i:8;s:6:\"forest\";i:9;s:5:\"green\";i:10;s:7:\"heather\";i:11;s:6:\"hiking\";i:12;s:9:\"landscape\";i:13;s:17:\"lueneburger heide\";i:14;s:6:\"nature\";i:15;s:4:\"path\";i:16;s:4:\"pink\";i:17;s:6:\"purple\";i:18;s:3:\"sky\";i:19;s:5:\"trail\";i:20;s:5:\"trees\";i:21;s:6:\"violet\";}}}'),
(30, 43, '_wp_attached_file', '2021/11/t-ab-1.png'),
(31, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:643;s:6:\"height\";i:131;s:4:\"file\";s:18:\"2021/11/t-ab-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"t-ab-1-300x61.png\";s:5:\"width\";i:300;s:6:\"height\";i:61;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"t-ab-1-150x131.png\";s:5:\"width\";i:150;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 44, '_wp_attached_file', '2021/11/ab-1.jpg'),
(33, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1033;s:6:\"height\";i:645;s:4:\"file\";s:16:\"2021/11/ab-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ab-1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"ab-1-1024x639.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:639;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ab-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"ab-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 45, '_wp_attached_file', '2021/11/ab-abs.jpg'),
(35, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2021/11/ab-abs.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"ab-abs-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"ab-abs-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 46, '_wp_attached_file', '2021/11/h-ab.png'),
(37, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:212;s:4:\"file\";s:16:\"2021/11/h-ab.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"h-ab-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"h-ab-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 47, '_wp_attached_file', '2021/11/ab-2.jpg'),
(39, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1022;s:6:\"height\";i:599;s:4:\"file\";s:16:\"2021/11/ab-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ab-2-300x176.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ab-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"ab-2-768x450.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(40, 10, 'slide_banner_0_avar_banner', '40'),
(41, 10, '_slide_banner_0_avar_banner', 'field_618a29941f851'),
(42, 10, 'slide_banner_1_avar_banner', '41'),
(43, 10, '_slide_banner_1_avar_banner', 'field_618a29941f851'),
(44, 10, 'slide_banner_2_avar_banner', '42'),
(45, 10, '_slide_banner_2_avar_banner', 'field_618a29941f851'),
(46, 10, 'slide_banner', '3'),
(47, 10, '_slide_banner', 'field_618a29881f850'),
(48, 10, 'title_box_1', '43'),
(49, 10, '_title_box_1', 'field_618a2a3c1f853'),
(50, 10, 'content_hnay_1_avarta_hnay_1', '44'),
(51, 10, '_content_hnay_1_avarta_hnay_1', 'field_618a2b351f859'),
(52, 10, 'content_hnay_1_content_hnay_1', 'Nhắc đến Tây Nguyên là người ta nhắc đến văn hóa và con nguời Tây nguyên, nơi có một bản sắc riêng, tiếng nói riêng nhưng vẫn mang trong mình hơi thở, tiếng nói chung của thời đại.\r\n\r\nKhi nhắc đến Pleiku, người ta nghĩ ngay tới nương cà phê nặng trĩu hạt, tới hồ tiêu xanh mướt, tới đồi chè ngút tầm mắt ẩn hiện đằng sau là dãy núi trùng điệp.\r\n\r\nFLC Gia Lai Golf Club &amp; Luxury Resort còn được biết đến là một Phố Núi thơ mộng, một bình nguyên trên cao với các hồ nước tự nhiên nằm bên những cánh rừng thông ngút ngàn, đó là những buôn làng truyền thống đầy bản sắc đã tồn tại hàng trăm năm trong lòng đô thị, với các không gian lễ hội, không gian văn hóa cồng chiêng độc đáo đã được thế giới công nhận là di sản của nhân loại.\r\n\r\n<span style=\"color: #e3c959;\">Kế thừa và phát huy những giá trị tốt đẹp,FLC Gia Lai Golf Club &amp; Luxury Resort ngày nay đã trở thành một điểmsáng về kinh tế nổi bật hẳn lên trong khuvực Tây nguyên tựa một ngôi sao sáng rựcrỡ trên bầu trời đêm.</span>'),
(53, 10, '_content_hnay_1_content_hnay_1', 'field_618a2b431f85a'),
(54, 10, 'content_hnay_1', ''),
(55, 10, '_content_hnay_1', 'field_618a2b281f858'),
(56, 10, 'content_hnay_2_avarta_hnay_2', '45'),
(57, 10, '_content_hnay_2_avarta_hnay_2', 'field_618a2b811f85c'),
(58, 10, 'content_hnay_2', ''),
(59, 10, '_content_hnay_2', 'field_618a2b691f85b'),
(60, 10, 'content_hnay_3_avarta_hnay_3', '47'),
(61, 10, '_content_hnay_3_avarta_hnay_3', 'field_618a2bd11f85e'),
(62, 10, 'content_hnay_3_title_hnay_3', '46'),
(63, 10, '_content_hnay_3_title_hnay_3', 'field_618a2be21f85f'),
(64, 10, 'content_hnay_3_content_hnay_3', 'Mang tâm huyết của chủ đầu tư, mang trong mình những giá trị tinh hoa văn hóa Tây Nguyên, kết hợp với bàn tay tài hoa của người thiết kế kiến trúc, kiến tạo nên một nơi sống và hưởng thụ độc đáo, mang nhiều sắc thái mới không thể trộn lẫn, trở thành một trong những biểu tượng tự hào của Tây Nguyên.'),
(65, 10, '_content_hnay_3_content_hnay_3', 'field_618a2bf81f860'),
(66, 10, 'content_hnay_3', ''),
(67, 10, '_content_hnay_3', 'field_618a2baf1f85d'),
(68, 10, 'dream_1_avar_dream_1', '50'),
(69, 10, '_dream_1_avar_dream_1', 'field_618a2c791f863'),
(70, 10, 'dream_1_content_dream_1', 'FLC Gia Lai Golf Club & Luxury Resort là nhà phát triển BĐS hàng đầu Việt Nam vốn được mệnh danh là “người khai phá những miền đất mới”, luôn tìm kiếm và phát triển những vùng đất đang trên đà phát triển, kiến tạo nên những dự án tầm cỡ, thay đổi bộ mặt, nâng tầm giá trị cho toàn bộ khu vực và FLC Gia Lai Golf Club & Luxury Resort là tỉnh đã được lựa chọn là một trong những dự án được “điểm mặt đặt tên” là một dự án có quy mô và tầm cỡ lớn nhất của khu vực Tây Nguyên. Là nơi mà mọi người dân nơi đây đều khát khao được sở hữu.'),
(71, 10, '_dream_1_content_dream_1', 'field_618a2c851f864'),
(72, 10, 'dream_1', ''),
(73, 10, '_dream_1', 'field_618a2c4d1f862'),
(74, 10, 'dream_2_avar_dream_2', '51'),
(75, 10, '_dream_2_avar_dream_2', 'field_618a2cb31f866'),
(76, 10, 'dream_2_content_dream_2', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(77, 10, '_dream_2_content_dream_2', 'field_618a2cc31f867'),
(78, 10, 'dream_2', ''),
(79, 10, '_dream_2', 'field_618a2c9d1f865'),
(80, 10, 'dream_3_avr_dream_3', '52'),
(81, 10, '_dream_3_avr_dream_3', 'field_618a2ed01f869'),
(82, 10, 'dream_3_content_dream_3', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(83, 10, '_dream_3_content_dream_3', 'field_618a2ee51f86a'),
(84, 10, 'dream_3', ''),
(85, 10, '_dream_3', 'field_618a2eac1f868'),
(86, 10, 'dream_4_avar_dream_4', '53'),
(87, 10, '_dream_4_avar_dream_4', 'field_618a2f321f86c'),
(88, 10, 'dream_4_content_dream_4', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(89, 10, '_dream_4_content_dream_4', 'field_618a2f641f86d'),
(90, 10, 'dream_4', ''),
(91, 10, '_dream_4', 'field_618a2f211f86b'),
(92, 48, 'slide_banner_0_avar_banner', '40'),
(93, 48, '_slide_banner_0_avar_banner', 'field_618a29941f851'),
(94, 48, 'slide_banner_1_avar_banner', '41'),
(95, 48, '_slide_banner_1_avar_banner', 'field_618a29941f851'),
(96, 48, 'slide_banner_2_avar_banner', '42'),
(97, 48, '_slide_banner_2_avar_banner', 'field_618a29941f851'),
(98, 48, 'slide_banner', '3'),
(99, 48, '_slide_banner', 'field_618a29881f850'),
(100, 48, 'title_box_1', '43'),
(101, 48, '_title_box_1', 'field_618a2a3c1f853'),
(102, 48, 'content_hnay_1_avarta_hnay_1', '44'),
(103, 48, '_content_hnay_1_avarta_hnay_1', 'field_618a2b351f859'),
(104, 48, 'content_hnay_1_content_hnay_1', 'Nhắc đến Tây Nguyên là người ta nhắc đến văn hóa và con nguời Tây nguyên, nơi có một bản sắc riêng, tiếng nói riêng nhưng vẫn mang trong mình hơi thở, tiếng nói chung của thời đại.\r\n\r\nKhi nhắc đến Pleiku, người ta nghĩ ngay tới nương cà phê nặng trĩu hạt, tới hồ tiêu xanh mướt, tới đồi chè ngút tầm mắt ẩn hiện đằng sau là dãy núi trùng điệp.\r\n\r\nFLC Gia Lai Golf Club &amp; Luxury Resort còn được biết đến là một Phố Núi thơ mộng, một bình nguyên trên cao với các hồ nước tự nhiên nằm bên những cánh rừng thông ngút ngàn, đó là những buôn làng truyền thống đầy bản sắc đã tồn tại hàng trăm năm trong lòng đô thị, với các không gian lễ hội, không gian văn hóa cồng chiêng độc đáo đã được thế giới công nhận là di sản của nhân loại.\r\n\r\n<span style=\"color: #e3c959;\">Kế thừa và phát huy những giá trị tốt đẹp,FLC Gia Lai Golf Club &amp; Luxury Resort ngày nay đã trở thành một điểmsáng về kinh tế nổi bật hẳn lên trong khuvực Tây nguyên tựa một ngôi sao sáng rựcrỡ trên bầu trời đêm.</span>'),
(105, 48, '_content_hnay_1_content_hnay_1', 'field_618a2b431f85a'),
(106, 48, 'content_hnay_1', ''),
(107, 48, '_content_hnay_1', 'field_618a2b281f858'),
(108, 48, 'content_hnay_2_avarta_hnay_2', '45'),
(109, 48, '_content_hnay_2_avarta_hnay_2', 'field_618a2b811f85c'),
(110, 48, 'content_hnay_2', ''),
(111, 48, '_content_hnay_2', 'field_618a2b691f85b'),
(112, 48, 'content_hnay_3_avarta_hnay_3', '47'),
(113, 48, '_content_hnay_3_avarta_hnay_3', 'field_618a2bd11f85e'),
(114, 48, 'content_hnay_3_title_hnay_3', '46'),
(115, 48, '_content_hnay_3_title_hnay_3', 'field_618a2be21f85f'),
(116, 48, 'content_hnay_3_content_hnay_3', 'Mang tâm huyết của chủ đầu tư, mang trong mình những giá trị tinh hoa văn hóa Tây Nguyên, kết hợp với bàn tay tài hoa của người thiết kế kiến trúc, kiến tạo nên một nơi sống và hưởng thụ độc đáo, mang nhiều sắc thái mới không thể trộn lẫn, trở thành một trong những biểu tượng tự hào của Tây Nguyên.'),
(117, 48, '_content_hnay_3_content_hnay_3', 'field_618a2bf81f860'),
(118, 48, 'content_hnay_3', ''),
(119, 48, '_content_hnay_3', 'field_618a2baf1f85d'),
(120, 48, 'dream_1_avar_dream_1', ''),
(121, 48, '_dream_1_avar_dream_1', 'field_618a2c791f863'),
(122, 48, 'dream_1_content_dream_1', ''),
(123, 48, '_dream_1_content_dream_1', 'field_618a2c851f864'),
(124, 48, 'dream_1', ''),
(125, 48, '_dream_1', 'field_618a2c4d1f862'),
(126, 48, 'dream_2_avar_dream_2', ''),
(127, 48, '_dream_2_avar_dream_2', 'field_618a2cb31f866'),
(128, 48, 'dream_2_content_dream_2', ''),
(129, 48, '_dream_2_content_dream_2', 'field_618a2cc31f867'),
(130, 48, 'dream_2', ''),
(131, 48, '_dream_2', 'field_618a2c9d1f865'),
(132, 48, 'dream_3_avr_dream_3', ''),
(133, 48, '_dream_3_avr_dream_3', 'field_618a2ed01f869'),
(134, 48, 'dream_3_content_dream_3', ''),
(135, 48, '_dream_3_content_dream_3', 'field_618a2ee51f86a'),
(136, 48, 'dream_3', ''),
(137, 48, '_dream_3', 'field_618a2eac1f868'),
(138, 48, 'dream_4_avar_dream_4', ''),
(139, 48, '_dream_4_avar_dream_4', 'field_618a2f321f86c'),
(140, 48, 'dream_4_content_dream_4', ''),
(141, 48, '_dream_4_content_dream_4', 'field_618a2f641f86d'),
(142, 48, 'dream_4', ''),
(143, 48, '_dream_4', 'field_618a2f211f86b'),
(144, 49, '_wp_attached_file', '2021/11/title-dream.png'),
(145, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:551;s:6:\"height\";i:176;s:4:\"file\";s:23:\"2021/11/title-dream.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"title-dream-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"title-dream-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 50, '_wp_attached_file', '2021/11/dream-1.jpg'),
(147, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:866;s:6:\"height\";i:487;s:4:\"file\";s:19:\"2021/11/dream-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"dream-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"dream-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"dream-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(148, 51, '_wp_attached_file', '2021/11/dream-2.jpg'),
(149, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:535;s:6:\"height\";i:353;s:4:\"file\";s:19:\"2021/11/dream-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"dream-2-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"dream-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 52, '_wp_attached_file', '2021/11/dream-3-scaled.jpg'),
(151, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1421;s:4:\"file\";s:26:\"2021/11/dream-3-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"dream-3-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"dream-3-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"dream-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"dream-3-768x426.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"dream-3-1536x853.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"dream-3-2048x1137.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1137;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"dream-3.jpg\";}'),
(152, 53, '_wp_attached_file', '2021/11/dream-4.jpg'),
(153, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:535;s:6:\"height\";i:353;s:4:\"file\";s:19:\"2021/11/dream-4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"dream-4-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"dream-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 54, 'slide_banner_0_avar_banner', '40'),
(155, 54, '_slide_banner_0_avar_banner', 'field_618a29941f851'),
(156, 54, 'slide_banner_1_avar_banner', '41'),
(157, 54, '_slide_banner_1_avar_banner', 'field_618a29941f851'),
(158, 54, 'slide_banner_2_avar_banner', '42'),
(159, 54, '_slide_banner_2_avar_banner', 'field_618a29941f851'),
(160, 54, 'slide_banner', '3'),
(161, 54, '_slide_banner', 'field_618a29881f850'),
(162, 54, 'title_box_1', '43'),
(163, 54, '_title_box_1', 'field_618a2a3c1f853'),
(164, 54, 'content_hnay_1_avarta_hnay_1', '44'),
(165, 54, '_content_hnay_1_avarta_hnay_1', 'field_618a2b351f859'),
(166, 54, 'content_hnay_1_content_hnay_1', 'Nhắc đến Tây Nguyên là người ta nhắc đến văn hóa và con nguời Tây nguyên, nơi có một bản sắc riêng, tiếng nói riêng nhưng vẫn mang trong mình hơi thở, tiếng nói chung của thời đại.\r\n\r\nKhi nhắc đến Pleiku, người ta nghĩ ngay tới nương cà phê nặng trĩu hạt, tới hồ tiêu xanh mướt, tới đồi chè ngút tầm mắt ẩn hiện đằng sau là dãy núi trùng điệp.\r\n\r\nFLC Gia Lai Golf Club &amp; Luxury Resort còn được biết đến là một Phố Núi thơ mộng, một bình nguyên trên cao với các hồ nước tự nhiên nằm bên những cánh rừng thông ngút ngàn, đó là những buôn làng truyền thống đầy bản sắc đã tồn tại hàng trăm năm trong lòng đô thị, với các không gian lễ hội, không gian văn hóa cồng chiêng độc đáo đã được thế giới công nhận là di sản của nhân loại.\r\n\r\n<span style=\"color: #e3c959;\">Kế thừa và phát huy những giá trị tốt đẹp,FLC Gia Lai Golf Club &amp; Luxury Resort ngày nay đã trở thành một điểmsáng về kinh tế nổi bật hẳn lên trong khuvực Tây nguyên tựa một ngôi sao sáng rựcrỡ trên bầu trời đêm.</span>'),
(167, 54, '_content_hnay_1_content_hnay_1', 'field_618a2b431f85a'),
(168, 54, 'content_hnay_1', ''),
(169, 54, '_content_hnay_1', 'field_618a2b281f858'),
(170, 54, 'content_hnay_2_avarta_hnay_2', '45'),
(171, 54, '_content_hnay_2_avarta_hnay_2', 'field_618a2b811f85c'),
(172, 54, 'content_hnay_2', ''),
(173, 54, '_content_hnay_2', 'field_618a2b691f85b'),
(174, 54, 'content_hnay_3_avarta_hnay_3', '47'),
(175, 54, '_content_hnay_3_avarta_hnay_3', 'field_618a2bd11f85e'),
(176, 54, 'content_hnay_3_title_hnay_3', '46'),
(177, 54, '_content_hnay_3_title_hnay_3', 'field_618a2be21f85f'),
(178, 54, 'content_hnay_3_content_hnay_3', 'Mang tâm huyết của chủ đầu tư, mang trong mình những giá trị tinh hoa văn hóa Tây Nguyên, kết hợp với bàn tay tài hoa của người thiết kế kiến trúc, kiến tạo nên một nơi sống và hưởng thụ độc đáo, mang nhiều sắc thái mới không thể trộn lẫn, trở thành một trong những biểu tượng tự hào của Tây Nguyên.'),
(179, 54, '_content_hnay_3_content_hnay_3', 'field_618a2bf81f860'),
(180, 54, 'content_hnay_3', ''),
(181, 54, '_content_hnay_3', 'field_618a2baf1f85d'),
(182, 54, 'dream_1_avar_dream_1', '50'),
(183, 54, '_dream_1_avar_dream_1', 'field_618a2c791f863'),
(184, 54, 'dream_1_content_dream_1', 'FLC Gia Lai Golf Club & Luxury Resort là nhà phát triển BĐS hàng đầu Việt Nam vốn được mệnh danh là “người khai phá những miền đất mới”, luôn tìm kiếm và phát triển những vùng đất đang trên đà phát triển, kiến tạo nên những dự án tầm cỡ, thay đổi bộ mặt, nâng tầm giá trị cho toàn bộ khu vực và FLC Gia Lai Golf Club & Luxury Resort là tỉnh đã được lựa chọn là một trong những dự án được “điểm mặt đặt tên” là một dự án có quy mô và tầm cỡ lớn nhất của khu vực Tây Nguyên. Là nơi mà mọi người dân nơi đây đều khát khao được sở hữu.'),
(185, 54, '_dream_1_content_dream_1', 'field_618a2c851f864'),
(186, 54, 'dream_1', ''),
(187, 54, '_dream_1', 'field_618a2c4d1f862'),
(188, 54, 'dream_2_avar_dream_2', '51'),
(189, 54, '_dream_2_avar_dream_2', 'field_618a2cb31f866'),
(190, 54, 'dream_2_content_dream_2', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(191, 54, '_dream_2_content_dream_2', 'field_618a2cc31f867'),
(192, 54, 'dream_2', ''),
(193, 54, '_dream_2', 'field_618a2c9d1f865'),
(194, 54, 'dream_3_avr_dream_3', '52'),
(195, 54, '_dream_3_avr_dream_3', 'field_618a2ed01f869'),
(196, 54, 'dream_3_content_dream_3', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(197, 54, '_dream_3_content_dream_3', 'field_618a2ee51f86a'),
(198, 54, 'dream_3', ''),
(199, 54, '_dream_3', 'field_618a2eac1f868'),
(200, 54, 'dream_4_avar_dream_4', '53'),
(201, 54, '_dream_4_avar_dream_4', 'field_618a2f321f86c'),
(202, 54, 'dream_4_content_dream_4', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(203, 54, '_dream_4_content_dream_4', 'field_618a2f641f86d'),
(204, 54, 'dream_4', ''),
(205, 54, '_dream_4', 'field_618a2f211f86b'),
(206, 55, '_edit_last', '1'),
(207, 55, '_edit_lock', '1636453373:1'),
(208, 56, '_wp_attached_file', '2021/11/new-1.png'),
(209, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1640;s:6:\"height\";i:924;s:4:\"file\";s:17:\"2021/11/new-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"new-1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"new-1-1024x577.png\";s:5:\"width\";i:1024;s:6:\"height\";i:577;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"new-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"new-1-768x433.png\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"new-1-1536x865.png\";s:5:\"width\";i:1536;s:6:\"height\";i:865;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 57, '_wp_attached_file', '2021/11/new-2.png'),
(211, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1640;s:6:\"height\";i:924;s:4:\"file\";s:17:\"2021/11/new-2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"new-2-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"new-2-1024x577.png\";s:5:\"width\";i:1024;s:6:\"height\";i:577;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"new-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"new-2-768x433.png\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"new-2-1536x865.png\";s:5:\"width\";i:1536;s:6:\"height\";i:865;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 58, '_wp_attached_file', '2021/11/new-3.png'),
(213, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2021/11/new-3.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"new-3-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"new-3-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"new-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"new-3-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"new-3-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 59, '_wp_attached_file', '2021/11/new-4.png'),
(215, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2021/11/new-4.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"new-4-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"new-4-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"new-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"new-4-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"new-4-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 60, '_wp_attached_file', '2021/11/new-5.png'),
(217, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2021/11/new-5.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"new-5-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"new-5-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"new-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"new-5-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"new-5-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 61, '_wp_attached_file', '2021/11/new-6.png'),
(219, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2021/11/new-6.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"new-6-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"new-6-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"new-6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"new-6-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"new-6-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 62, '_wp_attached_file', '2021/11/new-7.png'),
(221, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2021/11/new-7.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"new-7-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"new-7-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"new-7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"new-7-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"new-7-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 63, '_wp_attached_file', '2021/11/new-8.png'),
(223, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2021/11/new-8.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"new-8-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"new-8-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"new-8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"new-8-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"new-8-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 64, '_wp_attached_file', '2021/11/new-9.png'),
(225, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2021/11/new-9.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"new-9-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"new-9-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"new-9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"new-9-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"new-9-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 55, '_thumbnail_id', '64'),
(229, 66, '_edit_last', '1'),
(230, 66, '_edit_lock', '1636453407:1'),
(231, 66, '_thumbnail_id', '56'),
(236, 68, '_edit_last', '1'),
(237, 68, '_edit_lock', '1636453447:1'),
(238, 68, '_thumbnail_id', '58'),
(241, 70, '_edit_last', '1'),
(242, 70, '_edit_lock', '1636453472:1'),
(243, 70, '_thumbnail_id', '59'),
(246, 72, '_edit_last', '1'),
(247, 72, '_edit_lock', '1636453507:1'),
(248, 72, '_thumbnail_id', '60'),
(251, 74, '_edit_last', '1'),
(252, 74, '_thumbnail_id', '61'),
(255, 74, '_edit_lock', '1636453542:1'),
(258, 76, '_edit_last', '1'),
(259, 76, '_thumbnail_id', '62'),
(262, 76, '_edit_lock', '1636453569:1'),
(263, 78, '_edit_last', '1'),
(264, 78, '_edit_lock', '1636453598:1'),
(265, 78, '_thumbnail_id', '63'),
(268, 80, '_edit_last', '1'),
(269, 80, '_thumbnail_id', '64'),
(272, 80, '_edit_lock', '1636453620:1'),
(273, 1, '_wp_trash_meta_status', 'publish'),
(274, 1, '_wp_trash_meta_time', '1636453771'),
(275, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(276, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(277, 91, '_wp_attached_file', '2021/11/beach.jpg'),
(278, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:182;s:6:\"height\";i:126;s:4:\"file\";s:17:\"2021/11/beach.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"beach-150x126.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 92, '_wp_attached_file', '2021/11/beachbar.jpg'),
(280, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:182;s:6:\"height\";i:127;s:4:\"file\";s:20:\"2021/11/beachbar.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beachbar-150x127.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 93, '_wp_attached_file', '2021/11/sangolf.jpg'),
(282, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:182;s:6:\"height\";i:126;s:4:\"file\";s:19:\"2021/11/sangolf.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sangolf-150x126.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 10, 'title_numb', '50+'),
(284, 10, '_title_numb', 'field_618b8a28b176f'),
(285, 10, 'content_kv_0_avar_kv_item', '91'),
(286, 10, '_content_kv_0_avar_kv_item', 'field_618b8a94b1771'),
(287, 10, 'content_kv_0_title_kv_item', 'Trung tâm thương mại'),
(288, 10, '_content_kv_0_title_kv_item', 'field_618b8b04b1772'),
(289, 10, 'content_kv_0_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(290, 10, '_content_kv_0_sort_kv_item', 'field_618b8b42b1774'),
(291, 10, 'content_kv_1_avar_kv_item', '92'),
(292, 10, '_content_kv_1_avar_kv_item', 'field_618b8a94b1771'),
(293, 10, 'content_kv_1_title_kv_item', 'Trung tâm thương mại'),
(294, 10, '_content_kv_1_title_kv_item', 'field_618b8b04b1772'),
(295, 10, 'content_kv_1_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(296, 10, '_content_kv_1_sort_kv_item', 'field_618b8b42b1774'),
(297, 10, 'content_kv_2_avar_kv_item', '93'),
(298, 10, '_content_kv_2_avar_kv_item', 'field_618b8a94b1771'),
(299, 10, 'content_kv_2_title_kv_item', 'Trung tâm thương mại'),
(300, 10, '_content_kv_2_title_kv_item', 'field_618b8b04b1772'),
(301, 10, 'content_kv_2_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(302, 10, '_content_kv_2_sort_kv_item', 'field_618b8b42b1774'),
(303, 10, 'content_kv_3_avar_kv_item', '92'),
(304, 10, '_content_kv_3_avar_kv_item', 'field_618b8a94b1771'),
(305, 10, 'content_kv_3_title_kv_item', 'Trung tâm thương mại'),
(306, 10, '_content_kv_3_title_kv_item', 'field_618b8b04b1772'),
(307, 10, 'content_kv_3_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(308, 10, '_content_kv_3_sort_kv_item', 'field_618b8b42b1774'),
(309, 10, 'content_kv_4_avar_kv_item', '93'),
(310, 10, '_content_kv_4_avar_kv_item', 'field_618b8a94b1771'),
(311, 10, 'content_kv_4_title_kv_item', 'Trung tâm thương mại'),
(312, 10, '_content_kv_4_title_kv_item', 'field_618b8b04b1772'),
(313, 10, 'content_kv_4_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(314, 10, '_content_kv_4_sort_kv_item', 'field_618b8b42b1774'),
(315, 10, 'content_kv_5_avar_kv_item', '91'),
(316, 10, '_content_kv_5_avar_kv_item', 'field_618b8a94b1771'),
(317, 10, 'content_kv_5_title_kv_item', 'Trung tâm thương mại'),
(318, 10, '_content_kv_5_title_kv_item', 'field_618b8b04b1772'),
(319, 10, 'content_kv_5_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(320, 10, '_content_kv_5_sort_kv_item', 'field_618b8b42b1774'),
(321, 10, 'content_kv_6_avar_kv_item', '93'),
(322, 10, '_content_kv_6_avar_kv_item', 'field_618b8a94b1771'),
(323, 10, 'content_kv_6_title_kv_item', 'Trung tâm thương mại'),
(324, 10, '_content_kv_6_title_kv_item', 'field_618b8b04b1772'),
(325, 10, 'content_kv_6_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(326, 10, '_content_kv_6_sort_kv_item', 'field_618b8b42b1774'),
(327, 10, 'content_kv_7_avar_kv_item', '92'),
(328, 10, '_content_kv_7_avar_kv_item', 'field_618b8a94b1771'),
(329, 10, 'content_kv_7_title_kv_item', 'Trung tâm thương mại'),
(330, 10, '_content_kv_7_title_kv_item', 'field_618b8b04b1772'),
(331, 10, 'content_kv_7_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(332, 10, '_content_kv_7_sort_kv_item', 'field_618b8b42b1774'),
(333, 10, 'content_kv_8_avar_kv_item', '91'),
(334, 10, '_content_kv_8_avar_kv_item', 'field_618b8a94b1771'),
(335, 10, 'content_kv_8_title_kv_item', 'Trung tâm thương mại'),
(336, 10, '_content_kv_8_title_kv_item', 'field_618b8b04b1772'),
(337, 10, 'content_kv_8_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(338, 10, '_content_kv_8_sort_kv_item', 'field_618b8b42b1774'),
(339, 10, 'content_kv_9_avar_kv_item', '93'),
(340, 10, '_content_kv_9_avar_kv_item', 'field_618b8a94b1771'),
(341, 10, 'content_kv_9_title_kv_item', 'Trung tâm thương mại'),
(342, 10, '_content_kv_9_title_kv_item', 'field_618b8b04b1772'),
(343, 10, 'content_kv_9_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(344, 10, '_content_kv_9_sort_kv_item', 'field_618b8b42b1774'),
(345, 10, 'content_kv_10_avar_kv_item', '92'),
(346, 10, '_content_kv_10_avar_kv_item', 'field_618b8a94b1771'),
(347, 10, 'content_kv_10_title_kv_item', 'Trung tâm thương mại'),
(348, 10, '_content_kv_10_title_kv_item', 'field_618b8b04b1772'),
(349, 10, 'content_kv_10_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(350, 10, '_content_kv_10_sort_kv_item', 'field_618b8b42b1774'),
(351, 10, 'content_kv_11_avar_kv_item', '91'),
(352, 10, '_content_kv_11_avar_kv_item', 'field_618b8a94b1771'),
(353, 10, 'content_kv_11_title_kv_item', 'Trung tâm thương mại'),
(354, 10, '_content_kv_11_title_kv_item', 'field_618b8b04b1772'),
(355, 10, 'content_kv_11_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(356, 10, '_content_kv_11_sort_kv_item', 'field_618b8b42b1774'),
(357, 10, 'content_kv', '12'),
(358, 10, '_content_kv', 'field_618b8a82b1770'),
(359, 94, 'slide_banner_0_avar_banner', '40'),
(360, 94, '_slide_banner_0_avar_banner', 'field_618a29941f851'),
(361, 94, 'slide_banner_1_avar_banner', '41'),
(362, 94, '_slide_banner_1_avar_banner', 'field_618a29941f851'),
(363, 94, 'slide_banner_2_avar_banner', '42'),
(364, 94, '_slide_banner_2_avar_banner', 'field_618a29941f851'),
(365, 94, 'slide_banner', '3'),
(366, 94, '_slide_banner', 'field_618a29881f850'),
(367, 94, 'title_box_1', '43'),
(368, 94, '_title_box_1', 'field_618a2a3c1f853'),
(369, 94, 'content_hnay_1_avarta_hnay_1', '44'),
(370, 94, '_content_hnay_1_avarta_hnay_1', 'field_618a2b351f859'),
(371, 94, 'content_hnay_1_content_hnay_1', 'Nhắc đến Tây Nguyên là người ta nhắc đến văn hóa và con nguời Tây nguyên, nơi có một bản sắc riêng, tiếng nói riêng nhưng vẫn mang trong mình hơi thở, tiếng nói chung của thời đại.\r\n\r\nKhi nhắc đến Pleiku, người ta nghĩ ngay tới nương cà phê nặng trĩu hạt, tới hồ tiêu xanh mướt, tới đồi chè ngút tầm mắt ẩn hiện đằng sau là dãy núi trùng điệp.\r\n\r\nFLC Gia Lai Golf Club &amp; Luxury Resort còn được biết đến là một Phố Núi thơ mộng, một bình nguyên trên cao với các hồ nước tự nhiên nằm bên những cánh rừng thông ngút ngàn, đó là những buôn làng truyền thống đầy bản sắc đã tồn tại hàng trăm năm trong lòng đô thị, với các không gian lễ hội, không gian văn hóa cồng chiêng độc đáo đã được thế giới công nhận là di sản của nhân loại.\r\n\r\n<span style=\"color: #e3c959;\">Kế thừa và phát huy những giá trị tốt đẹp,FLC Gia Lai Golf Club &amp; Luxury Resort ngày nay đã trở thành một điểmsáng về kinh tế nổi bật hẳn lên trong khuvực Tây nguyên tựa một ngôi sao sáng rựcrỡ trên bầu trời đêm.</span>'),
(372, 94, '_content_hnay_1_content_hnay_1', 'field_618a2b431f85a'),
(373, 94, 'content_hnay_1', ''),
(374, 94, '_content_hnay_1', 'field_618a2b281f858'),
(375, 94, 'content_hnay_2_avarta_hnay_2', '45'),
(376, 94, '_content_hnay_2_avarta_hnay_2', 'field_618a2b811f85c'),
(377, 94, 'content_hnay_2', ''),
(378, 94, '_content_hnay_2', 'field_618a2b691f85b'),
(379, 94, 'content_hnay_3_avarta_hnay_3', '47'),
(380, 94, '_content_hnay_3_avarta_hnay_3', 'field_618a2bd11f85e'),
(381, 94, 'content_hnay_3_title_hnay_3', '46'),
(382, 94, '_content_hnay_3_title_hnay_3', 'field_618a2be21f85f'),
(383, 94, 'content_hnay_3_content_hnay_3', 'Mang tâm huyết của chủ đầu tư, mang trong mình những giá trị tinh hoa văn hóa Tây Nguyên, kết hợp với bàn tay tài hoa của người thiết kế kiến trúc, kiến tạo nên một nơi sống và hưởng thụ độc đáo, mang nhiều sắc thái mới không thể trộn lẫn, trở thành một trong những biểu tượng tự hào của Tây Nguyên.'),
(384, 94, '_content_hnay_3_content_hnay_3', 'field_618a2bf81f860'),
(385, 94, 'content_hnay_3', ''),
(386, 94, '_content_hnay_3', 'field_618a2baf1f85d'),
(387, 94, 'dream_1_avar_dream_1', '50'),
(388, 94, '_dream_1_avar_dream_1', 'field_618a2c791f863'),
(389, 94, 'dream_1_content_dream_1', 'FLC Gia Lai Golf Club & Luxury Resort là nhà phát triển BĐS hàng đầu Việt Nam vốn được mệnh danh là “người khai phá những miền đất mới”, luôn tìm kiếm và phát triển những vùng đất đang trên đà phát triển, kiến tạo nên những dự án tầm cỡ, thay đổi bộ mặt, nâng tầm giá trị cho toàn bộ khu vực và FLC Gia Lai Golf Club & Luxury Resort là tỉnh đã được lựa chọn là một trong những dự án được “điểm mặt đặt tên” là một dự án có quy mô và tầm cỡ lớn nhất của khu vực Tây Nguyên. Là nơi mà mọi người dân nơi đây đều khát khao được sở hữu.'),
(390, 94, '_dream_1_content_dream_1', 'field_618a2c851f864'),
(391, 94, 'dream_1', ''),
(392, 94, '_dream_1', 'field_618a2c4d1f862'),
(393, 94, 'dream_2_avar_dream_2', '51'),
(394, 94, '_dream_2_avar_dream_2', 'field_618a2cb31f866'),
(395, 94, 'dream_2_content_dream_2', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(396, 94, '_dream_2_content_dream_2', 'field_618a2cc31f867'),
(397, 94, 'dream_2', ''),
(398, 94, '_dream_2', 'field_618a2c9d1f865'),
(399, 94, 'dream_3_avr_dream_3', '52'),
(400, 94, '_dream_3_avr_dream_3', 'field_618a2ed01f869'),
(401, 94, 'dream_3_content_dream_3', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(402, 94, '_dream_3_content_dream_3', 'field_618a2ee51f86a'),
(403, 94, 'dream_3', ''),
(404, 94, '_dream_3', 'field_618a2eac1f868'),
(405, 94, 'dream_4_avar_dream_4', '53'),
(406, 94, '_dream_4_avar_dream_4', 'field_618a2f321f86c'),
(407, 94, 'dream_4_content_dream_4', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(408, 94, '_dream_4_content_dream_4', 'field_618a2f641f86d'),
(409, 94, 'dream_4', ''),
(410, 94, '_dream_4', 'field_618a2f211f86b'),
(411, 94, 'title_numb', '50+'),
(412, 94, '_title_numb', 'field_618b8a28b176f'),
(413, 94, 'content_kv_0_avar_kv_item', '91'),
(414, 94, '_content_kv_0_avar_kv_item', 'field_618b8a94b1771'),
(415, 94, 'content_kv_0_title_kv_item', 'Trung tâm thương mại'),
(416, 94, '_content_kv_0_title_kv_item', 'field_618b8b04b1772'),
(417, 94, 'content_kv_0_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(418, 94, '_content_kv_0_sort_kv_item', 'field_618b8b42b1774'),
(419, 94, 'content_kv_1_avar_kv_item', '92'),
(420, 94, '_content_kv_1_avar_kv_item', 'field_618b8a94b1771'),
(421, 94, 'content_kv_1_title_kv_item', 'Trung tâm thương mại'),
(422, 94, '_content_kv_1_title_kv_item', 'field_618b8b04b1772'),
(423, 94, 'content_kv_1_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(424, 94, '_content_kv_1_sort_kv_item', 'field_618b8b42b1774'),
(425, 94, 'content_kv_2_avar_kv_item', '93'),
(426, 94, '_content_kv_2_avar_kv_item', 'field_618b8a94b1771'),
(427, 94, 'content_kv_2_title_kv_item', 'Trung tâm thương mại'),
(428, 94, '_content_kv_2_title_kv_item', 'field_618b8b04b1772'),
(429, 94, 'content_kv_2_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(430, 94, '_content_kv_2_sort_kv_item', 'field_618b8b42b1774'),
(431, 94, 'content_kv_3_avar_kv_item', '92'),
(432, 94, '_content_kv_3_avar_kv_item', 'field_618b8a94b1771'),
(433, 94, 'content_kv_3_title_kv_item', 'Trung tâm thương mại'),
(434, 94, '_content_kv_3_title_kv_item', 'field_618b8b04b1772'),
(435, 94, 'content_kv_3_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(436, 94, '_content_kv_3_sort_kv_item', 'field_618b8b42b1774'),
(437, 94, 'content_kv_4_avar_kv_item', '93'),
(438, 94, '_content_kv_4_avar_kv_item', 'field_618b8a94b1771'),
(439, 94, 'content_kv_4_title_kv_item', 'Trung tâm thương mại'),
(440, 94, '_content_kv_4_title_kv_item', 'field_618b8b04b1772'),
(441, 94, 'content_kv_4_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(442, 94, '_content_kv_4_sort_kv_item', 'field_618b8b42b1774'),
(443, 94, 'content_kv_5_avar_kv_item', '91'),
(444, 94, '_content_kv_5_avar_kv_item', 'field_618b8a94b1771'),
(445, 94, 'content_kv_5_title_kv_item', 'Trung tâm thương mại'),
(446, 94, '_content_kv_5_title_kv_item', 'field_618b8b04b1772'),
(447, 94, 'content_kv_5_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(448, 94, '_content_kv_5_sort_kv_item', 'field_618b8b42b1774'),
(449, 94, 'content_kv_6_avar_kv_item', '93'),
(450, 94, '_content_kv_6_avar_kv_item', 'field_618b8a94b1771'),
(451, 94, 'content_kv_6_title_kv_item', 'Trung tâm thương mại'),
(452, 94, '_content_kv_6_title_kv_item', 'field_618b8b04b1772'),
(453, 94, 'content_kv_6_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(454, 94, '_content_kv_6_sort_kv_item', 'field_618b8b42b1774'),
(455, 94, 'content_kv_7_avar_kv_item', '92'),
(456, 94, '_content_kv_7_avar_kv_item', 'field_618b8a94b1771'),
(457, 94, 'content_kv_7_title_kv_item', 'Trung tâm thương mại'),
(458, 94, '_content_kv_7_title_kv_item', 'field_618b8b04b1772'),
(459, 94, 'content_kv_7_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(460, 94, '_content_kv_7_sort_kv_item', 'field_618b8b42b1774'),
(461, 94, 'content_kv_8_avar_kv_item', '91'),
(462, 94, '_content_kv_8_avar_kv_item', 'field_618b8a94b1771'),
(463, 94, 'content_kv_8_title_kv_item', 'Trung tâm thương mại'),
(464, 94, '_content_kv_8_title_kv_item', 'field_618b8b04b1772'),
(465, 94, 'content_kv_8_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(466, 94, '_content_kv_8_sort_kv_item', 'field_618b8b42b1774'),
(467, 94, 'content_kv_9_avar_kv_item', '93'),
(468, 94, '_content_kv_9_avar_kv_item', 'field_618b8a94b1771'),
(469, 94, 'content_kv_9_title_kv_item', 'Trung tâm thương mại'),
(470, 94, '_content_kv_9_title_kv_item', 'field_618b8b04b1772'),
(471, 94, 'content_kv_9_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(472, 94, '_content_kv_9_sort_kv_item', 'field_618b8b42b1774'),
(473, 94, 'content_kv_10_avar_kv_item', '92'),
(474, 94, '_content_kv_10_avar_kv_item', 'field_618b8a94b1771'),
(475, 94, 'content_kv_10_title_kv_item', 'Trung tâm thương mại'),
(476, 94, '_content_kv_10_title_kv_item', 'field_618b8b04b1772'),
(477, 94, 'content_kv_10_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(478, 94, '_content_kv_10_sort_kv_item', 'field_618b8b42b1774'),
(479, 94, 'content_kv_11_avar_kv_item', '91'),
(480, 94, '_content_kv_11_avar_kv_item', 'field_618b8a94b1771'),
(481, 94, 'content_kv_11_title_kv_item', 'Trung tâm thương mại'),
(482, 94, '_content_kv_11_title_kv_item', 'field_618b8b04b1772'),
(483, 94, 'content_kv_11_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(484, 94, '_content_kv_11_sort_kv_item', 'field_618b8b42b1774'),
(485, 94, 'content_kv', '12'),
(486, 94, '_content_kv', 'field_618b8a82b1770'),
(487, 121, '_wp_attached_file', '2021/11/part-1.png'),
(488, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:202;s:4:\"file\";s:18:\"2021/11/part-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"part-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(489, 122, '_wp_attached_file', '2021/11/part-2.jpg'),
(490, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:101;s:4:\"file\";s:18:\"2021/11/part-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(491, 123, '_wp_attached_file', '2021/11/part-3.png'),
(492, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:904;s:6:\"height\";i:173;s:4:\"file\";s:18:\"2021/11/part-3.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"part-3-300x57.png\";s:5:\"width\";i:300;s:6:\"height\";i:57;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"part-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"part-3-768x147.png\";s:5:\"width\";i:768;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(493, 124, '_wp_attached_file', '2021/11/part-4.jpg'),
(494, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:18:\"2021/11/part-4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(495, 125, '_wp_attached_file', '2021/11/part-5.jpg'),
(496, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:272;s:4:\"file\";s:18:\"2021/11/part-5.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"part-5-300x76.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"part-5-1024x258.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"part-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"part-5-768x193.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(497, 10, 'avr_maps', ''),
(498, 10, '_avr_maps', 'field_618b8c6be1090'),
(499, 10, 'gt_maps_title_gt', 'GIAO THÔNG'),
(500, 10, '_gt_maps_title_gt', 'field_618b8cf8e1092'),
(501, 10, 'gt_maps_sort_gt', 'Các tuyến giao thông huyết mạch Bắc - Nam chạy qua dự án'),
(502, 10, '_gt_maps_sort_gt', 'field_618b8d0ee1093'),
(503, 10, 'gt_maps_content_gt', '3'),
(504, 10, '_gt_maps_content_gt', 'field_618b8d22e1094'),
(505, 10, 'gt_maps', ''),
(506, 10, '_gt_maps', 'field_618b8cc2e1091'),
(507, 10, 'box_vantai_title_vantai', 'VẬN TẢI'),
(508, 10, '_box_vantai_title_vantai', 'field_618b8e6ee109a'),
(509, 10, 'box_vantai_danh_sach_vantai', '2'),
(510, 10, '_box_vantai_danh_sach_vantai', 'field_618b8d79e1097'),
(511, 10, 'box_vantai', ''),
(512, 10, '_box_vantai', 'field_618b8d58e1096'),
(513, 10, 'box_dulich_title_dulich', 'DU LỊCH'),
(514, 10, '_box_dulich_title_dulich', 'field_618b8e98e109c'),
(515, 10, 'box_dulich_danh_sach_dulich', '2'),
(516, 10, '_box_dulich_danh_sach_dulich', 'field_618b8eade109d'),
(517, 10, 'box_dulich_desc_dulich', ''),
(518, 10, '_box_dulich_desc_dulich', 'field_618b8ee7e10a0'),
(519, 10, 'box_dulich', ''),
(520, 10, '_box_dulich', 'field_618b8e88e109b'),
(521, 10, 'avar_sitemap', '127'),
(522, 10, '_avar_sitemap', 'field_618b8f18e10a2'),
(523, 10, 'list_part_0_logo_part', '121'),
(524, 10, '_list_part_0_logo_part', 'field_618b8f64e10a5'),
(525, 10, 'list_part_0_title_part', 'CITY LAND'),
(526, 10, '_list_part_0_title_part', 'field_618b8f8fe10a6'),
(527, 10, 'list_part_0_hotline_part', '0123456789'),
(528, 10, '_list_part_0_hotline_part', 'field_618b8f9de10a7'),
(529, 10, 'list_part_0_link_part', '#'),
(530, 10, '_list_part_0_link_part', 'field_618b8fa5e10a8'),
(531, 10, 'list_part_1_logo_part', '122'),
(532, 10, '_list_part_1_logo_part', 'field_618b8f64e10a5'),
(533, 10, 'list_part_1_title_part', 'CITY LAND'),
(534, 10, '_list_part_1_title_part', 'field_618b8f8fe10a6'),
(535, 10, 'list_part_1_hotline_part', '0123456789'),
(536, 10, '_list_part_1_hotline_part', 'field_618b8f9de10a7'),
(537, 10, 'list_part_1_link_part', '#'),
(538, 10, '_list_part_1_link_part', 'field_618b8fa5e10a8'),
(539, 10, 'list_part_2_logo_part', '123'),
(540, 10, '_list_part_2_logo_part', 'field_618b8f64e10a5'),
(541, 10, 'list_part_2_title_part', 'CITY LAND'),
(542, 10, '_list_part_2_title_part', 'field_618b8f8fe10a6'),
(543, 10, 'list_part_2_hotline_part', '0123456789'),
(544, 10, '_list_part_2_hotline_part', 'field_618b8f9de10a7'),
(545, 10, 'list_part_2_link_part', '#'),
(546, 10, '_list_part_2_link_part', 'field_618b8fa5e10a8'),
(547, 10, 'list_part_3_logo_part', '124'),
(548, 10, '_list_part_3_logo_part', 'field_618b8f64e10a5'),
(549, 10, 'list_part_3_title_part', 'CITY LAND'),
(550, 10, '_list_part_3_title_part', 'field_618b8f8fe10a6'),
(551, 10, 'list_part_3_hotline_part', '0123456789'),
(552, 10, '_list_part_3_hotline_part', 'field_618b8f9de10a7'),
(553, 10, 'list_part_3_link_part', '#'),
(554, 10, '_list_part_3_link_part', 'field_618b8fa5e10a8'),
(555, 10, 'list_part_4_logo_part', '125'),
(556, 10, '_list_part_4_logo_part', 'field_618b8f64e10a5'),
(557, 10, 'list_part_4_title_part', 'CITY LAND'),
(558, 10, '_list_part_4_title_part', 'field_618b8f8fe10a6'),
(559, 10, 'list_part_4_hotline_part', '0123456789'),
(560, 10, '_list_part_4_hotline_part', 'field_618b8f9de10a7'),
(561, 10, 'list_part_4_link_part', '#'),
(562, 10, '_list_part_4_link_part', 'field_618b8fa5e10a8'),
(563, 10, 'list_part', '5'),
(564, 10, '_list_part', 'field_618b8f43e10a4'),
(565, 126, 'slide_banner_0_avar_banner', '40'),
(566, 126, '_slide_banner_0_avar_banner', 'field_618a29941f851'),
(567, 126, 'slide_banner_1_avar_banner', '41'),
(568, 126, '_slide_banner_1_avar_banner', 'field_618a29941f851'),
(569, 126, 'slide_banner_2_avar_banner', '42'),
(570, 126, '_slide_banner_2_avar_banner', 'field_618a29941f851'),
(571, 126, 'slide_banner', '3'),
(572, 126, '_slide_banner', 'field_618a29881f850'),
(573, 126, 'title_box_1', '43'),
(574, 126, '_title_box_1', 'field_618a2a3c1f853'),
(575, 126, 'content_hnay_1_avarta_hnay_1', '44'),
(576, 126, '_content_hnay_1_avarta_hnay_1', 'field_618a2b351f859'),
(577, 126, 'content_hnay_1_content_hnay_1', 'Nhắc đến Tây Nguyên là người ta nhắc đến văn hóa và con nguời Tây nguyên, nơi có một bản sắc riêng, tiếng nói riêng nhưng vẫn mang trong mình hơi thở, tiếng nói chung của thời đại.\r\n\r\nKhi nhắc đến Pleiku, người ta nghĩ ngay tới nương cà phê nặng trĩu hạt, tới hồ tiêu xanh mướt, tới đồi chè ngút tầm mắt ẩn hiện đằng sau là dãy núi trùng điệp.\r\n\r\nFLC Gia Lai Golf Club &amp; Luxury Resort còn được biết đến là một Phố Núi thơ mộng, một bình nguyên trên cao với các hồ nước tự nhiên nằm bên những cánh rừng thông ngút ngàn, đó là những buôn làng truyền thống đầy bản sắc đã tồn tại hàng trăm năm trong lòng đô thị, với các không gian lễ hội, không gian văn hóa cồng chiêng độc đáo đã được thế giới công nhận là di sản của nhân loại.\r\n\r\n<span style=\"color: #e3c959;\">Kế thừa và phát huy những giá trị tốt đẹp,FLC Gia Lai Golf Club &amp; Luxury Resort ngày nay đã trở thành một điểmsáng về kinh tế nổi bật hẳn lên trong khuvực Tây nguyên tựa một ngôi sao sáng rựcrỡ trên bầu trời đêm.</span>'),
(578, 126, '_content_hnay_1_content_hnay_1', 'field_618a2b431f85a'),
(579, 126, 'content_hnay_1', ''),
(580, 126, '_content_hnay_1', 'field_618a2b281f858'),
(581, 126, 'content_hnay_2_avarta_hnay_2', '45'),
(582, 126, '_content_hnay_2_avarta_hnay_2', 'field_618a2b811f85c'),
(583, 126, 'content_hnay_2', ''),
(584, 126, '_content_hnay_2', 'field_618a2b691f85b'),
(585, 126, 'content_hnay_3_avarta_hnay_3', '47'),
(586, 126, '_content_hnay_3_avarta_hnay_3', 'field_618a2bd11f85e'),
(587, 126, 'content_hnay_3_title_hnay_3', '46'),
(588, 126, '_content_hnay_3_title_hnay_3', 'field_618a2be21f85f'),
(589, 126, 'content_hnay_3_content_hnay_3', 'Mang tâm huyết của chủ đầu tư, mang trong mình những giá trị tinh hoa văn hóa Tây Nguyên, kết hợp với bàn tay tài hoa của người thiết kế kiến trúc, kiến tạo nên một nơi sống và hưởng thụ độc đáo, mang nhiều sắc thái mới không thể trộn lẫn, trở thành một trong những biểu tượng tự hào của Tây Nguyên.'),
(590, 126, '_content_hnay_3_content_hnay_3', 'field_618a2bf81f860'),
(591, 126, 'content_hnay_3', ''),
(592, 126, '_content_hnay_3', 'field_618a2baf1f85d'),
(593, 126, 'dream_1_avar_dream_1', '50'),
(594, 126, '_dream_1_avar_dream_1', 'field_618a2c791f863'),
(595, 126, 'dream_1_content_dream_1', 'FLC Gia Lai Golf Club & Luxury Resort là nhà phát triển BĐS hàng đầu Việt Nam vốn được mệnh danh là “người khai phá những miền đất mới”, luôn tìm kiếm và phát triển những vùng đất đang trên đà phát triển, kiến tạo nên những dự án tầm cỡ, thay đổi bộ mặt, nâng tầm giá trị cho toàn bộ khu vực và FLC Gia Lai Golf Club & Luxury Resort là tỉnh đã được lựa chọn là một trong những dự án được “điểm mặt đặt tên” là một dự án có quy mô và tầm cỡ lớn nhất của khu vực Tây Nguyên. Là nơi mà mọi người dân nơi đây đều khát khao được sở hữu.'),
(596, 126, '_dream_1_content_dream_1', 'field_618a2c851f864'),
(597, 126, 'dream_1', ''),
(598, 126, '_dream_1', 'field_618a2c4d1f862'),
(599, 126, 'dream_2_avar_dream_2', '51'),
(600, 126, '_dream_2_avar_dream_2', 'field_618a2cb31f866'),
(601, 126, 'dream_2_content_dream_2', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(602, 126, '_dream_2_content_dream_2', 'field_618a2cc31f867'),
(603, 126, 'dream_2', ''),
(604, 126, '_dream_2', 'field_618a2c9d1f865'),
(605, 126, 'dream_3_avr_dream_3', '52'),
(606, 126, '_dream_3_avr_dream_3', 'field_618a2ed01f869'),
(607, 126, 'dream_3_content_dream_3', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(608, 126, '_dream_3_content_dream_3', 'field_618a2ee51f86a'),
(609, 126, 'dream_3', ''),
(610, 126, '_dream_3', 'field_618a2eac1f868'),
(611, 126, 'dream_4_avar_dream_4', '53'),
(612, 126, '_dream_4_avar_dream_4', 'field_618a2f321f86c'),
(613, 126, 'dream_4_content_dream_4', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(614, 126, '_dream_4_content_dream_4', 'field_618a2f641f86d'),
(615, 126, 'dream_4', ''),
(616, 126, '_dream_4', 'field_618a2f211f86b'),
(617, 126, 'title_numb', '50+'),
(618, 126, '_title_numb', 'field_618b8a28b176f'),
(619, 126, 'content_kv_0_avar_kv_item', '91'),
(620, 126, '_content_kv_0_avar_kv_item', 'field_618b8a94b1771'),
(621, 126, 'content_kv_0_title_kv_item', 'Trung tâm thương mại'),
(622, 126, '_content_kv_0_title_kv_item', 'field_618b8b04b1772'),
(623, 126, 'content_kv_0_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(624, 126, '_content_kv_0_sort_kv_item', 'field_618b8b42b1774'),
(625, 126, 'content_kv_1_avar_kv_item', '92'),
(626, 126, '_content_kv_1_avar_kv_item', 'field_618b8a94b1771'),
(627, 126, 'content_kv_1_title_kv_item', 'Trung tâm thương mại'),
(628, 126, '_content_kv_1_title_kv_item', 'field_618b8b04b1772'),
(629, 126, 'content_kv_1_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(630, 126, '_content_kv_1_sort_kv_item', 'field_618b8b42b1774'),
(631, 126, 'content_kv_2_avar_kv_item', '93'),
(632, 126, '_content_kv_2_avar_kv_item', 'field_618b8a94b1771'),
(633, 126, 'content_kv_2_title_kv_item', 'Trung tâm thương mại'),
(634, 126, '_content_kv_2_title_kv_item', 'field_618b8b04b1772'),
(635, 126, 'content_kv_2_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(636, 126, '_content_kv_2_sort_kv_item', 'field_618b8b42b1774'),
(637, 126, 'content_kv_3_avar_kv_item', '92'),
(638, 126, '_content_kv_3_avar_kv_item', 'field_618b8a94b1771'),
(639, 126, 'content_kv_3_title_kv_item', 'Trung tâm thương mại'),
(640, 126, '_content_kv_3_title_kv_item', 'field_618b8b04b1772'),
(641, 126, 'content_kv_3_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(642, 126, '_content_kv_3_sort_kv_item', 'field_618b8b42b1774'),
(643, 126, 'content_kv_4_avar_kv_item', '93'),
(644, 126, '_content_kv_4_avar_kv_item', 'field_618b8a94b1771'),
(645, 126, 'content_kv_4_title_kv_item', 'Trung tâm thương mại'),
(646, 126, '_content_kv_4_title_kv_item', 'field_618b8b04b1772'),
(647, 126, 'content_kv_4_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(648, 126, '_content_kv_4_sort_kv_item', 'field_618b8b42b1774'),
(649, 126, 'content_kv_5_avar_kv_item', '91'),
(650, 126, '_content_kv_5_avar_kv_item', 'field_618b8a94b1771'),
(651, 126, 'content_kv_5_title_kv_item', 'Trung tâm thương mại'),
(652, 126, '_content_kv_5_title_kv_item', 'field_618b8b04b1772'),
(653, 126, 'content_kv_5_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(654, 126, '_content_kv_5_sort_kv_item', 'field_618b8b42b1774'),
(655, 126, 'content_kv_6_avar_kv_item', '93'),
(656, 126, '_content_kv_6_avar_kv_item', 'field_618b8a94b1771'),
(657, 126, 'content_kv_6_title_kv_item', 'Trung tâm thương mại'),
(658, 126, '_content_kv_6_title_kv_item', 'field_618b8b04b1772'),
(659, 126, 'content_kv_6_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(660, 126, '_content_kv_6_sort_kv_item', 'field_618b8b42b1774'),
(661, 126, 'content_kv_7_avar_kv_item', '92'),
(662, 126, '_content_kv_7_avar_kv_item', 'field_618b8a94b1771'),
(663, 126, 'content_kv_7_title_kv_item', 'Trung tâm thương mại'),
(664, 126, '_content_kv_7_title_kv_item', 'field_618b8b04b1772'),
(665, 126, 'content_kv_7_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(666, 126, '_content_kv_7_sort_kv_item', 'field_618b8b42b1774'),
(667, 126, 'content_kv_8_avar_kv_item', '91'),
(668, 126, '_content_kv_8_avar_kv_item', 'field_618b8a94b1771'),
(669, 126, 'content_kv_8_title_kv_item', 'Trung tâm thương mại'),
(670, 126, '_content_kv_8_title_kv_item', 'field_618b8b04b1772'),
(671, 126, 'content_kv_8_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(672, 126, '_content_kv_8_sort_kv_item', 'field_618b8b42b1774'),
(673, 126, 'content_kv_9_avar_kv_item', '93'),
(674, 126, '_content_kv_9_avar_kv_item', 'field_618b8a94b1771'),
(675, 126, 'content_kv_9_title_kv_item', 'Trung tâm thương mại'),
(676, 126, '_content_kv_9_title_kv_item', 'field_618b8b04b1772'),
(677, 126, 'content_kv_9_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(678, 126, '_content_kv_9_sort_kv_item', 'field_618b8b42b1774'),
(679, 126, 'content_kv_10_avar_kv_item', '92'),
(680, 126, '_content_kv_10_avar_kv_item', 'field_618b8a94b1771'),
(681, 126, 'content_kv_10_title_kv_item', 'Trung tâm thương mại'),
(682, 126, '_content_kv_10_title_kv_item', 'field_618b8b04b1772'),
(683, 126, 'content_kv_10_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(684, 126, '_content_kv_10_sort_kv_item', 'field_618b8b42b1774'),
(685, 126, 'content_kv_11_avar_kv_item', '91'),
(686, 126, '_content_kv_11_avar_kv_item', 'field_618b8a94b1771'),
(687, 126, 'content_kv_11_title_kv_item', 'Trung tâm thương mại'),
(688, 126, '_content_kv_11_title_kv_item', 'field_618b8b04b1772'),
(689, 126, 'content_kv_11_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(690, 126, '_content_kv_11_sort_kv_item', 'field_618b8b42b1774'),
(691, 126, 'content_kv', '12'),
(692, 126, '_content_kv', 'field_618b8a82b1770'),
(693, 126, 'avr_maps', ''),
(694, 126, '_avr_maps', 'field_618b8c6be1090'),
(695, 126, 'gt_maps_title_gt', ''),
(696, 126, '_gt_maps_title_gt', 'field_618b8cf8e1092'),
(697, 126, 'gt_maps_sort_gt', ''),
(698, 126, '_gt_maps_sort_gt', 'field_618b8d0ee1093'),
(699, 126, 'gt_maps_content_gt', ''),
(700, 126, '_gt_maps_content_gt', 'field_618b8d22e1094'),
(701, 126, 'gt_maps', ''),
(702, 126, '_gt_maps', 'field_618b8cc2e1091'),
(703, 126, 'box_vantai_title_vantai', ''),
(704, 126, '_box_vantai_title_vantai', 'field_618b8e6ee109a'),
(705, 126, 'box_vantai_danh_sach_vantai', ''),
(706, 126, '_box_vantai_danh_sach_vantai', 'field_618b8d79e1097'),
(707, 126, 'box_vantai', ''),
(708, 126, '_box_vantai', 'field_618b8d58e1096'),
(709, 126, 'box_dulich_title_dulich', ''),
(710, 126, '_box_dulich_title_dulich', 'field_618b8e98e109c'),
(711, 126, 'box_dulich_danh_sach_dulich', ''),
(712, 126, '_box_dulich_danh_sach_dulich', 'field_618b8eade109d'),
(713, 126, 'box_dulich_desc_dulich', ''),
(714, 126, '_box_dulich_desc_dulich', 'field_618b8ee7e10a0'),
(715, 126, 'box_dulich', ''),
(716, 126, '_box_dulich', 'field_618b8e88e109b'),
(717, 126, 'avar_sitemap', ''),
(718, 126, '_avar_sitemap', 'field_618b8f18e10a2'),
(719, 126, 'list_part_0_logo_part', '121'),
(720, 126, '_list_part_0_logo_part', 'field_618b8f64e10a5'),
(721, 126, 'list_part_0_title_part', 'CITY LAND'),
(722, 126, '_list_part_0_title_part', 'field_618b8f8fe10a6'),
(723, 126, 'list_part_0_hotline_part', '0123456789'),
(724, 126, '_list_part_0_hotline_part', 'field_618b8f9de10a7'),
(725, 126, 'list_part_0_link_part', '#'),
(726, 126, '_list_part_0_link_part', 'field_618b8fa5e10a8'),
(727, 126, 'list_part_1_logo_part', '122'),
(728, 126, '_list_part_1_logo_part', 'field_618b8f64e10a5'),
(729, 126, 'list_part_1_title_part', 'CITY LAND'),
(730, 126, '_list_part_1_title_part', 'field_618b8f8fe10a6'),
(731, 126, 'list_part_1_hotline_part', '0123456789'),
(732, 126, '_list_part_1_hotline_part', 'field_618b8f9de10a7'),
(733, 126, 'list_part_1_link_part', '#'),
(734, 126, '_list_part_1_link_part', 'field_618b8fa5e10a8'),
(735, 126, 'list_part_2_logo_part', '123'),
(736, 126, '_list_part_2_logo_part', 'field_618b8f64e10a5'),
(737, 126, 'list_part_2_title_part', 'CITY LAND'),
(738, 126, '_list_part_2_title_part', 'field_618b8f8fe10a6'),
(739, 126, 'list_part_2_hotline_part', '0123456789'),
(740, 126, '_list_part_2_hotline_part', 'field_618b8f9de10a7'),
(741, 126, 'list_part_2_link_part', '#'),
(742, 126, '_list_part_2_link_part', 'field_618b8fa5e10a8'),
(743, 126, 'list_part_3_logo_part', '124'),
(744, 126, '_list_part_3_logo_part', 'field_618b8f64e10a5'),
(745, 126, 'list_part_3_title_part', 'CITY LAND'),
(746, 126, '_list_part_3_title_part', 'field_618b8f8fe10a6'),
(747, 126, 'list_part_3_hotline_part', '0123456789'),
(748, 126, '_list_part_3_hotline_part', 'field_618b8f9de10a7'),
(749, 126, 'list_part_3_link_part', '#'),
(750, 126, '_list_part_3_link_part', 'field_618b8fa5e10a8'),
(751, 126, 'list_part_4_logo_part', '125'),
(752, 126, '_list_part_4_logo_part', 'field_618b8f64e10a5'),
(753, 126, 'list_part_4_title_part', 'CITY LAND'),
(754, 126, '_list_part_4_title_part', 'field_618b8f8fe10a6'),
(755, 126, 'list_part_4_hotline_part', '0123456789'),
(756, 126, '_list_part_4_hotline_part', 'field_618b8f9de10a7'),
(757, 126, 'list_part_4_link_part', '#'),
(758, 126, '_list_part_4_link_part', 'field_618b8fa5e10a8'),
(759, 126, 'list_part', '5'),
(760, 126, '_list_part', 'field_618b8f43e10a4'),
(761, 127, '_wp_attached_file', '2021/11/lienket.png'),
(762, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1453;s:6:\"height\";i:662;s:4:\"file\";s:19:\"2021/11/lienket.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"lienket-300x137.png\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"lienket-1024x467.png\";s:5:\"width\";i:1024;s:6:\"height\";i:467;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"lienket-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"lienket-768x350.png\";s:5:\"width\";i:768;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(763, 128, '_wp_attached_file', '2021/11/icon-1.png'),
(764, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:86;s:6:\"height\";i:71;s:4:\"file\";s:18:\"2021/11/icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(765, 129, '_wp_attached_file', '2021/11/icon-2.png'),
(766, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:86;s:6:\"height\";i:50;s:4:\"file\";s:18:\"2021/11/icon-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(767, 10, 'gt_maps_content_gt_0_item_gt', 'Đường Hồ Chí Minh'),
(768, 10, '_gt_maps_content_gt_0_item_gt', 'field_618b8d32e1095'),
(769, 10, 'gt_maps_content_gt_1_item_gt', '19, 19D, 25, 14C'),
(770, 10, '_gt_maps_content_gt_1_item_gt', 'field_618b8d32e1095'),
(771, 10, 'gt_maps_content_gt_2_item_gt', 'Đường Trường Sơn Đông'),
(772, 10, '_gt_maps_content_gt_2_item_gt', 'field_618b8d32e1095'),
(773, 10, 'box_vantai_danh_sach_vantai_0_icon_vantai', '128'),
(774, 10, '_box_vantai_danh_sach_vantai_0_icon_vantai', 'field_618b8e17e1098'),
(775, 10, 'box_vantai_danh_sach_vantai_0_item_vantai', '14 chuyến/tuần từ Hà Nội. ( Trung bình 1h35p/chuyến )<br> 14-24 chuyến/tuần từ Hồ Chí Minh. ( Trung bình 1h10p/chuyến )'),
(776, 10, '_box_vantai_danh_sach_vantai_0_item_vantai', 'field_618b8e2ae1099'),
(777, 10, 'box_vantai_danh_sach_vantai_1_icon_vantai', '129'),
(778, 10, '_box_vantai_danh_sach_vantai_1_icon_vantai', 'field_618b8e17e1098'),
(779, 10, 'box_vantai_danh_sach_vantai_1_item_vantai', '14 chuyến/tuần từ Hà Nội. ( Trung bình 1h35p/chuyến )<br> 14-24 chuyến/tuần từ Hồ Chí Minh. ( Trung bình 1h10p/chuyến )'),
(780, 10, '_box_vantai_danh_sach_vantai_1_item_vantai', 'field_618b8e2ae1099'),
(781, 10, 'box_dulich_danh_sach_dulich_0_numb_dulich', '4.500.000'),
(782, 10, '_box_dulich_danh_sach_dulich_0_numb_dulich', 'field_618b8ec3e109e'),
(783, 10, 'box_dulich_danh_sach_dulich_0_titlenumb_dulich', 'Người/năm'),
(784, 10, '_box_dulich_danh_sach_dulich_0_titlenumb_dulich', 'field_618b8ed5e109f'),
(785, 10, 'box_dulich_danh_sach_dulich_1_numb_dulich', '250.000'),
(786, 10, '_box_dulich_danh_sach_dulich_1_numb_dulich', 'field_618b8ec3e109e'),
(787, 10, 'box_dulich_danh_sach_dulich_1_titlenumb_dulich', 'Người/năm'),
(788, 10, '_box_dulich_danh_sach_dulich_1_titlenumb_dulich', 'field_618b8ed5e109f'),
(789, 130, 'slide_banner_0_avar_banner', '40'),
(790, 130, '_slide_banner_0_avar_banner', 'field_618a29941f851'),
(791, 130, 'slide_banner_1_avar_banner', '41'),
(792, 130, '_slide_banner_1_avar_banner', 'field_618a29941f851'),
(793, 130, 'slide_banner_2_avar_banner', '42'),
(794, 130, '_slide_banner_2_avar_banner', 'field_618a29941f851'),
(795, 130, 'slide_banner', '3'),
(796, 130, '_slide_banner', 'field_618a29881f850'),
(797, 130, 'title_box_1', '43'),
(798, 130, '_title_box_1', 'field_618a2a3c1f853'),
(799, 130, 'content_hnay_1_avarta_hnay_1', '44'),
(800, 130, '_content_hnay_1_avarta_hnay_1', 'field_618a2b351f859'),
(801, 130, 'content_hnay_1_content_hnay_1', 'Nhắc đến Tây Nguyên là người ta nhắc đến văn hóa và con nguời Tây nguyên, nơi có một bản sắc riêng, tiếng nói riêng nhưng vẫn mang trong mình hơi thở, tiếng nói chung của thời đại.\r\n\r\nKhi nhắc đến Pleiku, người ta nghĩ ngay tới nương cà phê nặng trĩu hạt, tới hồ tiêu xanh mướt, tới đồi chè ngút tầm mắt ẩn hiện đằng sau là dãy núi trùng điệp.\r\n\r\nFLC Gia Lai Golf Club &amp; Luxury Resort còn được biết đến là một Phố Núi thơ mộng, một bình nguyên trên cao với các hồ nước tự nhiên nằm bên những cánh rừng thông ngút ngàn, đó là những buôn làng truyền thống đầy bản sắc đã tồn tại hàng trăm năm trong lòng đô thị, với các không gian lễ hội, không gian văn hóa cồng chiêng độc đáo đã được thế giới công nhận là di sản của nhân loại.\r\n\r\n<span style=\"color: #e3c959;\">Kế thừa và phát huy những giá trị tốt đẹp,FLC Gia Lai Golf Club &amp; Luxury Resort ngày nay đã trở thành một điểmsáng về kinh tế nổi bật hẳn lên trong khuvực Tây nguyên tựa một ngôi sao sáng rựcrỡ trên bầu trời đêm.</span>'),
(802, 130, '_content_hnay_1_content_hnay_1', 'field_618a2b431f85a'),
(803, 130, 'content_hnay_1', ''),
(804, 130, '_content_hnay_1', 'field_618a2b281f858'),
(805, 130, 'content_hnay_2_avarta_hnay_2', '45'),
(806, 130, '_content_hnay_2_avarta_hnay_2', 'field_618a2b811f85c'),
(807, 130, 'content_hnay_2', ''),
(808, 130, '_content_hnay_2', 'field_618a2b691f85b'),
(809, 130, 'content_hnay_3_avarta_hnay_3', '47'),
(810, 130, '_content_hnay_3_avarta_hnay_3', 'field_618a2bd11f85e'),
(811, 130, 'content_hnay_3_title_hnay_3', '46'),
(812, 130, '_content_hnay_3_title_hnay_3', 'field_618a2be21f85f'),
(813, 130, 'content_hnay_3_content_hnay_3', 'Mang tâm huyết của chủ đầu tư, mang trong mình những giá trị tinh hoa văn hóa Tây Nguyên, kết hợp với bàn tay tài hoa của người thiết kế kiến trúc, kiến tạo nên một nơi sống và hưởng thụ độc đáo, mang nhiều sắc thái mới không thể trộn lẫn, trở thành một trong những biểu tượng tự hào của Tây Nguyên.'),
(814, 130, '_content_hnay_3_content_hnay_3', 'field_618a2bf81f860'),
(815, 130, 'content_hnay_3', ''),
(816, 130, '_content_hnay_3', 'field_618a2baf1f85d'),
(817, 130, 'dream_1_avar_dream_1', '50'),
(818, 130, '_dream_1_avar_dream_1', 'field_618a2c791f863'),
(819, 130, 'dream_1_content_dream_1', 'FLC Gia Lai Golf Club & Luxury Resort là nhà phát triển BĐS hàng đầu Việt Nam vốn được mệnh danh là “người khai phá những miền đất mới”, luôn tìm kiếm và phát triển những vùng đất đang trên đà phát triển, kiến tạo nên những dự án tầm cỡ, thay đổi bộ mặt, nâng tầm giá trị cho toàn bộ khu vực và FLC Gia Lai Golf Club & Luxury Resort là tỉnh đã được lựa chọn là một trong những dự án được “điểm mặt đặt tên” là một dự án có quy mô và tầm cỡ lớn nhất của khu vực Tây Nguyên. Là nơi mà mọi người dân nơi đây đều khát khao được sở hữu.'),
(820, 130, '_dream_1_content_dream_1', 'field_618a2c851f864'),
(821, 130, 'dream_1', ''),
(822, 130, '_dream_1', 'field_618a2c4d1f862'),
(823, 130, 'dream_2_avar_dream_2', '51'),
(824, 130, '_dream_2_avar_dream_2', 'field_618a2cb31f866'),
(825, 130, 'dream_2_content_dream_2', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(826, 130, '_dream_2_content_dream_2', 'field_618a2cc31f867'),
(827, 130, 'dream_2', ''),
(828, 130, '_dream_2', 'field_618a2c9d1f865'),
(829, 130, 'dream_3_avr_dream_3', '52'),
(830, 130, '_dream_3_avr_dream_3', 'field_618a2ed01f869'),
(831, 130, 'dream_3_content_dream_3', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(832, 130, '_dream_3_content_dream_3', 'field_618a2ee51f86a'),
(833, 130, 'dream_3', ''),
(834, 130, '_dream_3', 'field_618a2eac1f868'),
(835, 130, 'dream_4_avar_dream_4', '53'),
(836, 130, '_dream_4_avar_dream_4', 'field_618a2f321f86c'),
(837, 130, 'dream_4_content_dream_4', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(838, 130, '_dream_4_content_dream_4', 'field_618a2f641f86d'),
(839, 130, 'dream_4', ''),
(840, 130, '_dream_4', 'field_618a2f211f86b'),
(841, 130, 'title_numb', '50+'),
(842, 130, '_title_numb', 'field_618b8a28b176f'),
(843, 130, 'content_kv_0_avar_kv_item', '91');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(844, 130, '_content_kv_0_avar_kv_item', 'field_618b8a94b1771'),
(845, 130, 'content_kv_0_title_kv_item', 'Trung tâm thương mại'),
(846, 130, '_content_kv_0_title_kv_item', 'field_618b8b04b1772'),
(847, 130, 'content_kv_0_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(848, 130, '_content_kv_0_sort_kv_item', 'field_618b8b42b1774'),
(849, 130, 'content_kv_1_avar_kv_item', '92'),
(850, 130, '_content_kv_1_avar_kv_item', 'field_618b8a94b1771'),
(851, 130, 'content_kv_1_title_kv_item', 'Trung tâm thương mại'),
(852, 130, '_content_kv_1_title_kv_item', 'field_618b8b04b1772'),
(853, 130, 'content_kv_1_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(854, 130, '_content_kv_1_sort_kv_item', 'field_618b8b42b1774'),
(855, 130, 'content_kv_2_avar_kv_item', '93'),
(856, 130, '_content_kv_2_avar_kv_item', 'field_618b8a94b1771'),
(857, 130, 'content_kv_2_title_kv_item', 'Trung tâm thương mại'),
(858, 130, '_content_kv_2_title_kv_item', 'field_618b8b04b1772'),
(859, 130, 'content_kv_2_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(860, 130, '_content_kv_2_sort_kv_item', 'field_618b8b42b1774'),
(861, 130, 'content_kv_3_avar_kv_item', '92'),
(862, 130, '_content_kv_3_avar_kv_item', 'field_618b8a94b1771'),
(863, 130, 'content_kv_3_title_kv_item', 'Trung tâm thương mại'),
(864, 130, '_content_kv_3_title_kv_item', 'field_618b8b04b1772'),
(865, 130, 'content_kv_3_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(866, 130, '_content_kv_3_sort_kv_item', 'field_618b8b42b1774'),
(867, 130, 'content_kv_4_avar_kv_item', '93'),
(868, 130, '_content_kv_4_avar_kv_item', 'field_618b8a94b1771'),
(869, 130, 'content_kv_4_title_kv_item', 'Trung tâm thương mại'),
(870, 130, '_content_kv_4_title_kv_item', 'field_618b8b04b1772'),
(871, 130, 'content_kv_4_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(872, 130, '_content_kv_4_sort_kv_item', 'field_618b8b42b1774'),
(873, 130, 'content_kv_5_avar_kv_item', '91'),
(874, 130, '_content_kv_5_avar_kv_item', 'field_618b8a94b1771'),
(875, 130, 'content_kv_5_title_kv_item', 'Trung tâm thương mại'),
(876, 130, '_content_kv_5_title_kv_item', 'field_618b8b04b1772'),
(877, 130, 'content_kv_5_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(878, 130, '_content_kv_5_sort_kv_item', 'field_618b8b42b1774'),
(879, 130, 'content_kv_6_avar_kv_item', '93'),
(880, 130, '_content_kv_6_avar_kv_item', 'field_618b8a94b1771'),
(881, 130, 'content_kv_6_title_kv_item', 'Trung tâm thương mại'),
(882, 130, '_content_kv_6_title_kv_item', 'field_618b8b04b1772'),
(883, 130, 'content_kv_6_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(884, 130, '_content_kv_6_sort_kv_item', 'field_618b8b42b1774'),
(885, 130, 'content_kv_7_avar_kv_item', '92'),
(886, 130, '_content_kv_7_avar_kv_item', 'field_618b8a94b1771'),
(887, 130, 'content_kv_7_title_kv_item', 'Trung tâm thương mại'),
(888, 130, '_content_kv_7_title_kv_item', 'field_618b8b04b1772'),
(889, 130, 'content_kv_7_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(890, 130, '_content_kv_7_sort_kv_item', 'field_618b8b42b1774'),
(891, 130, 'content_kv_8_avar_kv_item', '91'),
(892, 130, '_content_kv_8_avar_kv_item', 'field_618b8a94b1771'),
(893, 130, 'content_kv_8_title_kv_item', 'Trung tâm thương mại'),
(894, 130, '_content_kv_8_title_kv_item', 'field_618b8b04b1772'),
(895, 130, 'content_kv_8_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(896, 130, '_content_kv_8_sort_kv_item', 'field_618b8b42b1774'),
(897, 130, 'content_kv_9_avar_kv_item', '93'),
(898, 130, '_content_kv_9_avar_kv_item', 'field_618b8a94b1771'),
(899, 130, 'content_kv_9_title_kv_item', 'Trung tâm thương mại'),
(900, 130, '_content_kv_9_title_kv_item', 'field_618b8b04b1772'),
(901, 130, 'content_kv_9_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(902, 130, '_content_kv_9_sort_kv_item', 'field_618b8b42b1774'),
(903, 130, 'content_kv_10_avar_kv_item', '92'),
(904, 130, '_content_kv_10_avar_kv_item', 'field_618b8a94b1771'),
(905, 130, 'content_kv_10_title_kv_item', 'Trung tâm thương mại'),
(906, 130, '_content_kv_10_title_kv_item', 'field_618b8b04b1772'),
(907, 130, 'content_kv_10_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(908, 130, '_content_kv_10_sort_kv_item', 'field_618b8b42b1774'),
(909, 130, 'content_kv_11_avar_kv_item', '91'),
(910, 130, '_content_kv_11_avar_kv_item', 'field_618b8a94b1771'),
(911, 130, 'content_kv_11_title_kv_item', 'Trung tâm thương mại'),
(912, 130, '_content_kv_11_title_kv_item', 'field_618b8b04b1772'),
(913, 130, 'content_kv_11_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(914, 130, '_content_kv_11_sort_kv_item', 'field_618b8b42b1774'),
(915, 130, 'content_kv', '12'),
(916, 130, '_content_kv', 'field_618b8a82b1770'),
(917, 130, 'avr_maps', ''),
(918, 130, '_avr_maps', 'field_618b8c6be1090'),
(919, 130, 'gt_maps_title_gt', 'GIAO THÔNG'),
(920, 130, '_gt_maps_title_gt', 'field_618b8cf8e1092'),
(921, 130, 'gt_maps_sort_gt', 'Các tuyến giao thông huyết mạch Bắc - Nam chạy qua dự án'),
(922, 130, '_gt_maps_sort_gt', 'field_618b8d0ee1093'),
(923, 130, 'gt_maps_content_gt', '3'),
(924, 130, '_gt_maps_content_gt', 'field_618b8d22e1094'),
(925, 130, 'gt_maps', ''),
(926, 130, '_gt_maps', 'field_618b8cc2e1091'),
(927, 130, 'box_vantai_title_vantai', 'VẬN TẢI'),
(928, 130, '_box_vantai_title_vantai', 'field_618b8e6ee109a'),
(929, 130, 'box_vantai_danh_sach_vantai', '2'),
(930, 130, '_box_vantai_danh_sach_vantai', 'field_618b8d79e1097'),
(931, 130, 'box_vantai', ''),
(932, 130, '_box_vantai', 'field_618b8d58e1096'),
(933, 130, 'box_dulich_title_dulich', 'DU LỊCH'),
(934, 130, '_box_dulich_title_dulich', 'field_618b8e98e109c'),
(935, 130, 'box_dulich_danh_sach_dulich', '2'),
(936, 130, '_box_dulich_danh_sach_dulich', 'field_618b8eade109d'),
(937, 130, 'box_dulich_desc_dulich', ''),
(938, 130, '_box_dulich_desc_dulich', 'field_618b8ee7e10a0'),
(939, 130, 'box_dulich', ''),
(940, 130, '_box_dulich', 'field_618b8e88e109b'),
(941, 130, 'avar_sitemap', '127'),
(942, 130, '_avar_sitemap', 'field_618b8f18e10a2'),
(943, 130, 'list_part_0_logo_part', '121'),
(944, 130, '_list_part_0_logo_part', 'field_618b8f64e10a5'),
(945, 130, 'list_part_0_title_part', 'CITY LAND'),
(946, 130, '_list_part_0_title_part', 'field_618b8f8fe10a6'),
(947, 130, 'list_part_0_hotline_part', '0123456789'),
(948, 130, '_list_part_0_hotline_part', 'field_618b8f9de10a7'),
(949, 130, 'list_part_0_link_part', '#'),
(950, 130, '_list_part_0_link_part', 'field_618b8fa5e10a8'),
(951, 130, 'list_part_1_logo_part', '122'),
(952, 130, '_list_part_1_logo_part', 'field_618b8f64e10a5'),
(953, 130, 'list_part_1_title_part', 'CITY LAND'),
(954, 130, '_list_part_1_title_part', 'field_618b8f8fe10a6'),
(955, 130, 'list_part_1_hotline_part', '0123456789'),
(956, 130, '_list_part_1_hotline_part', 'field_618b8f9de10a7'),
(957, 130, 'list_part_1_link_part', '#'),
(958, 130, '_list_part_1_link_part', 'field_618b8fa5e10a8'),
(959, 130, 'list_part_2_logo_part', '123'),
(960, 130, '_list_part_2_logo_part', 'field_618b8f64e10a5'),
(961, 130, 'list_part_2_title_part', 'CITY LAND'),
(962, 130, '_list_part_2_title_part', 'field_618b8f8fe10a6'),
(963, 130, 'list_part_2_hotline_part', '0123456789'),
(964, 130, '_list_part_2_hotline_part', 'field_618b8f9de10a7'),
(965, 130, 'list_part_2_link_part', '#'),
(966, 130, '_list_part_2_link_part', 'field_618b8fa5e10a8'),
(967, 130, 'list_part_3_logo_part', '124'),
(968, 130, '_list_part_3_logo_part', 'field_618b8f64e10a5'),
(969, 130, 'list_part_3_title_part', 'CITY LAND'),
(970, 130, '_list_part_3_title_part', 'field_618b8f8fe10a6'),
(971, 130, 'list_part_3_hotline_part', '0123456789'),
(972, 130, '_list_part_3_hotline_part', 'field_618b8f9de10a7'),
(973, 130, 'list_part_3_link_part', '#'),
(974, 130, '_list_part_3_link_part', 'field_618b8fa5e10a8'),
(975, 130, 'list_part_4_logo_part', '125'),
(976, 130, '_list_part_4_logo_part', 'field_618b8f64e10a5'),
(977, 130, 'list_part_4_title_part', 'CITY LAND'),
(978, 130, '_list_part_4_title_part', 'field_618b8f8fe10a6'),
(979, 130, 'list_part_4_hotline_part', '0123456789'),
(980, 130, '_list_part_4_hotline_part', 'field_618b8f9de10a7'),
(981, 130, 'list_part_4_link_part', '#'),
(982, 130, '_list_part_4_link_part', 'field_618b8fa5e10a8'),
(983, 130, 'list_part', '5'),
(984, 130, '_list_part', 'field_618b8f43e10a4'),
(985, 130, 'gt_maps_content_gt_0_item_gt', 'Đường Hồ Chí Minh'),
(986, 130, '_gt_maps_content_gt_0_item_gt', 'field_618b8d32e1095'),
(987, 130, 'gt_maps_content_gt_1_item_gt', '19, 19D, 25, 14C'),
(988, 130, '_gt_maps_content_gt_1_item_gt', 'field_618b8d32e1095'),
(989, 130, 'gt_maps_content_gt_2_item_gt', 'Đường Trường Sơn Đông'),
(990, 130, '_gt_maps_content_gt_2_item_gt', 'field_618b8d32e1095'),
(991, 130, 'box_vantai_danh_sach_vantai_0_icon_vantai', '128'),
(992, 130, '_box_vantai_danh_sach_vantai_0_icon_vantai', 'field_618b8e17e1098'),
(993, 130, 'box_vantai_danh_sach_vantai_0_item_vantai', '14 chuyến/tuần từ Hà Nội. ( Trung bình 1h35p/chuyến )<br> 14-24 chuyến/tuần từ Hồ Chí Minh. ( Trung bình 1h10p/chuyến )'),
(994, 130, '_box_vantai_danh_sach_vantai_0_item_vantai', 'field_618b8e2ae1099'),
(995, 130, 'box_vantai_danh_sach_vantai_1_icon_vantai', '129'),
(996, 130, '_box_vantai_danh_sach_vantai_1_icon_vantai', 'field_618b8e17e1098'),
(997, 130, 'box_vantai_danh_sach_vantai_1_item_vantai', '14 chuyến/tuần từ Hà Nội. ( Trung bình 1h35p/chuyến )<br> 14-24 chuyến/tuần từ Hồ Chí Minh. ( Trung bình 1h10p/chuyến )'),
(998, 130, '_box_vantai_danh_sach_vantai_1_item_vantai', 'field_618b8e2ae1099'),
(999, 130, 'box_dulich_danh_sach_dulich_0_numb_dulich', '4.500.000'),
(1000, 130, '_box_dulich_danh_sach_dulich_0_numb_dulich', 'field_618b8ec3e109e'),
(1001, 130, 'box_dulich_danh_sach_dulich_0_titlenumb_dulich', 'Người/năm'),
(1002, 130, '_box_dulich_danh_sach_dulich_0_titlenumb_dulich', 'field_618b8ed5e109f'),
(1003, 130, 'box_dulich_danh_sach_dulich_1_numb_dulich', '250.000'),
(1004, 130, '_box_dulich_danh_sach_dulich_1_numb_dulich', 'field_618b8ec3e109e'),
(1005, 130, 'box_dulich_danh_sach_dulich_1_titlenumb_dulich', 'Người/năm'),
(1006, 130, '_box_dulich_danh_sach_dulich_1_titlenumb_dulich', 'field_618b8ed5e109f'),
(1007, 10, 'box_dulich_danh_sach_dulich_0_desc_dulich', 'Lượng khách du lịch trong nước'),
(1008, 10, '_box_dulich_danh_sach_dulich_0_desc_dulich', 'field_618b91cdc0c9e'),
(1009, 10, 'box_dulich_danh_sach_dulich_1_desc_dulich', 'Lượng khách du lịch nước ngoài'),
(1010, 10, '_box_dulich_danh_sach_dulich_1_desc_dulich', 'field_618b91cdc0c9e'),
(1011, 132, 'slide_banner_0_avar_banner', '40'),
(1012, 132, '_slide_banner_0_avar_banner', 'field_618a29941f851'),
(1013, 132, 'slide_banner_1_avar_banner', '41'),
(1014, 132, '_slide_banner_1_avar_banner', 'field_618a29941f851'),
(1015, 132, 'slide_banner_2_avar_banner', '42'),
(1016, 132, '_slide_banner_2_avar_banner', 'field_618a29941f851'),
(1017, 132, 'slide_banner', '3'),
(1018, 132, '_slide_banner', 'field_618a29881f850'),
(1019, 132, 'title_box_1', '43'),
(1020, 132, '_title_box_1', 'field_618a2a3c1f853'),
(1021, 132, 'content_hnay_1_avarta_hnay_1', '44'),
(1022, 132, '_content_hnay_1_avarta_hnay_1', 'field_618a2b351f859'),
(1023, 132, 'content_hnay_1_content_hnay_1', 'Nhắc đến Tây Nguyên là người ta nhắc đến văn hóa và con nguời Tây nguyên, nơi có một bản sắc riêng, tiếng nói riêng nhưng vẫn mang trong mình hơi thở, tiếng nói chung của thời đại.\r\n\r\nKhi nhắc đến Pleiku, người ta nghĩ ngay tới nương cà phê nặng trĩu hạt, tới hồ tiêu xanh mướt, tới đồi chè ngút tầm mắt ẩn hiện đằng sau là dãy núi trùng điệp.\r\n\r\nFLC Gia Lai Golf Club &amp; Luxury Resort còn được biết đến là một Phố Núi thơ mộng, một bình nguyên trên cao với các hồ nước tự nhiên nằm bên những cánh rừng thông ngút ngàn, đó là những buôn làng truyền thống đầy bản sắc đã tồn tại hàng trăm năm trong lòng đô thị, với các không gian lễ hội, không gian văn hóa cồng chiêng độc đáo đã được thế giới công nhận là di sản của nhân loại.\r\n\r\n<span style=\"color: #e3c959;\">Kế thừa và phát huy những giá trị tốt đẹp,FLC Gia Lai Golf Club &amp; Luxury Resort ngày nay đã trở thành một điểmsáng về kinh tế nổi bật hẳn lên trong khuvực Tây nguyên tựa một ngôi sao sáng rựcrỡ trên bầu trời đêm.</span>'),
(1024, 132, '_content_hnay_1_content_hnay_1', 'field_618a2b431f85a'),
(1025, 132, 'content_hnay_1', ''),
(1026, 132, '_content_hnay_1', 'field_618a2b281f858'),
(1027, 132, 'content_hnay_2_avarta_hnay_2', '45'),
(1028, 132, '_content_hnay_2_avarta_hnay_2', 'field_618a2b811f85c'),
(1029, 132, 'content_hnay_2', ''),
(1030, 132, '_content_hnay_2', 'field_618a2b691f85b'),
(1031, 132, 'content_hnay_3_avarta_hnay_3', '47'),
(1032, 132, '_content_hnay_3_avarta_hnay_3', 'field_618a2bd11f85e'),
(1033, 132, 'content_hnay_3_title_hnay_3', '46'),
(1034, 132, '_content_hnay_3_title_hnay_3', 'field_618a2be21f85f'),
(1035, 132, 'content_hnay_3_content_hnay_3', 'Mang tâm huyết của chủ đầu tư, mang trong mình những giá trị tinh hoa văn hóa Tây Nguyên, kết hợp với bàn tay tài hoa của người thiết kế kiến trúc, kiến tạo nên một nơi sống và hưởng thụ độc đáo, mang nhiều sắc thái mới không thể trộn lẫn, trở thành một trong những biểu tượng tự hào của Tây Nguyên.'),
(1036, 132, '_content_hnay_3_content_hnay_3', 'field_618a2bf81f860'),
(1037, 132, 'content_hnay_3', ''),
(1038, 132, '_content_hnay_3', 'field_618a2baf1f85d'),
(1039, 132, 'dream_1_avar_dream_1', '50'),
(1040, 132, '_dream_1_avar_dream_1', 'field_618a2c791f863'),
(1041, 132, 'dream_1_content_dream_1', 'FLC Gia Lai Golf Club & Luxury Resort là nhà phát triển BĐS hàng đầu Việt Nam vốn được mệnh danh là “người khai phá những miền đất mới”, luôn tìm kiếm và phát triển những vùng đất đang trên đà phát triển, kiến tạo nên những dự án tầm cỡ, thay đổi bộ mặt, nâng tầm giá trị cho toàn bộ khu vực và FLC Gia Lai Golf Club & Luxury Resort là tỉnh đã được lựa chọn là một trong những dự án được “điểm mặt đặt tên” là một dự án có quy mô và tầm cỡ lớn nhất của khu vực Tây Nguyên. Là nơi mà mọi người dân nơi đây đều khát khao được sở hữu.'),
(1042, 132, '_dream_1_content_dream_1', 'field_618a2c851f864'),
(1043, 132, 'dream_1', ''),
(1044, 132, '_dream_1', 'field_618a2c4d1f862'),
(1045, 132, 'dream_2_avar_dream_2', '51'),
(1046, 132, '_dream_2_avar_dream_2', 'field_618a2cb31f866'),
(1047, 132, 'dream_2_content_dream_2', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(1048, 132, '_dream_2_content_dream_2', 'field_618a2cc31f867'),
(1049, 132, 'dream_2', ''),
(1050, 132, '_dream_2', 'field_618a2c9d1f865'),
(1051, 132, 'dream_3_avr_dream_3', '52'),
(1052, 132, '_dream_3_avr_dream_3', 'field_618a2ed01f869'),
(1053, 132, 'dream_3_content_dream_3', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(1054, 132, '_dream_3_content_dream_3', 'field_618a2ee51f86a'),
(1055, 132, 'dream_3', ''),
(1056, 132, '_dream_3', 'field_618a2eac1f868'),
(1057, 132, 'dream_4_avar_dream_4', '53'),
(1058, 132, '_dream_4_avar_dream_4', 'field_618a2f321f86c'),
(1059, 132, 'dream_4_content_dream_4', 'FLC Gia Lai Golf Club & Luxury Resort không chỉ là mảnh đất được thiên nhiên ưu đãi ban tặng cho nhiều thắng cảnh hoang sơ tuyệt đẹp mà đây còn là vùng đất in đậm dấu ấn văn hóa của đất và người Tây Nguyên. Tiết trời ở FLC Gia Lai Golf Club & Luxury Resort tuyệt đẹp khiến cho vùng đất đỏ bazan này như thể đang phô bày hết mọi vẻ đẹp và sự giàu có của phố núi với những rẫy cà phê chín đỏ, những đồi chè bát ngát mênh mông và cả những cánh rừng cao su đang vào mùa thay lá đầy huyền ảo.'),
(1060, 132, '_dream_4_content_dream_4', 'field_618a2f641f86d'),
(1061, 132, 'dream_4', ''),
(1062, 132, '_dream_4', 'field_618a2f211f86b'),
(1063, 132, 'title_numb', '50+'),
(1064, 132, '_title_numb', 'field_618b8a28b176f'),
(1065, 132, 'content_kv_0_avar_kv_item', '91'),
(1066, 132, '_content_kv_0_avar_kv_item', 'field_618b8a94b1771'),
(1067, 132, 'content_kv_0_title_kv_item', 'Trung tâm thương mại'),
(1068, 132, '_content_kv_0_title_kv_item', 'field_618b8b04b1772'),
(1069, 132, 'content_kv_0_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1070, 132, '_content_kv_0_sort_kv_item', 'field_618b8b42b1774'),
(1071, 132, 'content_kv_1_avar_kv_item', '92'),
(1072, 132, '_content_kv_1_avar_kv_item', 'field_618b8a94b1771'),
(1073, 132, 'content_kv_1_title_kv_item', 'Trung tâm thương mại'),
(1074, 132, '_content_kv_1_title_kv_item', 'field_618b8b04b1772'),
(1075, 132, 'content_kv_1_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1076, 132, '_content_kv_1_sort_kv_item', 'field_618b8b42b1774'),
(1077, 132, 'content_kv_2_avar_kv_item', '93'),
(1078, 132, '_content_kv_2_avar_kv_item', 'field_618b8a94b1771'),
(1079, 132, 'content_kv_2_title_kv_item', 'Trung tâm thương mại'),
(1080, 132, '_content_kv_2_title_kv_item', 'field_618b8b04b1772'),
(1081, 132, 'content_kv_2_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1082, 132, '_content_kv_2_sort_kv_item', 'field_618b8b42b1774'),
(1083, 132, 'content_kv_3_avar_kv_item', '92'),
(1084, 132, '_content_kv_3_avar_kv_item', 'field_618b8a94b1771'),
(1085, 132, 'content_kv_3_title_kv_item', 'Trung tâm thương mại'),
(1086, 132, '_content_kv_3_title_kv_item', 'field_618b8b04b1772'),
(1087, 132, 'content_kv_3_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1088, 132, '_content_kv_3_sort_kv_item', 'field_618b8b42b1774'),
(1089, 132, 'content_kv_4_avar_kv_item', '93'),
(1090, 132, '_content_kv_4_avar_kv_item', 'field_618b8a94b1771'),
(1091, 132, 'content_kv_4_title_kv_item', 'Trung tâm thương mại'),
(1092, 132, '_content_kv_4_title_kv_item', 'field_618b8b04b1772'),
(1093, 132, 'content_kv_4_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1094, 132, '_content_kv_4_sort_kv_item', 'field_618b8b42b1774'),
(1095, 132, 'content_kv_5_avar_kv_item', '91'),
(1096, 132, '_content_kv_5_avar_kv_item', 'field_618b8a94b1771'),
(1097, 132, 'content_kv_5_title_kv_item', 'Trung tâm thương mại'),
(1098, 132, '_content_kv_5_title_kv_item', 'field_618b8b04b1772'),
(1099, 132, 'content_kv_5_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1100, 132, '_content_kv_5_sort_kv_item', 'field_618b8b42b1774'),
(1101, 132, 'content_kv_6_avar_kv_item', '93'),
(1102, 132, '_content_kv_6_avar_kv_item', 'field_618b8a94b1771'),
(1103, 132, 'content_kv_6_title_kv_item', 'Trung tâm thương mại'),
(1104, 132, '_content_kv_6_title_kv_item', 'field_618b8b04b1772'),
(1105, 132, 'content_kv_6_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1106, 132, '_content_kv_6_sort_kv_item', 'field_618b8b42b1774'),
(1107, 132, 'content_kv_7_avar_kv_item', '92'),
(1108, 132, '_content_kv_7_avar_kv_item', 'field_618b8a94b1771'),
(1109, 132, 'content_kv_7_title_kv_item', 'Trung tâm thương mại'),
(1110, 132, '_content_kv_7_title_kv_item', 'field_618b8b04b1772'),
(1111, 132, 'content_kv_7_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1112, 132, '_content_kv_7_sort_kv_item', 'field_618b8b42b1774'),
(1113, 132, 'content_kv_8_avar_kv_item', '91'),
(1114, 132, '_content_kv_8_avar_kv_item', 'field_618b8a94b1771'),
(1115, 132, 'content_kv_8_title_kv_item', 'Trung tâm thương mại'),
(1116, 132, '_content_kv_8_title_kv_item', 'field_618b8b04b1772'),
(1117, 132, 'content_kv_8_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1118, 132, '_content_kv_8_sort_kv_item', 'field_618b8b42b1774'),
(1119, 132, 'content_kv_9_avar_kv_item', '93'),
(1120, 132, '_content_kv_9_avar_kv_item', 'field_618b8a94b1771'),
(1121, 132, 'content_kv_9_title_kv_item', 'Trung tâm thương mại'),
(1122, 132, '_content_kv_9_title_kv_item', 'field_618b8b04b1772'),
(1123, 132, 'content_kv_9_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1124, 132, '_content_kv_9_sort_kv_item', 'field_618b8b42b1774'),
(1125, 132, 'content_kv_10_avar_kv_item', '92'),
(1126, 132, '_content_kv_10_avar_kv_item', 'field_618b8a94b1771'),
(1127, 132, 'content_kv_10_title_kv_item', 'Trung tâm thương mại'),
(1128, 132, '_content_kv_10_title_kv_item', 'field_618b8b04b1772'),
(1129, 132, 'content_kv_10_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1130, 132, '_content_kv_10_sort_kv_item', 'field_618b8b42b1774'),
(1131, 132, 'content_kv_11_avar_kv_item', '91'),
(1132, 132, '_content_kv_11_avar_kv_item', 'field_618b8a94b1771'),
(1133, 132, 'content_kv_11_title_kv_item', 'Trung tâm thương mại'),
(1134, 132, '_content_kv_11_title_kv_item', 'field_618b8b04b1772'),
(1135, 132, 'content_kv_11_sort_kv_item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit lobortis leo, sed tincidunt augue congue ut. Nam efficitur consectetur augue, et sagittis dolor consequat eget. Mauris laoreet urna eget tortor scelerisque sagittis'),
(1136, 132, '_content_kv_11_sort_kv_item', 'field_618b8b42b1774'),
(1137, 132, 'content_kv', '12'),
(1138, 132, '_content_kv', 'field_618b8a82b1770'),
(1139, 132, 'avr_maps', ''),
(1140, 132, '_avr_maps', 'field_618b8c6be1090'),
(1141, 132, 'gt_maps_title_gt', 'GIAO THÔNG'),
(1142, 132, '_gt_maps_title_gt', 'field_618b8cf8e1092'),
(1143, 132, 'gt_maps_sort_gt', 'Các tuyến giao thông huyết mạch Bắc - Nam chạy qua dự án'),
(1144, 132, '_gt_maps_sort_gt', 'field_618b8d0ee1093'),
(1145, 132, 'gt_maps_content_gt', '3'),
(1146, 132, '_gt_maps_content_gt', 'field_618b8d22e1094'),
(1147, 132, 'gt_maps', ''),
(1148, 132, '_gt_maps', 'field_618b8cc2e1091'),
(1149, 132, 'box_vantai_title_vantai', 'VẬN TẢI'),
(1150, 132, '_box_vantai_title_vantai', 'field_618b8e6ee109a'),
(1151, 132, 'box_vantai_danh_sach_vantai', '2'),
(1152, 132, '_box_vantai_danh_sach_vantai', 'field_618b8d79e1097'),
(1153, 132, 'box_vantai', ''),
(1154, 132, '_box_vantai', 'field_618b8d58e1096'),
(1155, 132, 'box_dulich_title_dulich', 'DU LỊCH'),
(1156, 132, '_box_dulich_title_dulich', 'field_618b8e98e109c'),
(1157, 132, 'box_dulich_danh_sach_dulich', '2'),
(1158, 132, '_box_dulich_danh_sach_dulich', 'field_618b8eade109d'),
(1159, 132, 'box_dulich_desc_dulich', ''),
(1160, 132, '_box_dulich_desc_dulich', 'field_618b8ee7e10a0'),
(1161, 132, 'box_dulich', ''),
(1162, 132, '_box_dulich', 'field_618b8e88e109b'),
(1163, 132, 'avar_sitemap', '127'),
(1164, 132, '_avar_sitemap', 'field_618b8f18e10a2'),
(1165, 132, 'list_part_0_logo_part', '121'),
(1166, 132, '_list_part_0_logo_part', 'field_618b8f64e10a5'),
(1167, 132, 'list_part_0_title_part', 'CITY LAND'),
(1168, 132, '_list_part_0_title_part', 'field_618b8f8fe10a6'),
(1169, 132, 'list_part_0_hotline_part', '0123456789'),
(1170, 132, '_list_part_0_hotline_part', 'field_618b8f9de10a7'),
(1171, 132, 'list_part_0_link_part', '#'),
(1172, 132, '_list_part_0_link_part', 'field_618b8fa5e10a8'),
(1173, 132, 'list_part_1_logo_part', '122'),
(1174, 132, '_list_part_1_logo_part', 'field_618b8f64e10a5'),
(1175, 132, 'list_part_1_title_part', 'CITY LAND'),
(1176, 132, '_list_part_1_title_part', 'field_618b8f8fe10a6'),
(1177, 132, 'list_part_1_hotline_part', '0123456789'),
(1178, 132, '_list_part_1_hotline_part', 'field_618b8f9de10a7'),
(1179, 132, 'list_part_1_link_part', '#'),
(1180, 132, '_list_part_1_link_part', 'field_618b8fa5e10a8'),
(1181, 132, 'list_part_2_logo_part', '123'),
(1182, 132, '_list_part_2_logo_part', 'field_618b8f64e10a5'),
(1183, 132, 'list_part_2_title_part', 'CITY LAND'),
(1184, 132, '_list_part_2_title_part', 'field_618b8f8fe10a6'),
(1185, 132, 'list_part_2_hotline_part', '0123456789'),
(1186, 132, '_list_part_2_hotline_part', 'field_618b8f9de10a7'),
(1187, 132, 'list_part_2_link_part', '#'),
(1188, 132, '_list_part_2_link_part', 'field_618b8fa5e10a8'),
(1189, 132, 'list_part_3_logo_part', '124'),
(1190, 132, '_list_part_3_logo_part', 'field_618b8f64e10a5'),
(1191, 132, 'list_part_3_title_part', 'CITY LAND'),
(1192, 132, '_list_part_3_title_part', 'field_618b8f8fe10a6'),
(1193, 132, 'list_part_3_hotline_part', '0123456789'),
(1194, 132, '_list_part_3_hotline_part', 'field_618b8f9de10a7'),
(1195, 132, 'list_part_3_link_part', '#'),
(1196, 132, '_list_part_3_link_part', 'field_618b8fa5e10a8'),
(1197, 132, 'list_part_4_logo_part', '125'),
(1198, 132, '_list_part_4_logo_part', 'field_618b8f64e10a5'),
(1199, 132, 'list_part_4_title_part', 'CITY LAND'),
(1200, 132, '_list_part_4_title_part', 'field_618b8f8fe10a6'),
(1201, 132, 'list_part_4_hotline_part', '0123456789'),
(1202, 132, '_list_part_4_hotline_part', 'field_618b8f9de10a7'),
(1203, 132, 'list_part_4_link_part', '#'),
(1204, 132, '_list_part_4_link_part', 'field_618b8fa5e10a8'),
(1205, 132, 'list_part', '5'),
(1206, 132, '_list_part', 'field_618b8f43e10a4'),
(1207, 132, 'gt_maps_content_gt_0_item_gt', 'Đường Hồ Chí Minh'),
(1208, 132, '_gt_maps_content_gt_0_item_gt', 'field_618b8d32e1095'),
(1209, 132, 'gt_maps_content_gt_1_item_gt', '19, 19D, 25, 14C'),
(1210, 132, '_gt_maps_content_gt_1_item_gt', 'field_618b8d32e1095'),
(1211, 132, 'gt_maps_content_gt_2_item_gt', 'Đường Trường Sơn Đông'),
(1212, 132, '_gt_maps_content_gt_2_item_gt', 'field_618b8d32e1095'),
(1213, 132, 'box_vantai_danh_sach_vantai_0_icon_vantai', '128'),
(1214, 132, '_box_vantai_danh_sach_vantai_0_icon_vantai', 'field_618b8e17e1098'),
(1215, 132, 'box_vantai_danh_sach_vantai_0_item_vantai', '14 chuyến/tuần từ Hà Nội. ( Trung bình 1h35p/chuyến )<br> 14-24 chuyến/tuần từ Hồ Chí Minh. ( Trung bình 1h10p/chuyến )'),
(1216, 132, '_box_vantai_danh_sach_vantai_0_item_vantai', 'field_618b8e2ae1099'),
(1217, 132, 'box_vantai_danh_sach_vantai_1_icon_vantai', '129'),
(1218, 132, '_box_vantai_danh_sach_vantai_1_icon_vantai', 'field_618b8e17e1098'),
(1219, 132, 'box_vantai_danh_sach_vantai_1_item_vantai', '14 chuyến/tuần từ Hà Nội. ( Trung bình 1h35p/chuyến )<br> 14-24 chuyến/tuần từ Hồ Chí Minh. ( Trung bình 1h10p/chuyến )'),
(1220, 132, '_box_vantai_danh_sach_vantai_1_item_vantai', 'field_618b8e2ae1099'),
(1221, 132, 'box_dulich_danh_sach_dulich_0_numb_dulich', '4.500.000'),
(1222, 132, '_box_dulich_danh_sach_dulich_0_numb_dulich', 'field_618b8ec3e109e'),
(1223, 132, 'box_dulich_danh_sach_dulich_0_titlenumb_dulich', 'Người/năm'),
(1224, 132, '_box_dulich_danh_sach_dulich_0_titlenumb_dulich', 'field_618b8ed5e109f'),
(1225, 132, 'box_dulich_danh_sach_dulich_1_numb_dulich', '250.000'),
(1226, 132, '_box_dulich_danh_sach_dulich_1_numb_dulich', 'field_618b8ec3e109e'),
(1227, 132, 'box_dulich_danh_sach_dulich_1_titlenumb_dulich', 'Người/năm'),
(1228, 132, '_box_dulich_danh_sach_dulich_1_titlenumb_dulich', 'field_618b8ed5e109f'),
(1229, 132, 'box_dulich_danh_sach_dulich_0_desc_dulich', 'Lượng khách du lịch trong nước'),
(1230, 132, '_box_dulich_danh_sach_dulich_0_desc_dulich', 'field_618b91cdc0c9e'),
(1231, 132, 'box_dulich_danh_sach_dulich_1_desc_dulich', 'Lượng khách du lịch nước ngoài'),
(1232, 132, '_box_dulich_danh_sach_dulich_1_desc_dulich', 'field_618b91cdc0c9e'),
(1233, 134, '_edit_last', '1'),
(1234, 134, '_edit_lock', '1636540369:1'),
(1235, 134, '_wp_page_template', 'template-pages/news.php'),
(1236, 136, '_edit_last', '1'),
(1237, 136, '_edit_lock', '1636540324:1'),
(1238, 140, '_wp_attached_file', '2021/11/bg-down.jpg'),
(1239, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:980;s:4:\"file\";s:19:\"2021/11/bg-down.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bg-down-300x153.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"bg-down-1024x523.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:523;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bg-down-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bg-down-768x392.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"bg-down-1536x784.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:784;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1240, 134, 'banner_news', '140'),
(1241, 134, '_banner_news', 'field_618b9f44bef7b'),
(1242, 134, 'title_news_cate', 'Biệt thự biển FLC Gia Lai – Sản phẩm đắt giá trong quần thể nghỉ dưỡng'),
(1243, 134, '_title_news_cate', 'field_618b9f75bef7c'),
(1244, 134, 'sort_news_cate', 'Tọa lạc tại vị trí ven biển đắt giá thuộc đại quần thể du lịch nghỉ dưỡng FLC Gia Lai, biệt thự nghỉ dưỡng đang trở thành danh mục tài sản đáng giá được những nhà đầu tư sành sỏi yêu thích. Trên những tuyến đường giao thương sầm uất tại phân khu Lux City, các căn biệt thự phố nằm ở vị trí trung tâm, nơi dễ dàng tiếp cận lượng khách du lịch dồi dào đến vui chơi giải trí và mua sắm… Chỉ cần bước chân xuống phố, một thế giới rực rỡ sắc màu sẽ hiện ra: từ các quầy hàng đa dạng đến trung tâm thương mại đồ sộ, phố đi bộ tấp nập người qua lại… Không chỉ hình thành nhịp sống nghỉ dưỡng sôi động, hiện đại, biệt thự phố FLC Quảng Bình còn hứa hẹn đem lại nguồn doanh thu ổn định cho các nhà đầu tư khi kinh doanh khai thác cho thuê.'),
(1245, 134, '_sort_news_cate', 'field_618b9f87bef7d'),
(1246, 141, 'banner_news', '140'),
(1247, 141, '_banner_news', 'field_618b9f44bef7b'),
(1248, 141, 'title_news_cate', 'Biệt thự biển FLC Gia Lai – Sản phẩm đắt giá trong quần thể nghỉ dưỡng'),
(1249, 141, '_title_news_cate', 'field_618b9f75bef7c'),
(1250, 141, 'sort_news_cate', 'Tọa lạc tại vị trí ven biển đắt giá thuộc đại quần thể du lịch nghỉ dưỡng FLC Gia Lai, biệt thự nghỉ dưỡng đang trở thành danh mục tài sản đáng giá được những nhà đầu tư sành sỏi yêu thích. Trên những tuyến đường giao thương sầm uất tại phân khu Lux City, các căn biệt thự phố nằm ở vị trí trung tâm, nơi dễ dàng tiếp cận lượng khách du lịch dồi dào đến vui chơi giải trí và mua sắm… Chỉ cần bước chân xuống phố, một thế giới rực rỡ sắc màu sẽ hiện ra: từ các quầy hàng đa dạng đến trung tâm thương mại đồ sộ, phố đi bộ tấp nập người qua lại… Không chỉ hình thành nhịp sống nghỉ dưỡng sôi động, hiện đại, biệt thự phố FLC Quảng Bình còn hứa hẹn đem lại nguồn doanh thu ổn định cho các nhà đầu tư khi kinh doanh khai thác cho thuê.'),
(1251, 141, '_sort_news_cate', 'field_618b9f87bef7d');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-11-09 04:34:37', '2021-11-09 04:34:37', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2021-11-09 10:29:31', '2021-11-09 10:29:31', '', 0, 'http://localhost/flc-gialai/?p=1', 0, 'post', '', 1),
(2, 1, '2021-11-09 04:34:37', '2021-11-09 04:34:37', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/flc-gialai/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2021-11-09 07:49:15', '2021-11-09 07:49:15', '', 0, 'http://localhost/flc-gialai/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-11-09 04:34:37', '2021-11-09 04:34:37', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Địa chỉ website là: http://localhost/flc-gialai.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Bình luận</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Nội dung nhúng từ website khác</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph -->', 'Chính sách bảo mật', '', 'trash', 'closed', 'open', '', 'chinh-sach-bao-mat__trashed', '', '', '2021-11-09 07:49:18', '2021-11-09 07:49:18', '', 0, 'http://localhost/flc-gialai/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-11-09 04:35:32', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-09 04:35:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/flc-gialai/?p=4', 0, 'post', '', 0),
(7, 1, '2021-11-09 04:42:21', '2021-11-09 04:42:21', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <ledinhson209@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <ledinhson209@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-11-09 04:42:21', '2021-11-09 04:42:21', '', 0, 'http://localhost/flc-gialai/?post_type=wpcf7_contact_form&p=7', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2021-11-09 07:49:15', '2021-11-09 07:49:15', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/flc-gialai/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-11-09 07:49:15', '2021-11-09 07:49:15', '', 2, 'http://localhost/flc-gialai/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-11-09 07:49:18', '2021-11-09 07:49:18', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Địa chỉ website là: http://localhost/flc-gialai.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Bình luận</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Nội dung nhúng từ website khác</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Văn bản được đề xuất: </strong>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph -->', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-11-09 07:49:18', '2021-11-09 07:49:18', '', 3, 'http://localhost/flc-gialai/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-11-09 07:49:32', '2021-11-09 07:49:32', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2021-11-10 09:37:22', '2021-11-10 09:37:22', '', 0, 'http://localhost/flc-gialai/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-11-09 07:49:32', '2021-11-09 07:49:32', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-09 07:49:32', '2021-11-09 07:49:32', '', 10, 'http://localhost/flc-gialai/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"template-pages/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Tùy chỉnh trang chủ', 'tuy-chinh-trang-chu', 'publish', 'closed', 'closed', '', 'group_618a2962dc777', '', '', '2021-11-10 09:33:14', '2021-11-10 09:33:14', '', 0, 'http://localhost/flc-gialai/?post_type=acf-field-group&#038;p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Khối Banner', 'tab', 'publish', 'closed', 'closed', '', 'field_618a297e1f84f', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=13', 0, 'acf-field', '', 0),
(14, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Slide banner', 'slide_banner', 'publish', 'closed', 'closed', '', 'field_618a29881f850', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=14', 1, 'acf-field', '', 0),
(15, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh banner', 'avar_banner', 'publish', 'closed', 'closed', '', 'field_618a29941f851', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 14, 'http://localhost/flc-gialai/?post_type=acf-field&p=15', 0, 'acf-field', '', 0),
(16, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Khối Gia Lai hôm nay', 'khối_', 'publish', 'closed', 'closed', '', 'field_618a29fa1f852', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=16', 2, 'acf-field', '', 0),
(17, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Tiêu đề', 'title_box_1', 'publish', 'closed', 'closed', '', 'field_618a2a3c1f853', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=17', 3, 'acf-field', '', 0),
(18, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nội dung khối 1', 'content_hnay_1', 'publish', 'closed', 'closed', '', 'field_618a2b281f858', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=18', 4, 'acf-field', '', 0),
(19, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh đại diện', 'avarta_hnay_1', 'publish', 'closed', 'closed', '', 'field_618a2b351f859', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 18, 'http://localhost/flc-gialai/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Nội dung', 'content_hnay_1', 'publish', 'closed', 'closed', '', 'field_618a2b431f85a', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 18, 'http://localhost/flc-gialai/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nội dung khối 2', 'content_hnay_2', 'publish', 'closed', 'closed', '', 'field_618a2b691f85b', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=21', 5, 'acf-field', '', 0),
(22, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh đại diện', 'avarta_hnay_2', 'publish', 'closed', 'closed', '', 'field_618a2b811f85c', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 21, 'http://localhost/flc-gialai/?post_type=acf-field&p=22', 0, 'acf-field', '', 0),
(23, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nội dung khối 3', 'content_hnay_3', 'publish', 'closed', 'closed', '', 'field_618a2baf1f85d', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=23', 6, 'acf-field', '', 0),
(24, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh đại diện', 'avarta_hnay_3', 'publish', 'closed', 'closed', '', 'field_618a2bd11f85e', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 23, 'http://localhost/flc-gialai/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Tiêu đề', 'title_hnay_3', 'publish', 'closed', 'closed', '', 'field_618a2be21f85f', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 23, 'http://localhost/flc-gialai/?post_type=acf-field&p=25', 1, 'acf-field', '', 0),
(26, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Nội dung', 'content_hnay_3', 'publish', 'closed', 'closed', '', 'field_618a2bf81f860', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 23, 'http://localhost/flc-gialai/?post_type=acf-field&p=26', 2, 'acf-field', '', 0),
(27, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Khối Giấc mơ đại ngàn', 'khối_giấc_mo_dại_ngan', 'publish', 'closed', 'closed', '', 'field_618a2c131f861', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=27', 7, 'acf-field', '', 0),
(28, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nội dung khối 1', 'dream_1', 'publish', 'closed', 'closed', '', 'field_618a2c4d1f862', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=28', 8, 'acf-field', '', 0),
(29, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh đại diện', 'avar_dream_1', 'publish', 'closed', 'closed', '', 'field_618a2c791f863', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 28, 'http://localhost/flc-gialai/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Nội dung', 'content_dream_1', 'publish', 'closed', 'closed', '', 'field_618a2c851f864', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 28, 'http://localhost/flc-gialai/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nội dung khối 2', 'dream_2', 'publish', 'closed', 'closed', '', 'field_618a2c9d1f865', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=31', 9, 'acf-field', '', 0),
(32, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh đại diện', 'avar_dream_2', 'publish', 'closed', 'closed', '', 'field_618a2cb31f866', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 31, 'http://localhost/flc-gialai/?post_type=acf-field&p=32', 0, 'acf-field', '', 0),
(33, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Nội dung', 'content_dream_2', 'publish', 'closed', 'closed', '', 'field_618a2cc31f867', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 31, 'http://localhost/flc-gialai/?post_type=acf-field&p=33', 1, 'acf-field', '', 0),
(34, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nội dung khối 3', 'dream_3', 'publish', 'closed', 'closed', '', 'field_618a2eac1f868', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=34', 10, 'acf-field', '', 0),
(35, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh đại diện', 'avr_dream_3', 'publish', 'closed', 'closed', '', 'field_618a2ed01f869', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 34, 'http://localhost/flc-gialai/?post_type=acf-field&p=35', 0, 'acf-field', '', 0),
(36, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Nội dung', 'content_dream_3', 'publish', 'closed', 'closed', '', 'field_618a2ee51f86a', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 34, 'http://localhost/flc-gialai/?post_type=acf-field&p=36', 1, 'acf-field', '', 0),
(37, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Nội dung khối 4', 'dream_4', 'publish', 'closed', 'closed', '', 'field_618a2f211f86b', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=37', 11, 'acf-field', '', 0),
(38, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh đại diện', 'avar_dream_4', 'publish', 'closed', 'closed', '', 'field_618a2f321f86c', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 37, 'http://localhost/flc-gialai/?post_type=acf-field&p=38', 0, 'acf-field', '', 0),
(39, 1, '2021-11-09 08:22:06', '2021-11-09 08:22:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Nội dung', 'content_dream_4', 'publish', 'closed', 'closed', '', 'field_618a2f641f86d', '', '', '2021-11-09 08:22:06', '2021-11-09 08:22:06', '', 37, 'http://localhost/flc-gialai/?post_type=acf-field&p=39', 1, 'acf-field', '', 0),
(40, 1, '2021-11-09 08:23:02', '2021-11-09 08:23:02', '', 'bn-1', '', 'inherit', 'open', 'closed', '', 'bn-1', '', '', '2021-11-09 08:23:02', '2021-11-09 08:23:02', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/bn-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-11-09 08:23:02', '2021-11-09 08:23:02', '', 'bn-2', '', 'inherit', 'open', 'closed', '', 'bn-2', '', '', '2021-11-09 08:23:02', '2021-11-09 08:23:02', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/bn-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-11-09 08:23:04', '2021-11-09 08:23:04', '', 'bn-3', 'pink heather landscape with a blue sky; Shutterstock ID 539696089; purchase_order: -; job: -; client: -; other: -', 'inherit', 'open', 'closed', '', 'bn-3', '', '', '2021-11-09 08:23:04', '2021-11-09 08:23:04', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/bn-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-11-09 08:23:42', '2021-11-09 08:23:42', '', 't-ab-1', '', 'inherit', 'open', 'closed', '', 't-ab-1', '', '', '2021-11-09 08:23:42', '2021-11-09 08:23:42', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/t-ab-1.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2021-11-09 08:24:16', '2021-11-09 08:24:16', '', 'ab-1', '', 'inherit', 'open', 'closed', '', 'ab-1', '', '', '2021-11-09 08:24:16', '2021-11-09 08:24:16', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/ab-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-11-09 08:26:14', '2021-11-09 08:26:14', '', 'ab-abs', '', 'inherit', 'open', 'closed', '', 'ab-abs', '', '', '2021-11-09 08:26:14', '2021-11-09 08:26:14', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/ab-abs.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-11-09 08:26:24', '2021-11-09 08:26:24', '', 'h-ab', '', 'inherit', 'open', 'closed', '', 'h-ab', '', '', '2021-11-09 08:26:24', '2021-11-09 08:26:24', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/h-ab.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2021-11-09 08:26:43', '2021-11-09 08:26:43', '', 'ab-2', '', 'inherit', 'open', 'closed', '', 'ab-2', '', '', '2021-11-09 08:26:43', '2021-11-09 08:26:43', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/ab-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-11-09 08:27:01', '2021-11-09 08:27:01', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-09 08:27:01', '2021-11-09 08:27:01', '', 10, 'http://localhost/flc-gialai/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-11-09 08:28:04', '2021-11-09 08:28:04', '', 'title-dream', '', 'inherit', 'open', 'closed', '', 'title-dream', '', '', '2021-11-09 08:28:04', '2021-11-09 08:28:04', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/title-dream.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2021-11-09 08:29:04', '2021-11-09 08:29:04', '', 'dream-1', '', 'inherit', 'open', 'closed', '', 'dream-1', '', '', '2021-11-09 08:29:04', '2021-11-09 08:29:04', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/dream-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-11-09 08:29:22', '2021-11-09 08:29:22', '', 'dream-2', '', 'inherit', 'open', 'closed', '', 'dream-2', '', '', '2021-11-09 08:29:22', '2021-11-09 08:29:22', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/dream-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-11-09 08:29:37', '2021-11-09 08:29:37', '', 'dream-3', '', 'inherit', 'open', 'closed', '', 'dream-3', '', '', '2021-11-09 08:29:37', '2021-11-09 08:29:37', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/dream-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2021-11-09 08:29:50', '2021-11-09 08:29:50', '', 'dream-4', '', 'inherit', 'open', 'closed', '', 'dream-4', '', '', '2021-11-09 08:29:50', '2021-11-09 08:29:50', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/dream-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2021-11-09 08:30:02', '2021-11-09 08:30:02', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-09 08:30:02', '2021-11-09 08:30:02', '', 10, 'http://localhost/flc-gialai/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-11-09 10:25:05', '2021-11-09 10:25:05', 'Bắp hay còn gọi là ngô, là một loại trái có nhiều protein, chất xơ và vitamin A, C,… đều là những chất dinh dưỡng cần thiết cho cơ thể. Bắp có nhiều loại khác nhau như bắp nếp, bắp mỹ, bắp lai,… có thể chế biến thành nhiều món ăn khác nhau vô cùng bổ dưỡng.\r\n<h3 id=\"hmenuid1\">1. Bắp nữ hoàng đỏ là gì?</h3>\r\n<h4>Bắp nữ hoàng đỏ có nguồn gốc từ Thái Lan và hoàn toàn không biến đổi gen</h4>\r\n<strong>Bắp nữ hoàng đỏ</strong> có hình dáng tương đồng với các loại bắp khác, tuy nhiên chúng lại <em>có hạt màu đỏ sẫm</em>, đôi lúc lại xen lẫn ánh tím, <em>râu bắp cũng có màu đỏ</em>, vỏ bắp bên ngoài màu xanh và <em>càng vào trong càng có những đường vân màu đỏ tím đậm</em>.\r\n\r\n<img class=\"imgcontent\" title=\"Bắp nữ hoàng đỏ hay còn gọi là bắp tím\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121617555491.jpg\" alt=\"Bắp nữ hoàng đỏ hay còn gọi là bắp tím\" data-id=\"1\" />\r\n\r\n<span class=\"caption\">Bắp nữ hoàng đỏ hay còn gọi là bắp tím</span>\r\n\r\nĐây là giống bắp ngọt đầu tiên tại Việt Nam có thể ăn sống mà không cần phải trải qua chế biến. Bắp đạt <strong>chứng chỉ NON-GMO (không biến đổi gen)</strong>, chỉ được lai tạo với công thức đơn giản – <em>theo Ông Nguyễn Quốc Lý (Giám đốc Trung tâm khảo kiểm nghiệm giống, sản phẩm cây trồng vùng Nam Bộ)</em>.\r\n\r\n<img class=\"lazy\" src=\"https://media.cooky.vn/images/blog-2016/bap-do-nu-hoang-cooky-9.jpg\" alt=\"\" />\r\n<em>Bắp nữ hoàng đỏ hoàn toàn không biến đổi gen</em>\r\n<h3 id=\"hmenuid2\">2. Bắp nữ hoàng đỏ có cộng dụng gì?</h3>\r\nTheo những nghiên cứu tại <em>Đại Học Doshiha – Nhật Bản</em> đã chứng minh rằng:\r\n<h4 id=\"1hchildmenuid1\"><b>Giúp ngăn ngừa ung thư</b></h4>\r\nUng thư được gây nên bởi các gốc tự do trong cơ thể. Chính vì thế, thành phần trong bắp nữ hoàng đỏ có chứa nhiều chất oxy hoá có tác dụng làm giảm tỉ lệ sinh sôi của các gốc tự do này giúp ngăn ngừa ung thư khá tốt.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Bắp nữ hoàng đỏ giúp ngăn ngừa ung thư\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618134604.jpg\" alt=\"Bắp nữ hoàng đỏ giúp ngăn ngừa ung thư\" data-id=\"2\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618134604.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Bắp nữ hoàng đỏ giúp ngăn ngừa ung thư</span>\r\n<h4 id=\"1hchildmenuid2\"><b>Giúp đẹp da</b></h4>\r\nTrong bắp nữ hoàng đỏ có chứa chất C3G (Cyanidin 3-glucoside) – đây là chất có tác dụng làm giảm hoạt động của các gốc tự do độc được tạo ra khi cơ thể mệt mỏi hay gặp stress sẽ giúp làm chậm quá trình lão hóa và làn da được trẻ hóa hơn.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618248275.jpg\" alt=\"\" data-id=\"3\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618248275.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Giúp đẹp da</span>\r\n<h4 id=\"1hchildmenuid3\"><b>Tốt cho mắt</b></h4>\r\nLutein và zeaxanthin là hai chất chống oxy hoá có trong bắp nữ hoàng đỏ với công dụng làm giảm khả năng phát triển các bệnh nghiêm trọng của mắt như đục thủy tinh thể hoặc thoái hóa điểm vàng.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Tốt cho mắt\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618338903.jpg\" alt=\"Tốt cho mắt\" data-id=\"4\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618338903.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Tốt cho mắt</span>\r\n<h4 id=\"1hchildmenuid4\"><b>Tốt cho tim mạch</b></h4>\r\nThành phần của bắp nữ hoàng đỏ có chứa sắc tố anthocyanin giúp điều hòa huyết áp, cân bằng huyết áp và nhịp tim.\r\n<h4 id=\"1hchildmenuid5\"><b>Ngăn ngừa béo phì</b></h4>\r\nSắc tố C3G trong bắp nữ hoàng đỏ còn giúp thanh mát, thanh lọc và giải nhiệt cơ thể và tăng khả năng ngăn ngừa tình trạng béo phì khá tốt.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Ngăn ngừa béo phì\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618505538.jpg\" alt=\"Ngăn ngừa béo phì\" data-id=\"5\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618505538.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Ngăn ngừa béo phì</span>\r\n\r\nNgoài ra, bắp nữ hoàng đỏ còn nhiều công dụng khác như giúp kháng viêm, chống oxy hoá và tốt cho thận,…\r\n<h3 id=\"hmenuid3\">3. Bắp nữ hoàng đỏ nên ăn sống hay ăn chín?</h3>\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Bắp nữ hoàng đỏ có một hương vị thơm, thanh mát và giòn ngọt\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619159217.jpg\" alt=\"Bắp nữ hoàng đỏ có một hương vị thơm, thanh mát và giòn ngọt\" data-id=\"6\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619159217.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Bắp nữ hoàng đỏ có một hương vị thơm, thanh mát và giòn ngọt</span>\r\n\r\nBắp nữ hoàng đỏ có một hương<b> vị thơm, thanh mát và giòn ngọt</b> và đây cũng là loại bắp đầu tiên ở Việt Nam có thể ăn sống. Bắp này bạn <b>có thể ăn trực tiếp hoặc dùng chín khi chế biến thành nhiều món ăn khác nhau.</b>\r\n\r\n<b>Lưu ý:</b> Bắp nữ hoàng đỏ không nên mang đi luộc vì khi luộc màu sắc của bắp sẽ bị giảm cũng như làm mất đi nhiều chất dinh dưỡng cần thiết.\r\n<h3 id=\"hmenuid4\">4. Bắp nữ hoàng đỏ làm món gì ngon?</h3>\r\n<h4 id=\"3hchildmenuid1\"><b>Salad bắp nữ hoàng đỏ</b></h4>\r\nLoại bắp này nếu dùng ăn sống thì sẽ giữ được nhiều chất dinh dưỡng vốn có của nó. Chính vì thế, bạn có <b>thể kết hợp với bắp nữ hoàng đỏ với một số loại rau củ khác để tạo thành món salad</b> thì không còn gì ngon bằng.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Salad bắp nữ hoàng đỏ\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619371971.jpg\" alt=\"Salad bắp nữ hoàng đỏ\" data-id=\"7\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619371971.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Salad bắp nữ hoàng đỏ</span>\r\n<h4 id=\"3hchildmenuid2\"><b>Sữa bắp nữ hoàng đỏ</b></h4>\r\nBên cạnh đó, món <b>sữa bắp nữ hoàng đỏ cũng là loại nước uống vô cùng dinh dưỡng</b> và tốt cho cơ thể.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Sữa bắp nữ hoàng đỏ\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619454833.jpg\" alt=\"Sữa bắp nữ hoàng đỏ\" data-id=\"8\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619454833.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Sữa bắp nữ hoàng đỏ</span>\r\n<h4 id=\"3hchildmenuid3\"><b>Chè dừa dẻo trân châu bắp nữ hoàng đỏ</b></h4>\r\nGiữa thời tiết nắng nóng thì một ly <b>chè dừa dẻo trân châu bắp nữ hoàng đỏ</b> thì sẽ là món giúp giải nhiệt khá tốt cho bạn.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Chè dừa dẻo trân châu bắp nữ hoàng đỏ\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121620011642.jpg\" alt=\"Chè dừa dẻo trân châu bắp nữ hoàng đỏ\" data-id=\"9\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121620011642.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Chè dừa dẻo trân châu bắp nữ hoàng đỏ</span>\r\n<h3 id=\"hmenuid6\">5. Bắp nữ hoàng đỏ giá bao nhiêu?</h3>\r\nBắp nữ hoàng đỏ hơi hiếm và không được nhiều người dân trồng do kinh phí cao, nên giá bắp này dao động từ <b>20.000 – 50.000VND/trái</b>, đáp ứng nhu cầu thưởng thức của một số người muốn trải nghiệm về hương vị mới lạ từ giống bắp này.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Giá bắp nữ hoàng đỏ dao động từ 20.000 - 50.000VND/trái\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-loi-ich-ra-sao-an-nhu-the-nao-202107121616293643.jpg\" alt=\"Giá bắp nữ hoàng đỏ dao động từ 20.000 - 50.000VND/trái\" data-id=\"11\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-loi-ich-ra-sao-an-nhu-the-nao-202107121616293643.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Giá bắp nữ hoàng đỏ dao động từ 20.000 – 50.000VND/trái</span>', 'Bắp nữ hoàng đỏ là gì? Công dụng, cách ăn và giá thành', '', 'publish', 'open', 'open', '', 'bap-nu-hoang-do-la-gi-cong-dung-cach-an-va-gia-thanh', '', '', '2021-11-09 10:25:05', '2021-11-09 10:25:05', '', 0, 'http://localhost/flc-gialai/?p=55', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(56, 1, '2021-11-09 10:24:20', '2021-11-09 10:24:20', '', 'new-1', '', 'inherit', 'open', 'closed', '', 'new-1', '', '', '2021-11-09 10:24:20', '2021-11-09 10:24:20', '', 55, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/new-1.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2021-11-09 10:24:22', '2021-11-09 10:24:22', '', 'new-2', '', 'inherit', 'open', 'closed', '', 'new-2', '', '', '2021-11-09 10:24:22', '2021-11-09 10:24:22', '', 55, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/new-2.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2021-11-09 10:24:24', '2021-11-09 10:24:24', '', 'new-3', '', 'inherit', 'open', 'closed', '', 'new-3', '', '', '2021-11-09 10:24:24', '2021-11-09 10:24:24', '', 55, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/new-3.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2021-11-09 10:24:26', '2021-11-09 10:24:26', '', 'new-4', '', 'inherit', 'open', 'closed', '', 'new-4', '', '', '2021-11-09 10:24:26', '2021-11-09 10:24:26', '', 55, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/new-4.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2021-11-09 10:24:28', '2021-11-09 10:24:28', '', 'new-5', '', 'inherit', 'open', 'closed', '', 'new-5', '', '', '2021-11-09 10:24:28', '2021-11-09 10:24:28', '', 55, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/new-5.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2021-11-09 10:24:30', '2021-11-09 10:24:30', '', 'new-6', '', 'inherit', 'open', 'closed', '', 'new-6', '', '', '2021-11-09 10:24:30', '2021-11-09 10:24:30', '', 55, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/new-6.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2021-11-09 10:24:33', '2021-11-09 10:24:33', '', 'new-7', '', 'inherit', 'open', 'closed', '', 'new-7', '', '', '2021-11-09 10:24:33', '2021-11-09 10:24:33', '', 55, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/new-7.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2021-11-09 10:24:35', '2021-11-09 10:24:35', '', 'new-8', '', 'inherit', 'open', 'closed', '', 'new-8', '', '', '2021-11-09 10:24:35', '2021-11-09 10:24:35', '', 55, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/new-8.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2021-11-09 10:24:37', '2021-11-09 10:24:37', '', 'new-9', '', 'inherit', 'open', 'closed', '', 'new-9', '', '', '2021-11-09 10:24:37', '2021-11-09 10:24:37', '', 55, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/new-9.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2021-11-09 10:25:05', '2021-11-09 10:25:05', 'Bắp hay còn gọi là ngô, là một loại trái có nhiều protein, chất xơ và vitamin A, C,… đều là những chất dinh dưỡng cần thiết cho cơ thể. Bắp có nhiều loại khác nhau như bắp nếp, bắp mỹ, bắp lai,… có thể chế biến thành nhiều món ăn khác nhau vô cùng bổ dưỡng.\r\n<h3 id=\"hmenuid1\">1. Bắp nữ hoàng đỏ là gì?</h3>\r\n<h4>Bắp nữ hoàng đỏ có nguồn gốc từ Thái Lan và hoàn toàn không biến đổi gen</h4>\r\n<strong>Bắp nữ hoàng đỏ</strong> có hình dáng tương đồng với các loại bắp khác, tuy nhiên chúng lại <em>có hạt màu đỏ sẫm</em>, đôi lúc lại xen lẫn ánh tím, <em>râu bắp cũng có màu đỏ</em>, vỏ bắp bên ngoài màu xanh và <em>càng vào trong càng có những đường vân màu đỏ tím đậm</em>.\r\n\r\n<img class=\"imgcontent\" title=\"Bắp nữ hoàng đỏ hay còn gọi là bắp tím\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121617555491.jpg\" alt=\"Bắp nữ hoàng đỏ hay còn gọi là bắp tím\" data-id=\"1\" />\r\n\r\n<span class=\"caption\">Bắp nữ hoàng đỏ hay còn gọi là bắp tím</span>\r\n\r\nĐây là giống bắp ngọt đầu tiên tại Việt Nam có thể ăn sống mà không cần phải trải qua chế biến. Bắp đạt <strong>chứng chỉ NON-GMO (không biến đổi gen)</strong>, chỉ được lai tạo với công thức đơn giản – <em>theo Ông Nguyễn Quốc Lý (Giám đốc Trung tâm khảo kiểm nghiệm giống, sản phẩm cây trồng vùng Nam Bộ)</em>.\r\n\r\n<img class=\"lazy\" src=\"https://media.cooky.vn/images/blog-2016/bap-do-nu-hoang-cooky-9.jpg\" alt=\"\" />\r\n<em>Bắp nữ hoàng đỏ hoàn toàn không biến đổi gen</em>\r\n<h3 id=\"hmenuid2\">2. Bắp nữ hoàng đỏ có cộng dụng gì?</h3>\r\nTheo những nghiên cứu tại <em>Đại Học Doshiha – Nhật Bản</em> đã chứng minh rằng:\r\n<h4 id=\"1hchildmenuid1\"><b>Giúp ngăn ngừa ung thư</b></h4>\r\nUng thư được gây nên bởi các gốc tự do trong cơ thể. Chính vì thế, thành phần trong bắp nữ hoàng đỏ có chứa nhiều chất oxy hoá có tác dụng làm giảm tỉ lệ sinh sôi của các gốc tự do này giúp ngăn ngừa ung thư khá tốt.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Bắp nữ hoàng đỏ giúp ngăn ngừa ung thư\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618134604.jpg\" alt=\"Bắp nữ hoàng đỏ giúp ngăn ngừa ung thư\" data-id=\"2\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618134604.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Bắp nữ hoàng đỏ giúp ngăn ngừa ung thư</span>\r\n<h4 id=\"1hchildmenuid2\"><b>Giúp đẹp da</b></h4>\r\nTrong bắp nữ hoàng đỏ có chứa chất C3G (Cyanidin 3-glucoside) – đây là chất có tác dụng làm giảm hoạt động của các gốc tự do độc được tạo ra khi cơ thể mệt mỏi hay gặp stress sẽ giúp làm chậm quá trình lão hóa và làn da được trẻ hóa hơn.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618248275.jpg\" alt=\"\" data-id=\"3\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618248275.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Giúp đẹp da</span>\r\n<h4 id=\"1hchildmenuid3\"><b>Tốt cho mắt</b></h4>\r\nLutein và zeaxanthin là hai chất chống oxy hoá có trong bắp nữ hoàng đỏ với công dụng làm giảm khả năng phát triển các bệnh nghiêm trọng của mắt như đục thủy tinh thể hoặc thoái hóa điểm vàng.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Tốt cho mắt\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618338903.jpg\" alt=\"Tốt cho mắt\" data-id=\"4\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618338903.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Tốt cho mắt</span>\r\n<h4 id=\"1hchildmenuid4\"><b>Tốt cho tim mạch</b></h4>\r\nThành phần của bắp nữ hoàng đỏ có chứa sắc tố anthocyanin giúp điều hòa huyết áp, cân bằng huyết áp và nhịp tim.\r\n<h4 id=\"1hchildmenuid5\"><b>Ngăn ngừa béo phì</b></h4>\r\nSắc tố C3G trong bắp nữ hoàng đỏ còn giúp thanh mát, thanh lọc và giải nhiệt cơ thể và tăng khả năng ngăn ngừa tình trạng béo phì khá tốt.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Ngăn ngừa béo phì\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618505538.jpg\" alt=\"Ngăn ngừa béo phì\" data-id=\"5\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121618505538.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Ngăn ngừa béo phì</span>\r\n\r\nNgoài ra, bắp nữ hoàng đỏ còn nhiều công dụng khác như giúp kháng viêm, chống oxy hoá và tốt cho thận,…\r\n<h3 id=\"hmenuid3\">3. Bắp nữ hoàng đỏ nên ăn sống hay ăn chín?</h3>\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Bắp nữ hoàng đỏ có một hương vị thơm, thanh mát và giòn ngọt\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619159217.jpg\" alt=\"Bắp nữ hoàng đỏ có một hương vị thơm, thanh mát và giòn ngọt\" data-id=\"6\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619159217.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Bắp nữ hoàng đỏ có một hương vị thơm, thanh mát và giòn ngọt</span>\r\n\r\nBắp nữ hoàng đỏ có một hương<b> vị thơm, thanh mát và giòn ngọt</b> và đây cũng là loại bắp đầu tiên ở Việt Nam có thể ăn sống. Bắp này bạn <b>có thể ăn trực tiếp hoặc dùng chín khi chế biến thành nhiều món ăn khác nhau.</b>\r\n\r\n<b>Lưu ý:</b> Bắp nữ hoàng đỏ không nên mang đi luộc vì khi luộc màu sắc của bắp sẽ bị giảm cũng như làm mất đi nhiều chất dinh dưỡng cần thiết.\r\n<h3 id=\"hmenuid4\">4. Bắp nữ hoàng đỏ làm món gì ngon?</h3>\r\n<h4 id=\"3hchildmenuid1\"><b>Salad bắp nữ hoàng đỏ</b></h4>\r\nLoại bắp này nếu dùng ăn sống thì sẽ giữ được nhiều chất dinh dưỡng vốn có của nó. Chính vì thế, bạn có <b>thể kết hợp với bắp nữ hoàng đỏ với một số loại rau củ khác để tạo thành món salad</b> thì không còn gì ngon bằng.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Salad bắp nữ hoàng đỏ\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619371971.jpg\" alt=\"Salad bắp nữ hoàng đỏ\" data-id=\"7\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619371971.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Salad bắp nữ hoàng đỏ</span>\r\n<h4 id=\"3hchildmenuid2\"><b>Sữa bắp nữ hoàng đỏ</b></h4>\r\nBên cạnh đó, món <b>sữa bắp nữ hoàng đỏ cũng là loại nước uống vô cùng dinh dưỡng</b> và tốt cho cơ thể.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Sữa bắp nữ hoàng đỏ\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619454833.jpg\" alt=\"Sữa bắp nữ hoàng đỏ\" data-id=\"8\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121619454833.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Sữa bắp nữ hoàng đỏ</span>\r\n<h4 id=\"3hchildmenuid3\"><b>Chè dừa dẻo trân châu bắp nữ hoàng đỏ</b></h4>\r\nGiữa thời tiết nắng nóng thì một ly <b>chè dừa dẻo trân châu bắp nữ hoàng đỏ</b> thì sẽ là món giúp giải nhiệt khá tốt cho bạn.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Chè dừa dẻo trân châu bắp nữ hoàng đỏ\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121620011642.jpg\" alt=\"Chè dừa dẻo trân châu bắp nữ hoàng đỏ\" data-id=\"9\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-cong-dung-cua-bap-nu-hoang-do-202011121620011642.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Chè dừa dẻo trân châu bắp nữ hoàng đỏ</span>\r\n<h3 id=\"hmenuid6\">5. Bắp nữ hoàng đỏ giá bao nhiêu?</h3>\r\nBắp nữ hoàng đỏ hơi hiếm và không được nhiều người dân trồng do kinh phí cao, nên giá bắp này dao động từ <b>20.000 – 50.000VND/trái</b>, đáp ứng nhu cầu thưởng thức của một số người muốn trải nghiệm về hương vị mới lạ từ giống bắp này.\r\n\r\n<img class=\"imgcontent lazy initial loaded\" title=\"Giá bắp nữ hoàng đỏ dao động từ 20.000 - 50.000VND/trái\" src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-loi-ich-ra-sao-an-nhu-the-nao-202107121616293643.jpg\" alt=\"Giá bắp nữ hoàng đỏ dao động từ 20.000 - 50.000VND/trái\" data-id=\"11\" data-src=\"https://cdn.tgdd.vn/Files/2020/11/12/1306291/bap-nu-hoang-do-la-gi-loi-ich-ra-sao-an-nhu-the-nao-202107121616293643.jpg\" data-was-processed=\"true\" />\r\n\r\n<span class=\"caption\">Giá bắp nữ hoàng đỏ dao động từ 20.000 – 50.000VND/trái</span>', 'Bắp nữ hoàng đỏ là gì? Công dụng, cách ăn và giá thành', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-11-09 10:25:05', '2021-11-09 10:25:05', '', 55, 'http://localhost/flc-gialai/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-11-09 10:25:43', '2021-11-09 10:25:43', '<p class=\"p\">Bạn có thể nghĩ rằng thực phẩm hữu cơ sẽ có giá thấp hơn thực phẩm thông thường vì việc sản xuất không phải trả chi phí cho hóa chất, thuốc trừ sâu tổng hợp và kháng sinh. Tuy nhiên, các sản phẩm hữu cơ thường có giá cao hơn từ 20% đến 100% so với các sản phẩm tương đương thông thường. Vì sao lại như vậy? Dưới đây là 10 yếu tố hàng đầu góp phần làm tăng giá thực phẩm hữu cơ:</p>\r\n\r\n<h2 class=\"p\"><b>1. KHÔNG CÓ HÓA CHẤT = NHIỀU LAO ĐỘNG</b></h2>\r\n<p class=\"p\">Nông dân thông thường sử dụng tất cả các hóa chất và thuốc trừ sâu tổng hợp vì cuối cùng họ giảm chi phí sản xuất bằng cách hoàn thành công việc nhanh hơn và hiệu quả hơn. Và khi không có chúng, nông dân hữu cơ phải thuê thêm công nhân cho các nhiệm vụ như làm cỏ bằng tay, làm sạch nước bị ô nhiễm và khắc phục ô nhiễm thuốc trừ sâu. Đó là lí do vì sao đồ hữu cơ luôn mắc.</p>\r\n<p class=\"p\"><img src=\"https://songorganic.vn/datafiles/img_data/images/img5801p35.jpg\" alt=\"\" width=\"600\" height=\"309\" /></p>\r\n\r\n<h2 class=\"p\"><b>2. </b><b>CẦU ÁP ĐẢO CUNG:</b></h2>\r\n<p class=\"p\">Doanh số bán lẻ thực phẩm hữu cơ đã tăng từ 3,6 tỷ đô la năm 1997 lên 21,1 tỷ đô la năm 2008, theo USDA và 58% người Mỹ cho rằng họ thích ăn thực phẩm hữu cơ hơn thực phẩm không hữu cơ. Tuy nhiên, đất nông nghiệp hữu cơ chỉ chiếm 0,9% tổng diện tích đất nông nghiệp trên toàn thế giới và các trang trại hữu cơ có xu hướng sản xuất ít hơn các trang trại thông thường. Vì vậy, lượng sản phẩm hữu cơ thu hoạch là ít hơn sản phẩm thông thường gây ra tình trạng cầu lớn hơn cung và từ đó giá cả cũng tăng theo.</p>\r\n\r\n<h2 class=\"p\"><b>3. CHI PHÍ PHÂN BÓN CAO HƠN CHO CÂY TRỒNG HỮU CƠ</b></h2>\r\n<p class=\"p\">Bùn thải và phân bón hóa học có thể không phải là thứ bạn muốn trong thực phẩm của mình nhưng nông dân thông thường sử dụng chúng vì chúng không tốn nhiều chi phí và thường rẻ tiền. Nông dân hữu cơ tránh những giải pháp rẻ tiền này để giữ cho cây trồng của họ tự nhiên và sạch nên thay vào đó là sử dụng phân hữu cơ và phân động vật với giá cả đắt hơn.</p>\r\n\r\n<h2 class=\"p\"><b>4. LUÂN CANH</b></h2>\r\n<p class=\"p\">Thay vì sử dụng thuốc diệt cỏ hóa học, nông dân hữu cơ tiến hành luân canh cây trồng một cách tinh tế để giữ cho đất của họ tránh sâu bệnh và ngăn chặn sự phát triển của cỏ dại. Sau khi thu hoạch một vụ mùa, một nông dân hữu cơ có thể sử dụng khu vực đó để trồng một loại cây che phủ khác, bổ sung nitơ vào đất để mang lại lợi ích cho các vụ mùa.Nông dân thông thường thì khác họ có thể sử dụng mọi mẫu đất để trồng các loại cây trồng có lợi nhuận cao nhất. Vì vậy luân canh cây trồng làm giảm tần suất và sản lượng các loại cây trồng có lãi nên nông dân hữu cơ không thể sản xuất số lượng lớn hơn với hiệu quả nhất như người nông dân thông thường.</p>\r\n\r\n<h2 class=\"p\"><b>5. CHI PHÍ XỬ LÝ SAU THU HOẠCH</b></h2>\r\n<p class=\"p\">Để tránh ô nhiễm chéo, sản phẩm hữu cơ phải được tách ra khỏi sản phẩm thông thường sau khi được thu hoạch. Việc vận chuyển với số lượng ít và tách biệt là nguyên nhân làm tăng chi phí. Ngoài ra, các trang trại hữu cơ thường nằm cách xa các thành phố lớn, càng làm tăng chi phí vận chuyển.</p>\r\n<p class=\"p\"><img src=\"https://media.istockphoto.com/photos/woman-accepting-groceries-box-from-delivery-man-at-home-picture-id953800868?k=20&amp;m=953800868&amp;s=612x612&amp;w=0&amp;h=Xu3GKek_DFWikSeK_1ku7NCcVECT859bKtjXuaQMamQ=\" alt=\"người phụ nữ chấp nhận hộp tạp hóa từ người đàn ông giao hàng ở nhà - vận chuyển rau hình ảnh sẵn có, bức ảnh &amp; hình ảnh trả phí bản quyền một lần\" /></p>\r\n\r\n<h2 class=\"p\"><b>6. CHỨNG NHẬN HỮU CƠ</b></h2>\r\n<p class=\"p\">Có được chứng nhận hữu cơ USDA không phải là việc dễ dàng hay rẻ tiền. Ngoài các hoạt động canh tác thông thường, các cơ sở trang trại và phương thức sản xuất phải tuân thủ các tiêu chuẩn nhất định, thậm chí là sửa chữa các cơ sở khi có yêu cầu. Nhân viên phải được thuê để duy trì việc lưu trữ hồ sơ hàng ngày nghiêm ngặt và phải có sẵn để kiểm tra bất cứ lúc nào. Và các trang trại hữu cơ phải trả phí kiểm tra chứng nhận hàng năm, bắt đầu từ $ 400 đến $ 2.000 một năm, tùy thuộc vào cơ quan và quy mô hoạt động.</p>\r\n<p class=\"p\"><img src=\"https://songorganic.vn/datafiles/img_data/images/Organic%20Seal%20-%20small.png\" alt=\"\" width=\"417\" height=\"417\" /></p>\r\n\r\n<h2 class=\"p\"><b>7. CHI PHÍ BÙ LỖ CAO HƠN</b></h2>\r\n<p class=\"p\">Nông dân thông thường sử dụng một số hóa chất để giảm thiểu rủi ro mất mùa. Ví dụ, thuốc trừ sâu tổng hợp đẩy lùi côn trùng hay kháng sinh duy trì sức khỏe của vật nuôi. Vì nông dân hữu cơ không sử dụng những thứ này, nên thiệt hại của họ cao hơn, khiến người nông dân tốn nhiều tiền hơn và tăng chi phí cho người tiêu dùng. Ngoài ra, không có chất bảo quản, thực phẩm hữu cơ phải đối mặt với thời gian bảo quản và thời hạn sử dụng ngắn hơn.</p>\r\n\r\n<h2 class=\"p\"><b>8. ĐIỀU KIỆN SỐNG TỐT HƠN CHO CHĂN NUÔI</b></h2>\r\n<p class=\"p\">Tiêu chuẩn cao hơn cho phúc lợi động vật cũng có nghĩa là chi phí nhiều hơn cho các trang trại hữu cơ. Theo Tổ chức Lương thực và Nông nghiệp Liên Hợp Quốc,  thức ăn hữu cơ cho gia súc và vật nuôi khác có thể có giá gấp đôi so với thức ăn thông thường.</p>\r\n\r\n<h2 class=\"p\"><b>9. THỰC PHẨM HỮU CƠ PHÁT TRIỂN CHẬM HƠN</b></h2>\r\n<p class=\"p\">Thời gian là tiền bạc. Các trang trại hữu cơ thường mất nhiều thời gian hơn để sản xuất cây trồng vì chúng không sử dụng các hóa chất và kích thích tố tăng trưởng.</p>\r\n\r\n<h2 class=\"p\"><b>10. TRỢ CẤP</b></h2>\r\n<p class=\"p\">Trợ cấp của chính phủ cho thực phẩm hữu cơ thấp hơn nhiều so với thực phẩm thông thường.</p>\r\n<p class=\"p\"><img src=\"https://songorganic.vn/datafiles/img_data/images/Government-Subsidy-image.png\" alt=\"\" width=\"631\" height=\"373\" /></p>\r\n<p class=\"p\"><span class=\"p\">Vì có quá nhiều lí do mà thực phẩm hữu cơ trở nên không hề rẻ với nhiều người. Tuy nhiên, đầu tư những thứ cho sức khoẻ, cho tương lai là một việc làm vô cùng cần thiết. Hãy sáng suốt và lựa chọn những thứ tốt nhất cho bản thân!</span></p>\r\n\r\n<h2>MUA RAU HỮU CƠ CHẤT LƯỢNG Ở ĐÂU TẠI TP.VINH</h2>\r\n<strong>LUDALA</strong> chuyên cung cấp các loại <strong>rau củ quả sạch</strong> <strong>và an toàn</strong> được trồng theo phương pháp hữu cơ, thủy canh và phương pháp thuận tự nhiên khác. Với phương châm đặt sức khỏe của người tiêu dùng lên hàng đầu, chúng tôi luôn mong muốn gửi đến quý khách hàng những sản phẩm chất lượng, với hương vị thuần khiết, tươi ngon nhất, cho bữa cơm gia đình thêm thơm ngon và đầy dinh dưỡng.', 'TẠI SAO RAU HỮU CƠ (ORGANIC) LẠI ĐẮT HƠN RAU BÌNH THƯỜNG?', '', 'publish', 'open', 'open', '', 'tai-sao-rau-huu-co-organic-lai-dat-hon-rau-binh-thuong', '', '', '2021-11-09 10:25:47', '2021-11-09 10:25:47', '', 0, 'http://localhost/flc-gialai/?p=66', 0, 'post', '', 0),
(67, 1, '2021-11-09 10:25:43', '2021-11-09 10:25:43', '<p class=\"p\">Bạn có thể nghĩ rằng thực phẩm hữu cơ sẽ có giá thấp hơn thực phẩm thông thường vì việc sản xuất không phải trả chi phí cho hóa chất, thuốc trừ sâu tổng hợp và kháng sinh. Tuy nhiên, các sản phẩm hữu cơ thường có giá cao hơn từ 20% đến 100% so với các sản phẩm tương đương thông thường. Vì sao lại như vậy? Dưới đây là 10 yếu tố hàng đầu góp phần làm tăng giá thực phẩm hữu cơ:</p>\r\n\r\n<h2 class=\"p\"><b>1. KHÔNG CÓ HÓA CHẤT = NHIỀU LAO ĐỘNG</b></h2>\r\n<p class=\"p\">Nông dân thông thường sử dụng tất cả các hóa chất và thuốc trừ sâu tổng hợp vì cuối cùng họ giảm chi phí sản xuất bằng cách hoàn thành công việc nhanh hơn và hiệu quả hơn. Và khi không có chúng, nông dân hữu cơ phải thuê thêm công nhân cho các nhiệm vụ như làm cỏ bằng tay, làm sạch nước bị ô nhiễm và khắc phục ô nhiễm thuốc trừ sâu. Đó là lí do vì sao đồ hữu cơ luôn mắc.</p>\r\n<p class=\"p\"><img src=\"https://songorganic.vn/datafiles/img_data/images/img5801p35.jpg\" alt=\"\" width=\"600\" height=\"309\" /></p>\r\n\r\n<h2 class=\"p\"><b>2. </b><b>CẦU ÁP ĐẢO CUNG:</b></h2>\r\n<p class=\"p\">Doanh số bán lẻ thực phẩm hữu cơ đã tăng từ 3,6 tỷ đô la năm 1997 lên 21,1 tỷ đô la năm 2008, theo USDA và 58% người Mỹ cho rằng họ thích ăn thực phẩm hữu cơ hơn thực phẩm không hữu cơ. Tuy nhiên, đất nông nghiệp hữu cơ chỉ chiếm 0,9% tổng diện tích đất nông nghiệp trên toàn thế giới và các trang trại hữu cơ có xu hướng sản xuất ít hơn các trang trại thông thường. Vì vậy, lượng sản phẩm hữu cơ thu hoạch là ít hơn sản phẩm thông thường gây ra tình trạng cầu lớn hơn cung và từ đó giá cả cũng tăng theo.</p>\r\n\r\n<h2 class=\"p\"><b>3. CHI PHÍ PHÂN BÓN CAO HƠN CHO CÂY TRỒNG HỮU CƠ</b></h2>\r\n<p class=\"p\">Bùn thải và phân bón hóa học có thể không phải là thứ bạn muốn trong thực phẩm của mình nhưng nông dân thông thường sử dụng chúng vì chúng không tốn nhiều chi phí và thường rẻ tiền. Nông dân hữu cơ tránh những giải pháp rẻ tiền này để giữ cho cây trồng của họ tự nhiên và sạch nên thay vào đó là sử dụng phân hữu cơ và phân động vật với giá cả đắt hơn.</p>\r\n\r\n<h2 class=\"p\"><b>4. LUÂN CANH</b></h2>\r\n<p class=\"p\">Thay vì sử dụng thuốc diệt cỏ hóa học, nông dân hữu cơ tiến hành luân canh cây trồng một cách tinh tế để giữ cho đất của họ tránh sâu bệnh và ngăn chặn sự phát triển của cỏ dại. Sau khi thu hoạch một vụ mùa, một nông dân hữu cơ có thể sử dụng khu vực đó để trồng một loại cây che phủ khác, bổ sung nitơ vào đất để mang lại lợi ích cho các vụ mùa.Nông dân thông thường thì khác họ có thể sử dụng mọi mẫu đất để trồng các loại cây trồng có lợi nhuận cao nhất. Vì vậy luân canh cây trồng làm giảm tần suất và sản lượng các loại cây trồng có lãi nên nông dân hữu cơ không thể sản xuất số lượng lớn hơn với hiệu quả nhất như người nông dân thông thường.</p>\r\n\r\n<h2 class=\"p\"><b>5. CHI PHÍ XỬ LÝ SAU THU HOẠCH</b></h2>\r\n<p class=\"p\">Để tránh ô nhiễm chéo, sản phẩm hữu cơ phải được tách ra khỏi sản phẩm thông thường sau khi được thu hoạch. Việc vận chuyển với số lượng ít và tách biệt là nguyên nhân làm tăng chi phí. Ngoài ra, các trang trại hữu cơ thường nằm cách xa các thành phố lớn, càng làm tăng chi phí vận chuyển.</p>\r\n<p class=\"p\"><img src=\"https://media.istockphoto.com/photos/woman-accepting-groceries-box-from-delivery-man-at-home-picture-id953800868?k=20&amp;m=953800868&amp;s=612x612&amp;w=0&amp;h=Xu3GKek_DFWikSeK_1ku7NCcVECT859bKtjXuaQMamQ=\" alt=\"người phụ nữ chấp nhận hộp tạp hóa từ người đàn ông giao hàng ở nhà - vận chuyển rau hình ảnh sẵn có, bức ảnh &amp; hình ảnh trả phí bản quyền một lần\" /></p>\r\n\r\n<h2 class=\"p\"><b>6. CHỨNG NHẬN HỮU CƠ</b></h2>\r\n<p class=\"p\">Có được chứng nhận hữu cơ USDA không phải là việc dễ dàng hay rẻ tiền. Ngoài các hoạt động canh tác thông thường, các cơ sở trang trại và phương thức sản xuất phải tuân thủ các tiêu chuẩn nhất định, thậm chí là sửa chữa các cơ sở khi có yêu cầu. Nhân viên phải được thuê để duy trì việc lưu trữ hồ sơ hàng ngày nghiêm ngặt và phải có sẵn để kiểm tra bất cứ lúc nào. Và các trang trại hữu cơ phải trả phí kiểm tra chứng nhận hàng năm, bắt đầu từ $ 400 đến $ 2.000 một năm, tùy thuộc vào cơ quan và quy mô hoạt động.</p>\r\n<p class=\"p\"><img src=\"https://songorganic.vn/datafiles/img_data/images/Organic%20Seal%20-%20small.png\" alt=\"\" width=\"417\" height=\"417\" /></p>\r\n\r\n<h2 class=\"p\"><b>7. CHI PHÍ BÙ LỖ CAO HƠN</b></h2>\r\n<p class=\"p\">Nông dân thông thường sử dụng một số hóa chất để giảm thiểu rủi ro mất mùa. Ví dụ, thuốc trừ sâu tổng hợp đẩy lùi côn trùng hay kháng sinh duy trì sức khỏe của vật nuôi. Vì nông dân hữu cơ không sử dụng những thứ này, nên thiệt hại của họ cao hơn, khiến người nông dân tốn nhiều tiền hơn và tăng chi phí cho người tiêu dùng. Ngoài ra, không có chất bảo quản, thực phẩm hữu cơ phải đối mặt với thời gian bảo quản và thời hạn sử dụng ngắn hơn.</p>\r\n\r\n<h2 class=\"p\"><b>8. ĐIỀU KIỆN SỐNG TỐT HƠN CHO CHĂN NUÔI</b></h2>\r\n<p class=\"p\">Tiêu chuẩn cao hơn cho phúc lợi động vật cũng có nghĩa là chi phí nhiều hơn cho các trang trại hữu cơ. Theo Tổ chức Lương thực và Nông nghiệp Liên Hợp Quốc,  thức ăn hữu cơ cho gia súc và vật nuôi khác có thể có giá gấp đôi so với thức ăn thông thường.</p>\r\n\r\n<h2 class=\"p\"><b>9. THỰC PHẨM HỮU CƠ PHÁT TRIỂN CHẬM HƠN</b></h2>\r\n<p class=\"p\">Thời gian là tiền bạc. Các trang trại hữu cơ thường mất nhiều thời gian hơn để sản xuất cây trồng vì chúng không sử dụng các hóa chất và kích thích tố tăng trưởng.</p>\r\n\r\n<h2 class=\"p\"><b>10. TRỢ CẤP</b></h2>\r\n<p class=\"p\">Trợ cấp của chính phủ cho thực phẩm hữu cơ thấp hơn nhiều so với thực phẩm thông thường.</p>\r\n<p class=\"p\"><img src=\"https://songorganic.vn/datafiles/img_data/images/Government-Subsidy-image.png\" alt=\"\" width=\"631\" height=\"373\" /></p>\r\n<p class=\"p\"><span class=\"p\">Vì có quá nhiều lí do mà thực phẩm hữu cơ trở nên không hề rẻ với nhiều người. Tuy nhiên, đầu tư những thứ cho sức khoẻ, cho tương lai là một việc làm vô cùng cần thiết. Hãy sáng suốt và lựa chọn những thứ tốt nhất cho bản thân!</span></p>\r\n\r\n<h2>MUA RAU HỮU CƠ CHẤT LƯỢNG Ở ĐÂU TẠI TP.VINH</h2>\r\n<strong>LUDALA</strong> chuyên cung cấp các loại <strong>rau củ quả sạch</strong> <strong>và an toàn</strong> được trồng theo phương pháp hữu cơ, thủy canh và phương pháp thuận tự nhiên khác. Với phương châm đặt sức khỏe của người tiêu dùng lên hàng đầu, chúng tôi luôn mong muốn gửi đến quý khách hàng những sản phẩm chất lượng, với hương vị thuần khiết, tươi ngon nhất, cho bữa cơm gia đình thêm thơm ngon và đầy dinh dưỡng.', 'TẠI SAO RAU HỮU CƠ (ORGANIC) LẠI ĐẮT HƠN RAU BÌNH THƯỜNG?', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-11-09 10:25:43', '2021-11-09 10:25:43', '', 66, 'http://localhost/flc-gialai/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-11-09 10:26:21', '2021-11-09 10:26:21', '<a href=\"https://dalattaivinh.com/san-pham/cai-bo-xoi/\"><strong>Cải bó xôi Đà Lạt</strong></a> là đặc sản xứ lạnh Đà Lạt mà nhiều người yêu thích. Ngoài các dững chất rất tốt cho sức khỏe thì cải bó sôi còn có tác dụng làm dược liệu chữa một số bệnh rất tốt. Nhờ thành phần dinh dưỡng đặc biệt trong cải bó sôi nên nó rất tốt cho phụ nữ mang thai.\r\n\r\nSau đây mời các bạn cùng tìm hiểu, tại sao  <strong>cải bó xôi cho bà bầu </strong>lại có nhiều công dụng đến vậy. Các <strong>công dụng của cải bó xôi</strong> là gì?\r\n<h2><strong>12 TÁC DỤNG TIÊU BIỂU CỦA CẢI BÓ XÔI ĐÊM TỚI CHO MẸ BẦU</strong></h2>\r\nNhờ màu xanh đậm nên cải bó sôi chứa rất nhiều các dưỡng chất, mang lại nhiều các lợi ích cho tóc, da, tim mạch.\r\n<ol>\r\n 	<li>Cải bó sôi chứa nhiều các dưỡng chất rất tốt cho cơ thể</li>\r\n 	<li>Tốt cho hệ tiêu hóa, tăng dịch tiêu hóa trị kiết lỵ, phòng ngừa táo bón</li>\r\n 	<li>Giúp chữa viêm</li>\r\n 	<li>Diều hòa huyết áp tốt</li>\r\n 	<li>Bảo vệ cho tim mạch</li>\r\n 	<li>Bổ máu</li>\r\n 	<li>Tốt cho phụ nữ, ngăn ngừa ung thư ở buồng trứng</li>\r\n 	<li>Ngăn ngừa bệnh tiểu đường</li>\r\n 	<li>Tốt cho mắt giúp bảo vệ mắt, trị các chứng quáng gà</li>\r\n 	<li>Hạn chế béo phì</li>\r\n 	<li>Chống ung thư, viêm đặc biệt tốt cho người ung thư tiền liệt tuyến</li>\r\n 	<li>Phát triển chiều cao, bổ xung canxi tốt cho xương và giúp răng chắc khỏe</li>\r\n</ol>\r\n<img class=\"size-full wp-image-2626 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2018/08/cai-bo-xoi-cho-ba-bau.jpg\" alt=\"cai bo xoi cho ba bau\" width=\"501\" height=\"347\" />\r\n<h2>HÀM LƯỢNG DINH DƯỠNG TRONG CẢI BÓ XÔI</h2>\r\n<ul>\r\n 	<li>Cải bó xôi chứa đến 98% là chất dinh dưỡng. Theo nghiên cứu chỉ ra cừ 100g rau cải bó xôi lại chứa đến 2,3g protenin, 81 mcg canxi, 94 mcg axit folic và 3.2g cabohydrat</li>\r\n 	<li>Ngoài ra cải bó xôi còn chứa rất nhiều vitamin A, C, B1,B2, B3 và các axit béo như omega-3, các khaongs chất như : magiê, natri, phốt pho, kali</li>\r\n</ul>\r\n<img class=\"size-full wp-image-2627 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2018/08/cai-bo-xoi-dung-ha.jpg\" alt=\"cai bo xoi dung ha\" width=\"495\" height=\"341\" />\r\n<h2>LỢI ÍCH CỦA CẢI BÓ XÔI ĐEM ĐẾN CHO MẸ BẦU?</h2>\r\nVới lượng duỡng chất giàu có nên cải bó xôi rất có lợi cho bà bầu\r\n<ul>\r\n 	<li>Chứa nhiều canxi</li>\r\n 	<li>Ngăn ngừa dị tật bẩm sinh</li>\r\n 	<li>Ngăn ngừa táo bón và trĩ</li>\r\n 	<li>Tăng miễn dịch</li>\r\n 	<li>Giảm nguy cơ sinh non</li>\r\n 	<li>Ngăn ngừa huyết áp cao</li>\r\n 	<li>Hỗ trợ phát triển phổi</li>\r\n 	<li>Giúp giảm đau</li>\r\n 	<li>Ngăn ngừa thiếu máu</li>\r\n</ul>\r\n<img class=\"size-full wp-image-2625 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2018/08/cai-bo-xoi-da-lat.jpg\" alt=\"cai bo xoi da lat\" width=\"501\" height=\"349\" />\r\n\r\n<strong>Tham khảo: <a href=\"https://dalattaivinh.com/top-20-cac-loai-rau-cu-qua-tot-nhat-cho-be-an-dam/\" target=\"_blank\" rel=\"noopener noreferrer\">Những loại rau cho bé ăn dặm</a></strong>\r\n<h2>MUA CẢI BÓ XÔI CHO MẸ BẦU Ở ĐÂU TẠI TP.VINH?</h2>\r\nĂn nhiều <strong>rau cải bó xôi </strong>rất tốt cho sức khỏe vì vậy bạn nên cung cấp thực phẩm này thường xuyên. Khi mua nên lưu ý mua tại những cửa hàng thực phẩm sạch có nguồn gốc xuất xứ rõ dàng. Tại Ludala chúng tôi chuyên cung cấp các thực phẩm tươi sạch, có nguồn gốc xuất xứ rõ dàng, tốt cho sức khỏe, bạn có thể tham khảo tại đây đê tìm mua các sản phẩm tốt cho sức khỏe.', 'CẢI BÓ XÔI ĐÀ LẠT TỐT CHO SỨC KHỎE BÀ BẦU VÀ THAI NHI NHƯ THẾ NÀO', '', 'publish', 'open', 'open', '', 'cai-bo-xoi-da-lat-tot-cho-suc-khoe-ba-bau-va-thai-nhi-nhu-the-nao', '', '', '2021-11-09 10:26:21', '2021-11-09 10:26:21', '', 0, 'http://localhost/flc-gialai/?p=68', 0, 'post', '', 0),
(69, 1, '2021-11-09 10:26:21', '2021-11-09 10:26:21', '<a href=\"https://dalattaivinh.com/san-pham/cai-bo-xoi/\"><strong>Cải bó xôi Đà Lạt</strong></a> là đặc sản xứ lạnh Đà Lạt mà nhiều người yêu thích. Ngoài các dững chất rất tốt cho sức khỏe thì cải bó sôi còn có tác dụng làm dược liệu chữa một số bệnh rất tốt. Nhờ thành phần dinh dưỡng đặc biệt trong cải bó sôi nên nó rất tốt cho phụ nữ mang thai.\r\n\r\nSau đây mời các bạn cùng tìm hiểu, tại sao  <strong>cải bó xôi cho bà bầu </strong>lại có nhiều công dụng đến vậy. Các <strong>công dụng của cải bó xôi</strong> là gì?\r\n<h2><strong>12 TÁC DỤNG TIÊU BIỂU CỦA CẢI BÓ XÔI ĐÊM TỚI CHO MẸ BẦU</strong></h2>\r\nNhờ màu xanh đậm nên cải bó sôi chứa rất nhiều các dưỡng chất, mang lại nhiều các lợi ích cho tóc, da, tim mạch.\r\n<ol>\r\n 	<li>Cải bó sôi chứa nhiều các dưỡng chất rất tốt cho cơ thể</li>\r\n 	<li>Tốt cho hệ tiêu hóa, tăng dịch tiêu hóa trị kiết lỵ, phòng ngừa táo bón</li>\r\n 	<li>Giúp chữa viêm</li>\r\n 	<li>Diều hòa huyết áp tốt</li>\r\n 	<li>Bảo vệ cho tim mạch</li>\r\n 	<li>Bổ máu</li>\r\n 	<li>Tốt cho phụ nữ, ngăn ngừa ung thư ở buồng trứng</li>\r\n 	<li>Ngăn ngừa bệnh tiểu đường</li>\r\n 	<li>Tốt cho mắt giúp bảo vệ mắt, trị các chứng quáng gà</li>\r\n 	<li>Hạn chế béo phì</li>\r\n 	<li>Chống ung thư, viêm đặc biệt tốt cho người ung thư tiền liệt tuyến</li>\r\n 	<li>Phát triển chiều cao, bổ xung canxi tốt cho xương và giúp răng chắc khỏe</li>\r\n</ol>\r\n<img class=\"size-full wp-image-2626 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2018/08/cai-bo-xoi-cho-ba-bau.jpg\" alt=\"cai bo xoi cho ba bau\" width=\"501\" height=\"347\" />\r\n<h2>HÀM LƯỢNG DINH DƯỠNG TRONG CẢI BÓ XÔI</h2>\r\n<ul>\r\n 	<li>Cải bó xôi chứa đến 98% là chất dinh dưỡng. Theo nghiên cứu chỉ ra cừ 100g rau cải bó xôi lại chứa đến 2,3g protenin, 81 mcg canxi, 94 mcg axit folic và 3.2g cabohydrat</li>\r\n 	<li>Ngoài ra cải bó xôi còn chứa rất nhiều vitamin A, C, B1,B2, B3 và các axit béo như omega-3, các khaongs chất như : magiê, natri, phốt pho, kali</li>\r\n</ul>\r\n<img class=\"size-full wp-image-2627 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2018/08/cai-bo-xoi-dung-ha.jpg\" alt=\"cai bo xoi dung ha\" width=\"495\" height=\"341\" />\r\n<h2>LỢI ÍCH CỦA CẢI BÓ XÔI ĐEM ĐẾN CHO MẸ BẦU?</h2>\r\nVới lượng duỡng chất giàu có nên cải bó xôi rất có lợi cho bà bầu\r\n<ul>\r\n 	<li>Chứa nhiều canxi</li>\r\n 	<li>Ngăn ngừa dị tật bẩm sinh</li>\r\n 	<li>Ngăn ngừa táo bón và trĩ</li>\r\n 	<li>Tăng miễn dịch</li>\r\n 	<li>Giảm nguy cơ sinh non</li>\r\n 	<li>Ngăn ngừa huyết áp cao</li>\r\n 	<li>Hỗ trợ phát triển phổi</li>\r\n 	<li>Giúp giảm đau</li>\r\n 	<li>Ngăn ngừa thiếu máu</li>\r\n</ul>\r\n<img class=\"size-full wp-image-2625 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2018/08/cai-bo-xoi-da-lat.jpg\" alt=\"cai bo xoi da lat\" width=\"501\" height=\"349\" />\r\n\r\n<strong>Tham khảo: <a href=\"https://dalattaivinh.com/top-20-cac-loai-rau-cu-qua-tot-nhat-cho-be-an-dam/\" target=\"_blank\" rel=\"noopener noreferrer\">Những loại rau cho bé ăn dặm</a></strong>\r\n<h2>MUA CẢI BÓ XÔI CHO MẸ BẦU Ở ĐÂU TẠI TP.VINH?</h2>\r\nĂn nhiều <strong>rau cải bó xôi </strong>rất tốt cho sức khỏe vì vậy bạn nên cung cấp thực phẩm này thường xuyên. Khi mua nên lưu ý mua tại những cửa hàng thực phẩm sạch có nguồn gốc xuất xứ rõ dàng. Tại Ludala chúng tôi chuyên cung cấp các thực phẩm tươi sạch, có nguồn gốc xuất xứ rõ dàng, tốt cho sức khỏe, bạn có thể tham khảo tại đây đê tìm mua các sản phẩm tốt cho sức khỏe.', 'CẢI BÓ XÔI ĐÀ LẠT TỐT CHO SỨC KHỎE BÀ BẦU VÀ THAI NHI NHƯ THẾ NÀO', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2021-11-09 10:26:21', '2021-11-09 10:26:21', '', 68, 'http://localhost/flc-gialai/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-11-09 10:26:49', '2021-11-09 10:26:49', 'Cà rốt là loại củ có nhiều dinh dưỡng, tốt cho sức khỏe đặc biệt là mắt. Chính vì vậy, bổ sung cà rốt vào bữa ăn hằng ngày là điều rất cần thiết. Nếu bạn đang phân vân không biết làm món ăn gì từ loại củ này thì đừng bỏ qua chia sẻ <strong><em>các món ăn từ cà rố</em></strong>t dưới đây nhé.\r\n<h2><strong>CÁC MÓN ĂN TỪ CÀ RỐT – SU HÀO XÀO CÀ RỐT</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6120\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/cac-mon-an-tu-ca-rot-1-min.jpg\" alt=\"các món ăn từ cà rốt\" /></figure>\r\n</div>\r\n<h3><strong>Nguyên liệu làm su hào xào cà rốt cho 2 người</strong></h3>\r\n<ul>\r\n 	<li>Cà rốt ½ củ</li>\r\n 	<li>1 miếng su hào</li>\r\n 	<li>Hành tím 4 nhánh</li>\r\n 	<li>Rau mùi 1 ít</li>\r\n 	<li>Dầu ăn</li>\r\n 	<li>Muối hạt 1/2 thìa cà phê</li>\r\n 	<li>Hạt nêm 1 thìa cà phê</li>\r\n 	<li>Nước mắm 1/2 thìa cà phê</li>\r\n</ul>\r\n<h3><strong>Cách chọn mua nguyên liệu tươi ngon</strong></h3>\r\n<strong><em>Cách chọn mua su hào tươi</em></strong>\r\n<ul>\r\n 	<li>Su hào ngon có kích thước vừa phải, cầm nặng tay và chắc tay. Củ su hào tươi có vỏ màu xanh và bám chặt vào củ.</li>\r\n 	<li>Nên chọn những củ còn nguyên vẹn, hình dáng bình thường, màu xanh tươi.</li>\r\n 	<li>Không chọn những củ bị mềm, bị sâu mọt, dập nát hoặc không có thân, lá úa vàng, hình dạng củ không đều.</li>\r\n 	<li>Bạn không nên chọn mua su hào đã được làm sẵn, vì hầu hết đều được ngâm trong nước có pha hóa chất để giữ cho su hào được tươi và bắt mắt hơn.</li>\r\n</ul>\r\n<strong><em>Cách chọn mua cà rốt tươi</em></strong>\r\n<ul>\r\n 	<li>Cà rốt tươi có kích thước vừa phải, thẳng và thuôn dài về phía đuôi, vỏ mịn, cầm chắc tay và hơi săn chắc.</li>\r\n 	<li>Chọn những củ cà rốt có màu vàng cam đậm, cuống lá tươi xanh dính chặt vào cuống.</li>\r\n 	<li>Không chọn những củ cà rốt có thân bị teo tóp, phần thân bị dập, chảy nhớt, xuất hiện những vết bầm tím, dùng tay ấn vào thấy mềm.</li>\r\n 	<li>Không nên chọn những củ quá to có lá, cành ở gốc và vai củ to, dày vì đây là những củ già, sẽ nhiều xơ và ít chất dinh dưỡng.</li>\r\n</ul>\r\n<h3><strong>Cách chế biến su hào xào cà rốt</strong></h3>\r\n<strong><em>Sơ chế các loại rau</em></strong>\r\n<ul>\r\n 	<li>Su hào và cà rốt mua về bạn gọt vỏ, bỏ cọng, rửa sạch. Cắt su hào và cà rốt thành từng lát mỏng rồi bằm nhuyễn.</li>\r\n 	<li>Rau mùi cắt bỏ gốc, rửa sạch đất cát bẩn, thái khúc. Hành tím bỏ gốc, bóc vỏ, rửa sạch rồi đập dập, băm nhỏ.</li>\r\n</ul>\r\n<strong><em>Xào rau</em></strong>\r\n<ul>\r\n 	<li>Đặt chảo lên bếp, cho hành tím băm nhuyễn vào phi thơm với dầu. Khi hành khô và có mùi thơm, bạn cho 1 thìa dầu ăn vào chảo, tiếp tục phi ở lửa lớn cho đến khi hành chuyển sang màu vàng.</li>\r\n 	<li>Giảm nhiệt, nêm 1/2 thìa muối rồi cho su hào, cà rốt vào xào khoảng 5 phút. Nêm vào món ăn 1 thìa cà phê hạt nêm và 1/2 thìa cà phê nước mắm, đảo đều cho rau ngấm gia vị rồi đậy vung thêm 5 phút cho đến khi rau chín hẳn.</li>\r\n 	<li>Sau 5 phút, bạn mở vung, tăng lửa, đảo nhanh tay thêm 1 phút nữa cho món xào khô lại, nêm nếm lại cho vừa ăn rồi tắt bếp, cho rau mùi vào và đảo thêm 1 phút nữa là có thể dùng được, cho ra đĩa và thưởng thức.</li>\r\n</ul>\r\n<strong><em>Món ăn hoàn thiện</em></strong>\r\n<ul>\r\n 	<li>Đĩa su hào xào cà rốt ra đĩa nóng hổi, ​​thơm mùi ngò và các loại rau củ vô cùng hấp dẫn mà nguyên liệu và cách thực hiện lại vô cùng đơn giản. Cà rốt bào sợi xào có màu cam sáng đẹp mắt xen kẽ với su hào giòn, ngọt.</li>\r\n 	<li>Món ăn được nêm nếm vừa phải, gia vị nhẹ, không quá đậm đà nhưng thanh mát, bắt vị, thích hợp dùng kèm với nhiều món ăn, tăng thêm hương vị và làm đa dạng thực đơn hàng ngày của mọi gia đình.</li>\r\n</ul>\r\n<h2><strong>CÁC MÓN ĂN TỪ CÀ RỐT – THỊT BÒ XÀO HÀNH TÂY CÀ RỐT</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6119\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/cac-mon-an-tu-ca-rot-2-min.jpg\" alt=\"thịt bò xào hành tây cả rốt\" /></figure>\r\n</div>\r\nThịt bò là một loại thực phẩm rất phổ biến với hàm lượng dinh dưỡng cao, từ thịt bò chúng ta có thể chế biến ra rất nhiều món ăn ngon khác nhau. Hôm nay, Trang Vàng sẽ giới thiệu đến các bạn công thức làm món “thịt bò xào hành tây cà rốt”, món ăn này thực hiện rất nhanh, bạn sẽ tiết kiệm được rất nhiều thời gian nấu nướng.\r\n<h3><strong>Nguyên liệu:</strong></h3>\r\n<ul>\r\n 	<li>Thịt bò nạc: 300g</li>\r\n 	<li>Hành tây: 1 cái</li>\r\n 	<li>Cà rốt: 1 củ.</li>\r\n 	<li>Hạt tiêu: 1/2 thìa cà phê</li>\r\n 	<li>Gừng: 1 nhánh (5g), Tỏi: 5 tép (5g)</li>\r\n 	<li>Rượu trắng: 100ml</li>\r\n 	<li>Dầu ăn: 2 muỗng canh, Nước mắm: 2 muỗng canh.</li>\r\n 	<li>Muối: 1 thìa cà phê.</li>\r\n 	<li>Mì chính: 1 thìa cà phê</li>\r\n 	<li><strong>Cách làm:</strong></li>\r\n</ul>\r\n– Thịt bò mua về rửa sạch, thái miếng mỏng.\r\n\r\n– Hành tây cắt múi cau.\r\n\r\n– Cà rốt gọt vỏ, bào sợi mỏng.\r\n\r\n– Gừng gọt vỏ, đập dập.\r\n\r\n– Tỏi bóc vỏ, đập dập.\r\n\r\n– Hành lá rửa sạch, thái nhỏ.\r\n\r\n– Cho thịt bò + rượu trắng + gừng + nước mắm + muối + mì chính + tiêu vào tô trộn đều, ướp 15 phút cho ngấm gia vị.\r\n\r\n– Đặt chảo lên bếp, đun nóng với dầu ăn, cho tỏi vào phi thơm.\r\n\r\n– Sau đó cho thịt bò vào xào săn lại.\r\n\r\n– Tiếp theo cho hành tây và cà rốt vào xào cùng, nêm nếm lại gia vị cho vừa ăn, xào khoảng 1-2 phút thì cho hành lá vào, đảo đều.\r\n\r\n– Thịt bò chín bày ra đĩa ăn với cơm nóng.\r\n\r\nThịt bò xào hành tây cà rốt có màu sắc đẹp mắt, hương vị hấp dẫn, thịt bò mềm không dai, có vị ngọt đậm đà, hành tây không còn vị đắng, cà rốt giòn ngon, chắc chắn sẽ làm bạn và gia đình hài lòng. Hãy thường xuyên thay đổi thực đơn trong gia đình bằng nhiều cách nấu trên nhé.', 'CÁC MÓN ĂN TỪ CÀ RỐT SIÊU NGON SIÊU DỄ LÀM', '', 'publish', 'open', 'open', '', 'cac-mon-an-tu-ca-rot-sieu-ngon-sieu-de-lam', '', '', '2021-11-09 10:26:49', '2021-11-09 10:26:49', '', 0, 'http://localhost/flc-gialai/?p=70', 0, 'post', '', 0),
(71, 1, '2021-11-09 10:26:49', '2021-11-09 10:26:49', 'Cà rốt là loại củ có nhiều dinh dưỡng, tốt cho sức khỏe đặc biệt là mắt. Chính vì vậy, bổ sung cà rốt vào bữa ăn hằng ngày là điều rất cần thiết. Nếu bạn đang phân vân không biết làm món ăn gì từ loại củ này thì đừng bỏ qua chia sẻ <strong><em>các món ăn từ cà rố</em></strong>t dưới đây nhé.\r\n<h2><strong>CÁC MÓN ĂN TỪ CÀ RỐT – SU HÀO XÀO CÀ RỐT</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6120\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/cac-mon-an-tu-ca-rot-1-min.jpg\" alt=\"các món ăn từ cà rốt\" /></figure>\r\n</div>\r\n<h3><strong>Nguyên liệu làm su hào xào cà rốt cho 2 người</strong></h3>\r\n<ul>\r\n 	<li>Cà rốt ½ củ</li>\r\n 	<li>1 miếng su hào</li>\r\n 	<li>Hành tím 4 nhánh</li>\r\n 	<li>Rau mùi 1 ít</li>\r\n 	<li>Dầu ăn</li>\r\n 	<li>Muối hạt 1/2 thìa cà phê</li>\r\n 	<li>Hạt nêm 1 thìa cà phê</li>\r\n 	<li>Nước mắm 1/2 thìa cà phê</li>\r\n</ul>\r\n<h3><strong>Cách chọn mua nguyên liệu tươi ngon</strong></h3>\r\n<strong><em>Cách chọn mua su hào tươi</em></strong>\r\n<ul>\r\n 	<li>Su hào ngon có kích thước vừa phải, cầm nặng tay và chắc tay. Củ su hào tươi có vỏ màu xanh và bám chặt vào củ.</li>\r\n 	<li>Nên chọn những củ còn nguyên vẹn, hình dáng bình thường, màu xanh tươi.</li>\r\n 	<li>Không chọn những củ bị mềm, bị sâu mọt, dập nát hoặc không có thân, lá úa vàng, hình dạng củ không đều.</li>\r\n 	<li>Bạn không nên chọn mua su hào đã được làm sẵn, vì hầu hết đều được ngâm trong nước có pha hóa chất để giữ cho su hào được tươi và bắt mắt hơn.</li>\r\n</ul>\r\n<strong><em>Cách chọn mua cà rốt tươi</em></strong>\r\n<ul>\r\n 	<li>Cà rốt tươi có kích thước vừa phải, thẳng và thuôn dài về phía đuôi, vỏ mịn, cầm chắc tay và hơi săn chắc.</li>\r\n 	<li>Chọn những củ cà rốt có màu vàng cam đậm, cuống lá tươi xanh dính chặt vào cuống.</li>\r\n 	<li>Không chọn những củ cà rốt có thân bị teo tóp, phần thân bị dập, chảy nhớt, xuất hiện những vết bầm tím, dùng tay ấn vào thấy mềm.</li>\r\n 	<li>Không nên chọn những củ quá to có lá, cành ở gốc và vai củ to, dày vì đây là những củ già, sẽ nhiều xơ và ít chất dinh dưỡng.</li>\r\n</ul>\r\n<h3><strong>Cách chế biến su hào xào cà rốt</strong></h3>\r\n<strong><em>Sơ chế các loại rau</em></strong>\r\n<ul>\r\n 	<li>Su hào và cà rốt mua về bạn gọt vỏ, bỏ cọng, rửa sạch. Cắt su hào và cà rốt thành từng lát mỏng rồi bằm nhuyễn.</li>\r\n 	<li>Rau mùi cắt bỏ gốc, rửa sạch đất cát bẩn, thái khúc. Hành tím bỏ gốc, bóc vỏ, rửa sạch rồi đập dập, băm nhỏ.</li>\r\n</ul>\r\n<strong><em>Xào rau</em></strong>\r\n<ul>\r\n 	<li>Đặt chảo lên bếp, cho hành tím băm nhuyễn vào phi thơm với dầu. Khi hành khô và có mùi thơm, bạn cho 1 thìa dầu ăn vào chảo, tiếp tục phi ở lửa lớn cho đến khi hành chuyển sang màu vàng.</li>\r\n 	<li>Giảm nhiệt, nêm 1/2 thìa muối rồi cho su hào, cà rốt vào xào khoảng 5 phút. Nêm vào món ăn 1 thìa cà phê hạt nêm và 1/2 thìa cà phê nước mắm, đảo đều cho rau ngấm gia vị rồi đậy vung thêm 5 phút cho đến khi rau chín hẳn.</li>\r\n 	<li>Sau 5 phút, bạn mở vung, tăng lửa, đảo nhanh tay thêm 1 phút nữa cho món xào khô lại, nêm nếm lại cho vừa ăn rồi tắt bếp, cho rau mùi vào và đảo thêm 1 phút nữa là có thể dùng được, cho ra đĩa và thưởng thức.</li>\r\n</ul>\r\n<strong><em>Món ăn hoàn thiện</em></strong>\r\n<ul>\r\n 	<li>Đĩa su hào xào cà rốt ra đĩa nóng hổi, ​​thơm mùi ngò và các loại rau củ vô cùng hấp dẫn mà nguyên liệu và cách thực hiện lại vô cùng đơn giản. Cà rốt bào sợi xào có màu cam sáng đẹp mắt xen kẽ với su hào giòn, ngọt.</li>\r\n 	<li>Món ăn được nêm nếm vừa phải, gia vị nhẹ, không quá đậm đà nhưng thanh mát, bắt vị, thích hợp dùng kèm với nhiều món ăn, tăng thêm hương vị và làm đa dạng thực đơn hàng ngày của mọi gia đình.</li>\r\n</ul>\r\n<h2><strong>CÁC MÓN ĂN TỪ CÀ RỐT – THỊT BÒ XÀO HÀNH TÂY CÀ RỐT</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6119\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/cac-mon-an-tu-ca-rot-2-min.jpg\" alt=\"thịt bò xào hành tây cả rốt\" /></figure>\r\n</div>\r\nThịt bò là một loại thực phẩm rất phổ biến với hàm lượng dinh dưỡng cao, từ thịt bò chúng ta có thể chế biến ra rất nhiều món ăn ngon khác nhau. Hôm nay, Trang Vàng sẽ giới thiệu đến các bạn công thức làm món “thịt bò xào hành tây cà rốt”, món ăn này thực hiện rất nhanh, bạn sẽ tiết kiệm được rất nhiều thời gian nấu nướng.\r\n<h3><strong>Nguyên liệu:</strong></h3>\r\n<ul>\r\n 	<li>Thịt bò nạc: 300g</li>\r\n 	<li>Hành tây: 1 cái</li>\r\n 	<li>Cà rốt: 1 củ.</li>\r\n 	<li>Hạt tiêu: 1/2 thìa cà phê</li>\r\n 	<li>Gừng: 1 nhánh (5g), Tỏi: 5 tép (5g)</li>\r\n 	<li>Rượu trắng: 100ml</li>\r\n 	<li>Dầu ăn: 2 muỗng canh, Nước mắm: 2 muỗng canh.</li>\r\n 	<li>Muối: 1 thìa cà phê.</li>\r\n 	<li>Mì chính: 1 thìa cà phê</li>\r\n 	<li><strong>Cách làm:</strong></li>\r\n</ul>\r\n– Thịt bò mua về rửa sạch, thái miếng mỏng.\r\n\r\n– Hành tây cắt múi cau.\r\n\r\n– Cà rốt gọt vỏ, bào sợi mỏng.\r\n\r\n– Gừng gọt vỏ, đập dập.\r\n\r\n– Tỏi bóc vỏ, đập dập.\r\n\r\n– Hành lá rửa sạch, thái nhỏ.\r\n\r\n– Cho thịt bò + rượu trắng + gừng + nước mắm + muối + mì chính + tiêu vào tô trộn đều, ướp 15 phút cho ngấm gia vị.\r\n\r\n– Đặt chảo lên bếp, đun nóng với dầu ăn, cho tỏi vào phi thơm.\r\n\r\n– Sau đó cho thịt bò vào xào săn lại.\r\n\r\n– Tiếp theo cho hành tây và cà rốt vào xào cùng, nêm nếm lại gia vị cho vừa ăn, xào khoảng 1-2 phút thì cho hành lá vào, đảo đều.\r\n\r\n– Thịt bò chín bày ra đĩa ăn với cơm nóng.\r\n\r\nThịt bò xào hành tây cà rốt có màu sắc đẹp mắt, hương vị hấp dẫn, thịt bò mềm không dai, có vị ngọt đậm đà, hành tây không còn vị đắng, cà rốt giòn ngon, chắc chắn sẽ làm bạn và gia đình hài lòng. Hãy thường xuyên thay đổi thực đơn trong gia đình bằng nhiều cách nấu trên nhé.', 'CÁC MÓN ĂN TỪ CÀ RỐT SIÊU NGON SIÊU DỄ LÀM', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2021-11-09 10:26:49', '2021-11-09 10:26:49', '', 70, 'http://localhost/flc-gialai/?p=71', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2021-11-09 10:27:12', '2021-11-09 10:27:12', '<strong><em>Củ cải đỏ nấu gì ngon</em></strong>? Hôm nay, các bạn hãy cùng <a href=\"https://dalattaivinh.com/danh-muc-san-pham/rau-cu-qua/\">Ludala</a> vào bếp để tìm hiểu cách làm các <strong><em>món ăn với củ cải đỏ</em></strong> trong bài viết dưới đây nhé. Những món ngon này chắc chắn sẽ khiến cả nhà thích mê!\r\n<h2><strong>1. NỘM CỦ CẢI ĐỎ – MÓN ĂN NGON VỚI CỦ CẢI ĐỎ:</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6176\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/mon-an-voi-cu-cai-do-1-min.png\" alt=\"món ăn với củ cải đỏ\" /></figure>\r\n</div>\r\nGỏi củ cải đỏ là món ăn khoái khẩu của nhiều người bởi vị chua ngọt hấp dẫn. Củ cải đỏ rất giàu vitamin C và các nguyên tố vi lượng giúp tăng cường sức đề kháng cho cơ thể con người. Ăn gỏi củ cải đỏ thanh mát, bạn sẽ hấp thụ được trọn vẹn hương vị thơm ngon và chất dinh dưỡng của món ăn hấp dẫn này. Cùng theo dõi cách làm nhé!\r\n\r\n<strong><em>Chuẩn bị nguyên liệu:</em></strong>\r\n<ul>\r\n 	<li>Củ cải</li>\r\n 	<li>Tỏi</li>\r\n 	<li>Nêm gia vị: Dấm, đường, muối, tiêu, dầu, ớt, chanh,…</li>\r\n</ul>\r\n<strong><em>Cách chế biến:</em></strong>\r\n<ul>\r\n 	<li>Củ cải đỏ rửa sạch, để nguyên vỏ, thái sợi. Khi thái củ cải đỏ, vẫn còn phần vỏ đỏ ở hai đầu kết hợp với màu trắng ở giữa rất bắt mắt.</li>\r\n 	<li>Rắc đều muối lên củ cải, ướp 15 phút để củ cải tiết ra ít nước. Sau đó vắt sạch nước muối ngâm trong củ cải bào sợi rồi cho đường vào ướp 10 phút. Tiếp tục bạn cũng vắt kiệt nước đường cho củ cải bớt nhão. Cuối cùng, bạn cho tỏi băm, xì dầu, giấm, dầu hào vào trộn đều là có thể dùng ngay.</li>\r\n 	<li>Lưu ý: Củ cải đỏ ngon ngọt, làm salad cũng rất ngon và thanh mát rồi. Bạn cũng có thể cho thêm thịt heo và tôm vào trộn cùng để tăng độ hấp dẫn cho món ăn.</li>\r\n</ul>\r\n<h2><strong>2. CỦ CẢI ĐỎ HẦM CÁNH GÀ – MÓN ĂN NGON VỚI CỦ CẢI ĐỎ</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6177\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/mon-an-voi-cu-cai-do-2-min.jpg\" alt=\"củ cải đỏ hầm cánh gà\" /></figure>\r\n</div>\r\n<strong><em>Chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Củ cải đỏ tươi: 700g</li>\r\n 	<li>Cánh gà: 8 miếng</li>\r\n 	<li>Nấm hương: 8 miếng</li>\r\n 	<li>Đậu Hà Lan</li>\r\n 	<li>Hành lá</li>\r\n 	<li>Gừng tươi</li>\r\n 	<li>Nêm gia vị: Muối, tiêu, hạt nêm, đường, xì dầu, rượu, vừng, ớt, dầu ăn, v.v.</li>\r\n</ul>\r\n<strong><em>Cách làm:</em></strong>\r\n<ul>\r\n 	<li>Cánh gà rửa sạch, chặt miếng vừa ăn, ướp với chút muối, hạt nêm, tiêu xay trong 20 phút.</li>\r\n 	<li>Đun nóng một ít dầu trong chảo, cho cánh gà vào chiên vàng đều hai mặt. Chọn những củ cải to, gọt vỏ, rửa sạch và cắt khoanh tròn có độ dày 2cm.</li>\r\n 	<li>Hành xắt nhuyễn. Nấm hương ngâm nước nóng cho nở. Đậu Hà Lan nhặt, rửa sạch.</li>\r\n 	<li>Cho củ cải, nấm hương, đậu Hà Lan vào nồi, đổ nước ngập củ cải rồi đun sôi.</li>\r\n 	<li>Nồi canh sôi, cho cánh gà vào, thêm rượu, xì dầu, hạt nêm, đường, đun nhỏ lửa cho đến khi nước cạn bớt, củ cải chín mềm thì cho hành lá vào là được.</li>\r\n</ul>\r\n<h2><strong>3. CỦ CẢI ĐỎ HẦM THỊT BÒ – MÓN ĂN NGON VỚI CỦ CẢI ĐỎ:</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6178\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/mon-an-voi-cu-cai-do-3-min.jpg\" alt=\"món ăn với củ cải đỏ\" /></figure>\r\n</div>\r\n<strong><em>Nguyên liệu cần chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Củ cải</li>\r\n 	<li>Khoai tây</li>\r\n 	<li>Thịt bò</li>\r\n 	<li>Cà rốt</li>\r\n 	<li>Củ hành</li>\r\n 	<li>Cà chua</li>\r\n 	<li>Bắp cải</li>\r\n 	<li>Cần tây, ớt</li>\r\n</ul>\r\n<strong><em>Các bước thực hiện:</em></strong>\r\n<ul>\r\n 	<li>Thịt bò cắt miếng lớn rồi cho vào nồi đảo đều cùng chút hạt nêm và dầu ăn.</li>\r\n 	<li>Lần lượt cho các nguyên liệu còn lại, thái nhỏ… đầu tiên là hành tây và cà rốt, sau đó là củ cải, cà chua, cuối cùng là khoai tây.</li>\r\n 	<li>Đổ nước vào nồi đun sôi.</li>\r\n 	<li>Khi thịt bò sắp mềm, đến lượt bắp cải cho vào nồi.</li>\r\n 	<li>Vì cần tây và ớt chín nhanh nên cho những thứ này vào trước khi tắt bếp. Đun thêm 30 giây rồi tắt bếp.</li>\r\n 	<li>Bắc nồi xuống, cho canh ra tô và thưởng thức nhé!</li>\r\n</ul>\r\n<h2><strong>4. SÚP CỦ CẢI – MÓN ĂN ĐẶC TRƯNG CỦA NGƯỜI UKRAINE</strong></h2>\r\n<strong><em>Súp củ cải đỏ</em></strong> là một món ăn đặc biệt. Không còn nghi ngờ gì nữa, đây là món ăn yêu thích của người Ukraine. Bạn không bao giờ thấy món khai vị nào khác ngoài súp củ cải đỏ trên bàn ăn của họ. Củ cải đỏ đóng vai trò là nguyên liệu chính tạo nên màu sắc và hương vị đặc trưng của món canh nổi tiếng này.\r\n\r\nNgười Ukraine có cách nấu súp củ cải đỏ nhanh nhất, đó là cho củ cải đã cắt nhỏ vào nước hầm xương và thêm một ít lá nguyệt quế. Thông thường, họ sử dụng loại củ cải có vỏ và ruột đều màu đỏ, không phải loại củ cải nhỏ, hơi tròn với vỏ màu đỏ mà bên trong có màu trắng. Vì vậy, màu sắc của súp trông đẹp mắt. Tuy nhiên, vào thế kỷ 19, vua Peter I đã mang về và trồng khoai tây trên vùng đất Slav. Nó bắt đầu thay thế cây củ cải truyền thống. Khoai tây trở thành một phần không thể thiếu trong món súp củ cải đỏ này.\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6179\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/mon-an-voi-cu-cai-do-4-min.jpg\" alt=\"súp củ cải đỏ\" /></figure>\r\n</div>\r\n<strong><em>Nguyên liệu cần chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Củ cải</li>\r\n 	<li>Thịt bò</li>\r\n 	<li>Khoai tây</li>\r\n 	<li>Củ hành</li>\r\n 	<li>Cà rốt</li>\r\n 	<li>Bắp cải</li>\r\n 	<li>Cà chua</li>\r\n 	<li>Cần tây, ớt</li>\r\n</ul>\r\n<strong><em>Cách thực hiện:</em></strong>\r\n\r\nBước 1: Thịt bò thái miếng to vừa ăn rồi cho vào nồi cùng chút gia vị và dầu ăn.\r\n\r\nBước 2: Cắt nhỏ các nguyên liệu còn lại gồm hành tây, cà rốt, củ cải, cà chua, khoai tây.\r\n\r\nBước 3: Đổ nước vào nồi đun nhỏ lửa đến khi thịt bò gần mềm thì cho bắp cải vào nồi.\r\n\r\nBước 4: Vì hành tây và cà rốt chín rất nhanh nên sau khi tắt bếp cho chúng vào.\r\n\r\nMặc dù súp củ cải đỏ có nguồn gốc từ Ukraine, nhưng nhiều người đã tranh cãi để gọi món ăn này là món ăn truyền thống của họ. Người Litva nói rằng súp củ cải đỏ nấu với tai heo và sườn là món ăn truyền thống của họ. Người Ba Lan cho rằng món “borshchok” với tai củ cải đỏ là do họ phát minh ra. Người Romania gọi món súp củ cải đỏ với cà ngâm chua là “chorby”.', 'MÓN ĂN VỚI CỦ CẢI ĐỎ', '', 'publish', 'open', 'open', '', 'mon-an-voi-cu-cai-do', '', '', '2021-11-09 10:27:12', '2021-11-09 10:27:12', '', 0, 'http://localhost/flc-gialai/?p=72', 0, 'post', '', 0),
(73, 1, '2021-11-09 10:27:12', '2021-11-09 10:27:12', '<strong><em>Củ cải đỏ nấu gì ngon</em></strong>? Hôm nay, các bạn hãy cùng <a href=\"https://dalattaivinh.com/danh-muc-san-pham/rau-cu-qua/\">Ludala</a> vào bếp để tìm hiểu cách làm các <strong><em>món ăn với củ cải đỏ</em></strong> trong bài viết dưới đây nhé. Những món ngon này chắc chắn sẽ khiến cả nhà thích mê!\r\n<h2><strong>1. NỘM CỦ CẢI ĐỎ – MÓN ĂN NGON VỚI CỦ CẢI ĐỎ:</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6176\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/mon-an-voi-cu-cai-do-1-min.png\" alt=\"món ăn với củ cải đỏ\" /></figure>\r\n</div>\r\nGỏi củ cải đỏ là món ăn khoái khẩu của nhiều người bởi vị chua ngọt hấp dẫn. Củ cải đỏ rất giàu vitamin C và các nguyên tố vi lượng giúp tăng cường sức đề kháng cho cơ thể con người. Ăn gỏi củ cải đỏ thanh mát, bạn sẽ hấp thụ được trọn vẹn hương vị thơm ngon và chất dinh dưỡng của món ăn hấp dẫn này. Cùng theo dõi cách làm nhé!\r\n\r\n<strong><em>Chuẩn bị nguyên liệu:</em></strong>\r\n<ul>\r\n 	<li>Củ cải</li>\r\n 	<li>Tỏi</li>\r\n 	<li>Nêm gia vị: Dấm, đường, muối, tiêu, dầu, ớt, chanh,…</li>\r\n</ul>\r\n<strong><em>Cách chế biến:</em></strong>\r\n<ul>\r\n 	<li>Củ cải đỏ rửa sạch, để nguyên vỏ, thái sợi. Khi thái củ cải đỏ, vẫn còn phần vỏ đỏ ở hai đầu kết hợp với màu trắng ở giữa rất bắt mắt.</li>\r\n 	<li>Rắc đều muối lên củ cải, ướp 15 phút để củ cải tiết ra ít nước. Sau đó vắt sạch nước muối ngâm trong củ cải bào sợi rồi cho đường vào ướp 10 phút. Tiếp tục bạn cũng vắt kiệt nước đường cho củ cải bớt nhão. Cuối cùng, bạn cho tỏi băm, xì dầu, giấm, dầu hào vào trộn đều là có thể dùng ngay.</li>\r\n 	<li>Lưu ý: Củ cải đỏ ngon ngọt, làm salad cũng rất ngon và thanh mát rồi. Bạn cũng có thể cho thêm thịt heo và tôm vào trộn cùng để tăng độ hấp dẫn cho món ăn.</li>\r\n</ul>\r\n<h2><strong>2. CỦ CẢI ĐỎ HẦM CÁNH GÀ – MÓN ĂN NGON VỚI CỦ CẢI ĐỎ</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6177\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/mon-an-voi-cu-cai-do-2-min.jpg\" alt=\"củ cải đỏ hầm cánh gà\" /></figure>\r\n</div>\r\n<strong><em>Chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Củ cải đỏ tươi: 700g</li>\r\n 	<li>Cánh gà: 8 miếng</li>\r\n 	<li>Nấm hương: 8 miếng</li>\r\n 	<li>Đậu Hà Lan</li>\r\n 	<li>Hành lá</li>\r\n 	<li>Gừng tươi</li>\r\n 	<li>Nêm gia vị: Muối, tiêu, hạt nêm, đường, xì dầu, rượu, vừng, ớt, dầu ăn, v.v.</li>\r\n</ul>\r\n<strong><em>Cách làm:</em></strong>\r\n<ul>\r\n 	<li>Cánh gà rửa sạch, chặt miếng vừa ăn, ướp với chút muối, hạt nêm, tiêu xay trong 20 phút.</li>\r\n 	<li>Đun nóng một ít dầu trong chảo, cho cánh gà vào chiên vàng đều hai mặt. Chọn những củ cải to, gọt vỏ, rửa sạch và cắt khoanh tròn có độ dày 2cm.</li>\r\n 	<li>Hành xắt nhuyễn. Nấm hương ngâm nước nóng cho nở. Đậu Hà Lan nhặt, rửa sạch.</li>\r\n 	<li>Cho củ cải, nấm hương, đậu Hà Lan vào nồi, đổ nước ngập củ cải rồi đun sôi.</li>\r\n 	<li>Nồi canh sôi, cho cánh gà vào, thêm rượu, xì dầu, hạt nêm, đường, đun nhỏ lửa cho đến khi nước cạn bớt, củ cải chín mềm thì cho hành lá vào là được.</li>\r\n</ul>\r\n<h2><strong>3. CỦ CẢI ĐỎ HẦM THỊT BÒ – MÓN ĂN NGON VỚI CỦ CẢI ĐỎ:</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6178\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/mon-an-voi-cu-cai-do-3-min.jpg\" alt=\"món ăn với củ cải đỏ\" /></figure>\r\n</div>\r\n<strong><em>Nguyên liệu cần chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Củ cải</li>\r\n 	<li>Khoai tây</li>\r\n 	<li>Thịt bò</li>\r\n 	<li>Cà rốt</li>\r\n 	<li>Củ hành</li>\r\n 	<li>Cà chua</li>\r\n 	<li>Bắp cải</li>\r\n 	<li>Cần tây, ớt</li>\r\n</ul>\r\n<strong><em>Các bước thực hiện:</em></strong>\r\n<ul>\r\n 	<li>Thịt bò cắt miếng lớn rồi cho vào nồi đảo đều cùng chút hạt nêm và dầu ăn.</li>\r\n 	<li>Lần lượt cho các nguyên liệu còn lại, thái nhỏ… đầu tiên là hành tây và cà rốt, sau đó là củ cải, cà chua, cuối cùng là khoai tây.</li>\r\n 	<li>Đổ nước vào nồi đun sôi.</li>\r\n 	<li>Khi thịt bò sắp mềm, đến lượt bắp cải cho vào nồi.</li>\r\n 	<li>Vì cần tây và ớt chín nhanh nên cho những thứ này vào trước khi tắt bếp. Đun thêm 30 giây rồi tắt bếp.</li>\r\n 	<li>Bắc nồi xuống, cho canh ra tô và thưởng thức nhé!</li>\r\n</ul>\r\n<h2><strong>4. SÚP CỦ CẢI – MÓN ĂN ĐẶC TRƯNG CỦA NGƯỜI UKRAINE</strong></h2>\r\n<strong><em>Súp củ cải đỏ</em></strong> là một món ăn đặc biệt. Không còn nghi ngờ gì nữa, đây là món ăn yêu thích của người Ukraine. Bạn không bao giờ thấy món khai vị nào khác ngoài súp củ cải đỏ trên bàn ăn của họ. Củ cải đỏ đóng vai trò là nguyên liệu chính tạo nên màu sắc và hương vị đặc trưng của món canh nổi tiếng này.\r\n\r\nNgười Ukraine có cách nấu súp củ cải đỏ nhanh nhất, đó là cho củ cải đã cắt nhỏ vào nước hầm xương và thêm một ít lá nguyệt quế. Thông thường, họ sử dụng loại củ cải có vỏ và ruột đều màu đỏ, không phải loại củ cải nhỏ, hơi tròn với vỏ màu đỏ mà bên trong có màu trắng. Vì vậy, màu sắc của súp trông đẹp mắt. Tuy nhiên, vào thế kỷ 19, vua Peter I đã mang về và trồng khoai tây trên vùng đất Slav. Nó bắt đầu thay thế cây củ cải truyền thống. Khoai tây trở thành một phần không thể thiếu trong món súp củ cải đỏ này.\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6179\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/09/mon-an-voi-cu-cai-do-4-min.jpg\" alt=\"súp củ cải đỏ\" /></figure>\r\n</div>\r\n<strong><em>Nguyên liệu cần chuẩn bị:</em></strong>\r\n<ul>\r\n 	<li>Củ cải</li>\r\n 	<li>Thịt bò</li>\r\n 	<li>Khoai tây</li>\r\n 	<li>Củ hành</li>\r\n 	<li>Cà rốt</li>\r\n 	<li>Bắp cải</li>\r\n 	<li>Cà chua</li>\r\n 	<li>Cần tây, ớt</li>\r\n</ul>\r\n<strong><em>Cách thực hiện:</em></strong>\r\n\r\nBước 1: Thịt bò thái miếng to vừa ăn rồi cho vào nồi cùng chút gia vị và dầu ăn.\r\n\r\nBước 2: Cắt nhỏ các nguyên liệu còn lại gồm hành tây, cà rốt, củ cải, cà chua, khoai tây.\r\n\r\nBước 3: Đổ nước vào nồi đun nhỏ lửa đến khi thịt bò gần mềm thì cho bắp cải vào nồi.\r\n\r\nBước 4: Vì hành tây và cà rốt chín rất nhanh nên sau khi tắt bếp cho chúng vào.\r\n\r\nMặc dù súp củ cải đỏ có nguồn gốc từ Ukraine, nhưng nhiều người đã tranh cãi để gọi món ăn này là món ăn truyền thống của họ. Người Litva nói rằng súp củ cải đỏ nấu với tai heo và sườn là món ăn truyền thống của họ. Người Ba Lan cho rằng món “borshchok” với tai củ cải đỏ là do họ phát minh ra. Người Romania gọi món súp củ cải đỏ với cà ngâm chua là “chorby”.', 'MÓN ĂN VỚI CỦ CẢI ĐỎ', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-11-09 10:27:12', '2021-11-09 10:27:12', '', 72, 'http://localhost/flc-gialai/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-11-09 10:27:51', '2021-11-09 10:27:51', 'Việc sử dụng các loại rau củ tự nhiên để tạo màu cho đồ uống, bánh không chỉ giúp thành phẩm bắt mắt,hấp dẫn hơn mà còn đảm bảo sức khỏe cho người thưởng thức. Hãy cùng Ludala điểm qua 8 <b><i>màu sắc chiết xuất từ rau củ tự nhiên</i></b> được ưa chuộng nhất. Đây là những màu cơ bản được sử dụng trong lò làm bánh nướng trong các khách sạn, nhà hàng.\r\n<h2><b>MÀU ĐỎ</b></h2>\r\nMàu đỏ dùng trong pha chế và chế biến đồ uống, bánh ngọt sẽ kích thích vị giác và tạo cảm giác ngon miệng. Bạn có thể lấy màu đỏ từ:\r\n\r\n<i>– Quả gấc</i>: chứa nhiều tiền tố vitamin A (Caroten, Lycopen), màu gấc dễ tan trong rượu, chất béo – không tan trong nước.\r\n\r\n<i>– Củ dền, bông atiso đỏ</i>: cho màu đỏ đậm có thể tan trong nước, thạch nên được dùng chủ yếu để làm thạch, bánh. Nếu bạn dùng một ít nước ép củ dền đỏ thôi sẽ có màu hồng.<img class=\"size-full wp-image-5549 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/cu-den-min.jpg\" alt=\"màu sắc chiết xuất từ rau củ\" width=\"500\" height=\"332\" />– Các loại trái cây như thanh long ruột đỏ, dâu tây, … cho màu sắc với nhiều sắc độ đỏ khác nhau. Vì những loại quả này có mùi đặc trưng nên không dùng để tạo màu phổ thông mà chỉ thích hợp để pha chế một số loại bánh và đồ uống.\r\n\r\n<b><i>Cách tách màu từ củ dền đỏ</i></b> Củ dền gọt vỏ, cắt miếng nhỏ, cho vào máy xay + nước, xay nhuyễn và lọc lấy nước. Bạn cũng có thể làm bột củ dền đỏ để sử dụng nhiều lần: xay nhuyễn củ dền với một ít nước. Sau đó cho vào lò nướng ở nhiệt độ 100 – 110 độ C (hoặc phơi dưới nắng, dùng máy sấy). Khi củ dền khô, cuộn lại rồi xay mịn, cho vào lọ nhỏ, đậy kín nắp, bảo quản nơi khô ráo để dùng dần.\r\n\r\n+ Cách tách màu từ quả thanh long ruột đỏ Thanh long gọt bỏ vỏ, cắt nhỏ, cho vào lưới lọc vắt lấy nước. Cách này sẽ giúp loại bỏ hạt thanh long. Nước thanh long ruột đỏ có thể dùng để làm bánh flan rau câu, làm thạch rau câu, làm mocktail …\r\n<h2><b>MÀU VÀNG</b></h2>\r\nMàu vàng tự nhiên được tìm thấy trong thực phẩm có chứa sắc tố carotenoid, carthamin hoặc betalain. Bạn có thể lấy màu vàng từ:\r\n\r\n<i>– Nghệ</i>: thường được xay thành bột hoặc chắt lấy nước làm bánh. Ngoài ra, đây cũng là thảo dược rất có lợi cho sức khỏe.\r\n\r\n<i>– Quả dành dành</i>: dùng để tạo màu cho các loại bánh dân gian như bánh tét, bánh dẻo. Với hương thơm dễ chịu, quả dành dành được dùng làm thuốc chữa bệnh, an thần cũng rất hiệu quả.<img class=\"size-full wp-image-5547 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/qua-danh-danh-min.jpg\" alt=\"quả dành dành\" width=\"500\" height=\"257\" /><i>– Nhụy hoa huệ tây</i>: là loại nguyên liệu cao cấp, giá thành tương đối cao nên không được sử dụng phổ biến. Tuy nhiên, hoa huệ lại là nguyên liệu cho màu vàng bắt mắt. Nguyên liệu này được sử dụng nhiều hơn ở phương Tây.\r\n\r\n<b><i>Cách tách màu từ nghệ</i></b> <i>Nước nghệ tươi</i>: Nghệ gọt vỏ, rửa sạch, thái lát mỏng, cho vào máy xay sinh tố cùng với một ít nước rồi xay nhuyễn, lọc lấy nước để dùng. <i>Tinh bột nghệ</i>: nghệ tươi rửa sạch, thái mỏng, xay nhuyễn, hòa với nước để lắng tinh bột nghệ, lọc lấy nước, rồi đem phơi khô sẽ có thành phẩm bột nghệ. Với bột nghệ, bạn cho vào lọ thủy tinh, đậy kín, tránh tiếp xúc với không khí để sử dụng được lâu.\r\n\r\n+ Cách chiết xuất màu từ cây dành dành Cho quả vào nồi với nước sôi, nấu cho đến khi quả nát thì lọc lấy nước để dùng.\r\n<h2><b>MÀU CAM</b></h2>\r\nNếu bạn muốn sử dụng màu cam tự nhiên để làm bánh quy giòn, bạn có thể sử dụng nước ép cà rốt. Cà rốt sau khi gọt vỏ, rửa sạch rồi ép lấy nước hoặc băm nhỏ và xay nhuyễn với nước trong máy xay sinh tố rồi lọc lấy nước. Nước ép cà rốt sẽ giúp tăng vị ngọt tự nhiên cho món ăn. Bên cạnh đó, bạn cũng có thể kết hợp màu đỏ và vàng để có được màu cam tự nhiên.<img class=\"size-full wp-image-5550 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min.png\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min.png 500w, https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min-247x158.png 247w, https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min-216x138.png 216w, https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min-301x193.png 301w\" alt=\"màu sắc chiết xuất từ rau củ\" width=\"500\" height=\"319\" />\r\n<h2><b>MÀU XANH LÁ CÂY</b></h2>\r\n<i>– Bột trà xanh</i>: dùng chủ yếu cho các món ăn hoặc tráng miệng từ matcha. Nguyên liệu này có vị chát nhẹ đặc trưng và giúp hỗ trợ ngăn ngừa oxy hóa.\r\n\r\n<i>– Lá dứa:</i> có màu xanh vừa phải, độ bền màu cao, hương thơm thoang thoảng. Lá dứa chủ yếu được dùng để nhuộm bánh da lợn, thạch lá dứa.<img class=\"size-full wp-image-5546 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/la-dua-min.jpg\" alt=\"lá dứa\" width=\"500\" height=\"333\" />– Rau, lá, mây tre: đây cũng là các nguyên liệu có màu xanh dùng làm bánh, chè, thạch … cũng rất tốt.\r\n\r\n<b><i>Cách tách màu từ lá dứa:</i></b> Lá dứa rửa sạch, thái nhỏ, cho vào máy xay nhuyễn cùng với một ít nước lọc rồi lọc nhuyễn lấy nước. Thực hiện xong bước này, bạn có thể áp dụng một trong 2 cách sau để lấy nước lá dứa:\r\n\r\nCách 1: Cho phần nước lá dứa vào lọ nhỏ, để vào ngăn mát tủ lạnh, sau 2 ngày nước lá dứa sẽ lắng xuống bên dưới, bạn chỉ cần đổ phần nước trong đi và lấy phần nước lá dứa để sử dụng.\r\n\r\nCách 2: Cho nước cốt lá dứa vào bát, đậy nắp và cho vào nồi đun cách thủy. Phần lõi xanh sẽ lắng bên dưới, bạn chỉ cần đổ phần nước trong ở trên và dùng phần nước lá dứa để lắng bên dưới.\r\n<h2><b>MÀU TÍM</b></h2>\r\n<i>– Quả việt quất:</i> có màu tím đậm, vị chua thanh. Loại quả này dùng để làm bánh, pha nước uống không chỉ thơm ngon mà còn rất có lợi cho sức khỏe.<img class=\"size-full wp-image-5545 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/viet-quat-min.jpg\" alt=\"việt quất\" width=\"500\" height=\"281\" /><i>– Lá cẩm</i>: màu tím của lá đẹp nhất khi ở dạng nước, bền màu và không có mùi nên rất thích hợp để tạo màu cho các loại bánh.\r\n\r\n<i>– Khoai lang tím</i>: cũng là một nguyên liệu thơm ngon, tạo màu đẹp mắt cho các món bánh, đồ uống hay kem.\r\n\r\n<b><i>Cách tách màu từ khoai lang tím</i></b> Khoai lang tím gọt vỏ, rửa sạch, hấp chín. Sau đó xắt nhỏ rồi cho vào nồi nấu với ít nước. Sau khi thấy khoai mềm, bạn nghiền, xay đến khi khoai nhuyễn hoàn toàn thì dùng vải lưới vắt lấy nước. Bạn cũng có thể trộn khoai lang hấp với bột để làm bánh hoặc kem.\r\n<h2><b>MÀU ĐEN</b></h2>\r\n<i>– Tinh than tre</i>: dùng để làm kem, làm bánh, pha latte …\r\n\r\n<i>– Lá gai</i>: chủ yếu được sử dụng trong các món bánh. Nguyên liệu này giúp bánh có màu đen, mùi thơm cực kỳ hấp dẫn.<img class=\"size-full wp-image-5552 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/banh-mi-den-min.jpg\" alt=\"màu sắc chiết xuất từ rau củ\" width=\"500\" height=\"375\" />–<i> Cà phê</i>: có thể sử dụng để tạo màu đen cho các món bánh và đồ uống. Tuy nhiên với nguyên liệu này có thể kèm thêm một chút vị đắng nhẹ và lượng caffein. Vì thế, các bạn cần cân nhắc liều lượng để sử dụng cho phù hợp.\r\n\r\n<b><i>Cách chiết màu từ lá gai</i></b> Chọn những lá gai không quá già hoặc quá non. Bạn tước sạch phần xơ cứng, rửa sạch, đun sôi cho mềm rồi cho vào máy xay với nước. Đổ qua rây lọc lấy nước cốt. Nước lá gai có màu xanh đậm. Bạn có thể dùng trộn cùng bột để làm bánh.\r\n<h2><b>MÀU NÂU</b></h2>\r\n<i>– Đường</i>: đường nâu, đường thốt nốt, đường trắng khi đun sôi với nước sẽ tạo ra màu caramen, không chỉ làm thức uống có màu nâu mà còn có mùi thơm khá dễ chịu.', '8 MÀU SẮC CHIẾT XUẤT TỪ RAU CỦ TỰ NHIÊN BẠN CẦN BIẾT', '', 'publish', 'open', 'open', '', '8-mau-sac-chiet-xuat-tu-rau-cu-tu-nhien-ban-can-biet', '', '', '2021-11-09 10:27:57', '2021-11-09 10:27:57', '', 0, 'http://localhost/flc-gialai/?p=74', 0, 'post', '', 0),
(75, 1, '2021-11-09 10:27:51', '2021-11-09 10:27:51', 'Việc sử dụng các loại rau củ tự nhiên để tạo màu cho đồ uống, bánh không chỉ giúp thành phẩm bắt mắt,hấp dẫn hơn mà còn đảm bảo sức khỏe cho người thưởng thức. Hãy cùng Ludala điểm qua 8 <b><i>màu sắc chiết xuất từ rau củ tự nhiên</i></b> được ưa chuộng nhất. Đây là những màu cơ bản được sử dụng trong lò làm bánh nướng trong các khách sạn, nhà hàng.\r\n<h2><b>MÀU ĐỎ</b></h2>\r\nMàu đỏ dùng trong pha chế và chế biến đồ uống, bánh ngọt sẽ kích thích vị giác và tạo cảm giác ngon miệng. Bạn có thể lấy màu đỏ từ:\r\n\r\n<i>– Quả gấc</i>: chứa nhiều tiền tố vitamin A (Caroten, Lycopen), màu gấc dễ tan trong rượu, chất béo – không tan trong nước.\r\n\r\n<i>– Củ dền, bông atiso đỏ</i>: cho màu đỏ đậm có thể tan trong nước, thạch nên được dùng chủ yếu để làm thạch, bánh. Nếu bạn dùng một ít nước ép củ dền đỏ thôi sẽ có màu hồng.<img class=\"size-full wp-image-5549 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/cu-den-min.jpg\" alt=\"màu sắc chiết xuất từ rau củ\" width=\"500\" height=\"332\" />– Các loại trái cây như thanh long ruột đỏ, dâu tây, … cho màu sắc với nhiều sắc độ đỏ khác nhau. Vì những loại quả này có mùi đặc trưng nên không dùng để tạo màu phổ thông mà chỉ thích hợp để pha chế một số loại bánh và đồ uống.\r\n\r\n<b><i>Cách tách màu từ củ dền đỏ</i></b> Củ dền gọt vỏ, cắt miếng nhỏ, cho vào máy xay + nước, xay nhuyễn và lọc lấy nước. Bạn cũng có thể làm bột củ dền đỏ để sử dụng nhiều lần: xay nhuyễn củ dền với một ít nước. Sau đó cho vào lò nướng ở nhiệt độ 100 – 110 độ C (hoặc phơi dưới nắng, dùng máy sấy). Khi củ dền khô, cuộn lại rồi xay mịn, cho vào lọ nhỏ, đậy kín nắp, bảo quản nơi khô ráo để dùng dần.\r\n\r\n+ Cách tách màu từ quả thanh long ruột đỏ Thanh long gọt bỏ vỏ, cắt nhỏ, cho vào lưới lọc vắt lấy nước. Cách này sẽ giúp loại bỏ hạt thanh long. Nước thanh long ruột đỏ có thể dùng để làm bánh flan rau câu, làm thạch rau câu, làm mocktail …\r\n<h2><b>MÀU VÀNG</b></h2>\r\nMàu vàng tự nhiên được tìm thấy trong thực phẩm có chứa sắc tố carotenoid, carthamin hoặc betalain. Bạn có thể lấy màu vàng từ:\r\n\r\n<i>– Nghệ</i>: thường được xay thành bột hoặc chắt lấy nước làm bánh. Ngoài ra, đây cũng là thảo dược rất có lợi cho sức khỏe.\r\n\r\n<i>– Quả dành dành</i>: dùng để tạo màu cho các loại bánh dân gian như bánh tét, bánh dẻo. Với hương thơm dễ chịu, quả dành dành được dùng làm thuốc chữa bệnh, an thần cũng rất hiệu quả.<img class=\"size-full wp-image-5547 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/qua-danh-danh-min.jpg\" alt=\"quả dành dành\" width=\"500\" height=\"257\" /><i>– Nhụy hoa huệ tây</i>: là loại nguyên liệu cao cấp, giá thành tương đối cao nên không được sử dụng phổ biến. Tuy nhiên, hoa huệ lại là nguyên liệu cho màu vàng bắt mắt. Nguyên liệu này được sử dụng nhiều hơn ở phương Tây.\r\n\r\n<b><i>Cách tách màu từ nghệ</i></b> <i>Nước nghệ tươi</i>: Nghệ gọt vỏ, rửa sạch, thái lát mỏng, cho vào máy xay sinh tố cùng với một ít nước rồi xay nhuyễn, lọc lấy nước để dùng. <i>Tinh bột nghệ</i>: nghệ tươi rửa sạch, thái mỏng, xay nhuyễn, hòa với nước để lắng tinh bột nghệ, lọc lấy nước, rồi đem phơi khô sẽ có thành phẩm bột nghệ. Với bột nghệ, bạn cho vào lọ thủy tinh, đậy kín, tránh tiếp xúc với không khí để sử dụng được lâu.\r\n\r\n+ Cách chiết xuất màu từ cây dành dành Cho quả vào nồi với nước sôi, nấu cho đến khi quả nát thì lọc lấy nước để dùng.\r\n<h2><b>MÀU CAM</b></h2>\r\nNếu bạn muốn sử dụng màu cam tự nhiên để làm bánh quy giòn, bạn có thể sử dụng nước ép cà rốt. Cà rốt sau khi gọt vỏ, rửa sạch rồi ép lấy nước hoặc băm nhỏ và xay nhuyễn với nước trong máy xay sinh tố rồi lọc lấy nước. Nước ép cà rốt sẽ giúp tăng vị ngọt tự nhiên cho món ăn. Bên cạnh đó, bạn cũng có thể kết hợp màu đỏ và vàng để có được màu cam tự nhiên.<img class=\"size-full wp-image-5550 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min.png\" sizes=\"(max-width: 500px) 100vw, 500px\" srcset=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min.png 500w, https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min-247x158.png 247w, https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min-216x138.png 216w, https://trangvangnongnghiep.net/wp-content/uploads/2021/04/ca-rot-min-301x193.png 301w\" alt=\"màu sắc chiết xuất từ rau củ\" width=\"500\" height=\"319\" />\r\n<h2><b>MÀU XANH LÁ CÂY</b></h2>\r\n<i>– Bột trà xanh</i>: dùng chủ yếu cho các món ăn hoặc tráng miệng từ matcha. Nguyên liệu này có vị chát nhẹ đặc trưng và giúp hỗ trợ ngăn ngừa oxy hóa.\r\n\r\n<i>– Lá dứa:</i> có màu xanh vừa phải, độ bền màu cao, hương thơm thoang thoảng. Lá dứa chủ yếu được dùng để nhuộm bánh da lợn, thạch lá dứa.<img class=\"size-full wp-image-5546 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/la-dua-min.jpg\" alt=\"lá dứa\" width=\"500\" height=\"333\" />– Rau, lá, mây tre: đây cũng là các nguyên liệu có màu xanh dùng làm bánh, chè, thạch … cũng rất tốt.\r\n\r\n<b><i>Cách tách màu từ lá dứa:</i></b> Lá dứa rửa sạch, thái nhỏ, cho vào máy xay nhuyễn cùng với một ít nước lọc rồi lọc nhuyễn lấy nước. Thực hiện xong bước này, bạn có thể áp dụng một trong 2 cách sau để lấy nước lá dứa:\r\n\r\nCách 1: Cho phần nước lá dứa vào lọ nhỏ, để vào ngăn mát tủ lạnh, sau 2 ngày nước lá dứa sẽ lắng xuống bên dưới, bạn chỉ cần đổ phần nước trong đi và lấy phần nước lá dứa để sử dụng.\r\n\r\nCách 2: Cho nước cốt lá dứa vào bát, đậy nắp và cho vào nồi đun cách thủy. Phần lõi xanh sẽ lắng bên dưới, bạn chỉ cần đổ phần nước trong ở trên và dùng phần nước lá dứa để lắng bên dưới.\r\n<h2><b>MÀU TÍM</b></h2>\r\n<i>– Quả việt quất:</i> có màu tím đậm, vị chua thanh. Loại quả này dùng để làm bánh, pha nước uống không chỉ thơm ngon mà còn rất có lợi cho sức khỏe.<img class=\"size-full wp-image-5545 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/viet-quat-min.jpg\" alt=\"việt quất\" width=\"500\" height=\"281\" /><i>– Lá cẩm</i>: màu tím của lá đẹp nhất khi ở dạng nước, bền màu và không có mùi nên rất thích hợp để tạo màu cho các loại bánh.\r\n\r\n<i>– Khoai lang tím</i>: cũng là một nguyên liệu thơm ngon, tạo màu đẹp mắt cho các món bánh, đồ uống hay kem.\r\n\r\n<b><i>Cách tách màu từ khoai lang tím</i></b> Khoai lang tím gọt vỏ, rửa sạch, hấp chín. Sau đó xắt nhỏ rồi cho vào nồi nấu với ít nước. Sau khi thấy khoai mềm, bạn nghiền, xay đến khi khoai nhuyễn hoàn toàn thì dùng vải lưới vắt lấy nước. Bạn cũng có thể trộn khoai lang hấp với bột để làm bánh hoặc kem.\r\n<h2><b>MÀU ĐEN</b></h2>\r\n<i>– Tinh than tre</i>: dùng để làm kem, làm bánh, pha latte …\r\n\r\n<i>– Lá gai</i>: chủ yếu được sử dụng trong các món bánh. Nguyên liệu này giúp bánh có màu đen, mùi thơm cực kỳ hấp dẫn.<img class=\"size-full wp-image-5552 aligncenter\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/04/banh-mi-den-min.jpg\" alt=\"màu sắc chiết xuất từ rau củ\" width=\"500\" height=\"375\" />–<i> Cà phê</i>: có thể sử dụng để tạo màu đen cho các món bánh và đồ uống. Tuy nhiên với nguyên liệu này có thể kèm thêm một chút vị đắng nhẹ và lượng caffein. Vì thế, các bạn cần cân nhắc liều lượng để sử dụng cho phù hợp.\r\n\r\n<b><i>Cách chiết màu từ lá gai</i></b> Chọn những lá gai không quá già hoặc quá non. Bạn tước sạch phần xơ cứng, rửa sạch, đun sôi cho mềm rồi cho vào máy xay với nước. Đổ qua rây lọc lấy nước cốt. Nước lá gai có màu xanh đậm. Bạn có thể dùng trộn cùng bột để làm bánh.\r\n<h2><b>MÀU NÂU</b></h2>\r\n<i>– Đường</i>: đường nâu, đường thốt nốt, đường trắng khi đun sôi với nước sẽ tạo ra màu caramen, không chỉ làm thức uống có màu nâu mà còn có mùi thơm khá dễ chịu.', '8 MÀU SẮC CHIẾT XUẤT TỪ RAU CỦ TỰ NHIÊN BẠN CẦN BIẾT', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2021-11-09 10:27:51', '2021-11-09 10:27:51', '', 74, 'http://localhost/flc-gialai/?p=75', 0, 'revision', '', 0),
(76, 1, '2021-11-09 10:28:23', '2021-11-09 10:28:23', '“<strong>Tối ăn gì để không bị béo</strong>?” Đây có lẽ là câu hỏi của rất nhiều bạn muốn có một chế độ ăn uống lành mạnh. Đồng thời tốt cho sức khỏe mà vẫn giữ được vóc dáng thon gọn. Nhưng đó sẽ chỉ là câu hỏi khi bạn chưa đọc bài viết này của LUDALA. Câu trả lời tưởng chừng khó nhưng lại dễ vô cùng.\r\n<h2><strong>TỐI ĂN GÌ KHÔNG BÉO?</strong></h2>\r\n<h3><strong>Salad</strong></h3>\r\n<figure class=\"wp-block-image size-large\"><img class=\"wp-image-5940\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/salad-giam-can-min.jpeg\" alt=\"an salad giam can\" /></figure>\r\nBuổi tối, cơ thể bạn không cần hoạt động nhiều mà chỉ tập trung vào việc nghỉ ngơi, thư giãn. Do đó, bạn không cần nạp nhiều năng lượng như bữa sáng. Salad là món ăn thích hợp cho buổi tối vì ít calo. Ngoài ra, salad trộn còn giúp cung cấp chất xơ. Đây là điều hoàn toàn cần thiết nếu bạn muốn giữ gìn sức khỏe và vóc dáng thon gọn. Các chuyên gia đã chỉ ra, chất xơ có khả năng giúp bạn cảm thấy no lâu hơn, ngăn ngừa tăng cân. Một số thậm chí còn thúc đẩy giảm cân. Đây chính là lựa chọn hoàn hảo để “<strong><em>tối ăn gì không béo</em></strong>?”\r\n<h3><strong>Ngũ cốc nguyên hạt</strong></h3>\r\nYến mạch chứa carbohydrate “giải phóng chậm”. Loại carbohydrate này giúp bạn cảm thấy no lâu hơn. Từ đó giúp kiểm soát rất tốt lượng thức ăn ở các bữa sau. Bên cạnh đó,hàm lượng chất xơ trong ngũ cốc cũng rất dồi dào.\r\n\r\nĐể mang lại lợi ích sức khỏe toàn diện, bạn nên sử dụng ngũ cốc nguyên hạt thay vì ngũ cốc tinh chế. Ngũ cốc nguyên hạt có chất xơ là thành phần chính. Và để giảm cân, các loại ngũ cốc nguyên hạt như gạo lứt, hạt diêm mạch, bánh mì nguyên cám,… sẽ rất hữu ích. Một nghiên cứu được thực hiện dựa trên những tình nguyện viên được chia thành 2 nhóm. Một nhóm chỉ ăn ngũ cốc nguyên hạt và một nhóm chỉ ăn ngũ cốc tinh chế. Kết quả cho thấy nhóm ngũ cốc nguyên hạt đã giảm đáng kể chỉ số chất béo trong cơ thể. Điều này không chỉ do chất xơ mà còn do magiê – một khoáng chất có trong ngũ cốc nguyên hạt. Khoáng chất này có tác dụng điều chỉnh quá trình chuyển hóa chất béo khiến nó hoạt động hiệu quả hơn.\r\n<h3><strong>Ớt chuông</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-5941\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/ot-chuong-min.jpg\" alt=\"mon an tu ot chuong\" /></figure>\r\n</div>\r\nTrái cây và rau thường có nhiều màu sắc. Chúng được chứng minh là chứa nhiều chất dinh dưỡng và vitamin có lợi cho sức khỏe. Lượng vitamin dồi dào trong ớt chuông còn giúp bạn sở hữu làn da đẹp mịn màng đáng mơ ước.\r\n\r\nTrong một nghiên cứu của BMJ năm 2016, các nhà khoa học đã xem xét các hợp chất flavonoid – được tìm thấy trong thực vật – ảnh hưởng như thế nào đến việc giảm cân. Những người tình nguyện ăn trái cây và rau quả chứa nhiều flavonoid có xu hướng gầy và khỏe mạnh hơn. Đặc biệt, ớt chuông đặc biệt giàu flavonoid. Đó có thể là do hợp chất có nguồn gốc thực vật này giúp bạn ăn ít calo hơn và cải thiện lượng đường trong máu. Vì vậy, nếu bạn đang đắn đo không biết <strong><em>ăn gì để bữa tối không bị béo</em></strong> thì hãy trổ tài làm món ngon với ớt chuông nhé.\r\n<h3><strong>Đậu</strong></h3>\r\n<strong><em>Ăn gì trong bữa tối để không béo</em></strong>? Đậu sẽ là một câu trả lời chính xác. Đậu là thực phẩm giảm cân thần kỳ vì chứa nhiều chất xơ. Theo thống kê, hầu hết mọi người chỉ cung cấp 16 gam xơ mỗi ngày, so với lượng chất xơ được khuyến nghị là 25 gam. Nhưng theo nghiên cứu từ Đại học Y Nam Carolina, khi những người ăn kiêng tiêu thụ tới 28gr chất xơ mỗi ngày thông qua trái cây, đậu hoặc rau. Chúng đã giảm đáng kể lượng calo nạp vào cơ thể. Cảm thấy ít đói hơn và sau 4 tuần giảm khoảng 1,6 kg.\r\n\r\nCác loại đậu và các món thịt có hàm lượng calo như nhau. Tuy nhiên, bữa ăn chế biến từ đậu lại cho cảm giác no lâu. Do đó giảm được 13% lượng thức ăn tiêu thụ.\r\n\r\nMột nghiên cứu khác được công bố trên tạp chí Food &amp; Nutrition Research cũng cho thấy rằng các món ăn từ họ đậu và thịt có hàm lượng calo như nhau. Tuy nhiên, bữa ăn chế biến từ đậu lại cho cảm giác no lâu. Do đó giảm được 13% lượng thức ăn tiêu thụ.\r\n<h3><strong>Dầu ô liu</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-5942\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/dau-oliu-min.jpg\" alt=\"giam can voi dau oliu\" /></figure>\r\n</div>\r\nTheo một nghiên cứu được công bố trên tạp chí The Lancet Diabetes &amp; Endocrinology. Những người bị bệnh tiểu đường hoặc có nguy cơ mắc bệnh tim nếu ăn một chế độ ăn đầy rau, trái cây, các loại đậu, ngũ cốc nguyên hạt và cá, và 1,5 ounce dầu ô liu nguyên chất hàng ngày, sẽ giảm được khoảng 1 pound trong 5 năm. Cùng với đó, vòng eo của họ cũng nhỏ đi ¼ inch. Kết quả này tốt hơn so với những đối tượng được khuyên tránh chất béo. Chỉ riêng dầu ô liu không thể giúp bạn giảm cân nhưng điều này cho thấy việc bổ sung dầu ô liu vốn là một loại chất béo vào bữa ăn hàng ngày không khiến bạn tăng cân mà còn có tác dụng ngược lại.\r\n<h3><strong>Cá hồi</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-5943\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/ca-hoi-nuong-sot-kem-min.png\" alt=\"ca hoi nuong\" /></figure>\r\n</div>\r\nCó một nghiên cứu năm 2017 trên tạp chí Nutrition về 26 người trưởng thành có cân nặng khỏe mạnh. Kết quả cho thấy, trong cơ thể những người có chế độ ăn giàu chất béo không bão hòa, lượng hormone ghrelin giảm xuống. Đây là một loại hormone làm tăng cảm giác thèm ăn. Đồng thời làm tăng peptide YY (làm cho bạn cảm thấy no). Trong cá hồi, dầu hạt lanh và trái óc chó có rất nhiều chất béo không bão hòa. Ngoài ra, Hiệp hội Tim mạch Hoa Kỳ cũng khuyến nghị nên ăn hai bữa cá mỗi tuần để giúp tăng cường sức khỏe tim mạch.\r\n\r\nĐến đây chắc bạn đã có câu trả lời cho câu hỏi “<strong><em>Ăn gì buổi tối để không béo</em></strong>?”. Tuy nhiên, có những loại thực phẩm nào bạn cần tránh vào bữa tối? Bạn có thể tham khảo ngay phần chia sẻ dưới đây.\r\n<h2><strong>NHỮNG LOẠI THỰC PHẨM TRÁNH ĂN NẾU MUỐN GIẢM CÂN</strong></h2>\r\n<h3><strong>Nước ngọt</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-5944\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/nuoc-ngot-dong-chai-min.jpg\" alt=\"tranh uong nuoc ngot vao buoi toi\" /></figure>\r\n</div>\r\nĐồ uống có nhiều đường như nước ngọt và nước có ga là thứ bạn nên tránh xa nếu đang muốn giữ dáng. Nước ngọt cũng chứa nhiều calo khiến bạn tăng cân. Nước ngọt không chỉ làm tăng nguy cơ mắc bệnh tiểu đường và bệnh tim mà nước ngọt còn làm tăng nguy cơ béo phì. Vì vậy nếu đang băn khoăn <strong><em>tối ăn gì không béo</em></strong> thì nhất định phải tránh nước ngọt đã nhé.\r\n<h3><strong>Thức ăn đóng hộp</strong></h3>\r\nThực phẩm đóng hộp rất tiện lợi nếu bạn không có nhiều thời gian chuẩn bị hoặc không biết nấu ăn. Tuy nhiên, thực phẩm đóng hộp là một trong những thực phẩm chứa nhiều chất béo chuyển hóa, muối, đường và calo. Vì vậy rất dễ khiến bạn tăng cân, thậm chí mắc một số bệnh như cao huyết áp, tăng cân.\r\n<h3><strong>Pizza</strong></h3>\r\n<p class=\"has-normal-font-size\">Pizza là món ăn khoái khẩu của nhiều người bởi hương vị hấp dẫn. Tuy nhiên, thực tế bánh pizza không tốt cho sức khỏe. Thành phần của nó chứa một lượng lớn pho mát, chất béo, nước sốt có đường, bột nhào chứa nhiều carbs. Điều đó làm cho nó trở thành sự lựa chọn hoàn hảo nếu bạn muốn tăng cân. Ngoài ra, lớp trên cùng và các loại thịt chế biến phủ trên bánh pizza cũng làm tăng lượng chất béo chuyển hóa trong cơ thể bạn.</p>\r\n\r\n<h3><strong>Quả hạch</strong></h3>\r\nCác loại hạt như hạnh nhân, óc chó… chứa nhiều năng lượng. Do đó, bạn nên cân nhắc khi dùng vào bữa tối nhé!\r\n<p class=\"has-normal-font-size\">Bạn có thể hơi ngạc nhiên vì các loại hạt là một loại thực phẩm tốt cho sức khỏe. Tuy nhiên, mấu chốt ở đây là khi bạn ăn nó. Các loại hạt như hạnh nhân, óc chó, hạt điều,… có nhiều chất dinh dưỡng nhưng nó cũng chứa một lượng calo cao. Vì vậy, rất thích hợp dùng vào bữa sáng giúp bạn có thêm năng lượng để làm việc.</p>\r\n<p class=\"has-normal-font-size\">Ngược lại, vào ban đêm khi không có nhiều hoạt động thể chất trước khi ngủ, calo không được chuyển hóa thành năng lượng. Kết quả là, nó được lưu trữ dưới dạng chất béo và mỡ thừa được hình thành.</p>', 'TỐI ĂN GÌ KHÔNG BÉO? NHỮNG THỰC PHẨM NÊN ĂN VÀ NÊN TRÁNH DÙNG VÀO BUỔI TỐI', '', 'publish', 'open', 'open', '', 'toi-an-gi-khong-beo-nhung-thuc-pham-nen-an-va-nen-tranh-dung-vao-buoi-toi', '', '', '2021-11-09 10:28:23', '2021-11-09 10:28:23', '', 0, 'http://localhost/flc-gialai/?p=76', 0, 'post', '', 0),
(77, 1, '2021-11-09 10:28:23', '2021-11-09 10:28:23', '“<strong>Tối ăn gì để không bị béo</strong>?” Đây có lẽ là câu hỏi của rất nhiều bạn muốn có một chế độ ăn uống lành mạnh. Đồng thời tốt cho sức khỏe mà vẫn giữ được vóc dáng thon gọn. Nhưng đó sẽ chỉ là câu hỏi khi bạn chưa đọc bài viết này của LUDALA. Câu trả lời tưởng chừng khó nhưng lại dễ vô cùng.\r\n<h2><strong>TỐI ĂN GÌ KHÔNG BÉO?</strong></h2>\r\n<h3><strong>Salad</strong></h3>\r\n<figure class=\"wp-block-image size-large\"><img class=\"wp-image-5940\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/salad-giam-can-min.jpeg\" alt=\"an salad giam can\" /></figure>\r\nBuổi tối, cơ thể bạn không cần hoạt động nhiều mà chỉ tập trung vào việc nghỉ ngơi, thư giãn. Do đó, bạn không cần nạp nhiều năng lượng như bữa sáng. Salad là món ăn thích hợp cho buổi tối vì ít calo. Ngoài ra, salad trộn còn giúp cung cấp chất xơ. Đây là điều hoàn toàn cần thiết nếu bạn muốn giữ gìn sức khỏe và vóc dáng thon gọn. Các chuyên gia đã chỉ ra, chất xơ có khả năng giúp bạn cảm thấy no lâu hơn, ngăn ngừa tăng cân. Một số thậm chí còn thúc đẩy giảm cân. Đây chính là lựa chọn hoàn hảo để “<strong><em>tối ăn gì không béo</em></strong>?”\r\n<h3><strong>Ngũ cốc nguyên hạt</strong></h3>\r\nYến mạch chứa carbohydrate “giải phóng chậm”. Loại carbohydrate này giúp bạn cảm thấy no lâu hơn. Từ đó giúp kiểm soát rất tốt lượng thức ăn ở các bữa sau. Bên cạnh đó,hàm lượng chất xơ trong ngũ cốc cũng rất dồi dào.\r\n\r\nĐể mang lại lợi ích sức khỏe toàn diện, bạn nên sử dụng ngũ cốc nguyên hạt thay vì ngũ cốc tinh chế. Ngũ cốc nguyên hạt có chất xơ là thành phần chính. Và để giảm cân, các loại ngũ cốc nguyên hạt như gạo lứt, hạt diêm mạch, bánh mì nguyên cám,… sẽ rất hữu ích. Một nghiên cứu được thực hiện dựa trên những tình nguyện viên được chia thành 2 nhóm. Một nhóm chỉ ăn ngũ cốc nguyên hạt và một nhóm chỉ ăn ngũ cốc tinh chế. Kết quả cho thấy nhóm ngũ cốc nguyên hạt đã giảm đáng kể chỉ số chất béo trong cơ thể. Điều này không chỉ do chất xơ mà còn do magiê – một khoáng chất có trong ngũ cốc nguyên hạt. Khoáng chất này có tác dụng điều chỉnh quá trình chuyển hóa chất béo khiến nó hoạt động hiệu quả hơn.\r\n<h3><strong>Ớt chuông</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-5941\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/ot-chuong-min.jpg\" alt=\"mon an tu ot chuong\" /></figure>\r\n</div>\r\nTrái cây và rau thường có nhiều màu sắc. Chúng được chứng minh là chứa nhiều chất dinh dưỡng và vitamin có lợi cho sức khỏe. Lượng vitamin dồi dào trong ớt chuông còn giúp bạn sở hữu làn da đẹp mịn màng đáng mơ ước.\r\n\r\nTrong một nghiên cứu của BMJ năm 2016, các nhà khoa học đã xem xét các hợp chất flavonoid – được tìm thấy trong thực vật – ảnh hưởng như thế nào đến việc giảm cân. Những người tình nguyện ăn trái cây và rau quả chứa nhiều flavonoid có xu hướng gầy và khỏe mạnh hơn. Đặc biệt, ớt chuông đặc biệt giàu flavonoid. Đó có thể là do hợp chất có nguồn gốc thực vật này giúp bạn ăn ít calo hơn và cải thiện lượng đường trong máu. Vì vậy, nếu bạn đang đắn đo không biết <strong><em>ăn gì để bữa tối không bị béo</em></strong> thì hãy trổ tài làm món ngon với ớt chuông nhé.\r\n<h3><strong>Đậu</strong></h3>\r\n<strong><em>Ăn gì trong bữa tối để không béo</em></strong>? Đậu sẽ là một câu trả lời chính xác. Đậu là thực phẩm giảm cân thần kỳ vì chứa nhiều chất xơ. Theo thống kê, hầu hết mọi người chỉ cung cấp 16 gam xơ mỗi ngày, so với lượng chất xơ được khuyến nghị là 25 gam. Nhưng theo nghiên cứu từ Đại học Y Nam Carolina, khi những người ăn kiêng tiêu thụ tới 28gr chất xơ mỗi ngày thông qua trái cây, đậu hoặc rau. Chúng đã giảm đáng kể lượng calo nạp vào cơ thể. Cảm thấy ít đói hơn và sau 4 tuần giảm khoảng 1,6 kg.\r\n\r\nCác loại đậu và các món thịt có hàm lượng calo như nhau. Tuy nhiên, bữa ăn chế biến từ đậu lại cho cảm giác no lâu. Do đó giảm được 13% lượng thức ăn tiêu thụ.\r\n\r\nMột nghiên cứu khác được công bố trên tạp chí Food &amp; Nutrition Research cũng cho thấy rằng các món ăn từ họ đậu và thịt có hàm lượng calo như nhau. Tuy nhiên, bữa ăn chế biến từ đậu lại cho cảm giác no lâu. Do đó giảm được 13% lượng thức ăn tiêu thụ.\r\n<h3><strong>Dầu ô liu</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-5942\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/dau-oliu-min.jpg\" alt=\"giam can voi dau oliu\" /></figure>\r\n</div>\r\nTheo một nghiên cứu được công bố trên tạp chí The Lancet Diabetes &amp; Endocrinology. Những người bị bệnh tiểu đường hoặc có nguy cơ mắc bệnh tim nếu ăn một chế độ ăn đầy rau, trái cây, các loại đậu, ngũ cốc nguyên hạt và cá, và 1,5 ounce dầu ô liu nguyên chất hàng ngày, sẽ giảm được khoảng 1 pound trong 5 năm. Cùng với đó, vòng eo của họ cũng nhỏ đi ¼ inch. Kết quả này tốt hơn so với những đối tượng được khuyên tránh chất béo. Chỉ riêng dầu ô liu không thể giúp bạn giảm cân nhưng điều này cho thấy việc bổ sung dầu ô liu vốn là một loại chất béo vào bữa ăn hàng ngày không khiến bạn tăng cân mà còn có tác dụng ngược lại.\r\n<h3><strong>Cá hồi</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-5943\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/ca-hoi-nuong-sot-kem-min.png\" alt=\"ca hoi nuong\" /></figure>\r\n</div>\r\nCó một nghiên cứu năm 2017 trên tạp chí Nutrition về 26 người trưởng thành có cân nặng khỏe mạnh. Kết quả cho thấy, trong cơ thể những người có chế độ ăn giàu chất béo không bão hòa, lượng hormone ghrelin giảm xuống. Đây là một loại hormone làm tăng cảm giác thèm ăn. Đồng thời làm tăng peptide YY (làm cho bạn cảm thấy no). Trong cá hồi, dầu hạt lanh và trái óc chó có rất nhiều chất béo không bão hòa. Ngoài ra, Hiệp hội Tim mạch Hoa Kỳ cũng khuyến nghị nên ăn hai bữa cá mỗi tuần để giúp tăng cường sức khỏe tim mạch.\r\n\r\nĐến đây chắc bạn đã có câu trả lời cho câu hỏi “<strong><em>Ăn gì buổi tối để không béo</em></strong>?”. Tuy nhiên, có những loại thực phẩm nào bạn cần tránh vào bữa tối? Bạn có thể tham khảo ngay phần chia sẻ dưới đây.\r\n<h2><strong>NHỮNG LOẠI THỰC PHẨM TRÁNH ĂN NẾU MUỐN GIẢM CÂN</strong></h2>\r\n<h3><strong>Nước ngọt</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-5944\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/06/nuoc-ngot-dong-chai-min.jpg\" alt=\"tranh uong nuoc ngot vao buoi toi\" /></figure>\r\n</div>\r\nĐồ uống có nhiều đường như nước ngọt và nước có ga là thứ bạn nên tránh xa nếu đang muốn giữ dáng. Nước ngọt cũng chứa nhiều calo khiến bạn tăng cân. Nước ngọt không chỉ làm tăng nguy cơ mắc bệnh tiểu đường và bệnh tim mà nước ngọt còn làm tăng nguy cơ béo phì. Vì vậy nếu đang băn khoăn <strong><em>tối ăn gì không béo</em></strong> thì nhất định phải tránh nước ngọt đã nhé.\r\n<h3><strong>Thức ăn đóng hộp</strong></h3>\r\nThực phẩm đóng hộp rất tiện lợi nếu bạn không có nhiều thời gian chuẩn bị hoặc không biết nấu ăn. Tuy nhiên, thực phẩm đóng hộp là một trong những thực phẩm chứa nhiều chất béo chuyển hóa, muối, đường và calo. Vì vậy rất dễ khiến bạn tăng cân, thậm chí mắc một số bệnh như cao huyết áp, tăng cân.\r\n<h3><strong>Pizza</strong></h3>\r\n<p class=\"has-normal-font-size\">Pizza là món ăn khoái khẩu của nhiều người bởi hương vị hấp dẫn. Tuy nhiên, thực tế bánh pizza không tốt cho sức khỏe. Thành phần của nó chứa một lượng lớn pho mát, chất béo, nước sốt có đường, bột nhào chứa nhiều carbs. Điều đó làm cho nó trở thành sự lựa chọn hoàn hảo nếu bạn muốn tăng cân. Ngoài ra, lớp trên cùng và các loại thịt chế biến phủ trên bánh pizza cũng làm tăng lượng chất béo chuyển hóa trong cơ thể bạn.</p>\r\n\r\n<h3><strong>Quả hạch</strong></h3>\r\nCác loại hạt như hạnh nhân, óc chó… chứa nhiều năng lượng. Do đó, bạn nên cân nhắc khi dùng vào bữa tối nhé!\r\n<p class=\"has-normal-font-size\">Bạn có thể hơi ngạc nhiên vì các loại hạt là một loại thực phẩm tốt cho sức khỏe. Tuy nhiên, mấu chốt ở đây là khi bạn ăn nó. Các loại hạt như hạnh nhân, óc chó, hạt điều,… có nhiều chất dinh dưỡng nhưng nó cũng chứa một lượng calo cao. Vì vậy, rất thích hợp dùng vào bữa sáng giúp bạn có thêm năng lượng để làm việc.</p>\r\n<p class=\"has-normal-font-size\">Ngược lại, vào ban đêm khi không có nhiều hoạt động thể chất trước khi ngủ, calo không được chuyển hóa thành năng lượng. Kết quả là, nó được lưu trữ dưới dạng chất béo và mỡ thừa được hình thành.</p>', 'TỐI ĂN GÌ KHÔNG BÉO? NHỮNG THỰC PHẨM NÊN ĂN VÀ NÊN TRÁNH DÙNG VÀO BUỔI TỐI', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2021-11-09 10:28:23', '2021-11-09 10:28:23', '', 76, 'http://localhost/flc-gialai/?p=77', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2021-11-09 10:28:51', '2021-11-09 10:28:51', 'Nấm đùi gà là một món ăn vô cùng hữu ích đối với sức khỏe của chúng ta, là nguyên liệu để chế biến nhiều món ăn ngon và bổ dưỡng. Cùng vào bếp với LUDALA tìm hiểu về những <strong><em>cách xào nấm đùi gà</em></strong> thơm ngon dinh dưỡng cho cả nhà nhé!\r\n<h2><strong>1. CÁCH XÀO NẤM ĐÙI GÀ VÀ THỊT BÒ</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6263\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/cach-xao-nam-dui-ga-1-min.jpg\" alt=\"cách xào nấm đùi gà\" /></figure>\r\n</div>\r\n<strong>Nguyên liệu chế biến:</strong>\r\n<ul>\r\n 	<li>Nấm đùi gà</li>\r\n 	<li>Tỏi, hành tím, hành tây</li>\r\n 	<li>Thịt bò</li>\r\n 	<li>Gia vị</li>\r\n</ul>\r\n<strong>Cách thực hiện:</strong>\r\n\r\n– Nấm cắt bỏ chân, ngâm với nước muối loãng khoảng 3 – 5 phút, rửa sạch lại với nước, để ráo. Thái miếng vừa ăn.\r\n\r\n– Thịt bò rửa sạch, thái miếng mỏng, cho vào tô để ướp gia vị. Nêm nửa thìa cà phê muối, nửa thìa cà phê tiêu, 1 thìa cà phê dầu hào, trộn đều rồi ướp khoảng 10 phút.\r\n\r\n– Hành tím bỏ vỏ, rửa sạch với nước, bổ múi cau. Hành tây rửa sạch, lau khô và cắt khúc nhỏ.\r\n\r\n– Cho 2 thìa cà phê dầu ăn vào chảo, đợi dầu nóng thì cho tỏi băm và hành vào phi thơm rồi cho thịt bò vào xào chín tới, trút ra đĩa.\r\n\r\n– Cho nấm vào chảo, nêm 1 thìa nước mắm vào chảo, xào khoảng 5 phút thì cho hành tây vào xào cùng, nêm gia vị vừa ăn. Sau đó cho thịt bò vào, nêm nếm gia vị và dầu mè cho vừa ăn, đảo đều rồi tắt bếp.\r\n\r\n– Nấm đùi gà xào thịt bò thơm ngon, vị ngọt của nấm và thịt bò khiến bữa cơm gia đình thêm tròn vị.\r\n<h2><strong>2. CÁCH XÀO NẤM ĐÙI GÀ VÀ TỎI</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6262\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/cach-xao-nam-dui-ga-2-min.jpg\" alt=\"nấm đùi gà xào tỏi\" /></figure>\r\n</div>\r\n<strong>Nguyên liệu cho món nấm đùi gà xào tỏi</strong>\r\n<ul>\r\n 	<li>Nấm đùi gà 100g</li>\r\n 	<li>Tỏi 4 củ</li>\r\n 	<li>Hành lá 3 nhánh</li>\r\n 	<li>1/2 thìa cà phê bột ngọt</li>\r\n 	<li>Nước mắm 1 muỗng canh</li>\r\n 	<li>Đường trắng 1 thìa cà phê</li>\r\n 	<li>Dầu hào 2 thìa cà phê</li>\r\n 	<li>Dầu ăn 1 muỗng canh</li>\r\n 	<li>Hạt tiêu 1/2 thìa cà phê</li>\r\n 	<li>Đồ dùng: Chảo, nồi, …</li>\r\n</ul>\r\n<strong>Cách nấu nấm đùi gà xào tỏi:</strong>\r\n\r\n– Nấm đùi gà, cắt bỏ chân nấm, ngâm nước muối loãng khoảng 3 phút rồi rửa sạch lại với nước, để ráo. Cắt sợi dày khoảng 1cm.\r\n\r\n– Bóc vỏ tỏi, rửa sạch và thấm khô rồi băm nhuyễn. Hành lá bạn cũng rửa sạch và lau khô sau đó cắt nhỏ và để riêng.\r\n\r\n– Cho một thìa dầu ăn vào chảo, khi dầu nóng thì cho tỏi vào xào cho thơm rồi trút ra bát.\r\n\r\n– Cho nấm đùi gà vào chảo xào với lửa lớn, nêm 1/2 thìa cà phê bột ngọt, 1 thìa canh nước mắm, 1 thìa cà phê đường, 2 thìa cà phê dầu hào vào xào cho đến khi nấm chín. Cho tỏi phi, hành khô băm nhỏ vào trộn đều rồi tắt bếp.\r\n\r\n– Nấm đùi gà xào tỏi thơm, dai, đậm đà hấp dẫn. Món ngon với nấm đùi gà này cũng rất hao cơm đấy nhé!\r\n<h2><strong>3. CÁCH XÀO NẤM ĐÙI GÀ CÙNG GIÁ HẸ</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6261\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/cach-xao-nam-dui-ga-3-min.jpg\" alt=\"cách xào nấm đùi gà\" /></figure>\r\n</div>\r\n<strong>Nguyên liệu đùi gà xào lá hẹ cho 3 người</strong>\r\n<ul>\r\n 	<li>Nấm đùi gà 50 g</li>\r\n 	<li>Giá đỗ 50 g</li>\r\n 	<li>Hẹ tươi 50 g</li>\r\n 	<li>Tỏi 3g</li>\r\n 	<li>Gia vị nấm chay Knorr 3 gr</li>\r\n 	<li>Nước tương 5 ml</li>\r\n 	<li>Đường 2 g</li>\r\n 	<li>Dầu ăn 10 g</li>\r\n 	<li>Đồ dùng: Chảo, nồi, bếp, …</li>\r\n</ul>\r\n<strong>Cách nấu nấm đùi gà xào lá hẹ:</strong>\r\n\r\n– Lá hẹ ngâm nước muối loãng khoảng 5 phút, rửa sạch rồi cắt khúc khoảng 4cm. Nấm đùi gà cắt bỏ các góc chân của nấm, ngâm nước muối loãng khoảng 3 phút rồi cắt khúc dài khoảng 1cm.\r\n\r\n– Tỏi bóc vỏ, băm nhuyễn, giá đỗ rửa sạch.\r\n\r\n– Cho dầu ăn vào chảo, đợi dầu nóng thì cho tỏi vào phi thơm.\r\n\r\n– Cho nấm đùi gà vào xào cùng.\r\n\r\n– Sau đó cho lá hẹ, giá đỗ vào đảo cùng rồi nêm thêm gia vị, nước tương cho vừa ăn, đảo đều tay cho đến khi các nguyên liệu chín đều thì tắt bếp.\r\n\r\n– Nấm đùi gà xào lá hẹ là món chay mặn ăn được. Vị ngọt tự nhiên từ nấm kết hợp với vị thanh mát của lá hẹ, vị mặn của các loại gia vị tạo nên một món ăn ngon cho bữa cơm gia đình.', 'CÁCH XÀO NẤM ĐÙI GÀ THƠM NGON NHƯ ĐẦU BẾP TẠI NHÀ', '', 'publish', 'open', 'open', '', 'cach-xao-nam-dui-ga-thom-ngon-nhu-dau-bep-tai-nha', '', '', '2021-11-09 10:28:51', '2021-11-09 10:28:51', '', 0, 'http://localhost/flc-gialai/?p=78', 0, 'post', '', 0),
(79, 1, '2021-11-09 10:28:51', '2021-11-09 10:28:51', 'Nấm đùi gà là một món ăn vô cùng hữu ích đối với sức khỏe của chúng ta, là nguyên liệu để chế biến nhiều món ăn ngon và bổ dưỡng. Cùng vào bếp với LUDALA tìm hiểu về những <strong><em>cách xào nấm đùi gà</em></strong> thơm ngon dinh dưỡng cho cả nhà nhé!\r\n<h2><strong>1. CÁCH XÀO NẤM ĐÙI GÀ VÀ THỊT BÒ</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6263\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/cach-xao-nam-dui-ga-1-min.jpg\" alt=\"cách xào nấm đùi gà\" /></figure>\r\n</div>\r\n<strong>Nguyên liệu chế biến:</strong>\r\n<ul>\r\n 	<li>Nấm đùi gà</li>\r\n 	<li>Tỏi, hành tím, hành tây</li>\r\n 	<li>Thịt bò</li>\r\n 	<li>Gia vị</li>\r\n</ul>\r\n<strong>Cách thực hiện:</strong>\r\n\r\n– Nấm cắt bỏ chân, ngâm với nước muối loãng khoảng 3 – 5 phút, rửa sạch lại với nước, để ráo. Thái miếng vừa ăn.\r\n\r\n– Thịt bò rửa sạch, thái miếng mỏng, cho vào tô để ướp gia vị. Nêm nửa thìa cà phê muối, nửa thìa cà phê tiêu, 1 thìa cà phê dầu hào, trộn đều rồi ướp khoảng 10 phút.\r\n\r\n– Hành tím bỏ vỏ, rửa sạch với nước, bổ múi cau. Hành tây rửa sạch, lau khô và cắt khúc nhỏ.\r\n\r\n– Cho 2 thìa cà phê dầu ăn vào chảo, đợi dầu nóng thì cho tỏi băm và hành vào phi thơm rồi cho thịt bò vào xào chín tới, trút ra đĩa.\r\n\r\n– Cho nấm vào chảo, nêm 1 thìa nước mắm vào chảo, xào khoảng 5 phút thì cho hành tây vào xào cùng, nêm gia vị vừa ăn. Sau đó cho thịt bò vào, nêm nếm gia vị và dầu mè cho vừa ăn, đảo đều rồi tắt bếp.\r\n\r\n– Nấm đùi gà xào thịt bò thơm ngon, vị ngọt của nấm và thịt bò khiến bữa cơm gia đình thêm tròn vị.\r\n<h2><strong>2. CÁCH XÀO NẤM ĐÙI GÀ VÀ TỎI</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6262\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/cach-xao-nam-dui-ga-2-min.jpg\" alt=\"nấm đùi gà xào tỏi\" /></figure>\r\n</div>\r\n<strong>Nguyên liệu cho món nấm đùi gà xào tỏi</strong>\r\n<ul>\r\n 	<li>Nấm đùi gà 100g</li>\r\n 	<li>Tỏi 4 củ</li>\r\n 	<li>Hành lá 3 nhánh</li>\r\n 	<li>1/2 thìa cà phê bột ngọt</li>\r\n 	<li>Nước mắm 1 muỗng canh</li>\r\n 	<li>Đường trắng 1 thìa cà phê</li>\r\n 	<li>Dầu hào 2 thìa cà phê</li>\r\n 	<li>Dầu ăn 1 muỗng canh</li>\r\n 	<li>Hạt tiêu 1/2 thìa cà phê</li>\r\n 	<li>Đồ dùng: Chảo, nồi, …</li>\r\n</ul>\r\n<strong>Cách nấu nấm đùi gà xào tỏi:</strong>\r\n\r\n– Nấm đùi gà, cắt bỏ chân nấm, ngâm nước muối loãng khoảng 3 phút rồi rửa sạch lại với nước, để ráo. Cắt sợi dày khoảng 1cm.\r\n\r\n– Bóc vỏ tỏi, rửa sạch và thấm khô rồi băm nhuyễn. Hành lá bạn cũng rửa sạch và lau khô sau đó cắt nhỏ và để riêng.\r\n\r\n– Cho một thìa dầu ăn vào chảo, khi dầu nóng thì cho tỏi vào xào cho thơm rồi trút ra bát.\r\n\r\n– Cho nấm đùi gà vào chảo xào với lửa lớn, nêm 1/2 thìa cà phê bột ngọt, 1 thìa canh nước mắm, 1 thìa cà phê đường, 2 thìa cà phê dầu hào vào xào cho đến khi nấm chín. Cho tỏi phi, hành khô băm nhỏ vào trộn đều rồi tắt bếp.\r\n\r\n– Nấm đùi gà xào tỏi thơm, dai, đậm đà hấp dẫn. Món ngon với nấm đùi gà này cũng rất hao cơm đấy nhé!\r\n<h2><strong>3. CÁCH XÀO NẤM ĐÙI GÀ CÙNG GIÁ HẸ</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6261\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/cach-xao-nam-dui-ga-3-min.jpg\" alt=\"cách xào nấm đùi gà\" /></figure>\r\n</div>\r\n<strong>Nguyên liệu đùi gà xào lá hẹ cho 3 người</strong>\r\n<ul>\r\n 	<li>Nấm đùi gà 50 g</li>\r\n 	<li>Giá đỗ 50 g</li>\r\n 	<li>Hẹ tươi 50 g</li>\r\n 	<li>Tỏi 3g</li>\r\n 	<li>Gia vị nấm chay Knorr 3 gr</li>\r\n 	<li>Nước tương 5 ml</li>\r\n 	<li>Đường 2 g</li>\r\n 	<li>Dầu ăn 10 g</li>\r\n 	<li>Đồ dùng: Chảo, nồi, bếp, …</li>\r\n</ul>\r\n<strong>Cách nấu nấm đùi gà xào lá hẹ:</strong>\r\n\r\n– Lá hẹ ngâm nước muối loãng khoảng 5 phút, rửa sạch rồi cắt khúc khoảng 4cm. Nấm đùi gà cắt bỏ các góc chân của nấm, ngâm nước muối loãng khoảng 3 phút rồi cắt khúc dài khoảng 1cm.\r\n\r\n– Tỏi bóc vỏ, băm nhuyễn, giá đỗ rửa sạch.\r\n\r\n– Cho dầu ăn vào chảo, đợi dầu nóng thì cho tỏi vào phi thơm.\r\n\r\n– Cho nấm đùi gà vào xào cùng.\r\n\r\n– Sau đó cho lá hẹ, giá đỗ vào đảo cùng rồi nêm thêm gia vị, nước tương cho vừa ăn, đảo đều tay cho đến khi các nguyên liệu chín đều thì tắt bếp.\r\n\r\n– Nấm đùi gà xào lá hẹ là món chay mặn ăn được. Vị ngọt tự nhiên từ nấm kết hợp với vị thanh mát của lá hẹ, vị mặn của các loại gia vị tạo nên một món ăn ngon cho bữa cơm gia đình.', 'CÁCH XÀO NẤM ĐÙI GÀ THƠM NGON NHƯ ĐẦU BẾP TẠI NHÀ', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2021-11-09 10:28:51', '2021-11-09 10:28:51', '', 78, 'http://localhost/flc-gialai/?p=79', 0, 'revision', '', 0),
(80, 1, '2021-11-09 10:29:19', '2021-11-09 10:29:19', 'Bổ sung trái cây trong bữa ăn hàng ngày được xem là cách hỗ trợ điều trị bệnh thiếu máu não đơn giản và hiệu quả nhất hiện nay. Vậy những loại trái cây có lợi cho bệnh nhân thiếu máu là gì? <strong><em>Thiếu máu nên ăn hoa quả, trái cây gì</em></strong>?\r\n\r\nBài viết sau đây, LUDALA sẽ giới thiệu đến bạn đến <strong><em>các loại quả tốt cho người thiếu máu</em></strong>.\r\n<h2><strong>1. NGUYÊN NHÂN VÀ BIỂU HIỆN CỦA CHỨNG THIẾU MÁU</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6271\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-min.jpg\" alt=\"bệnh thiếu máu\" /></figure>\r\n</div>\r\n<h3><strong>1.1. Nguyên nhân gây thiếu máu</strong></h3>\r\n<strong>Thiếu máu do viêm</strong>\r\n\r\nMột số bệnh như HIV / AIDS, bệnh thận, ung thư, viêm khớp dạng thấp, bệnh Crohn và các bệnh viêm cấp tính hoặc mãn tính khác có thể ảnh hưởng đến quá trình sản xuất các tế bào hồng cầu. Những tình trạng này đều là nguyên nhân gây ra bệnh thiếu máu.\r\n\r\n<strong>Thiếu máu không tái tạo</strong>\r\n\r\nĐây là một bệnh thiếu máu hiếm gặp và nguy hiểm, đe dọa đến tính mạng khi cơ thể không sản xuất đủ hồng cầu. Thiếu máu không tái tạo có thể do nhiễm trùng, một số loại thuốc, bệnh tự miễn và tiếp xúc với hóa chất độc hại.\r\n\r\n<strong>Thiếu máu do thiếu sắt</strong>\r\n\r\nThiếu máu do thiếu sắt là loại thiếu máu phổ biến nhất hiện nay. Tủy xương cần sắt để tạo ra hemoglobin. Do đó, nếu không có đủ sắt, cơ thể sẽ không thể sản xuất đủ hemoglobin cho các tế bào hồng cầu.\r\n\r\n<strong>Thiếu máu do thiếu vitamin</strong>\r\n\r\nBên cạnh sắt, cơ thể chúng ta cần vitamin B12 và folate để tạo đủ tế bào hồng cầu khỏe mạnh. Chế độ ăn uống thiếu vitamin và các chất dinh dưỡng quan trọng khác có thể làm giảm sản xuất hồng cầu.\r\n\r\nNgoài ra, một số bệnh nhân tiêu thụ đủ B12 không thể hấp thụ vitamin này. Điều này có thể dẫn đến thiếu máu do thiếu vitamin, còn được gọi là thiếu máu ác tính.\r\n\r\n<strong>Tan máu bẩm sinh</strong>\r\n\r\nTan máu bẩm sinh là một bệnh huyết học di truyền liên quan đến sự bất thường trong hemoglobin, một cấu trúc protein trong tế bào hồng cầu có chức năng vận chuyển oxy. Ở bệnh nhân tan máu bẩm sinh, hồng cầu bị phá hủy quá mức dẫn đến thiếu máu.\r\n\r\n<strong>Bệnh thiếu máu hồng cầu hình liềm</strong>\r\n\r\nThiếu máu hồng cầu hình liềm là một bệnh thiếu máu huyết tán di truyền và đôi khi nghiêm trọng hơn. Nguyên nhân là do một dạng hemoglobin bị khiếm khuyết khiến các tế bào hồng cầu có hình dạng lưỡi liềm bất thường. Các tế bào máu bất thường này sớm bị mất đi, dẫn đến tình trạng thiếu hụt hồng cầu mãn tính.\r\n\r\nThiếu máu hồng cầu hình liềm có thể dẫn đến thiếu hồng cầu mãn tính.\r\n<h3><strong>1.2. Triệu chứng thiếu máu</strong></h3>\r\nCác triệu chứng thiếu máu khác nhau tùy theo loại thiếu máu mà bệnh nhân mắc phải. Các triệu chứng phổ biến của bệnh thiếu máu bao gồm:\r\n<ul>\r\n 	<li>Dễ mệt mỏi và mất năng lượng</li>\r\n 	<li>Nhịp tim thay đổi thất thường, đặc biệt là khi hoạt động, tập thể dục</li>\r\n 	<li>Khó thở và đau đầu, đặc biệt là khi hoạt động nặng, tập thể dục</li>\r\n 	<li>Mất tập trung</li>\r\n 	<li>Chóng mặt</li>\r\n 	<li>Da nhợt nhạt</li>\r\n 	<li>Chuột rút chân</li>\r\n 	<li>Mất ngủ</li>\r\n</ul>\r\n<h2><strong>2. THIẾU MÁU NÊN ĂN TRÁI CÂY, HOA QUẢ GÌ?</strong></h2>\r\nTrên các trang thông tin sức khỏe, các trang mạng xã hội, có thể dễ dàng bắt gặp những câu hỏi như “<strong><em>Thiếu máu ăn hoa quả gì?</em></strong>”, “<strong><em>Thiếu máu ăn trái cây gì?</em></strong>”… Những loại hoa quả kể dưới đây đều có lợi cho sức khỏe người bệnh bị thiếu máu.\r\n<h3><strong>2.1. Trái cây có múi</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6270\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-1-min.jpg\" alt=\"Thiếu máu ăn hoa quả gì\" /></figure>\r\n</div>\r\nCác loại trái cây có múi như cam, bưởi, chanh, quất… rất giàu vitamin C, giúp cơ thể hấp thụ sắt từ thức ăn tốt hơn, từ đó cung cấp nguồn nguyên liệu cần thiết để sản xuất hồng cầu và huyết sắc tố. Người bệnh thiếu máu nên ăn ít nhất một quả cam mỗi ngày.\r\n\r\nXem ngay các loại cam ngon nhất Việt Nam: <a href=\"https://trangvangnongnghiep.net/top-cac-loai-cam-ngon-nhat-viet-nam.html\" target=\"_blank\" rel=\"noreferrer noopener\">TẠI ĐÂY</a>\r\n<h3><strong>2.2. Thiếu máu nên ăn hoa quả gì? – Trái mận</strong></h3>\r\nMận thường được biết đến với tác dụng nhuận tràng nhẹ, và cũng là một nguồn cung cấp chất sắt rất tốt. Trung bình một cốc mận khô chứa 4,5 mg sắt và một cốc nước ép mận tươi cung cấp cho cơ thể khoảng 3 mg sắt. Một lượng nhỏ magie trong mận cũng kích thích sản xuất các tế bào hồng cầu và điều chỉnh quá trình vận chuyển oxy của máu. Ngoài ra, mận cũng rất giàu vitamin C, vitamin B6, kali, mangan và chất xơ.\r\n<h3><strong>2.3. Đào khô</strong></h3>\r\nHàm lượng sắt trong đào khô cao hơn đào tươi, trung bình 5 quả đào khô chứa khoảng 5,3 mg sắt. Ngoài ra, đào còn là loại quả chứa nhiều vitamin C giúp hệ tiêu hóa hấp thụ chất sắt tốt hơn, bảo vệ mắt và giúp da sáng mịn. Chúng ta có thể thêm đào khô vào ngũ cốc ăn sáng hoặc dùng để làm bánh và ăn hàng ngày.\r\n\r\nĐào khô chứa một lượng lớn chất sắt bên trong, thích hợp cho những người bị thiếu máu\r\n<h3><strong>2.4. Mơ khô</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6269\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-2-min.jpg\" alt=\"mơ khô\" /></figure>\r\n</div>\r\nMơ khô là một lựa chọn khác để trả lời cho câu hỏi “Thiếu máu nên ăn trái cây gì” vì loại quả này rất giàu chất sắt. Trong 100g mơ khô có khoảng 6mg sắt, đáp ứng 35% nhu cầu sắt hàng ngày của cơ thể. Ngoài ra, mơ khô còn chứa nhiều kali, một loại khoáng chất cần thiết cho hoạt động của tim, cơ và thận.\r\n<h3><strong>2.5. Thiếu máu nên ăn hoa quả, trái cây gì? – Nho khô</strong></h3>\r\nTương tự như mơ, nho khô cũng là nguồn cung cấp chất sắt dồi dào, trung bình mỗi cốc nước nho khô cung cấp 24% nhu cầu sắt khuyến nghị (tương đương khoảng 4,5 mg sắt), từ đó giúp cơ thể đối phó hiệu quả với tình trạng thiếu máu.\r\n<h3><strong>2.6. Dưa hấu</strong></h3>\r\nDưa hấu là loại trái cây mà người bệnh thiếu máu không nên bỏ qua. Trung bình 1/8 quả dưa hấu cỡ trung bình chứa khoảng 1,5g sắt, ngoài ra dưa hấu cũng rất giàu vitamin C, một chất dinh dưỡng quan trọng cho quá trình hấp thụ sắt của cơ thể.\r\n<h3><strong>2.7. Chuối</strong></h3>\r\nThiếu máu nên ăn hoa quả gì? Axit folic là chất dinh dưỡng đóng vai trò quan trọng và cũng là tiền chất cần thiết để tạo ra các tế bào hồng cầu khỏe mạnh. Chuối là nguồn cung cấp dồi dào axit folic và sắt, giúp kích thích cơ thể tăng sản xuất hemoglobin và tăng cường lưu thông máu.\r\n<h3><strong>2.8. Dâu tằm</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6268\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-3-min.jpg\" alt=\"Thiếu máu ăn hoa quả gì\" /></figure>\r\n</div>\r\nDâu tằm là loại quả có giá trị dinh dưỡng rất cao, đặc biệt là đối với những bệnh nhân thiếu máu. Một cốc nước tằm chứa khoảng 2,6 mg sắt, đáp ứng 14% nhu cầu sắt và 85% nhu cầu vitamin C khuyến nghị hàng ngày. Ngoài ra, loại quả này còn là nguồn cung cấp chất chống oxy hóa tuyệt vời, giúp bảo vệ tim mạch, chống ung thư, tiểu đường.\r\n<h3><strong>2.9. Oliu</strong></h3>\r\nÔ liu rất giàu chất sắt, trung bình 100g ô liu chứa khoảng 3,3 mg sắt, cung cấp 18% lượng sắt cần thiết hàng ngày. Ngoài ra, ô liu tươi còn là nguồn cung cấp chất xơ, chất béo không bão hòa, vitamin A, vitamin E rất tốt cho sức khỏe, đặc biệt là đối với những người mắc các bệnh về tim mạch.\r\n<h3><strong>2.10. Cà chua</strong></h3>\r\n<strong><em>Thiếu máu nên ăn trái cây gì?</em></strong> Cà chua là một nguồn cung cấp vitamin C tuyệt vời, giúp cơ thể hấp thụ chất sắt từ thức ăn. Bên cạnh đó, mặc dù hàm lượng sắt trong cà chua tươi khá thấp (khoảng 0,5 mg sắt/cốc nước ép) nhưng khi sấy khô thì hàm lượng sắt tăng lên, trung bình cứ 1/2 cốc bột cà chua hòa tan có 3,9mg sắt, đáp ứng 22% nhu cầu sắt của cơ thể.\r\n\r\nHàm lượng lycopen trong cà chua rất lớn. Cà chua là thực phẩm bổ dưỡng cho bệnh nhân thiếu máu.', 'THIẾU MÁU THÌ ĂN HOA QUẢ, TRÁI CÂY GÌ ĐỂ TĂNG CƯỜNG SỨC KHỎE?', '', 'publish', 'open', 'open', '', 'thieu-mau-thi-an-hoa-qua-trai-cay-gi-de-tang-cuong-suc-khoe', '', '', '2021-11-09 10:29:19', '2021-11-09 10:29:19', '', 0, 'http://localhost/flc-gialai/?p=80', 0, 'post', '', 0),
(81, 1, '2021-11-09 10:29:19', '2021-11-09 10:29:19', 'Bổ sung trái cây trong bữa ăn hàng ngày được xem là cách hỗ trợ điều trị bệnh thiếu máu não đơn giản và hiệu quả nhất hiện nay. Vậy những loại trái cây có lợi cho bệnh nhân thiếu máu là gì? <strong><em>Thiếu máu nên ăn hoa quả, trái cây gì</em></strong>?\r\n\r\nBài viết sau đây, LUDALA sẽ giới thiệu đến bạn đến <strong><em>các loại quả tốt cho người thiếu máu</em></strong>.\r\n<h2><strong>1. NGUYÊN NHÂN VÀ BIỂU HIỆN CỦA CHỨNG THIẾU MÁU</strong></h2>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6271\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-min.jpg\" alt=\"bệnh thiếu máu\" /></figure>\r\n</div>\r\n<h3><strong>1.1. Nguyên nhân gây thiếu máu</strong></h3>\r\n<strong>Thiếu máu do viêm</strong>\r\n\r\nMột số bệnh như HIV / AIDS, bệnh thận, ung thư, viêm khớp dạng thấp, bệnh Crohn và các bệnh viêm cấp tính hoặc mãn tính khác có thể ảnh hưởng đến quá trình sản xuất các tế bào hồng cầu. Những tình trạng này đều là nguyên nhân gây ra bệnh thiếu máu.\r\n\r\n<strong>Thiếu máu không tái tạo</strong>\r\n\r\nĐây là một bệnh thiếu máu hiếm gặp và nguy hiểm, đe dọa đến tính mạng khi cơ thể không sản xuất đủ hồng cầu. Thiếu máu không tái tạo có thể do nhiễm trùng, một số loại thuốc, bệnh tự miễn và tiếp xúc với hóa chất độc hại.\r\n\r\n<strong>Thiếu máu do thiếu sắt</strong>\r\n\r\nThiếu máu do thiếu sắt là loại thiếu máu phổ biến nhất hiện nay. Tủy xương cần sắt để tạo ra hemoglobin. Do đó, nếu không có đủ sắt, cơ thể sẽ không thể sản xuất đủ hemoglobin cho các tế bào hồng cầu.\r\n\r\n<strong>Thiếu máu do thiếu vitamin</strong>\r\n\r\nBên cạnh sắt, cơ thể chúng ta cần vitamin B12 và folate để tạo đủ tế bào hồng cầu khỏe mạnh. Chế độ ăn uống thiếu vitamin và các chất dinh dưỡng quan trọng khác có thể làm giảm sản xuất hồng cầu.\r\n\r\nNgoài ra, một số bệnh nhân tiêu thụ đủ B12 không thể hấp thụ vitamin này. Điều này có thể dẫn đến thiếu máu do thiếu vitamin, còn được gọi là thiếu máu ác tính.\r\n\r\n<strong>Tan máu bẩm sinh</strong>\r\n\r\nTan máu bẩm sinh là một bệnh huyết học di truyền liên quan đến sự bất thường trong hemoglobin, một cấu trúc protein trong tế bào hồng cầu có chức năng vận chuyển oxy. Ở bệnh nhân tan máu bẩm sinh, hồng cầu bị phá hủy quá mức dẫn đến thiếu máu.\r\n\r\n<strong>Bệnh thiếu máu hồng cầu hình liềm</strong>\r\n\r\nThiếu máu hồng cầu hình liềm là một bệnh thiếu máu huyết tán di truyền và đôi khi nghiêm trọng hơn. Nguyên nhân là do một dạng hemoglobin bị khiếm khuyết khiến các tế bào hồng cầu có hình dạng lưỡi liềm bất thường. Các tế bào máu bất thường này sớm bị mất đi, dẫn đến tình trạng thiếu hụt hồng cầu mãn tính.\r\n\r\nThiếu máu hồng cầu hình liềm có thể dẫn đến thiếu hồng cầu mãn tính.\r\n<h3><strong>1.2. Triệu chứng thiếu máu</strong></h3>\r\nCác triệu chứng thiếu máu khác nhau tùy theo loại thiếu máu mà bệnh nhân mắc phải. Các triệu chứng phổ biến của bệnh thiếu máu bao gồm:\r\n<ul>\r\n 	<li>Dễ mệt mỏi và mất năng lượng</li>\r\n 	<li>Nhịp tim thay đổi thất thường, đặc biệt là khi hoạt động, tập thể dục</li>\r\n 	<li>Khó thở và đau đầu, đặc biệt là khi hoạt động nặng, tập thể dục</li>\r\n 	<li>Mất tập trung</li>\r\n 	<li>Chóng mặt</li>\r\n 	<li>Da nhợt nhạt</li>\r\n 	<li>Chuột rút chân</li>\r\n 	<li>Mất ngủ</li>\r\n</ul>\r\n<h2><strong>2. THIẾU MÁU NÊN ĂN TRÁI CÂY, HOA QUẢ GÌ?</strong></h2>\r\nTrên các trang thông tin sức khỏe, các trang mạng xã hội, có thể dễ dàng bắt gặp những câu hỏi như “<strong><em>Thiếu máu ăn hoa quả gì?</em></strong>”, “<strong><em>Thiếu máu ăn trái cây gì?</em></strong>”… Những loại hoa quả kể dưới đây đều có lợi cho sức khỏe người bệnh bị thiếu máu.\r\n<h3><strong>2.1. Trái cây có múi</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6270\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-1-min.jpg\" alt=\"Thiếu máu ăn hoa quả gì\" /></figure>\r\n</div>\r\nCác loại trái cây có múi như cam, bưởi, chanh, quất… rất giàu vitamin C, giúp cơ thể hấp thụ sắt từ thức ăn tốt hơn, từ đó cung cấp nguồn nguyên liệu cần thiết để sản xuất hồng cầu và huyết sắc tố. Người bệnh thiếu máu nên ăn ít nhất một quả cam mỗi ngày.\r\n\r\nXem ngay các loại cam ngon nhất Việt Nam: <a href=\"https://trangvangnongnghiep.net/top-cac-loai-cam-ngon-nhat-viet-nam.html\" target=\"_blank\" rel=\"noreferrer noopener\">TẠI ĐÂY</a>\r\n<h3><strong>2.2. Thiếu máu nên ăn hoa quả gì? – Trái mận</strong></h3>\r\nMận thường được biết đến với tác dụng nhuận tràng nhẹ, và cũng là một nguồn cung cấp chất sắt rất tốt. Trung bình một cốc mận khô chứa 4,5 mg sắt và một cốc nước ép mận tươi cung cấp cho cơ thể khoảng 3 mg sắt. Một lượng nhỏ magie trong mận cũng kích thích sản xuất các tế bào hồng cầu và điều chỉnh quá trình vận chuyển oxy của máu. Ngoài ra, mận cũng rất giàu vitamin C, vitamin B6, kali, mangan và chất xơ.\r\n<h3><strong>2.3. Đào khô</strong></h3>\r\nHàm lượng sắt trong đào khô cao hơn đào tươi, trung bình 5 quả đào khô chứa khoảng 5,3 mg sắt. Ngoài ra, đào còn là loại quả chứa nhiều vitamin C giúp hệ tiêu hóa hấp thụ chất sắt tốt hơn, bảo vệ mắt và giúp da sáng mịn. Chúng ta có thể thêm đào khô vào ngũ cốc ăn sáng hoặc dùng để làm bánh và ăn hàng ngày.\r\n\r\nĐào khô chứa một lượng lớn chất sắt bên trong, thích hợp cho những người bị thiếu máu\r\n<h3><strong>2.4. Mơ khô</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6269\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-2-min.jpg\" alt=\"mơ khô\" /></figure>\r\n</div>\r\nMơ khô là một lựa chọn khác để trả lời cho câu hỏi “Thiếu máu nên ăn trái cây gì” vì loại quả này rất giàu chất sắt. Trong 100g mơ khô có khoảng 6mg sắt, đáp ứng 35% nhu cầu sắt hàng ngày của cơ thể. Ngoài ra, mơ khô còn chứa nhiều kali, một loại khoáng chất cần thiết cho hoạt động của tim, cơ và thận.\r\n<h3><strong>2.5. Thiếu máu nên ăn hoa quả, trái cây gì? – Nho khô</strong></h3>\r\nTương tự như mơ, nho khô cũng là nguồn cung cấp chất sắt dồi dào, trung bình mỗi cốc nước nho khô cung cấp 24% nhu cầu sắt khuyến nghị (tương đương khoảng 4,5 mg sắt), từ đó giúp cơ thể đối phó hiệu quả với tình trạng thiếu máu.\r\n<h3><strong>2.6. Dưa hấu</strong></h3>\r\nDưa hấu là loại trái cây mà người bệnh thiếu máu không nên bỏ qua. Trung bình 1/8 quả dưa hấu cỡ trung bình chứa khoảng 1,5g sắt, ngoài ra dưa hấu cũng rất giàu vitamin C, một chất dinh dưỡng quan trọng cho quá trình hấp thụ sắt của cơ thể.\r\n<h3><strong>2.7. Chuối</strong></h3>\r\nThiếu máu nên ăn hoa quả gì? Axit folic là chất dinh dưỡng đóng vai trò quan trọng và cũng là tiền chất cần thiết để tạo ra các tế bào hồng cầu khỏe mạnh. Chuối là nguồn cung cấp dồi dào axit folic và sắt, giúp kích thích cơ thể tăng sản xuất hemoglobin và tăng cường lưu thông máu.\r\n<h3><strong>2.8. Dâu tằm</strong></h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6268\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-3-min.jpg\" alt=\"Thiếu máu ăn hoa quả gì\" /></figure>\r\n</div>\r\nDâu tằm là loại quả có giá trị dinh dưỡng rất cao, đặc biệt là đối với những bệnh nhân thiếu máu. Một cốc nước tằm chứa khoảng 2,6 mg sắt, đáp ứng 14% nhu cầu sắt và 85% nhu cầu vitamin C khuyến nghị hàng ngày. Ngoài ra, loại quả này còn là nguồn cung cấp chất chống oxy hóa tuyệt vời, giúp bảo vệ tim mạch, chống ung thư, tiểu đường.\r\n<h3><strong>2.9. Oliu</strong></h3>\r\nÔ liu rất giàu chất sắt, trung bình 100g ô liu chứa khoảng 3,3 mg sắt, cung cấp 18% lượng sắt cần thiết hàng ngày. Ngoài ra, ô liu tươi còn là nguồn cung cấp chất xơ, chất béo không bão hòa, vitamin A, vitamin E rất tốt cho sức khỏe, đặc biệt là đối với những người mắc các bệnh về tim mạch.\r\n<h3><strong>2.10. Cà chua</strong></h3>\r\n<strong><em>Thiếu máu nên ăn trái cây gì?</em></strong> Cà chua là một nguồn cung cấp vitamin C tuyệt vời, giúp cơ thể hấp thụ chất sắt từ thức ăn. Bên cạnh đó, mặc dù hàm lượng sắt trong cà chua tươi khá thấp (khoảng 0,5 mg sắt/cốc nước ép) nhưng khi sấy khô thì hàm lượng sắt tăng lên, trung bình cứ 1/2 cốc bột cà chua hòa tan có 3,9mg sắt, đáp ứng 22% nhu cầu sắt của cơ thể.\r\n\r\nHàm lượng lycopen trong cà chua rất lớn. Cà chua là thực phẩm bổ dưỡng cho bệnh nhân thiếu máu.', 'THIẾU MÁU THÌ ĂN HOA QUẢ, TRÁI CÂY GÌ ĐỂ TĂNG CƯỜNG SỨC KHỎE?', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2021-11-09 10:29:19', '2021-11-09 10:29:19', '', 80, 'http://localhost/flc-gialai/?p=81', 0, 'revision', '', 0),
(82, 1, '2021-11-09 10:29:23', '2021-11-09 10:29:23', 'Bổ sung trái cây trong bữa ăn hàng ngày được xem là cách hỗ trợ điều trị bệnh thiếu máu não đơn giản và hiệu quả nhất hiện nay. Vậy những loại trái cây có lợi cho bệnh nhân thiếu máu là gì? <strong><em>Thiếu máu nên ăn hoa quả, trái cây gì</em></strong>?\n\nBài viết sau đây, LUDALA sẽ giới thiệu đến bạn đến <strong><em>các loại quả tốt cho người thiếu máu</em></strong>.\n<h2><strong>1. NGUYÊN NHÂN VÀ BIỂU HIỆN CỦA CHỨNG THIẾU MÁU</strong></h2>\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6271\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-min.jpg\" alt=\"bệnh thiếu máu\" /></figure>\n</div>\n<h3><strong>1.1. Nguyên nhân gây thiếu máu</strong></h3>\n<strong>Thiếu máu do viêm</strong>\n\nMột số bệnh như HIV / AIDS, bệnh thận, ung thư, viêm khớp dạng thấp, bệnh Crohn và các bệnh viêm cấp tính hoặc mãn tính khác có thể ảnh hưởng đến quá trình sản xuất các tế bào hồng cầu. Những tình trạng này đều là nguyên nhân gây ra bệnh thiếu máu.\n\n<strong>Thiếu máu không tái tạo</strong>\n\nĐây là một bệnh thiếu máu hiếm gặp và nguy hiểm, đe dọa đến tính mạng khi cơ thể không sản xuất đủ hồng cầu. Thiếu máu không tái tạo có thể do nhiễm trùng, một số loại thuốc, bệnh tự miễn và tiếp xúc với hóa chất độc hại.\n\n<strong>Thiếu máu do thiếu sắt</strong>\n\nThiếu máu do thiếu sắt là loại thiếu máu phổ biến nhất hiện nay. Tủy xương cần sắt để tạo ra hemoglobin. Do đó, nếu không có đủ sắt, cơ thể sẽ không thể sản xuất đủ hemoglobin cho các tế bào hồng cầu.\n\n<strong>Thiếu máu do thiếu vitamin</strong>\n\nBên cạnh sắt, cơ thể chúng ta cần vitamin B12 và folate để tạo đủ tế bào hồng cầu khỏe mạnh. Chế độ ăn uống thiếu vitamin và các chất dinh dưỡng quan trọng khác có thể làm giảm sản xuất hồng cầu.\n\nNgoài ra, một số bệnh nhân tiêu thụ đủ B12 không thể hấp thụ vitamin này. Điều này có thể dẫn đến thiếu máu do thiếu vitamin, còn được gọi là thiếu máu ác tính.\n\n<strong>Tan máu bẩm sinh</strong>\n\nTan máu bẩm sinh là một bệnh huyết học di truyền liên quan đến sự bất thường trong hemoglobin, một cấu trúc protein trong tế bào hồng cầu có chức năng vận chuyển oxy. Ở bệnh nhân tan máu bẩm sinh, hồng cầu bị phá hủy quá mức dẫn đến thiếu máu.\n\n<strong>Bệnh thiếu máu hồng cầu hình liềm</strong>\n\nThiếu máu hồng cầu hình liềm là một bệnh thiếu máu huyết tán di truyền và đôi khi nghiêm trọng hơn. Nguyên nhân là do một dạng hemoglobin bị khiếm khuyết khiến các tế bào hồng cầu có hình dạng lưỡi liềm bất thường. Các tế bào máu bất thường này sớm bị mất đi, dẫn đến tình trạng thiếu hụt hồng cầu mãn tính.\n\nThiếu máu hồng cầu hình liềm có thể dẫn đến thiếu hồng cầu mãn tính.\n<h3><strong>1.2. Triệu chứng thiếu máu</strong></h3>\nCác triệu chứng thiếu máu khác nhau tùy theo loại thiếu máu mà bệnh nhân mắc phải. Các triệu chứng phổ biến của bệnh thiếu máu bao gồm:\n<ul>\n 	<li>Dễ mệt mỏi và mất năng lượng</li>\n 	<li>Nhịp tim thay đổi thất thường, đặc biệt là khi hoạt động, tập thể dục</li>\n 	<li>Khó thở và đau đầu, đặc biệt là khi hoạt động nặng, tập thể dục</li>\n 	<li>Mất tập trung</li>\n 	<li>Chóng mặt</li>\n 	<li>Da nhợt nhạt</li>\n 	<li>Chuột rút chân</li>\n 	<li>Mất ngủ</li>\n</ul>\n<h2><strong>2. THIẾU MÁU NÊN ĂN TRÁI CÂY, HOA QUẢ GÌ?</strong></h2>\nTrên các trang thông tin sức khỏe, các trang mạng xã hội, có thể dễ dàng bắt gặp những câu hỏi như “<strong><em>Thiếu máu ăn hoa quả gì?</em></strong>”, “<strong><em>Thiếu máu ăn trái cây gì?</em></strong>”… Những loại hoa quả kể dưới đây đều có lợi cho sức khỏe người bệnh bị thiếu máu.\n<h3><strong>2.1. Trái cây có múi</strong></h3>\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6270\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-1-min.jpg\" alt=\"Thiếu máu ăn hoa quả gì\" /></figure>\n</div>\nCác loại trái cây có múi như cam, bưởi, chanh, quất… rất giàu vitamin C, giúp cơ thể hấp thụ sắt từ thức ăn tốt hơn, từ đó cung cấp nguồn nguyên liệu cần thiết để sản xuất hồng cầu và huyết sắc tố. Người bệnh thiếu máu nên ăn ít nhất một quả cam mỗi ngày.\n\nXem ngay các loại cam ngon nhất Việt Nam: <a href=\"https://trangvangnongnghiep.net/top-cac-loai-cam-ngon-nhat-viet-nam.html\" target=\"_blank\" rel=\"noreferrer noopener\">TẠI ĐÂY</a>\n<h3><strong>2.2. Thiếu máu nên ăn hoa quả gì? – Trái mận</strong></h3>\nMận thường được biết đến với tác dụng nhuận tràng nhẹ, và cũng là một nguồn cung cấp chất sắt rất tốt. Trung bình một cốc mận khô chứa 4,5 mg sắt và một cốc nước ép mận tươi cung cấp cho cơ thể khoảng 3 mg sắt. Một lượng nhỏ magie trong mận cũng kích thích sản xuất các tế bào hồng cầu và điều chỉnh quá trình vận chuyển oxy của máu. Ngoài ra, mận cũng rất giàu vitamin C, vitamin B6, kali, mangan và chất xơ.\n<h3><strong>2.3. Đào khô</strong></h3>\nHàm lượng sắt trong đào khô cao hơn đào tươi, trung bình 5 quả đào khô chứa khoảng 5,3 mg sắt. Ngoài ra, đào còn là loại quả chứa nhiều vitamin C giúp hệ tiêu hóa hấp thụ chất sắt tốt hơn, bảo vệ mắt và giúp da sáng mịn. Chúng ta có thể thêm đào khô vào ngũ cốc ăn sáng hoặc dùng để làm bánh và ăn hàng ngày.\n\nĐào khô chứa một lượng lớn chất sắt bên trong, thích hợp cho những người bị thiếu máu\n<h3><strong>2.4. Mơ khô</strong></h3>\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6269\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-2-min.jpg\" alt=\"mơ khô\" /></figure>\n</div>\nMơ khô là một lựa chọn khác để trả lời cho câu hỏi “Thiếu máu nên ăn trái cây gì” vì loại quả này rất giàu chất sắt. Trong 100g mơ khô có khoảng 6mg sắt, đáp ứng 35% nhu cầu sắt hàng ngày của cơ thể. Ngoài ra, mơ khô còn chứa nhiều kali, một loại khoáng chất cần thiết cho hoạt động của tim, cơ và thận.\n<h3><strong>2.5. Thiếu máu nên ăn hoa quả, trái cây gì? – Nho khô</strong></h3>\nTương tự như mơ, nho khô cũng là nguồn cung cấp chất sắt dồi dào, trung bình mỗi cốc nước nho khô cung cấp 24% nhu cầu sắt khuyến nghị (tương đương khoảng 4,5 mg sắt), từ đó giúp cơ thể đối phó hiệu quả với tình trạng thiếu máu.\n<h3><strong>2.6. Dưa hấu</strong></h3>\nDưa hấu là loại trái cây mà người bệnh thiếu máu không nên bỏ qua. Trung bình 1/8 quả dưa hấu cỡ trung bình chứa khoảng 1,5g sắt, ngoài ra dưa hấu cũng rất giàu vitamin C, một chất dinh dưỡng quan trọng cho quá trình hấp thụ sắt của cơ thể.\n<h3><strong>2.7. Chuối</strong></h3>\nThiếu máu nên ăn hoa quả gì? Axit folic là chất dinh dưỡng đóng vai trò quan trọng và cũng là tiền chất cần thiết để tạo ra các tế bào hồng cầu khỏe mạnh. Chuối là nguồn cung cấp dồi dào axit folic và sắt, giúp kích thích cơ thể tăng sản xuất hemoglobin và tăng cường lưu thông máu.\n<h3><strong>2.8. Dâu tằm</strong></h3>\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img class=\"wp-image-6268\" src=\"https://trangvangnongnghiep.net/wp-content/uploads/2021/10/thieu-mau-an-hoa-qua-gi-3-min.jpg\" alt=\"Thiếu máu ăn hoa quả gì\" /></figure>\n</div>\nDâu tằm là loại quả có giá trị dinh dưỡng rất cao, đặc biệt là đối với những bệnh nhân thiếu máu. Một cốc nước tằm chứa khoảng 2,6 mg sắt, đáp ứng 14% nhu cầu sắt và 85% nhu cầu vitamin C khuyến nghị hàng ngày. Ngoài ra, loại quả này còn là nguồn cung cấp chất chống oxy hóa tuyệt vời, giúp bảo vệ tim mạch, chống ung thư, tiểu đường.\n<h3><strong>2.9. Oliu</strong></h3>\nÔ liu rất giàu chất sắt, trung bình 100g ô liu chứa khoảng 3,3 mg sắt, cung cấp 18% lượng sắt cần thiết hàng ngày. Ngoài ra, ô liu tươi còn là nguồn cung cấp chất xơ, chất béo không bão hòa, vitamin A, vitamin E rất tốt cho sức khỏe, đặc biệt là đối với những người mắc các bệnh về tim mạch.\n<h3><strong>2.10. Cà chua</strong></h3>\n<strong><em>Thiếu máu nên ăn trái cây gì?</em></strong> Cà chua là một nguồn cung cấp vitamin C tuyệt vời, giúp cơ thể hấp thụ chất sắt từ thức ăn. Bên cạnh đó, mặc dù hàm lượng sắt trong cà chua tươi khá thấp (khoảng 0,5 mg sắt/cốc nước ép) nhưng khi sấy khô thì hàm lượng sắt tăng lên, trung bình cứ 1/2 cốc bột cà chua hòa tan có 3,9mg sắt, đáp ứng 22% nhu cầu sắt của cơ thể.\n\nHàm lượng lycopen trong cà chua rất lớn. Cà chua là thực phẩm bổ dưỡng cho bệnh nhân thiếu máu.', 'THIẾU MÁU THÌ ĂN HOA QUẢ, TRÁI CÂY GÌ ĐỂ TĂNG CƯỜNG SỨC KHỎE?', '', 'inherit', 'closed', 'closed', '', '80-autosave-v1', '', '', '2021-11-09 10:29:23', '2021-11-09 10:29:23', '', 80, 'http://localhost/flc-gialai/?p=82', 0, 'revision', '', 0),
(83, 1, '2021-11-09 10:29:31', '2021-11-09 10:29:31', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-11-09 10:29:31', '2021-11-09 10:29:31', '', 1, 'http://localhost/flc-gialai/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-11-10 08:35:49', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-10 08:35:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/flc-gialai/?p=84', 0, 'post', '', 0),
(85, 1, '2021-11-10 09:05:24', '2021-11-10 09:05:24', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Khối khát vọng sống', 'khối_khat_vọng_sống', 'publish', 'closed', 'closed', '', 'field_618b89e9b176e', '', '', '2021-11-10 09:05:24', '2021-11-10 09:05:24', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=85', 12, 'acf-field', '', 0),
(86, 1, '2021-11-10 09:05:24', '2021-11-10 09:05:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề số', 'title_numb', 'publish', 'closed', 'closed', '', 'field_618b8a28b176f', '', '', '2021-11-10 09:05:24', '2021-11-10 09:05:24', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=86', 13, 'acf-field', '', 0),
(87, 1, '2021-11-10 09:05:24', '2021-11-10 09:05:24', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Danh sách', 'content_kv', 'publish', 'closed', 'closed', '', 'field_618b8a82b1770', '', '', '2021-11-10 09:05:24', '2021-11-10 09:05:24', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=87', 14, 'acf-field', '', 0),
(88, 1, '2021-11-10 09:05:24', '2021-11-10 09:05:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh đại diện', 'avar_kv_item', 'publish', 'closed', 'closed', '', 'field_618b8a94b1771', '', '', '2021-11-10 09:05:24', '2021-11-10 09:05:24', '', 87, 'http://localhost/flc-gialai/?post_type=acf-field&p=88', 0, 'acf-field', '', 0),
(89, 1, '2021-11-10 09:05:24', '2021-11-10 09:05:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'title_kv_item', 'publish', 'closed', 'closed', '', 'field_618b8b04b1772', '', '', '2021-11-10 09:05:24', '2021-11-10 09:05:24', '', 87, 'http://localhost/flc-gialai/?post_type=acf-field&p=89', 1, 'acf-field', '', 0),
(90, 1, '2021-11-10 09:05:24', '2021-11-10 09:05:24', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Nội dung ngắn', 'sort_kv_item', 'publish', 'closed', 'closed', '', 'field_618b8b42b1774', '', '', '2021-11-10 09:05:24', '2021-11-10 09:05:24', '', 87, 'http://localhost/flc-gialai/?post_type=acf-field&p=90', 2, 'acf-field', '', 0),
(91, 1, '2021-11-10 09:08:14', '2021-11-10 09:08:14', '', 'beach', '', 'inherit', 'open', 'closed', '', 'beach', '', '', '2021-11-10 09:08:14', '2021-11-10 09:08:14', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/beach.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2021-11-10 09:08:15', '2021-11-10 09:08:15', '', 'beachbar', '', 'inherit', 'open', 'closed', '', 'beachbar', '', '', '2021-11-10 09:08:15', '2021-11-10 09:08:15', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/beachbar.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2021-11-10 09:08:15', '2021-11-10 09:08:15', '', 'sangolf', '', 'inherit', 'open', 'closed', '', 'sangolf', '', '', '2021-11-10 09:08:15', '2021-11-10 09:08:15', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/sangolf.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2021-11-10 09:09:24', '2021-11-10 09:09:24', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-10 09:09:24', '2021-11-10 09:09:24', '', 10, 'http://localhost/flc-gialai/?p=94', 0, 'revision', '', 0),
(95, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Khối hành trình kết nối', 'khối_hanh_trinh_kết_nối', 'publish', 'closed', 'closed', '', 'field_618b8c58e108f', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=95', 15, 'acf-field', '', 0),
(96, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh bản đồ', 'avr_maps', 'publish', 'closed', 'closed', '', 'field_618b8c6be1090', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=96', 16, 'acf-field', '', 0),
(97, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Box giao thông', 'gt_maps', 'publish', 'closed', 'closed', '', 'field_618b8cc2e1091', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=97', 17, 'acf-field', '', 0),
(98, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'title_gt', 'publish', 'closed', 'closed', '', 'field_618b8cf8e1092', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 97, 'http://localhost/flc-gialai/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mô tả ngắn', 'sort_gt', 'publish', 'closed', 'closed', '', 'field_618b8d0ee1093', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 97, 'http://localhost/flc-gialai/?post_type=acf-field&p=99', 1, 'acf-field', '', 0),
(100, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Nội dung', 'content_gt', 'publish', 'closed', 'closed', '', 'field_618b8d22e1094', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 97, 'http://localhost/flc-gialai/?post_type=acf-field&p=100', 2, 'acf-field', '', 0),
(101, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'item_gt', 'publish', 'closed', 'closed', '', 'field_618b8d32e1095', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 100, 'http://localhost/flc-gialai/?post_type=acf-field&p=101', 0, 'acf-field', '', 0),
(102, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Box vận tải', 'box_vantai', 'publish', 'closed', 'closed', '', 'field_618b8d58e1096', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=102', 18, 'acf-field', '', 0),
(103, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'title_vantai', 'publish', 'closed', 'closed', '', 'field_618b8e6ee109a', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 102, 'http://localhost/flc-gialai/?post_type=acf-field&p=103', 0, 'acf-field', '', 0),
(104, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Danh sách', 'danh_sach_vantai', 'publish', 'closed', 'closed', '', 'field_618b8d79e1097', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 102, 'http://localhost/flc-gialai/?post_type=acf-field&p=104', 1, 'acf-field', '', 0),
(105, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icon', 'icon_vantai', 'publish', 'closed', 'closed', '', 'field_618b8e17e1098', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 104, 'http://localhost/flc-gialai/?post_type=acf-field&p=105', 0, 'acf-field', '', 0),
(106, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Nội dung', 'item_vantai', 'publish', 'closed', 'closed', '', 'field_618b8e2ae1099', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 104, 'http://localhost/flc-gialai/?post_type=acf-field&p=106', 1, 'acf-field', '', 0),
(107, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Box du lịch', 'box_dulich', 'publish', 'closed', 'closed', '', 'field_618b8e88e109b', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=107', 19, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'title_dulich', 'publish', 'closed', 'closed', '', 'field_618b8e98e109c', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 107, 'http://localhost/flc-gialai/?post_type=acf-field&p=108', 0, 'acf-field', '', 0),
(109, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Danh sách', 'danh_sach_dulich', 'publish', 'closed', 'closed', '', 'field_618b8eade109d', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 107, 'http://localhost/flc-gialai/?post_type=acf-field&p=109', 1, 'acf-field', '', 0),
(110, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Số ấn tượng', 'numb_dulich', 'publish', 'closed', 'closed', '', 'field_618b8ec3e109e', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 109, 'http://localhost/flc-gialai/?post_type=acf-field&p=110', 0, 'acf-field', '', 0),
(111, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề số', 'titlenumb_dulich', 'publish', 'closed', 'closed', '', 'field_618b8ed5e109f', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 109, 'http://localhost/flc-gialai/?post_type=acf-field&p=111', 1, 'acf-field', '', 0),
(113, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Khối Sitemap', 'khối_sitemap', 'publish', 'closed', 'closed', '', 'field_618b8f0ce10a1', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=113', 20, 'acf-field', '', 0),
(114, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh đại diện', 'avar_sitemap', 'publish', 'closed', 'closed', '', 'field_618b8f18e10a2', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=114', 21, 'acf-field', '', 0),
(115, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Khối đối tác', 'khối_dối_tac', 'publish', 'closed', 'closed', '', 'field_618b8f3ce10a3', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=115', 22, 'acf-field', '', 0),
(116, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Danh sách đối tác', 'list_part', 'publish', 'closed', 'closed', '', 'field_618b8f43e10a4', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 12, 'http://localhost/flc-gialai/?post_type=acf-field&p=116', 23, 'acf-field', '', 0),
(117, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo_part', 'publish', 'closed', 'closed', '', 'field_618b8f64e10a5', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 116, 'http://localhost/flc-gialai/?post_type=acf-field&p=117', 0, 'acf-field', '', 0),
(118, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'title_part', 'publish', 'closed', 'closed', '', 'field_618b8f8fe10a6', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 116, 'http://localhost/flc-gialai/?post_type=acf-field&p=118', 1, 'acf-field', '', 0),
(119, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hotline', 'hotline_part', 'publish', 'closed', 'closed', '', 'field_618b8f9de10a7', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 116, 'http://localhost/flc-gialai/?post_type=acf-field&p=119', 2, 'acf-field', '', 0),
(120, 1, '2021-11-10 09:24:02', '2021-11-10 09:24:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link_part', 'publish', 'closed', 'closed', '', 'field_618b8fa5e10a8', '', '', '2021-11-10 09:24:02', '2021-11-10 09:24:02', '', 116, 'http://localhost/flc-gialai/?post_type=acf-field&p=120', 3, 'acf-field', '', 0),
(121, 1, '2021-11-10 09:27:38', '2021-11-10 09:27:38', '', 'part-1', '', 'inherit', 'open', 'closed', '', 'part-1', '', '', '2021-11-10 09:27:38', '2021-11-10 09:27:38', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/part-1.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2021-11-10 09:27:39', '2021-11-10 09:27:39', '', 'part-2', '', 'inherit', 'open', 'closed', '', 'part-2', '', '', '2021-11-10 09:27:39', '2021-11-10 09:27:39', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/part-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2021-11-10 09:27:39', '2021-11-10 09:27:39', '', 'part-3', '', 'inherit', 'open', 'closed', '', 'part-3', '', '', '2021-11-10 09:27:39', '2021-11-10 09:27:39', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/part-3.png', 0, 'attachment', 'image/png', 0),
(124, 1, '2021-11-10 09:27:40', '2021-11-10 09:27:40', '', 'part-4', '', 'inherit', 'open', 'closed', '', 'part-4', '', '', '2021-11-10 09:27:40', '2021-11-10 09:27:40', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/part-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2021-11-10 09:27:40', '2021-11-10 09:27:40', '', 'part-5', '', 'inherit', 'open', 'closed', '', 'part-5', '', '', '2021-11-10 09:27:40', '2021-11-10 09:27:40', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/part-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2021-11-10 09:27:57', '2021-11-10 09:27:57', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-10 09:27:57', '2021-11-10 09:27:57', '', 10, 'http://localhost/flc-gialai/?p=126', 0, 'revision', '', 0),
(127, 1, '2021-11-10 09:28:39', '2021-11-10 09:28:39', '', 'lienket', '', 'inherit', 'open', 'closed', '', 'lienket', '', '', '2021-11-10 09:28:39', '2021-11-10 09:28:39', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/lienket.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2021-11-10 09:30:42', '2021-11-10 09:30:42', '', 'icon-1', '', 'inherit', 'open', 'closed', '', 'icon-1', '', '', '2021-11-10 09:30:42', '2021-11-10 09:30:42', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/icon-1.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2021-11-10 09:30:42', '2021-11-10 09:30:42', '', 'icon-2', '', 'inherit', 'open', 'closed', '', 'icon-2', '', '', '2021-11-10 09:30:42', '2021-11-10 09:30:42', '', 10, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/icon-2.png', 0, 'attachment', 'image/png', 0),
(130, 1, '2021-11-10 09:32:13', '2021-11-10 09:32:13', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-10 09:32:13', '2021-11-10 09:32:13', '', 10, 'http://localhost/flc-gialai/?p=130', 0, 'revision', '', 0),
(131, 1, '2021-11-10 09:33:14', '2021-11-10 09:33:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mô tả', 'desc_dulich', 'publish', 'closed', 'closed', '', 'field_618b91cdc0c9e', '', '', '2021-11-10 09:33:14', '2021-11-10 09:33:14', '', 109, 'http://localhost/flc-gialai/?post_type=acf-field&p=131', 2, 'acf-field', '', 0),
(132, 1, '2021-11-10 09:37:22', '2021-11-10 09:37:22', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-10 09:37:22', '2021-11-10 09:37:22', '', 10, 'http://localhost/flc-gialai/?p=132', 0, 'revision', '', 0),
(133, 1, '2021-11-10 10:28:48', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-10 10:28:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/flc-gialai/?page_id=133', 0, 'page', '', 0),
(134, 1, '2021-11-10 10:29:55', '2021-11-10 10:29:55', '', 'Tin tức', '', 'publish', 'closed', 'closed', '', 'tin-tuc', '', '', '2021-11-10 10:32:48', '2021-11-10 10:32:48', '', 0, 'http://localhost/flc-gialai/?page_id=134', 0, 'page', '', 0),
(135, 1, '2021-11-10 10:29:55', '2021-11-10 10:29:55', '', 'Tin tức', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2021-11-10 10:29:55', '2021-11-10 10:29:55', '', 134, 'http://localhost/flc-gialai/?p=135', 0, 'revision', '', 0),
(136, 1, '2021-11-10 10:32:04', '2021-11-10 10:32:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"template-pages/news.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Tùy chỉnh trang tin tức', 'tuy-chinh-trang-tin-tuc', 'publish', 'closed', 'closed', '', 'group_618b9f3de825e', '', '', '2021-11-10 10:32:04', '2021-11-10 10:32:04', '', 0, 'http://localhost/flc-gialai/?post_type=acf-field-group&#038;p=136', 0, 'acf-field-group', '', 0),
(137, 1, '2021-11-10 10:32:04', '2021-11-10 10:32:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner tin tức', 'banner_news', 'publish', 'closed', 'closed', '', 'field_618b9f44bef7b', '', '', '2021-11-10 10:32:04', '2021-11-10 10:32:04', '', 136, 'http://localhost/flc-gialai/?post_type=acf-field&p=137', 0, 'acf-field', '', 0),
(138, 1, '2021-11-10 10:32:04', '2021-11-10 10:32:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề tin tức', 'title_news_cate', 'publish', 'closed', 'closed', '', 'field_618b9f75bef7c', '', '', '2021-11-10 10:32:04', '2021-11-10 10:32:04', '', 136, 'http://localhost/flc-gialai/?post_type=acf-field&p=138', 1, 'acf-field', '', 0),
(139, 1, '2021-11-10 10:32:04', '2021-11-10 10:32:04', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Mô tả ngắn', 'sort_news_cate', 'publish', 'closed', 'closed', '', 'field_618b9f87bef7d', '', '', '2021-11-10 10:32:04', '2021-11-10 10:32:04', '', 136, 'http://localhost/flc-gialai/?post_type=acf-field&p=139', 2, 'acf-field', '', 0),
(140, 1, '2021-11-10 10:32:43', '2021-11-10 10:32:43', '', 'bg-down', '', 'inherit', 'open', 'closed', '', 'bg-down', '', '', '2021-11-10 10:32:43', '2021-11-10 10:32:43', '', 134, 'http://localhost/flc-gialai/wp-content/uploads/2021/11/bg-down.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2021-11-10 10:32:48', '2021-11-10 10:32:48', '', 'Tin tức', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2021-11-10 10:32:48', '2021-11-10 10:32:48', '', 134, 'http://localhost/flc-gialai/?p=141', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tin tức', 'tin-tuc', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(55, 1, 0),
(66, 1, 0),
(68, 1, 0),
(70, 1, 0),
(72, 1, 0),
(74, 1, 0),
(76, 1, 0),
(78, 1, 0),
(80, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'devsupport_gialai'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"e25894d189933bf3a2b410a2be4e023b3ab8e8ac741d658cb6d4f6399b786d29\";a:4:{s:10:\"expiration\";i:1637642129;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36\";s:5:\"login\";i:1636432529;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_acf-field-group', 'a:2:{i:0;s:25:\"acf-field-group-locations\";i:1;s:23:\"acf-field-group-options\";}'),
(19, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1'),
(21, 1, 'wp_user-settings-time', '1636540364');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'devsupport_gialai', '$P$BG3Tdoc/GuTd96C/HyTXOvUTcs/LH.1', 'devsupport_gialai', 'ledinhson209@gmail.com', 'http://localhost/flc-gialai', '2021-11-09 04:34:37', '', 0, 'devsupport_gialai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `initiator` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_summary_report_email', 'W10=', '2021-11-09 04:45:13'),
(2, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-11-09 04:49:33'),
(3, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-11-10 07:34:48');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Chỉ mục cho bảng `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Chỉ mục cho bảng `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1252;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
