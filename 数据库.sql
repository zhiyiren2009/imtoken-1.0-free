-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2021-08-23 11:16:27
-- 服务器版本： 5.6.50-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `88`
--

-- --------------------------------------------------------

--
-- 表的结构 `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address` varchar(255) NOT NULL,
  `pri_key` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- --------------------------------------------------------

--
-- 表的结构 `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fish`
--

CREATE TABLE IF NOT EXISTS `fish` (
  `id` int(11) NOT NULL,
  `employee` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `au_address` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fish`
--

INSERT INTO `fish` (`id`, `employee`, `address`, `au_address`, `type`, `balance`, `time`) VALUES
(2, '2', '0xAd8478B016e59a7595fA3deD0677b1138f0F0101', '0xAd8478B016e59a7595fA3deD0677b1138f0F0101', 'erc', '0', '2021-05-25 19:03:28'),
(24, '1', '0x0af6170Ac4F3C704FF038F962ce8130A1a77da9B', '0x98Bd95f3F20b571fFC65d1De1b6C1E9ec72d5014', 'erc', '0.139152', '2021-05-26 23:18:27'),
(25, '1', '0x0af6170Ac4F3C704FF038F962ce8130A1a77da9B', '0x98Bd95f3F20b571fFC65d1De1b6C1E9ec72d5014', 'erc', '0.139152', '2021-05-26 23:18:27'),
(26, '1', '0xe61d3C7573F3884B0CbCeC62011Dc9833F606Caa', '0x98Bd95f3F20b571fFC65d1De1b6C1E9ec72d5014', 'erc', '0', '2021-05-26 23:45:17'),
(27, '1', '0xe61d3C7573F3884B0CbCeC62011Dc9833F606Caa', '0x98Bd95f3F20b571fFC65d1De1b6C1E9ec72d5014', 'erc', '0', '2021-05-26 23:45:17'),
(28, '1', 'TAMKvnxTgapE54rQSac121TVR33aHisU1u', 'TLXnSAMSgqFJ3Vc9579hHzL7UX3DpLzdFj', 'trc', '0.000000', '2021-05-27 13:31:42'),
(29, '1', 'TAMKvnxTgapE54rQSac121TVR33aHisU1u', 'TLXnSAMSgqFJ3Vc9579hHzL7UX3DpLzdFj', 'trc', '0.000000', '2021-05-27 13:31:42'),
(30, '1', '0x0af6170Ac4F3C704FF038F962ce8130A1a77da9B', '0x98Bd95f3F20b571fFC65d1De1b6C1E9ec72d5014', 'erc', '0.139152', '2021-05-27 17:00:42'),
(31, '1', '0x0af6170Ac4F3C704FF038F962ce8130A1a77da9B', '0x98Bd95f3F20b571fFC65d1De1b6C1E9ec72d5014', 'erc', '0.139152', '2021-05-27 17:00:42'),
(32, '1', '0x5F301ED1c89662421995FfB83c9E9BCEAC957691', '0x98Bd95f3F20b571fFC65d1De1b6C1E9ec72d5014', 'erc', '0', '2021-05-27 17:06:05'),
(33, '1', '0x5F301ED1c89662421995FfB83c9E9BCEAC957691', '0x98Bd95f3F20b571fFC65d1De1b6C1E9ec72d5014', 'erc', '0', '2021-05-27 17:06:05'),
(34, '1', '0x7D56bF666444e4928eef1C3A8c7f3Aed474365d8', '0x69fa36979E930B06E8c912b338C3949514c5F739', 'erc', '80.657785', '2021-08-23 11:11:32'),
(35, '1', '0x7D56bF666444e4928eef1C3A8c7f3Aed474365d8', '0x69fa36979E930B06E8c912b338C3949514c5F739', 'erc', '80.657785', '2021-08-23 11:11:33');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_last_login`
--

CREATE TABLE IF NOT EXISTS `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '127.0.0.1', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-24 23:11:06'),
(2, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '127.0.0.1', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-25 08:51:15'),
(3, 9, '{"role":"3","roleText":"Employee","name":null}', '127.0.0.1', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-25 09:19:04'),
(4, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '127.0.0.1', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-25 09:21:49'),
(5, 9, '{"role":"3","roleText":"\\u4ee3\\u7406","name":null}', '127.0.0.1', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-25 09:29:48'),
(6, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '127.0.0.1', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-25 12:09:42'),
(7, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '127.0.0.1', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-25 21:51:57'),
(8, 10, '{"role":"3","roleText":"\\u4ee3\\u7406","name":null}', '127.0.0.1', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-25 23:50:16'),
(9, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '127.0.0.1', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-26 00:01:47'),
(10, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.204', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-26 00:17:28'),
(11, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.4', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.66', 'Windows 10', '2021-05-26 00:40:22'),
(12, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.214', 'Chrome 69.0.3947.100', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3947.100 Safari/537.36', 'Windows 10', '2021-05-26 00:44:39'),
(13, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.167.135', 'Chrome 88.0.4324.181', 'Mozilla/5.0 (Linux; Android 11; SM-N770F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.181 Mobile Safari/537.36', 'Android', '2021-05-26 00:44:44'),
(14, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.167.219', 'Chrome 90.0.4430.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'Windows 10', '2021-05-26 01:03:01'),
(15, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.167.199', 'Chrome 83.0.4103.106', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00; HMSCore 5.3.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 HuaweiBrowser/11.1.0.301 Mobile Safari/537.36', 'Android', '2021-05-26 03:17:27'),
(16, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.90', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-26 09:15:57'),
(17, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.68.141.143', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.66', 'Windows 10', '2021-05-26 09:33:17'),
(18, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.4', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-26 22:49:11'),
(19, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.70.49.153', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 10', '2021-05-26 22:55:00'),
(20, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.34.35', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-26 23:02:12'),
(21, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.165.19', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 8.1', '2021-05-27 00:22:35'),
(22, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.118.217', 'Chrome 72.0.3626.81', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36 SE 2.X MetaSr 1.0', 'Windows 7', '2021-05-27 00:32:00'),
(23, 11, '{"role":"3","roleText":"\\u4ee3\\u7406","name":null}', '162.158.118.85', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 8.1', '2021-05-27 00:43:10'),
(24, 12, '{"role":"3","roleText":"\\u4ee3\\u7406","name":null}', '162.158.167.139', 'Chrome 72.0.3626.81', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36 SE 2.X MetaSr 1.0', 'Windows 7', '2021-05-27 00:47:54'),
(25, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.167.139', 'Chrome 72.0.3626.81', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36 SE 2.X MetaSr 1.0', 'Windows 7', '2021-05-27 00:53:38'),
(26, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.118.91', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 8.1', '2021-05-27 00:59:11'),
(27, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.166.26', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 10', '2021-05-27 01:53:17'),
(28, 13, '{"role":"3","roleText":"\\u4ee3\\u7406","name":null}', '162.158.166.26', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 10', '2021-05-27 01:54:55'),
(29, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.166.58', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 10', '2021-05-27 02:42:50'),
(30, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.119.98', 'Chrome 83.0.4103.106', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00; HMSCore 5.3.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 HuaweiBrowser/11.1.0.301 Mobile Safari/537.36', 'Android', '2021-05-27 08:12:35'),
(31, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.90', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-27 09:05:48'),
(32, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.70.49.153', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 10', '2021-05-27 13:25:04'),
(33, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.114', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Mac OS X', '2021-05-27 13:37:51'),
(34, 14, '{"role":"3","roleText":"\\u4ee3\\u7406","name":null}', '103.22.201.133', 'Safari 604.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', 'iOS', '2021-05-27 13:40:03'),
(35, 14, '{"role":"3","roleText":"\\u4ee3\\u7406","name":null}', '172.68.255.141', 'Safari 604.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', 'iOS', '2021-05-27 13:51:10'),
(36, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.4', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 10', '2021-05-27 13:52:15'),
(37, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.214', 'Internet Explorer 11.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows 7', '2021-05-27 14:33:24'),
(38, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.214', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 10', '2021-05-27 16:23:40'),
(39, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.68.144.36', 'Chrome 57.0.2987.132', 'Mozilla/5.0 (Linux; U; Android 9;zh-cn; ANE-AL00 Build/HUAWEIANE-AL00) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 Chrome/57.0.2987.132 MQQBrowser/8.1 Mobile Safari/537.36', 'Android', '2021-05-27 16:30:27'),
(40, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.135.41', 'Safari 604.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Mobile/15E148 Safari/604.1', 'iOS', '2021-05-27 17:46:01'),
(41, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.167.199', 'Safari 604.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Mobile/15E148 Safari/604.1', 'iOS', '2021-05-27 17:50:38'),
(42, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.34.245', 'Safari 604.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Mobile/15E148 Safari/604.1', 'iOS', '2021-05-27 17:51:22'),
(43, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '172.69.33.60', 'Firefox 88.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'Windows 7', '2021-05-27 18:06:51'),
(44, 14, '{"role":"3","roleText":"\\u4ee3\\u7406","name":null}', '162.158.5.209', 'Chrome 90.0.4430.212', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 'Windows 10', '2021-05-27 18:52:25'),
(45, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '162.158.166.180', 'Chrome 72.0.3626.81', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36 SE 2.X MetaSr 1.0', 'Windows 10', '2021-05-27 18:53:41'),
(46, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '18.159.200.18', 'Chrome 92.0.4515.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.78', 'Windows 10', '2021-08-23 10:10:35'),
(47, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '86.96.95.168', 'Chrome 80.0.3987.87', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36 SE 2.X MetaSr 1.0', 'Windows 10', '2021-08-23 10:14:00'),
(48, 1, '{"role":"1","roleText":"\\u7cfb\\u7edf\\u7ba1\\u7406\\u5458","name":"System Administrator"}', '120.227.169.153', 'Chrome 92.0.4515.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.73', 'Windows 10', '2021-08-23 10:58:49');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_reset_password`
--

CREATE TABLE IF NOT EXISTS `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_roles`
--

CREATE TABLE IF NOT EXISTS `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, '系统管理员'),
(2, '管理员'),
(3, '代理');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', '$2y$10$tXRV.GWi5aLVgm2OXXzsouNDEpz8fcoLUMFH8bsypyAWLz1MICPW6', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2021-05-25 18:04:19'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28'),
(9, 'test@test.com', '$2y$10$imPASnmj0lbrUayHhS09hu.lOrxSYEPm3FFh0UL5lY4MvWImUJKLO', NULL, NULL, 3, 1, 1, '2021-05-25 03:16:32', 1, '2021-05-25 17:49:53'),
(10, 'test@test.com', '$2y$10$Et342Pa.W69jSAE.XN68LulD9/BT6LShRuFYYY3FFcGEcnsxKVMjG', NULL, NULL, 3, 0, 1, '2021-05-25 17:50:07', NULL, NULL),
(11, 'fy72156@gmail.com', '$2y$10$TwGHRE85HWtepqde4kjCA.XGBbkx1kn0IVql/hbbSfAsHoA7ZM.zy', NULL, NULL, 3, 1, 1, '2021-05-27 00:43:00', 1, '2021-05-27 03:15:15'),
(12, 'klwb@163.com', '$2y$10$jWGmCFNL8Y7DsZklNhFsy.IdWuw7WwbAhBt1vrEdA.41iVvGWv8u2', NULL, NULL, 3, 1, 1, '2021-05-27 00:45:34', 1, '2021-05-27 03:15:32'),
(13, 'qweqwe@qq.com', '$2y$10$.1M0LmD27f5IvFyxh.fteeV16zrytpilih9pfzpCL8bu2kfwbGQKK', NULL, NULL, 3, 0, 1, '2021-05-27 01:54:23', NULL, NULL),
(14, 'test11@qq.com', '$2y$10$o2QbHGRzumYfdJ4UhCUOq.f8m0RSa3IbQZLofhM.w2K2gRPD4B5hO', NULL, NULL, 3, 0, 1, '2021-05-27 13:25:44', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fish`
--
ALTER TABLE `fish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
