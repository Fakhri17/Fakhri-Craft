-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Des 2019 pada 08.16
-- Versi server: 5.7.24
-- Versi PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_assetindexdata`
--

CREATE TABLE `my_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_assets`
--

CREATE TABLE `my_assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_assets`
--

INSERT INTO `my_assets` (`id`, `volumeId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 1, 1, 'bio.jpg', 'image', 3264, 3264, 633987, NULL, NULL, NULL, '2019-11-10 05:56:13', '2019-11-10 05:56:13', '2019-11-10 05:56:13', 'df2773b8-94eb-4a73-87ee-d4cc679ba7fc'),
(24, 1, 1, 'nodejs-1572857062882-3093.jpg', 'image', 2560, 1440, 133757, NULL, NULL, NULL, '2019-11-11 07:35:31', '2019-11-11 07:35:31', '2019-11-11 07:35:31', '3c3ff399-85af-4671-8937-4ac1b02286c0'),
(25, 1, 1, 'Capture.JPG', 'image', 494, 389, 17200, NULL, NULL, NULL, '2019-11-11 07:50:53', '2019-11-11 07:50:53', '2019-11-11 07:50:53', '2beaf7f1-dc77-4e80-9f02-c5b453cefb18'),
(26, 1, 1, 'Capture2.JPG', 'image', 794, 591, 98329, NULL, NULL, NULL, '2019-11-11 07:54:07', '2019-11-11 07:54:07', '2019-11-11 07:54:07', 'c6ceab37-4f4e-426d-9752-fa559ad53b4b'),
(28, 1, 1, 'Capture1.JPG', 'image', 497, 384, 42646, NULL, NULL, NULL, '2019-11-11 08:18:30', '2019-11-11 08:18:30', '2019-11-11 08:18:30', 'ec867fe8-9efb-4724-b8bd-af8ac3c1564e'),
(43, 1, 1, 'capture3.JPG', 'image', 493, 385, 18192, NULL, NULL, NULL, '2019-11-13 08:40:08', '2019-11-13 08:40:09', '2019-11-13 08:40:09', '4be5d372-299d-47e9-848a-8b641abd877a'),
(44, 1, 1, 'Capture4.JPG', 'image', 493, 382, 30957, NULL, NULL, NULL, '2019-11-13 08:45:00', '2019-11-13 08:45:02', '2019-11-13 08:45:02', 'f46528f5-f57a-49a5-9ad4-555789d13bf3'),
(45, 1, 1, 'Capture5.JPG', 'image', 493, 385, 17848, NULL, NULL, NULL, '2019-11-13 08:46:16', '2019-11-13 08:46:17', '2019-11-13 08:46:17', '607d22c7-391b-4863-8ea0-23583a985a0a'),
(46, 1, 1, 'Capture8.JPG', 'image', 975, 510, 22689, NULL, NULL, NULL, '2019-11-13 08:47:06', '2019-11-13 08:47:07', '2019-11-13 08:47:07', 'ae9b9996-c6c6-4e04-bb98-40af1ab9f21e'),
(67, 1, 1, 'composer.jpg', 'image', 900, 341, 16098, NULL, NULL, NULL, '2019-11-14 04:17:51', '2019-11-14 04:17:51', '2019-11-14 04:17:51', 'dce98aa9-29e0-4ea2-997a-81a86e9ade82'),
(73, 1, 1, 'dev.jpg', 'image', 739, 415, 44701, NULL, NULL, NULL, '2019-11-14 08:45:20', '2019-11-14 08:45:20', '2019-11-14 08:45:20', '29994a7f-e544-4468-a257-9428c38ceef5'),
(85, 1, 1, 'cara-install-composer-di-windows-1024x607.png', 'image', 1024, 607, 206053, NULL, NULL, NULL, '2019-11-17 15:18:49', '2019-11-17 15:18:49', '2019-11-17 15:18:49', 'd4aedcfe-a4a1-4846-9a0c-3b90727ead23'),
(86, 1, 1, 'cara-install-composer-di-windows.jpeg', 'image', 522, 422, 36996, NULL, NULL, NULL, '2019-11-17 15:25:27', '2019-11-17 15:25:27', '2019-11-17 15:25:27', '632b1555-1646-4c59-94de-47a6b3d03649'),
(87, 1, 1, 'install-composer-di-windows.jpeg', 'image', 522, 406, 31713, NULL, NULL, NULL, '2019-11-17 15:26:04', '2019-11-17 15:26:04', '2019-11-17 15:26:04', 'c58128be-980b-49c7-b716-246fa19d275e'),
(88, 1, 1, 'kegunaan-composer.jpeg', 'image', 725, 515, 83821, NULL, NULL, NULL, '2019-11-17 15:26:27', '2019-11-17 15:26:27', '2019-11-17 15:26:27', 'f300b5ab-6157-4038-b141-4719b0dabc5b'),
(111, 1, 1, 'dev-11.jpg', 'image', 320, 180, 12644, NULL, NULL, NULL, '2019-11-19 10:24:56', '2019-11-19 10:24:56', '2019-11-19 10:24:56', '797e87c1-3753-4042-9028-595094c72603'),
(112, 1, 1, 'dev-10.jpg', 'image', 320, 180, 12889, NULL, NULL, NULL, '2019-11-19 10:24:57', '2019-11-19 10:24:57', '2019-11-19 10:24:57', '2437dd98-db9e-4681-adf6-b13b394c51eb'),
(113, 1, 1, 'dev-6.jpg', 'image', 320, 180, 12249, NULL, NULL, NULL, '2019-11-19 10:24:59', '2019-11-19 10:24:59', '2019-11-19 10:24:59', '2bb709a5-547c-4dfe-a704-b384efe9942c'),
(114, 1, 1, 'dev-5.jpg', 'image', 320, 180, 12765, NULL, NULL, NULL, '2019-11-19 10:25:00', '2019-11-19 10:25:00', '2019-11-19 10:25:00', '47a2905f-6ce2-4e5b-a391-7f46d6cbf23c'),
(115, 1, 1, 'dev-3.jpg', 'image', 320, 180, 13466, NULL, NULL, NULL, '2019-11-19 10:25:03', '2019-11-19 10:25:03', '2019-11-19 10:25:03', 'ed650ee4-5133-4771-b75d-82cdc25a727f'),
(116, 1, 1, 'dev-2.jpg', 'image', 320, 180, 11080, NULL, NULL, NULL, '2019-11-19 10:25:04', '2019-11-19 10:25:04', '2019-11-19 10:25:04', '5d82c8b2-a1b5-401f-b98f-9bbc5b6bfe54'),
(117, 1, 1, 'dev-9.jpg', 'image', 320, 180, 12266, NULL, NULL, NULL, '2019-11-19 10:30:28', '2019-11-19 10:30:29', '2019-11-19 10:30:29', '8e60e96e-f085-480d-9879-e514f84deffc'),
(118, 1, 1, 'dev-4.jpg', 'image', 320, 180, 13430, NULL, NULL, NULL, '2019-11-19 10:30:30', '2019-11-19 10:30:30', '2019-11-19 10:30:30', '7b977748-8e5e-4ee7-be48-1a82f29c7804'),
(134, 1, 1, 'gulp-ban.png', 'image', 1200, 600, 18448, NULL, NULL, NULL, '2019-11-20 08:32:43', '2019-11-20 08:32:43', '2019-11-20 08:32:43', '9ed93e20-9873-4775-8d50-c7ff1d6897d5'),
(137, 1, 1, 'gulp-2.JPG', 'image', 1124, 561, 40247, NULL, NULL, NULL, '2019-11-20 08:41:45', '2019-11-20 08:41:45', '2019-11-20 08:41:45', 'ea4782e9-1e73-42c6-8b9b-286d808edf81'),
(138, 1, 1, 'gulp-1.JPG', 'image', 1118, 558, 22733, NULL, NULL, NULL, '2019-11-20 08:41:47', '2019-11-20 08:41:47', '2019-11-20 08:41:47', '0bc6290d-1e24-423e-84ee-2a8244263b8b'),
(139, 1, 1, 'gulp.JPG', 'image', 976, 509, 49968, NULL, NULL, NULL, '2019-11-20 08:41:49', '2019-11-20 08:41:49', '2019-11-20 08:41:49', '3e98ed05-5eb1-48e6-82b9-14f2ec769654'),
(140, 1, 1, 'gulp-5.JPG', 'image', 1126, 564, 75971, NULL, NULL, NULL, '2019-11-20 08:42:15', '2019-11-20 08:42:17', '2019-11-20 08:42:17', '2079f769-2b16-40fb-b083-0dc795180286'),
(141, 1, 1, 'gulp-4.JPG', 'image', 1119, 574, 54789, NULL, NULL, NULL, '2019-11-20 08:42:22', '2019-11-20 08:42:22', '2019-11-20 08:42:22', 'd2b0c4f8-6473-4768-bdba-d4d4be1fe386'),
(142, 1, 1, 'gulp-3.JPG', 'image', 1131, 571, 61969, NULL, NULL, NULL, '2019-11-20 08:43:26', '2019-11-20 08:43:26', '2019-11-20 08:43:26', 'f482023c-9495-4a63-b68a-0932143f431c'),
(143, 1, 1, 'gulp-6.JPG', 'image', 769, 711, 32082, NULL, NULL, NULL, '2019-11-20 08:43:35', '2019-11-20 08:43:35', '2019-11-20 08:43:35', 'b79d5d57-eeb4-41dc-b845-bcc109f6b661'),
(144, 1, 1, 'gulp-8.JPG', 'image', 985, 688, 35824, NULL, 0, 0, '2019-11-20 08:43:50', '2019-11-20 08:43:50', '2019-11-20 08:43:50', 'dc85158b-ba72-4cf7-96a6-c2ad2bc03766'),
(145, 1, 1, 'gulp-7.JPG', 'image', 977, 661, 28330, NULL, 0, 0, '2019-11-20 08:43:53', '2019-11-20 08:43:53', '2019-11-20 08:43:53', 'dfbc007f-7a83-4339-8ebc-285e679313d5'),
(146, 1, 1, 'gulp-10.JPG', 'image', 741, 133, 15062, NULL, NULL, NULL, '2019-11-20 08:44:18', '2019-11-20 08:44:18', '2019-11-20 08:44:18', '7a0e3045-5fb8-4ca6-ae25-cc280c43a048'),
(147, 1, 1, 'gulp-9.JPG', 'image', 1125, 563, 29164, NULL, NULL, NULL, '2019-11-20 08:44:21', '2019-11-20 08:44:21', '2019-11-20 08:44:21', '5038097c-17df-482b-b250-c2b4c2cc2bda'),
(148, 1, 1, 'gulp-11.JPG', 'image', 679, 113, 14275, NULL, NULL, NULL, '2019-11-20 08:51:38', '2019-11-20 08:51:38', '2019-11-20 08:51:38', '8d5d8bc2-49f7-43ee-9d2a-41b4aef28cbe'),
(152, 1, 1, 'gulp-7.JPG', 'image', 1366, 768, 77363, NULL, NULL, NULL, '2019-11-20 12:31:39', '2019-11-20 12:31:39', '2019-11-20 12:31:39', '36dbd3d5-34b2-4ddf-939e-c3cfda203b95'),
(158, 1, 1, 'share-fb.png', 'image', 1200, 630, 24317, NULL, NULL, NULL, '2019-11-21 03:00:43', '2019-11-21 03:00:43', '2019-11-21 03:00:43', '8b4f0c07-b868-4286-966d-77cfdd7c17c3'),
(162, 1, 1, 'Typed-js.JPG', 'image', 1351, 546, 61456, NULL, NULL, NULL, '2019-11-21 03:31:25', '2019-11-21 03:31:25', '2019-11-21 03:31:25', '2ff0b358-d574-489c-9753-1eec9944758b'),
(164, 1, 1, 'Dracula.JPG', 'image', 635, 251, 14917, NULL, NULL, NULL, '2019-11-21 03:45:03', '2019-11-21 03:45:03', '2019-11-21 03:45:03', '57f1cb35-5b97-4c9a-85b1-39460250946e'),
(165, 1, 1, 'swal2-logo.png', 'image', 664, 280, 39922, NULL, NULL, NULL, '2019-11-21 04:08:41', '2019-11-21 04:08:41', '2019-11-21 04:08:41', 'b9cf3e41-a0e5-458c-a227-242cbdffebe7'),
(176, 1, 1, 'termux.png', 'image', 1204, 677, 14767, NULL, NULL, NULL, '2019-11-21 08:23:44', '2019-11-21 08:23:45', '2019-11-21 08:23:45', '45be3e85-4fe5-49d9-a40e-430232054a9a'),
(179, 1, 1, 'Screenshot_2019-11-21-16-09-16-49.png', 'image', 1080, 2340, 450718, NULL, 0, 0, '2019-11-21 09:33:33', '2019-11-21 09:33:34', '2019-11-21 09:33:34', '2d147c29-3533-4b55-b03e-da378ccb7e75'),
(180, 1, 1, 'Screenshot_2019-11-21-16-06-23-75_84d3000e3f4017145260f7618db1d683.png', 'image', 1080, 2340, 229033, NULL, 0, 0, '2019-11-21 09:33:44', '2019-11-21 09:33:44', '2019-11-21 09:33:44', '80db99f8-d54a-4ae6-b49b-eaf58beeafc5'),
(181, 1, 1, 'Screenshot_2019-11-21-16-04-02-88.png', 'image', 1080, 2340, 179495, NULL, 0, 0, '2019-11-21 09:34:34', '2019-11-21 09:34:35', '2019-11-21 09:34:35', '0a2f43ae-5979-4229-8fa2-030b68681b7d'),
(182, 1, 1, 'Screenshot_2019-11-21-16-03-16-75_84d3000e3f4017145260f7618db1d683.png', 'image', 1080, 2340, 239126, NULL, 0, 0, '2019-11-21 09:34:51', '2019-11-21 09:34:51', '2019-11-21 09:34:51', '85f94b62-68ee-425c-a299-eae7bb6576c9'),
(183, 1, 1, 'Screenshot_2019-11-21-16-03-00-50_84d3000e3f4017145260f7618db1d683.png', 'image', 1080, 2340, 160653, NULL, 0, 0, '2019-11-21 09:35:43', '2019-11-21 09:35:43', '2019-11-21 09:35:43', '24bc2f92-e5f6-499a-8229-ca2eed905d36'),
(184, 1, 1, 'Screenshot_2019-11-21-16-02-19-80_84d3000e3f4017145260f7618db1d683.png', 'image', 1080, 2340, 156806, NULL, 0, 0, '2019-11-21 09:36:36', '2019-11-21 09:36:36', '2019-11-21 09:36:36', 'ae3b426d-5345-49ce-a5da-8fb55028572b'),
(185, 1, 1, 'Screenshot_2019-11-21-16-01-39-90_84d3000e3f4017145260f7618db1d683.png', 'image', 1080, 2340, 157730, NULL, 0, 0, '2019-11-21 09:36:55', '2019-11-21 09:36:55', '2019-11-21 09:36:55', '85676f1e-0a55-4a2e-b527-7a1dcae8bad2'),
(186, 1, 1, 'run.png', 'image', 1080, 2340, 450718, NULL, NULL, NULL, '2019-11-21 09:58:22', '2019-11-21 09:58:23', '2019-11-21 09:58:23', '92086451-ed83-481c-942b-dfc78af5c8c1'),
(187, 1, 1, 'localhost.png', 'image', 1079, 723, 69257, NULL, NULL, NULL, '2019-11-21 10:11:56', '2019-11-21 09:59:14', '2019-11-21 10:11:56', '7c2f95e5-024a-47c9-a289-52c07655e571'),
(188, 1, 1, 'file-sd.png', 'image', 1080, 2340, 179495, NULL, NULL, NULL, '2019-11-21 10:00:38', '2019-11-21 10:00:38', '2019-11-21 10:00:38', '4a2ed8e9-a975-404f-9ae4-34d8ad4add16'),
(189, 1, 1, 'ls.png', 'image', 1080, 2340, 239126, NULL, NULL, NULL, '2019-11-21 10:01:08', '2019-11-21 10:01:08', '2019-11-21 10:01:08', '6408a0d1-93e3-47b1-885c-e4552056a018'),
(190, 1, 1, 'pkg-php.png', 'image', 1079, 2086, 180786, NULL, NULL, NULL, '2019-11-21 10:05:51', '2019-11-21 10:04:42', '2019-11-21 10:05:51', 'e73c5d87-f9d9-45c5-9c27-af7367928f6c'),
(192, 1, 1, 'setup-storage.png', 'image', 1080, 2340, 156806, NULL, NULL, NULL, '2019-11-21 10:07:14', '2019-11-21 10:07:14', '2019-11-21 10:07:14', 'ca9d5544-ee49-42ab-9280-da0d8c7f6102'),
(196, 1, 1, 'shutterstock_345474398.jpg', 'image', 1000, 662, 352646, NULL, NULL, NULL, '2019-11-22 10:04:11', '2019-11-22 10:04:11', '2019-11-22 10:04:11', '113940c8-f3f1-4418-bd8d-90341a02ff47'),
(197, 1, 1, 'code.JPG', 'image', 1366, 729, 83331, NULL, NULL, NULL, '2019-11-22 10:20:27', '2019-11-22 10:20:28', '2019-11-22 10:20:28', '8d55b1ab-87f2-4add-895a-7ce4fdca8255'),
(198, 1, 1, 'CODE1.JPG', 'image', 1366, 613, 22756, NULL, NULL, NULL, '2019-11-22 10:21:16', '2019-11-22 10:21:16', '2019-11-22 10:21:16', '4e8a13ad-95fc-4582-b0d6-d3c3d090c238'),
(204, 1, 1, 'cpp_programming_636525045026590902.png', 'image', 500, 300, 26596, NULL, NULL, NULL, '2019-11-23 03:36:23', '2019-11-23 03:36:25', '2019-11-23 03:36:25', '4717f4b4-44d5-4383-ac99-aa381c8ebbfe'),
(213, 1, 1, 'titleShadow-1024x341.png', 'image', 1024, 341, 283661, NULL, NULL, NULL, '2019-11-23 04:08:57', '2019-11-23 04:08:57', '2019-11-23 04:08:57', 'e50ff042-26d7-47f9-833d-ad613db893a8'),
(216, 1, 1, 'course_c_mediumbanner.jpg', 'image', 1024, 512, 139686, NULL, NULL, NULL, '2019-11-23 04:12:23', '2019-11-23 04:12:23', '2019-11-23 04:12:23', 'ecf7d8f3-1ba2-416f-a322-a1f44e36bf9b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_assettransformindex`
--

CREATE TABLE `my_assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_assettransforms`
--

CREATE TABLE `my_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_categories`
--

CREATE TABLE `my_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_categories`
--

INSERT INTO `my_categories` (`id`, `groupId`, `parentId`, `deletedWithGroup`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 0, '2019-11-10 03:47:58', '2019-11-10 03:47:58', '687cf3e1-47c4-48a4-b380-b4ba86d58ee5'),
(79, 1, NULL, NULL, '2019-11-17 14:50:57', '2019-11-17 14:50:57', '066c1eb4-e22f-4d4c-ba2b-96ae3818bc07'),
(80, 1, NULL, NULL, '2019-11-17 14:51:24', '2019-11-17 14:51:24', 'f2937838-ad4c-4252-966c-5197745fedfc'),
(81, 1, NULL, NULL, '2019-11-17 14:51:38', '2019-11-17 14:51:38', '1704b117-c0cd-411f-9a80-b044fbd61385');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_categorygroups`
--

CREATE TABLE `my_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_categorygroups`
--

INSERT INTO `my_categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, NULL, 'kategori', 'kategori', '2019-11-10 03:47:36', '2019-11-10 03:47:36', NULL, '70d87268-d75d-4e59-9dba-5deeeb3932ff');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_categorygroups_sites`
--

CREATE TABLE `my_categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_categorygroups_sites`
--

INSERT INTO `my_categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'kategori/{slug}', 'blog/_entry_kategori_list', '2019-11-10 03:47:36', '2019-12-05 07:49:32', '848eb0e6-e753-4cee-a0e3-51d715063f47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_content`
--

CREATE TABLE `my_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_contentText` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_content`
--

INSERT INTO `my_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_contentText`) VALUES
(1, 1, 1, NULL, '2019-11-06 13:43:05', '2019-11-06 13:43:05', 'e29e89b3-9782-44a1-8c07-14a990b07b10', NULL),
(2, 2, 1, 'Teknologi', '2019-11-10 03:47:58', '2019-11-10 03:47:58', '4ceac482-cbcf-4130-ab9e-409214d1e846', NULL),
(3, 3, 1, NULL, '2019-11-10 05:40:21', '2019-11-10 05:40:59', '540b25b3-8a7d-4ff7-bf08-35e856348e57', NULL),
(5, 5, 1, 'Fakhri Alauddin', '2019-11-10 05:43:02', '2019-12-05 08:05:28', 'adeef3cc-7557-413a-a7e1-77c5e7c2947b', '<p>Perkenalkan nama saya <strong>Fakhri Alauddin. </strong>Saya adalah seorang pelajar SMK di <strong>SMKN 2 Surabaya. </strong>Saya lahir di Jombang, pada tanggal 31 Maret 2001. Saat ini saya berumur 18 tahun. Hobi dan Cita-Cita saya adalah Coding dan suatu saat saya bisa jadi seorang Programmer.<br /><br /></p><div><p>Kesehariaan saya saat ini adalah magang di Pikar Labs. Saat ini saya fokus pada bidang Website Developer bagian Front-End Web. Saya melakukan kegiatan magang ini selama 6 bulan. Dari pengalaman magang saya hingga saat ini. Saya mendapatkan ilmu yang banyak, terutama bidang web dev.<br /><br /></p></div>'),
(6, 6, 1, 'Fakhri Alauddin', '2019-11-10 05:43:03', '2019-11-10 05:43:03', 'f16cf2c2-0b7a-4568-b5b9-b7a69d69cbb8', NULL),
(7, 7, 1, 'Bio', '2019-11-10 05:56:08', '2019-11-10 05:56:08', '0dc63422-8c0a-461a-ac02-0cc29f55580b', NULL),
(8, 8, 1, 'Fakhri Alauddin', '2019-11-10 05:57:07', '2019-11-10 05:57:07', 'ecb6c028-ef29-4c74-92d0-d63d21941565', NULL),
(9, 9, 1, 'Fakhri Alauddin', '2019-11-10 05:58:18', '2019-11-10 05:58:18', 'a22a13c9-49f6-4482-8fd9-5030c3f2e32c', NULL),
(11, 11, 1, 'homepage', '2019-11-10 05:59:00', '2019-11-10 05:59:00', 'd73faa9c-e44b-4804-96c1-5fcf3e3579ff', NULL),
(12, 12, 1, 'homepage', '2019-11-10 05:59:00', '2019-11-10 05:59:00', '8db36acc-edde-489b-8dfe-ed27d08da9bd', NULL),
(14, 14, 1, 'Title', '2019-11-10 06:32:31', '2019-11-10 10:13:21', '36d2c9e2-3c1e-443b-adee-e558824fe577', NULL),
(15, 15, 1, 'Homepage', '2019-11-10 06:32:32', '2019-11-10 06:32:32', 'deee112a-7ae6-4427-a278-9ea39740fba1', NULL),
(16, 16, 1, 'Fakhri Alauddin', '2019-11-10 06:34:44', '2019-11-10 06:34:44', '6a1fe58e-1068-4fa1-bf1f-b403fdc6726a', NULL),
(17, 17, 1, 'Fakhri Alauddin', '2019-11-10 06:45:35', '2019-11-10 06:45:35', '7e38740a-ebe9-4d04-84ee-e5a73669c708', NULL),
(18, 18, 1, 'Title', '2019-11-10 10:13:21', '2019-11-10 10:13:21', 'a7827d65-dc34-4868-beef-f9dac0a7511d', NULL),
(19, 19, 1, 'Node Js', '2019-11-10 10:16:54', '2019-11-10 10:17:38', 'e347e1e6-1f9f-495d-b417-763a1036e876', NULL),
(20, 20, 1, NULL, '2019-11-11 02:23:56', '2019-11-11 02:23:56', '84636665-eea8-4113-b5d2-a367002f7c3e', NULL),
(21, 21, 1, NULL, '2019-11-11 02:43:26', '2019-11-11 03:04:39', 'cb8f5caf-f277-404a-bf1e-fbee7bbb04cf', NULL),
(22, 22, 1, 'Menginstall Node.JS/NPM di Windows 10', '2019-11-11 07:26:31', '2019-11-11 07:30:26', '131fe476-69f0-4664-8fad-cdbb8b86203e', NULL),
(23, 23, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-11 07:34:20', '2019-11-11 08:00:05', '46097ea1-4269-4c25-98c1-007dfb1001f3', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..</p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi</p><p><strong>Tahap Install</strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.</p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:25:url}\" alt=\"\" /></figure>'),
(24, 24, 1, 'Nodejs 1572857062882 3093', '2019-11-11 07:35:30', '2019-11-11 07:35:30', '055118c6-9884-46e4-a01b-3b65053d5120', NULL),
(25, 25, 1, 'Capture', '2019-11-11 07:50:52', '2019-11-11 07:50:52', '659fdac1-6667-4f4a-a288-a5f74e74ad4e', NULL),
(26, 26, 1, 'Capture2', '2019-11-11 07:54:06', '2019-11-11 07:54:06', 'ad05de78-19e6-48b5-95a9-14b3a1fb9245', NULL),
(28, 28, 1, 'Capture1', '2019-11-11 08:18:30', '2019-11-11 08:18:30', '914752fd-aeb1-434d-bea0-b8b83f531e66', NULL),
(29, 29, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-11 08:25:33', '2019-11-20 02:41:38', '48d13246-611e-4b1d-b1c6-87048cff407e', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre> node -v ( untuk cek node.js beserta versinya )</pre><pre> npm -v ( untuk cek npm beserta versinya)</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></p>'),
(30, 30, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-11 08:25:33', '2019-11-11 08:25:33', '8485e2ce-e9d9-40bc-b599-88331f2a6bc8', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..</p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi</p><p><strong>Tahap Install</strong></p><p></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.</p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"http://fakhri-wp.test/wp-content/uploads/2019/11/capture3.jpg\" alt=\"\" /></figure><br /><br /><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"http://fakhri-wp.test/wp-content/uploads/2019/11/Capture4.jpg\" alt=\"\" /></figure><br /><br /><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"http://fakhri-wp.test/wp-content/uploads/2019/11/Capture6.jpg\" alt=\"\" /></figure><br /><br /><p>6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Berikut langkah-langkahnya:</p><p>node -v ( untuk cek node.js beserta versinya )</p><p>npm -v ( untuk cek npm beserta versinya )</p><figure><img src=\"http://fakhri-wp.test/wp-content/uploads/2019/11/Capture8.jpg\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(31, 31, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-11 08:28:07', '2019-11-11 08:28:07', 'f6141621-d3f6-4d04-b9eb-56d054dc1636', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..</p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi</p><p><strong>Tahap Install</strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.</p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"http://fakhri-wp.test/wp-content/uploads/2019/11/Capture6.jpg\" alt=\"\" /></figure><p><br /><br /></p><p>6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Berikut langkah-langkahnya:</p><p>node -v ( untuk cek node.js beserta versinya )</p><p>npm -v ( untuk cek npm beserta versinya )</p><figure><img src=\"http://fakhri-wp.test/wp-content/uploads/2019/11/Capture8.jpg\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(32, 32, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-11 08:32:14', '2019-11-11 08:32:14', 'bee18a07-88de-43e0-9233-3ba475e93a8d', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..</p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi</p><p><strong>Tahap Install</strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.</p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><p><br /><br /></p><p>6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Berikut langkah-langkahnya:</p><p>node -v ( untuk cek node.js beserta versinya )</p><p>npm -v ( untuk cek npm beserta versinya )</p><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(33, 33, 1, 'Fakhri Alauddin', '2019-11-12 08:18:23', '2019-11-12 08:18:24', '06f26b94-c5b7-4fca-b443-a01cf43b3aca', NULL),
(34, 34, 1, 'Fakhri Alauddin', '2019-11-12 08:54:50', '2019-11-12 08:54:50', '908501c2-2b77-4127-9ac3-eabb4fcd3362', '<p>Perkenalkan nama saya <strong>Fakhri Alauddin. </strong>Saya adalah seorang pelajar SMK di <strong>SMKN 2 Surabaya. </strong>Saya lahir di Jombang, pada tanggal 31 Maret 2001. Saat ini saya berumur 18 tahun. Hobi dan Cita-Cita saya adalah Coding dan suatu saat saya bisa jadi seorang Programmer.</p><p>Kesehariaan saya saat ini adalah magang di Pikar Labs. Saat ini saya fokus pada bidang Website Developer bagian Front-End Web<br /><br /></p>'),
(35, 35, 1, 'Fakhri Alauddin', '2019-11-12 08:56:19', '2019-11-12 08:56:19', 'd9e244b3-cb08-41a5-893d-5c3d0683f15d', '<p>Perkenalkan nama saya <strong>Fakhri Alauddin. </strong>Saya adalah seorang pelajar SMK di <strong>SMKN 2 Surabaya. </strong>Saya lahir di Jombang, pada tanggal 31 Maret 2001. Saat ini saya berumur 18 tahun. Hobi dan Cita-Cita saya adalah Coding dan suatu saat saya bisa jadi seorang Programmer.</p><p>Kesehariaan saya saat ini adalah magang di Pikar Labs. Saat ini saya fokus pada bidang Website Developer bagian Front-End Web<br /><br /></p>'),
(36, 36, 1, 'Fakhri Alauddin', '2019-11-12 08:57:24', '2019-11-12 08:57:24', 'fe1a16e8-2f4f-496c-a478-e7ee826fa6a2', '<p>Perkenalkan nama saya <strong>Fakhri Alauddin. </strong>Saya adalah seorang pelajar SMK di <strong>SMKN 2 Surabaya. </strong>Saya lahir di Jombang, pada tanggal 31 Maret 2001. Saat ini saya berumur 18 tahun. Hobi dan Cita-Cita saya adalah Coding dan suatu saat saya bisa jadi seorang Programmer.</p><p>Kesehariaan saya saat ini adalah magang di Pikar Labs. Saat ini saya fokus pada bidang Website Developer bagian Front-End Web<br /><br /></p>'),
(37, 37, 1, 'Fakhri Alauddin', '2019-11-12 08:58:05', '2019-11-12 08:58:05', '6c25807c-6833-4f89-86ca-cfb90a42abf0', '<p>Perkenalkan nama saya <strong>Fakhri Alauddin. </strong>Saya adalah seorang pelajar SMK di <strong>SMKN 2 Surabaya. </strong>Saya lahir di Jombang, pada tanggal 31 Maret 2001. Saat ini saya berumur 18 tahun. Hobi dan Cita-Cita saya adalah Coding dan suatu saat saya bisa jadi seorang Programmer.<br /><br /></p><p>Kesehariaan saya saat ini adalah magang di Pikar Labs. Saat ini saya fokus pada bidang Website Developer bagian Front-End Web<br /><br /></p>'),
(38, 38, 1, 'Fakhri Alauddin', '2019-11-12 08:59:38', '2019-11-12 08:59:38', '234d0d6b-d4d3-48ed-af53-41c96284069f', '<p>Perkenalkan nama saya <strong>Fakhri Alauddin. </strong>Saya adalah seorang pelajar SMK di <strong>SMKN 2 Surabaya. </strong>Saya lahir di Jombang, pada tanggal 31 Maret 2001. Saat ini saya berumur 18 tahun. Hobi dan Cita-Cita saya adalah Coding dan suatu saat saya bisa jadi seorang Programmer.<br /><br /></p><p>Kesehariaan saya saat ini adalah magang di Pikar Labs. Saat ini saya fokus pada bidang Website Developer bagian Front-End Web. Saya melakukan kegiatan magang ini selama 6 bulan. Dari pengalaman magang saya hingga saat ini. Saya mendapatkan ilmu yang banyak, terutama bidang web dev.<br /><br /></p>'),
(39, 39, 1, 'Fakhri Alauddin', '2019-11-12 09:11:11', '2019-11-12 09:11:11', '73d44201-340e-4796-9a17-04b6ad750b61', '<p>Perkenalkan nama saya <strong>Fakhri Alauddin. </strong>Saya adalah seorang pelajar SMK di <strong>SMKN 2 Surabaya. </strong>Saya lahir di Jombang, pada tanggal 31 Maret 2001. Saat ini saya berumur 18 tahun. Hobi dan Cita-Cita saya adalah Coding dan suatu saat saya bisa jadi seorang Programmer.<br /><br /></p><p><br /></p><p>Kesehariaan saya saat ini adalah magang di Pikar Labs. Saat ini saya fokus pada bidang Website Developer bagian Front-End Web. Saya melakukan kegiatan magang ini selama 6 bulan. Dari pengalaman magang saya hingga saat ini. Saya mendapatkan ilmu yang banyak, terutama bidang web dev.<br /><br /></p>'),
(40, 40, 1, NULL, '2019-11-12 11:26:18', '2019-11-12 11:26:18', 'fc747d5f-29d2-48a4-b628-b313576b2d1b', NULL),
(41, 41, 1, 'Fakhri Alauddin', '2019-11-12 11:46:36', '2019-11-12 11:46:36', '8be4f7c7-f531-4bea-8218-b277cf14e7d8', '<p>Perkenalkan nama saya <strong>Fakhri Alauddin. </strong>Saya adalah seorang pelajar SMK di <strong>SMKN 2 Surabaya. </strong>Saya lahir di Jombang, pada tanggal 31 Maret 2001. Saat ini saya berumur 18 tahun. Hobi dan Cita-Cita saya adalah Coding dan suatu saat saya bisa jadi seorang Programmer.<br /><br /></p><div><p>Kesehariaan saya saat ini adalah magang di Pikar Labs. Saat ini saya fokus pada bidang Website Developer bagian Front-End Web. Saya melakukan kegiatan magang ini selama 6 bulan. Dari pengalaman magang saya hingga saat ini. Saya mendapatkan ilmu yang banyak, terutama bidang web dev.<br /><br /></p></div>'),
(42, 42, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 03:25:14', '2019-11-13 03:27:16', '911868df-cae5-418c-a32d-a5970d624f23', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..</p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi</p><p><strong>Tahap Install</strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.</p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><p><br /><br /></p><p>6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Berikut langkah-langkahnya:</p><p>node -v ( untuk cek node.js beserta versinya )</p><p>npm -v ( untuk cek npm beserta versinya )</p><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(43, 43, 1, 'Capture3', '2019-11-13 08:40:05', '2019-11-13 08:40:05', '68af26a0-176d-4f42-bddf-959e398fbc72', NULL),
(44, 44, 1, 'Capture4', '2019-11-13 08:45:00', '2019-11-13 08:45:00', '6c7e46be-c4e0-4e05-a54b-9ac9e67e7d99', NULL),
(45, 45, 1, 'Capture5', '2019-11-13 08:46:16', '2019-11-13 08:46:16', '542b384d-ba8a-4ffe-b38b-904bdf19881f', NULL),
(46, 46, 1, 'Capture8', '2019-11-13 08:47:06', '2019-11-13 08:47:06', '5a70d479-0faa-44bf-a5a9-630ae3c92e0d', NULL),
(47, 47, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 08:54:11', '2019-11-13 08:54:11', '64ec18e7-1b0b-4b37-a3a9-70e44244584d', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..</p><br /><br /><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi</p><br /><br />\r\n<p><strong>Tahap Install</strong></p><br /><br />\r\n<p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.</p>\r\n<br /><br /><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )<br /><br /></pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(48, 48, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 08:59:30', '2019-11-13 08:59:30', '094c6371-1cd2-435c-b327-ce39988ef20f', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi<br /></p><p><strong>Tahap Install</strong><br /></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.</p><p><br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(49, 49, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 09:00:32', '2019-11-13 09:00:32', 'f7ad321c-c211-45ef-a52a-6ec62a322746', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi<br /></p><p><strong><br /></strong></p><p><strong>Tahap Install</strong><br /></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(50, 50, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 09:01:02', '2019-11-13 09:01:02', '2c780240-616d-4a2a-b128-cedb14203449', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi<br /></p><p><strong><br /></strong></p><p><strong>Tahap Install</strong><br /></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(51, 51, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 09:01:43', '2019-11-13 09:01:43', '743c3e71-2590-4266-9a58-c97285a4beb5', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a>, Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi<br /></p><p><br /></p><p><strong>Tahap Install</strong><br /></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(52, 52, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 09:03:58', '2019-11-13 09:03:58', 'd78f885b-087d-4559-9d40-c2f7cea69a70', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx..<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi</p><p><strong>Tahap Install</strong><br /></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(53, 53, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 09:04:49', '2019-11-13 09:04:49', 'ff2cce0d-b50d-4695-94f6-0cab90fbef34', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.</p><p><strong>Tahap Install</strong><br /></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(54, 54, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 09:09:06', '2019-11-13 09:09:06', '528d44ce-879a-446d-ad00-8861f584331f', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.</p><p><strong>Tahap Install</strong><br /></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(55, 55, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 09:15:59', '2019-11-13 09:15:59', 'fb9f7003-f180-48a0-a305-3cdb413972ac', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.</p><p></p><p><strong>Tahap Install</strong><br /></p><p><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>');
INSERT INTO `my_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_contentText`) VALUES
(56, 56, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 09:17:39', '2019-11-13 09:17:39', '06d04bae-41cb-492b-b294-0280ba3c1027', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p></p><p></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.</p><p></p><p><strong>Tahap Install</strong><br /></p><p><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(58, 58, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 12:49:20', '2019-11-13 12:49:20', 'fc4d0a3c-dd83-4b64-bbb5-88c581436ce2', '<p id=\"awal\" class=\"awal\">Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx<br /></p><p></p><p id=\"sub\" class=\"sub\">Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.</p><p></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(59, 59, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 12:49:31', '2019-11-13 12:49:31', '136a081b-eb10-491c-a934-6651e1a7a10f', '<p id=\"awal\" class=\"awal\">Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx<br /></p><p></p><p id=\"sub\" class=\"sub\">Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.</p><p></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ), npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(60, 60, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 12:55:57', '2019-11-13 12:55:57', '3cc25931-dd44-4b6a-b077-c5ec2c6099da', '<p id=\"awal\" class=\"awal\">Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx<br /></p><p></p><p id=\"sub\" class=\"sub\">Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.</p><p></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ) npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(61, 61, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 12:56:05', '2019-11-13 12:56:05', 'e2aaaa12-3710-41c4-8d15-b6db208daf90', '<p id=\"awal\" class=\"awal\">Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx<br /></p><p></p><p id=\"sub\" class=\"sub\">Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.</p><p></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya ) npm -v ( untuk cek npm beserta versinya )</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(62, 62, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-13 13:02:56', '2019-11-13 13:02:56', '975267d0-229a-4ec5-9cf0-4623aab4e4d7', '<p id=\"awal\" class=\"awal\">Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx<br /></p><p></p><p id=\"sub\" class=\"sub\">Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.</p><p></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next</p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js</p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.</p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.</p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik </p><pre>node -v ( untuk cek node.js beserta versinya )</pre><pre>npm -v ( untuk cek npm beserta versinya )<br /></pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p>Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(63, 63, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-14 03:54:56', '2019-11-14 03:54:56', '125e363b-2e70-4c6c-9be6-b3dd096f629e', '<p id=\"awal\" class=\"awal\">Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install<br /></strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )</pre><pre>npm -v ( untuk cek npm beserta versinya </pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</p>'),
(64, 64, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-14 03:56:24', '2019-11-14 03:56:24', 'fa4e1db1-6932-4d28-addf-931f26ddb07b', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /><br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /><br /></p><p><strong>Tahap Install<br /></strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /><br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p>3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /><br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /><br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /><br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /><br /> </p><pre>node -v ( untuk cek node.js beserta versinya )</pre><pre>npm -v ( untuk cek npm beserta versinya </pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</h4>'),
(65, 65, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-14 03:58:54', '2019-11-14 03:58:54', 'ffba7b52-8e7d-4b36-a9c6-4db93011d03f', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /><br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /><br /></p><p><strong>Tahap Install<br /></strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /><br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /><br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /><br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /><br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /><br /> </p><pre>node -v ( untuk cek node.js beserta versinya )</pre><pre>npm -v ( untuk cek npm beserta versinya<br /> <br /></pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</h4>'),
(67, 67, 1, 'Composer', '2019-11-14 04:17:50', '2019-11-14 04:17:50', '3ab827e7-e257-42c0-b1ac-0057361fbad8', NULL),
(68, 68, 1, 'Install PHP Composer di Windows', '2019-11-14 04:18:21', '2019-11-20 02:43:26', '48a8dd90-7fcc-48c1-b241-6fa06af070ef', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1.  Silahkan buka link <a href=\"https://getcomposer.org/doc/00-intro.md\" target=\"_blank\" rel=\"noreferrer noopener\">https://getcomposer.org/doc/00-intro.md</a> untuk mendownload composer. klik pada menu ” instalation – windows -&gt; Using the installer</p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. Sselanjutnya tinggal klik next dan next. seperti cara install aplikasi di windows seperti biasa. Abaikan centang “developer mode”. klik next saja. sampai selesai instalasi.</p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3. Jika sudah selesai instalasi maka akan muncul tampilan seperti berikut.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4. Nah setelah teman-teman selesai menginstall composer, sekarang coba buka <strong>command promt (CMD). </strong></p><p>Ketik <strong>Composer </strong></p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure><p>Jika muncul seperti tampilan di atas, maka tandanya kita telah berhasil menginstall composer di windows dengan baik.</p><p><strong>Hanya itu saja tutorial yang bisa saya berikan. Maaf apabila ada kesalahan terima kasih</strong></p>'),
(69, 69, 1, 'Install PHP Composer di Windows', '2019-11-14 04:18:22', '2019-11-14 04:18:22', 'adedad32-78c0-4e35-b8dd-0f6d0e435368', '<p>OK</p>'),
(70, 70, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-14 08:31:03', '2019-11-14 08:31:03', '1832f2a9-c19f-4282-b218-eb25f2a04481', '<p>Disini kami akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, kami akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /><br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /><br /></p><p><strong>Tahap Install<br /></strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /><br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /><br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /><br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /><br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /><br /> </p><pre>node -v ( untuk cek node.js beserta versinya )</pre><pre>npm -v ( untuk cek npm beserta versinya </pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(71, 71, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-14 08:34:13', '2019-11-14 08:34:13', 'f202c012-d600-4cc0-86de-5f2466cc8258', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /><br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /><br /></p><p><strong>Tahap Install<br /></strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /><br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p><strong><br /></strong></p><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /><br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /><br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p><br /><br /></p><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /><br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p><br /><br /></p><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /><br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /><br /> </p><pre>node -v ( untuk cek node.js beserta versinya )</pre><pre>npm -v ( untuk cek npm beserta versinya </pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(73, 73, 1, 'Dev', '2019-11-14 08:45:16', '2019-11-14 08:45:16', 'd12589af-fb5f-4ecc-b2a9-936aa400660c', NULL),
(74, 74, 1, 'Cara Install DEV C++ di Windows', '2019-11-14 08:52:35', '2019-11-20 02:37:46', 'a46e9337-0756-41f5-b7aa-b8c5baf472a6', '<p><strong>Dev-C++ adalah</strong> sebuah IDE (Integrated Development Environment) C / C++ yang sudah dilengkapi dengan TDM-GCC Compiler (bagian dari <em>GNU Compiler Collection</em> / <em>GCC</em>). Dev-C++ merupakan IDE gratis dan full featur yang didistribusikan dibawah lisensi <em>GNU General Public License </em>untuk pemrograman C dan C++. IDE sendiri adalah Lembar kerja terpadu untuk pengembangan program.<br /></p><p>Dalam pembuatan program dengan bahasa C++, kami menyarankan sobat untuk menggunakan Dev-C++ dengan versi Dev-C++ 5.11 / yang lebih baru. Nah berikut cara install Dev-C++ .</p><p><strong>Tahap Install</strong></p><p>1. Siapkan Installer Dev C++. Jika belum ada, bisa kunjungi link <strong><a href=\"https://bloodshed-dev-c.id.softonic.com/download\" target=\"_blank\" rel=\"noreferrer noopener\">https://bloodshed-dev-c.id.softonic.com/download</a> </strong>untuk download file nya.</p><p>2. Setelah bahan sudah siap. Buka installer yang sudah di download tadi. maka akan muncul seperti pada gambar dan pilih English untuk bahasanya.</p><figure><img src=\"{asset:116:url}\" alt=\"\" /></figure><p></p><p>3. Setelah itu klik I Agree</p><figure><img src=\"{asset:115:url}\" alt=\"\" /></figure><p></p><p>4. Lalu klik Next</p><figure><img src=\"{asset:118:url}\" alt=\"\" /></figure><p></p><p>5. Setelah itu klik Instal</p><figure><img src=\"{asset:114:url}\" alt=\"\" /></figure><p></p><p>6. Tunggu proses extract selesai.</p><figure><img src=\"{asset:113:url}\" alt=\"\" /></figure><p></p><p>7. Setelah proses extract selesai ceklis Run Dev C++ lalu klik Finish</p><figure><img src=\"{asset:117:url}\" alt=\"\" /></figure><p></p><p>8. Maka akan muncul tab first time configuration. Klik next</p><figure><img src=\"{asset:112:url}\" alt=\"\" /></figure><p></p><p>9. Setelah itu klik OK</p><figure><img src=\"{asset:111:url}\" alt=\"\" /></figure><p></p><p><strong>Selamat aplikasi Dev C++ sudah berhasil terinstal di laptop / komputer anda</strong>.</p>'),
(75, 75, 1, 'Cara Install DEV C++ di Windows', '2019-11-14 08:52:36', '2019-11-14 08:52:36', '7dd75103-b7f7-4731-8732-1bede4e4dd50', '<p>Halo AGAN</p>'),
(76, 76, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-14 11:48:43', '2019-11-14 11:48:43', '301680b0-abe5-4455-9370-93f8b1065b0d', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )</pre><pre>npm -v ( untuk cek npm beserta versinya </pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(77, 77, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-14 12:27:49', '2019-11-14 12:27:49', 'ff93da83-cb6a-4e62-a265-40cb4ab01bda', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )npm -v ( untuk cek npm beserta versinya</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(78, 78, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-14 12:33:30', '2019-11-14 12:33:30', '58d1952f-018c-4b7c-9ff3-20dc1de84377', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )npm -v ( untuk cek npm beserta versinya</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(79, 79, 1, 'JavaScript', '2019-11-17 14:50:57', '2019-11-17 14:50:57', '0a66900c-dd38-4bef-b1d5-09c019338e86', NULL),
(80, 80, 1, 'C++', '2019-11-17 14:51:24', '2019-11-17 14:51:24', '1520c51f-ed24-43eb-a846-35554c742c1d', NULL),
(81, 81, 1, 'PHP', '2019-11-17 14:51:38', '2019-11-17 14:51:38', 'dd587e4a-9e12-4f7e-ad8a-0fb208983249', NULL),
(82, 82, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-17 15:02:11', '2019-11-17 15:02:11', '4435a636-b522-4cb0-ae04-e85db66e0999', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )npm -v ( untuk cek npm beserta versinya</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(83, 83, 1, 'Install PHP Composer di Windows', '2019-11-17 15:11:18', '2019-11-17 15:11:18', 'b38f77be-b1cf-48ac-9a2e-b00f267d1267', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p>'),
(85, 85, 1, 'Cara install composer di windows 1024x607', '2019-11-17 15:18:47', '2019-11-17 15:18:47', 'dd86d163-2cfc-40c5-a3df-0b0f2f5b0c45', NULL),
(86, 86, 1, 'Cara install composer di windows', '2019-11-17 15:25:27', '2019-11-17 15:25:27', '8e99abbc-c5c2-4bcc-908c-7fb69b073d5b', NULL),
(87, 87, 1, 'Install composer di windows', '2019-11-17 15:26:04', '2019-11-17 15:26:04', '259f5bb9-6dd9-44fc-850f-aaa4d2dda623', NULL),
(88, 88, 1, 'Kegunaan composer', '2019-11-17 15:26:26', '2019-11-17 15:26:26', '963b7326-dec2-4843-8782-595643be99b5', NULL);
INSERT INTO `my_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_contentText`) VALUES
(89, 89, 1, 'Install PHP Composer di Windows', '2019-11-17 15:26:39', '2019-11-17 15:26:39', '127ce008-2d3e-4155-a69a-cb7c32a83d21', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1. </p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. </p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p><br /></p><p>3.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p><br /></p><p>4.</p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure>'),
(90, 90, 1, 'Install PHP Composer di Windows', '2019-11-17 15:26:52', '2019-11-17 15:26:52', 'e7c61285-e2fe-4cce-abb4-fd6477ebe788', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1. </p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. </p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4.</p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure>'),
(91, 91, 1, 'Cara Install DEV C++ di Windows', '2019-11-17 15:27:36', '2019-11-17 15:27:36', '1f141d57-215c-4317-8d97-cf5550dbe100', '<p>Halo AGAN</p>'),
(92, 92, 1, 'Install PHP Composer di Windows', '2019-11-17 15:27:58', '2019-11-17 15:27:58', '640c2f0d-9e92-4ed2-b330-7b0a8bd1a34f', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1. </p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. </p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4.</p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure>'),
(93, 93, 1, 'Menginstall Node.JS/NPM di Windows copy', '2019-11-18 04:37:07', '2019-11-18 04:37:07', '9f720de7-78e9-4599-b4c7-6c712f36ac39', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )npm -v ( untuk cek npm beserta versinya</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(94, 94, 1, 'Menginstall Node.JS/NPM di Windows copy', '2019-11-18 04:37:08', '2019-11-18 04:37:08', '53a842b2-5cd6-4781-9606-06ef61dbd0de', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )npm -v ( untuk cek npm beserta versinya</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(95, 95, 1, 'Install PHP Composer di Windows copy', '2019-11-18 04:37:09', '2019-11-18 04:37:09', 'ac2a6d17-9f40-4ce9-8e09-86c14b2fc04b', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1. </p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. </p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4.</p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure>'),
(96, 96, 1, 'Install PHP Composer di Windows copy', '2019-11-18 04:37:09', '2019-11-18 04:37:09', 'b5b1df46-3709-42c1-9434-28ccd0aa0bfa', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1. </p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. </p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4.</p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure>'),
(97, 97, 1, 'Cara Install DEV C++ di Windows copy', '2019-11-18 04:37:10', '2019-11-18 04:37:10', '2f3419e4-bae3-45c0-92bc-e0b6d808371a', '<p>Halo AGAN</p>'),
(98, 98, 1, 'Cara Install DEV C++ di Windows copy', '2019-11-18 04:37:10', '2019-11-18 04:37:10', '319edc92-955d-46af-bb54-8cb62c43bbfa', '<p>Halo AGAN</p>'),
(99, 99, 1, 'Menginstall Node.JS/NPM di Windows copy', '2019-11-18 04:37:18', '2019-11-18 04:37:18', '63628992-be87-4bf7-9f7f-94d86ca8adbc', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )npm -v ( untuk cek npm beserta versinya</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(100, 100, 1, 'Menginstall Node.JS/NPM di Windows copy', '2019-11-18 04:37:18', '2019-11-18 04:37:18', 'c87721ac-7f99-4e3e-ba8f-351901aa0110', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )npm -v ( untuk cek npm beserta versinya</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(101, 101, 1, 'Install PHP Composer di Windows copy', '2019-11-18 04:37:18', '2019-11-18 04:37:18', 'accfae61-9072-402b-b243-5437c35bda99', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1. </p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. </p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4.</p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure>'),
(102, 102, 1, 'Install PHP Composer di Windows copy', '2019-11-18 04:37:19', '2019-11-18 04:37:19', 'bc786c82-9af5-4cfe-a79b-6f93d49eb428', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1. </p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. </p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4.</p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure>'),
(103, 103, 1, 'Cara Install DEV C++ di Windows copy', '2019-11-18 04:37:19', '2019-11-18 04:37:19', '7f730c6a-a229-43a1-86d3-92e80f2cd775', '<p>Halo AGAN</p>'),
(104, 104, 1, 'Cara Install DEV C++ di Windows copy', '2019-11-18 04:37:19', '2019-11-18 04:37:19', '0c7b0506-c9f9-41ac-bb3f-5b2a5bf2fd61', '<p>Halo AGAN</p>'),
(105, 105, 1, 'Menginstall Node.JS/NPM di Windows copy', '2019-11-18 06:43:20', '2019-11-18 06:43:20', '223fa382-485e-4253-bd76-822676c24381', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )npm -v ( untuk cek npm beserta versinya</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(106, 106, 1, 'Menginstall Node.JS/NPM di Windows copy', '2019-11-18 06:43:20', '2019-11-18 06:43:20', '2dd14b17-efca-48ae-91eb-89d68c2829b1', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre>node -v ( untuk cek node.js beserta versinya )npm -v ( untuk cek npm beserta versinya</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><h4><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></h4>'),
(107, 107, 1, 'Install PHP Composer di Windows', '2019-11-19 10:17:36', '2019-11-19 10:17:36', 'd998bedc-4f09-4805-ac07-ca9aff9bd0e6', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1.  Silahkan buka link <a href=\"https://getcomposer.org/doc/00-intro.md\" target=\"_blank\" rel=\"noreferrer noopener\">https://getcomposer.org/doc/00-intro.md</a> untuk mendownload composer. klik pada menu ” instalation – windows -&gt; Using the installer</p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. Sselanjutnya tinggal klik next dan next. seperti cara install aplikasi di windows seperti biasa. Abaikan centang “developer mode”. klik next saja. sampai selesai instalasi.</p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3. Jika sudah selesai instalasi maka akan muncul tampilan seperti berikut.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4. Nah setelah teman-teman selesai menginstall composer, sekarang coba buka <strong>command promt (CMD). </strong></p><p>Ketik <strong>Composer </strong></p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure><p></p><p>Jika muncul seperti tampilan di atas, maka tandanya kita telah berhasil menginstall composer di windows dengan baik.</p>'),
(109, 109, 1, 'Install PHP Composer di Windows', '2019-11-19 10:18:30', '2019-11-19 10:18:30', 'af8cf2d8-fa12-4404-9543-c4aba047e5e5', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1.  Silahkan buka link <a href=\"https://getcomposer.org/doc/00-intro.md\" target=\"_blank\" rel=\"noreferrer noopener\">https://getcomposer.org/doc/00-intro.md</a> untuk mendownload composer. klik pada menu ” instalation – windows -&gt; Using the installer</p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. Sselanjutnya tinggal klik next dan next. seperti cara install aplikasi di windows seperti biasa. Abaikan centang “developer mode”. klik next saja. sampai selesai instalasi.</p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3. Jika sudah selesai instalasi maka akan muncul tampilan seperti berikut.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4. Nah setelah teman-teman selesai menginstall composer, sekarang coba buka <strong>command promt (CMD). </strong></p><p>Ketik <strong>Composer </strong></p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure><p></p><p>Jika muncul seperti tampilan di atas, maka tandanya kita telah berhasil menginstall composer di windows dengan baik.</p>'),
(110, 110, 1, 'Install PHP Composer di Windows', '2019-11-19 10:18:37', '2019-11-19 10:18:37', '9ac9c3a7-786a-4ee7-87fd-811a8cb36843', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1.  Silahkan buka link <a href=\"https://getcomposer.org/doc/00-intro.md\" target=\"_blank\" rel=\"noreferrer noopener\">https://getcomposer.org/doc/00-intro.md</a> untuk mendownload composer. klik pada menu ” instalation – windows -&gt; Using the installer</p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. Sselanjutnya tinggal klik next dan next. seperti cara install aplikasi di windows seperti biasa. Abaikan centang “developer mode”. klik next saja. sampai selesai instalasi.</p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3. Jika sudah selesai instalasi maka akan muncul tampilan seperti berikut.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4. Nah setelah teman-teman selesai menginstall composer, sekarang coba buka <strong>command promt (CMD). </strong></p><p>Ketik <strong>Composer </strong></p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure><p></p><p>Jika muncul seperti tampilan di atas, maka tandanya kita telah berhasil menginstall composer di windows dengan baik.</p>'),
(111, 111, 1, 'Dev 11', '2019-11-19 10:24:56', '2019-11-19 10:24:56', '85542bbf-27f5-4c7b-a23e-25079a6c10f6', NULL),
(112, 112, 1, 'Dev 10', '2019-11-19 10:24:57', '2019-11-19 10:24:57', '174f3703-6fab-4d6f-8b84-92167fef84cb', NULL),
(113, 113, 1, 'Dev 6', '2019-11-19 10:24:59', '2019-11-19 10:24:59', 'abb7dea3-6f89-4822-97a0-d0d18bca2833', NULL),
(114, 114, 1, 'Dev 5', '2019-11-19 10:25:00', '2019-11-19 10:25:00', 'ec8e9875-21a2-426a-9eea-cf57c175fcd9', NULL),
(115, 115, 1, 'Dev 3', '2019-11-19 10:25:03', '2019-11-19 10:25:03', '2ac80072-4a7b-441d-820c-9518d9a5d44a', NULL),
(116, 116, 1, 'Dev 2', '2019-11-19 10:25:04', '2019-11-19 10:25:04', '3f20060d-1af9-4f74-a979-e3a239cd45e3', NULL),
(117, 117, 1, 'Dev 9', '2019-11-19 10:30:28', '2019-11-19 10:30:28', '1d67b503-d6fc-4666-92fb-a3d2f64d6c81', NULL),
(118, 118, 1, 'Dev 4', '2019-11-19 10:30:29', '2019-11-19 10:30:29', 'e86ea776-058d-465c-86d0-7a9aad70d22c', NULL),
(120, 120, 1, 'Cara Install DEV C++ di Windows', '2019-11-19 13:09:49', '2019-11-19 13:09:49', 'e6f4cf5d-05b0-41be-a692-2024a8655880', '<p><strong>Dev-C++ adalah</strong> sebuah IDE (Integrated Development Environment) C / C++ yang sudah dilengkapi dengan TDM-GCC Compiler (bagian dari <em>GNU Compiler Collection</em> / <em>GCC</em>). Dev-C++ merupakan IDE gratis dan full featur yang didistribusikan dibawah lisensi <em>GNU General Public License </em>untuk pemrograman C dan C++. IDE sendiri adalah Lembar kerja terpadu untuk pengembangan program.<br /></p><p>Dalam pembuatan program dengan bahasa C++, kami menyarankan sobat untuk menggunakan Dev-C++ dengan versi Dev-C++ 5.11 / yang lebih baru. Nah berikut cara install Dev-C++ .</p><p><strong>Tahap Install</strong></p><p>1. Siapkan Installer Dev C++. Jika belum ada, bisa kunjungi link <strong><a href=\"https://bloodshed-dev-c.id.softonic.com/download\" target=\"_blank\" rel=\"noreferrer noopener\">https://bloodshed-dev-c.id.softonic.com/download</a> </strong>untuk download file nya.</p><p>2. Setelah bahan sudah siap. Buka installer yang sudah di download tadi. maka akan muncul seperti pada gambar dan tunggu beberapa saat.</p><p></p><figure><img src=\"{asset:116:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:115:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:118:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:114:url}\" alt=\"\" /></figure>'),
(121, 121, 1, 'Cara Install DEV C++ di Windows', '2019-11-19 13:20:34', '2019-11-19 13:20:34', '920e28b2-657c-44fc-8851-834086c515e8', '<p><strong>Dev-C++ adalah</strong> sebuah IDE (Integrated Development Environment) C / C++ yang sudah dilengkapi dengan TDM-GCC Compiler (bagian dari <em>GNU Compiler Collection</em> / <em>GCC</em>). Dev-C++ merupakan IDE gratis dan full featur yang didistribusikan dibawah lisensi <em>GNU General Public License </em>untuk pemrograman C dan C++. IDE sendiri adalah Lembar kerja terpadu untuk pengembangan program.<br /></p><p>Dalam pembuatan program dengan bahasa C++, kami menyarankan sobat untuk menggunakan Dev-C++ dengan versi Dev-C++ 5.11 / yang lebih baru. Nah berikut cara install Dev-C++ .</p><p><strong>Tahap Install</strong></p><p>1. Siapkan Installer Dev C++. Jika belum ada, bisa kunjungi link <strong><a href=\"https://bloodshed-dev-c.id.softonic.com/download\" target=\"_blank\" rel=\"noreferrer noopener\">https://bloodshed-dev-c.id.softonic.com/download</a> </strong>untuk download file nya.</p><p>2. Setelah bahan sudah siap. Buka installer yang sudah di download tadi. maka akan muncul seperti pada gambar dan tunggu beberapa saat.</p><p></p><figure><img src=\"{asset:116:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:115:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:118:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:114:url}\" alt=\"\" /></figure>'),
(122, 122, 1, 'Cara Install DEV C++ di Windows', '2019-11-20 02:30:11', '2019-11-20 02:30:11', '27342ee0-9aaf-45ac-a893-d2cbffa0e446', '<p><strong>Dev-C++ adalah</strong> sebuah IDE (Integrated Development Environment) C / C++ yang sudah dilengkapi dengan TDM-GCC Compiler (bagian dari <em>GNU Compiler Collection</em> / <em>GCC</em>). Dev-C++ merupakan IDE gratis dan full featur yang didistribusikan dibawah lisensi <em>GNU General Public License </em>untuk pemrograman C dan C++. IDE sendiri adalah Lembar kerja terpadu untuk pengembangan program.<br /></p><p>Dalam pembuatan program dengan bahasa C++, kami menyarankan sobat untuk menggunakan Dev-C++ dengan versi Dev-C++ 5.11 / yang lebih baru. Nah berikut cara install Dev-C++ .</p><p><strong>Tahap Install</strong></p><p>1. Siapkan Installer Dev C++. Jika belum ada, bisa kunjungi link <strong><a href=\"https://bloodshed-dev-c.id.softonic.com/download\" target=\"_blank\" rel=\"noreferrer noopener\">https://bloodshed-dev-c.id.softonic.com/download</a> </strong>untuk download file nya.</p><p>2. Setelah bahan sudah siap. Buka installer yang sudah di download tadi. maka akan muncul seperti pada gambar dan pilih English untuk bahasanya.</p><figure><img src=\"{asset:116:url}\" alt=\"\" /></figure><p></p><p>3. Setelah itu klik I Agree</p><figure><img src=\"{asset:115:url}\" alt=\"\" /></figure><p></p><p>4. Lalu klik Next</p><figure><img src=\"{asset:118:url}\" alt=\"\" /></figure><p></p><p>5. Setelah itu klik Instal</p><figure><img src=\"{asset:114:url}\" alt=\"\" /></figure><p></p><p>6. Tunggu proses extract selesai.</p><figure><img src=\"{asset:113:url}\" alt=\"\" /></figure><p></p><p>7. Setelah proses extract selesai ceklis Run Dev C++ lalu klik Finish</p><figure><img src=\"{asset:117:url}\" alt=\"\" /></figure><p></p><p>8. Maka akan muncul tab first time configuration. Klik next</p><figure><img src=\"{asset:112:url}\" alt=\"\" /></figure><p></p><p>9. Setelah itu klik OK</p><figure><img src=\"{asset:111:url}\" alt=\"\" /></figure><p></p><p><strong>Selamat aplikasi Dev C++ sudah berhasil terinstal di laptop / komputer anda</strong>.</p>'),
(124, 124, 1, 'Cara Install DEV C++ di Windows', '2019-11-20 02:37:38', '2019-11-20 02:37:38', '12383756-39ec-4028-b347-73c67ee07abc', '<p><strong>Dev-C++ adalah</strong> sebuah IDE (Integrated Development Environment) C / C++ yang sudah dilengkapi dengan TDM-GCC Compiler (bagian dari <em>GNU Compiler Collection</em> / <em>GCC</em>). Dev-C++ merupakan IDE gratis dan full featur yang didistribusikan dibawah lisensi <em>GNU General Public License </em>untuk pemrograman C dan C++. IDE sendiri adalah Lembar kerja terpadu untuk pengembangan program.<br /></p><p>Dalam pembuatan program dengan bahasa C++, kami menyarankan sobat untuk menggunakan Dev-C++ dengan versi Dev-C++ 5.11 / yang lebih baru. Nah berikut cara install Dev-C++ .</p><p><strong>Tahap Install</strong></p><p>1. Siapkan Installer Dev C++. Jika belum ada, bisa kunjungi link <strong><a href=\"https://bloodshed-dev-c.id.softonic.com/download\" target=\"_blank\" rel=\"noreferrer noopener\">https://bloodshed-dev-c.id.softonic.com/download</a> </strong>untuk download file nya.</p><p>2. Setelah bahan sudah siap. Buka installer yang sudah di download tadi. maka akan muncul seperti pada gambar dan pilih English untuk bahasanya.</p><figure><img src=\"{asset:116:url}\" alt=\"\" /></figure><p></p><p>3. Setelah itu klik I Agree</p><figure><img src=\"{asset:115:url}\" alt=\"\" /></figure><p></p><p>4. Lalu klik Next</p><figure><img src=\"{asset:118:url}\" alt=\"\" /></figure><p></p><p>5. Setelah itu klik Instal</p><figure><img src=\"{asset:114:url}\" alt=\"\" /></figure><p></p><p>6. Tunggu proses extract selesai.</p><figure><img src=\"{asset:113:url}\" alt=\"\" /></figure><p></p><p>7. Setelah proses extract selesai ceklis Run Dev C++ lalu klik Finish</p><figure><img src=\"{asset:117:url}\" alt=\"\" /></figure><p></p><p>8. Maka akan muncul tab first time configuration. Klik next</p><figure><img src=\"{asset:112:url}\" alt=\"\" /></figure><p></p><p>9. Setelah itu klik OK</p><figure><img src=\"{asset:111:url}\" alt=\"\" /></figure><p></p><p><strong>Selamat aplikasi Dev C++ sudah berhasil terinstal di laptop / komputer anda</strong>.</p>'),
(125, 125, 1, 'Cara Install DEV C++ di Windows', '2019-11-20 02:37:46', '2019-11-20 02:37:46', '4327e4d1-8b67-44be-8ece-82930948bc7f', '<p><strong>Dev-C++ adalah</strong> sebuah IDE (Integrated Development Environment) C / C++ yang sudah dilengkapi dengan TDM-GCC Compiler (bagian dari <em>GNU Compiler Collection</em> / <em>GCC</em>). Dev-C++ merupakan IDE gratis dan full featur yang didistribusikan dibawah lisensi <em>GNU General Public License </em>untuk pemrograman C dan C++. IDE sendiri adalah Lembar kerja terpadu untuk pengembangan program.<br /></p><p>Dalam pembuatan program dengan bahasa C++, kami menyarankan sobat untuk menggunakan Dev-C++ dengan versi Dev-C++ 5.11 / yang lebih baru. Nah berikut cara install Dev-C++ .</p><p><strong>Tahap Install</strong></p><p>1. Siapkan Installer Dev C++. Jika belum ada, bisa kunjungi link <strong><a href=\"https://bloodshed-dev-c.id.softonic.com/download\" target=\"_blank\" rel=\"noreferrer noopener\">https://bloodshed-dev-c.id.softonic.com/download</a> </strong>untuk download file nya.</p><p>2. Setelah bahan sudah siap. Buka installer yang sudah di download tadi. maka akan muncul seperti pada gambar dan pilih English untuk bahasanya.</p><figure><img src=\"{asset:116:url}\" alt=\"\" /></figure><p></p><p>3. Setelah itu klik I Agree</p><figure><img src=\"{asset:115:url}\" alt=\"\" /></figure><p></p><p>4. Lalu klik Next</p><figure><img src=\"{asset:118:url}\" alt=\"\" /></figure><p></p><p>5. Setelah itu klik Instal</p><figure><img src=\"{asset:114:url}\" alt=\"\" /></figure><p></p><p>6. Tunggu proses extract selesai.</p><figure><img src=\"{asset:113:url}\" alt=\"\" /></figure><p></p><p>7. Setelah proses extract selesai ceklis Run Dev C++ lalu klik Finish</p><figure><img src=\"{asset:117:url}\" alt=\"\" /></figure><p></p><p>8. Maka akan muncul tab first time configuration. Klik next</p><figure><img src=\"{asset:112:url}\" alt=\"\" /></figure><p></p><p>9. Setelah itu klik OK</p><figure><img src=\"{asset:111:url}\" alt=\"\" /></figure><p></p><p><strong>Selamat aplikasi Dev C++ sudah berhasil terinstal di laptop / komputer anda</strong>.</p>'),
(127, 127, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-20 02:40:31', '2019-11-20 02:40:31', '0f1611ca-815b-4c77-a557-ec1652afeec5', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre> node -v ( untuk cek node.js beserta versinya )</pre><pre> npm -v ( untuk cek npm beserta versinya)<br /></pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></p>'),
(129, 129, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-20 02:41:33', '2019-11-20 02:41:33', '4206edda-be3e-4cc8-896b-4e2d01a70281', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre> node -v ( untuk cek node.js beserta versinya )</pre><pre> npm -v ( untuk cek npm beserta versinya)</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></p>');
INSERT INTO `my_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_contentText`) VALUES
(130, 130, 1, 'Menginstall Node.JS/NPM di Windows', '2019-11-20 02:41:38', '2019-11-20 02:41:38', 'aa705d6e-dc5d-4585-9971-bdf390afe375', '<p>Disini saya akan memberikan tutorial cara menginstall <strong>Node.Js di Windows.</strong> Sebelum ke tutorialnya, saya akan memberikan info mengenai apa itu Node.Js. Node.js adalah perangkat lunak yang didesain untuk mengembangkan aplikasi berbasis web dan ditulis dalam sintaks bahasa pemrograman JavaScript. Bila selama ini kita mengenal JavaScript sebagai bahasa pemrograman yang berjala di sisi client / browser saja, maka Node.js ada untuk melengkapi peran JavaScript sehingga bisa juga berlaku sebagai bahasa pemrograman yang berjalan di sisi server, seperti halnya PHP, Ruby, Perl, dan sebagainya. Node.js dapat berjalan di sistem operasi Windows, Mac OS X dan Linux tanpa perlu ada perubahan kode program. Node.js memiliki pustaka server HTTP sendiri sehingga memungkinkan untuk menjalankan server web tanpa menggunakan program server web seperti Apache atau Nginx.<br /></p><p>Dalam menginstall <strong>Node.JS</strong> ada beberapa hal yang perlu dipersiapkan terlebih dahulu. Yaitu installer <strong>Node.Js</strong> itu sendiri. Kalian bisa download <strong><a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a></strong>. Kemudian pilih Windows Installer. Klau sudah kalian download maka lanjut ke tahap instalasi.<br /></p><p><strong>Tahap Install</strong><strong><br /></strong></p><p>1. Setelah kalian download file installer <strong>Node.Js</strong>. Masuk ke folder dimana kalian menempatkan file installer. Kemudian kalian buka file installernya.<br /></p><figure><img src=\"{asset:26:url}\" alt=\"\" /></figure><p>2. Pada tampilan User Aggrement. Kalian klik/Ceklis kolom bawah pojok kiri. Kemudian Next<br /></p><figure><img src=\"{asset:28:url}\" alt=\"\" /></figure><p><br />3. Setelah itu, pilih direktori untuk menaruh folder node.js<br /></p><figure><img src=\"{asset:43:url}\" alt=\"\" /></figure><p>4. Pada menu ini kalian akan melihat berbagai list yang akan di install pada folder Node.Js kalian bisa liat disk usage disamping kanan. Klik Next.<br /></p><figure><img src=\"{asset:44:url}\" alt=\"\" /></figure><p>5. Kemudian klik install dan tunggu proses instalasi selesai.<br /></p><figure><img src=\"{asset:45:url}\" alt=\"\" /></figure><p><br />6. Ketika Instalasi selesai pergi ke CMD untuk mengecek instalasi berhasil atau tidak. Caranya yaitu, ketik<br /> </p><pre> node -v ( untuk cek node.js beserta versinya )</pre><pre> npm -v ( untuk cek npm beserta versinya)</pre><figure><img src=\"{asset:46:url}\" alt=\"\" /></figure><p><strong><br />Mungkin Hanya itu tutorial yang bisa saya berikan. Mohon maaf apabila ada kesalahan. Terima Kasih</strong></p>'),
(131, 131, 1, NULL, '2019-11-20 02:42:03', '2019-11-20 02:42:03', '3bb7ac51-caba-4d45-ac77-3a8ef53da7c6', NULL),
(132, 132, 1, 'Install PHP Composer di Windows', '2019-11-20 02:43:26', '2019-11-20 02:43:26', 'c99917fc-3985-4f99-8b5c-8af4ad392dd3', '<p>Composer adalah <strong><em>D</em></strong><strong><em>ependency Manager</em></strong> pada PHP. Dependency sendiri jika diartikan ke dalam bahasa indonesia artinya adalah ketergantungan. ketergantungan yang dimaksudkan misalnya project PHP yang kita kerjakan memerlukan beberapa library dari luar.</p><p>Sebelum masuk ke <em><strong>Cara Install Composer</strong></em>, alangkah baiknya kita ketahui dulu apa saja kegunaan dari composer, sehingga banyak programmer ataupun developer di luar sana sudah menggunakan composer untuk mempermudah dan mempercepat pekerjaan mereka.</p><p>Sebenarnya di bagian atas secara tidak sengaja sudah dijelaskan kegunaan dasar dari composer. jadi intinya dengan menggunakan composer kita bisa mendownload dan mendeklarasikan library dari packagist.org ke dalam project aplikasi yang sedang kita kerjakan.</p><p><strong>Tahap Install </strong></p><p>1.  Silahkan buka link <a href=\"https://getcomposer.org/doc/00-intro.md\" target=\"_blank\" rel=\"noreferrer noopener\">https://getcomposer.org/doc/00-intro.md</a> untuk mendownload composer. klik pada menu ” instalation – windows -&gt; Using the installer</p><figure><img src=\"{asset:85:url}\" alt=\"\" /></figure><p></p><p>2. Sselanjutnya tinggal klik next dan next. seperti cara install aplikasi di windows seperti biasa. Abaikan centang “developer mode”. klik next saja. sampai selesai instalasi.</p><figure><img src=\"{asset:86:url}\" alt=\"\" /></figure><p></p><p>3. Jika sudah selesai instalasi maka akan muncul tampilan seperti berikut.</p><figure><img src=\"{asset:87:url}\" alt=\"\" /></figure><p></p><p>4. Nah setelah teman-teman selesai menginstall composer, sekarang coba buka <strong>command promt (CMD). </strong></p><p>Ketik <strong>Composer </strong></p><figure><img src=\"{asset:88:url}\" alt=\"\" /></figure><p>Jika muncul seperti tampilan di atas, maka tandanya kita telah berhasil menginstall composer di windows dengan baik.</p><p><strong>Hanya itu saja tutorial yang bisa saya berikan. Maaf apabila ada kesalahan terima kasih</strong></p>'),
(134, 134, 1, 'Gulp ban', '2019-11-20 08:32:39', '2019-11-20 08:32:39', 'f374cf02-9bc7-423a-aa98-552cf21da0cb', NULL),
(135, 135, 1, 'Tutorial minify Javascript menggunakan Gulp', '2019-11-20 08:40:43', '2019-11-21 02:31:24', 'eeca8c23-4d04-4dcc-a0f7-fdd01efefd18', '<p>Sebagai web developer <em>‘zaman now’</em>, ada berbagaimacam <em>tools</em> yang harus kita kuasai. Diantaranya <em>tools</em> untuk melakukan automasi, <em>testing</em>, <em>build</em>, <em>deploy</em>, dan sebagainya. Salah satu <em>tool</em> yang biasanya digunakan dalam pengembangan web adalah Gulp.</p><p>Biasanya gulp digunakan untuk melakukan serangkaian kerja seperti membuat minify terhadap file html, css, js, melakukan concat file js, dan sebagainya. Pada artikel kali ini, penulis ingin membahas bagaimana cara penggunaan gulp untuk setup development sebuah project</p><h3>Proses Instalasi</h3><p>Karena gulp basic nya menggunakan node js maka anda diharuskan melakukan instalasi node js, yang belum melakukan instalasi node js silahkan lihat <a href=\"http://fakhri-craft.test/post/menginstall-node-js-npm-di-windows\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a> untuk melakukan instalasi gulp jalankan perintah berikut di CMD/Terminal.</p><pre><code>npm install -g gulp</code></pre><figure><img src=\"{asset:139:url}\" alt=\"\" /></figure><p></p><h3>Membuat Project</h3><p>Selanjunya kita membuat project untuk melakukan minify. Saya membuat folder bernama <strong>belajar gulp </strong>pada dir /laragon/www. Kalian bisa menentukan dimana saja membuat folder tersebut disimpan. Contoh bisa dilihat di gambar bawah.<strong></strong></p><figure><img src=\"{asset:138:url}\" alt=\"\" /></figure><p></p><p>Untuk mengecek apakah folder sudah dibuat pada dir tersebut. Bisa mengetikan perinah ls pada terminal dan dir pada CMD. Setelah foldter terbaca, kita panggil menggunakan perintah cd &lt;nama_folder&gt;. Contoh bisa dilihat gambar dibawah</p><figure><img src=\"{asset:137:url}\" alt=\"\" /></figure><p></p><p>Setelah memanggil folder tersebut. Ketik </p><pre>npm init</pre><p>Fungsinya adalah membuat package.json agar bisa install beberapa library yang dibutuhkan gulp untuk melakukan minify . Contoh bisa dilihat gambar dibawah. Jika ada yang perlu di isi. Lewati aja. Langsung tekan Enter</p><figure><img src=\"{asset:142:url}\" alt=\"\" /></figure><p></p><p>Saat selesai membuat file package.json. Ketikan Perintah</p><pre>npm install gulp --save-dev </pre><p>Yang fungsinya install library untuk kebutuhan project kita.</p><figure><img src=\"{asset:141:url}\" alt=\"\" /></figure><p></p><p>Untuk melakukan minify harus melakukan installasi libray yang dibutuhkan oleh gulp. Dengan menggetikan perintah berikut.</p><pre><code>npm install gulp-htmlmin gulp-uglify gulp-minify-css gulp-concat --save-dev</code></pre><figure><img src=\"{asset:140:url}\" alt=\"\" /></figure><p></p><p>Dalam folder yang sudah dibuat tadi buat lah struktur folder seperti gambar dibawah berikut.</p><p>(note abaikan folder .history) ,struktur folder antara lain</p><p><strong>dist = untuk menyimpan file hasil minify</strong></p><p><strong>src = tempat untuk menaruh folder js dan membuat file javascript disana</strong></p><figure><img src=\"{asset:143:url}\" alt=\"\" /></figure><p></p><p>Buatlah codingan seperti gambar dibawah berikut untuk melakukan minify javascript</p><figure><img src=\"{asset:152:url}\" alt=\"\" /></figure><p></p><p>Jika sudah selesai ketikan perintah berikut: </p><pre>gulp minify-js</pre><figure><img src=\"{asset:146:url}\" alt=\"\" /></figure><figure><img src=\"{asset:147:url}\" alt=\"\" /></figure><p></p><p>Kemudian liat size hasil minify. Size berkurang tapi fungsi sama</p><figure><img src=\"{asset:146:url}\" alt=\"\" /></figure><figure><img src=\"{asset:148:url}\" alt=\"\" /></figure><p></p><p>Disini bisa disimpulkan bahwa minify bisa mengoptimalkan proses load dalam file tanpa harus mengubah struktur/fungsi dalam file tersebut.</p><p><strong>Mungkin hanya ini tutorial yang bisa saya berikan. Maaf apabila ada kesalahan. Terima kasih</strong></p>'),
(136, 136, 1, 'Tutorial minify Javascript menggunakan Gulp', '2019-11-20 08:40:43', '2019-11-20 08:40:43', '7aa61628-a627-484d-b11d-5c003a281592', '<p>Sebagai web developer <em>‘zaman now’</em>, ada berbagaimacam <em>tools</em> yang harus kita kuasai. Diantaranya <em>tools</em> untuk melakukan automasi, <em>testing</em>, <em>build</em>, <em>deploy</em>, dan sebagainya. Salah satu <em>tool</em> yang biasanya digunakan dalam pengembangan web adalah Gulp.</p><p>Biasanya gulp digunakan untuk melakukan serangkaian kerja seperti membuat minify terhadap file html, css, js, melakukan concat file js, dan sebagainya. Pada artikel kali ini, penulis ingin membahas bagaimana cara penggunaan gulp untuk setup development sebuah project</p>'),
(137, 137, 1, 'Gulp 2', '2019-11-20 08:41:44', '2019-11-20 08:41:44', 'b34ae64d-fa21-428e-b80f-a821953d027d', NULL),
(138, 138, 1, 'Gulp 1', '2019-11-20 08:41:47', '2019-11-20 08:41:47', '8e9102f7-7e43-48c3-ae31-f5bd23159e5e', NULL),
(139, 139, 1, 'Gulp', '2019-11-20 08:41:49', '2019-11-20 08:41:49', '981d5d44-4df5-4ee8-963d-6a0aaa3de9dd', NULL),
(140, 140, 1, 'Gulp 5', '2019-11-20 08:42:15', '2019-11-20 08:42:15', 'a4ca7e91-3aae-414a-9289-70b59f421e78', NULL),
(141, 141, 1, 'Gulp 4', '2019-11-20 08:42:21', '2019-11-20 08:42:21', 'cd72263f-7dbe-42e6-845c-a5ae5ac491c1', NULL),
(142, 142, 1, 'Gulp 3', '2019-11-20 08:43:25', '2019-11-20 08:43:25', '2ca5c0d7-e32d-46e4-9d6a-5d7790f74581', NULL),
(143, 143, 1, 'Gulp 6', '2019-11-20 08:43:35', '2019-11-20 08:43:35', '44c27c63-991f-4606-9c92-308c37d9bca5', NULL),
(144, 144, 1, 'Gulp 8', '2019-11-20 08:43:50', '2019-11-20 08:43:50', 'a75cb4d3-222d-479f-afa4-7b6b06ee1c9a', NULL),
(145, 145, 1, 'Gulp 7', '2019-11-20 08:43:53', '2019-11-20 08:43:53', '19cfdaa5-c144-488c-8d1d-8498a8c49e08', NULL),
(146, 146, 1, 'Gulp 10', '2019-11-20 08:44:18', '2019-11-20 08:44:18', '1f74e17a-0075-4c9d-ad45-9d9c81c6b7c3', NULL),
(147, 147, 1, 'Gulp 9', '2019-11-20 08:44:21', '2019-11-20 08:44:21', '5e10de60-f177-4901-a559-72f882966e94', NULL),
(148, 148, 1, 'Gulp 11', '2019-11-20 08:51:38', '2019-11-20 08:51:38', '6a070d11-6909-4507-bf75-43f414bc4690', NULL),
(150, 150, 1, 'Tutorial minify Javascript menggunakan Gulp', '2019-11-20 10:19:07', '2019-11-20 10:19:07', '345430b5-fd09-47a5-b9d3-f1a1c2f4842e', '<p>Sebagai web developer <em>‘zaman now’</em>, ada berbagaimacam <em>tools</em> yang harus kita kuasai. Diantaranya <em>tools</em> untuk melakukan automasi, <em>testing</em>, <em>build</em>, <em>deploy</em>, dan sebagainya. Salah satu <em>tool</em> yang biasanya digunakan dalam pengembangan web adalah Gulp.</p><p>Biasanya gulp digunakan untuk melakukan serangkaian kerja seperti membuat minify terhadap file html, css, js, melakukan concat file js, dan sebagainya. Pada artikel kali ini, penulis ingin membahas bagaimana cara penggunaan gulp untuk setup development sebuah project</p><h3>Proses Instalasi</h3><p>Karena gulp basic nya menggunakan node js maka anda diharuskan melakukan instalasi node js, yang belum melakukan instalasi node js silahkan lihat <a href=\"http://fakhri-craft.test/post/menginstall-node-js-npm-di-windows\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a> untuk melakukan instalasi gulp jalankan perintah berikut di CMD/Terminal.</p><pre><code>npm install -g gulp</code></pre><figure><img src=\"{asset:139:url}\" alt=\"\" /></figure><p></p><h3>Membuat Project</h3><p>Selanjunya kita membuat project untuk melakukan minify. Saya membuat folder bernama <strong>belajar gulp </strong>pada dir /laragon/www. Kalian bisa menentukan dimana saja membuat folder tersebut disimpan. Contoh bisa dilihat di gambar bawah.<strong></strong></p><figure><img src=\"{asset:138:url}\" alt=\"\" /></figure>'),
(151, 151, 1, 'Tutorial minify Javascript menggunakan Gulp', '2019-11-20 12:26:01', '2019-11-20 12:26:01', '96b42ca5-e3f9-465d-aec0-5050ec9c9544', '<p>Sebagai web developer <em>‘zaman now’</em>, ada berbagaimacam <em>tools</em> yang harus kita kuasai. Diantaranya <em>tools</em> untuk melakukan automasi, <em>testing</em>, <em>build</em>, <em>deploy</em>, dan sebagainya. Salah satu <em>tool</em> yang biasanya digunakan dalam pengembangan web adalah Gulp.</p><p>Biasanya gulp digunakan untuk melakukan serangkaian kerja seperti membuat minify terhadap file html, css, js, melakukan concat file js, dan sebagainya. Pada artikel kali ini, penulis ingin membahas bagaimana cara penggunaan gulp untuk setup development sebuah project</p><h3>Proses Instalasi</h3><p>Karena gulp basic nya menggunakan node js maka anda diharuskan melakukan instalasi node js, yang belum melakukan instalasi node js silahkan lihat <a href=\"http://fakhri-craft.test/post/menginstall-node-js-npm-di-windows\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a> untuk melakukan instalasi gulp jalankan perintah berikut di CMD/Terminal.</p><pre><code>npm install -g gulp</code></pre><figure><img src=\"{asset:139:url}\" alt=\"\" /></figure><p></p><h3>Membuat Project</h3><p>Selanjunya kita membuat project untuk melakukan minify. Saya membuat folder bernama <strong>belajar gulp </strong>pada dir /laragon/www. Kalian bisa menentukan dimana saja membuat folder tersebut disimpan. Contoh bisa dilihat di gambar bawah.<strong></strong></p><figure><img src=\"{asset:138:url}\" alt=\"\" /></figure><p></p><p>Untuk mengecek apakah folder sudah dibuat pada dir tersebut. Bisa mengetikan perinah ls pada terminal dan dir pada CMD. Setelah foldter terbaca, kita panggil menggunakan perintah cd &lt;nama_folder&gt;. Contoh bisa dilihat gambar dibawah</p><figure><img src=\"{asset:137:url}\" alt=\"\" /></figure><p></p><p>Setelah memanggil folder tersebut. Ketik </p><pre>npm init</pre><p>Fungsinya adalah membuat package.json agar bisa install beberapa library yang dibutuhkan gulp untuk melakukan minify . Contoh bisa dilihat gambar dibawah. Jika ada yang perlu di isi. Lewati aja. Langsung tekan Enter</p><figure><img src=\"{asset:142:url}\" alt=\"\" /></figure><p></p><p>Saat selesai membuat file package.json. Ketikan Perintah</p><p>npm install gulp --save-dev </p><p>Yang fungsinya install library untuk kebutuhan project kita.</p><figure><img src=\"{asset:141:url}\" alt=\"\" /></figure><p></p><p>Untuk melakukan minify harus melakukan installasi libray yang dibutuhkan oleh gulp. Dengan menggetikan perintah berikut.</p><pre><code>npm install gulp-htmlmin gulp-uglify gulp-minify-css gulp-concat --save-dev</code></pre><figure><img src=\"{asset:140:url}\" alt=\"\" /></figure><p></p><p>Dalam folder yang sudah dibuat tadi buat lah struktur folder seperti gambar dibawah berikut.</p><p>(note abaikan folder .history) ,struktur folder antara lain</p><p><strong>dist = untuk menyimpan file hasil minify</strong></p><p><strong>src = tempat untuk menaruh folder js dan membuat file javascript disana</strong></p><figure><img src=\"{asset:143:url}\" alt=\"\" /></figure>'),
(152, 152, 1, 'Gulp 7', '2019-11-20 12:31:38', '2019-11-20 12:31:38', '5d3072ed-b20a-4be2-aae3-e0675938f4a2', NULL),
(154, 154, 1, 'Tutorial minify Javascript menggunakan Gulp', '2019-11-20 12:34:34', '2019-11-20 12:34:34', '4790f70f-0be4-422b-83a9-e1db3a6831a5', '<p>Sebagai web developer <em>‘zaman now’</em>, ada berbagaimacam <em>tools</em> yang harus kita kuasai. Diantaranya <em>tools</em> untuk melakukan automasi, <em>testing</em>, <em>build</em>, <em>deploy</em>, dan sebagainya. Salah satu <em>tool</em> yang biasanya digunakan dalam pengembangan web adalah Gulp.</p><p>Biasanya gulp digunakan untuk melakukan serangkaian kerja seperti membuat minify terhadap file html, css, js, melakukan concat file js, dan sebagainya. Pada artikel kali ini, penulis ingin membahas bagaimana cara penggunaan gulp untuk setup development sebuah project</p><h3>Proses Instalasi</h3><p>Karena gulp basic nya menggunakan node js maka anda diharuskan melakukan instalasi node js, yang belum melakukan instalasi node js silahkan lihat <a href=\"http://fakhri-craft.test/post/menginstall-node-js-npm-di-windows\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a> untuk melakukan instalasi gulp jalankan perintah berikut di CMD/Terminal.</p><pre><code>npm install -g gulp</code></pre><figure><img src=\"{asset:139:url}\" alt=\"\" /></figure><p></p><h3>Membuat Project</h3><p>Selanjunya kita membuat project untuk melakukan minify. Saya membuat folder bernama <strong>belajar gulp </strong>pada dir /laragon/www. Kalian bisa menentukan dimana saja membuat folder tersebut disimpan. Contoh bisa dilihat di gambar bawah.<strong></strong></p><figure><img src=\"{asset:138:url}\" alt=\"\" /></figure><p></p><p>Untuk mengecek apakah folder sudah dibuat pada dir tersebut. Bisa mengetikan perinah ls pada terminal dan dir pada CMD. Setelah foldter terbaca, kita panggil menggunakan perintah cd &lt;nama_folder&gt;. Contoh bisa dilihat gambar dibawah</p><figure><img src=\"{asset:137:url}\" alt=\"\" /></figure><p></p><p>Setelah memanggil folder tersebut. Ketik </p><pre>npm init</pre><p>Fungsinya adalah membuat package.json agar bisa install beberapa library yang dibutuhkan gulp untuk melakukan minify . Contoh bisa dilihat gambar dibawah. Jika ada yang perlu di isi. Lewati aja. Langsung tekan Enter</p><figure><img src=\"{asset:142:url}\" alt=\"\" /></figure><p></p><p>Saat selesai membuat file package.json. Ketikan Perintah</p><pre>npm install gulp --save-dev </pre><p>Yang fungsinya install library untuk kebutuhan project kita.</p><figure><img src=\"{asset:141:url}\" alt=\"\" /></figure><p></p><p>Untuk melakukan minify harus melakukan installasi libray yang dibutuhkan oleh gulp. Dengan menggetikan perintah berikut.</p><pre><code>npm install gulp-htmlmin gulp-uglify gulp-minify-css gulp-concat --save-dev</code></pre><figure><img src=\"{asset:140:url}\" alt=\"\" /></figure><p></p><p>Dalam folder yang sudah dibuat tadi buat lah struktur folder seperti gambar dibawah berikut.</p><p>(note abaikan folder .history) ,struktur folder antara lain</p><p><strong>dist = untuk menyimpan file hasil minify</strong></p><p><strong>src = tempat untuk menaruh folder js dan membuat file javascript disana</strong></p><figure><img src=\"{asset:143:url}\" alt=\"\" /></figure>'),
(155, 155, 1, 'Tutorial minify Javascript menggunakan Gulp', '2019-11-20 12:52:08', '2019-11-20 12:52:08', '531aa46a-c567-49e0-8a7b-c7f8b678c08b', '<p>Sebagai web developer <em>‘zaman now’</em>, ada berbagaimacam <em>tools</em> yang harus kita kuasai. Diantaranya <em>tools</em> untuk melakukan automasi, <em>testing</em>, <em>build</em>, <em>deploy</em>, dan sebagainya. Salah satu <em>tool</em> yang biasanya digunakan dalam pengembangan web adalah Gulp.</p><p>Biasanya gulp digunakan untuk melakukan serangkaian kerja seperti membuat minify terhadap file html, css, js, melakukan concat file js, dan sebagainya. Pada artikel kali ini, penulis ingin membahas bagaimana cara penggunaan gulp untuk setup development sebuah project</p><h3>Proses Instalasi</h3><p>Karena gulp basic nya menggunakan node js maka anda diharuskan melakukan instalasi node js, yang belum melakukan instalasi node js silahkan lihat <a href=\"http://fakhri-craft.test/post/menginstall-node-js-npm-di-windows\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a> untuk melakukan instalasi gulp jalankan perintah berikut di CMD/Terminal.</p><pre><code>npm install -g gulp</code></pre><figure><img src=\"{asset:139:url}\" alt=\"\" /></figure><p></p><h3>Membuat Project</h3><p>Selanjunya kita membuat project untuk melakukan minify. Saya membuat folder bernama <strong>belajar gulp </strong>pada dir /laragon/www. Kalian bisa menentukan dimana saja membuat folder tersebut disimpan. Contoh bisa dilihat di gambar bawah.<strong></strong></p><figure><img src=\"{asset:138:url}\" alt=\"\" /></figure><p></p><p>Untuk mengecek apakah folder sudah dibuat pada dir tersebut. Bisa mengetikan perinah ls pada terminal dan dir pada CMD. Setelah foldter terbaca, kita panggil menggunakan perintah cd &lt;nama_folder&gt;. Contoh bisa dilihat gambar dibawah</p><figure><img src=\"{asset:137:url}\" alt=\"\" /></figure><p></p><p>Setelah memanggil folder tersebut. Ketik </p><p>&lt;pre&gt;npm init&lt;/pre&gt;</p><p>Fungsinya adalah membuat package.json agar bisa install beberapa library yang dibutuhkan gulp untuk melakukan minify . Contoh bisa dilihat gambar dibawah. Jika ada yang perlu di isi. Lewati aja. Langsung tekan Enter</p><figure><img src=\"{asset:142:url}\" alt=\"\" /></figure><p></p><p>Saat selesai membuat file package.json. Ketikan Perintah</p><p>&lt;pre&gt;npm install gulp --save-dev &lt;/pre&gt;</p><p>Yang fungsinya install library untuk kebutuhan project kita.</p><figure><img src=\"{asset:141:url}\" alt=\"\" /></figure><p></p><p>Untuk melakukan minify harus melakukan installasi libray yang dibutuhkan oleh gulp. Dengan menggetikan perintah berikut.</p><pre><code>npm install gulp-htmlmin gulp-uglify gulp-minify-css gulp-concat --save-dev</code></pre><figure><img src=\"{asset:140:url}\" alt=\"\" /></figure><p></p><p>Dalam folder yang sudah dibuat tadi buat lah struktur folder seperti gambar dibawah berikut.</p><p>(note abaikan folder .history) ,struktur folder antara lain</p><p><strong>dist = untuk menyimpan file hasil minify</strong></p><p><strong>src = tempat untuk menaruh folder js dan membuat file javascript disana</strong></p><figure><img src=\"{asset:143:url}\" alt=\"\" /></figure><p></p><p>Buatlah codingan seperti gambar dibawah berikut untuk melakukan minify javascript</p><figure><img src=\"{asset:152:url}\" alt=\"\" /></figure><p></p><p>Jika sudah selesai ketikan perintah berikut: </p><pre>gulp minify-js</pre><figure><img src=\"{asset:146:url}\" alt=\"\" /></figure><figure><img src=\"{asset:147:url}\" alt=\"\" /></figure><p></p><p>Kemudian liat size hasil minify. Size berkurang tapi fungsi sama</p><figure><img src=\"{asset:146:url}\" alt=\"\" /></figure><figure><img src=\"{asset:148:url}\" alt=\"\" /></figure><p></p><p>Disini bisa disimpulkan bahwa minify bisa mengoptimalkan proses load dalam file tanpa harus mengubah struktur/fungsi dalam file tersebut.</p><p><strong>Mungkin hanya ini tutorial yang bisa saya berikan. Maaf apabila ada kesalahan. Terima kasih</strong></p>'),
(156, 156, 1, 'Tutorial minify Javascript menggunakan Gulp', '2019-11-21 02:31:25', '2019-11-21 02:31:25', '50a6859a-a9fb-4da5-855e-98ab2a7dbc53', '<p>Sebagai web developer <em>‘zaman now’</em>, ada berbagaimacam <em>tools</em> yang harus kita kuasai. Diantaranya <em>tools</em> untuk melakukan automasi, <em>testing</em>, <em>build</em>, <em>deploy</em>, dan sebagainya. Salah satu <em>tool</em> yang biasanya digunakan dalam pengembangan web adalah Gulp.</p><p>Biasanya gulp digunakan untuk melakukan serangkaian kerja seperti membuat minify terhadap file html, css, js, melakukan concat file js, dan sebagainya. Pada artikel kali ini, penulis ingin membahas bagaimana cara penggunaan gulp untuk setup development sebuah project</p><h3>Proses Instalasi</h3><p>Karena gulp basic nya menggunakan node js maka anda diharuskan melakukan instalasi node js, yang belum melakukan instalasi node js silahkan lihat <a href=\"http://fakhri-craft.test/post/menginstall-node-js-npm-di-windows\" target=\"_blank\" rel=\"noreferrer noopener\">Disini</a> untuk melakukan instalasi gulp jalankan perintah berikut di CMD/Terminal.</p><pre><code>npm install -g gulp</code></pre><figure><img src=\"{asset:139:url}\" alt=\"\" /></figure><p></p><h3>Membuat Project</h3><p>Selanjunya kita membuat project untuk melakukan minify. Saya membuat folder bernama <strong>belajar gulp </strong>pada dir /laragon/www. Kalian bisa menentukan dimana saja membuat folder tersebut disimpan. Contoh bisa dilihat di gambar bawah.<strong></strong></p><figure><img src=\"{asset:138:url}\" alt=\"\" /></figure><p></p><p>Untuk mengecek apakah folder sudah dibuat pada dir tersebut. Bisa mengetikan perinah ls pada terminal dan dir pada CMD. Setelah foldter terbaca, kita panggil menggunakan perintah cd &lt;nama_folder&gt;. Contoh bisa dilihat gambar dibawah</p><figure><img src=\"{asset:137:url}\" alt=\"\" /></figure><p></p><p>Setelah memanggil folder tersebut. Ketik </p><pre>npm init</pre><p>Fungsinya adalah membuat package.json agar bisa install beberapa library yang dibutuhkan gulp untuk melakukan minify . Contoh bisa dilihat gambar dibawah. Jika ada yang perlu di isi. Lewati aja. Langsung tekan Enter</p><figure><img src=\"{asset:142:url}\" alt=\"\" /></figure><p></p><p>Saat selesai membuat file package.json. Ketikan Perintah</p><pre>npm install gulp --save-dev </pre><p>Yang fungsinya install library untuk kebutuhan project kita.</p><figure><img src=\"{asset:141:url}\" alt=\"\" /></figure><p></p><p>Untuk melakukan minify harus melakukan installasi libray yang dibutuhkan oleh gulp. Dengan menggetikan perintah berikut.</p><pre><code>npm install gulp-htmlmin gulp-uglify gulp-minify-css gulp-concat --save-dev</code></pre><figure><img src=\"{asset:140:url}\" alt=\"\" /></figure><p></p><p>Dalam folder yang sudah dibuat tadi buat lah struktur folder seperti gambar dibawah berikut.</p><p>(note abaikan folder .history) ,struktur folder antara lain</p><p><strong>dist = untuk menyimpan file hasil minify</strong></p><p><strong>src = tempat untuk menaruh folder js dan membuat file javascript disana</strong></p><figure><img src=\"{asset:143:url}\" alt=\"\" /></figure><p></p><p>Buatlah codingan seperti gambar dibawah berikut untuk melakukan minify javascript</p><figure><img src=\"{asset:152:url}\" alt=\"\" /></figure><p></p><p>Jika sudah selesai ketikan perintah berikut: </p><pre>gulp minify-js</pre><figure><img src=\"{asset:146:url}\" alt=\"\" /></figure><figure><img src=\"{asset:147:url}\" alt=\"\" /></figure><p></p><p>Kemudian liat size hasil minify. Size berkurang tapi fungsi sama</p><figure><img src=\"{asset:146:url}\" alt=\"\" /></figure><figure><img src=\"{asset:148:url}\" alt=\"\" /></figure><p></p><p>Disini bisa disimpulkan bahwa minify bisa mengoptimalkan proses load dalam file tanpa harus mengubah struktur/fungsi dalam file tersebut.</p><p><strong>Mungkin hanya ini tutorial yang bisa saya berikan. Maaf apabila ada kesalahan. Terima kasih</strong></p>'),
(158, 158, 1, 'Share fb', '2019-11-21 03:00:37', '2019-11-21 03:00:37', '64f0ac98-aff3-4092-8ce0-9bd484daa731', NULL),
(159, 159, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 03:06:30', '2019-11-21 08:16:02', '93b660ba-d516-49fa-a3ca-3df3a9baebee', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><p></p><h3>Dracula.Js</h3><figure><img src=\"{asset:164:url}\" alt=\"\" /></figure><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><p></p><h3>Sweet Alert 2</h3><figure><img src=\"{asset:165:url}\" alt=\"\" /></figure><p>Sweet Alert 2 adalah Library JavaScript yang menyajikan notifikasi berupa <em>popup</em> atau <em>alert</em> yang responsif dan indah dengan kemampuan animasi dan efek yang menajubkan. Kalian bisa melihat dokumentasinya di <a href=\"https://github.com/sweetalert2/sweetalert2\" target=\"_blank\" rel=\"noreferrer noopener\">Sweet Alert</a>.</p><p>Kalian bisa melihat live code nya di <a href=\"https://codepen.io/genievn/pen/idref/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/genievn/pen/idref/</a></p>'),
(160, 160, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 03:06:30', '2019-11-21 03:06:30', '39e625a4-00cf-4cb0-a531-330a3f90b446', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p>'),
(162, 162, 1, 'Typed js', '2019-11-21 03:31:24', '2019-11-21 03:31:24', 'd80a997a-8e8f-4ae7-8798-f6aacd50426f', NULL),
(163, 163, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 03:38:26', '2019-11-21 03:38:26', '7783c810-a11a-4dc7-88eb-c1a986126930', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p></p><h3>Dracula.Js</h3><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><p></p>'),
(164, 164, 1, 'Dracula', '2019-11-21 03:45:02', '2019-11-21 03:45:02', '459dba21-c064-4bd3-9aea-43ab47b2e0d7', NULL),
(165, 165, 1, 'Swal2 logo', '2019-11-21 04:08:40', '2019-11-21 04:08:40', '1c90a6ea-8da0-4c05-8081-3d7583c52701', NULL),
(166, 166, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 04:08:48', '2019-11-21 04:08:48', '9f51daa2-6c78-4a8a-a86c-82f0926e03df', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p></p><h3>Dracula.Js</h3><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><figure><img src=\"{asset:164:url}\" alt=\"\" /></figure><p></p><h3>Sweet Alert 2</h3><p>Sweet Alert 2 adalah Library JavaScript yang menyajikan notifikasi berupa <em>popup</em> atau <em>alert</em> yang responsif dan indah dengan kemampuan animasi dan efek yang menajubkan. Kalian bisa melihat dokumentasinya di <a href=\"https://github.com/sweetalert2/sweetalert2\" target=\"_blank\" rel=\"noreferrer noopener\">Sweet Alert</a>.</p><p>Kalian bisa melihat live code nya di <a href=\"https://codepen.io/genievn/pen/idref/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/genievn/pen/idref/</a></p><figure><img src=\"{asset:165:url}\" alt=\"\" /></figure>'),
(168, 168, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 08:10:10', '2019-11-21 08:10:10', '3f95cf11-320a-495a-8a50-3bc0d48878d6', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><p></p><h3>Dracula.Js</h3><figure><img src=\"{asset:164:url}\" alt=\"\" /></figure><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><p></p><h3>Sweet Alert 2</h3><figure><img src=\"{asset:165:url}\" alt=\"\" /></figure><p>Sweet Alert 2 adalah Library JavaScript yang menyajikan notifikasi berupa <em>popup</em> atau <em>alert</em> yang responsif dan indah dengan kemampuan animasi dan efek yang menajubkan. Kalian bisa melihat dokumentasinya di <a href=\"https://github.com/sweetalert2/sweetalert2\" target=\"_blank\" rel=\"noreferrer noopener\">Sweet Alert</a>.</p><p>Kalian bisa melihat live code nya di <a href=\"https://codepen.io/genievn/pen/idref/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/genievn/pen/idref/</a></p>'),
(169, 169, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 08:12:09', '2019-11-21 08:12:09', 'e34cb6c3-7d83-4c53-b6c6-dcfc8eb81c78', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><p></p><h3>Dracula.Js</h3><figure><img src=\"{asset:164:url}\" alt=\"\" /></figure><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><p></p><h3>Sweet Alert 2</h3><figure><img src=\"{asset:165:url}\" alt=\"\" /></figure><p>Sweet Alert 2 adalah Library JavaScript yang menyajikan notifikasi berupa <em>popup</em> atau <em>alert</em> yang responsif dan indah dengan kemampuan animasi dan efek yang menajubkan. Kalian bisa melihat dokumentasinya di <a href=\"https://github.com/sweetalert2/sweetalert2\" target=\"_blank\" rel=\"noreferrer noopener\">Sweet Alert</a>.</p><p>Kalian bisa melihat live code nya di <a href=\"https://codepen.io/genievn/pen/idref/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/genievn/pen/idref/</a></p>'),
(170, 170, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 08:12:43', '2019-11-21 08:12:43', 'd8418698-b87a-4157-a6f9-b1ca785f8d6f', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><p></p><h3>Dracula.Js</h3><figure><img src=\"{asset:164:url}\" alt=\"\" /></figure><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><p></p><h3>Sweet Alert 2</h3><figure><img src=\"{asset:165:url}\" alt=\"\" /></figure><p>Sweet Alert 2 adalah Library JavaScript yang menyajikan notifikasi berupa <em>popup</em> atau <em>alert</em> yang responsif dan indah dengan kemampuan animasi dan efek yang menajubkan. Kalian bisa melihat dokumentasinya di <a href=\"https://github.com/sweetalert2/sweetalert2\" target=\"_blank\" rel=\"noreferrer noopener\">Sweet Alert</a>.</p><p>Kalian bisa melihat live code nya di <a href=\"https://codepen.io/genievn/pen/idref/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/genievn/pen/idref/</a></p>'),
(171, 171, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 08:13:18', '2019-11-21 08:13:18', '3c45ff9d-f490-42e3-bbe1-305b688d5f88', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><p></p><h3>Dracula.Js</h3><figure><img src=\"{asset:164:url}\" alt=\"\" /></figure><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><p></p><h3>Sweet Alert 2</h3><figure><img src=\"{asset:165:url}\" alt=\"\" /></figure><p>Sweet Alert 2 adalah Library JavaScript yang menyajikan notifikasi berupa <em>popup</em> atau <em>alert</em> yang responsif dan indah dengan kemampuan animasi dan efek yang menajubkan. Kalian bisa melihat dokumentasinya di <a href=\"https://github.com/sweetalert2/sweetalert2\" target=\"_blank\" rel=\"noreferrer noopener\">Sweet Alert</a>.</p><p>Kalian bisa melihat live code nya di <a href=\"https://codepen.io/genievn/pen/idref/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/genievn/pen/idref/</a></p>'),
(172, 172, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 08:14:46', '2019-11-21 08:14:46', '16bd8571-8330-45f9-99c9-52bb3a3416f8', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><p></p><h3>Dracula.Js</h3><figure><img src=\"{asset:164:url}\" alt=\"\" /></figure><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><p></p><h3>Sweet Alert 2</h3><figure><img src=\"{asset:165:url}\" alt=\"\" /></figure><p>Sweet Alert 2 adalah Library JavaScript yang menyajikan notifikasi berupa <em>popup</em> atau <em>alert</em> yang responsif dan indah dengan kemampuan animasi dan efek yang menajubkan. Kalian bisa melihat dokumentasinya di <a href=\"https://github.com/sweetalert2/sweetalert2\" target=\"_blank\" rel=\"noreferrer noopener\">Sweet Alert</a>.</p><p>Kalian bisa melihat live code nya di <a href=\"https://codepen.io/genievn/pen/idref/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/genievn/pen/idref/</a></p>'),
(173, 173, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 08:15:14', '2019-11-21 08:15:14', 'b9facb3a-00df-4b22-82fc-9199de4fa759', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><p></p><h3>Dracula.Js</h3><figure><img src=\"{asset:164:url}\" alt=\"\" /></figure><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><p></p><h3>Sweet Alert 2</h3><figure><img src=\"{asset:165:url}\" alt=\"\" /></figure><p>Sweet Alert 2 adalah Library JavaScript yang menyajikan notifikasi berupa <em>popup</em> atau <em>alert</em> yang responsif dan indah dengan kemampuan animasi dan efek yang menajubkan. Kalian bisa melihat dokumentasinya di <a href=\"https://github.com/sweetalert2/sweetalert2\" target=\"_blank\" rel=\"noreferrer noopener\">Sweet Alert</a>.</p><p>Kalian bisa melihat live code nya di <a href=\"https://codepen.io/genievn/pen/idref/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/genievn/pen/idref/</a></p>');
INSERT INTO `my_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_contentText`) VALUES
(174, 174, 1, 'Library Javascript Menarik Untuk Web Dev', '2019-11-21 08:16:02', '2019-11-21 08:16:02', '42016e5e-b828-4f1c-982e-1a5ec23efc17', '<p>Dengan naik daun Bahasa Pemrograman JavaScript tentu para Developer akan menggali apakah yang membuat JavaScript tersebut menjadi Bahasa Pemrograman terpopuler. Framework dan Library JavaScript merupakan alasan yang membuat JavaScript menjadi hebat seperti saat ini. Namun pada artikel kali ini akan membahasa Library JavaScript yang menarik untuk dipelajari</p><p></p><h3>Typed.js</h3><figure><img src=\"{asset:162:url}\" alt=\"\" /></figure><p>Typed.js adalah Library JavaScript yang memberikan efek teks menulis secara otomatis pada website. Kalian bisa melihat document Typed.js di <a href=\"https://mattboldt.com/demos/typed-js/\" target=\"_blank\" rel=\"noreferrer noopener\">https://mattboldt.com/demos/typed-js/</a>. </p><p>Contoh live code Typed.js bisa dilihat di <a href=\"https://codepen.io/Budhiluhoer/pen/GGaxxO/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Budhiluhoer/pen/GGaxxO/</a></p><p></p><h3>Dracula.Js</h3><figure><img src=\"{asset:164:url}\" alt=\"\" /></figure><p>Library ini bisa membuat kita dengan mudah melakukan drag and drop pada web kita. Seperti pada website <a href=\"https://trello.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Trello</a>. Dracula dibuat oleh <a href=\"https://github.com/bevacqua\" target=\"_blank\" rel=\"noreferrer noopener\">Nicolás Bevacqua</a>.</p><p>Kalian bisa liat live code dari Dracula.js di <a href=\"https://codepen.io/Gerlach360/pen/wrRMrW/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/Gerlach360/pen/wrRMrW/</a></p><p></p><h3>Sweet Alert 2</h3><figure><img src=\"{asset:165:url}\" alt=\"\" /></figure><p>Sweet Alert 2 adalah Library JavaScript yang menyajikan notifikasi berupa <em>popup</em> atau <em>alert</em> yang responsif dan indah dengan kemampuan animasi dan efek yang menajubkan. Kalian bisa melihat dokumentasinya di <a href=\"https://github.com/sweetalert2/sweetalert2\" target=\"_blank\" rel=\"noreferrer noopener\">Sweet Alert</a>.</p><p>Kalian bisa melihat live code nya di <a href=\"https://codepen.io/genievn/pen/idref/\" target=\"_blank\" rel=\"noreferrer noopener\">https://codepen.io/genievn/pen/idref/</a></p>'),
(176, 176, 1, 'Termux', '2019-11-21 08:23:43', '2019-11-21 08:23:43', '408aabe9-29b8-4829-8efa-c5b2bddefcdb', NULL),
(177, 177, 1, 'Menjalankan Program PHP Di Android Menggunakan Termux', '2019-11-21 09:15:13', '2019-11-21 10:24:51', 'f18f0e59-cf06-4fb4-aa1b-d8aace365f44', '<p>Halo semua disini saya akan menjelaskan cara menjalankan program PHP di android menggunakan <strong>Termux. </strong>Sebelum itu saya akan menjelaskan sedikit mengenai <strong>Termux.</strong></p><p>Hampir sama seperti terminal yang ada di Linux pada umumnya. Kini di android ada terminal yang dinamai dengan <strong>Termux. </strong>Termux mampu dijalankan di android minimal android 5.0 ( Lolipop). Perintah Termux juga tidak jauh berbeda dengan perintah terminal di Linux.</p><p>Setelah tau apa itu termux, kini saya akan menjelaskan para menjalankan program PHP menggunakan aplikasi Termux<br /><br /></p><p></p><h3>Langkah-Langkah</h3><p>Pertama kita membuka aplikasi termux. Kemudian ketikan perintah:</p><pre>$pkg update &amp;&amp; pkg updgrade</pre><p>Apabila sudah selesai ketikan perintah</p><pre>$pkg install php</pre><figure><img src=\"{asset:190:url}\" alt=\"\" /></figure><p></p><p>Hal itu dilakukan agar termux bisa menjalanan script yang berekstensi </p><p>Setelah selesain, langkah selanjutnya adalah membuat akses permision pada memori internal di android kalian, yaitu dengan mengetikan perintah:</p><pre>$termux-setup-storage</pre><p>jika ada pop up, pilih saja izinkan/yes/ok</p><figure><img src=\"{asset:192:url}\" alt=\"\" /></figure><p></p><p>Selanjutnya kita memanggil memori internal menggunakan perintah:</p><pre>$cd /sdcard</pre><p>untuk mengecek sudah terpanggil atau belum bisa melakukan perintah </p><pre>$ls</pre><figure><img src=\"{asset:189:url}\" alt=\"\" /></figure><p></p><p>Sebelum menjalankan program PHP. Kalian harus mengaktifkan localhost dengan perintah </p><pre>$php -S localhost:8080</pre><figure><img src=\"{asset:187:url}\" alt=\"\" /></figure><p></p><p>Disini saya memiliki file bernama mini.php untuk menjalankan programnya kalian bisa membuka browser kalian, (usahakan menggunakan Chrome).</p><figure><img src=\"{asset:188:url}\" alt=\"\" /></figure><p></p><p>Pada saat di browser, kalian ketikan pada kolom URL/Search yang ada di atas browser dengan mengetik <strong>localhost:8080/namafile.php</strong>. Makan hasilnya program php kalian akan berjalan seperti ini contohnya </p><figure><img src=\"{asset:186:url}\" alt=\"\" /></figure><p></p><p><strong>Sekian tutorial yang bisa saya berikan. Apabila ada kesalahan saya minta maaf. Terima kasih</strong></p>'),
(178, 178, 1, 'Menjalankan Program PHP Di Android Menggunakan Termux', '2019-11-21 09:15:14', '2019-11-21 09:15:14', '8c68f8b2-871c-4c08-9544-182f0069a959', '<p>Halo semua disini saya akan menjelaskan cara menjalankan program PHP di android menggunakan <strong>Termux. </strong>Sebelum itu saya akan menjelaskan sedikit mengenai <strong>Termux.</strong></p><p>Hampir sama seperti terminal yang ada di Linux pada umumnya. Kini di android ada terminal yang dinamai dengan <strong>Termux. </strong>Termux mampu dijalankan di android minimal android 5.0 ( Lolipop). Perintah Termux juga tidak jauh berbeda dengan perintah terminal di Linux.</p><p>Setelah tau apa itu termux, kini saya akan menjelaskan para menjalankan program PHP menggunakan aplikasi Termux<br /><br /></p><p><br /></p><h3>Langkah-Langkah</h3><p>Pertama kita membuka aplikasi termux. Kemudian ketikan perintah:</p><pre>$pkg update &amp;&amp; pkg updgrade<br /></pre><p>Apabila sudah selesai ketikan perintah</p><pre>$pkg install php</pre><p>Hal itu dilakukan agar termux bisa menjalanan script yang berekstensi </p><p>Setelah selesain, langkah selanjutnya adalah membuat akses permision pada memori internal di android kalian, yaitu dengan mengetikan perintah:</p><pre>$termux-setup-storage</pre><p>jika ada pop up, pilih saja izinkan/yes/ok</p><p>Selanjutnya kita memanggil memori internal menggunakan perintah:</p><pre>$cd /sdcard</pre><p>untuk mengecek sudah terpanggil atau belum bisa melakukan perintah </p><pre>$ls</pre><p>Sebelum menjalankan program PHP. Kalian harus mengaktifkan localhost dengan perintah </p><pre>$php -S localhost:8080</pre><p><br /></p><p>Disini saya memiliki file bernama mini.php untuk menjalankan programnya kalian bisa membuka browser kalian, (usahakan menggunakan Chrome).</p><p><strong>localhost:8080/namafile.php</strong><br /> </p>'),
(179, 179, 1, 'Screenshot 2019 11 21 16 09 16 49', '2019-11-21 09:33:22', '2019-11-21 09:33:22', '61523857-5113-4a5c-b3f5-218c5941d13b', NULL),
(180, 180, 1, 'Screenshot 2019 11 21 16 06 23 75 84d3000e3f4017145260f7618db1d683', '2019-11-21 09:33:36', '2019-11-21 09:33:36', 'b9da4ef5-0a7f-4272-a49e-6a9eefe98e56', NULL),
(181, 181, 1, 'Screenshot 2019 11 21 16 04 02 88', '2019-11-21 09:34:33', '2019-11-21 09:34:33', 'd450b13d-78ef-43c8-a85f-e2753bbf2a67', NULL),
(182, 182, 1, 'Screenshot 2019 11 21 16 03 16 75 84d3000e3f4017145260f7618db1d683', '2019-11-21 09:34:47', '2019-11-21 09:34:47', '4751bb03-91e4-4064-8f4e-173e75eb9424', NULL),
(183, 183, 1, 'Screenshot 2019 11 21 16 03 00 50 84d3000e3f4017145260f7618db1d683', '2019-11-21 09:35:37', '2019-11-21 09:35:37', '76d869b3-8fc3-420a-bd47-2f9cd667204e', NULL),
(184, 184, 1, 'Screenshot 2019 11 21 16 02 19 80 84d3000e3f4017145260f7618db1d683', '2019-11-21 09:36:29', '2019-11-21 09:36:29', '460c632c-487c-4dba-a324-60677b3441ab', NULL),
(185, 185, 1, 'Screenshot 2019 11 21 16 01 39 90 84d3000e3f4017145260f7618db1d683', '2019-11-21 09:36:48', '2019-11-21 09:36:48', '012af4c8-e389-42cd-837c-134ed61c456e', NULL),
(186, 186, 1, 'Run', '2019-11-21 09:58:12', '2019-11-21 09:58:12', '22ee44c6-ec46-4ff5-aa2a-cb49f81e7a0f', NULL),
(187, 187, 1, 'Localhost', '2019-11-21 09:59:06', '2019-11-21 10:11:55', '0dd7e7e6-9ebc-4885-9d46-5323e4330436', NULL),
(188, 188, 1, 'File sd', '2019-11-21 10:00:37', '2019-11-21 10:00:37', 'a6c98e91-3f37-40dd-a01f-0a2da6a96b94', NULL),
(189, 189, 1, 'Ls', '2019-11-21 10:01:06', '2019-11-21 10:01:06', '3d9e0f92-4a4a-4b57-853a-2ecea5448ca2', NULL),
(190, 190, 1, 'Pkg php', '2019-11-21 10:04:35', '2019-11-21 10:05:50', '286649b7-f1c3-48e5-a539-44c57c41cf98', NULL),
(192, 192, 1, 'Setup storage', '2019-11-21 10:07:08', '2019-11-21 10:07:08', 'a7c0e240-632e-418e-86c8-36e812e82285', NULL),
(193, 193, 1, 'Menjalankan Program PHP Di Android Menggunakan Termux', '2019-11-21 10:24:28', '2019-11-21 10:24:28', '4ca733fc-8e97-48d1-9490-0064d7c2d06a', '<p>Halo semua disini saya akan menjelaskan cara menjalankan program PHP di android menggunakan <strong>Termux. </strong>Sebelum itu saya akan menjelaskan sedikit mengenai <strong>Termux.</strong></p><p>Hampir sama seperti terminal yang ada di Linux pada umumnya. Kini di android ada terminal yang dinamai dengan <strong>Termux. </strong>Termux mampu dijalankan di android minimal android 5.0 ( Lolipop). Perintah Termux juga tidak jauh berbeda dengan perintah terminal di Linux.</p><p>Setelah tau apa itu termux, kini saya akan menjelaskan para menjalankan program PHP menggunakan aplikasi Termux<br /><br /></p><p></p><h3>Langkah-Langkah</h3><p>Pertama kita membuka aplikasi termux. Kemudian ketikan perintah:</p><pre>$pkg update &amp;&amp; pkg updgrade</pre><p>Apabila sudah selesai ketikan perintah</p><pre>$pkg install php</pre><figure><img src=\"{asset:190:url}\" alt=\"\" /></figure><p></p><p>Hal itu dilakukan agar termux bisa menjalanan script yang berekstensi </p><p>Setelah selesain, langkah selanjutnya adalah membuat akses permision pada memori internal di android kalian, yaitu dengan mengetikan perintah:</p><pre>$termux-setup-storage</pre><p>jika ada pop up, pilih saja izinkan/yes/ok</p><figure><img src=\"{asset:192:url}\" alt=\"\" /></figure><p></p><p>Selanjutnya kita memanggil memori internal menggunakan perintah:</p><pre>$cd /sdcard</pre><p>untuk mengecek sudah terpanggil atau belum bisa melakukan perintah </p><pre>$ls</pre><figure><img src=\"{asset:189:url}\" alt=\"\" /></figure><p><br /></p><p>Sebelum menjalankan program PHP. Kalian harus mengaktifkan localhost dengan perintah </p><pre>$php -S localhost:8080</pre><figure><img src=\"{asset:187:url}\" alt=\"\" /></figure><p></p><p>Disini saya memiliki file bernama mini.php untuk menjalankan programnya kalian bisa membuka browser kalian, (usahakan menggunakan Chrome).</p><figure><img src=\"{asset:188:url}\" alt=\"\" /></figure><p></p><p>Pada saat di browser, kalian ketikan pada kolom URL/Search yang ada di atas browser dengan mengetik <strong>localhost:8080/namafile.php</strong>. Makan hasilnya program php kalian akan berjalan seperti ini contohnya </p><figure><img src=\"{asset:186:url}\" alt=\"\" /></figure><p></p><p><strong>Sekian tutorial yang bisa saya berikan. Apabila ada kesalahan saya minta maaf. Terima kasih</strong></p>'),
(194, 194, 1, 'Menjalankan Program PHP Di Android Menggunakan Termux', '2019-11-21 10:24:51', '2019-11-21 10:24:51', 'fae727af-7b0b-4cc8-a5ac-9f013929a142', '<p>Halo semua disini saya akan menjelaskan cara menjalankan program PHP di android menggunakan <strong>Termux. </strong>Sebelum itu saya akan menjelaskan sedikit mengenai <strong>Termux.</strong></p><p>Hampir sama seperti terminal yang ada di Linux pada umumnya. Kini di android ada terminal yang dinamai dengan <strong>Termux. </strong>Termux mampu dijalankan di android minimal android 5.0 ( Lolipop). Perintah Termux juga tidak jauh berbeda dengan perintah terminal di Linux.</p><p>Setelah tau apa itu termux, kini saya akan menjelaskan para menjalankan program PHP menggunakan aplikasi Termux<br /><br /></p><p></p><h3>Langkah-Langkah</h3><p>Pertama kita membuka aplikasi termux. Kemudian ketikan perintah:</p><pre>$pkg update &amp;&amp; pkg updgrade</pre><p>Apabila sudah selesai ketikan perintah</p><pre>$pkg install php</pre><figure><img src=\"{asset:190:url}\" alt=\"\" /></figure><p></p><p>Hal itu dilakukan agar termux bisa menjalanan script yang berekstensi </p><p>Setelah selesain, langkah selanjutnya adalah membuat akses permision pada memori internal di android kalian, yaitu dengan mengetikan perintah:</p><pre>$termux-setup-storage</pre><p>jika ada pop up, pilih saja izinkan/yes/ok</p><figure><img src=\"{asset:192:url}\" alt=\"\" /></figure><p></p><p>Selanjutnya kita memanggil memori internal menggunakan perintah:</p><pre>$cd /sdcard</pre><p>untuk mengecek sudah terpanggil atau belum bisa melakukan perintah </p><pre>$ls</pre><figure><img src=\"{asset:189:url}\" alt=\"\" /></figure><p></p><p>Sebelum menjalankan program PHP. Kalian harus mengaktifkan localhost dengan perintah </p><pre>$php -S localhost:8080</pre><figure><img src=\"{asset:187:url}\" alt=\"\" /></figure><p></p><p>Disini saya memiliki file bernama mini.php untuk menjalankan programnya kalian bisa membuka browser kalian, (usahakan menggunakan Chrome).</p><figure><img src=\"{asset:188:url}\" alt=\"\" /></figure><p></p><p>Pada saat di browser, kalian ketikan pada kolom URL/Search yang ada di atas browser dengan mengetik <strong>localhost:8080/namafile.php</strong>. Makan hasilnya program php kalian akan berjalan seperti ini contohnya </p><figure><img src=\"{asset:186:url}\" alt=\"\" /></figure><p></p><p><strong>Sekian tutorial yang bisa saya berikan. Apabila ada kesalahan saya minta maaf. Terima kasih</strong></p>'),
(196, 196, 1, 'Shutterstock 345474398', '2019-11-22 10:04:09', '2019-11-22 10:04:09', '056cfa2a-2c99-4393-95c5-2b1d76f313b9', NULL),
(197, 197, 1, 'Code', '2019-11-22 10:20:27', '2019-11-22 10:20:27', 'dc191900-3bb0-4601-9ece-d311296de1de', NULL),
(198, 198, 1, 'CODE1', '2019-11-22 10:21:16', '2019-11-22 10:21:16', '4a1495a5-99ac-4df8-8d86-a08e3fb56c8e', NULL),
(199, 199, 1, 'Source Code Pola Segitiga Di PHP', '2019-11-22 10:21:36', '2019-11-23 03:09:16', '98606fd4-fe64-4965-b5c8-188d032f7f00', '<p>Hallo, mengingat banyaknya tugas yang diberikan. Mengenai logika pemrograman. Banyak orang yang belajar pemrograman itu bingung bagaimana membuat code tersebut. Seperti yang mereka harapkan.</p><p>Disini saya akan membagikan sebuah source code pola segitiga dengan bahasa pemrograman PHP. Untuk maba biasanya diberikan tugas seperti itu. Tapi mereka tidak tau codenya. Maka dari itu saya akan memberikan codenya. Bisa dilihat gambar dibawah ini </p><p></p><figure><img src=\"{asset:197:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:198:url}\" alt=\"\" /></figure><p></p><p>Kalian juga bisa download source codenya disini <a href=\"https://pastebin.com/9tde0bwF\" target=\"_blank\" rel=\"noreferrer noopener\">https://pastebin.com/9tde0bwF</a>. Sekian yang saya bisa sampaikan. Apabila ada kesalahan saya minta maaf. Terima Kasih.</p>'),
(200, 200, 1, 'Source Code Pola Segitiga Di PHP', '2019-11-22 10:21:36', '2019-11-22 10:21:36', 'fc0becdc-4e5b-40df-b1af-572389df6bb7', '<p>Hallo, mengingat banyaknya tugas yang diberikan. Mengenai logika pemrograman. Banyak orang yang belajar pemrograman itu bingung bagaimana membuat code tersebut. Seperti yang mereka harapkan.</p><p>Disini saya akan membagikan sebuah source code pola segitiga dengan bahasa pemrograman PHP. Untuk maba biasanya diberikan tugas seperti itu. Tapi mereka tidak tau codenya. Maka dari itu saya akan memberikan codenya. Bisa dilihat gambar dibawah ini </p><p></p><figure><img src=\"{asset:197:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:198:url}\" alt=\"\" /></figure><p></p>'),
(201, 201, 1, 'Source Code Pola Segitiga Di PHP', '2019-11-23 03:08:57', '2019-11-23 03:08:57', '1a3598b9-9d14-430a-a4ce-3b395f1d8fd1', '<p>Hallo, mengingat banyaknya tugas yang diberikan. Mengenai logika pemrograman. Banyak orang yang belajar pemrograman itu bingung bagaimana membuat code tersebut. Seperti yang mereka harapkan.</p><p>Disini saya akan membagikan sebuah source code pola segitiga dengan bahasa pemrograman PHP. Untuk maba biasanya diberikan tugas seperti itu. Tapi mereka tidak tau codenya. Maka dari itu saya akan memberikan codenya. Bisa dilihat gambar dibawah ini </p><p></p><figure><img src=\"{asset:197:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:198:url}\" alt=\"\" /></figure><p></p><p>Kalian juga bisa download source codenya disini <a href=\"https://pastebin.com/9tde0bwF\" target=\"_blank\" rel=\"noreferrer noopener\">https://pastebin.com/9tde0bwF</a>. Sekian yang saya bisa sampaikan. Apabila ada kesalahan saya minta maaf. Terima Kasih.</p>'),
(202, 202, 1, 'Source Code Pola Segitiga Di PHP', '2019-11-23 03:09:16', '2019-11-23 03:09:16', '32621e6d-c0b3-428d-b960-ef1ad2d39238', '<p>Hallo, mengingat banyaknya tugas yang diberikan. Mengenai logika pemrograman. Banyak orang yang belajar pemrograman itu bingung bagaimana membuat code tersebut. Seperti yang mereka harapkan.</p><p>Disini saya akan membagikan sebuah source code pola segitiga dengan bahasa pemrograman PHP. Untuk maba biasanya diberikan tugas seperti itu. Tapi mereka tidak tau codenya. Maka dari itu saya akan memberikan codenya. Bisa dilihat gambar dibawah ini </p><p></p><figure><img src=\"{asset:197:url}\" alt=\"\" /></figure><p></p><figure><img src=\"{asset:198:url}\" alt=\"\" /></figure><p></p><p>Kalian juga bisa download source codenya disini <a href=\"https://pastebin.com/9tde0bwF\" target=\"_blank\" rel=\"noreferrer noopener\">https://pastebin.com/9tde0bwF</a>. Sekian yang saya bisa sampaikan. Apabila ada kesalahan saya minta maaf. Terima Kasih.</p>'),
(204, 204, 1, 'Cpp programming 636525045026590902', '2019-11-23 03:36:18', '2019-11-23 03:36:18', '26e82ec8-1e2f-431a-8769-5b5b674dfeef', NULL),
(205, 205, 1, 'Pengenalan Bahasa Pemrograman C++', '2019-11-23 03:51:22', '2019-11-23 04:09:03', 'e34a35f4-810e-40ae-a894-f28a682f989c', '<p>Bahasa Pemrograman C++ adalah bahasa Pemrograman Komputer Tingkat Tinggi (<em>High Level Language</em>), tapi C++ juga dimungkinkan untuk menulis Bahasa Pemrograman Tinggkat Rendah (<em>Low Level Language</em>) di dalam pengkodingan.<br /></p><p>C++ adalah peluasan dan penyempurnaan dari bahasa pemrograman sebelumnya yaitu bahasa C, oleh <strong>Bjarne Stroustrup</strong> pada tahun 1980. Awal C++ mempunyai nama yaitu “<em>C with Classes</em>” dan berganti nama menjadi C++ pada tahun 1983. </p><p>Bjarne Stroustrup membuat bahasa pemrograman C++ dengan tambahan fasilitas, yang sangat berguna pada tahun itu sampai sekarang, yaitu bahasa pemrograman yang mendukung <strong>OOP (<em>Object Oriented Programming</em>)</strong></p><p><strong><br /></strong></p><h3>Fitur Di C++</h3><p><em>Merupakan salah satu bahasa pemrograman yang paling banyak digunakan di dunia dan hampir semua program di dunia dibuat dengan menggunakan C/C++.</em></p><p><em>Portable. Karena memiliki banyak kompiler yang berjalan di berbagai platform dan secara eksklusif menggunakan Standar Library C++ yang akan berjalan pada banyak platform dengan tidak adanya perubahan fungsi-fungsi pada Library C++.</em></p><p><em>Mendukung Manifest dan Inferred Typing. Fitur tersebut sudah ada semenjak kelahiran C++ pertama hingga C++ Modern saat ini, C ++ memungkinkan fleksibilitas dan juga menyediakan kesederhanaan dalam menulis program.</em></p><p><em>C++ Menawarkan banyak pilihan paradigma. Beberapa adalah paradigm yang sangat terkenal dalam C++ adalah menawarkan dukungan luar biasa untuk Pemrograman Prosedural, Generik, Berorientasi Objek (OOP) dan masih banyak paradigm yang memberikan kemudahan untuk programmer C++.</em></p><p><em>Memiliki dukungan Library yang luar biasa. C++ memiliki Standar Library C++ yang memiliki banyak sekali fungsi dan tidak hanya itu, banyak juga programmer lain yang mengembangkan C++ dan membuat Library tambahan yang sangat berguna.</em></p><p><em>Bahasa yang dikompilasi. C ++ mengkompilasi langsung ke bahasa mesin, yang menjadikanya menjadi salah satu bahasa pemrograman tercepat di dunia.</em></p><p><em>Sekali lagi menawarkan Fleksibilitas dalam mendukung kedua statis dan dinamis type checking. C++ memungkinkan tipe conversions untuk diperiksa disaat mengkompilasi program atau saat jalanya program (run-time).</em></p><p><em>C++ merupakan bahasa turunan dari bahasa pemrograman C, dan C++ dapat menggunakan dan mempunyai semua fasilitas yang ada dalam bahasa pemrograman C tanpa perubahan sedikitpun dalam fungsi-fungsi C. dan juga C++ dapat melakukan pemrograman Assembly langsung di dalam program yang merupakan fitur turunan dari C.</em></p><p></p>'),
(206, 206, 1, 'Pengenalan Bahasa Pemrograman C++', '2019-11-23 03:51:22', '2019-11-23 03:51:22', '12573f28-4fa9-4141-95d1-135b31f9a908', '<p>Bahasa Pemrograman C++ adalah bahasa Pemrograman Komputer Tingkat Tinggi (<em>High Level Language</em>), tapi C++ juga dimungkinkan untuk menulis Bahasa Pemrograman Tinggkat Rendah (<em>Low Level Language</em>) di dalam pengkodingan.<br /></p><p>C++ adalah peluasan dan penyempurnaan dari bahasa pemrograman sebelumnya yaitu bahasa C, oleh <strong>Bjarne Stroustrup</strong> pada tahun 1980. Awal C++ mempunyai nama yaitu “<em>C with Classes</em>” dan berganti nama menjadi C++ pada tahun 1983. </p><p>Bjarne Stroustrup membuat bahasa pemrograman C++ dengan tambahan fasilitas, yang sangat berguna pada tahun itu sampai sekarang, yaitu bahasa pemrograman yang mendukung <strong>OOP (<em>Object Oriented Programming</em>)</strong></p><p><strong><br /></strong></p><h3>Fitur Di C++</h3><ul><li>Merupakan salah satu bahasa pemrograman yang paling banyak digunakan di dunia dan hampir semua program di dunia dibuat dengan menggunakan C/C++.</li><li><em>Portable</em>. Karena memiliki banyak kompiler yang berjalan di berbagai <em>platform</em> dan secara eksklusif menggunakan <em>Standar Library</em> C++ yang akan berjalan pada banyak <em>platform</em> dengan tidak adanya perubahan fungsi-fungsi pada <em>Library</em> C++.</li></ul>'),
(208, 208, 1, 'Pengenalan Bahasa Pemrograman C++', '2019-11-23 03:55:10', '2019-11-23 03:55:10', 'cf1fe045-2a33-4365-8488-f789ea1a4ce7', '<p>Bahasa Pemrograman C++ adalah bahasa Pemrograman Komputer Tingkat Tinggi (<em>High Level Language</em>), tapi C++ juga dimungkinkan untuk menulis Bahasa Pemrograman Tinggkat Rendah (<em>Low Level Language</em>) di dalam pengkodingan.<br /></p><p>C++ adalah peluasan dan penyempurnaan dari bahasa pemrograman sebelumnya yaitu bahasa C, oleh <strong>Bjarne Stroustrup</strong> pada tahun 1980. Awal C++ mempunyai nama yaitu “<em>C with Classes</em>” dan berganti nama menjadi C++ pada tahun 1983. </p><p>Bjarne Stroustrup membuat bahasa pemrograman C++ dengan tambahan fasilitas, yang sangat berguna pada tahun itu sampai sekarang, yaitu bahasa pemrograman yang mendukung <strong>OOP (<em>Object Oriented Programming</em>)</strong></p><p><strong><br /></strong></p><h3>Fitur Di C++</h3><ul><li>Merupakan salah satu bahasa pemrograman yang paling banyak digunakan di dunia dan hampir semua program di dunia dibuat dengan menggunakan C/C++.</li><li><em>Portable</em>. Karena memiliki banyak kompiler yang berjalan di berbagai <em>platform</em> dan secara eksklusif menggunakan <em>Standar Library</em> C++ yang akan berjalan pada banyak <em>platform</em> dengan tidak adanya perubahan fungsi-fungsi pada <em>Library</em> C++.</li><li>Mendukung <em>Manifest</em> dan <em>Inferred Typing</em>. Fitur tersebut sudah ada semenjak kelahiran C++ pertama hingga C++ <em>Modern</em> saat ini, C ++ memungkinkan fleksibilitas dan juga menyediakan kesederhanaan dalam menulis program.</li><li>C++ Menawarkan banyak pilihan paradigma. Beberapa adalah paradigm yang sangat terkenal dalam C++ adalah menawarkan dukungan luar biasa untuk Pemrograman Prosedural, Generik, Berorientasi Objek (OOP) dan masih banyak paradigm yang memberikan kemudahan untuk programmer C++.</li><li>Memiliki dukungan <em>Library</em> yang luar biasa. C++ memiliki <em>Standar Library</em> C++ yang memiliki banyak sekali fungsi dan tidak hanya itu, banyak juga programmer lain yang mengembangkan C++ dan membuat <em>Library</em> tambahan yang sangat berguna.</li><li>Bahasa yang dikompilasi. C ++ mengkompilasi langsung ke bahasa mesin, yang menjadikanya menjadi salah satu bahasa pemrograman tercepat di dunia.</li><li>Sekali lagi menawarkan Fleksibilitas dalam mendukung kedua statis dan dinamis <em>type checking</em>. C++ memungkinkan tipe <em>conversions</em> untuk diperiksa disaat mengkompilasi program atau saat jalanya program (<em>run-time</em>).</li><li>C++ merupakan bahasa turunan dari bahasa pemrograman C, dan C++ dapat menggunakan dan mempunyai semua fasilitas yang ada dalam bahasa pemrograman C tanpa perubahan sedikitpun dalam fungsi-fungsi C. dan juga C++ dapat melakukan pemrograman Assembly langsung di dalam program yang merupakan fitur turunan dari C.</li></ul><p><br /></p>'),
(210, 210, 1, 'Pengenalan Bahasa Pemrograman C++', '2019-11-23 03:57:24', '2019-11-23 03:57:24', '92273dc5-d3fb-4641-92c7-2a6eef18d636', '<p>Bahasa Pemrograman C++ adalah bahasa Pemrograman Komputer Tingkat Tinggi (<em>High Level Language</em>), tapi C++ juga dimungkinkan untuk menulis Bahasa Pemrograman Tinggkat Rendah (<em>Low Level Language</em>) di dalam pengkodingan.<br /></p><p>C++ adalah peluasan dan penyempurnaan dari bahasa pemrograman sebelumnya yaitu bahasa C, oleh <strong>Bjarne Stroustrup</strong> pada tahun 1980. Awal C++ mempunyai nama yaitu “<em>C with Classes</em>” dan berganti nama menjadi C++ pada tahun 1983. </p><p>Bjarne Stroustrup membuat bahasa pemrograman C++ dengan tambahan fasilitas, yang sangat berguna pada tahun itu sampai sekarang, yaitu bahasa pemrograman yang mendukung <strong>OOP (<em>Object Oriented Programming</em>)</strong></p><p><strong><br /></strong></p><h3>Fitur Di C++</h3><ul><li>Merupakan salah satu bahasa pemrograman yang paling banyak digunakan di dunia dan hampir semua program di dunia dibuat dengan menggunakan C/C++.</li><li><em>Portable</em>. Karena memiliki banyak kompiler yang berjalan di berbagai <em>platform</em> dan secara eksklusif menggunakan <em>Standar Library</em> C++ yang akan berjalan pada banyak <em>platform</em> dengan tidak adanya perubahan fungsi-fungsi pada <em>Library</em> C++.</li><li>Mendukung <em>Manifest</em> dan <em>Inferred Typing</em>. Fitur tersebut sudah ada semenjak kelahiran C++ pertama hingga C++ <em>Modern</em> saat ini, C ++ memungkinkan fleksibilitas dan juga menyediakan kesederhanaan dalam menulis program.</li><li>C++ Menawarkan banyak pilihan paradigma. Beberapa adalah paradigm yang sangat terkenal dalam C++ adalah menawarkan dukungan luar biasa untuk Pemrograman Prosedural, Generik, Berorientasi Objek (OOP) dan masih banyak paradigm yang memberikan kemudahan untuk programmer C++.</li><li>Memiliki dukungan <em>Library</em> yang luar biasa. C++ memiliki <em>Standar Library</em> C++ yang memiliki banyak sekali fungsi dan tidak hanya itu, banyak juga programmer lain yang mengembangkan C++ dan membuat <em>Library</em> tambahan yang sangat berguna.</li><li>Bahasa yang dikompilasi. C ++ mengkompilasi langsung ke bahasa mesin, yang menjadikanya menjadi salah satu bahasa pemrograman tercepat di dunia.</li><li>Sekali lagi menawarkan Fleksibilitas dalam mendukung kedua statis dan dinamis <em>type checking</em>. C++ memungkinkan tipe <em>conversions</em> untuk diperiksa disaat mengkompilasi program atau saat jalanya program (<em>run-time</em>).</li><li>C++ merupakan bahasa turunan dari bahasa pemrograman C, dan C++ dapat menggunakan dan mempunyai semua fasilitas yang ada dalam bahasa pemrograman C tanpa perubahan sedikitpun dalam fungsi-fungsi C. dan juga C++ dapat melakukan pemrograman Assembly langsung di dalam program yang merupakan fitur turunan dari C.</li></ul><p></p>'),
(211, 211, 1, 'Pengenalan Bahasa Pemrograman C++', '2019-11-23 03:58:50', '2019-11-23 03:58:50', '6e07b536-21f5-4940-85b2-cd7f37afa3cc', '<p>Bahasa Pemrograman C++ adalah bahasa Pemrograman Komputer Tingkat Tinggi (<em>High Level Language</em>), tapi C++ juga dimungkinkan untuk menulis Bahasa Pemrograman Tinggkat Rendah (<em>Low Level Language</em>) di dalam pengkodingan.<br /></p><p>C++ adalah peluasan dan penyempurnaan dari bahasa pemrograman sebelumnya yaitu bahasa C, oleh <strong>Bjarne Stroustrup</strong> pada tahun 1980. Awal C++ mempunyai nama yaitu “<em>C with Classes</em>” dan berganti nama menjadi C++ pada tahun 1983. </p><p>Bjarne Stroustrup membuat bahasa pemrograman C++ dengan tambahan fasilitas, yang sangat berguna pada tahun itu sampai sekarang, yaitu bahasa pemrograman yang mendukung <strong>OOP (<em>Object Oriented Programming</em>)</strong></p><p><strong><br /></strong></p><h3>Fitur Di C++</h3><ul><li>Merupakan salah satu bahasa pemrograman yang paling banyak digunakan di dunia dan hampir semua program di dunia dibuat dengan menggunakan C/C++.</li><li><em>Portable</em>. Karena memiliki banyak kompiler yang berjalan di berbagai <em>platform</em> dan secara eksklusif menggunakan <em>Standar Library</em> C++ yang akan berjalan pada banyak <em>platform</em> dengan tidak adanya perubahan fungsi-fungsi pada <em>Library</em> C++.</li><li>Mendukung <em>Manifest</em> dan <em>Inferred Typing</em>. Fitur tersebut sudah ada semenjak kelahiran C++ pertama hingga C++ <em>Modern</em> saat ini, C ++ memungkinkan fleksibilitas dan juga menyediakan kesederhanaan dalam menulis program.</li><li>C++ Menawarkan banyak pilihan paradigma. Beberapa adalah paradigm yang sangat terkenal dalam C++ adalah menawarkan dukungan luar biasa untuk Pemrograman Prosedural, Generik, Berorientasi Objek (OOP) dan masih banyak paradigm yang memberikan kemudahan untuk programmer C++.</li><li>Memiliki dukungan <em>Library</em> yang luar biasa. C++ memiliki <em>Standar Library</em> C++ yang memiliki banyak sekali fungsi dan tidak hanya itu, banyak juga programmer lain yang mengembangkan C++ dan membuat <em>Library</em> tambahan yang sangat berguna.</li><li>Bahasa yang dikompilasi. C ++ mengkompilasi langsung ke bahasa mesin, yang menjadikanya menjadi salah satu bahasa pemrograman tercepat di dunia.</li><li>Sekali lagi menawarkan Fleksibilitas dalam mendukung kedua statis dan dinamis <em>type checking</em>. C++ memungkinkan tipe <em>conversions</em> untuk diperiksa disaat mengkompilasi program atau saat jalanya program (<em>run-time</em>).</li><li>C++ merupakan bahasa turunan dari bahasa pemrograman C, dan C++ dapat menggunakan dan mempunyai semua fasilitas yang ada dalam bahasa pemrograman C tanpa perubahan sedikitpun dalam fungsi-fungsi C. dan juga C++ dapat melakukan pemrograman Assembly langsung di dalam program yang merupakan fitur turunan dari C.</li></ul><p></p>'),
(212, 212, 1, 'Pengenalan Bahasa Pemrograman C++', '2019-11-23 04:04:42', '2019-11-23 04:04:42', '7abe0f21-d434-4ffc-a775-d786c0dbee21', '<p>Bahasa Pemrograman C++ adalah bahasa Pemrograman Komputer Tingkat Tinggi (<em>High Level Language</em>), tapi C++ juga dimungkinkan untuk menulis Bahasa Pemrograman Tinggkat Rendah (<em>Low Level Language</em>) di dalam pengkodingan.<br /></p><p>C++ adalah peluasan dan penyempurnaan dari bahasa pemrograman sebelumnya yaitu bahasa C, oleh <strong>Bjarne Stroustrup</strong> pada tahun 1980. Awal C++ mempunyai nama yaitu “<em>C with Classes</em>” dan berganti nama menjadi C++ pada tahun 1983. </p><p>Bjarne Stroustrup membuat bahasa pemrograman C++ dengan tambahan fasilitas, yang sangat berguna pada tahun itu sampai sekarang, yaitu bahasa pemrograman yang mendukung <strong>OOP (<em>Object Oriented Programming</em>)</strong></p><p><strong><br /></strong></p><h3>Fitur Di C++</h3><p><em>Merupakan salah satu bahasa pemrograman yang paling banyak digunakan di dunia dan hampir semua program di dunia dibuat dengan menggunakan C/C++.</em></p><p><em>Portable. Karena memiliki banyak kompiler yang berjalan di berbagai platform dan secara eksklusif menggunakan Standar Library C++ yang akan berjalan pada banyak platform dengan tidak adanya perubahan fungsi-fungsi pada Library C++.</em></p><p><em>Mendukung Manifest dan Inferred Typing. Fitur tersebut sudah ada semenjak kelahiran C++ pertama hingga C++ Modern saat ini, C ++ memungkinkan fleksibilitas dan juga menyediakan kesederhanaan dalam menulis program.</em></p><p><em>C++ Menawarkan banyak pilihan paradigma. Beberapa adalah paradigm yang sangat terkenal dalam C++ adalah menawarkan dukungan luar biasa untuk Pemrograman Prosedural, Generik, Berorientasi Objek (OOP) dan masih banyak paradigm yang memberikan kemudahan untuk programmer C++.</em></p><p><em>Memiliki dukungan Library yang luar biasa. C++ memiliki Standar Library C++ yang memiliki banyak sekali fungsi dan tidak hanya itu, banyak juga programmer lain yang mengembangkan C++ dan membuat Library tambahan yang sangat berguna.</em></p><p><em>Bahasa yang dikompilasi. C ++ mengkompilasi langsung ke bahasa mesin, yang menjadikanya menjadi salah satu bahasa pemrograman tercepat di dunia.</em></p><p><em>Sekali lagi menawarkan Fleksibilitas dalam mendukung kedua statis dan dinamis type checking. C++ memungkinkan tipe conversions untuk diperiksa disaat mengkompilasi program atau saat jalanya program (run-time).</em></p><p><em>C++ merupakan bahasa turunan dari bahasa pemrograman C, dan C++ dapat menggunakan dan mempunyai semua fasilitas yang ada dalam bahasa pemrograman C tanpa perubahan sedikitpun dalam fungsi-fungsi C. dan juga C++ dapat melakukan pemrograman Assembly langsung di dalam program yang merupakan fitur turunan dari C.</em></p><p></p>'),
(213, 213, 1, 'Title Shadow 1024x341', '2019-11-23 04:08:55', '2019-11-23 04:08:55', '202527ac-2cb1-41f8-a1d5-2a8ca4fdbcc2', NULL),
(214, 214, 1, 'Pengenalan Bahasa Pemrograman C++', '2019-11-23 04:09:03', '2019-11-23 04:09:03', 'b2b97c70-2e61-4421-b7e6-c898363bfd1d', '<p>Bahasa Pemrograman C++ adalah bahasa Pemrograman Komputer Tingkat Tinggi (<em>High Level Language</em>), tapi C++ juga dimungkinkan untuk menulis Bahasa Pemrograman Tinggkat Rendah (<em>Low Level Language</em>) di dalam pengkodingan.<br /></p><p>C++ adalah peluasan dan penyempurnaan dari bahasa pemrograman sebelumnya yaitu bahasa C, oleh <strong>Bjarne Stroustrup</strong> pada tahun 1980. Awal C++ mempunyai nama yaitu “<em>C with Classes</em>” dan berganti nama menjadi C++ pada tahun 1983. </p><p>Bjarne Stroustrup membuat bahasa pemrograman C++ dengan tambahan fasilitas, yang sangat berguna pada tahun itu sampai sekarang, yaitu bahasa pemrograman yang mendukung <strong>OOP (<em>Object Oriented Programming</em>)</strong></p><p><strong><br /></strong></p><h3>Fitur Di C++</h3><p><em>Merupakan salah satu bahasa pemrograman yang paling banyak digunakan di dunia dan hampir semua program di dunia dibuat dengan menggunakan C/C++.</em></p><p><em>Portable. Karena memiliki banyak kompiler yang berjalan di berbagai platform dan secara eksklusif menggunakan Standar Library C++ yang akan berjalan pada banyak platform dengan tidak adanya perubahan fungsi-fungsi pada Library C++.</em></p><p><em>Mendukung Manifest dan Inferred Typing. Fitur tersebut sudah ada semenjak kelahiran C++ pertama hingga C++ Modern saat ini, C ++ memungkinkan fleksibilitas dan juga menyediakan kesederhanaan dalam menulis program.</em></p><p><em>C++ Menawarkan banyak pilihan paradigma. Beberapa adalah paradigm yang sangat terkenal dalam C++ adalah menawarkan dukungan luar biasa untuk Pemrograman Prosedural, Generik, Berorientasi Objek (OOP) dan masih banyak paradigm yang memberikan kemudahan untuk programmer C++.</em></p><p><em>Memiliki dukungan Library yang luar biasa. C++ memiliki Standar Library C++ yang memiliki banyak sekali fungsi dan tidak hanya itu, banyak juga programmer lain yang mengembangkan C++ dan membuat Library tambahan yang sangat berguna.</em></p><p><em>Bahasa yang dikompilasi. C ++ mengkompilasi langsung ke bahasa mesin, yang menjadikanya menjadi salah satu bahasa pemrograman tercepat di dunia.</em></p><p><em>Sekali lagi menawarkan Fleksibilitas dalam mendukung kedua statis dan dinamis type checking. C++ memungkinkan tipe conversions untuk diperiksa disaat mengkompilasi program atau saat jalanya program (run-time).</em></p><p><em>C++ merupakan bahasa turunan dari bahasa pemrograman C, dan C++ dapat menggunakan dan mempunyai semua fasilitas yang ada dalam bahasa pemrograman C tanpa perubahan sedikitpun dalam fungsi-fungsi C. dan juga C++ dapat melakukan pemrograman Assembly langsung di dalam program yang merupakan fitur turunan dari C.</em></p><p></p>'),
(216, 216, 1, 'Course c mediumbanner', '2019-11-23 04:12:22', '2019-11-23 04:12:22', '9a744d29-7ea6-46d0-8e93-2d405c3d8448', NULL),
(217, 217, 1, 'Macam Macam File Header Pada C++', '2019-11-23 04:13:01', '2019-11-23 08:50:42', '707b70e0-23e9-414d-8fec-fc750d05beec', '<p>Bahasa pemrograman memiliki cara yang tersendiri untuk mendapatkan akses memori. Dalam bahasa C maupun C++ membutuhkan suatu file yang digunakan untuk mengakses hal tersebut yaitu File Header. File Header adalah file yang berisi deklarasi untuk berbagai fungsi yang dibutuhkan oleh program baik itu sebagai standar Input/Output maupun sebagai syntax.</p><p>        Fungsi File Header antara kain sebagai berikut : </p><p><strong><em>Untuk manajement memori</em></strong></p><p><strong><em>Untuk memanggil routines ROM BIOs</em></strong></p><p><strong><em>Untuk fungsi matematika komplek</em></strong></p><p><strong><em> Untuk memanggil console DOS Input Output</em></strong></p><p><strong><em> Untuk routing basic di C++</em></strong></p><p><strong><em> Untuk beberapa fungsi rutin (Seperti konversi)</em></strong></p><p><strong><em> Untuk Menguakkan manipulator</em></strong></p><p><strong><em> Untuk operasi string dan karakter</em></strong></p><p></p><p><em><strong></strong></em>   Macam-macam File Header yang sering digunakan adalah sebagai berikut :<br /></p><h3><strong>iostream/iostream.h :</strong> </h3><p>Merupakan singkatan dari input outout stream header yang digunakan sebagai standar input output operasi yang digunakan oleh bahasa C++. Fungsi-fungsi yang ada didalam iostream.h antara lain sebagai berikut :</p><ul><li><strong>cout :</strong> merupakan fungsi keluaran pada C++ yang menampilkan data dengan tipe data apapun kelayar.</li></ul><ul><li><strong>cin : </strong>merupakan fungsi masukan pada C++  yang bisa memasukan data berupa numerik dan karakter.</li></ul><ul><li><strong>endl :</strong> merupakan suatu fungsi yang manipulator yang digunakan untuk melakukan perintah Newline atau pindah baris</li></ul><p></p><h3><strong>conio.h :</strong> </h3><p>Merupakan File Header yang berfungsi untuk menampilkan hasil antarmuka kepada pengguna. Fungsi -fungsi yang ada didalam conio.h antara lain sebagai berikut :</p><ul><li><strong>getch() :</strong> merupakan singkatan dari get character and echo yang digunakan untuk menahan (pause) output suatu program dan akan kembali mengeksekusi setelah kita melakukan inputan baik itu tombol enter atau tombol lainnya dan inputan tersebut tidak ditampilkan dalam window.</li></ul><ul><li><strong>getche() :</strong> secara fungsi sama dengan getch() akan tetapi ketika melakukan inputan, inputan tersebut tampil dalam window.</li></ul><ul><li><strong>clrscr() : </strong>merupakan singkatan dari clear screen yang digunakan untuk membersihkan layar windows .</li></ul><p></p><h3><strong>math.h  :</strong> </h3><p>Merupakan file header yang berfungsi untuk operasi matematika.Fungsi-fungsi yang ada di math.h antara lain sebagai berikut :</p><ul><li><strong>sqrt() : </strong>fungsi ini digunakan untuk menghitung akar dari suatu bilangan. Bentuk umum penulisannya  adalah sqrt(bilangan); .</li></ul><ul><li><strong>pow() :</strong> fungsi ini digunakan untuk menghitung hasil dari perpangkatan suatu bilangan . Bentuk umum penulisannya adalah pow(bilangan,pangkat); .</li></ul><ul><li><strong>sin(), cos(), tan() : </strong>fungsi ini digunakan untuk menghitung nilai sinus, cosinus, dan tangen dari sudut yang dimasukan. Bentuk umum penulisannya adalah sin(bilangan); .</li></ul><p></p>'),
(218, 218, 1, 'Macam Macam File Header Pada C++', '2019-11-23 04:13:01', '2019-11-23 04:13:01', 'ec8dfbb3-e1b0-4eb1-8397-a66c49d2f8eb', '<p>tes</p>'),
(220, 220, 1, 'Macam Macam File Header Pada C++', '2019-11-23 08:46:36', '2019-11-23 08:46:36', '6bb99315-ab85-40a4-9c31-5558751c669a', '<p>Bahasa pemrograman memiliki cara yang tersendiri untuk mendapatkan akses memori. Dalam bahasa C maupun C++ membutuhkan suatu file yang digunakan untuk mengakses hal tersebut yaitu File Header. File Header adalah file yang berisi deklarasi untuk berbagai fungsi yang dibutuhkan oleh program baik itu sebagai standar Input/Output maupun sebagai syntax.</p><p>        Fungsi File Header antara kain sebagai berikut : </p><p><strong><em>Untuk manajement memori</em></strong></p><p><strong><em>Untuk memanggil routines ROM BIOs</em></strong></p><p><strong><em>Untuk fungsi matematika komplek</em></strong></p><p><strong><em> Untuk memanggil console DOS Input Output</em></strong></p><p><strong><em> Untuk routing basic di C++</em></strong></p><p><strong><em> Untuk beberapa fungsi rutin (Seperti konversi)</em></strong></p><p><strong><em> Untuk Menguakkan manipulator</em></strong></p><p><strong><em> Untuk operasi string dan karakter</em></strong></p><p></p><p><em><strong></strong></em>   Macam-macam File Header yang sering digunakan adalah sebagai berikut :<br /></p><p><strong>iostream.h :</strong> Merupakan singkatan dari input outout stream header yang digunakan sebagai standar input output operasi yang digunakan oleh bahasa C++. Fungsi-fungsi yang ada didalam iostream.h antara lain sebagai berikut :</p><ul><li><strong>cout :</strong> merupakan fungsi keluaran pada C++ yang menampilkan data dengan tipe data apapun kelayar.</li></ul><ul><li><strong>cin : </strong>merupakan fungsi masukan pada C++  yang bisa memasukan data berupa numerik dan karakter.</li></ul><ul><li><strong>endl :</strong> merupakan suatu fungsi yang manipulator yang digunakan untuk melakukan perintah Newline atau pindah baris</li></ul><p></p><p><strong>conio.h :</strong> Merupakan File Header yang berfungsi untuk menampilkan hasil antarmuka kepada pengguna. Fungsi -fungsi yang ada didalam conio.h antara lain sebagai berikut :</p><ul><li><strong>getch() :</strong> merupakan singkatan dari get character and echo yang digunakan untuk menahan (pause) output suatu program dan akan kembali mengeksekusi setelah kita melakukan inputan baik itu tombol enter atau tombol lainnya dan inputan tersebut tidak ditampilkan dalam window.</li></ul><ul><li><strong>getche() :</strong> secara fungsi sama dengan getch() akan tetapi ketika melakukan inputan, inputan tersebut tampil dalam window.</li></ul><ul><li><strong>clrscr() : </strong>merupakan singkatan dari clear screen yang digunakan untuk membersihkan layar windows .</li></ul><p></p><p><strong>math.h  :</strong> Merupakan file header yang berfungsi untuk operasi matematika.Fungsi-fungsi yang ada di math.h antara lain sebagai berikut :</p><ul><li><strong>sqrt() : </strong>fungsi ini digunakan untuk menghitung akar dari suatu bilangan. Bentuk umum penulisannya  adalah sqrt(bilangan); .</li></ul><ul><li><strong>pow() :</strong> fungsi ini digunakan untuk menghitung hasil dari perpangkatan suatu bilangan . Bentuk umum penulisannya adalah pow(bilangan,pangkat); .</li></ul><ul><li><strong>sin(), cos(), tan() : </strong>fungsi ini digunakan untuk menghitung nilai sinus, cosinus, dan tangen dari sudut yang dimasukan. Bentuk umum penulisannya adalah sin(bilangan); .</li></ul><p><br /></p>'),
(222, 222, 1, 'Macam Macam File Header Pada C++', '2019-11-23 08:49:56', '2019-11-23 08:49:56', '8b1c3efb-7b3b-40a4-8748-ba02d0fc4bba', '<p>Bahasa pemrograman memiliki cara yang tersendiri untuk mendapatkan akses memori. Dalam bahasa C maupun C++ membutuhkan suatu file yang digunakan untuk mengakses hal tersebut yaitu File Header. File Header adalah file yang berisi deklarasi untuk berbagai fungsi yang dibutuhkan oleh program baik itu sebagai standar Input/Output maupun sebagai syntax.</p><p>        Fungsi File Header antara kain sebagai berikut : </p><p><strong><em>Untuk manajement memori</em></strong></p><p><strong><em>Untuk memanggil routines ROM BIOs</em></strong></p><p><strong><em>Untuk fungsi matematika komplek</em></strong></p><p><strong><em> Untuk memanggil console DOS Input Output</em></strong></p><p><strong><em> Untuk routing basic di C++</em></strong></p><p><strong><em> Untuk beberapa fungsi rutin (Seperti konversi)</em></strong></p><p><strong><em> Untuk Menguakkan manipulator</em></strong></p><p><strong><em> Untuk operasi string dan karakter</em></strong></p><p></p><p><em><strong></strong></em>   Macam-macam File Header yang sering digunakan adalah sebagai berikut :<br /></p><h3><strong>iostream/iostream.h :</strong> </h3><p>Merupakan singkatan dari input outout stream header yang digunakan sebagai standar input output operasi yang digunakan oleh bahasa C++. Fungsi-fungsi yang ada didalam iostream.h antara lain sebagai berikut :</p><ul><li><strong>cout :</strong> merupakan fungsi keluaran pada C++ yang menampilkan data dengan tipe data apapun kelayar.</li></ul><ul><li><strong>cin : </strong>merupakan fungsi masukan pada C++  yang bisa memasukan data berupa numerik dan karakter.</li></ul><ul><li><strong>endl :</strong> merupakan suatu fungsi yang manipulator yang digunakan untuk melakukan perintah Newline atau pindah baris</li></ul><p></p><h3><strong>conio.h :</strong> </h3><p>Merupakan File Header yang berfungsi untuk menampilkan hasil antarmuka kepada pengguna. Fungsi -fungsi yang ada didalam conio.h antara lain sebagai berikut :</p><ul><li><strong>getch() :</strong> merupakan singkatan dari get character and echo yang digunakan untuk menahan (pause) output suatu program dan akan kembali mengeksekusi setelah kita melakukan inputan baik itu tombol enter atau tombol lainnya dan inputan tersebut tidak ditampilkan dalam window.</li></ul><ul><li><strong>getche() :</strong> secara fungsi sama dengan getch() akan tetapi ketika melakukan inputan, inputan tersebut tampil dalam window.</li></ul><ul><li><strong>clrscr() : </strong>merupakan singkatan dari clear screen yang digunakan untuk membersihkan layar windows .</li></ul><p></p><h3><strong>math.h  :</strong> </h3><p>Merupakan file header yang berfungsi untuk operasi matematika.Fungsi-fungsi yang ada di math.h antara lain sebagai berikut :</p><ul><li><strong>sqrt() : </strong>fungsi ini digunakan untuk menghitung akar dari suatu bilangan. Bentuk umum penulisannya  adalah sqrt(bilangan); .</li></ul><ul><li><strong>pow() :</strong> fungsi ini digunakan untuk menghitung hasil dari perpangkatan suatu bilangan . Bentuk umum penulisannya adalah pow(bilangan,pangkat); .</li></ul><ul><li><strong>sin(), cos(), tan() : </strong>fungsi ini digunakan untuk menghitung nilai sinus, cosinus, dan tangen dari sudut yang dimasukan. Bentuk umum penulisannya adalah sin(bilangan); .</li></ul><p></p>');
INSERT INTO `my_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_contentText`) VALUES
(224, 224, 1, 'Macam Macam File Header Pada C++', '2019-11-23 08:50:19', '2019-11-23 08:50:19', '560e84f0-9ec1-48be-86b3-5ec90358b1a9', '<p>Bahasa pemrograman memiliki cara yang tersendiri untuk mendapatkan akses memori. Dalam bahasa C maupun C++ membutuhkan suatu file yang digunakan untuk mengakses hal tersebut yaitu File Header. File Header adalah file yang berisi deklarasi untuk berbagai fungsi yang dibutuhkan oleh program baik itu sebagai standar Input/Output maupun sebagai syntax.</p><p>        Fungsi File Header antara kain sebagai berikut : </p><p><strong><em>Untuk manajement memori</em></strong></p><p><strong><em>Untuk memanggil routines ROM BIOs</em></strong></p><p><strong><em>Untuk fungsi matematika komplek</em></strong></p><p><strong><em> Untuk memanggil console DOS Input Output</em></strong></p><p><strong><em> Untuk routing basic di C++</em></strong></p><p><strong><em> Untuk beberapa fungsi rutin (Seperti konversi)</em></strong></p><p><strong><em> Untuk Menguakkan manipulator</em></strong></p><p><strong><em> Untuk operasi string dan karakter</em></strong></p><p></p><p><em><strong></strong></em>   Macam-macam File Header yang sering digunakan adalah sebagai berikut :<br /></p><h3><strong>iostream/iostream.h :</strong> </h3><p>Merupakan singkatan dari input outout stream header yang digunakan sebagai standar input output operasi yang digunakan oleh bahasa C++. Fungsi-fungsi yang ada didalam iostream.h antara lain sebagai berikut :</p><ul><li><strong>cout :</strong> merupakan fungsi keluaran pada C++ yang menampilkan data dengan tipe data apapun kelayar.</li></ul><ul><li><strong>cin : </strong>merupakan fungsi masukan pada C++  yang bisa memasukan data berupa numerik dan karakter.</li></ul><ul><li><strong>endl :</strong> merupakan suatu fungsi yang manipulator yang digunakan untuk melakukan perintah Newline atau pindah baris</li></ul><p></p><h3><strong>conio.h :</strong> </h3><p>Merupakan File Header yang berfungsi untuk menampilkan hasil antarmuka kepada pengguna. Fungsi -fungsi yang ada didalam conio.h antara lain sebagai berikut :</p><ul><li><strong>getch() :</strong> merupakan singkatan dari get character and echo yang digunakan untuk menahan (pause) output suatu program dan akan kembali mengeksekusi setelah kita melakukan inputan baik itu tombol enter atau tombol lainnya dan inputan tersebut tidak ditampilkan dalam window.</li></ul><ul><li><strong>getche() :</strong> secara fungsi sama dengan getch() akan tetapi ketika melakukan inputan, inputan tersebut tampil dalam window.</li></ul><ul><li><strong>clrscr() : </strong>merupakan singkatan dari clear screen yang digunakan untuk membersihkan layar windows .</li></ul><p></p><h3><strong>math.h  :</strong> </h3><p>Merupakan file header yang berfungsi untuk operasi matematika.Fungsi-fungsi yang ada di math.h antara lain sebagai berikut :</p><ul><li><strong>sqrt() : </strong>fungsi ini digunakan untuk menghitung akar dari suatu bilangan. Bentuk umum penulisannya  adalah sqrt(bilangan); .</li></ul><ul><li><strong>pow() :</strong> fungsi ini digunakan untuk menghitung hasil dari perpangkatan suatu bilangan . Bentuk umum penulisannya adalah pow(bilangan,pangkat); .</li></ul><ul><li><strong>sin(), cos(), tan() : </strong>fungsi ini digunakan untuk menghitung nilai sinus, cosinus, dan tangen dari sudut yang dimasukan. Bentuk umum penulisannya adalah sin(bilangan); .</li></ul><p></p>'),
(225, 225, 1, 'Macam Macam File Header Pada C++', '2019-11-23 08:50:42', '2019-11-23 08:50:42', 'd024c1ad-6662-4cab-b4ea-3d15c09dc5fb', '<p>Bahasa pemrograman memiliki cara yang tersendiri untuk mendapatkan akses memori. Dalam bahasa C maupun C++ membutuhkan suatu file yang digunakan untuk mengakses hal tersebut yaitu File Header. File Header adalah file yang berisi deklarasi untuk berbagai fungsi yang dibutuhkan oleh program baik itu sebagai standar Input/Output maupun sebagai syntax.</p><p>        Fungsi File Header antara kain sebagai berikut : </p><p><strong><em>Untuk manajement memori</em></strong></p><p><strong><em>Untuk memanggil routines ROM BIOs</em></strong></p><p><strong><em>Untuk fungsi matematika komplek</em></strong></p><p><strong><em> Untuk memanggil console DOS Input Output</em></strong></p><p><strong><em> Untuk routing basic di C++</em></strong></p><p><strong><em> Untuk beberapa fungsi rutin (Seperti konversi)</em></strong></p><p><strong><em> Untuk Menguakkan manipulator</em></strong></p><p><strong><em> Untuk operasi string dan karakter</em></strong></p><p></p><p><em><strong></strong></em>   Macam-macam File Header yang sering digunakan adalah sebagai berikut :<br /></p><h3><strong>iostream/iostream.h :</strong> </h3><p>Merupakan singkatan dari input outout stream header yang digunakan sebagai standar input output operasi yang digunakan oleh bahasa C++. Fungsi-fungsi yang ada didalam iostream.h antara lain sebagai berikut :</p><ul><li><strong>cout :</strong> merupakan fungsi keluaran pada C++ yang menampilkan data dengan tipe data apapun kelayar.</li></ul><ul><li><strong>cin : </strong>merupakan fungsi masukan pada C++  yang bisa memasukan data berupa numerik dan karakter.</li></ul><ul><li><strong>endl :</strong> merupakan suatu fungsi yang manipulator yang digunakan untuk melakukan perintah Newline atau pindah baris</li></ul><p></p><h3><strong>conio.h :</strong> </h3><p>Merupakan File Header yang berfungsi untuk menampilkan hasil antarmuka kepada pengguna. Fungsi -fungsi yang ada didalam conio.h antara lain sebagai berikut :</p><ul><li><strong>getch() :</strong> merupakan singkatan dari get character and echo yang digunakan untuk menahan (pause) output suatu program dan akan kembali mengeksekusi setelah kita melakukan inputan baik itu tombol enter atau tombol lainnya dan inputan tersebut tidak ditampilkan dalam window.</li></ul><ul><li><strong>getche() :</strong> secara fungsi sama dengan getch() akan tetapi ketika melakukan inputan, inputan tersebut tampil dalam window.</li></ul><ul><li><strong>clrscr() : </strong>merupakan singkatan dari clear screen yang digunakan untuk membersihkan layar windows .</li></ul><p></p><h3><strong>math.h  :</strong> </h3><p>Merupakan file header yang berfungsi untuk operasi matematika.Fungsi-fungsi yang ada di math.h antara lain sebagai berikut :</p><ul><li><strong>sqrt() : </strong>fungsi ini digunakan untuk menghitung akar dari suatu bilangan. Bentuk umum penulisannya  adalah sqrt(bilangan); .</li></ul><ul><li><strong>pow() :</strong> fungsi ini digunakan untuk menghitung hasil dari perpangkatan suatu bilangan . Bentuk umum penulisannya adalah pow(bilangan,pangkat); .</li></ul><ul><li><strong>sin(), cos(), tan() : </strong>fungsi ini digunakan untuk menghitung nilai sinus, cosinus, dan tangen dari sudut yang dimasukan. Bentuk umum penulisannya adalah sin(bilangan); .</li></ul><p></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_craftidtokens`
--

CREATE TABLE `my_craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_deprecationerrors`
--

CREATE TABLE `my_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_deprecationerrors`
--

INSERT INTO `my_deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(30, 'ElementQuery::getIterator()', 'C:\\laragon\\www\\fakhri-craft\\templates\\_include\\sidebar.twig:6', '2019-12-05 08:08:54', 'C:\\laragon\\www\\fakhri-craft\\templates\\_include\\sidebar.twig', 6, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e7\\\\e7d3b43dd107730e8d690719707a9e863571045d21d6cb6c38fe9ea59f949cec.php\",\"line\":49,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_09d77f1f3b165d141c692568146265840f83d75c29d4e8e9da4c1940a880f1c4\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_09d77f1f3b165d141c692568146265840f83d75c29d4e8e9da4c1940a880f1c4\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_09d77f1f3b165d141c692568146265840f83d75c29d4e8e9da4c1940a880f1c4\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_09d77f1f3b165d141c692568146265840f83d75c29d4e8e9da4c1940a880f1c4\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\7f\\\\7f62508660f465b700bc35c9a4489d774f90107b0ed7abe780c0a653d3a0d39f.php\",\"line\":193,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...]\"},{\"objectClass\":\"__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20\",\"method\":\"block_content\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4b58fb074bf7bd78091c48b9cadf726953ba91d005370c906f4bf0c69b3e5fe6\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\e3\\\\e301ad35fd84d444e0934081075fad34c465a61fe64a0e4390ba74df5d12a7c6.php\",\"line\":78,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4b58fb074bf7bd78091c48b9cadf726953ba91d005370c906f4bf0c69b3e5fe6\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4b58fb074bf7bd78091c48b9cadf726953ba91d005370c906f4bf0c69b3e5fe6\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4b58fb074bf7bd78091c48b9cadf726953ba91d005370c906f4bf0c69b3e5fe6\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4b58fb074bf7bd78091c48b9cadf726953ba91d005370c906f4bf0c69b3e5fe6\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\storage\\\\runtime\\\\compiled_templates\\\\7f\\\\7f62508660f465b700bc35c9a4489d774f90107b0ed7abe780c0a653d3a0d39f.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_86ce1bc5c9e570e2c8ee210a4e3c63b34d215f7cb04751718e9df30cdfdc2c20\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\fakhri-craft\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2019-12-05 08:08:54', '2019-12-05 08:08:54', '512c53df-721f-4668-9598-9bf3771a76e7'),
(31, 'ElementQuery::getIterator()', 'C:\\laragon\\www\\lhanyu\\templates\\index.twig:12', '2019-12-02 06:21:38', 'C:\\laragon\\www\\lhanyu\\templates\\index.twig', 12, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2e8177d8d69d46001f186ccbc29f2e76a79b737744ea0b72044dfa5f21ab2862.php\",\"line\":75,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":184,\"class\":\"__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7\",\"method\":\"block_content\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_305d84449202480c6f163d763f1434d7512e93d08ae705a1d879ee21aff28969\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\storage\\\\runtime\\\\compiled_templates\\\\75\\\\7566b37df5ed626441490537b18a00372a3884ac49b41c11ac8802aa52072e6f.php\",\"line\":122,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_305d84449202480c6f163d763f1434d7512e93d08ae705a1d879ee21aff28969\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_305d84449202480c6f163d763f1434d7512e93d08ae705a1d879ee21aff28969\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_305d84449202480c6f163d763f1434d7512e93d08ae705a1d879ee21aff28969\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_305d84449202480c6f163d763f1434d7512e93d08ae705a1d879ee21aff28969\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\storage\\\\runtime\\\\compiled_templates\\\\2e\\\\2e8177d8d69d46001f186ccbc29f2e76a79b737744ea0b72044dfa5f21ab2862.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":407,\"class\":\"__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_12a01ffa64d2e6b908dca770b38d810a2e91c38b782687173965af227c69fdd7\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\laragon\\\\www\\\\lhanyu\\\\web\\\\index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2019-12-02 06:21:38', '2019-12-02 06:21:38', '4cb0ff00-1b3f-4928-8751-fc78f2e31dab');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_drafts`
--

CREATE TABLE `my_drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_drafts`
--

INSERT INTO `my_drafts` (`id`, `sourceId`, `creatorId`, `name`, `notes`) VALUES
(1, NULL, 1, 'First draft', ''),
(5, NULL, 1, 'First draft', ''),
(6, NULL, 1, 'First draft', NULL),
(7, NULL, 1, 'First draft', ''),
(8, NULL, 1, 'First draft', ''),
(9, NULL, 1, 'First draft', ''),
(10, 5, 1, 'Draft 1', NULL),
(11, NULL, 1, 'First draft', NULL),
(12, 29, 1, 'Draft 1', ''),
(16, NULL, 1, 'First draft', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_elementindexsettings`
--

CREATE TABLE `my_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_elementindexsettings`
--

INSERT INTO `my_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '{\"sources\":{\"section:7544784e-94b5-49bd-a8e8-5d36a1ac403d\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"link\",\"3\":\"section\",\"4\":\"type\"}}}}', '2019-11-10 05:46:08', '2019-11-10 05:46:08', '57968ce8-718d-410e-8ad0-1f520abbefb8'),
(2, 'craft\\elements\\Category', '{\"sources\":{\"group:70d87268-d75d-4e59-9dba-5deeeb3932ff\":{\"tableAttributes\":{\"1\":\"link\",\"2\":\"uri\"}}}}', '2019-11-18 08:29:33', '2019-11-18 08:29:33', 'fa67d3f5-3a7a-42bc-8bf0-6b6abbceff8d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_elements`
--

CREATE TABLE `my_elements` (
  `id` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_elements`
--

INSERT INTO `my_elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2019-11-06 13:43:05', '2019-11-06 13:43:05', NULL, 'e8f94db8-457c-4a2b-98f8-e1428b886764'),
(2, NULL, NULL, NULL, 'craft\\elements\\Category', 1, 0, '2019-11-10 03:47:58', '2019-11-10 03:47:58', '2019-11-17 14:50:02', '95a673a0-7866-4bed-83d7-8dd1d5f0c009'),
(3, 1, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-10 05:40:20', '2019-11-10 05:40:59', NULL, '135fc605-f308-4ba2-ba5b-54bc893da641'),
(5, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-10 05:43:02', '2019-11-12 11:46:36', NULL, 'd61cb1c6-436b-428c-a8b0-35c3d2e00872'),
(6, NULL, 1, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-10 05:43:02', '2019-11-10 05:43:02', NULL, '2659b613-f918-4bc2-a9b4-86ad6462c61e'),
(7, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-10 05:56:08', '2019-11-10 05:56:08', NULL, 'f76f23f6-ec5f-4032-939f-dcc6b8f40fee'),
(8, NULL, 2, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-10 05:57:07', '2019-11-10 05:57:07', NULL, '78765eeb-48ac-4844-a2f8-962a876a9e7b'),
(9, NULL, 3, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-10 05:58:18', '2019-11-10 05:58:18', NULL, '363c2fb8-6839-41c4-87ca-07f5e100af83'),
(11, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-10 05:59:00', '2019-11-10 05:59:00', '2019-11-10 06:10:49', 'fdb30dd3-d032-400f-b2fd-36bf48316ed6'),
(12, NULL, 4, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-10 05:59:00', '2019-11-10 05:59:00', '2019-11-10 06:10:49', '9a590575-e98e-425a-94b6-a39d1d401618'),
(14, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2019-11-10 06:32:31', '2019-11-10 10:13:21', '2019-11-12 03:03:40', '3a2e084f-cf53-4898-a275-8f7c3eb7d73c'),
(15, NULL, 5, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-10 06:32:31', '2019-11-10 06:32:31', '2019-11-12 03:03:40', '3fa427b1-7d9b-460b-8c63-95a0833c52cf'),
(16, NULL, 6, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-10 06:34:43', '2019-11-10 06:34:43', NULL, '2e05e67b-2b77-49fb-94c2-7434d6b510fa'),
(17, NULL, 7, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-10 06:45:35', '2019-11-10 06:45:35', NULL, 'c3c98837-ab97-4056-ab4b-b22219c0b14b'),
(18, NULL, 8, 5, 'craft\\elements\\Entry', 1, 0, '2019-11-10 10:13:21', '2019-11-10 10:13:21', '2019-11-12 03:03:40', '67c4b5f6-ce6c-40ca-817e-79da76111138'),
(19, 5, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-10 10:16:53', '2019-11-10 10:17:38', NULL, '0f7afa08-7a67-40fb-90e1-e6cf6f290d38'),
(20, 6, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-11 02:23:56', '2019-11-11 02:23:56', NULL, 'd7dc9340-cd01-4d59-9341-e8dead7d98ff'),
(21, 7, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-11 02:43:26', '2019-11-11 03:04:39', NULL, '0e9b2097-509a-45dd-a880-5edc0776803b'),
(22, 8, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-11 07:26:31', '2019-11-11 07:30:26', NULL, 'e90fa688-a21d-4cb3-b557-a1a568280c0d'),
(23, 9, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-11 07:34:20', '2019-11-11 08:00:05', NULL, 'e074d70a-73c0-4801-b7ee-272a53b5b3a4'),
(24, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-11 07:35:30', '2019-11-11 07:35:30', NULL, 'e02932dd-7a9b-47da-871c-a4f8052c17d5'),
(25, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-11 07:50:52', '2019-11-11 07:50:52', NULL, '9c2a0d26-e1ea-4978-9299-e96da4b5cf0b'),
(26, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-11 07:54:06', '2019-11-11 07:54:06', NULL, '5fc459c0-4a60-4d2a-a688-262f8dc9f1d8'),
(28, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-11 08:18:30', '2019-11-11 08:18:30', NULL, '6c892845-55ba-4c50-8ed0-de9b8786d81e'),
(29, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-11 08:25:33', '2019-11-20 02:41:38', NULL, '4085eab9-0962-4247-b5c3-e6df971e8bd3'),
(30, NULL, 9, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-11 08:25:32', '2019-11-11 08:25:32', NULL, '87a0421b-2247-44cf-b5cb-8015b167db95'),
(31, NULL, 10, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-11 08:28:07', '2019-11-11 08:28:07', NULL, '75371799-0897-4af4-b1c8-5cb282829220'),
(32, NULL, 11, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-11 08:32:14', '2019-11-11 08:32:14', NULL, 'b1507fcb-6a1e-4aad-b834-c8844d679d27'),
(33, 10, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-12 08:18:23', '2019-11-12 08:18:24', NULL, 'b73756e0-f0da-441e-ba9e-1f2e99654df7'),
(34, NULL, 12, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-12 08:54:50', '2019-11-12 08:54:50', NULL, '8c938521-58a9-4bb5-9303-e9041563a84d'),
(35, NULL, 13, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-12 08:56:19', '2019-11-12 08:56:19', NULL, 'd020f1d2-f018-4907-bcb6-8443d0c96402'),
(36, NULL, 14, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-12 08:57:23', '2019-11-12 08:57:23', NULL, '6ca879e2-8adf-42ce-8d1c-2be1caf920f8'),
(37, NULL, 15, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-12 08:58:05', '2019-11-12 08:58:05', NULL, 'cbb0b734-e545-4697-8f50-ed7565796de6'),
(38, NULL, 16, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-12 08:59:38', '2019-11-12 08:59:38', NULL, '967d44e0-073d-4c8c-acdb-8cdc586f4994'),
(39, NULL, 17, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-12 09:11:11', '2019-11-12 09:11:11', NULL, 'cbcdcca6-a11e-4eb4-8885-56c630d728ff'),
(40, 11, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-12 11:26:18', '2019-11-12 11:26:18', NULL, 'd1886e13-0454-4229-848a-99cbf0cc541c'),
(41, NULL, 18, 4, 'craft\\elements\\Entry', 1, 0, '2019-11-12 11:46:36', '2019-11-12 11:46:36', NULL, 'c0f6bfb4-cc5a-486e-a964-92830053dba7'),
(42, 12, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 03:25:14', '2019-11-13 03:27:16', NULL, '6f3779c6-ccab-4705-bbfc-9f2e79e28f6b'),
(43, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-13 08:40:04', '2019-11-13 08:40:04', NULL, '2597d7df-3eab-4e3f-a576-9d85caf72abf'),
(44, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-13 08:45:00', '2019-11-13 08:45:00', NULL, '8cf89f93-5497-4c12-aac3-01fafb5bd59e'),
(45, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-13 08:46:16', '2019-11-13 08:46:16', NULL, 'fdc17cbf-4a31-46c9-8eac-3dfb13e5e25f'),
(46, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-13 08:47:06', '2019-11-13 08:47:06', NULL, '722a5a0e-13ba-4132-81ae-c95217c4ad2b'),
(47, NULL, 19, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 08:54:11', '2019-11-13 08:54:11', NULL, 'e904c93d-799b-49b1-aab7-b5be48971f82'),
(48, NULL, 20, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 08:59:29', '2019-11-13 08:59:29', NULL, '95ffcbdd-0eaa-44d8-bac5-ea3000994fdd'),
(49, NULL, 21, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 09:00:31', '2019-11-13 09:00:31', NULL, '6eee704c-f4f8-4c5b-a7c0-671a44c77e73'),
(50, NULL, 22, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 09:01:02', '2019-11-13 09:01:02', NULL, 'ec3df005-b749-40e3-abdc-acfc0ba06bde'),
(51, NULL, 23, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 09:01:42', '2019-11-13 09:01:42', NULL, '1ed10104-26ee-4744-83c4-869e786f56df'),
(52, NULL, 24, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 09:03:57', '2019-11-13 09:03:57', NULL, 'b1ca5a20-8a20-4b39-b075-37f1a3a3f403'),
(53, NULL, 25, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 09:04:49', '2019-11-13 09:04:49', NULL, '233e8207-8386-41eb-9690-3c564ad20200'),
(54, NULL, 26, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 09:09:06', '2019-11-13 09:09:06', NULL, '8a9f1324-95d8-418d-aef2-4fab8e1f880c'),
(55, NULL, 27, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 09:15:59', '2019-11-13 09:15:59', NULL, 'ee0fb5a3-9329-49f6-8b5f-37dd674d641b'),
(56, NULL, 28, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 09:17:39', '2019-11-13 09:17:39', NULL, '2927296e-ffe0-46e1-88e6-c372630fa2b9'),
(58, NULL, 29, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 12:49:19', '2019-11-13 12:49:19', NULL, '52944d76-3b45-49f6-bd38-c050336874a0'),
(59, NULL, 30, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 12:49:31', '2019-11-13 12:49:31', NULL, '092ffbf9-efe3-4063-be18-baad04a17248'),
(60, NULL, 31, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 12:55:57', '2019-11-13 12:55:57', NULL, '96082062-e543-482e-8ee3-ebab9489a626'),
(61, NULL, 32, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 12:56:04', '2019-11-13 12:56:04', NULL, '2d3f4fb5-9e13-4e7e-9cf6-ae4aab26e9e2'),
(62, NULL, 33, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-13 13:02:56', '2019-11-13 13:02:56', NULL, '922495ea-a3cc-4d94-9f83-561580678374'),
(63, NULL, 34, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 03:54:55', '2019-11-14 03:54:55', NULL, '10ce01a5-11f1-400e-b591-d6782b7a8a10'),
(64, NULL, 35, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 03:56:23', '2019-11-14 03:56:23', NULL, '405c90a1-1800-4a53-8bbf-87fd490833da'),
(65, NULL, 36, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 03:58:54', '2019-11-14 03:58:54', NULL, '6f9741c9-ee61-401b-8d74-9a4dd398c9bb'),
(67, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-14 04:17:50', '2019-11-14 04:17:50', NULL, '4c46bfcd-e71e-4eba-b217-ec8a2d238222'),
(68, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 04:18:21', '2019-11-20 02:43:26', NULL, '8d5b1495-bd25-4c46-b936-7ef1d94d0442'),
(69, NULL, 37, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 04:18:21', '2019-11-14 04:18:21', NULL, '99b4892e-a559-4352-860d-5a8ff027a879'),
(70, NULL, 38, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 08:31:02', '2019-11-14 08:31:02', NULL, '7e505db8-deae-4007-a6dd-9206d80ccf05'),
(71, NULL, 39, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 08:34:12', '2019-11-14 08:34:12', NULL, '85eea289-eace-4343-97ce-16152ecc3a69'),
(73, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-14 08:45:16', '2019-11-14 08:45:16', NULL, '06707839-ceb6-4d2a-8260-86b2a865b752'),
(74, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 08:52:35', '2019-11-20 02:37:46', NULL, 'fc55008a-8d2a-48b9-8b57-5bea5b6bf36e'),
(75, NULL, 40, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 08:52:34', '2019-11-14 08:52:34', NULL, 'f07b5e8f-8b81-4590-b511-da05efbbcc81'),
(76, NULL, 41, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 11:48:43', '2019-11-14 11:48:43', NULL, 'c88ff614-d9f5-4822-bf2a-993a49b78978'),
(77, NULL, 42, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 12:27:48', '2019-11-14 12:27:48', NULL, 'bd0fc63b-7efe-49ce-b2cc-374fb918ffb7'),
(78, NULL, 43, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-14 12:33:30', '2019-11-14 12:33:30', NULL, 'dbe321f8-ce52-450e-8535-4ae219af9941'),
(79, NULL, NULL, NULL, 'craft\\elements\\Category', 1, 0, '2019-11-17 14:50:57', '2019-11-17 14:50:57', NULL, '2bc00aaf-4895-4b75-a5b5-b8e7264adde0'),
(80, NULL, NULL, NULL, 'craft\\elements\\Category', 1, 0, '2019-11-17 14:51:24', '2019-11-17 14:51:24', NULL, '0d5e92c0-07c7-46e6-a834-80bd05d8b2f6'),
(81, NULL, NULL, NULL, 'craft\\elements\\Category', 1, 0, '2019-11-17 14:51:38', '2019-11-17 14:51:38', NULL, '62cc7698-a9cc-45c3-93f0-321bf0fa6304'),
(82, NULL, 44, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:02:10', '2019-11-17 15:02:10', NULL, '91bc6ceb-850f-4b06-afb4-837afe3e37e6'),
(83, NULL, 45, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:11:18', '2019-11-17 15:11:18', NULL, 'b50004c5-8cee-4d72-a66e-a489c805c402'),
(85, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-17 15:18:47', '2019-11-17 15:18:47', NULL, '64e106a1-1d2d-4a86-bbaf-8139d556e081'),
(86, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-17 15:25:27', '2019-11-17 15:25:27', NULL, '3282956f-95f9-499d-b0c2-b5e6eebaa03b'),
(87, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-17 15:26:04', '2019-11-17 15:26:04', NULL, '649c9bc0-aedc-43de-b66a-7cf3a1702fbe'),
(88, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-17 15:26:26', '2019-11-17 15:26:26', NULL, 'a455bf9a-43e5-4423-9f1f-2f08c3de41e3'),
(89, NULL, 46, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:26:39', '2019-11-17 15:26:39', NULL, 'f137183b-02c5-4adf-8e17-91dae8390874'),
(90, NULL, 47, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:26:52', '2019-11-17 15:26:52', NULL, 'c8597274-ce0c-4dc1-bb15-472d5dabdb1b'),
(91, NULL, 48, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:27:36', '2019-11-17 15:27:36', NULL, 'b95d509b-f061-4ede-9b66-c0873f9494ce'),
(92, NULL, 49, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:27:57', '2019-11-17 15:27:57', NULL, '80325380-4bc3-41f2-b9bb-eb73790afeb3'),
(93, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-18 04:37:07', '2019-11-17 15:02:10', '2019-11-18 06:40:37', '8dc3ac9c-558b-47ef-8940-4157029fcbb3'),
(94, NULL, 50, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:02:10', '2019-11-17 15:02:10', '2019-11-18 06:40:37', '0dbce406-2c55-4579-a5e1-522dfc6de01b'),
(95, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-18 04:37:09', '2019-11-17 15:27:57', '2019-11-18 06:40:37', '4161f38d-5fc3-4b56-aa5b-49d8bdf5b295'),
(96, NULL, 51, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:27:57', '2019-11-17 15:27:57', '2019-11-18 06:40:37', '4b687192-a5c9-429e-a1fe-ae2291fda77b'),
(97, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-18 04:37:10', '2019-11-17 15:27:36', '2019-11-18 06:40:37', 'a789b837-4f02-473f-8678-f66011160660'),
(98, NULL, 52, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:27:36', '2019-11-17 15:27:36', '2019-11-18 06:40:37', '452b6130-846a-47cd-b8f0-74d5ca81ccd7'),
(99, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-18 04:37:18', '2019-11-17 15:02:10', '2019-11-18 06:40:38', 'faa62dbd-e852-4072-b4ce-20f23b46ef7f'),
(100, NULL, 53, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:02:10', '2019-11-17 15:02:10', '2019-11-18 06:40:38', '7db4c402-5ba4-44c7-85ab-4746ad8e74df'),
(101, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-18 04:37:18', '2019-11-17 15:27:57', '2019-11-18 06:40:38', 'c07734e1-d8c1-42c7-b285-e3272ccc811b'),
(102, NULL, 54, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:27:57', '2019-11-17 15:27:57', '2019-11-18 06:40:38', '4dcc3e18-23d9-4489-b9de-83495117c0d3'),
(103, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-18 04:37:19', '2019-11-17 15:27:36', '2019-11-18 06:40:38', 'e69b89bf-f534-4480-889c-d02c205fb515'),
(104, NULL, 55, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:27:36', '2019-11-17 15:27:36', '2019-11-18 06:40:38', 'c242e3e8-23b3-41c5-a4e7-0c41c32d47a4'),
(105, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-18 06:43:20', '2019-11-17 15:02:10', '2019-11-19 09:04:50', 'f4bdd6ad-4de6-4078-9427-8daf8b1c3067'),
(106, NULL, 56, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-17 15:02:10', '2019-11-17 15:02:10', '2019-11-19 09:04:50', 'c98a42dc-e321-456e-ba3f-96d2bb1b8143'),
(107, NULL, 57, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-19 10:17:35', '2019-11-19 10:17:35', NULL, 'a474ba8b-807d-4e7d-93c2-a01910ef0735'),
(109, NULL, 58, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-19 10:18:30', '2019-11-19 10:18:30', NULL, '6c135285-4367-4985-b2ed-6c4360dd0795'),
(110, NULL, 59, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-19 10:18:37', '2019-11-19 10:18:37', NULL, '3be124d2-5ce0-4b9d-b1d8-a3b93ae60db6'),
(111, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-19 10:24:56', '2019-11-19 10:24:56', NULL, 'c92f9c91-e0a2-4ea7-be20-230dc49770c6'),
(112, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-19 10:24:57', '2019-11-19 10:24:57', NULL, 'e41c14c5-9d97-4728-8199-45aa68552801'),
(113, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-19 10:24:59', '2019-11-19 10:24:59', NULL, '0db4f6df-5079-4c04-8242-8183b73afd18'),
(114, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-19 10:25:00', '2019-11-19 10:25:00', NULL, 'f41c2d64-298c-4b10-8130-24ad49dd8908'),
(115, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-19 10:25:03', '2019-11-19 10:25:03', NULL, 'e57a27d7-c28c-473a-b539-46f20b7925b8'),
(116, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-19 10:25:04', '2019-11-19 10:25:04', NULL, 'd5e8883a-b388-4b12-b719-cb17eb17e90d'),
(117, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-19 10:30:28', '2019-11-19 10:30:28', NULL, 'f2ae912b-851a-46ec-a562-b200cfc8f91b'),
(118, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-19 10:30:29', '2019-11-19 10:30:29', NULL, '1db8baa4-dd8c-45f1-b9dc-71c4c56af0cf'),
(120, NULL, 60, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-19 13:09:48', '2019-11-19 13:09:48', NULL, 'b44c5fcf-2622-4221-8ea3-416c713aabe2'),
(121, NULL, 61, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-19 13:20:34', '2019-11-19 13:20:34', NULL, '02afb1c8-ca14-432b-ae73-5c6ba7735aa9'),
(122, NULL, 62, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 02:30:10', '2019-11-20 02:30:10', NULL, 'ccf6e564-a394-4cc6-843d-f3d6c2e9242e'),
(124, NULL, 63, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 02:37:38', '2019-11-20 02:37:38', NULL, '7a050856-aaaa-4bf4-8d33-045b02709745'),
(125, NULL, 64, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 02:37:46', '2019-11-20 02:37:46', NULL, 'b653a8e9-863f-4fe8-aba4-b321f27273f6'),
(127, NULL, 65, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 02:40:31', '2019-11-20 02:40:31', NULL, 'e73523db-a4c1-404a-96f0-8508869ed055'),
(129, NULL, 66, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 02:41:33', '2019-11-20 02:41:33', NULL, 'cfdbfd7e-496d-4194-86ac-4e1e2b6ceb2d'),
(130, NULL, 67, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 02:41:38', '2019-11-20 02:41:38', NULL, '574cacec-bf04-4aa6-94bb-e1eacad4161e'),
(131, 16, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 02:42:03', '2019-11-20 02:42:03', NULL, 'af965161-37c7-4bfe-9e61-3cf1a5da124b'),
(132, NULL, 68, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 02:43:26', '2019-11-20 02:43:26', NULL, '10b121f9-2365-471c-9062-5e000d9f5a8a'),
(134, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:32:39', '2019-11-20 08:32:39', NULL, '7b7fd833-483c-4775-884c-62a99ecf0c56'),
(135, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 08:40:43', '2019-11-21 02:31:24', NULL, 'd2e8244d-eec8-49e3-ada3-bc6ddce926bd'),
(136, NULL, 69, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 08:40:42', '2019-11-20 08:40:42', NULL, '0cfc9181-99b1-4ec1-a2ce-01b659e27c19'),
(137, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:41:44', '2019-11-20 08:41:44', NULL, '7188547b-3f61-4747-86cb-e12d1bdc2279'),
(138, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:41:47', '2019-11-20 08:41:47', NULL, 'ed26f228-af56-48b1-815e-12bc8bf657df'),
(139, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:41:49', '2019-11-20 08:41:49', NULL, '3141cdb3-78a7-400a-b038-d0f5f94cea4b'),
(140, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:42:15', '2019-11-20 08:42:15', NULL, '7a2829da-f06e-420e-8999-960de52d5b08'),
(141, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:42:21', '2019-11-20 08:42:21', NULL, 'abb08f28-8c78-49be-ac2f-e7b9d24ee3a9'),
(142, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:43:25', '2019-11-20 08:43:25', NULL, '81714a48-80d7-49ab-89fc-11c827a0236e'),
(143, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:43:35', '2019-11-20 08:43:35', NULL, '51a1a794-21c2-4e98-adba-46ee04fd928d'),
(144, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:43:50', '2019-11-20 08:43:50', '2019-11-20 12:27:51', 'aa23a98b-570e-4202-af63-07baa170d9e1'),
(145, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:43:53', '2019-11-20 08:43:53', '2019-11-20 12:27:39', '1747c5e9-4a97-4afb-8870-718b6df711c4'),
(146, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:44:18', '2019-11-20 08:44:18', NULL, '628fa899-58b4-4e4e-b6c1-015a510e1579'),
(147, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:44:21', '2019-11-20 08:44:21', NULL, '7d8f9dfc-fdfb-4a1f-83f2-a0a212236b7c'),
(148, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 08:51:38', '2019-11-20 08:51:38', NULL, '4ffc4c0a-c404-4983-8fa3-ab1d1a95e63d'),
(150, NULL, 70, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 10:19:06', '2019-11-20 10:19:06', NULL, '70a2cbfc-49c7-4c5f-876d-fe1e70bb9f44'),
(151, NULL, 71, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 12:26:00', '2019-11-20 12:26:00', NULL, 'fb4b1724-2b75-4f2f-8a7b-84a923c475e5'),
(152, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-20 12:31:38', '2019-11-20 12:31:38', NULL, '67c735d0-9f9e-4757-a88a-662593341235'),
(154, NULL, 72, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 12:34:33', '2019-11-20 12:34:33', NULL, '3071792a-02c0-4afa-81de-e6fa47f52dad'),
(155, NULL, 73, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-20 12:52:07', '2019-11-20 12:52:07', NULL, '10fbd0b3-cf03-4ed5-a83d-4941ce8602d3'),
(156, NULL, 74, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 02:31:24', '2019-11-21 02:31:24', NULL, '3c251afc-ed90-4342-b96c-528271b2e6a8'),
(158, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 03:00:37', '2019-11-21 03:00:37', NULL, '89d5ff6b-ef30-4f3e-986f-1a62558d77f5'),
(159, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 03:06:30', '2019-11-21 08:16:02', NULL, '95136f67-0d78-4309-8afb-03813123db9f'),
(160, NULL, 75, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 03:06:30', '2019-11-21 03:06:30', NULL, '1f1812fe-a22a-467e-bb2a-4ca839ea4e1f'),
(162, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 03:31:24', '2019-11-21 03:31:24', NULL, 'bb7a3ff5-0dbd-4fd8-b11d-57c7b1e52cef'),
(163, NULL, 76, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 03:38:26', '2019-11-21 03:38:26', NULL, 'c32bbe85-079a-4736-9ba1-7229b59c7a14'),
(164, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 03:45:02', '2019-11-21 03:45:02', NULL, '67630668-4c83-409b-8097-9d21025bfecc'),
(165, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 04:08:40', '2019-11-21 04:08:40', NULL, '715c2939-1590-485d-b79d-91fdbf916334'),
(166, NULL, 77, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 04:08:48', '2019-11-21 04:08:48', NULL, '2c08abad-a974-4942-ba77-a8956763a515'),
(168, NULL, 78, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 08:10:08', '2019-11-21 08:10:08', NULL, 'aac8ea38-5258-4c6b-8364-d614c20d56f9'),
(169, NULL, 79, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 08:12:09', '2019-11-21 08:12:09', NULL, '62b4ce06-e14b-4319-8afb-dc2d0aca7f9c'),
(170, NULL, 80, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 08:12:43', '2019-11-21 08:12:43', NULL, 'a7e19cb5-080c-4dd1-ba61-90b5a8be1866'),
(171, NULL, 81, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 08:13:17', '2019-11-21 08:13:17', NULL, '25d06e9f-c562-4a19-bca3-8d2ab6f2b5f4'),
(172, NULL, 82, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 08:14:46', '2019-11-21 08:14:46', NULL, '5a340c36-6426-4ee4-9195-0d1436b21e70'),
(173, NULL, 83, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 08:15:14', '2019-11-21 08:15:14', NULL, '6f47cf4c-2594-4fb0-b22e-dd0ba784c72d'),
(174, NULL, 84, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 08:16:02', '2019-11-21 08:16:02', NULL, '1c049f90-32a7-4bdd-b784-8dc3c40117fa'),
(176, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 08:23:43', '2019-11-21 08:23:43', NULL, 'cc81d06b-300f-41fc-97b7-e5ac14e1f981'),
(177, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 09:15:13', '2019-11-21 10:24:51', NULL, '084d4649-83af-4e4c-87b1-e77300b9f1ac'),
(178, NULL, 85, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 09:15:11', '2019-11-21 09:15:11', NULL, 'faa60ef6-1215-4363-b265-7376b9b12a48'),
(179, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 09:33:22', '2019-11-21 09:33:22', '2019-11-21 09:56:00', '9ceabd0e-74ed-4a44-9fa4-552fc21138e4'),
(180, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 09:33:36', '2019-11-21 09:33:36', '2019-11-21 09:56:01', '12e44450-929c-4301-8e62-b86eb204f1e9'),
(181, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 09:34:33', '2019-11-21 09:34:33', '2019-11-21 09:56:01', '3c45a950-a09a-449f-8011-15687159a8b9'),
(182, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 09:34:47', '2019-11-21 09:34:47', '2019-11-21 09:56:01', 'a1a5ae48-3615-438e-a3c5-0b43dfcf368b'),
(183, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 09:35:37', '2019-11-21 09:35:37', '2019-11-21 09:56:01', '300ec862-09b9-438b-a516-dd2b3fe59f21'),
(184, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 09:36:29', '2019-11-21 09:36:29', '2019-11-21 09:56:02', '54e9299d-fbfb-4324-960d-6d2d8ae42506'),
(185, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 09:36:48', '2019-11-21 09:36:48', '2019-11-21 09:56:02', 'e6c13851-db83-47dd-ad26-1624c7476515'),
(186, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 09:58:12', '2019-11-21 09:58:12', NULL, 'c566792d-6d7f-4294-94f0-afdac7895b9a'),
(187, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 09:59:06', '2019-11-21 10:11:55', NULL, '31987909-e99d-4dba-bfa3-360f9cdacb75'),
(188, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 10:00:37', '2019-11-21 10:00:37', NULL, 'ac203e0a-4d19-442f-a1d9-ab525ada05bf'),
(189, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 10:01:06', '2019-11-21 10:01:06', NULL, 'cec8eb5c-fbcd-41ff-9aae-bc49f1c5c897'),
(190, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 10:04:35', '2019-11-21 10:05:50', NULL, '5b86f16d-ac91-4784-a4f3-7c7f49d2e5f9'),
(192, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-21 10:07:08', '2019-11-21 10:07:08', NULL, '6b93750c-c0c0-4900-a487-f2f2d4d3e478'),
(193, NULL, 86, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 10:24:28', '2019-11-21 10:24:28', NULL, '8f4a87b1-c297-467b-a299-521c70eea9a6'),
(194, NULL, 87, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-21 10:24:51', '2019-11-21 10:24:51', NULL, '39c2fff9-d242-4ed7-a4ea-a2173395c441'),
(196, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-22 10:04:09', '2019-11-22 10:04:09', NULL, '85d362da-a28c-4647-b305-73ea2f45a860'),
(197, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-22 10:20:27', '2019-11-22 10:20:27', NULL, 'c26e94d1-d3ff-40fd-a54d-8dfe00df829a'),
(198, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-22 10:21:16', '2019-11-22 10:21:16', NULL, 'd0c32136-952c-4703-9cdc-7d323c360964'),
(199, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-22 10:21:36', '2019-11-23 03:09:16', NULL, '0f94c146-956d-42f5-87d7-64800229a0db'),
(200, NULL, 88, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-22 10:21:35', '2019-11-22 10:21:35', NULL, '889dd55d-9e5c-40d8-9199-eb3ba8b368d6'),
(201, NULL, 89, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 03:08:56', '2019-11-23 03:08:56', NULL, 'c9f8ba3f-7fb2-48b7-be5f-1f59044892e7'),
(202, NULL, 90, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 03:09:16', '2019-11-23 03:09:16', NULL, '8bdcf502-1669-4cf3-8b38-2f0247d9fe07'),
(204, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-23 03:36:18', '2019-11-23 03:36:18', NULL, 'fed7daa6-275e-47fc-9db6-7a228c65f251'),
(205, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 03:51:22', '2019-11-23 04:09:03', NULL, 'c457ef88-c76a-4ad1-97db-74c4fe097dbd'),
(206, NULL, 91, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 03:51:20', '2019-11-23 03:51:20', NULL, 'd7403514-d227-48fa-ba7b-6ad95e9d3b80'),
(208, NULL, 92, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 03:55:10', '2019-11-23 03:55:10', NULL, '064ac649-2788-4ced-a429-5d7a29edf3cc'),
(210, NULL, 93, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 03:57:22', '2019-11-23 03:57:22', NULL, 'e125fbd8-0abb-4e95-867f-70514c809ffd'),
(211, NULL, 94, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 03:58:50', '2019-11-23 03:58:50', NULL, 'b839551d-ca49-49ca-bae4-a2d9da78654c'),
(212, NULL, 95, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 04:04:42', '2019-11-23 04:04:42', NULL, 'b939de41-2b90-4dd5-bc82-d37dc1c6c1a6'),
(213, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-23 04:08:55', '2019-11-23 04:08:55', NULL, 'ecad134d-754e-48f3-9bfa-7f3f97b810a6'),
(214, NULL, 96, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 04:09:03', '2019-11-23 04:09:03', NULL, 'd41f15e2-cd01-476f-a926-57d0609bded2'),
(216, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-23 04:12:22', '2019-11-23 04:12:22', NULL, '41cca68a-f57f-4d4d-b6f1-70170b8ce7a6'),
(217, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 04:13:01', '2019-11-23 08:50:42', NULL, '53d5b159-90e6-40ed-8df8-cfbb8bdb4c92'),
(218, NULL, 97, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 04:13:01', '2019-11-23 04:13:01', NULL, '3a1f7353-22da-4a0e-896d-d74b08e3474a'),
(220, NULL, 98, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 08:46:34', '2019-11-23 08:46:34', NULL, 'a8926fd5-5920-4705-b8b3-c3e45348b000'),
(222, NULL, 99, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 08:49:55', '2019-11-23 08:49:55', NULL, 'c858a183-4f51-424e-91af-b898d94b8fd5'),
(224, NULL, 100, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 08:50:19', '2019-11-23 08:50:19', NULL, '51327b9f-0d45-446c-8bfd-24ac4a58d2da'),
(225, NULL, 101, 3, 'craft\\elements\\Entry', 1, 0, '2019-11-23 08:50:42', '2019-11-23 08:50:42', NULL, '45442d12-3151-4316-a47a-077410a584f8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_elements_sites`
--

CREATE TABLE `my_elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_elements_sites`
--

INSERT INTO `my_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2019-11-06 13:43:05', '2019-11-06 13:43:05', '0d531e77-dd7e-40ee-855e-c66813e66a52'),
(2, 2, 1, 'teknologi', 'kategori/teknologi', 1, '2019-11-10 03:47:58', '2019-11-10 03:48:01', '5d0b7849-94a3-4cc2-b7ae-2f35d3f2e100'),
(3, 3, 1, '__temp_20jT3LKcnyngBDK7ntjTB1Ojd5KXTxBEP5OO', 'home/__temp_20jT3LKcnyngBDK7ntjTB1Ojd5KXTxBEP5OO', 1, '2019-11-10 05:40:21', '2019-11-10 05:40:21', '6b680bda-8087-4848-81c4-9a4f9d7d72f4'),
(5, 5, 1, 'about', 'about', 1, '2019-11-10 05:43:02', '2019-11-10 06:34:43', '5825600d-3751-4c6f-a92a-99bdad7f6fa7'),
(6, 6, 1, 'fakhri-alauddin', 'home/fakhri-alauddin', 1, '2019-11-10 05:43:03', '2019-11-10 05:43:03', 'f17ba4de-4529-45cf-b59c-226a061672bc'),
(7, 7, 1, NULL, NULL, 1, '2019-11-10 05:56:08', '2019-11-10 05:56:08', '8ca14056-54fc-4b53-81b0-7dea64290601'),
(8, 8, 1, 'fakhri-alauddin', 'home/fakhri-alauddin', 1, '2019-11-10 05:57:07', '2019-11-10 05:57:07', '21540fef-f36b-440d-bf5b-de76dafc167f'),
(9, 9, 1, 'fakhri-alauddin', 'home/fakhri-alauddin', 1, '2019-11-10 05:58:18', '2019-11-10 05:58:18', '398d1f5d-103b-47d4-9b15-1882cad19723'),
(11, 11, 1, 'homepage', 'home/homepage', 1, '2019-11-10 05:59:00', '2019-11-10 05:59:00', '5130ef6d-c721-47d8-88db-89210f476afc'),
(12, 12, 1, 'homepage', 'home/homepage', 1, '2019-11-10 05:59:00', '2019-11-10 05:59:00', '8138dd0a-933e-486c-8bc0-282199d43986'),
(14, 14, 1, 'homepage', 'homepage', 1, '2019-11-10 06:32:31', '2019-11-10 06:32:31', 'd6c62c3a-a92c-46a9-91f2-4b594e1ecf97'),
(15, 15, 1, 'homepage', 'homepage', 1, '2019-11-10 06:32:32', '2019-11-10 06:32:32', 'cc54718b-adc0-465b-9530-7dda2691c42a'),
(16, 16, 1, 'about', 'about', 1, '2019-11-10 06:34:44', '2019-11-10 06:34:44', 'a32c2fd8-0595-4174-b608-0e68762e534f'),
(17, 17, 1, 'about', 'about', 1, '2019-11-10 06:45:35', '2019-11-10 06:45:35', '8227a7f4-d35d-40d1-893e-b5f77650e91a'),
(18, 18, 1, 'homepage', 'homepage', 1, '2019-11-10 10:13:21', '2019-11-10 10:13:21', '557223d6-1cd6-4359-8d66-3d3adb95bc29'),
(19, 19, 1, 'node-js', 'post/__temp_Ln5ZWEaFl3N1T3r8NC05annK6Pn7tDyE4VCB', 1, '2019-11-10 10:16:53', '2019-11-10 10:17:17', '17c5ad15-d811-49e0-9909-01fd9b79f9ec'),
(20, 20, 1, '__temp_oYWDWByoFXB7anK6UzVhh4yrJwlmV5a8YMUn', 'post/__temp_oYWDWByoFXB7anK6UzVhh4yrJwlmV5a8YMUn', 1, '2019-11-11 02:23:56', '2019-11-11 02:23:56', 'd0cdc3b5-78d8-49f1-9cbe-3ee4fe138f58'),
(21, 21, 1, '__temp_rHXX8I37P3cqVnLshLiPJricQx9Rd8cYlLOO', 'post/__temp_rHXX8I37P3cqVnLshLiPJricQx9Rd8cYlLOO', 1, '2019-11-11 02:43:26', '2019-11-11 02:43:26', '816724e4-9c30-41f8-8cbd-94b380b7fc97'),
(22, 22, 1, 'menginstall-node-js-npm-di-windows-10', 'post/__temp_Pr9K8cHQbbkNCEunS9Fm5duqLdZ8RoCjodON', 1, '2019-11-11 07:26:31', '2019-11-11 07:28:11', '442f61da-2d5a-4f81-8473-457c1876be3c'),
(23, 23, 1, 'menginstall-node-js-npm-di-windows', 'post/__temp_VaoNczADMBEMqeeTWgWdPpb1nqgVbXg7qCSz', 1, '2019-11-11 07:34:20', '2019-11-11 07:34:40', '0afd2b12-dbdb-4272-81c5-ec50b2db85aa'),
(24, 24, 1, NULL, NULL, 1, '2019-11-11 07:35:30', '2019-11-11 07:35:30', 'c7f803f6-8d59-48b9-b6b5-11aa4c7d7d54'),
(25, 25, 1, NULL, NULL, 1, '2019-11-11 07:50:52', '2019-11-11 07:50:52', '29047ae6-3fb9-4717-b5de-2b20b26decfa'),
(26, 26, 1, NULL, NULL, 1, '2019-11-11 07:54:06', '2019-11-11 07:54:06', '034843b3-b1a7-4585-9c83-1eb6f5f1df2b'),
(28, 28, 1, NULL, NULL, 1, '2019-11-11 08:18:30', '2019-11-11 08:18:30', '763b9727-46e1-41b4-bf06-36ceaaffea68'),
(29, 29, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-11 08:25:33', '2019-11-11 08:25:33', '040dd7bc-dae4-440f-a0f3-e90bd52016d0'),
(30, 30, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-11 08:25:33', '2019-11-11 08:25:33', 'a54a9331-84f7-44ca-8d98-972f9e42d633'),
(31, 31, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-11 08:28:07', '2019-11-11 08:28:07', '1d447e0e-16bc-471f-a4e6-96d44d61b679'),
(32, 32, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-11 08:32:14', '2019-11-11 08:32:14', '0bf183e0-8f19-442d-b052-ab619fb39fdf'),
(33, 33, 1, 'about', 'about', 1, '2019-11-12 08:18:23', '2019-11-12 08:18:23', '4b757c6e-5800-474f-a0ff-d7ef45266ced'),
(34, 34, 1, 'about', 'about', 1, '2019-11-12 08:54:50', '2019-11-12 08:54:50', '84a0d6ad-74f5-4c1a-9119-c73504d6a426'),
(35, 35, 1, 'about', 'about', 1, '2019-11-12 08:56:19', '2019-11-12 08:56:19', '826b3dd5-29d3-49c8-98bf-792254a19e77'),
(36, 36, 1, 'about', 'about', 1, '2019-11-12 08:57:23', '2019-11-12 08:57:23', '9f068826-bb59-4671-b81a-f130a423d5ce'),
(37, 37, 1, 'about', 'about', 1, '2019-11-12 08:58:05', '2019-11-12 08:58:05', '6ba8520b-6cad-497c-a7fc-af67784d6205'),
(38, 38, 1, 'about', 'about', 1, '2019-11-12 08:59:38', '2019-11-12 08:59:38', 'f26d74e2-5252-4755-94d2-58917e2b2a3d'),
(39, 39, 1, 'about', 'about', 1, '2019-11-12 09:11:11', '2019-11-12 09:11:11', '3be42daa-3e88-4aa8-b294-ab96beb0ffe7'),
(40, 40, 1, '__temp_A34l1irvJIosyHk02RxmE63gTRtMRrLHrzVA', 'post/__temp_A34l1irvJIosyHk02RxmE63gTRtMRrLHrzVA', 1, '2019-11-12 11:26:18', '2019-11-12 11:26:18', 'fbe1b002-634a-48c1-a6bd-6ad7283e6336'),
(41, 41, 1, 'about', 'about', 1, '2019-11-12 11:46:36', '2019-11-12 11:46:36', '8451f6cb-031d-431b-90a0-d17e014e15ff'),
(42, 42, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 03:25:14', '2019-11-13 03:25:14', 'f7316d39-08b7-4f6b-a6c9-c6553e635747'),
(43, 43, 1, NULL, NULL, 1, '2019-11-13 08:40:05', '2019-11-13 08:40:05', '2811e72e-b958-4f02-8944-fe2e5591a1e7'),
(44, 44, 1, NULL, NULL, 1, '2019-11-13 08:45:00', '2019-11-13 08:45:00', '7ffed746-9d05-42f4-99fd-b6fee497d87a'),
(45, 45, 1, NULL, NULL, 1, '2019-11-13 08:46:16', '2019-11-13 08:46:16', '97da6b04-e3de-4673-adff-b7978b3b7c0d'),
(46, 46, 1, NULL, NULL, 1, '2019-11-13 08:47:06', '2019-11-13 08:47:06', 'b41196e6-be35-45f3-8dc0-a6c47268adbc'),
(47, 47, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 08:54:11', '2019-11-13 08:54:11', 'f81d8dbd-cf6b-4847-99f4-0f09ff1f8c6d'),
(48, 48, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 08:59:30', '2019-11-13 08:59:30', '63febd1b-eea0-41e5-b913-c85869b54308'),
(49, 49, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 09:00:32', '2019-11-13 09:00:32', 'd2066779-4767-4a8a-abd1-094f00c779e6'),
(50, 50, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 09:01:02', '2019-11-13 09:01:02', 'e47b94e7-b4ae-46f2-8008-c6eff1b67141'),
(51, 51, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 09:01:43', '2019-11-13 09:01:43', '115e32f1-40d1-4e40-837f-ca3bdbf577e6'),
(52, 52, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 09:03:58', '2019-11-13 09:03:58', '9c99d90d-7b37-4c3b-b664-ad002c1c69d2'),
(53, 53, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 09:04:49', '2019-11-13 09:04:49', 'b25f4cda-9c61-48a8-8f0a-f258750680d5'),
(54, 54, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 09:09:06', '2019-11-13 09:09:06', '879865db-be50-4ad7-be3b-4a2137a5f35c'),
(55, 55, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 09:15:59', '2019-11-13 09:15:59', '2cdc89fe-4865-43ae-9b01-2ffa051490ad'),
(56, 56, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 09:17:39', '2019-11-13 09:17:39', 'afa55aa3-3535-4d75-b000-92c91adcd982'),
(58, 58, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 12:49:20', '2019-11-13 12:49:20', '814648f1-0cf2-4bf1-8bd5-3dcb7772b6bb'),
(59, 59, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 12:49:31', '2019-11-13 12:49:31', 'b5cc55cf-1f1c-4ce5-af59-a43f70bd2ea0'),
(60, 60, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 12:55:57', '2019-11-13 12:55:57', '1669ccb7-8046-45af-8ebc-c73105d4e058'),
(61, 61, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 12:56:05', '2019-11-13 12:56:05', 'f9b68bb1-402e-4251-a486-b8796fad8ca6'),
(62, 62, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-13 13:02:56', '2019-11-13 13:02:56', 'e8d7ff1b-0f7e-4034-9dda-587e1459c795'),
(63, 63, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-14 03:54:56', '2019-11-14 03:54:56', 'c5c2791d-2ab5-4934-85e7-6b5bb788bcb8'),
(64, 64, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-14 03:56:24', '2019-11-14 03:56:24', '83f545fd-7db4-4eab-9c48-9678d98db892'),
(65, 65, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-14 03:58:54', '2019-11-14 03:58:54', '497d4a15-236e-434d-bbc4-2a6f2267e6a4'),
(67, 67, 1, NULL, NULL, 1, '2019-11-14 04:17:50', '2019-11-14 04:17:50', '52df1446-1aac-434f-bad6-661876fe517e'),
(68, 68, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-14 04:18:21', '2019-11-14 04:18:21', '836b2237-3c02-469d-8664-93687b3f52e4'),
(69, 69, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-14 04:18:22', '2019-11-14 04:18:22', 'f033b09e-409c-44a5-a57b-d2a5f00395b6'),
(70, 70, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-14 08:31:03', '2019-11-14 08:31:03', 'fdea4c47-f375-4426-8d17-d7a1d5749be0'),
(71, 71, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-14 08:34:13', '2019-11-14 08:34:13', '74bd55e1-fd47-4daa-bcf5-be7e4ab09afb'),
(73, 73, 1, NULL, NULL, 1, '2019-11-14 08:45:16', '2019-11-14 08:45:16', 'e1b4d659-f1f2-49b2-9146-6a99e9f18bd2'),
(74, 74, 1, 'cara-install-dev-c-di-windows', 'post/cara-install-dev-c-di-windows', 1, '2019-11-14 08:52:35', '2019-11-14 08:52:35', 'da9a3333-0908-4413-a906-30633ce0273f'),
(75, 75, 1, 'cara-install-dev-c-di-windows', 'post/cara-install-dev-c-di-windows', 1, '2019-11-14 08:52:36', '2019-11-14 08:52:36', 'a6faf602-8f5c-4478-8b01-6894aa06ae36'),
(76, 76, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-14 11:48:43', '2019-11-14 11:48:43', '9a8ee3e2-bf05-4035-8c3c-45fc2b653a82'),
(77, 77, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-14 12:27:49', '2019-11-14 12:27:49', '36e0f61e-d19c-449b-99a0-315d2332f586'),
(78, 78, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-14 12:33:30', '2019-11-14 12:33:30', 'ef86595c-5004-4d8d-9c7b-41ef2724c954'),
(79, 79, 1, 'javascript', 'kategori/javascript', 1, '2019-11-17 14:50:57', '2019-11-18 08:28:56', '62c73cce-220a-4ffc-9708-731365f1d497'),
(80, 80, 1, 'cpp', 'kategori/cpp', 1, '2019-11-17 14:51:24', '2019-11-18 08:28:56', '2bce550f-74e2-47bd-8cbf-21f5f0d9c230'),
(81, 81, 1, 'php', 'kategori/php', 1, '2019-11-17 14:51:38', '2019-11-18 08:28:56', 'e11d1e25-7a56-4a12-afea-002568101f51'),
(82, 82, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-17 15:02:11', '2019-11-17 15:02:11', 'c643f220-7826-47cf-b83b-9b98461473b2'),
(83, 83, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-17 15:11:18', '2019-11-17 15:11:18', '60e93ab9-55c9-47d3-b764-2150f2296344'),
(85, 85, 1, NULL, NULL, 1, '2019-11-17 15:18:47', '2019-11-17 15:18:47', '3b0a6497-65ae-4ad7-82e2-aa7b3cb58ad1'),
(86, 86, 1, NULL, NULL, 1, '2019-11-17 15:25:27', '2019-11-17 15:25:27', '5760ff27-b3d5-4af8-a1e2-ee5b45801758'),
(87, 87, 1, NULL, NULL, 1, '2019-11-17 15:26:04', '2019-11-17 15:26:04', 'a3220a2a-d831-400c-a86e-b2f36d74f6cd'),
(88, 88, 1, NULL, NULL, 1, '2019-11-17 15:26:26', '2019-11-17 15:26:26', '3bba32de-abb3-45c1-b0cf-b9a8d2ae0da1'),
(89, 89, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-17 15:26:39', '2019-11-17 15:26:39', '3b8881b5-9f05-4c90-8ecd-f440b7d6ccb7'),
(90, 90, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-17 15:26:52', '2019-11-17 15:26:52', 'f4bdcd0a-6ab3-4d34-b425-2fc8d007b90f'),
(91, 91, 1, 'cara-install-dev-c-di-windows', 'post/cara-install-dev-c-di-windows', 1, '2019-11-17 15:27:36', '2019-11-17 15:27:36', 'd85ca532-e6c6-41d9-a742-3103026b891f'),
(92, 92, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-17 15:27:57', '2019-11-17 15:27:57', 'fc45896b-02d8-4ce0-9fc1-a40da644cceb'),
(93, 93, 1, 'menginstall-node-js-npm-di-windows-1', 'post/menginstall-node-js-npm-di-windows-1', 1, '2019-11-18 04:37:07', '2019-11-18 04:37:07', 'e8ce152c-1d13-4cd1-ad94-e4dfa1455153'),
(94, 94, 1, 'menginstall-node-js-npm-di-windows-1', 'post/menginstall-node-js-npm-di-windows-1', 1, '2019-11-18 04:37:08', '2019-11-18 04:37:08', '835f0eb6-8de1-4585-acde-a418fef62ab9'),
(95, 95, 1, 'install-php-composer-di-windows-1', 'post/install-php-composer-di-windows-1', 1, '2019-11-18 04:37:09', '2019-11-18 04:37:09', '01150c52-a844-4282-8b55-1e30c4410f0d'),
(96, 96, 1, 'install-php-composer-di-windows-1', 'post/install-php-composer-di-windows-1', 1, '2019-11-18 04:37:09', '2019-11-18 04:37:09', 'c77aaf9f-1afc-45ca-bc49-efe8054b9048'),
(97, 97, 1, 'cara-install-dev-c-di-windows-1', 'post/cara-install-dev-c-di-windows-1', 1, '2019-11-18 04:37:10', '2019-11-18 04:37:10', '358993d1-16cc-433a-a502-4725fe11a2f7'),
(98, 98, 1, 'cara-install-dev-c-di-windows-1', 'post/cara-install-dev-c-di-windows-1', 1, '2019-11-18 04:37:10', '2019-11-18 04:37:10', 'aef75a72-388d-43b9-8d4a-548b9d0db3f0'),
(99, 99, 1, 'menginstall-node-js-npm-di-windows-2', 'post/menginstall-node-js-npm-di-windows-2', 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', '74ccf6a9-a2cf-4f92-a639-b98e1cdb066f'),
(100, 100, 1, 'menginstall-node-js-npm-di-windows-2', 'post/menginstall-node-js-npm-di-windows-2', 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', 'e0875ff7-23bc-456e-ba1a-1ebd1f23bef4'),
(101, 101, 1, 'install-php-composer-di-windows-2', 'post/install-php-composer-di-windows-2', 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', 'cc219f76-ad57-4a86-a2c9-42aba285a89b'),
(102, 102, 1, 'install-php-composer-di-windows-2', 'post/install-php-composer-di-windows-2', 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', 'b5eb78d6-30cb-4bcc-924c-6cc20af5cae4'),
(103, 103, 1, 'cara-install-dev-c-di-windows-2', 'post/cara-install-dev-c-di-windows-2', 1, '2019-11-18 04:37:19', '2019-11-18 04:37:19', 'd772ff7b-f6f3-4657-95db-6d10eedaf1e4'),
(104, 104, 1, 'cara-install-dev-c-di-windows-2', 'post/cara-install-dev-c-di-windows-2', 1, '2019-11-18 04:37:19', '2019-11-18 04:37:19', 'af0e6cd6-10dd-493f-abf9-4a0b4e177605'),
(105, 105, 1, 'menginstall-node-js-npm-di-windows-1', 'post/menginstall-node-js-npm-di-windows-1', 1, '2019-11-18 06:43:20', '2019-11-18 06:43:20', '4cc207e7-50ad-4b8d-821f-6c5dc4bc81a6'),
(106, 106, 1, 'menginstall-node-js-npm-di-windows-1', 'post/menginstall-node-js-npm-di-windows-1', 1, '2019-11-18 06:43:20', '2019-11-18 06:43:20', '19eea178-b2ea-4dcc-bbc1-4859bd814310'),
(107, 107, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-19 10:17:36', '2019-11-19 10:17:36', '0ebf79c0-a12e-41e0-b059-dde928bba114'),
(109, 109, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-19 10:18:30', '2019-11-19 10:18:30', 'f23dd4a6-f4b0-4c9b-98b6-ced4e8027c10'),
(110, 110, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-19 10:18:37', '2019-11-19 10:18:37', '62a80832-1bb0-456f-84c7-e785c9e9f6c1'),
(111, 111, 1, NULL, NULL, 1, '2019-11-19 10:24:56', '2019-11-19 10:24:56', 'cdeca6a4-5169-4bd9-aa51-b317432efbbf'),
(112, 112, 1, NULL, NULL, 1, '2019-11-19 10:24:57', '2019-11-19 10:24:57', '37585527-c088-44e4-ad79-71360bdfe53d'),
(113, 113, 1, NULL, NULL, 1, '2019-11-19 10:24:59', '2019-11-19 10:24:59', 'fd7a3940-81a1-4f93-8b61-57c3c7f2509c'),
(114, 114, 1, NULL, NULL, 1, '2019-11-19 10:25:00', '2019-11-19 10:25:00', '4b44eb2c-fe7d-4ab7-b2ec-62e38cc14184'),
(115, 115, 1, NULL, NULL, 1, '2019-11-19 10:25:03', '2019-11-19 10:25:03', '90e6f9a2-aef0-417b-a3ad-038fb8bb576b'),
(116, 116, 1, NULL, NULL, 1, '2019-11-19 10:25:04', '2019-11-19 10:25:04', '09e678d0-1746-43f8-a19c-50d8d70c6065'),
(117, 117, 1, NULL, NULL, 1, '2019-11-19 10:30:28', '2019-11-19 10:30:28', '1c93354f-7eda-4630-a59f-3ca774049203'),
(118, 118, 1, NULL, NULL, 1, '2019-11-19 10:30:29', '2019-11-19 10:30:29', 'a729b788-1cdf-44f2-b8d3-f2d982d51faf'),
(120, 120, 1, 'cara-install-dev-c-di-windows', 'post/cara-install-dev-c-di-windows', 1, '2019-11-19 13:09:49', '2019-11-19 13:09:49', '5dd2fa06-df00-40f4-be91-d3176b6f334a'),
(121, 121, 1, 'cara-install-dev-c-di-windows', 'post/cara-install-dev-c-di-windows', 1, '2019-11-19 13:20:34', '2019-11-19 13:20:34', '015dde5f-cbba-41c3-ac33-63e87535dd55'),
(122, 122, 1, 'cara-install-dev-c-di-windows', 'post/cara-install-dev-c-di-windows', 1, '2019-11-20 02:30:11', '2019-11-20 02:30:11', '8f207fb9-a449-4ed7-a0e2-b3be60cd9623'),
(124, 124, 1, 'cara-install-dev-c-di-windows', 'post/cara-install-dev-c-di-windows', 1, '2019-11-20 02:37:38', '2019-11-20 02:37:38', 'd65ef6a0-b171-4152-aa78-4dd88b2778bc'),
(125, 125, 1, 'cara-install-dev-c-di-windows', 'post/cara-install-dev-c-di-windows', 1, '2019-11-20 02:37:46', '2019-11-20 02:37:46', 'ab8bb1aa-4b95-466e-ae06-01716ff1500b'),
(127, 127, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-20 02:40:31', '2019-11-20 02:40:31', 'ea653621-7525-4645-8c1c-495c66de6588'),
(129, 129, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-20 02:41:33', '2019-11-20 02:41:33', 'd33b2477-7cb5-4b09-9b35-fb7a24cf8820'),
(130, 130, 1, 'menginstall-node-js-npm-di-windows', 'post/menginstall-node-js-npm-di-windows', 1, '2019-11-20 02:41:38', '2019-11-20 02:41:38', 'c5bf04c8-ca18-4c0c-9307-a5bbc3beacba'),
(131, 131, 1, '__temp_gfCVwgIUmtm8VeVoVa88SSHjC0hQizygmoqB', 'post/__temp_gfCVwgIUmtm8VeVoVa88SSHjC0hQizygmoqB', 1, '2019-11-20 02:42:03', '2019-11-20 02:42:03', '34a47fcc-8d24-486b-9c59-ce11cceb684c'),
(132, 132, 1, 'install-php-composer-di-windows', 'post/install-php-composer-di-windows', 1, '2019-11-20 02:43:26', '2019-11-20 02:43:26', '60e7f03f-f750-4fbc-a715-689fdeed9b05'),
(134, 134, 1, NULL, NULL, 1, '2019-11-20 08:32:39', '2019-11-20 08:32:39', 'cfc4b14a-7cb3-4eea-8e6b-0354ef3133cf'),
(135, 135, 1, 'tutorial-minify-javascript-menggunakan-gulp', 'post/tutorial-minify-javascript-menggunakan-gulp', 1, '2019-11-20 08:40:43', '2019-11-20 08:40:43', '3964fdc1-aec1-499a-8f8d-d2021d5ad6ee'),
(136, 136, 1, 'tutorial-minify-javascript-menggunakan-gulp', 'post/tutorial-minify-javascript-menggunakan-gulp', 1, '2019-11-20 08:40:43', '2019-11-20 08:40:43', 'f40c4938-cd18-4178-82a5-05941fbe0c41'),
(137, 137, 1, NULL, NULL, 1, '2019-11-20 08:41:44', '2019-11-20 08:41:44', 'e909988e-f8ea-4686-a590-d5044c31eef3'),
(138, 138, 1, NULL, NULL, 1, '2019-11-20 08:41:47', '2019-11-20 08:41:47', '63d3a8cd-2af0-4808-b973-32080853be5f'),
(139, 139, 1, NULL, NULL, 1, '2019-11-20 08:41:49', '2019-11-20 08:41:49', '714f4329-9abe-485a-ba59-4b132fbe9d2c'),
(140, 140, 1, NULL, NULL, 1, '2019-11-20 08:42:15', '2019-11-20 08:42:15', '83edfa41-de98-463a-bb20-b58c13936997'),
(141, 141, 1, NULL, NULL, 1, '2019-11-20 08:42:21', '2019-11-20 08:42:21', 'd81c489c-0809-4dcf-adba-85964e20ff90'),
(142, 142, 1, NULL, NULL, 1, '2019-11-20 08:43:25', '2019-11-20 08:43:25', 'acabec03-010d-4eee-97d3-fd1724624df4'),
(143, 143, 1, NULL, NULL, 1, '2019-11-20 08:43:35', '2019-11-20 08:43:35', '973dd091-d375-47a2-9330-3a6fb3eb3fb3'),
(144, 144, 1, NULL, NULL, 1, '2019-11-20 08:43:50', '2019-11-20 08:43:50', 'b0948db8-2b6e-4e34-9bb8-b881ebd9627d'),
(145, 145, 1, NULL, NULL, 1, '2019-11-20 08:43:53', '2019-11-20 08:43:53', '04301a24-696c-4777-ba86-48ac892c7dd2'),
(146, 146, 1, NULL, NULL, 1, '2019-11-20 08:44:18', '2019-11-20 08:44:18', 'a3f9d043-5a44-4cf8-8ad6-ff29792385a9'),
(147, 147, 1, NULL, NULL, 1, '2019-11-20 08:44:21', '2019-11-20 08:44:21', '837485ae-011a-42b6-b439-a5f36ddd99d0'),
(148, 148, 1, NULL, NULL, 1, '2019-11-20 08:51:38', '2019-11-20 08:51:38', '6e98af56-bc77-4581-8986-4eb8dd7ab927'),
(150, 150, 1, 'tutorial-minify-javascript-menggunakan-gulp', 'post/tutorial-minify-javascript-menggunakan-gulp', 1, '2019-11-20 10:19:07', '2019-11-20 10:19:07', '8a55904b-ff92-481a-ab67-095f7888c8b2'),
(151, 151, 1, 'tutorial-minify-javascript-menggunakan-gulp', 'post/tutorial-minify-javascript-menggunakan-gulp', 1, '2019-11-20 12:26:00', '2019-11-20 12:26:00', '28614849-3554-49b7-8c67-becc01f649cf'),
(152, 152, 1, NULL, NULL, 1, '2019-11-20 12:31:38', '2019-11-20 12:31:38', 'bb67e068-bda6-41dc-9ed7-410a2c73d7da'),
(154, 154, 1, 'tutorial-minify-javascript-menggunakan-gulp', 'post/tutorial-minify-javascript-menggunakan-gulp', 1, '2019-11-20 12:34:34', '2019-11-20 12:34:34', '5e054f27-5441-4a50-993a-910f370bba00'),
(155, 155, 1, 'tutorial-minify-javascript-menggunakan-gulp', 'post/tutorial-minify-javascript-menggunakan-gulp', 1, '2019-11-20 12:52:08', '2019-11-20 12:52:08', '43bbb776-bb2b-4e57-b4cf-dd7185cd7af3'),
(156, 156, 1, 'tutorial-minify-javascript-menggunakan-gulp', 'post/tutorial-minify-javascript-menggunakan-gulp', 1, '2019-11-21 02:31:25', '2019-11-21 02:31:25', '23594e27-a467-4acf-bacf-f16b0c57aba2'),
(158, 158, 1, NULL, NULL, 1, '2019-11-21 03:00:37', '2019-11-21 03:00:37', 'cb30d0ff-9995-4018-bff9-9e42d39aab8d'),
(159, 159, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 03:06:30', '2019-11-21 03:06:30', '09a83bd0-cd13-4e56-a45a-25afb118ae90'),
(160, 160, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 03:06:30', '2019-11-21 03:06:30', '1a858861-0107-4e7e-8e0b-b1bff28142f3'),
(162, 162, 1, NULL, NULL, 1, '2019-11-21 03:31:24', '2019-11-21 03:31:24', '10cbf137-f0cc-47b6-baec-e0aa25793937'),
(163, 163, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 03:38:26', '2019-11-21 03:38:26', '74505f40-bf2e-41a8-ab06-d7a51bf236ec'),
(164, 164, 1, NULL, NULL, 1, '2019-11-21 03:45:02', '2019-11-21 03:45:02', '3ccb363a-b9ad-4303-aa5c-6b6a18ac1a17'),
(165, 165, 1, NULL, NULL, 1, '2019-11-21 04:08:40', '2019-11-21 04:08:40', '180a2ff2-7f9f-4a23-825b-6041df9bfe76'),
(166, 166, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 04:08:48', '2019-11-21 04:08:48', 'a78dc391-8df3-43e9-8284-7501f60c67a8'),
(168, 168, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 08:10:10', '2019-11-21 08:10:10', 'b647eb59-ec29-457e-af85-b8ac394943da'),
(169, 169, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 08:12:09', '2019-11-21 08:12:09', '2820f3a3-4b0a-4c95-92c4-a00635200071'),
(170, 170, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 08:12:43', '2019-11-21 08:12:43', 'ad744bca-49fa-434f-a259-ecfaedff50da'),
(171, 171, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 08:13:18', '2019-11-21 08:13:18', '4b58ad3f-76fa-4df5-b0db-08b48661bc83'),
(172, 172, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 08:14:46', '2019-11-21 08:14:46', 'f77b805d-755f-44c3-89e2-31f1622a2ed5'),
(173, 173, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 08:15:14', '2019-11-21 08:15:14', '2363645d-5883-40e2-b546-ef2d0763baf0'),
(174, 174, 1, 'library-javascript-menarik-untuk-web-dev', 'post/library-javascript-menarik-untuk-web-dev', 1, '2019-11-21 08:16:02', '2019-11-21 08:16:02', '1462f437-b9bc-49d9-9ad5-6eb19304dc02'),
(176, 176, 1, NULL, NULL, 1, '2019-11-21 08:23:43', '2019-11-21 08:23:43', 'e166370f-51ab-4053-9fae-2050ed9869a0'),
(177, 177, 1, 'menjalankan-program-php-di-android-menggunakan-termux', 'post/menjalankan-program-php-di-android-menggunakan-termux', 1, '2019-11-21 09:15:13', '2019-11-21 09:15:13', '870ad40f-a7dd-45b7-9733-9f05271648a6'),
(178, 178, 1, 'menjalankan-program-php-di-android-menggunakan-termux', 'post/menjalankan-program-php-di-android-menggunakan-termux', 1, '2019-11-21 09:15:14', '2019-11-21 09:15:14', 'dbc1e8a1-b419-4973-a5cb-b4940a95a09c'),
(179, 179, 1, NULL, NULL, 1, '2019-11-21 09:33:22', '2019-11-21 09:33:22', 'e95c125a-6249-4409-804b-cec40ff7fad1'),
(180, 180, 1, NULL, NULL, 1, '2019-11-21 09:33:36', '2019-11-21 09:33:36', 'c7995242-f298-4259-8282-8a64deb3da73'),
(181, 181, 1, NULL, NULL, 1, '2019-11-21 09:34:33', '2019-11-21 09:34:33', '8bfc7524-d07f-4174-8f91-386dec82fc33'),
(182, 182, 1, NULL, NULL, 1, '2019-11-21 09:34:47', '2019-11-21 09:34:47', '68e5b23c-7569-4768-b67a-aef4899deee3'),
(183, 183, 1, NULL, NULL, 1, '2019-11-21 09:35:37', '2019-11-21 09:35:37', 'db391a90-54ea-4b1a-9479-47163e05f39b'),
(184, 184, 1, NULL, NULL, 1, '2019-11-21 09:36:29', '2019-11-21 09:36:29', 'a123fcc0-612d-406b-8c8b-41bfc26d9e82'),
(185, 185, 1, NULL, NULL, 1, '2019-11-21 09:36:48', '2019-11-21 09:36:48', 'ae8c20a9-5fad-4e6f-826b-1679328557fd'),
(186, 186, 1, NULL, NULL, 1, '2019-11-21 09:58:12', '2019-11-21 09:58:12', '7d1c8c04-9313-4aa1-b112-03e6ae54c1ec'),
(187, 187, 1, NULL, NULL, 1, '2019-11-21 09:59:06', '2019-11-21 09:59:06', 'ab5efe75-49f3-4fb0-acd4-3f3c8f82ff49'),
(188, 188, 1, NULL, NULL, 1, '2019-11-21 10:00:37', '2019-11-21 10:00:37', 'b14fe2db-3f23-4b9e-ad25-109a6f0acf12'),
(189, 189, 1, NULL, NULL, 1, '2019-11-21 10:01:06', '2019-11-21 10:01:06', 'ca1838f9-5c33-445a-8a73-bcdda46d0821'),
(190, 190, 1, NULL, NULL, 1, '2019-11-21 10:04:35', '2019-11-21 10:04:35', 'bbb66768-55bf-4b60-b6f9-5d34f9341a45'),
(192, 192, 1, NULL, NULL, 1, '2019-11-21 10:07:08', '2019-11-21 10:07:08', 'b84a1de6-201a-4b0f-a926-4e30bf97638f'),
(193, 193, 1, 'menjalankan-program-php-di-android-menggunakan-termux', 'post/menjalankan-program-php-di-android-menggunakan-termux', 1, '2019-11-21 10:24:28', '2019-11-21 10:24:28', 'fa00d4b4-f715-4e1d-97de-55c2e37d1b40'),
(194, 194, 1, 'menjalankan-program-php-di-android-menggunakan-termux', 'post/menjalankan-program-php-di-android-menggunakan-termux', 1, '2019-11-21 10:24:51', '2019-11-21 10:24:51', '17b28fe5-68b5-44b9-8e92-89e5ba929e12'),
(196, 196, 1, NULL, NULL, 1, '2019-11-22 10:04:09', '2019-11-22 10:04:09', '80be16ab-e624-4084-8c06-607560baf53f'),
(197, 197, 1, NULL, NULL, 1, '2019-11-22 10:20:27', '2019-11-22 10:20:27', '9854eefd-b7e5-461f-9201-f3bf355139a0'),
(198, 198, 1, NULL, NULL, 1, '2019-11-22 10:21:16', '2019-11-22 10:21:16', '6176424e-e3df-4c31-9244-19cd2c1bdbab'),
(199, 199, 1, 'source-code-pola-segitiga-di-php', 'post/source-code-pola-segitiga-di-php', 1, '2019-11-22 10:21:36', '2019-11-22 10:21:36', 'eb0fad91-1768-44ca-8cc0-07187b898a00'),
(200, 200, 1, 'source-code-pola-segitiga-di-php', 'post/source-code-pola-segitiga-di-php', 1, '2019-11-22 10:21:36', '2019-11-22 10:21:36', '5cb1e464-2dc7-4dca-9e52-9e16de81ae54'),
(201, 201, 1, 'source-code-pola-segitiga-di-php', 'post/source-code-pola-segitiga-di-php', 1, '2019-11-23 03:08:57', '2019-11-23 03:08:57', '19eae315-8d1f-41df-9383-7bbaf822ff70'),
(202, 202, 1, 'source-code-pola-segitiga-di-php', 'post/source-code-pola-segitiga-di-php', 1, '2019-11-23 03:09:16', '2019-11-23 03:09:16', '0486f801-4cd4-41b6-9010-0d3ba9887340'),
(204, 204, 1, NULL, NULL, 1, '2019-11-23 03:36:18', '2019-11-23 03:36:18', '48507161-3a37-4c0b-befc-e760dc2039ec'),
(205, 205, 1, 'pengenalan-bahasa-pemrograman-c', 'post/pengenalan-bahasa-pemrograman-c', 1, '2019-11-23 03:51:22', '2019-11-23 03:51:22', 'abbf1168-efd9-4c72-bf40-b2b751464719'),
(206, 206, 1, 'pengenalan-bahasa-pemrograman-c', 'post/pengenalan-bahasa-pemrograman-c', 1, '2019-11-23 03:51:22', '2019-11-23 03:51:22', '8c3502f5-3e75-4212-ad6c-bb32961af4ab'),
(208, 208, 1, 'pengenalan-bahasa-pemrograman-c', 'post/pengenalan-bahasa-pemrograman-c', 1, '2019-11-23 03:55:10', '2019-11-23 03:55:10', '8011d7cc-8ecd-4563-b1d1-99932fbbcfe9'),
(210, 210, 1, 'pengenalan-bahasa-pemrograman-c', 'post/pengenalan-bahasa-pemrograman-c', 1, '2019-11-23 03:57:24', '2019-11-23 03:57:24', '28ee8ca0-4737-4b04-90fd-180a1fbbe70c'),
(211, 211, 1, 'pengenalan-bahasa-pemrograman-c', 'post/pengenalan-bahasa-pemrograman-c', 1, '2019-11-23 03:58:50', '2019-11-23 03:58:50', '54067cd6-be2a-4509-bfc8-2d32706391ef'),
(212, 212, 1, 'pengenalan-bahasa-pemrograman-c', 'post/pengenalan-bahasa-pemrograman-c', 1, '2019-11-23 04:04:42', '2019-11-23 04:04:42', '12d7f8a1-bf73-42fb-8053-af7e0050c63e'),
(213, 213, 1, NULL, NULL, 1, '2019-11-23 04:08:55', '2019-11-23 04:08:55', 'b2c7f015-c9f4-4e26-b94e-5c8fe4e08166'),
(214, 214, 1, 'pengenalan-bahasa-pemrograman-c', 'post/pengenalan-bahasa-pemrograman-c', 1, '2019-11-23 04:09:03', '2019-11-23 04:09:03', '4323188d-853b-4fa0-91a4-c4bbee6d6310'),
(216, 216, 1, NULL, NULL, 1, '2019-11-23 04:12:22', '2019-11-23 04:12:22', 'b3af3090-6f48-4e7d-8be8-bf7efb95ad8d'),
(217, 217, 1, 'macam-macam-file-header-pada-c', 'post/macam-macam-file-header-pada-c', 1, '2019-11-23 04:13:01', '2019-11-23 04:13:01', 'e8f2c593-f41c-45d7-8377-155edd0c5f26'),
(218, 218, 1, 'macam-macam-file-header-pada-c', 'post/macam-macam-file-header-pada-c', 1, '2019-11-23 04:13:01', '2019-11-23 04:13:01', '0cf8f7f7-5802-4402-a5c9-0232c97f250b'),
(220, 220, 1, 'macam-macam-file-header-pada-c', 'post/macam-macam-file-header-pada-c', 1, '2019-11-23 08:46:36', '2019-11-23 08:46:36', '6beb1fee-43ae-48db-8fe4-84f2f83468f4'),
(222, 222, 1, 'macam-macam-file-header-pada-c', 'post/macam-macam-file-header-pada-c', 1, '2019-11-23 08:49:56', '2019-11-23 08:49:56', '7ecd43c5-387f-48be-9437-52fdcd54ed37'),
(224, 224, 1, 'macam-macam-file-header-pada-c', 'post/macam-macam-file-header-pada-c', 1, '2019-11-23 08:50:19', '2019-11-23 08:50:19', 'cc7d6eaf-022a-4c82-bad0-3e534750a9e7'),
(225, 225, 1, 'macam-macam-file-header-pada-c', 'post/macam-macam-file-header-pada-c', 1, '2019-11-23 08:50:42', '2019-11-23 08:50:42', '6cd87255-0c7c-4b7a-8eb3-a576ec029b7b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_entries`
--

CREATE TABLE `my_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_entries`
--

INSERT INTO `my_entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 1, NULL, 4, 1, '2019-11-10 05:40:00', NULL, NULL, '2019-11-10 05:40:21', '2019-11-10 05:40:55', '1390fa63-f6ff-419b-8ea9-18ac5ec3070d'),
(5, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-10 05:43:02', '2019-11-10 05:43:02', 'cfbafb38-d06b-4401-b24e-b0e11ee19394'),
(6, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-10 05:43:03', '2019-11-10 05:43:03', 'b51aa8fa-5ae9-4518-8b22-bb85570543b3'),
(8, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-10 05:57:07', '2019-11-10 05:57:07', '606a0da2-68e5-49aa-b3ab-c8ff98b61d52'),
(9, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-10 05:58:18', '2019-11-10 05:58:18', 'd6b650e0-96c2-4a4b-a1ad-80f153ea6a5a'),
(11, 1, NULL, 1, 1, '2019-11-10 05:58:00', NULL, 0, '2019-11-10 05:59:00', '2019-11-10 05:59:00', '580c5e18-b646-45c4-aa53-20a310846e8e'),
(12, 1, NULL, 1, 1, '2019-11-10 05:58:00', NULL, NULL, '2019-11-10 05:59:00', '2019-11-10 05:59:00', '097a2f1a-0fd6-480a-ae14-902d44a4fd2c'),
(14, 1, NULL, 1, 1, '2019-11-10 06:32:00', NULL, 0, '2019-11-10 06:32:31', '2019-11-10 06:32:31', '54b3e85b-fb5e-4b57-9022-228c0ba75a1f'),
(15, 1, NULL, 1, 1, '2019-11-10 06:32:00', NULL, NULL, '2019-11-10 06:32:32', '2019-11-10 06:32:32', '767a98fb-612f-4139-8de8-a3cdda6146f3'),
(16, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-10 06:34:44', '2019-11-10 06:34:44', '487362a5-ec20-4e4f-9d7b-5c21bab73b90'),
(17, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-10 06:45:35', '2019-11-10 06:45:35', '0e644deb-7d38-46f4-9509-03b39b5172d5'),
(18, 1, NULL, 1, 1, '2019-11-10 06:32:00', NULL, NULL, '2019-11-10 10:13:21', '2019-11-10 10:13:21', 'c189af9c-fcd8-4a04-8011-6ba969a0372c'),
(19, 3, NULL, 3, 1, '2019-11-10 10:16:00', NULL, NULL, '2019-11-10 10:16:54', '2019-11-10 10:16:54', '17fc45d5-d7e3-471c-9739-69cfc9800594'),
(20, 3, NULL, 3, 1, '2019-11-11 02:23:00', NULL, NULL, '2019-11-11 02:23:56', '2019-11-11 02:23:56', 'a8bed75c-95ad-429e-a826-73af904e73d3'),
(21, 3, NULL, 3, 1, '2019-11-11 02:43:00', NULL, NULL, '2019-11-11 02:43:26', '2019-11-11 02:43:26', '9e9aefe3-0ddd-425c-826b-51119ce26222'),
(22, 3, NULL, 3, 1, '2019-11-11 07:26:00', NULL, NULL, '2019-11-11 07:26:31', '2019-11-11 07:26:31', '0a0b5907-c125-4b2a-a96e-a4eb3c76781a'),
(23, 3, NULL, 3, 1, '2019-11-11 07:34:00', NULL, NULL, '2019-11-11 07:34:20', '2019-11-11 07:34:20', '1791b3f3-d442-4d95-bc4b-d6466ee048ae'),
(29, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-11 08:25:33', '2019-11-11 08:25:33', 'b8d8dc67-34c8-46ed-afb6-2db58e111212'),
(30, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-11 08:25:33', '2019-11-11 08:25:33', '27b2383e-2c30-4e0c-a67c-9c47492e34b9'),
(31, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-11 08:28:07', '2019-11-11 08:28:07', 'd488f9e3-858c-44be-8391-3c66b06ab139'),
(32, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-11 08:32:14', '2019-11-11 08:32:14', 'ff371130-e392-4c5f-bd9c-91bac579a526'),
(33, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-12 08:18:23', '2019-11-12 08:18:23', 'a3229645-11fe-40bd-9387-afc0bdb97e9e'),
(34, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-12 08:54:50', '2019-11-12 08:54:50', '2ad51d5d-88e8-4c11-b694-ca56d6d17c12'),
(35, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-12 08:56:19', '2019-11-12 08:56:19', '733b7c03-e9a8-4455-af23-7c792b0ffd50'),
(36, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-12 08:57:24', '2019-11-12 08:57:24', '2dbc24c8-51a2-49ee-a3bc-ed0cccf350c1'),
(37, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-12 08:58:05', '2019-11-12 08:58:05', '1a3ed1ed-a82d-423a-8014-bbf303521084'),
(38, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-12 08:59:38', '2019-11-12 08:59:38', '573fc437-443e-4efc-9a8f-8da32d5973cc'),
(39, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-12 09:11:11', '2019-11-12 09:11:11', '74242ef7-4015-4436-9437-928eaff3df5d'),
(40, 3, NULL, 3, 1, '2019-11-12 11:26:00', NULL, NULL, '2019-11-12 11:26:18', '2019-11-12 11:26:18', '17c4b03b-8ddb-4ba3-a60a-26ce01f627c7'),
(41, 1, NULL, 4, 1, '2019-11-10 05:41:00', NULL, NULL, '2019-11-12 11:46:36', '2019-11-12 11:46:36', '887a1910-640d-4233-a94a-6ea82890cc65'),
(42, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 03:25:14', '2019-11-13 03:25:14', '379655be-4318-43c3-b4b7-bd7b00bc82ab'),
(47, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 08:54:11', '2019-11-13 08:54:11', 'f73eb936-0fe7-467b-ad09-247649f0373a'),
(48, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 08:59:30', '2019-11-13 08:59:30', '2ab53c32-2285-46eb-9427-35d520106f62'),
(49, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 09:00:32', '2019-11-13 09:00:32', '3725892b-e5ec-455d-b1c5-3069df64a3d7'),
(50, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 09:01:02', '2019-11-13 09:01:02', '4f86ae71-3acd-4001-98c2-95d7281db30f'),
(51, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 09:01:43', '2019-11-13 09:01:43', '8300c163-eaf1-45f6-b261-dd74d786ef17'),
(52, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 09:03:58', '2019-11-13 09:03:58', 'af9e134e-1645-4a66-b657-3c25c94fd781'),
(53, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 09:04:49', '2019-11-13 09:04:49', '261eb917-048c-4c8f-97ab-e98a1cf61f40'),
(54, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 09:09:06', '2019-11-13 09:09:06', 'd52a7ac7-5d31-4786-90a4-0eacac2cfaa6'),
(55, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 09:15:59', '2019-11-13 09:15:59', '5cf845e8-faa0-4462-a8b5-3e7b9441fa9c'),
(56, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 09:17:39', '2019-11-13 09:17:39', 'e63922ed-d544-40e7-868d-253b68f133a3'),
(58, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 12:49:20', '2019-11-13 12:49:20', '46160cac-0217-4229-b7c6-7637b6755da2'),
(59, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 12:49:31', '2019-11-13 12:49:31', 'e6cbb785-18cd-43f9-8059-ce0b672a220c'),
(60, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 12:55:58', '2019-11-13 12:55:58', '6c040fec-2e55-4e4d-89dc-337df0f2d678'),
(61, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 12:56:05', '2019-11-13 12:56:05', '1da76aaa-5597-4a92-80af-7f242e14f173'),
(62, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-13 13:02:56', '2019-11-13 13:02:56', 'ca35378a-6659-43d2-96a4-cb509fe11dd9'),
(63, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-14 03:54:56', '2019-11-14 03:54:56', '449b0c73-0410-4e86-802d-39526d4f209f'),
(64, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-14 03:56:24', '2019-11-14 03:56:24', '8c587d78-4cec-48bc-9108-b69a3d4a405c'),
(65, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-14 03:58:54', '2019-11-14 03:58:54', 'f43ab5d8-27e4-4977-9ac5-b08a60a3386c'),
(68, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-14 04:18:21', '2019-11-14 04:18:21', 'ae09c907-b27d-4ae8-8c88-7af20eda00f0'),
(69, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-14 04:18:22', '2019-11-14 04:18:22', '0e9228d1-0d4e-481d-a49a-bbf9094c4a39'),
(70, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-14 08:31:03', '2019-11-14 08:31:03', '271af497-7088-4ff2-b679-e97c53476ba5'),
(71, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-14 08:34:13', '2019-11-14 08:34:13', '1a204855-7d72-43fa-a803-c7cb32d9c963'),
(74, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-14 08:52:35', '2019-11-14 08:52:35', '48c16640-d404-43eb-9de2-2f1aac849e8f'),
(75, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-14 08:52:36', '2019-11-14 08:52:36', '6e106c0c-c6d0-48da-aeac-0adc6d54426b'),
(76, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-14 11:48:44', '2019-11-14 11:48:44', '3f889824-9b29-4db0-bad2-c49b768210ba'),
(77, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-14 12:27:49', '2019-11-14 12:27:49', 'f03e1b61-4f88-4d69-ad26-0497432123ed'),
(78, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-14 12:33:30', '2019-11-14 12:33:30', 'd118b520-0091-4a15-aef3-9d7daf7ba1e1'),
(82, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-17 15:02:11', '2019-11-17 15:02:11', '63494971-c80d-4ccf-98d8-284d07dbbeba'),
(83, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-17 15:11:18', '2019-11-17 15:11:18', '6df1223a-1cb2-4b98-9804-ee48c30d99f7'),
(89, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-17 15:26:39', '2019-11-17 15:26:39', 'a99b1e53-5872-42ec-b6a9-11feef61cf0e'),
(90, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-17 15:26:52', '2019-11-17 15:26:52', 'd8d870e0-fa90-44c4-9b5a-528ee7f5ad61'),
(91, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-17 15:27:36', '2019-11-17 15:27:36', '263e1e88-6494-4c04-9164-8191938b082b'),
(92, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-17 15:27:58', '2019-11-17 15:27:58', '45acd1e6-894f-4358-a18e-606b2c0e3388'),
(93, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, 0, '2019-11-18 04:37:07', '2019-11-18 04:37:07', 'a10f834e-9c54-49dd-a204-58c2065908bf'),
(94, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-18 04:37:08', '2019-11-18 04:37:08', 'bf7cfa7a-d5f2-497b-b918-6a3938419322'),
(95, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, 0, '2019-11-18 04:37:09', '2019-11-18 04:37:09', '0822520f-7ca0-4b80-8955-e6b65dab7991'),
(96, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-18 04:37:09', '2019-11-18 04:37:09', '0c5e63a2-8996-4383-8fd7-b20eeafbaae8'),
(97, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, 0, '2019-11-18 04:37:10', '2019-11-18 04:37:10', '42239b54-59a3-43d0-b471-9486a5a48346'),
(98, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-18 04:37:10', '2019-11-18 04:37:10', 'fc485993-19f9-45e1-9f36-74eb6d177440'),
(99, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, 0, '2019-11-18 04:37:18', '2019-11-18 04:37:18', '9dc425fb-0604-4c2a-8484-8a8bd7bfb5de'),
(100, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-18 04:37:18', '2019-11-18 04:37:18', 'a4e9f71c-30a4-42f0-997d-bd02a252e70c'),
(101, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, 0, '2019-11-18 04:37:18', '2019-11-18 04:37:18', 'd95772da-2751-4f2a-ac91-570ebbdd8369'),
(102, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-18 04:37:19', '2019-11-18 04:37:19', '165217f7-1546-42a5-aafd-94973b2c7bfc'),
(103, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, 0, '2019-11-18 04:37:19', '2019-11-18 04:37:19', 'a40ef35d-01ff-4eff-aa11-b9bba6c4f653'),
(104, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-18 04:37:19', '2019-11-18 04:37:19', '438cb3aa-2596-4c1e-9511-5b3f9ef95d27'),
(105, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, 0, '2019-11-18 06:43:20', '2019-11-18 06:43:20', '964fadd0-f9fa-48dc-b3a6-58057536eafd'),
(106, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-18 06:43:20', '2019-11-18 06:43:20', 'ed96cd31-d431-4ff3-a2bc-f33c1247c05f'),
(107, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-19 10:17:36', '2019-11-19 10:17:36', '76347288-f82a-4e15-ac7c-24c67b7c7026'),
(109, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-19 10:18:30', '2019-11-19 10:18:30', '48ec76bb-563c-4b58-ab98-a9eb0105605d'),
(110, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-19 10:18:37', '2019-11-19 10:18:37', 'f9cd9b37-5891-45da-a2ee-7af2a8c3352a'),
(120, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-19 13:09:49', '2019-11-19 13:09:49', '6550ddae-7bda-474c-8c5f-04f423194de1'),
(121, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-19 13:20:34', '2019-11-19 13:20:34', '3b87d074-69de-4020-9fce-5d380dbf6890'),
(122, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-20 02:30:11', '2019-11-20 02:30:11', '6acd9d9c-1171-4ba8-8ebe-791f6f0d5203'),
(124, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-20 02:37:38', '2019-11-20 02:37:38', 'bb36d99c-9843-4159-a766-a72285e32e18'),
(125, 3, NULL, 3, 1, '2019-11-14 08:34:00', NULL, NULL, '2019-11-20 02:37:46', '2019-11-20 02:37:46', '9aced859-a4eb-4df6-b3cc-101928d73fdf'),
(127, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-20 02:40:31', '2019-11-20 02:40:31', 'baf2399b-a81d-4e87-9e7d-7862c4c12e67'),
(129, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-20 02:41:33', '2019-11-20 02:41:33', '28d44af7-1099-4390-9401-c38bcdbfc106'),
(130, 3, NULL, 3, 1, '2019-11-11 08:03:00', NULL, NULL, '2019-11-20 02:41:38', '2019-11-20 02:41:38', 'a24682cf-ef4e-4760-ba1d-23ebbe02b93e'),
(131, 3, NULL, 3, 1, '2019-11-20 02:42:00', NULL, NULL, '2019-11-20 02:42:03', '2019-11-20 02:42:03', 'e861c774-8158-4686-9b3c-ad9c5f9b7cf2'),
(132, 3, NULL, 3, 1, '2019-11-14 04:06:00', NULL, NULL, '2019-11-20 02:43:26', '2019-11-20 02:43:26', '8bb629eb-24df-4c93-87a5-de959d60ed24'),
(135, 3, NULL, 3, 1, '2019-11-20 08:28:00', NULL, NULL, '2019-11-20 08:40:43', '2019-11-20 08:40:43', 'e688bcb8-e72a-42bf-93a3-ceaf189671e4'),
(136, 3, NULL, 3, 1, '2019-11-20 08:28:00', NULL, NULL, '2019-11-20 08:40:43', '2019-11-20 08:40:43', '0341079a-7c18-4206-868f-22ddffd8fd9e'),
(150, 3, NULL, 3, 1, '2019-11-20 08:28:00', NULL, NULL, '2019-11-20 10:19:07', '2019-11-20 10:19:07', 'c8c9c850-b0f0-44b1-96d1-05556ba9a960'),
(151, 3, NULL, 3, 1, '2019-11-20 08:28:00', NULL, NULL, '2019-11-20 12:26:01', '2019-11-20 12:26:01', 'dbb16fe4-38ef-4d70-adb0-37786df232fa'),
(154, 3, NULL, 3, 1, '2019-11-20 08:28:00', NULL, NULL, '2019-11-20 12:34:34', '2019-11-20 12:34:34', '2301b6d7-d6a3-42a8-9861-dd8432e1bc41'),
(155, 3, NULL, 3, 1, '2019-11-20 08:28:00', NULL, NULL, '2019-11-20 12:52:08', '2019-11-20 12:52:08', 'bf00d998-2739-4b12-9069-e3c078316c70'),
(156, 3, NULL, 3, 1, '2019-11-20 08:28:00', NULL, NULL, '2019-11-21 02:31:25', '2019-11-21 02:31:25', 'fb38c044-6db6-4aa5-9c3d-3a020d6a93c2'),
(159, 3, NULL, 3, 1, '2019-11-21 04:00:00', NULL, NULL, '2019-11-21 03:06:30', '2019-11-21 08:16:02', '27c335a8-7716-437c-8343-c41f6fdf2214'),
(160, 3, NULL, 3, 1, '2019-11-21 02:42:00', NULL, NULL, '2019-11-21 03:06:30', '2019-11-21 03:06:30', '951421c2-56b4-4389-ad2f-b8c956625eb4'),
(163, 3, NULL, 3, 1, '2019-11-21 02:42:00', NULL, NULL, '2019-11-21 03:38:26', '2019-11-21 03:38:26', '5b7de264-0c6d-4ed8-95b8-a228a9206b3d'),
(166, 3, NULL, 3, 1, '2019-11-21 02:42:00', NULL, NULL, '2019-11-21 04:08:48', '2019-11-21 04:08:48', '346a686a-c543-45b3-a739-b7c3f67829cd'),
(168, 3, NULL, 3, 1, '2019-11-21 02:42:00', NULL, NULL, '2019-11-21 08:10:10', '2019-11-21 08:10:10', '8c66c814-6b2c-47b5-9846-766ef93e2dbc'),
(169, 3, NULL, 3, 1, '2019-11-21 02:42:00', NULL, NULL, '2019-11-21 08:12:09', '2019-11-21 08:12:09', '2decb47d-74b7-49ff-930a-c78667f48593'),
(170, 3, NULL, 3, 1, '2019-11-22 02:42:00', NULL, NULL, '2019-11-21 08:12:43', '2019-11-21 08:12:43', 'bfacfae5-94eb-42c4-a755-c3fe92dc056b'),
(171, 3, NULL, 3, 1, '2019-11-21 17:00:00', NULL, NULL, '2019-11-21 08:13:18', '2019-11-21 08:13:18', 'f2008ce0-c005-4c7a-93ea-e9f70349655a'),
(172, 3, NULL, 3, 1, '2019-11-20 17:00:00', NULL, NULL, '2019-11-21 08:14:46', '2019-11-21 08:14:46', 'b96904a9-df98-4cb4-b2fe-95983b44d928'),
(173, 3, NULL, 3, 1, '2019-11-21 17:00:00', NULL, NULL, '2019-11-21 08:15:14', '2019-11-21 08:15:14', '2b091685-c553-42fc-a4d0-eee3460673ad'),
(174, 3, NULL, 3, 1, '2019-11-21 04:00:00', NULL, NULL, '2019-11-21 08:16:02', '2019-11-21 08:16:02', '6667b8e6-b4cf-4d34-920b-e30968fe50dc'),
(177, 3, NULL, 3, 1, '2019-11-21 08:16:00', NULL, NULL, '2019-11-21 09:15:13', '2019-11-21 09:15:13', '194c1663-18a3-43cf-a588-d2157aba5b57'),
(178, 3, NULL, 3, 1, '2019-11-21 08:16:00', NULL, NULL, '2019-11-21 09:15:14', '2019-11-21 09:15:14', '88b5b731-6d1f-4e51-a302-e7bd730af099'),
(193, 3, NULL, 3, 1, '2019-11-21 08:16:00', NULL, NULL, '2019-11-21 10:24:28', '2019-11-21 10:24:28', 'c2cb832b-16eb-405a-8f24-12927271dfee'),
(194, 3, NULL, 3, 1, '2019-11-21 08:16:00', NULL, NULL, '2019-11-21 10:24:51', '2019-11-21 10:24:51', '6dc26d66-f929-4850-a8e3-c5181ceedc2c'),
(199, 3, NULL, 3, 1, '2019-11-22 09:32:00', NULL, NULL, '2019-11-22 10:21:36', '2019-11-22 10:21:36', 'd4cea624-c3e7-44f0-b3c8-ebab2b93d6e7'),
(200, 3, NULL, 3, 1, '2019-11-22 09:32:00', NULL, NULL, '2019-11-22 10:21:36', '2019-11-22 10:21:36', '78043d31-17bc-4367-bed5-1bc99e97a123'),
(201, 3, NULL, 3, 1, '2019-11-22 09:32:00', NULL, NULL, '2019-11-23 03:08:57', '2019-11-23 03:08:57', '4a5cedd7-0e09-4307-8667-f27288d9d3c8'),
(202, 3, NULL, 3, 1, '2019-11-22 09:32:00', NULL, NULL, '2019-11-23 03:09:16', '2019-11-23 03:09:16', 'ce9da9c7-135e-4197-bef1-38ee2243bafb'),
(205, 3, NULL, 3, 1, '2019-11-23 03:15:00', NULL, NULL, '2019-11-23 03:51:22', '2019-11-23 03:51:22', 'b902dad3-26e3-43e6-8ed8-a42789346967'),
(206, 3, NULL, 3, 1, '2019-11-23 03:15:00', NULL, NULL, '2019-11-23 03:51:22', '2019-11-23 03:51:22', '693f1362-11e1-4727-8204-08d77a9532e0'),
(208, 3, NULL, 3, 1, '2019-11-23 03:15:00', NULL, NULL, '2019-11-23 03:55:10', '2019-11-23 03:55:10', 'd50fcb9c-3e82-4620-8a58-7078257e2c58'),
(210, 3, NULL, 3, 1, '2019-11-23 03:15:00', NULL, NULL, '2019-11-23 03:57:24', '2019-11-23 03:57:24', 'ac4e752c-7b41-4d5f-956c-8460f3a234cf'),
(211, 3, NULL, 3, 1, '2019-11-23 03:15:00', NULL, NULL, '2019-11-23 03:58:50', '2019-11-23 03:58:50', 'ac510abb-27bc-4589-9223-43f372fbeddc'),
(212, 3, NULL, 3, 1, '2019-11-23 03:15:00', NULL, NULL, '2019-11-23 04:04:42', '2019-11-23 04:04:42', 'efd0282e-0f75-47fd-887e-df4f2d3e9f16'),
(214, 3, NULL, 3, 1, '2019-11-23 03:15:00', NULL, NULL, '2019-11-23 04:09:03', '2019-11-23 04:09:03', '9e3e08b4-9f02-42ac-b98d-8d85a72c9821'),
(217, 3, NULL, 3, 1, '2019-11-23 04:09:00', NULL, NULL, '2019-11-23 04:13:01', '2019-11-23 04:13:01', '23fc3d68-366f-4395-9e42-24d91a507f5a'),
(218, 3, NULL, 3, 1, '2019-11-23 04:09:00', NULL, NULL, '2019-11-23 04:13:01', '2019-11-23 04:13:01', '4aadc032-95c9-46d7-a7fa-91f55eee4dca'),
(220, 3, NULL, 3, 1, '2019-11-23 04:09:00', NULL, NULL, '2019-11-23 08:46:36', '2019-11-23 08:46:36', 'eb59cf2a-f647-4e07-a589-dcc233675707'),
(222, 3, NULL, 3, 1, '2019-11-23 04:09:00', NULL, NULL, '2019-11-23 08:49:56', '2019-11-23 08:49:56', '0e414af5-202a-4963-babd-66a123dd6e95'),
(224, 3, NULL, 3, 1, '2019-11-23 04:09:00', NULL, NULL, '2019-11-23 08:50:19', '2019-11-23 08:50:19', 'bd04c674-6a7f-4f3f-ab06-9f2c81a63a77'),
(225, 3, NULL, 3, 1, '2019-11-23 04:09:00', NULL, NULL, '2019-11-23 08:50:42', '2019-11-23 08:50:42', '868c7727-6a2b-45dc-ab3b-2f499f2d5a0b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_entrytypes`
--

CREATE TABLE `my_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) DEFAULT 'Title',
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_entrytypes`
--

INSERT INTO `my_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 5, 'Homepage', 'homepage', 0, '{section.name|raw}', 'Title', 1, '2019-11-10 03:23:44', '2019-11-10 10:11:15', '2019-11-18 08:32:05', '3fd50fe6-18fe-4dd7-9424-7dec4e5e5a11'),
(2, 2, 1, 'about', 'about', 1, '{section.name|raw}', '', 1, '2019-11-10 03:24:22', '2019-11-10 03:30:26', '2019-11-10 03:38:32', 'aeaee6e8-8ddc-46fe-b255-6331d9721c74'),
(3, 3, 3, 'Post', 'post', 1, 'Title', '', 1, '2019-11-10 03:25:38', '2019-11-17 15:28:28', NULL, '43656fca-8bf8-427c-b135-8e6f038f4801'),
(4, 1, 4, 'About', 'about', 1, 'Title', '', 2, '2019-11-10 03:39:08', '2019-11-11 08:58:46', NULL, '26ec0db9-1a15-4618-8a4b-a3d73d5c9247');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_fieldgroups`
--

CREATE TABLE `my_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_fieldgroups`
--

INSERT INTO `my_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Common', '2019-11-06 13:42:59', '2019-11-06 13:42:59', '59039bfc-5fa4-4947-94d2-e0a505401af7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_fieldlayoutfields`
--

CREATE TABLE `my_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_fieldlayoutfields`
--

INSERT INTO `my_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 1, 3, 5, 0, 1, '2019-11-10 03:30:26', '2019-11-10 03:30:26', 'b3c20ac8-adb1-4d01-a3e4-8a954439d914'),
(8, 2, 4, 5, 0, 1, '2019-11-10 03:33:55', '2019-11-10 03:33:55', '22d688de-ba27-442b-a1d3-c968d2a06df0'),
(21, 5, 9, 5, 0, 1, '2019-11-10 10:11:15', '2019-11-10 10:11:15', 'ce90ca51-8ad1-4a44-9ac0-4fc7529c38f3'),
(22, 4, 10, 6, 0, 2, '2019-11-11 08:58:46', '2019-11-11 08:58:46', '1364ee93-39fb-464d-9d60-741e003c769b'),
(23, 4, 10, 5, 0, 1, '2019-11-11 08:58:46', '2019-11-11 08:58:46', '491af6d7-5e77-4c61-93b0-0a4c76a094c0'),
(33, 3, 14, 6, 1, 3, '2019-11-17 15:28:28', '2019-11-17 15:28:28', 'a5ba213e-db81-4d21-b012-5bb63f3042a2'),
(34, 3, 14, 7, 0, 2, '2019-11-17 15:28:28', '2019-11-17 15:28:28', '9bc29695-ceac-45af-8c36-da74ba079911'),
(35, 3, 14, 5, 1, 1, '2019-11-17 15:28:28', '2019-11-17 15:28:28', 'ca158b13-0617-4ed6-a566-8b0ec61e7a8a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_fieldlayouts`
--

CREATE TABLE `my_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_fieldlayouts`
--

INSERT INTO `my_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2019-11-10 03:29:47', '2019-11-10 03:29:47', '2019-11-10 03:38:32', '4a725b3d-e405-45b2-82c4-5e821a1ba38c'),
(2, 'craft\\elements\\Entry', '2019-11-10 03:33:55', '2019-11-10 03:33:55', '2019-11-10 03:44:43', '9cafd947-ca0a-409e-952c-7fda956c84d2'),
(3, 'craft\\elements\\Entry', '2019-11-10 03:38:01', '2019-11-10 03:38:01', NULL, 'af3e1dac-d327-4e1e-84ae-cb4f966006ab'),
(4, 'craft\\elements\\Entry', '2019-11-10 03:39:08', '2019-11-10 03:39:08', NULL, '1a1653d7-b891-4d5d-b00b-9f803235767c'),
(5, 'craft\\elements\\Entry', '2019-11-10 10:11:14', '2019-11-10 10:11:14', '2019-11-18 08:32:05', 'da2f3264-2a63-4771-a1ac-6644b1aad60d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_fieldlayouttabs`
--

CREATE TABLE `my_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_fieldlayouttabs`
--

INSERT INTO `my_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 1, 'about', 1, '2019-11-10 03:30:26', '2019-11-10 03:30:26', 'ba3baa4c-096f-4d75-b3a9-f0e2277614f2'),
(4, 2, 'Home', 1, '2019-11-10 03:33:55', '2019-11-10 03:33:55', '1b845a51-4e9e-44c3-a399-93dedd01b151'),
(9, 5, 'Tab 1', 1, '2019-11-10 10:11:15', '2019-11-10 10:11:15', '1defef45-1cd1-4c63-bddc-5a7a2fde4943'),
(10, 4, 'Tab 1', 1, '2019-11-11 08:58:46', '2019-11-11 08:58:46', 'ec2b5769-4af3-4f35-b58a-b28dfc987d1b'),
(14, 3, 'Post', 1, '2019-11-17 15:28:27', '2019-11-17 15:28:27', 'a5e805d6-a4ca-4063-941f-169b2ae510af');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_fields`
--

CREATE TABLE `my_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_fields`
--

INSERT INTO `my_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 1, 'Image', 'image', 'global', '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:129ea671-9029-49fa-8685-b84c0b05f425\",\"defaultUploadLocationSubpath\":\"{slug}\",\"singleUploadLocationSource\":\"volume:129ea671-9029-49fa-8685-b84c0b05f425\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"large\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-11-10 03:03:32', '2019-11-10 05:55:23', 'd3c41393-bd88-435a-b5c1-bbca872c510d'),
(6, 1, 'Content Text', 'contentText', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"\",\"removeNbsp\":\"\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-11-10 03:12:19', '2019-11-13 09:12:34', '536429ec-e223-4f68-9237-3bedc20ae006'),
(7, 1, 'kategori', 'kategori', 'global', '', 1, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"branchLimit\":\"\",\"sources\":\"*\",\"source\":\"group:70d87268-d75d-4e59-9dba-5deeeb3932ff\",\"targetSiteId\":null,\"viewMode\":null,\"limit\":null,\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-11-10 03:13:01', '2019-11-17 14:49:17', '6ffd05b5-57f2-4ae8-8c71-33e7df74f865'),
(9, 1, 'hastag', 'hastag', 'global', '', 0, 'site', NULL, 'craft\\fields\\Tags', '{\"allowMultipleSources\":false,\"allowLimit\":false,\"sources\":\"*\",\"source\":\"taggroup:45a9842d-1482-4d4a-afd8-abb924feb16e\",\"targetSiteId\":null,\"viewMode\":null,\"limit\":null,\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-11-13 02:58:23', '2019-11-13 03:00:50', '042ca71a-1a0d-4d86-baca-817844f4f7e0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_globalsets`
--

CREATE TABLE `my_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_gqlschemas`
--

CREATE TABLE `my_gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `scope` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_info`
--

CREATE TABLE `my_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext,
  `configMap` mediumtext,
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_info`
--

INSERT INTO `my_info` (`id`, `version`, `schemaVersion`, `maintenance`, `config`, `configMap`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.3.16.3', '3.3.3', 0, '{\"fieldGroups\":{\"59039bfc-5fa4-4947-94d2-e0a505401af7\":{\"name\":\"Common\"}},\"siteGroups\":{\"e7955ab5-df32-4b5a-a4b1-deebcad3352c\":{\"name\":\"Fakhri-Craft\"}},\"sites\":{\"3ed3ee5e-f529-45d7-9195-f75d4537b77b\":{\"baseUrl\":\"$DEFAULT_SITE_URL\",\"handle\":\"default\",\"hasUrls\":true,\"language\":\"en-US\",\"name\":\"Fakhri-Craft\",\"primary\":true,\"siteGroup\":\"e7955ab5-df32-4b5a-a4b1-deebcad3352c\",\"sortOrder\":1}},\"email\":{\"fromEmail\":\"fakhricoffe@gmail.com\",\"fromName\":\"Fakhri-Craft\",\"transportType\":\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"},\"system\":{\"edition\":\"solo\",\"name\":\"Fakhri-Craft\",\"live\":true,\"schemaVersion\":\"3.3.3\",\"timeZone\":\"America/Los_Angeles\"},\"users\":{\"requireEmailVerification\":true,\"allowPublicRegistration\":false,\"defaultGroup\":null,\"photoVolumeUid\":null,\"photoSubpath\":\"\"},\"dateModified\":1575533118,\"fields\":{\"d3c41393-bd88-435a-b5c1-bbca872c510d\":{\"name\":\"Image\",\"handle\":\"image\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:129ea671-9029-49fa-8685-b84c0b05f425\",\"defaultUploadLocationSubpath\":\"{slug}\",\"singleUploadLocationSource\":\"volume:129ea671-9029-49fa-8685-b84c0b05f425\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"large\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"59039bfc-5fa4-4947-94d2-e0a505401af7\"},\"536429ec-e223-4f68-9237-3bedc20ae006\":{\"name\":\"Content Text\",\"handle\":\"contentText\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"\",\"removeNbsp\":\"\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"59039bfc-5fa4-4947-94d2-e0a505401af7\"},\"6ffd05b5-57f2-4ae8-8c71-33e7df74f865\":{\"name\":\"kategori\",\"handle\":\"kategori\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Categories\",\"settings\":{\"allowLimit\":false,\"allowMultipleSources\":false,\"branchLimit\":\"\",\"sources\":\"*\",\"source\":\"group:70d87268-d75d-4e59-9dba-5deeeb3932ff\",\"targetSiteId\":null,\"viewMode\":null,\"limit\":null,\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"59039bfc-5fa4-4947-94d2-e0a505401af7\"},\"042ca71a-1a0d-4d86-baca-817844f4f7e0\":{\"name\":\"hastag\",\"handle\":\"hastag\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Tags\",\"settings\":{\"allowMultipleSources\":false,\"allowLimit\":false,\"sources\":\"*\",\"source\":\"taggroup:45a9842d-1482-4d4a-afd8-abb924feb16e\",\"targetSiteId\":null,\"viewMode\":null,\"limit\":null,\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"59039bfc-5fa4-4947-94d2-e0a505401af7\"}},\"plugins\":{\"redactor-split\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"1.0.0\"},\"redactor\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.3.0\"},\"froala-editor\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"1.0.0\"},\"super-table\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.2.1\"}},\"volumes\":{\"129ea671-9029-49fa-8685-b84c0b05f425\":{\"name\":\"image\",\"handle\":\"image\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"/uploads/assets/cover/image\",\"settings\":{\"path\":\"uploads/assets/cover/image\"},\"sortOrder\":1}},\"sections\":{\"7544784e-94b5-49bd-a8e8-5d36a1ac403d\":{\"name\":\"About\",\"handle\":\"About\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"3ed3ee5e-f529-45d7-9195-f75d4537b77b\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"{slug}\",\"template\":\"blog/about\"}},\"entryTypes\":{\"26ec0db9-1a15-4618-8a4b-a3d73d5c9247\":{\"name\":\"About\",\"handle\":\"about\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":2,\"fieldLayouts\":{\"1a1653d7-b891-4d5d-b00b-9f803235767c\":{\"tabs\":[{\"name\":\"Tab 1\",\"sortOrder\":1,\"fields\":{\"536429ec-e223-4f68-9237-3bedc20ae006\":{\"required\":false,\"sortOrder\":2},\"d3c41393-bd88-435a-b5c1-bbca872c510d\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"89ebd83e-c327-44e3-b0e1-b7e86169c749\":{\"name\":\"Post\",\"handle\":\"post\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"3ed3ee5e-f529-45d7-9195-f75d4537b77b\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"post/{slug}\",\"template\":\"blog/_entry\"}},\"entryTypes\":{\"43656fca-8bf8-427c-b135-8e6f038f4801\":{\"name\":\"Post\",\"handle\":\"post\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"af3e1dac-d327-4e1e-84ae-cb4f966006ab\":{\"tabs\":[{\"name\":\"Post\",\"sortOrder\":1,\"fields\":{\"536429ec-e223-4f68-9237-3bedc20ae006\":{\"required\":true,\"sortOrder\":3},\"6ffd05b5-57f2-4ae8-8c71-33e7df74f865\":{\"required\":false,\"sortOrder\":2},\"d3c41393-bd88-435a-b5c1-bbca872c510d\":{\"required\":true,\"sortOrder\":1}}}]}}}}}},\"categoryGroups\":{\"70d87268-d75d-4e59-9dba-5deeeb3932ff\":{\"name\":\"kategori\",\"handle\":\"kategori\",\"structure\":{\"uid\":\"a4746656-f4f8-48d8-9b7b-87167c835358\",\"maxLevels\":null},\"siteSettings\":{\"3ed3ee5e-f529-45d7-9195-f75d4537b77b\":{\"hasUrls\":true,\"uriFormat\":\"kategori/{slug}\",\"template\":\"blog/_entry_kategori_list\"}}}},\"tagGroups\":{\"45a9842d-1482-4d4a-afd8-abb924feb16e\":{\"name\":\"tag\",\"handle\":\"tag\"}}}', '[]', 'hqXxsEGg0W9F', '2019-11-06 13:42:55', '2019-11-06 13:42:55', 'e2928a9d-0ad2-4805-b7ff-ad8663f64f49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_matrixblocks`
--

CREATE TABLE `my_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_matrixblocktypes`
--

CREATE TABLE `my_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_migrations`
--

CREATE TABLE `my_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `type` enum('app','plugin','content') NOT NULL DEFAULT 'app',
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_migrations`
--

INSERT INTO `my_migrations` (`id`, `pluginId`, `type`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'app', 'Install', '2019-11-06 13:43:08', '2019-11-06 13:43:08', '2019-11-06 13:43:08', '23db2c7c-3e14-4807-bcfd-622a6fca8253'),
(2, NULL, 'app', 'm150403_183908_migrations_table_changes', '2019-11-06 13:43:09', '2019-11-06 13:43:09', '2019-11-06 13:43:09', '7b779282-6801-46fb-83f1-501c06ac0b03'),
(3, NULL, 'app', 'm150403_184247_plugins_table_changes', '2019-11-06 13:43:09', '2019-11-06 13:43:09', '2019-11-06 13:43:09', '5c650197-f47c-4b54-9865-802cde7391d2'),
(4, NULL, 'app', 'm150403_184533_field_version', '2019-11-06 13:43:09', '2019-11-06 13:43:09', '2019-11-06 13:43:09', 'fbba10eb-3b1d-41fd-936d-cc373681bd32'),
(5, NULL, 'app', 'm150403_184729_type_columns', '2019-11-06 13:43:09', '2019-11-06 13:43:09', '2019-11-06 13:43:09', 'dae02ff7-eaa2-41e3-aaac-1cc4a1a63d9b'),
(6, NULL, 'app', 'm150403_185142_volumes', '2019-11-06 13:43:09', '2019-11-06 13:43:09', '2019-11-06 13:43:09', '2bc5e6c8-7787-4efc-a29d-6cc81435f8b5'),
(7, NULL, 'app', 'm150428_231346_userpreferences', '2019-11-06 13:43:09', '2019-11-06 13:43:09', '2019-11-06 13:43:09', 'a36db123-0011-4530-900d-83bd14216f45'),
(8, NULL, 'app', 'm150519_150900_fieldversion_conversion', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', 'fa7e59da-5bdd-42f7-8b36-eab7cfc7fd93'),
(9, NULL, 'app', 'm150617_213829_update_email_settings', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', 'fd56c7ab-bc71-415d-8304-572273a20283'),
(10, NULL, 'app', 'm150721_124739_templatecachequeries', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', 'b2701d24-d242-4b62-b50e-069962365150'),
(11, NULL, 'app', 'm150724_140822_adjust_quality_settings', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', 'd85b9450-b7de-4f5d-9ded-4e29fe98cf23'),
(12, NULL, 'app', 'm150815_133521_last_login_attempt_ip', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '982f6199-49d6-4c65-93a6-1247c82e2ce5'),
(13, NULL, 'app', 'm151002_095935_volume_cache_settings', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '405b6130-6479-4417-9a73-fcfd331cca5f'),
(14, NULL, 'app', 'm151005_142750_volume_s3_storage_settings', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '8f2d19cb-e896-4822-8a1a-4cfb9b0744ef'),
(15, NULL, 'app', 'm151016_133600_delete_asset_thumbnails', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', 'b5c37d9e-c4b0-4e65-95bf-e959985abbc7'),
(16, NULL, 'app', 'm151209_000000_move_logo', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', 'ec1443ad-ec73-40b8-b245-69be139487f1'),
(17, NULL, 'app', 'm151211_000000_rename_fileId_to_assetId', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', 'ace07c99-9406-47ce-889e-6953176048ae'),
(18, NULL, 'app', 'm151215_000000_rename_asset_permissions', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2d6b9561-dcb0-49ba-8374-936eb38c9899'),
(19, NULL, 'app', 'm160707_000001_rename_richtext_assetsource_setting', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '2019-11-06 13:43:10', '949cc3cc-cfa5-48bb-bf7c-119a55d3a1f2'),
(20, NULL, 'app', 'm160708_185142_volume_hasUrls_setting', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', 'fc1ea417-55db-4823-b36e-bdd6bbe3f8d6'),
(21, NULL, 'app', 'm160714_000000_increase_max_asset_filesize', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', 'bff24e33-e769-4dab-a052-f939e64ce946'),
(22, NULL, 'app', 'm160727_194637_column_cleanup', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '1ebdf6e3-a75c-4714-91a3-b5a617b54403'),
(23, NULL, 'app', 'm160804_110002_userphotos_to_assets', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '8bb64795-a7db-473e-a31f-ee6c03841a8e'),
(24, NULL, 'app', 'm160807_144858_sites', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', 'b9763683-d2d1-42f8-a14d-5842f601e0d8'),
(25, NULL, 'app', 'm160829_000000_pending_user_content_cleanup', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', 'e2961b64-c5c7-4e20-8254-98de7efb8a71'),
(26, NULL, 'app', 'm160830_000000_asset_index_uri_increase', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '9a2c4173-2b3f-46ef-a588-ad71c2d30643'),
(27, NULL, 'app', 'm160912_230520_require_entry_type_id', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '67031b97-9f20-49fa-a0bb-2e045ee928ba'),
(28, NULL, 'app', 'm160913_134730_require_matrix_block_type_id', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '349de592-70bd-4fa6-9ff5-75cc7b752a94'),
(29, NULL, 'app', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', 'aeccc64f-305f-44be-aa05-6465c27a15aa'),
(30, NULL, 'app', 'm160920_231045_usergroup_handle_title_unique', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', 'cfa9665f-c276-4157-a0af-5bcbc4a534b1'),
(31, NULL, 'app', 'm160925_113941_route_uri_parts', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '6eafc364-9e12-4bbe-a671-741035734454'),
(32, NULL, 'app', 'm161006_205918_schemaVersion_not_null', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '933969c9-e66e-4959-ac18-6afbc3df03ad'),
(33, NULL, 'app', 'm161007_130653_update_email_settings', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', 'b0e4458c-2dbd-4bd0-aede-5260e32b41fc'),
(34, NULL, 'app', 'm161013_175052_newParentId', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', 'ebc5a386-1073-487e-a49b-72be0fd760c1'),
(35, NULL, 'app', 'm161021_102916_fix_recent_entries_widgets', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '9a4f47b7-3615-4103-91cf-902d6e3a3e2c'),
(36, NULL, 'app', 'm161021_182140_rename_get_help_widget', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '2019-11-06 13:43:11', '7470bba9-749a-48dc-b90c-b8985b63932b'),
(37, NULL, 'app', 'm161025_000000_fix_char_columns', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '225ebf94-df11-4850-8365-cd05a11c6bf9'),
(38, NULL, 'app', 'm161029_124145_email_message_languages', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '1b3affde-7e7a-44f3-beac-053f7dbf209f'),
(39, NULL, 'app', 'm161108_000000_new_version_format', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '7cb0de64-85bf-478d-ba03-8211d6f87a06'),
(40, NULL, 'app', 'm161109_000000_index_shuffle', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '73541832-b0ae-4780-b4cd-5953a058d656'),
(41, NULL, 'app', 'm161122_185500_no_craft_app', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', 'e079cab8-9cf9-40e2-ac35-6c08a3d84197'),
(42, NULL, 'app', 'm161125_150752_clear_urlmanager_cache', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '3b9510a9-d087-4d82-848f-82eb0827d05d'),
(43, NULL, 'app', 'm161220_000000_volumes_hasurl_notnull', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '463989ef-116e-4f7c-ab4d-92bed3f87773'),
(44, NULL, 'app', 'm170114_161144_udates_permission', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '1fe95d06-adbd-47fd-9e25-3da8a3a54200'),
(45, NULL, 'app', 'm170120_000000_schema_cleanup', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '65f4b90c-8647-446d-a2c8-d951c08ed90d'),
(46, NULL, 'app', 'm170126_000000_assets_focal_point', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', 'd2d1bd12-7693-47a9-be24-9c00802ce727'),
(47, NULL, 'app', 'm170206_142126_system_name', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '25871d01-316a-43ee-9f61-b798881ebf5d'),
(48, NULL, 'app', 'm170217_044740_category_branch_limits', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', 'fb4e0743-0e56-4324-b13b-e7c82bee9052'),
(49, NULL, 'app', 'm170217_120224_asset_indexing_columns', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '017d969c-e5b7-44a4-9b69-37b84b41b12e'),
(50, NULL, 'app', 'm170223_224012_plain_text_settings', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '1f0c1126-7a30-4736-be3e-aa165f0a2e49'),
(51, NULL, 'app', 'm170227_120814_focal_point_percentage', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '2019-11-06 13:43:12', '0c0306ad-6fd4-47ab-b402-b85778707104'),
(52, NULL, 'app', 'm170228_171113_system_messages', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '7d732ba9-0ce5-4a24-9593-38f088c4c6cc'),
(53, NULL, 'app', 'm170303_140500_asset_field_source_settings', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '62e4adbc-9bc1-4d23-a028-99a294eec8de'),
(54, NULL, 'app', 'm170306_150500_asset_temporary_uploads', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', 'dae605a2-8435-4b48-a24d-b0f8753f9ae7'),
(55, NULL, 'app', 'm170523_190652_element_field_layout_ids', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '90cb75d4-15fc-49fc-ac78-d18d6e5eeeed'),
(56, NULL, 'app', 'm170612_000000_route_index_shuffle', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '55a650d7-1d6a-46d5-87e8-d4d1f2e8c4a3'),
(57, NULL, 'app', 'm170621_195237_format_plugin_handles', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', 'ae599036-20cf-4479-9d36-34ec79607440'),
(58, NULL, 'app', 'm170630_161027_deprecation_line_nullable', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '0717e91f-8c39-4417-9254-9d08080c380f'),
(59, NULL, 'app', 'm170630_161028_deprecation_changes', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', 'ad7b598a-1b84-43ae-8767-a210b0ca6139'),
(60, NULL, 'app', 'm170703_181539_plugins_table_tweaks', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '501e3099-c6dc-4553-8098-582a04b7949a'),
(61, NULL, 'app', 'm170704_134916_sites_tables', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '5d72b530-298e-4108-bd67-18b1f251d466'),
(62, NULL, 'app', 'm170706_183216_rename_sequences', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '85be79d3-a10c-4ac9-96ac-b2098b3a4607'),
(63, NULL, 'app', 'm170707_094758_delete_compiled_traits', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '1f45f193-3032-46fc-90cb-1012aa23a1d5'),
(64, NULL, 'app', 'm170731_190138_drop_asset_packagist', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '28ece0ec-f6ee-4056-ac1b-a720f5b2700a'),
(65, NULL, 'app', 'm170810_201318_create_queue_table', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '2019-11-06 13:43:13', '830232e7-1c94-4e96-9616-f1e88e354d04'),
(66, NULL, 'app', 'm170816_133741_delete_compiled_behaviors', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', 'dc5c74d2-af4e-454a-bbc2-68ffbb61f80a'),
(67, NULL, 'app', 'm170903_192801_longblob_for_queue_jobs', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '28ac940c-5848-4026-80eb-624bcbbafd0a'),
(68, NULL, 'app', 'm170914_204621_asset_cache_shuffle', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '6c938dc8-44d0-4c9a-b6cb-15df0d2a667d'),
(69, NULL, 'app', 'm171011_214115_site_groups', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '4a5453ed-6c1c-4317-83c8-8a123acaa14a'),
(70, NULL, 'app', 'm171012_151440_primary_site', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '49550651-b313-4105-88fd-b902b2aa4a8e'),
(71, NULL, 'app', 'm171013_142500_transform_interlace', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '3385d5aa-146f-4705-a092-b030672575d3'),
(72, NULL, 'app', 'm171016_092553_drop_position_select', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', 'cf1bc806-5e1f-400a-9d7f-088e9c53d76c'),
(73, NULL, 'app', 'm171016_221244_less_strict_translation_method', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', 'ea645920-1eb4-4a95-8de6-cf4c7fd0e630'),
(74, NULL, 'app', 'm171107_000000_assign_group_permissions', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '778719a9-9e60-4b1b-898d-32c3aa0462b6'),
(75, NULL, 'app', 'm171117_000001_templatecache_index_tune', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '12efdcee-0835-4cda-8014-691686b0020f'),
(76, NULL, 'app', 'm171126_105927_disabled_plugins', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '63f437da-6c26-45ab-b4b3-12566a395378'),
(77, NULL, 'app', 'm171130_214407_craftidtokens_table', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '9d28f995-3db7-49f7-81a2-2410001ae7f9'),
(78, NULL, 'app', 'm171202_004225_update_email_settings', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '90cc3449-6aea-48ee-ab9c-3bd72d3d5c7d'),
(79, NULL, 'app', 'm171204_000001_templatecache_index_tune_deux', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '2019-11-06 13:43:14', '4e6a42f6-60e9-4410-b074-b1dc05a09443'),
(80, NULL, 'app', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '96b3dfaf-8cb4-4074-9219-e4f7281913d3'),
(81, NULL, 'app', 'm171218_143135_longtext_query_column', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '1818c698-57ee-4336-9898-b79e7bc95090'),
(82, NULL, 'app', 'm171231_055546_environment_variables_to_aliases', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '6e20e23a-5b07-453a-b187-738e1783e7d2'),
(83, NULL, 'app', 'm180113_153740_drop_users_archived_column', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '80e32d73-857f-453b-acc7-10906562e5a4'),
(84, NULL, 'app', 'm180122_213433_propagate_entries_setting', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '65f5a888-e00a-473f-b3d0-21bc797191d1'),
(85, NULL, 'app', 'm180124_230459_fix_propagate_entries_values', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '26ff48fa-313c-41fc-9412-599a0815f820'),
(86, NULL, 'app', 'm180128_235202_set_tag_slugs', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '33771404-07e4-47fc-941a-0ce0513db3db'),
(87, NULL, 'app', 'm180202_185551_fix_focal_points', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '99b8bb65-5551-43ba-856d-ccc65df3f970'),
(88, NULL, 'app', 'm180217_172123_tiny_ints', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2ee5b5c8-62da-499a-846b-1d38464414a2'),
(89, NULL, 'app', 'm180321_233505_small_ints', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '2019-11-06 13:43:15', '777d0f5a-cff7-4d1f-9f32-979eab581f54'),
(90, NULL, 'app', 'm180328_115523_new_license_key_statuses', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '7cee5fb0-e900-4c4e-ae52-7b37225a044b'),
(91, NULL, 'app', 'm180404_182320_edition_changes', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '8aee3c86-c589-45b6-a082-a01d2eae5d69'),
(92, NULL, 'app', 'm180411_102218_fix_db_routes', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '886b232e-2dd5-4d0d-8a00-d686ba3dec83'),
(93, NULL, 'app', 'm180416_205628_resourcepaths_table', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', 'fc5e428c-627c-4fd9-925b-212ce2b7c416'),
(94, NULL, 'app', 'm180418_205713_widget_cleanup', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', 'f9cc77bb-7613-48a3-9677-07491c098f0e'),
(95, NULL, 'app', 'm180425_203349_searchable_fields', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', 'b8c09412-a2ff-4fe5-a136-b172b21c19a7'),
(96, NULL, 'app', 'm180516_153000_uids_in_field_settings', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', 'bcaa874f-9323-400f-9076-9851ecede562'),
(97, NULL, 'app', 'm180517_173000_user_photo_volume_to_uid', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '50f2846b-4a34-4007-8d29-f120a3f065b0'),
(98, NULL, 'app', 'm180518_173000_permissions_to_uid', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '176d9cb5-ec61-4055-934e-9a86ce2f0093'),
(99, NULL, 'app', 'm180520_173000_matrix_context_to_uids', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', 'da620ecf-686e-4d3f-b44d-77db1476e970'),
(100, NULL, 'app', 'm180521_173000_initial_yml_and_snapshot', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', 'a31171e9-2206-438c-b8ea-8ede4105815f'),
(101, NULL, 'app', 'm180731_162030_soft_delete_sites', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '2019-11-06 13:43:16', '39b7cc60-f47b-4b17-aec4-47d3ac308b72'),
(102, NULL, 'app', 'm180810_214427_soft_delete_field_layouts', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', 'd5990f8e-839d-4ca7-902d-8dd2a0ffddcb'),
(103, NULL, 'app', 'm180810_214439_soft_delete_elements', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', 'faf3b773-4cc7-4665-af8c-312a543f1061'),
(104, NULL, 'app', 'm180824_193422_case_sensitivity_fixes', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', 'affbf18a-f9f5-463e-83b7-a5e66cd14665'),
(105, NULL, 'app', 'm180901_151639_fix_matrixcontent_tables', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '91f94b57-67db-4c76-8997-07f9ea59981a'),
(106, NULL, 'app', 'm180904_112109_permission_changes', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', 'b98d94b9-0191-446e-a8ae-a6b38e0d7888'),
(107, NULL, 'app', 'm180910_142030_soft_delete_sitegroups', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '67cd733d-ffdc-4604-ad50-eebd022e6560'),
(108, NULL, 'app', 'm181011_160000_soft_delete_asset_support', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '8a2728d4-c0dd-47b0-a955-4ee729c8e35e'),
(109, NULL, 'app', 'm181016_183648_set_default_user_settings', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '60c7101e-d1f3-4adf-8a57-abe18e157349'),
(110, NULL, 'app', 'm181017_225222_system_config_settings', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '04ded3da-5f71-46df-95bf-ed70d57b3ae0'),
(111, NULL, 'app', 'm181018_222343_drop_userpermissions_from_config', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '6ec7ac76-aec3-4975-b4f8-4e78731e7e0f'),
(112, NULL, 'app', 'm181029_130000_add_transforms_routes_to_config', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '6a292340-ba1e-4a4a-b4e7-4b08f5c517f4'),
(113, NULL, 'app', 'm181112_203955_sequences_table', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', 'ded95918-6348-492f-a0ce-159278a6e8bc'),
(114, NULL, 'app', 'm181121_001712_cleanup_field_configs', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '06f9ff4a-e2ae-41a2-a2eb-4e3ef0c57c83'),
(115, NULL, 'app', 'm181128_193942_fix_project_config', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', 'f0290f12-5bc2-4d19-a996-f9251570777d'),
(116, NULL, 'app', 'm181130_143040_fix_schema_version', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '8d82ea93-9c88-4b1b-8471-43c205f0e757'),
(117, NULL, 'app', 'm181211_143040_fix_entry_type_uids', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '2019-11-06 13:43:17', '89bfbba4-713c-44cc-89ad-0fc4ec6e958d'),
(118, NULL, 'app', 'm181213_102500_config_map_aliases', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', 'f05f2e22-4c53-4d3c-8eb1-af5999b1f71f'),
(119, NULL, 'app', 'm181217_153000_fix_structure_uids', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '3e29b1e6-a407-44ab-b8c4-0d0d26705bf5'),
(120, NULL, 'app', 'm190104_152725_store_licensed_plugin_editions', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', 'c159ce98-c425-4010-a8e1-9b9561611b0c'),
(121, NULL, 'app', 'm190108_110000_cleanup_project_config', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', 'c5155c63-dd27-45dc-9500-1dcfe82cdf51'),
(122, NULL, 'app', 'm190108_113000_asset_field_setting_change', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', 'bdb12087-9794-4e3d-9b7e-69674768f131'),
(123, NULL, 'app', 'm190109_172845_fix_colspan', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '42226dbd-b47e-4ada-ab96-df0014b3ab93'),
(124, NULL, 'app', 'm190110_150000_prune_nonexisting_sites', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '0538ca4d-90f8-4ecb-a991-b1b28d14ea3d'),
(125, NULL, 'app', 'm190110_214819_soft_delete_volumes', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', 'a2765ef1-fc76-4c9b-8004-da9725570096'),
(126, NULL, 'app', 'm190112_124737_fix_user_settings', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '3588bb64-cc79-4a23-b798-96c98a68974f'),
(127, NULL, 'app', 'm190112_131225_fix_field_layouts', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '510fb4b3-30ea-4477-a8ee-e0d792b40c70'),
(128, NULL, 'app', 'm190112_201010_more_soft_deletes', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', 'aee4b5ea-9857-4439-bb86-314324bc9a9d'),
(129, NULL, 'app', 'm190114_143000_more_asset_field_setting_changes', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', 'f16bc36e-55e1-406c-8bb1-85be81699363'),
(130, NULL, 'app', 'm190121_120000_rich_text_config_setting', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', 'f6d8e4bf-6ccb-4dc9-8685-f27875cc6f75'),
(131, NULL, 'app', 'm190125_191628_fix_email_transport_password', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '2019-11-06 13:43:18', '77a82c64-88f1-480b-8aba-f0dc0cebbe07'),
(132, NULL, 'app', 'm190128_181422_cleanup_volume_folders', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '38ff7f73-e2f7-4fbd-97bd-42c1700b2593'),
(133, NULL, 'app', 'm190205_140000_fix_asset_soft_delete_index', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '5141071d-67fc-444e-b25d-68bd4c2b8b70'),
(134, NULL, 'app', 'm190208_140000_reset_project_config_mapping', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', 'a876fd70-3341-4417-9cca-70f33fc7ece2'),
(135, NULL, 'app', 'm190218_143000_element_index_settings_uid', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '0370cc47-f6f1-4f94-acc9-4c255a3544db'),
(136, NULL, 'app', 'm190312_152740_element_revisions', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', 'da8fe6ce-c664-47f4-8518-371b3acb8c76'),
(137, NULL, 'app', 'm190327_235137_propagation_method', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '3e1a2051-98ae-4a1f-86f4-ca0cce2ecfe1'),
(138, NULL, 'app', 'm190401_223843_drop_old_indexes', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '14f5026d-8b22-4dd4-b83f-f59fe5a8f661'),
(139, NULL, 'app', 'm190416_014525_drop_unique_global_indexes', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '72faddec-a7ae-4f1c-8bf6-62d55cf6721d'),
(140, NULL, 'app', 'm190417_085010_add_image_editor_permissions', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2f6345cd-5e16-47db-ab37-d744862b8e7b'),
(141, NULL, 'app', 'm190502_122019_store_default_user_group_uid', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', 'c5e4eb9e-e612-40f9-99ac-fae0cdfba0ab'),
(142, NULL, 'app', 'm190504_150349_preview_targets', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '93fb98c1-d178-42d8-a5c5-4823ea60f14e'),
(143, NULL, 'app', 'm190516_184711_job_progress_label', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', 'dfaf3205-917a-4d0a-ae84-f97a2bd09d2a'),
(144, NULL, 'app', 'm190523_190303_optional_revision_creators', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '2019-11-06 13:43:19', '494705b1-ab05-4960-8106-2c2af8e6bd52'),
(145, NULL, 'app', 'm190529_204501_fix_duplicate_uids', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '492472fa-eca8-44ef-97a9-214f589328d9'),
(146, NULL, 'app', 'm190605_223807_unsaved_drafts', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '7041700a-560d-4879-b92c-ca758b72777b'),
(147, NULL, 'app', 'm190607_230042_entry_revision_error_tables', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', 'b34a5010-4c09-4f6c-a28f-7a7e0fce4a22'),
(148, NULL, 'app', 'm190608_033429_drop_elements_uid_idx', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '4c22571c-04cf-431e-a62f-cbd2356a7a31'),
(149, NULL, 'app', 'm190617_164400_add_gqlschemas_table', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '0c9729dd-1316-4932-aea5-6fd306c91b36'),
(150, NULL, 'app', 'm190624_234204_matrix_propagation_method', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', 'c1dfe3b6-8d62-43b5-ba14-cb200bd73626'),
(151, NULL, 'app', 'm190711_153020_drop_snapshots', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '3e29b285-032c-425a-8bae-310a46088c05'),
(152, NULL, 'app', 'm190712_195914_no_draft_revisions', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '8e567074-d893-465f-a234-ff7d3a8c7416'),
(153, NULL, 'app', 'm190723_140314_fix_preview_targets_column', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '8ab7a2a9-eec9-4a10-8435-e15aa5bddb96'),
(154, NULL, 'app', 'm190820_003519_flush_compiled_templates', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '51ce295f-8e2b-4e65-8940-291ebe34cb04'),
(155, NULL, 'app', 'm190823_020339_optional_draft_creators', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '2019-11-06 13:43:20', '1eb99bce-a084-47f6-bff4-efe8239980bb'),
(156, 2, 'plugin', 'm180430_204710_remove_old_plugins', '2019-11-10 03:19:31', '2019-11-10 03:19:31', '2019-11-10 03:19:31', 'af0ac6bc-f75f-43f8-a67d-bd26888e194b'),
(157, 2, 'plugin', 'Install', '2019-11-10 03:19:32', '2019-11-10 03:19:32', '2019-11-10 03:19:32', '6e4ee02a-0a79-4605-9f5a-3563892a2e68'),
(158, 2, 'plugin', 'm190225_003922_split_cleanup_html_settings', '2019-11-10 03:19:32', '2019-11-10 03:19:32', '2019-11-10 03:19:32', 'cd3b64ed-0744-45e1-b57f-b155c468f6e9'),
(159, 4, 'plugin', 'Install', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2945ae55-6227-4e7f-b897-b7edad522168'),
(160, 4, 'plugin', 'm180210_000000_migrate_content_tables', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '18ab8b4a-9451-4035-862e-c8eaf65e1c4c'),
(161, 4, 'plugin', 'm180211_000000_type_columns', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '216670e3-5be4-4749-ba1d-4d7d511ebaa8'),
(162, 4, 'plugin', 'm180219_000000_sites', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', 'cf30650a-96ae-4225-9113-1ae29df657ab'),
(163, 4, 'plugin', 'm180220_000000_fix_context', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', 'e92bd3d9-fd30-473f-b22e-b12214db92be'),
(164, 4, 'plugin', 'm190117_000000_soft_deletes', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', 'ce0923ad-b782-41a7-9c2f-ecb8527340ec'),
(165, 4, 'plugin', 'm190117_000001_context_to_uids', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '591e8f19-c347-484d-bbfe-13ad96484259'),
(166, 4, 'plugin', 'm190120_000000_fix_supertablecontent_tables', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '44f90709-0de4-4a1b-88cb-dbbd5fd7f260'),
(167, 4, 'plugin', 'm190131_000000_fix_supertable_missing_fields', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', 'b0920bbc-23d7-4b55-a158-768880346bab'),
(168, 4, 'plugin', 'm190227_100000_fix_project_config', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '9bcf7b49-8a58-47ed-9645-c0274bfa6d5c'),
(169, 4, 'plugin', 'm190511_100000_fix_project_config', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '6a33cc3f-b49b-4077-832a-8e62560665b5'),
(170, 4, 'plugin', 'm190520_000000_fix_project_config', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', 'cff698a6-977b-4b83-bc21-7c698f562139'),
(171, 4, 'plugin', 'm190714_000000_propagation_method', '2019-11-13 03:05:57', '2019-11-13 03:05:57', '2019-11-13 03:05:57', 'f311e3dc-b002-43fc-86d6-3799acaea185'),
(172, 4, 'plugin', 'm191127_000000_fix_width', '2019-11-28 02:58:58', '2019-11-28 02:58:58', '2019-11-28 02:58:58', '1be559ab-a68c-408e-81fa-4c4f26fb2dfe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_plugins`
--

CREATE TABLE `my_plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_plugins`
--

INSERT INTO `my_plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor-split', '1.0.1', '1.0.0', 'unknown', NULL, '2019-11-07 14:04:15', '2019-11-07 14:04:15', '2019-12-05 07:10:36', '574a67b2-6e68-4065-aaa6-fb77261efbe8'),
(2, 'redactor', '2.4.0', '2.3.0', 'unknown', NULL, '2019-11-10 03:19:31', '2019-11-10 03:19:31', '2019-12-05 07:10:36', 'c7daa988-b37f-4296-a9b4-5a09b6447b4c'),
(3, 'froala-editor', '2.9.5', '1.0.0', 'unknown', NULL, '2019-11-12 11:58:31', '2019-11-12 11:58:31', '2019-12-05 07:10:36', '780fa7bf-4e7d-44de-a402-335b5141003e'),
(4, 'super-table', '2.3.1', '2.2.1', 'unknown', NULL, '2019-11-13 03:05:48', '2019-11-13 03:05:48', '2019-12-05 07:10:36', '88d9e03e-b8c4-494f-b725-57e9b24f0e74');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_queue`
--

CREATE TABLE `my_queue` (
  `id` int(11) NOT NULL,
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_relations`
--

CREATE TABLE `my_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_relations`
--

INSERT INTO `my_relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 8, NULL, 7, 1, '2019-11-10 05:57:07', '2019-11-10 05:57:07', '24dc68ec-f6cb-4c4e-ae22-58df3359072f'),
(4, 5, 9, NULL, 7, 1, '2019-11-10 05:58:18', '2019-11-10 05:58:18', '8d91a60d-b1a4-46b9-807d-8f949c1d5033'),
(7, 5, 16, NULL, 7, 1, '2019-11-10 06:34:44', '2019-11-10 06:34:44', '943f8f7a-c3bc-4b37-8320-334174dac1a5'),
(9, 5, 17, NULL, 7, 1, '2019-11-10 06:45:35', '2019-11-10 06:45:35', 'f56a8f40-828c-47cb-8c57-60dcfcb62cd5'),
(37, 5, 23, NULL, 24, 1, '2019-11-11 08:00:06', '2019-11-11 08:00:06', 'f6c821de-7e2b-4687-ba9a-8b15862fde2f'),
(46, 5, 30, NULL, 24, 1, '2019-11-11 08:25:33', '2019-11-11 08:25:33', '9b9cf97c-7e2b-43bf-8e01-8312ae01b130'),
(48, 5, 31, NULL, 24, 1, '2019-11-11 08:28:07', '2019-11-11 08:28:07', '930f44c6-ea47-4fc2-be4d-e1778664a4a0'),
(50, 5, 32, NULL, 24, 1, '2019-11-11 08:32:14', '2019-11-11 08:32:14', 'f340478b-e9ef-4ecd-9629-fce2ce305253'),
(52, 5, 33, NULL, 7, 1, '2019-11-12 08:18:24', '2019-11-12 08:18:24', '12710243-1256-48ed-a53d-b16e4f3c61f1'),
(54, 5, 34, NULL, 7, 1, '2019-11-12 08:54:50', '2019-11-12 08:54:50', 'b0fb1e2f-9066-467d-bbd3-20af3b119b7e'),
(56, 5, 35, NULL, 7, 1, '2019-11-12 08:56:19', '2019-11-12 08:56:19', 'b8d64295-c53c-4450-9775-3a1483209130'),
(58, 5, 36, NULL, 7, 1, '2019-11-12 08:57:24', '2019-11-12 08:57:24', '7ddac3a5-8f4d-4283-afbb-34ebfa13df32'),
(60, 5, 37, NULL, 7, 1, '2019-11-12 08:58:05', '2019-11-12 08:58:05', 'da44c2cc-57c4-4664-8894-b4cb980927c3'),
(62, 5, 38, NULL, 7, 1, '2019-11-12 08:59:38', '2019-11-12 08:59:38', '9c91613b-f58a-4b94-8a10-c5b70f578778'),
(64, 5, 39, NULL, 7, 1, '2019-11-12 09:11:11', '2019-11-12 09:11:11', 'a941bad6-043b-48e2-98e8-9c161fc49b75'),
(66, 5, 41, NULL, 7, 1, '2019-11-12 11:46:36', '2019-11-12 11:46:36', '2d18ff01-8fbb-41f0-b6ed-8fec28869601'),
(69, 5, 42, NULL, 24, 1, '2019-11-13 03:27:16', '2019-11-13 03:27:16', '71f39247-7bef-4106-a848-5b76728fa2fd'),
(71, 5, 47, NULL, 24, 1, '2019-11-13 08:54:11', '2019-11-13 08:54:11', '36f8d72c-4f78-4c7b-bce0-6ba37696f316'),
(73, 5, 48, NULL, 24, 1, '2019-11-13 08:59:30', '2019-11-13 08:59:30', '637d5502-9926-4809-97f3-58fded051d35'),
(75, 5, 49, NULL, 24, 1, '2019-11-13 09:00:32', '2019-11-13 09:00:32', '73c04362-0e42-43ee-a3bd-3203e18785e8'),
(77, 5, 50, NULL, 24, 1, '2019-11-13 09:01:03', '2019-11-13 09:01:03', '51ab3b54-a43d-4cec-8287-bfd95f890872'),
(79, 5, 51, NULL, 24, 1, '2019-11-13 09:01:43', '2019-11-13 09:01:43', 'b97ef703-1540-4668-8b11-9678fcd7f9d5'),
(81, 5, 52, NULL, 24, 1, '2019-11-13 09:03:58', '2019-11-13 09:03:58', '2c2f4a38-1904-43b2-94d2-0d287bac6eb8'),
(83, 5, 53, NULL, 24, 1, '2019-11-13 09:04:49', '2019-11-13 09:04:49', 'cb0247dd-2185-4820-8f1f-6fcfe784b03d'),
(85, 5, 54, NULL, 24, 1, '2019-11-13 09:09:06', '2019-11-13 09:09:06', 'cde861a7-ae20-4ebd-884b-2719e38d097d'),
(87, 5, 55, NULL, 24, 1, '2019-11-13 09:15:59', '2019-11-13 09:15:59', '551ea20e-2840-4daa-b85b-c0fb16aed640'),
(89, 5, 56, NULL, 24, 1, '2019-11-13 09:17:39', '2019-11-13 09:17:39', 'f28f4f9c-be53-4f85-8245-27c021ddede4'),
(96, 5, 58, NULL, 24, 1, '2019-11-13 12:49:20', '2019-11-13 12:49:20', 'fc34092f-746a-47b4-b8fc-d127ff3cd57d'),
(98, 5, 59, NULL, 24, 1, '2019-11-13 12:49:31', '2019-11-13 12:49:31', '6b199fa3-498e-4244-8bda-bb80d780b496'),
(100, 5, 60, NULL, 24, 1, '2019-11-13 12:55:58', '2019-11-13 12:55:58', '4082db07-6f35-46bc-a3bc-477a1a121dd8'),
(102, 5, 61, NULL, 24, 1, '2019-11-13 12:56:05', '2019-11-13 12:56:05', 'd685546f-0fce-4efc-b988-cf1f2fa29643'),
(104, 5, 62, NULL, 24, 1, '2019-11-13 13:02:56', '2019-11-13 13:02:56', 'f10604b8-4a02-4497-a209-4b8e19057513'),
(106, 5, 63, NULL, 24, 1, '2019-11-14 03:54:56', '2019-11-14 03:54:56', '76e4f76d-a98f-4231-94dc-b02af8640a7f'),
(108, 5, 64, NULL, 24, 1, '2019-11-14 03:56:24', '2019-11-14 03:56:24', '86431a09-df7f-4f66-b481-ef6d5ad8bdef'),
(110, 5, 65, NULL, 24, 1, '2019-11-14 03:58:54', '2019-11-14 03:58:54', 'c06639e1-8275-492a-8aa5-e09db1840de3'),
(115, 5, 69, NULL, 67, 1, '2019-11-14 04:18:22', '2019-11-14 04:18:22', '3e844d77-74e0-4bee-88fd-17a1854ccf55'),
(117, 5, 70, NULL, 24, 1, '2019-11-14 08:31:03', '2019-11-14 08:31:03', '09d811ff-fa78-4fd4-8936-39026835329b'),
(119, 5, 71, NULL, 24, 1, '2019-11-14 08:34:13', '2019-11-14 08:34:13', '9d054967-0ced-475f-b006-89afb7ce4cba'),
(124, 5, 75, NULL, 73, 1, '2019-11-14 08:52:36', '2019-11-14 08:52:36', '854f200e-98e7-49fa-af10-19687d93a53e'),
(126, 5, 76, NULL, 24, 1, '2019-11-14 11:48:44', '2019-11-14 11:48:44', '1d815ef4-4a6b-4319-87f4-ed8ac59301cf'),
(128, 5, 77, NULL, 24, 1, '2019-11-14 12:27:49', '2019-11-14 12:27:49', 'bd0af9a6-3306-44ae-bd07-d0c228ac0011'),
(130, 5, 78, NULL, 24, 1, '2019-11-14 12:33:30', '2019-11-14 12:33:30', '03570a59-3090-4326-820e-b312b1a8c5f9'),
(133, 5, 82, NULL, 24, 1, '2019-11-17 15:02:11', '2019-11-17 15:02:11', '54784057-50ab-4597-996e-ca106de4ff54'),
(134, 7, 82, NULL, 79, 1, '2019-11-17 15:02:11', '2019-11-17 15:02:11', 'c626d7a9-be33-4761-a75f-8c38e3d5bf1d'),
(136, 5, 83, NULL, 67, 1, '2019-11-17 15:11:18', '2019-11-17 15:11:18', '8acd878d-bd98-41b8-8e6d-054f97a462f3'),
(161, 5, 89, NULL, 67, 1, '2019-11-17 15:26:39', '2019-11-17 15:26:39', '168de3b5-e86d-4b29-bf90-a32e478d5ccb'),
(163, 5, 90, NULL, 67, 1, '2019-11-17 15:26:52', '2019-11-17 15:26:52', 'd98935b8-f27e-4b68-9963-9c37aa79b684'),
(166, 5, 91, NULL, 73, 1, '2019-11-17 15:27:36', '2019-11-17 15:27:36', '16bc4cff-5657-4f94-bf94-29693a06952a'),
(167, 7, 91, NULL, 80, 1, '2019-11-17 15:27:36', '2019-11-17 15:27:36', '9f2d0b11-e818-48cd-9f62-49744345d394'),
(170, 5, 92, NULL, 67, 1, '2019-11-17 15:27:58', '2019-11-17 15:27:58', '2647521b-8548-47b6-b936-70a6c072870d'),
(171, 7, 92, NULL, 81, 1, '2019-11-17 15:27:58', '2019-11-17 15:27:58', '9c605981-5027-4fe5-845e-2ead7fe167fc'),
(172, 5, 93, NULL, 24, 1, '2019-11-18 04:37:07', '2019-11-18 04:37:07', '973da5ba-5ee9-45b8-bb27-2c161f72e9d1'),
(173, 7, 93, NULL, 79, 1, '2019-11-18 04:37:08', '2019-11-18 04:37:08', '9663bcca-3522-4b88-9ebe-8ae94d2c49a6'),
(174, 5, 94, NULL, 24, 1, '2019-11-18 04:37:09', '2019-11-18 04:37:09', '34830215-c15f-413e-aa29-46c2a25845bf'),
(175, 7, 94, NULL, 79, 1, '2019-11-18 04:37:09', '2019-11-18 04:37:09', '8ac021ab-04d5-450f-b648-710cf26604b7'),
(176, 5, 95, NULL, 67, 1, '2019-11-18 04:37:09', '2019-11-18 04:37:09', '18374c16-aaf3-4fba-9b35-0dbeea046454'),
(177, 7, 95, NULL, 81, 1, '2019-11-18 04:37:09', '2019-11-18 04:37:09', '167ee777-b256-4bf3-8507-6c628c25f247'),
(178, 5, 96, NULL, 67, 1, '2019-11-18 04:37:09', '2019-11-18 04:37:09', 'e85173a9-7922-41d9-83d4-e28350481a4f'),
(179, 7, 96, NULL, 81, 1, '2019-11-18 04:37:09', '2019-11-18 04:37:09', '95a29327-71cf-43ae-9768-b84913283f31'),
(180, 5, 97, NULL, 73, 1, '2019-11-18 04:37:10', '2019-11-18 04:37:10', '2cec7760-24cd-4856-89b6-808e403165de'),
(181, 7, 97, NULL, 80, 1, '2019-11-18 04:37:10', '2019-11-18 04:37:10', '246b4939-e12b-4714-af5a-b692b55fa832'),
(182, 5, 98, NULL, 73, 1, '2019-11-18 04:37:10', '2019-11-18 04:37:10', '116ea40b-ae57-47b6-b7f7-a03caa00895e'),
(183, 7, 98, NULL, 80, 1, '2019-11-18 04:37:10', '2019-11-18 04:37:10', '361e0240-f88e-4332-bcfd-fabbb1e27a1a'),
(184, 5, 99, NULL, 24, 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', '38be1edf-e2b8-4625-aa28-c8725df3158c'),
(185, 7, 99, NULL, 79, 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', '5a610b1d-c8af-446e-9d16-9df1e676251b'),
(186, 5, 100, NULL, 24, 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', '81fc4a9c-bf39-41c2-b3bf-137642664f67'),
(187, 7, 100, NULL, 79, 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', '44ba8a89-b7a7-4b3a-b0cf-3590aaa69ae0'),
(188, 5, 101, NULL, 67, 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', '2014cdea-3e15-4ab6-b750-ec096dede21c'),
(189, 7, 101, NULL, 81, 1, '2019-11-18 04:37:18', '2019-11-18 04:37:18', 'accea355-6203-4e5a-ac85-539a61bea823'),
(190, 5, 102, NULL, 67, 1, '2019-11-18 04:37:19', '2019-11-18 04:37:19', '2494177c-17be-47bf-a483-6a55b498fb57'),
(191, 7, 102, NULL, 81, 1, '2019-11-18 04:37:19', '2019-11-18 04:37:19', '6dde4f97-9190-49e5-9c3f-a7144f0c027f'),
(192, 5, 103, NULL, 73, 1, '2019-11-18 04:37:19', '2019-11-18 04:37:19', '64f15969-c88f-4b86-8b2c-63240514b006'),
(193, 7, 103, NULL, 80, 1, '2019-11-18 04:37:19', '2019-11-18 04:37:19', '134c4c8d-c08e-4612-ac91-522711981f58'),
(194, 5, 104, NULL, 73, 1, '2019-11-18 04:37:20', '2019-11-18 04:37:20', 'f103c4e5-3987-4f10-b3cf-ce851e0caa9f'),
(195, 7, 104, NULL, 80, 1, '2019-11-18 04:37:20', '2019-11-18 04:37:20', '557f16b5-e50f-472b-8e0e-94e320475f68'),
(196, 5, 105, NULL, 24, 1, '2019-11-18 06:43:20', '2019-11-18 06:43:20', '7882fc06-9cea-44e0-b926-a8dc9f784e76'),
(197, 7, 105, NULL, 79, 1, '2019-11-18 06:43:20', '2019-11-18 06:43:20', 'f032b27a-d8cb-4f2e-b9de-7a041735a956'),
(198, 5, 106, NULL, 24, 1, '2019-11-18 06:43:20', '2019-11-18 06:43:20', 'df9f4dfa-afad-45f1-9c7b-a20b6c9a5ab1'),
(199, 7, 106, NULL, 79, 1, '2019-11-18 06:43:20', '2019-11-18 06:43:20', '7711fd8b-ade1-4e29-a817-e7d091ccff81'),
(202, 5, 107, NULL, 67, 1, '2019-11-19 10:17:37', '2019-11-19 10:17:37', '577bd348-ecb7-43b6-b3fa-d78213e6a600'),
(203, 7, 107, NULL, 81, 1, '2019-11-19 10:17:37', '2019-11-19 10:17:37', '5212d96f-428b-42fc-9a71-7c0b62f3e21e'),
(212, 5, 109, NULL, 67, 1, '2019-11-19 10:18:30', '2019-11-19 10:18:30', 'bb6c9af1-37d3-41eb-837e-dadf0d0f2705'),
(213, 7, 109, NULL, 81, 1, '2019-11-19 10:18:30', '2019-11-19 10:18:30', 'c98fcf0f-c981-4423-be8d-215816639033'),
(216, 5, 110, NULL, 67, 1, '2019-11-19 10:18:37', '2019-11-19 10:18:37', '80d5e266-c35b-40a7-b354-b4e18453132a'),
(217, 7, 110, NULL, 81, 1, '2019-11-19 10:18:37', '2019-11-19 10:18:37', '7cccdb09-e676-4949-a47a-0db0e6b102cb'),
(304, 5, 120, NULL, 73, 1, '2019-11-19 13:09:49', '2019-11-19 13:09:49', '7a4f39eb-32f5-4cf5-a1c4-546680c0d104'),
(305, 7, 120, NULL, 80, 1, '2019-11-19 13:09:49', '2019-11-19 13:09:49', 'c06a26df-ddb7-4726-ad21-1ae24dcf5fab'),
(308, 5, 121, NULL, 73, 1, '2019-11-19 13:20:34', '2019-11-19 13:20:34', '82503b7b-7624-4ace-a843-2f224a306e76'),
(309, 7, 121, NULL, 80, 1, '2019-11-19 13:20:34', '2019-11-19 13:20:34', '9bcdb6f4-5dd1-41f9-8f09-9d102196cfb5'),
(312, 5, 122, NULL, 73, 1, '2019-11-20 02:30:11', '2019-11-20 02:30:11', 'a0a247fa-c8b7-4076-bdaa-7587913545eb'),
(313, 7, 122, NULL, 80, 1, '2019-11-20 02:30:11', '2019-11-20 02:30:11', 'e4db4142-087d-4a3e-9e29-60d8e0c3198d'),
(322, 5, 124, NULL, 73, 1, '2019-11-20 02:37:38', '2019-11-20 02:37:38', 'f17e8022-996e-4bfc-a6cc-fc762f359987'),
(323, 7, 124, NULL, 80, 1, '2019-11-20 02:37:38', '2019-11-20 02:37:38', '21374477-3172-433e-8ad9-30966fa282e4'),
(324, 5, 74, NULL, 73, 1, '2019-11-20 02:37:46', '2019-11-20 02:37:46', 'ddcdfdd1-043d-4bdf-8bf7-4619fe5bac39'),
(325, 7, 74, NULL, 80, 1, '2019-11-20 02:37:46', '2019-11-20 02:37:46', '94c32ae6-72c3-42da-91d2-e04b22f0aee5'),
(326, 5, 125, NULL, 73, 1, '2019-11-20 02:37:46', '2019-11-20 02:37:46', '367b56d6-a2e2-4ad9-baca-12dd20e8fd42'),
(327, 7, 125, NULL, 80, 1, '2019-11-20 02:37:46', '2019-11-20 02:37:46', 'b1278594-ec46-4b62-9d13-02abed6cda2f'),
(392, 5, 127, NULL, 24, 1, '2019-11-20 02:40:31', '2019-11-20 02:40:31', '88d20d6f-8d86-4952-875b-3a077dea35bd'),
(393, 7, 127, NULL, 79, 1, '2019-11-20 02:40:31', '2019-11-20 02:40:31', '9488cf47-85e0-40ca-8db0-ceece61e3832'),
(404, 5, 129, NULL, 24, 1, '2019-11-20 02:41:33', '2019-11-20 02:41:33', 'a95d5e6f-b991-483d-b6bd-908fa1e7b682'),
(405, 7, 129, NULL, 79, 1, '2019-11-20 02:41:33', '2019-11-20 02:41:33', '2d70c2ac-ca87-409e-95a0-b00e3167ddd6'),
(406, 5, 29, NULL, 24, 1, '2019-11-20 02:41:38', '2019-11-20 02:41:38', 'daa44c0e-aea6-482f-8742-0a0c02ef3c0f'),
(407, 7, 29, NULL, 79, 1, '2019-11-20 02:41:38', '2019-11-20 02:41:38', '25208db4-e9a5-474b-95fb-430937a7a605'),
(408, 5, 130, NULL, 24, 1, '2019-11-20 02:41:38', '2019-11-20 02:41:38', 'd6022646-2ba8-4621-b18a-e133de7ce4f9'),
(409, 7, 130, NULL, 79, 1, '2019-11-20 02:41:38', '2019-11-20 02:41:38', 'edd1b473-f6d6-4ac7-8b59-b501f9319be7'),
(410, 5, 68, NULL, 67, 1, '2019-11-20 02:43:26', '2019-11-20 02:43:26', 'c97c4e6b-c858-4cd6-b7e1-a4d21b6d4d96'),
(411, 7, 68, NULL, 81, 1, '2019-11-20 02:43:26', '2019-11-20 02:43:26', 'e638cb2d-23e3-4cb0-a2c9-d32e53d832fb'),
(412, 5, 132, NULL, 67, 1, '2019-11-20 02:43:26', '2019-11-20 02:43:26', '14f83951-8f6f-4211-8a0e-9a8424c719e1'),
(413, 7, 132, NULL, 81, 1, '2019-11-20 02:43:26', '2019-11-20 02:43:26', 'fb7f81b6-3e5c-4403-9c70-4c60fe0dd71e'),
(433, 5, 136, NULL, 134, 1, '2019-11-20 08:40:44', '2019-11-20 08:40:44', 'b64b5b6c-8f2c-424e-aa6b-1ac0589b2d4f'),
(434, 7, 136, NULL, 79, 1, '2019-11-20 08:40:44', '2019-11-20 08:40:44', '3b9118af-9a92-4647-95cf-8dc2f5401b6f'),
(663, 5, 150, NULL, 134, 1, '2019-11-20 10:19:07', '2019-11-20 10:19:07', '9ca4e6af-de7f-4f1a-a27f-37a71f8e2cd2'),
(664, 7, 150, NULL, 79, 1, '2019-11-20 10:19:07', '2019-11-20 10:19:07', 'e7e04399-a5cf-42a8-9f2d-e77d7bdb65a5'),
(667, 5, 151, NULL, 134, 1, '2019-11-20 12:26:01', '2019-11-20 12:26:01', '4690d9dc-6d66-4cdf-8e0a-51a8e1b5972b'),
(668, 7, 151, NULL, 79, 1, '2019-11-20 12:26:01', '2019-11-20 12:26:01', 'fe5c4a2f-2b41-46bb-aea8-65788cb15143'),
(677, 5, 154, NULL, 134, 1, '2019-11-20 12:34:34', '2019-11-20 12:34:34', 'c9d3f633-b960-42c9-b27b-fcd8c0ae0791'),
(678, 7, 154, NULL, 79, 1, '2019-11-20 12:34:34', '2019-11-20 12:34:34', 'd2f0f130-6ffc-467b-a467-38fbc4c9a07a'),
(681, 5, 155, NULL, 134, 1, '2019-11-20 12:52:08', '2019-11-20 12:52:08', 'fa64a6ee-4ce0-470b-9e8c-f850dbf2b48f'),
(682, 7, 155, NULL, 79, 1, '2019-11-20 12:52:08', '2019-11-20 12:52:08', '3c65e8a4-8444-4ee4-b759-cadbc9ebfdb9'),
(683, 5, 135, NULL, 134, 1, '2019-11-21 02:31:24', '2019-11-21 02:31:24', '2a730cba-70db-4a13-9cce-b64b0a7c0852'),
(684, 7, 135, NULL, 79, 1, '2019-11-21 02:31:24', '2019-11-21 02:31:24', '09b5375c-ae51-4757-be54-ed0cd637982d'),
(685, 5, 156, NULL, 134, 1, '2019-11-21 02:31:25', '2019-11-21 02:31:25', '4d319d73-14fa-4ab3-9df3-5aefad553ff1'),
(686, 7, 156, NULL, 79, 1, '2019-11-21 02:31:25', '2019-11-21 02:31:25', '36a56ac3-070c-43e0-b679-29b2815b7ca1'),
(700, 5, 160, NULL, 158, 1, '2019-11-21 03:06:30', '2019-11-21 03:06:30', '2d2aece0-427d-42c4-848e-de5bc5a360b4'),
(701, 7, 160, NULL, 79, 1, '2019-11-21 03:06:30', '2019-11-21 03:06:30', '8625aa58-89bd-48fa-8ace-6e3feb43aa84'),
(866, 5, 163, NULL, 158, 1, '2019-11-21 03:38:26', '2019-11-21 03:38:26', '472a3a7d-f1a7-439c-b6c7-9e8b673797e2'),
(867, 7, 163, NULL, 79, 1, '2019-11-21 03:38:26', '2019-11-21 03:38:26', 'b23532a6-9036-4df0-96ac-15184f575181'),
(870, 5, 166, NULL, 158, 1, '2019-11-21 04:08:48', '2019-11-21 04:08:48', 'be1317de-d869-454e-9298-1b2480b0c227'),
(871, 7, 166, NULL, 79, 1, '2019-11-21 04:08:48', '2019-11-21 04:08:48', 'b4ebe9b4-6b6c-4376-b42d-02ee57e0d0ed'),
(880, 5, 168, NULL, 158, 1, '2019-11-21 08:10:10', '2019-11-21 08:10:10', '7c6023b0-dd21-41dd-a2f8-4d2d6029353f'),
(881, 7, 168, NULL, 79, 1, '2019-11-21 08:10:10', '2019-11-21 08:10:10', '387dd40e-8060-4d1f-b8fb-5581deeac75e'),
(884, 5, 169, NULL, 158, 1, '2019-11-21 08:12:09', '2019-11-21 08:12:09', '645ee634-31bc-459c-88b3-e96ccfe46c5a'),
(885, 7, 169, NULL, 79, 1, '2019-11-21 08:12:09', '2019-11-21 08:12:09', '0bc21ac2-7435-4838-81de-873c9d191c2d'),
(888, 5, 170, NULL, 158, 1, '2019-11-21 08:12:43', '2019-11-21 08:12:43', '0dc81b38-eec6-4ed6-b4a5-a2ba7f8bd660'),
(889, 7, 170, NULL, 79, 1, '2019-11-21 08:12:43', '2019-11-21 08:12:43', '040ff9a1-e93c-48b9-8e02-526a371dba32'),
(892, 5, 171, NULL, 158, 1, '2019-11-21 08:13:18', '2019-11-21 08:13:18', '0391d199-749f-498e-867e-940f62eeb565'),
(893, 7, 171, NULL, 79, 1, '2019-11-21 08:13:18', '2019-11-21 08:13:18', '9b1fbd65-ed26-4a72-b133-8624fb8cb23a'),
(896, 5, 172, NULL, 158, 1, '2019-11-21 08:14:46', '2019-11-21 08:14:46', '47a36eb6-4d10-4f74-b8a9-a9eed9570096'),
(897, 7, 172, NULL, 79, 1, '2019-11-21 08:14:46', '2019-11-21 08:14:46', '4aa03364-f33c-4f08-80ba-1b22f4f36697'),
(900, 5, 173, NULL, 158, 1, '2019-11-21 08:15:14', '2019-11-21 08:15:14', '5463ccf7-6720-4744-96b0-2dc089c9edd5'),
(901, 7, 173, NULL, 79, 1, '2019-11-21 08:15:14', '2019-11-21 08:15:14', 'e8da1543-90a0-4a9a-b312-2c1f85878947'),
(902, 5, 159, NULL, 158, 1, '2019-11-21 08:16:02', '2019-11-21 08:16:02', 'a1023674-8362-4a52-8850-a2ea194663a7'),
(903, 7, 159, NULL, 79, 1, '2019-11-21 08:16:02', '2019-11-21 08:16:02', 'aa83e131-185c-4bcf-9128-c0986d76fc42'),
(904, 5, 174, NULL, 158, 1, '2019-11-21 08:16:02', '2019-11-21 08:16:02', 'ae060be1-1abc-4df0-a717-3973664874a5'),
(905, 7, 174, NULL, 79, 1, '2019-11-21 08:16:02', '2019-11-21 08:16:02', '7089a3ad-7f05-4755-91bd-47d64e69d387'),
(1439, 5, 178, NULL, 176, 1, '2019-11-21 09:15:15', '2019-11-21 09:15:15', '2e0a20d6-afaa-4cd1-83a8-dd393cd816a5'),
(1440, 7, 178, NULL, 81, 1, '2019-11-21 09:15:15', '2019-11-21 09:15:15', '1f5a74c3-1855-481a-a17b-861eccbbb5ab'),
(1553, 5, 193, NULL, 176, 1, '2019-11-21 10:24:28', '2019-11-21 10:24:28', 'bfbd230b-ae68-45a5-984d-7e8598fd9148'),
(1554, 7, 193, NULL, 81, 1, '2019-11-21 10:24:28', '2019-11-21 10:24:28', 'e1b8cbfd-ddee-4b6d-9731-fb334ac2f8db'),
(1555, 5, 177, NULL, 176, 1, '2019-11-21 10:24:51', '2019-11-21 10:24:51', '7f45aade-2cba-43d0-92a7-197828c97776'),
(1556, 7, 177, NULL, 81, 1, '2019-11-21 10:24:51', '2019-11-21 10:24:51', '4472b7bf-e9bb-479c-942b-872f96af7322'),
(1557, 5, 194, NULL, 176, 1, '2019-11-21 10:24:51', '2019-11-21 10:24:51', '692a8222-2949-4b54-91ad-b819ad5edc90'),
(1558, 7, 194, NULL, 81, 1, '2019-11-21 10:24:51', '2019-11-21 10:24:51', '6b6ff9ff-e2e7-41ad-ae3a-fef06f1bc3b7'),
(1656, 5, 200, NULL, 196, 1, '2019-11-22 10:21:36', '2019-11-22 10:21:36', '20a7d09a-b5fb-4d7b-aa10-d6d10ac9f4ba'),
(1657, 7, 200, NULL, 81, 1, '2019-11-22 10:21:37', '2019-11-22 10:21:37', '89e5b0c3-c709-4603-a57c-c394bd4163c6'),
(1660, 5, 201, NULL, 196, 1, '2019-11-23 03:08:57', '2019-11-23 03:08:57', '7f477bfb-3df2-4df1-a8b6-64caba1620a7'),
(1661, 7, 201, NULL, 81, 1, '2019-11-23 03:08:57', '2019-11-23 03:08:57', 'eb185deb-6bc9-4f84-96a7-5928a93399d4'),
(1662, 5, 199, NULL, 196, 1, '2019-11-23 03:09:16', '2019-11-23 03:09:16', '72104033-f03f-46f4-aae4-e15f1a731c15'),
(1663, 7, 199, NULL, 81, 1, '2019-11-23 03:09:16', '2019-11-23 03:09:16', 'd1d108f0-c103-41df-a20c-44e80f3bca4e'),
(1664, 5, 202, NULL, 196, 1, '2019-11-23 03:09:16', '2019-11-23 03:09:16', 'de12bfec-6e62-4be9-84a3-e0b3f1da2880'),
(1665, 7, 202, NULL, 81, 1, '2019-11-23 03:09:16', '2019-11-23 03:09:16', '0d44ef1a-2fc9-4a10-a31d-6bde0e517978'),
(1707, 5, 206, NULL, 204, 1, '2019-11-23 03:51:22', '2019-11-23 03:51:22', '26ca2a7c-862a-4c85-b1c4-ef2291d69fe2'),
(1708, 7, 206, NULL, 80, 1, '2019-11-23 03:51:22', '2019-11-23 03:51:22', 'b8858ff7-6036-437f-9583-58f88a14a9e0'),
(1717, 5, 208, NULL, 204, 1, '2019-11-23 03:55:10', '2019-11-23 03:55:10', '1bab4331-01b0-446d-9a00-f91fd06012ea'),
(1718, 7, 208, NULL, 80, 1, '2019-11-23 03:55:10', '2019-11-23 03:55:10', '13044364-8243-43f2-a285-32722d4880a0'),
(1727, 5, 210, NULL, 204, 1, '2019-11-23 03:57:24', '2019-11-23 03:57:24', '780aa136-7eac-4e8d-a64a-c0dafbd4a2e6'),
(1728, 7, 210, NULL, 80, 1, '2019-11-23 03:57:24', '2019-11-23 03:57:24', 'c52a03b7-ce8e-4b50-aafc-a0b4143dd865'),
(1731, 5, 211, NULL, 204, 1, '2019-11-23 03:58:50', '2019-11-23 03:58:50', '95e6cd65-1954-4612-b274-2cb30cc2f5d2'),
(1732, 7, 211, NULL, 80, 1, '2019-11-23 03:58:50', '2019-11-23 03:58:50', '3e88f5d1-c644-436d-aa05-a055588691a3'),
(1735, 5, 212, NULL, 204, 1, '2019-11-23 04:04:42', '2019-11-23 04:04:42', 'a37ebb93-6308-4046-857f-c6a2e9f52461'),
(1736, 7, 212, NULL, 80, 1, '2019-11-23 04:04:42', '2019-11-23 04:04:42', '2acf739a-9991-4e01-8120-67632e299d80'),
(1737, 5, 205, NULL, 213, 1, '2019-11-23 04:09:03', '2019-11-23 04:09:03', '7a4ca3bb-5812-4ca6-905b-01c8b3215b6d'),
(1738, 7, 205, NULL, 80, 1, '2019-11-23 04:09:03', '2019-11-23 04:09:03', 'c4b7dc11-7b7c-4e34-884a-e53f09fc32f6'),
(1739, 5, 214, NULL, 213, 1, '2019-11-23 04:09:03', '2019-11-23 04:09:03', 'a806b391-053c-47ca-b2c4-5d41daac6886'),
(1740, 7, 214, NULL, 80, 1, '2019-11-23 04:09:03', '2019-11-23 04:09:03', 'c1a0ca59-912a-442f-924a-f91b24cdbbbd'),
(1750, 5, 218, NULL, 216, 1, '2019-11-23 04:13:01', '2019-11-23 04:13:01', '281774be-8f92-460b-81c9-3112cc857a94'),
(1751, 7, 218, NULL, 80, 1, '2019-11-23 04:13:01', '2019-11-23 04:13:01', 'b9f132d3-ba0a-4826-9fe5-a1b79432f04d'),
(1784, 5, 220, NULL, 216, 1, '2019-11-23 08:46:36', '2019-11-23 08:46:36', '7131e0b8-d07c-496e-bb8c-a7d89d2ea439'),
(1785, 7, 220, NULL, 80, 1, '2019-11-23 08:46:36', '2019-11-23 08:46:36', 'b90dbe51-1e2c-453c-b947-5b1bfb1e1a9c'),
(1812, 5, 222, NULL, 216, 1, '2019-11-23 08:49:56', '2019-11-23 08:49:56', '00fbc569-47fe-451b-9987-69a3a104e7d1'),
(1813, 7, 222, NULL, 80, 1, '2019-11-23 08:49:56', '2019-11-23 08:49:56', '21caa92e-996e-40a0-b94f-7ef5a59f4ba5'),
(1822, 5, 224, NULL, 216, 1, '2019-11-23 08:50:19', '2019-11-23 08:50:19', '0bbfa7a8-cc06-4aaf-a62a-b60f158ec628'),
(1823, 7, 224, NULL, 80, 1, '2019-11-23 08:50:19', '2019-11-23 08:50:19', '44691be3-58fd-4ffa-af2c-54ca4177c96d'),
(1824, 5, 217, NULL, 216, 1, '2019-11-23 08:50:42', '2019-11-23 08:50:42', '998fec97-2c79-4bc8-b702-249e202267b6'),
(1825, 7, 217, NULL, 80, 1, '2019-11-23 08:50:42', '2019-11-23 08:50:42', 'dac1973f-7acc-4510-a5d7-05cc4bcf8a8e'),
(1826, 5, 225, NULL, 216, 1, '2019-11-23 08:50:43', '2019-11-23 08:50:43', '340ae993-627f-4ccc-863c-53a5bedb23f2'),
(1827, 7, 225, NULL, 80, 1, '2019-11-23 08:50:43', '2019-11-23 08:50:43', '7312e062-eb63-4faa-92f2-1f6129d581c8'),
(1828, 5, 5, NULL, 7, 1, '2019-12-05 08:05:29', '2019-12-05 08:05:29', 'c7766ccc-5ce6-4b68-a3b9-ef4693666ffd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_resourcepaths`
--

CREATE TABLE `my_resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_resourcepaths`
--

INSERT INTO `my_resourcepaths` (`hash`, `path`) VALUES
('107462c3', '@lib/element-resize-detector'),
('10c070b1', '@app/web/assets/fields/dist'),
('123e867c', '@lib/fabric'),
('12fa9d5c', '@craft/web/assets/editsection/dist'),
('172fbf77', '@app/web/assets/updates/dist'),
('176211e2', '@lib/axios'),
('1be313ad', '@app/web/assets/matrixsettings/dist'),
('1c2ccf3c', '@app/web/assets/editentry/dist'),
('1dbf5436', '@craft/web/assets/craftsupport/dist'),
('1ddec60c', '@app/web/assets/installer/dist'),
('220a9a2e', '@app/web/assets/updateswidget/dist'),
('2288646b', '@lib/fileupload'),
('23079587', '@lib/d3'),
('237b54d4', '@lib/picturefill'),
('24df6816', '@lib/jquery-touch-events'),
('2659629f', '@lib/prismjs'),
('26fff877', '@bower/jquery/dist'),
('27160e4b', '@app/web/assets/tablesettings/dist'),
('278f8179', '@craft/web/assets/login/dist'),
('2b57a0e2', '@lib/jquery.payment'),
('2b5df82d', '@craft/web/assets/utilities/dist'),
('2c15f2ff', '@app/web/assets/login/dist'),
('2c4e3150', '@app/web/assets/dashboard/dist'),
('2f40c334', '@app/web/assets/updateswidget/dist'),
('306b442', '@app/web/assets/cp/dist'),
('31fca28e', '@app/web/assets/craftsupport/dist'),
('37700f0a', '@lib/velocity'),
('37784c21', '@app/web/assets/craftsupport/dist'),
('37ca34bd', '@lib/fabric'),
('3bae993b', '@app/web/assets/updates/dist'),
('3c8a0d3c', '@app/web/assets/dashboard/dist'),
('42ab36d9', '@vendor/froala/wysiwyg-editor'),
('45b127bb', '@lib/fabric'),
('482b9d7e', '@app/web/assets/feed/dist'),
('4867b7c0', '@lib/d3'),
('4e6a4c10', '@lib/jquery-touch-events'),
('4f5f5f58', '@lib/xregexp'),
('5062de7a', '@craft/web/assets/editentry/dist'),
('50f7f385', '@lib/garnishjs'),
('510a0508', '@app/web/assets/recententries/dist'),
('5582ba9c', '@vendor/craftcms/redactor/lib/redactor-plugins/fullscreen'),
('570c1902', '@app/web/assets/login/dist'),
('57ca9dc6', '@verbb/supertable/resources/dist'),
('5be94fb9', '@craft/web/assets/dashboard/dist'),
('5c282a93', '@lib/selectize'),
('5ee57793', '@lib/vue'),
('60c2a5ee', '@lib/jquery-ui'),
('60faf850', '@app/web/assets/matrixsettings/dist'),
('6145c565', '@lib/velocity'),
('638d594f', '@froala/craftfroalawysiwyg/assets/field/dist'),
('69bb366c', '@lib/timepicker'),
('6b6987ae', '@lib/xregexp'),
('6bd11976', '@craft/web/assets/updateswidget/dist'),
('6dcd7644', '@lib/garnishjs'),
('6e492226', '@lib/velocity'),
('7350c9d1', '@lib/jquery-touch-events'),
('747e8b17', '@app/web/assets/editsection/dist'),
('74f4f513', '@lib/picturefill'),
('7507c5ac', '@lib/fileupload'),
('7615ce57', '@craft/web/assets/matrixsettings/dist'),
('76ffb286', '@app/web/assets/editcategory/dist'),
('7785242', '@lib/garnishjs'),
('77cd6aa', '@lib/fileupload'),
('7b84d303', '@lib/d3'),
('7bcc713b', '@vendor/craftcms/redactor/lib/redactor-plugins/video'),
('7bf81250', '@lib/picturefill'),
('7c523c6d', '@app/web/assets/pluginstore/dist'),
('7fe51559', '@app/web/assets/updater/dist'),
('8c0f34c8', '@app/web/assets/tablesettings/dist'),
('8e56c266', '@lib/garnishjs'),
('9573cced', '@lib/velocity'),
('96629d95', '@app/web/assets/recententries/dist'),
('9873ab1', '@craft/web/assets/feed/dist'),
('995af2e7', '@lib/element-resize-detector'),
('9a42208d', '@lib/jquery-ui'),
('9b101658', '@lib/fabric'),
('9b28c48f', '@app/web/assets/recententries/dist'),
('9c3e6bd6', '@app/web/assets/utilities/dist'),
('a27930c6', '@lib/jquery.payment'),
('a4ef4c94', '@craft/web/assets/tablesettings/dist'),
('a5b57167', '@lib/element-resize-detector'),
('a5cdcb29', '@lib'),
('a712c458', '@lib/selectize'),
('a713912b', '@vendor/craftcms/redactor/lib/redactor'),
('a778a54c', '@lib/jquery-ui'),
('a81e231b', '@lib/selectize'),
('a9a47cdb', '@app/web/assets/utilities/dist'),
('aa55c4f0', '@lib/picturefill'),
('aba6f44f', '@lib/fileupload'),
('adb15b0d', '@app/web/assets/feed/dist'),
('af77f2bb', '@lib/prismjs'),
('afd16853', '@bower/jquery/dist'),
('b02c24a0', '@app/web/assets/cp/dist'),
('b03f3e7b', '@app/web/assets/feed/dist'),
('b0c6d5b7', '@app/web/assets/cp/dist'),
('b465b193', '@lib/xregexp'),
('b4eac973', '@lib/jquery-touch-events'),
('b552a94c', '@app/web/assets/recententries/dist'),
('b8482736', '@app/web/assets/editcategory/dist'),
('b9764aef', '@craft/web/assets/cp/dist'),
('bac91ea7', '@app/web/assets/editsection/dist'),
('bd27cde4', '@app/web/assets/login/dist'),
('bdb5e139', '@vendor/craftcms/redactor/lib/redactor-plugins/counter'),
('c226b63e', '@app/web/assets/craftsupport/dist'),
('c4a97de5', '@app/web/assets/updateswidget/dist'),
('cbb8f58b', '@lib/timepicker'),
('ced55320', '@lib/element-resize-detector'),
('d29b5a8c', '@app/web/assets/editentry/dist'),
('d2e28a52', '@app/web/assets/craftsupport/dist'),
('d2f347d7', '@craft/web/assets/recententries/dist'),
('d461bf96', '@craft/web/assets/pluginstore/dist'),
('d4e15c7', '@app/web/assets/fields/dist'),
('d75cce0', '@app/web/assets/cp/dist'),
('d910cb4f', '@app/web/assets/dashboard/dist'),
('d919a265', '@app/web/assets/feed/dist'),
('db300188', '@craft/web/assets/updater/dist'),
('df6afe3d', '@lib/xregexp'),
('df9425e0', '@app/web/assets/dashboard/dist'),
('e3e14703', '@lib/jquery.payment'),
('e5ca6509', '@app/web/assets/installer/dist'),
('e8285ba9', '@app/web/assets/updateswidget/dist'),
('e87f6e29', '@craft/redactor/assets/field/dist'),
('ee491f96', '@bower/jquery/dist'),
('f0f7048b', '@lib/jquery-ui'),
('f18a0aa4', '@craft/web/assets/fields/dist'),
('f2aa4327', '@lib/d3'),
('f3a18a89', '@app/web/assets/deprecationerrors/dist'),
('f55ab6c2', '@app/web/assets/fields/dist'),
('f5f69101', '@lib/jquery.payment'),
('f73dcfe4', '@vendor/craftcms/redactor/lib/redactor-plugins/properties'),
('f85ec994', '@bower/jquery/dist'),
('fb5a3fd', '@verbb/supertable/resources/dist'),
('fe2be974', '@lib/selectize'),
('ff2c0239', '@app/web/assets/login/dist');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_revisions`
--

CREATE TABLE `my_revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_revisions`
--

INSERT INTO `my_revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 5, 1, 1, NULL),
(2, 5, 1, 2, NULL),
(3, 5, 1, 3, NULL),
(4, 11, 1, 1, NULL),
(5, 14, 1, 1, NULL),
(6, 5, 1, 4, NULL),
(7, 5, 1, 5, NULL),
(8, 14, 1, 2, NULL),
(9, 29, 1, 1, NULL),
(10, 29, 1, 2, NULL),
(11, 29, 1, 3, NULL),
(12, 5, 1, 6, NULL),
(13, 5, 1, 7, NULL),
(14, 5, 1, 8, NULL),
(15, 5, 1, 9, NULL),
(16, 5, 1, 10, NULL),
(17, 5, 1, 11, NULL),
(18, 5, 1, 12, NULL),
(19, 29, 1, 4, NULL),
(20, 29, 1, 5, NULL),
(21, 29, 1, 6, NULL),
(22, 29, 1, 7, NULL),
(23, 29, 1, 8, NULL),
(24, 29, 1, 9, NULL),
(25, 29, 1, 10, NULL),
(26, 29, 1, 11, NULL),
(27, 29, 1, 12, NULL),
(28, 29, 1, 13, NULL),
(29, 29, 1, 14, 'Applied “Draft 2”'),
(30, 29, 1, 15, NULL),
(31, 29, 1, 16, NULL),
(32, 29, 1, 17, NULL),
(33, 29, 1, 18, NULL),
(34, 29, 1, 19, NULL),
(35, 29, 1, 20, NULL),
(36, 29, 1, 21, NULL),
(37, 68, 1, 1, NULL),
(38, 29, 1, 22, NULL),
(39, 29, 1, 23, NULL),
(40, 74, 1, 1, NULL),
(41, 29, 1, 24, NULL),
(42, 29, 1, 25, NULL),
(43, 29, 1, 26, NULL),
(44, 29, 1, 27, NULL),
(45, 68, 1, 2, NULL),
(46, 68, 1, 3, 'Applied “Draft 1”'),
(47, 68, 1, 4, NULL),
(48, 74, 1, 2, NULL),
(49, 68, 1, 5, NULL),
(50, 93, 1, 1, NULL),
(51, 95, 1, 1, NULL),
(52, 97, 1, 1, NULL),
(53, 99, 1, 1, NULL),
(54, 101, 1, 1, NULL),
(55, 103, 1, 1, NULL),
(56, 105, 1, 1, NULL),
(57, 68, 1, 6, NULL),
(58, 68, 1, 7, 'Applied “Draft 1”'),
(59, 68, 1, 8, NULL),
(60, 74, 1, 3, 'Applied “Draft 1”'),
(61, 74, 1, 4, NULL),
(62, 74, 1, 5, NULL),
(63, 74, 1, 6, 'Applied “Draft 1”'),
(64, 74, 1, 7, NULL),
(65, 29, 1, 28, 'Applied “Draft 2”'),
(66, 29, 1, 29, 'Applied “Draft 2”'),
(67, 29, 1, 30, NULL),
(68, 68, 1, 9, NULL),
(69, 135, 1, 1, NULL),
(70, 135, 1, 2, 'Applied “Draft 1”'),
(71, 135, 1, 3, NULL),
(72, 135, 1, 4, 'Applied “Draft 1”'),
(73, 135, 1, 5, NULL),
(74, 135, 1, 6, NULL),
(75, 159, 1, 1, NULL),
(76, 159, 1, 2, 'Applied “Draft 1”'),
(77, 159, 1, 3, NULL),
(78, 159, 1, 4, 'Applied “Draft 1”'),
(79, 159, 1, 5, NULL),
(80, 159, 1, 6, NULL),
(81, 159, 1, 7, NULL),
(82, 159, 1, 8, NULL),
(83, 159, 1, 9, NULL),
(84, 159, 1, 10, NULL),
(85, 177, 1, 1, NULL),
(86, 177, 1, 2, 'Applied “Draft 1”'),
(87, 177, 1, 3, NULL),
(88, 199, 1, 1, NULL),
(89, 199, 1, 2, NULL),
(90, 199, 1, 3, NULL),
(91, 205, 1, 1, NULL),
(92, 205, 1, 2, 'Applied “Draft 1”'),
(93, 205, 1, 3, 'Applied “Draft 1”'),
(94, 205, 1, 4, NULL),
(95, 205, 1, 5, NULL),
(96, 205, 1, 6, NULL),
(97, 217, 1, 1, NULL),
(98, 217, 1, 2, 'Applied “Draft 1”'),
(99, 217, 1, 3, 'Applied “Draft 1”'),
(100, 217, 1, 4, 'Applied “Draft 1”'),
(101, 217, 1, 5, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_searchindex`
--

CREATE TABLE `my_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_searchindex`
--

INSERT INTO `my_searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin '),
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' fakhricoffe gmail com '),
(1, 'slug', 0, 1, ''),
(2, 'slug', 0, 1, ' teknologi '),
(2, 'title', 0, 1, ' teknologi '),
(7, 'filename', 0, 1, ' bio jpg '),
(7, 'extension', 0, 1, ' jpg '),
(7, 'kind', 0, 1, ' image '),
(7, 'slug', 0, 1, ''),
(7, 'title', 0, 1, ' bio '),
(5, 'slug', 0, 1, ' about '),
(5, 'title', 0, 1, ' fakhri alauddin '),
(11, 'slug', 0, 1, ' homepage '),
(11, 'title', 0, 1, ' homepage '),
(14, 'title', 0, 1, ' title '),
(14, 'slug', 0, 1, ' homepage '),
(24, 'filename', 0, 1, ' nodejs 1572857062882 3093 jpg '),
(24, 'extension', 0, 1, ' jpg '),
(24, 'kind', 0, 1, ' image '),
(24, 'slug', 0, 1, ''),
(24, 'title', 0, 1, ' nodejs 1572857062882 3093 '),
(25, 'filename', 0, 1, ' capture jpg '),
(25, 'extension', 0, 1, ' jpg '),
(25, 'kind', 0, 1, ' image '),
(25, 'slug', 0, 1, ''),
(25, 'title', 0, 1, ' capture '),
(26, 'filename', 0, 1, ' capture2 jpg '),
(26, 'extension', 0, 1, ' jpg '),
(26, 'kind', 0, 1, ' image '),
(26, 'slug', 0, 1, ''),
(26, 'title', 0, 1, ' capture2 '),
(28, 'filename', 0, 1, ' capture1 jpg '),
(28, 'extension', 0, 1, ' jpg '),
(28, 'kind', 0, 1, ' image '),
(28, 'slug', 0, 1, ''),
(28, 'title', 0, 1, ' capture1 '),
(85, 'extension', 0, 1, ' png '),
(85, 'kind', 0, 1, ' image '),
(85, 'slug', 0, 1, ''),
(85, 'title', 0, 1, ' cara install composer di windows 1024x607 '),
(86, 'filename', 0, 1, ' cara install composer di windows jpeg '),
(86, 'extension', 0, 1, ' jpeg '),
(86, 'kind', 0, 1, ' image '),
(86, 'slug', 0, 1, ''),
(86, 'title', 0, 1, ' cara install composer di windows '),
(87, 'filename', 0, 1, ' install composer di windows jpeg '),
(87, 'extension', 0, 1, ' jpeg '),
(87, 'kind', 0, 1, ' image '),
(87, 'slug', 0, 1, ''),
(87, 'title', 0, 1, ' install composer di windows '),
(68, 'field', 7, 1, ' php '),
(85, 'filename', 0, 1, ' cara install composer di windows 1024x607 png '),
(29, 'field', 7, 1, ' javascript '),
(81, 'slug', 0, 1, ' php '),
(81, 'title', 0, 1, ' php '),
(80, 'slug', 0, 1, ' cpp '),
(80, 'title', 0, 1, ' c '),
(79, 'title', 0, 1, ' javascript '),
(79, 'slug', 0, 1, ' javascript '),
(74, 'title', 0, 1, ' cara install dev c di windows '),
(74, 'slug', 0, 1, ' cara install dev c di windows '),
(73, 'slug', 0, 1, ''),
(73, 'title', 0, 1, ' dev '),
(29, 'title', 0, 1, ' menginstall node js npm di windows '),
(29, 'slug', 0, 1, ' menginstall node js npm di windows '),
(67, 'filename', 0, 1, ' composer jpg '),
(67, 'extension', 0, 1, ' jpg '),
(67, 'kind', 0, 1, ' image '),
(67, 'slug', 0, 1, ''),
(67, 'title', 0, 1, ' composer '),
(68, 'slug', 0, 1, ' install php composer di windows '),
(68, 'title', 0, 1, ' install php composer di windows '),
(73, 'filename', 0, 1, ' dev jpg '),
(73, 'extension', 0, 1, ' jpg '),
(73, 'kind', 0, 1, ' image '),
(43, 'filename', 0, 1, ' capture3 jpg '),
(43, 'extension', 0, 1, ' jpg '),
(43, 'kind', 0, 1, ' image '),
(43, 'slug', 0, 1, ''),
(43, 'title', 0, 1, ' capture3 '),
(44, 'filename', 0, 1, ' capture4 jpg '),
(44, 'extension', 0, 1, ' jpg '),
(44, 'kind', 0, 1, ' image '),
(44, 'slug', 0, 1, ''),
(44, 'title', 0, 1, ' capture4 '),
(45, 'filename', 0, 1, ' capture5 jpg '),
(45, 'extension', 0, 1, ' jpg '),
(45, 'kind', 0, 1, ' image '),
(45, 'slug', 0, 1, ''),
(45, 'title', 0, 1, ' capture5 '),
(46, 'filename', 0, 1, ' capture8 jpg '),
(46, 'extension', 0, 1, ' jpg '),
(46, 'kind', 0, 1, ' image '),
(46, 'slug', 0, 1, ''),
(46, 'title', 0, 1, ' capture8 '),
(88, 'filename', 0, 1, ' kegunaan composer jpeg '),
(88, 'extension', 0, 1, ' jpeg '),
(88, 'kind', 0, 1, ' image '),
(88, 'slug', 0, 1, ''),
(88, 'title', 0, 1, ' kegunaan composer '),
(74, 'field', 7, 1, ' c '),
(93, 'slug', 0, 1, ' menginstall node js npm di windows 1 '),
(93, 'title', 0, 1, ' menginstall node js npm di windows copy '),
(93, 'field', 7, 1, ' javascript '),
(95, 'slug', 0, 1, ' install php composer di windows 1 '),
(95, 'title', 0, 1, ' install php composer di windows copy '),
(95, 'field', 7, 1, ' php '),
(97, 'slug', 0, 1, ' cara install dev c di windows 1 '),
(97, 'title', 0, 1, ' cara install dev c di windows copy '),
(97, 'field', 7, 1, ' c '),
(99, 'slug', 0, 1, ' menginstall node js npm di windows 2 '),
(99, 'title', 0, 1, ' menginstall node js npm di windows copy '),
(99, 'field', 7, 1, ' javascript '),
(101, 'slug', 0, 1, ' install php composer di windows 2 '),
(101, 'title', 0, 1, ' install php composer di windows copy '),
(101, 'field', 7, 1, ' php '),
(103, 'slug', 0, 1, ' cara install dev c di windows 2 '),
(103, 'title', 0, 1, ' cara install dev c di windows copy '),
(103, 'field', 7, 1, ' c '),
(105, 'slug', 0, 1, ' menginstall node js npm di windows 1 '),
(105, 'title', 0, 1, ' menginstall node js npm di windows copy '),
(105, 'field', 7, 1, ' javascript '),
(111, 'filename', 0, 1, ' dev 11 jpg '),
(111, 'extension', 0, 1, ' jpg '),
(111, 'kind', 0, 1, ' image '),
(111, 'slug', 0, 1, ''),
(111, 'title', 0, 1, ' dev 11 '),
(112, 'filename', 0, 1, ' dev 10 jpg '),
(112, 'extension', 0, 1, ' jpg '),
(112, 'kind', 0, 1, ' image '),
(112, 'slug', 0, 1, ''),
(112, 'title', 0, 1, ' dev 10 '),
(113, 'filename', 0, 1, ' dev 6 jpg '),
(113, 'extension', 0, 1, ' jpg '),
(113, 'kind', 0, 1, ' image '),
(113, 'slug', 0, 1, ''),
(113, 'title', 0, 1, ' dev 6 '),
(114, 'filename', 0, 1, ' dev 5 jpg '),
(114, 'extension', 0, 1, ' jpg '),
(114, 'kind', 0, 1, ' image '),
(114, 'slug', 0, 1, ''),
(114, 'title', 0, 1, ' dev 5 '),
(115, 'filename', 0, 1, ' dev 3 jpg '),
(115, 'extension', 0, 1, ' jpg '),
(115, 'kind', 0, 1, ' image '),
(115, 'slug', 0, 1, ''),
(115, 'title', 0, 1, ' dev 3 '),
(116, 'filename', 0, 1, ' dev 2 jpg '),
(116, 'extension', 0, 1, ' jpg '),
(116, 'kind', 0, 1, ' image '),
(116, 'slug', 0, 1, ''),
(116, 'title', 0, 1, ' dev 2 '),
(117, 'filename', 0, 1, ' dev 9 jpg '),
(117, 'extension', 0, 1, ' jpg '),
(117, 'kind', 0, 1, ' image '),
(117, 'slug', 0, 1, ''),
(117, 'title', 0, 1, ' dev 9 '),
(118, 'filename', 0, 1, ' dev 4 jpg '),
(118, 'extension', 0, 1, ' jpg '),
(118, 'kind', 0, 1, ' image '),
(118, 'slug', 0, 1, ''),
(118, 'title', 0, 1, ' dev 4 '),
(134, 'filename', 0, 1, ' gulp ban png '),
(134, 'extension', 0, 1, ' png '),
(134, 'kind', 0, 1, ' image '),
(134, 'slug', 0, 1, ''),
(134, 'title', 0, 1, ' gulp ban '),
(135, 'title', 0, 1, ' tutorial minify javascript menggunakan gulp '),
(135, 'slug', 0, 1, ' tutorial minify javascript menggunakan gulp '),
(137, 'filename', 0, 1, ' gulp 2 jpg '),
(137, 'extension', 0, 1, ' jpg '),
(137, 'kind', 0, 1, ' image '),
(137, 'slug', 0, 1, ''),
(137, 'title', 0, 1, ' gulp 2 '),
(138, 'filename', 0, 1, ' gulp 1 jpg '),
(138, 'extension', 0, 1, ' jpg '),
(138, 'kind', 0, 1, ' image '),
(138, 'slug', 0, 1, ''),
(138, 'title', 0, 1, ' gulp 1 '),
(139, 'filename', 0, 1, ' gulp jpg '),
(139, 'extension', 0, 1, ' jpg '),
(139, 'kind', 0, 1, ' image '),
(139, 'slug', 0, 1, ''),
(139, 'title', 0, 1, ' gulp '),
(140, 'filename', 0, 1, ' gulp 5 jpg '),
(140, 'extension', 0, 1, ' jpg '),
(140, 'kind', 0, 1, ' image '),
(140, 'slug', 0, 1, ''),
(140, 'title', 0, 1, ' gulp 5 '),
(141, 'filename', 0, 1, ' gulp 4 jpg '),
(141, 'extension', 0, 1, ' jpg '),
(141, 'kind', 0, 1, ' image '),
(141, 'slug', 0, 1, ''),
(141, 'title', 0, 1, ' gulp 4 '),
(142, 'filename', 0, 1, ' gulp 3 jpg '),
(142, 'extension', 0, 1, ' jpg '),
(142, 'kind', 0, 1, ' image '),
(142, 'slug', 0, 1, ''),
(142, 'title', 0, 1, ' gulp 3 '),
(143, 'filename', 0, 1, ' gulp 6 jpg '),
(143, 'extension', 0, 1, ' jpg '),
(143, 'kind', 0, 1, ' image '),
(143, 'slug', 0, 1, ''),
(143, 'title', 0, 1, ' gulp 6 '),
(144, 'filename', 0, 1, ' gulp 8 jpg '),
(144, 'extension', 0, 1, ' jpg '),
(144, 'kind', 0, 1, ' image '),
(144, 'slug', 0, 1, ''),
(144, 'title', 0, 1, ' gulp 8 '),
(145, 'filename', 0, 1, ' gulp 7 jpg '),
(145, 'extension', 0, 1, ' jpg '),
(145, 'kind', 0, 1, ' image '),
(145, 'slug', 0, 1, ''),
(145, 'title', 0, 1, ' gulp 7 '),
(146, 'filename', 0, 1, ' gulp 10 jpg '),
(146, 'extension', 0, 1, ' jpg '),
(146, 'kind', 0, 1, ' image '),
(146, 'slug', 0, 1, ''),
(146, 'title', 0, 1, ' gulp 10 '),
(147, 'filename', 0, 1, ' gulp 9 jpg '),
(147, 'extension', 0, 1, ' jpg '),
(147, 'kind', 0, 1, ' image '),
(147, 'slug', 0, 1, ''),
(147, 'title', 0, 1, ' gulp 9 '),
(148, 'filename', 0, 1, ' gulp 11 jpg '),
(148, 'extension', 0, 1, ' jpg '),
(148, 'kind', 0, 1, ' image '),
(148, 'slug', 0, 1, ''),
(148, 'title', 0, 1, ' gulp 11 '),
(135, 'field', 7, 1, ' javascript '),
(152, 'filename', 0, 1, ' gulp 7 jpg '),
(152, 'extension', 0, 1, ' jpg '),
(152, 'kind', 0, 1, ' image '),
(152, 'slug', 0, 1, ''),
(152, 'title', 0, 1, ' gulp 7 '),
(158, 'filename', 0, 1, ' share fb png '),
(158, 'extension', 0, 1, ' png '),
(158, 'kind', 0, 1, ' image '),
(158, 'slug', 0, 1, ''),
(158, 'title', 0, 1, ' share fb '),
(159, 'title', 0, 1, ' library javascript menarik untuk web dev '),
(159, 'slug', 0, 1, ' library javascript menarik untuk web dev '),
(162, 'filename', 0, 1, ' typed js jpg '),
(162, 'extension', 0, 1, ' jpg '),
(162, 'kind', 0, 1, ' image '),
(162, 'slug', 0, 1, ''),
(162, 'title', 0, 1, ' typed js '),
(159, 'field', 7, 1, ' javascript '),
(164, 'filename', 0, 1, ' dracula jpg '),
(164, 'extension', 0, 1, ' jpg '),
(164, 'kind', 0, 1, ' image '),
(164, 'slug', 0, 1, ''),
(164, 'title', 0, 1, ' dracula '),
(165, 'filename', 0, 1, ' swal2 logo png '),
(165, 'extension', 0, 1, ' png '),
(165, 'kind', 0, 1, ' image '),
(165, 'slug', 0, 1, ''),
(165, 'title', 0, 1, ' swal2 logo '),
(176, 'filename', 0, 1, ' termux png '),
(176, 'extension', 0, 1, ' png '),
(176, 'kind', 0, 1, ' image '),
(176, 'slug', 0, 1, ''),
(176, 'title', 0, 1, ' termux '),
(177, 'slug', 0, 1, ' menjalankan program php di android menggunakan termux '),
(177, 'title', 0, 1, ' menjalankan program php di android menggunakan termux '),
(179, 'filename', 0, 1, ' screenshot 2019 11 21 16 09 16 49 png '),
(179, 'extension', 0, 1, ' png '),
(179, 'kind', 0, 1, ' image '),
(179, 'slug', 0, 1, ''),
(179, 'title', 0, 1, ' screenshot 2019 11 21 16 09 16 49 '),
(180, 'filename', 0, 1, ' screenshot 2019 11 21 16 06 23 75 84d3000e3f4017145260f7618db1d683 png '),
(180, 'extension', 0, 1, ' png '),
(180, 'kind', 0, 1, ' image '),
(180, 'slug', 0, 1, ''),
(180, 'title', 0, 1, ' screenshot 2019 11 21 16 06 23 75 84d3000e3f4017145260f7618db1d683 '),
(181, 'filename', 0, 1, ' screenshot 2019 11 21 16 04 02 88 png '),
(181, 'extension', 0, 1, ' png '),
(181, 'kind', 0, 1, ' image '),
(181, 'slug', 0, 1, ''),
(181, 'title', 0, 1, ' screenshot 2019 11 21 16 04 02 88 '),
(182, 'filename', 0, 1, ' screenshot 2019 11 21 16 03 16 75 84d3000e3f4017145260f7618db1d683 png '),
(182, 'extension', 0, 1, ' png '),
(182, 'kind', 0, 1, ' image '),
(182, 'slug', 0, 1, ''),
(182, 'title', 0, 1, ' screenshot 2019 11 21 16 03 16 75 84d3000e3f4017145260f7618db1d683 '),
(183, 'filename', 0, 1, ' screenshot 2019 11 21 16 03 00 50 84d3000e3f4017145260f7618db1d683 png '),
(183, 'extension', 0, 1, ' png '),
(183, 'kind', 0, 1, ' image '),
(183, 'slug', 0, 1, ''),
(183, 'title', 0, 1, ' screenshot 2019 11 21 16 03 00 50 84d3000e3f4017145260f7618db1d683 '),
(184, 'filename', 0, 1, ' screenshot 2019 11 21 16 02 19 80 84d3000e3f4017145260f7618db1d683 png '),
(184, 'extension', 0, 1, ' png '),
(184, 'kind', 0, 1, ' image '),
(184, 'slug', 0, 1, ''),
(184, 'title', 0, 1, ' screenshot 2019 11 21 16 02 19 80 84d3000e3f4017145260f7618db1d683 '),
(185, 'filename', 0, 1, ' screenshot 2019 11 21 16 01 39 90 84d3000e3f4017145260f7618db1d683 png '),
(185, 'extension', 0, 1, ' png '),
(185, 'kind', 0, 1, ' image '),
(185, 'slug', 0, 1, ''),
(185, 'title', 0, 1, ' screenshot 2019 11 21 16 01 39 90 84d3000e3f4017145260f7618db1d683 '),
(186, 'filename', 0, 1, ' run png '),
(186, 'extension', 0, 1, ' png '),
(186, 'kind', 0, 1, ' image '),
(186, 'slug', 0, 1, ''),
(186, 'title', 0, 1, ' run '),
(187, 'kind', 0, 1, ' image '),
(187, 'extension', 0, 1, ' png '),
(187, 'filename', 0, 1, ' localhost png '),
(188, 'filename', 0, 1, ' file sd png '),
(188, 'extension', 0, 1, ' png '),
(188, 'kind', 0, 1, ' image '),
(188, 'slug', 0, 1, ''),
(188, 'title', 0, 1, ' file sd '),
(189, 'filename', 0, 1, ' ls png '),
(189, 'extension', 0, 1, ' png '),
(189, 'kind', 0, 1, ' image '),
(189, 'slug', 0, 1, ''),
(189, 'title', 0, 1, ' ls '),
(190, 'kind', 0, 1, ' image '),
(190, 'extension', 0, 1, ' png '),
(190, 'filename', 0, 1, ' pkg php png '),
(190, 'slug', 0, 1, ''),
(190, 'title', 0, 1, ' pkg php '),
(192, 'filename', 0, 1, ' setup storage png '),
(192, 'extension', 0, 1, ' png '),
(192, 'kind', 0, 1, ' image '),
(192, 'slug', 0, 1, ''),
(192, 'title', 0, 1, ' setup storage '),
(187, 'slug', 0, 1, ''),
(187, 'title', 0, 1, ' localhost '),
(177, 'field', 7, 1, ' php '),
(196, 'filename', 0, 1, ' shutterstock 345474398 jpg '),
(196, 'extension', 0, 1, ' jpg '),
(196, 'kind', 0, 1, ' image '),
(196, 'slug', 0, 1, ''),
(196, 'title', 0, 1, ' shutterstock 345474398 '),
(197, 'filename', 0, 1, ' code jpg '),
(197, 'extension', 0, 1, ' jpg '),
(197, 'kind', 0, 1, ' image '),
(197, 'slug', 0, 1, ''),
(197, 'title', 0, 1, ' code '),
(198, 'filename', 0, 1, ' code1 jpg '),
(198, 'extension', 0, 1, ' jpg '),
(198, 'kind', 0, 1, ' image '),
(198, 'slug', 0, 1, ''),
(198, 'title', 0, 1, ' code1 '),
(199, 'slug', 0, 1, ' source code pola segitiga di php '),
(199, 'title', 0, 1, ' source code pola segitiga di php '),
(199, 'field', 7, 1, ' php '),
(204, 'filename', 0, 1, ' cpp programming 636525045026590902 png '),
(204, 'extension', 0, 1, ' png '),
(204, 'kind', 0, 1, ' image '),
(204, 'slug', 0, 1, ''),
(204, 'title', 0, 1, ' cpp programming 636525045026590902 '),
(205, 'field', 7, 1, ' c '),
(205, 'slug', 0, 1, ' pengenalan bahasa pemrograman c '),
(205, 'title', 0, 1, ' pengenalan bahasa pemrograman c '),
(213, 'filename', 0, 1, ' titleshadow 1024x341 png '),
(213, 'extension', 0, 1, ' png '),
(213, 'kind', 0, 1, ' image '),
(213, 'slug', 0, 1, ''),
(213, 'title', 0, 1, ' title shadow 1024x341 '),
(216, 'filename', 0, 1, ' course c mediumbanner jpg '),
(216, 'extension', 0, 1, ' jpg '),
(216, 'kind', 0, 1, ' image '),
(216, 'slug', 0, 1, ''),
(216, 'title', 0, 1, ' course c mediumbanner '),
(217, 'field', 7, 1, ' c '),
(217, 'title', 0, 1, ' macam macam file header pada c '),
(217, 'slug', 0, 1, ' macam macam file header pada c ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_sections`
--

CREATE TABLE `my_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_sections`
--

INSERT INTO `my_sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'About', 'About', 'channel', 1, 'all', NULL, '2019-11-10 03:23:44', '2019-12-05 08:05:18', NULL, '7544784e-94b5-49bd-a8e8-5d36a1ac403d'),
(2, NULL, 'about', 'about', 'channel', 1, 'all', NULL, '2019-11-10 03:24:22', '2019-11-10 03:38:32', '2019-11-10 03:38:32', 'b147c39c-21a7-4bd3-9db4-108ec69548d1'),
(3, NULL, 'Post', 'post', 'channel', 1, 'all', NULL, '2019-11-10 03:25:38', '2019-12-05 07:46:21', NULL, '89ebd83e-c327-44e3-b0e1-b7e86169c749');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_sections_sites`
--

CREATE TABLE `my_sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_sections_sites`
--

INSERT INTO `my_sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '{slug}', 'blog/about', 1, '2019-11-10 03:23:44', '2019-12-05 08:05:18', 'b62402fd-3d5f-4958-9a50-3d3ec965ef3b'),
(2, 2, 1, 1, 'about/{slug}', 'blog/_entry', 1, '2019-11-10 03:24:22', '2019-11-10 03:38:32', 'c3883cdc-2b11-46cb-a271-9495edcbc4aa'),
(3, 3, 1, 1, 'post/{slug}', 'blog/_entry', 1, '2019-11-10 03:25:38', '2019-12-05 07:46:21', '6c52bd5d-6208-4e11-bbe0-bf9dac8326f8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_sequences`
--

CREATE TABLE `my_sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_sessions`
--

CREATE TABLE `my_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_sessions`
--

INSERT INTO `my_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'vjG93cVm6AjgzueRycvFVJCtffDgt0zyAeLR4KU9c5BhesbqIcZJc1Aj0JP-yaQEfVXAOb0zkBG2nsoXdeAJjz8LfAO-6oNM7dON', '2019-11-06 13:52:01', '2019-11-06 14:34:26', 'c6b66c18-a118-4f97-91f3-508fb14b9202'),
(2, 1, 'nOaZK7vBx68k_0onoo2wb9E8O4vXSp0B2LsjIYKQSsKeiXwPL3h76-9HaJkMxy0hjIprdyyOPX_V1-SPiR_g7gLdZ1uaxkWaPXrT', '2019-11-07 06:00:00', '2019-11-07 06:00:14', '315ce065-d597-463c-b08c-8eec4365d230'),
(3, 1, 'Fo8a1-XAwbqX7cLGY_uuKcVkf_Glq7nk1OKdqYKWRXf7ffaHSJL8r2tNBM5Kr8P_UUJfygIKe2w6FDPJ5zTUSbAUEcBeYpNTwyJP', '2019-11-07 06:00:08', '2019-11-07 06:00:10', '609490d9-c3fe-4e6a-bf1f-c7b5a5b709f0'),
(4, 1, '75499-Dozz2Rg-iVPQnhN9md8Bf7f1WT5hyGXfGACJBbobevvCM5S-9vdDlfrPi9jPWOKncXjiQ5Q7DQ2h_0CmU5l3fEinVXRahN', '2019-11-07 06:00:22', '2019-11-07 06:00:22', 'd49007ed-3fcd-43dd-b668-99c15d60d034'),
(5, 1, 'TAgOvODEUqRsBoCURNnR2LUy0d--c314pWLzuYcqPfhSaewwV2NtqOts5aU0-GMeXvixVeBo5YCqN2nUI3L4qvGI4u12xUFx0iU-', '2019-11-07 06:01:39', '2019-11-07 06:19:04', '5e0a2425-38ab-4aa7-96f7-7b1a5652994a'),
(6, 1, 'KzORn8KlbQtx6e1W9ph3hOeSd7yAiIMRB90H2SDuC7YpwHu_MiMk2XPvcATJ37pKqZOgT3sANXxRm_4ztXDdmsTl9dYL848sGHsA', '2019-11-10 02:45:47', '2019-11-10 03:19:34', 'a2f425f4-1120-493c-9fdd-a1a4e2dc3815'),
(7, 1, 'w_al4m0UNCDfYmng2ch5d2Esvw2OGACfJcOGPwsKBjXa0HKK8CfZkJnwe4C9lMw09vc2u9ji78iWhmaQnXWF929CJQtTI-YQLd9f', '2019-11-10 03:20:01', '2019-11-10 04:01:56', 'ebf6b7d4-af6b-46e6-ad09-776746e242d1'),
(8, 1, 'SFCz0tIx0Tf3CCgWCXDGkI0bwtWSYouwY170tE8uZQh0yr3N0gS9IoQ0MQjsvOSTMjtcoPahUwsR5A7c-bLJ1Wj7cOV9wRo4nQVu', '2019-11-10 03:20:05', '2019-11-10 03:20:11', '22eec446-2d98-4632-84f2-04a383163a8e'),
(9, 1, 'bWpkHqUtXuw6KV3q5HQmkmM9UU7KQdW4amyUegyA3dYRdkA5mAUQIXYFxRuldy_nQtX5KIYNkBIgD6y7Zl6DvDhScroDXYS6k0G7', '2019-11-10 05:39:15', '2019-11-10 05:39:45', '75d44d1b-8dbf-456b-bf41-0feeebc315b5'),
(10, 1, '4qZONapPF8RWE9KI18xF_RpYPUrwvDNK8mDQ4kOJpbNOsDGs_e5riiVIvIX2x8XMLEgO2ECo02hT9r3a74lFmGJPVVN_IdLsQ3hy', '2019-11-10 05:40:14', '2019-11-10 05:41:37', '8791535e-1f61-45ec-9ad9-4c3f276dbc6b'),
(11, 1, 'D5JZk2aBzh-X_sG8i4YVUdhfh1QFdj6JlI0BKr_WYvLviEzNAC4vP_xMzVf2pJWyEz9t3Mydr1hcy7w_TVZZeAgAt7dwgNbJ6sRF', '2019-11-10 05:42:44', '2019-11-10 05:56:18', '957b48c9-4417-4a1b-b920-471738cb50c4'),
(12, 1, 'Gui_5eFTFpxysqnCEC0RnbEcpNYVhNmMdGDILwcvJei1ibSkZ9CNQmUuEp76vdTSSBmhqcL4jVRmSqSNOMIDNHQJ9l6J5RgpmKrP', '2019-11-10 05:56:39', '2019-11-10 06:13:21', '22ba2fdd-c62e-4826-9744-b2c0d81626ce'),
(13, 1, 'xMvaL1HhffJqFEk03dbNdTF5xilQvFbnaf7QQyQEDhearFh0-Gf5yZ6GqLvLw0AgbAwQb1HhcrHnddhTYu_AeVYiBO_fyANx8prA', '2019-11-10 06:18:46', '2019-11-10 09:36:29', '8a55c236-08e8-42e1-91cf-2b5da32bf789'),
(14, 1, 'n25REji-arBnma5SmmsrH7v4ZAtlB13cTDup1KU0AkhbHq7qBlfdexJCeG4k60H8gZgXY4udlchgIQnhkx7DUqLQcIttzXhwQ7wv', '2019-11-10 10:00:16', '2019-11-10 10:17:36', '790a4cde-7cd9-423e-a096-d4a677b1944f'),
(15, 1, 'bCqxFKmSf7Ndg61XMiCnlo50mgFHxEsisZgftJ7osl9PebT1H-qTjr2pbzLnug4WwWE7grxKwCXScnWJ10JPOUVmc1kwiWh4ZeOe', '2019-11-12 03:00:04', '2019-11-12 03:59:08', '39e47478-041a-40f6-bbbc-8b5ccf22fb70'),
(18, 1, 'zx7-_ceAzTdTKaEX13Xr2otlWkYPx-Rm4mKb7J7Jk923EyiG3_1T2zE6oaX2VKqEV7vLFCeI6qVKncyOrAvXohYMLEEjlZR-km18', '2019-11-12 11:25:59', '2019-11-12 12:20:59', 'ad08932a-f014-4f5d-befd-c4f1a63b4da2'),
(19, 1, 'INoz0pKsoaIlNSMlOP6q2KHdzwejGhepHrkO82QJkysfO8CKUsUoGlH_te6s-5Jffev-l6GhZRUN8kuDxA8tEedHOBPTWMY7bRpk', '2019-11-13 02:25:28', '2019-11-13 02:32:59', '4d07a2cc-3e2e-4bd8-8b1c-e960d05a6611'),
(20, 1, '51bU_ZM9CoF4Y65Sx7Zuk-dzMETbm4lYOtAM8gK-m7WCWdhplMX-LWu9y-XpbelzKFbKrJXo5mNOpHib74iMXXnJ-YS1nAd5XocR', '2019-11-13 02:57:11', '2019-11-13 04:16:31', '61929b8f-bd6f-4181-afb2-f02b2911ea31'),
(21, 1, '7LcaLQx0lHf60ZqrBWinG3FFOMJ-qkuJy4I1NCjbLPhcX9eC1Az3mpen-ayf8eTMD6_mDHJ5Den_QLdB82BovyxW0UmryX-2Ia-z', '2019-11-13 08:33:32', '2019-11-13 08:55:23', '81a1f553-a052-4c47-b3b6-6c5c7b919c0a'),
(22, 1, 'CWMKZpxJPqcp74SuNx8UzC8U_piwnpEAUKb_8VLGpFn3LnhzIMUEzXK27HMfV9HKSFlBpEhRBtPJfrcd6QR4PCVKC85Pis_BIRPU', '2019-11-13 08:59:02', '2019-11-13 09:51:57', 'c722cc56-f3c3-4970-aa11-44e185310425'),
(23, 1, 'geIyHFvtohsF_EwwIwHOQwV5dTbO87nmCtU4j0amTBYwyvRkrW2BCcj8muB3xRqWVxOQUyPls3lTZDex9rchqFv4k-cdlXFGXENz', '2019-11-13 12:46:23', '2019-11-13 13:08:44', '28d2db3f-90cd-4da0-8a10-4822ad45b11d'),
(24, 1, 'kO-kmn-SZmjqR7cStRerMcuDcM7kPCoo-5rxTTqe1_P_IDbXkdHbgMwkypkjCl6FGLZoZaLIe9xI9xg18BVdEpKERPo1QtPbG4rr', '2019-11-14 03:44:22', '2019-11-14 04:33:33', '7dbe0936-621b-4315-9363-e604142205b6'),
(25, 1, 'k6FGNofKYPQz6iroZ7ED0kHLDajgcj0HHuQCuxz0zXC3cZyUO85eycEoyE6ut8bw_In_bT8erLy8MCdLXsfOScpjxrJjO7L-jDCT', '2019-11-17 14:46:26', '2019-11-17 14:46:55', 'fdd48061-36a1-415c-ad74-98f9c4721657'),
(26, 1, '2zOpWjeZ_R1uW7KOKkloIRaWtc7Shsh4jreFM6KzCeI_mccvVhkvLVmwQXwZAkxTLQWL4qJwZdSI9bNt3Oniu8tThxMy1ADwk3_I', '2019-11-17 14:46:40', '2019-11-17 14:47:02', 'aace1d14-8d85-400c-88c3-064f0134671b'),
(29, 1, 'qwnhzOeiUk2huJYBZDySl-0AhjVDwJWH67fal4aZg0FJQ76WAe3vK5qlvYkVXsqxQ6S-QTA7OmHC08NY212N0OyMf-y_4_2f37_f', '2019-11-18 08:22:28', '2019-11-18 09:03:52', '35693f15-33b5-428f-ba4a-9edcb3fbb193'),
(31, 1, 'TGtPS7Uz8EmTSQNLl2cgQvqeOCe-Hllzg_ONlyY12ivubviNwNRiiOkxbCIp0blgkZDoK7fhLus8sk7KEuSosWERHonFP-_I6PIi', '2019-11-25 08:32:54', '2019-11-25 08:33:41', 'dfacee96-5459-4bb1-b258-5c1bfe68e1ce'),
(32, 1, 'eKr1tbF9qzD06fNGhcJcqsjVM4f3lEhhl8bRyeP-ehcV9FnZxgGheYmfVmp5BgiIT3bvqL30l_na9wlwbtQansj94pqpHWffK8TA', '2019-11-28 09:54:05', '2019-11-28 09:54:40', '0221eae1-3f20-49bd-a2f8-f3b28c789cbb'),
(33, 1, '4dFv7yLONA72Hh-QCiQNYuzK-09wEnJYR8LXY1rEQvWvXLR3xgQWHUJdL1_i5a3SLNGXS43jsKaLwBiQ3X5zd5oum7A2h5FBTVhA', '2019-12-05 07:10:15', '2019-12-05 08:08:53', '4db088ff-7a5f-4aff-b86f-529f6d1a25cf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_shunnedmessages`
--

CREATE TABLE `my_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_sitegroups`
--

CREATE TABLE `my_sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_sitegroups`
--

INSERT INTO `my_sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Fakhri-Craft', '2019-11-06 13:43:02', '2019-11-06 13:43:02', NULL, 'e7955ab5-df32-4b5a-a4b1-deebcad3352c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_sites`
--

CREATE TABLE `my_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_sites`
--

INSERT INTO `my_sites` (`id`, `groupId`, `primary`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Fakhri-Craft', 'default', 'en-US', 1, '$DEFAULT_SITE_URL', 1, '2019-11-06 13:43:03', '2019-11-06 13:43:03', NULL, '3ed3ee5e-f529-45d7-9195-f75d4537b77b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_structureelements`
--

CREATE TABLE `my_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_structureelements`
--

INSERT INTO `my_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 8, 0, '2019-11-10 03:47:58', '2019-11-17 14:51:38', '0e41b0ba-7366-4689-9676-f536790c4d3c'),
(3, 1, 79, 1, 2, 3, 1, '2019-11-17 14:50:57', '2019-11-17 14:50:57', '1b758795-cb3f-4dc2-a8fb-ec9105bd88eb'),
(4, 1, 80, 1, 4, 5, 1, '2019-11-17 14:51:24', '2019-11-17 14:51:24', 'e72a1bb5-03ce-486f-b48a-4426aa894cf4'),
(5, 1, 81, 1, 6, 7, 1, '2019-11-17 14:51:38', '2019-11-17 14:51:38', 'df471201-7efa-4cd2-bc4d-1a8e14046fe5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_structures`
--

CREATE TABLE `my_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_structures`
--

INSERT INTO `my_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, '2019-11-10 03:47:36', '2019-11-10 03:47:36', NULL, 'a4746656-f4f8-48d8-9b7b-87167c835358');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_supertableblocks`
--

CREATE TABLE `my_supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_supertableblocktypes`
--

CREATE TABLE `my_supertableblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_systemmessages`
--

CREATE TABLE `my_systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_taggroups`
--

CREATE TABLE `my_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_taggroups`
--

INSERT INTO `my_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'tag', 'tag', NULL, '2019-11-13 03:00:25', '2019-11-13 03:00:25', NULL, '45a9842d-1482-4d4a-afd8-abb924feb16e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_tags`
--

CREATE TABLE `my_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_templatecacheelements`
--

CREATE TABLE `my_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_templatecachequeries`
--

CREATE TABLE `my_templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_templatecaches`
--

CREATE TABLE `my_templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_tokens`
--

CREATE TABLE `my_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_tokens`
--

INSERT INTO `my_tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(21, 'Oc4lzcIPB8NG8gZsvCofLBGruGBuIX7b', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":203,\"siteId\":1,\"draftId\":17,\"revisionId\":null}]', NULL, NULL, '2019-11-24 03:50:02', '2019-11-23 03:50:03', '2019-11-23 03:50:03', '5d4372a9-166f-4dab-931e-e626da8b57ac'),
(22, '8NlDwr3v3m5C8dxomkf4iGLHNwj4iXva', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":205,\"siteId\":1,\"draftId\":18,\"revisionId\":null}]', NULL, NULL, '2019-11-24 03:54:09', '2019-11-23 03:54:09', '2019-11-23 03:54:09', 'ec8e306b-ce88-47f1-97f0-765737f426d3'),
(23, 'ndfchrRbqf3xjnwlAnI5oynMG81wE8Hy', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":205,\"siteId\":1,\"draftId\":19,\"revisionId\":null}]', NULL, NULL, '2019-11-24 03:56:45', '2019-11-23 03:56:45', '2019-11-23 03:56:45', 'c0d997c2-a7ab-4edc-9c50-1d912afec4c6'),
(24, 'bA0KmQPhbrd7NHbLjOWHIwCNosApsmEG', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":217,\"siteId\":1,\"draftId\":17,\"revisionId\":null}]', NULL, NULL, '2019-11-24 08:39:04', '2019-11-23 08:39:04', '2019-11-23 08:39:04', '6a7431bc-2cab-460a-8a4b-e4a2a3eb6bfe'),
(25, 'hRQUock9CZ2CQMUfEsFMgW8XcCizP-43', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":217,\"siteId\":1,\"draftId\":18,\"revisionId\":null}]', NULL, NULL, '2019-11-24 08:48:48', '2019-11-23 08:48:48', '2019-11-23 08:48:48', '7d145ea8-f533-4a79-9ae7-834779364717');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_usergroups`
--

CREATE TABLE `my_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_usergroups_users`
--

CREATE TABLE `my_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_userpermissions`
--

CREATE TABLE `my_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_userpermissions_usergroups`
--

CREATE TABLE `my_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_userpermissions_users`
--

CREATE TABLE `my_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_userpreferences`
--

CREATE TABLE `my_userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_userpreferences`
--

INSERT INTO `my_userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_users`
--

CREATE TABLE `my_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_users`
--

INSERT INTO `my_users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, NULL, NULL, 'fakhricoffe@gmail.com', '$2y$13$usCoAkWBCovtbcy0LaukF.a5ZIAKQW8XTC60wT11.vmfDNF9.n02a', 1, 0, 0, 0, '2019-12-05 07:10:15', NULL, NULL, NULL, '2019-11-21 07:53:29', NULL, 1, NULL, NULL, NULL, 0, '2019-11-06 13:43:06', '2019-11-06 13:43:06', '2019-12-05 07:10:15', '8ba5619b-cd15-4285-b74b-ecf50e62b3b9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_volumefolders`
--

CREATE TABLE `my_volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_volumefolders`
--

INSERT INTO `my_volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'image', '', '2019-11-10 03:08:39', '2019-11-11 08:03:02', 'd059f81b-3565-4fc9-b6fb-bc2758127365'),
(2, NULL, NULL, 'Temporary source', NULL, '2019-11-10 03:09:01', '2019-11-10 03:09:01', 'a3d4c4c0-3b87-4a9c-8fa1-afa674b94246'),
(3, 2, NULL, 'user_1', 'user_1/', '2019-11-10 03:09:02', '2019-11-10 03:09:02', '94d445f4-0e5b-40b3-bc7a-60fda82620b2'),
(4, 1, 1, 'uploads', 'uploads/', '2019-11-12 12:21:00', '2019-11-12 12:21:00', 'c987207b-83fe-4bae-8c35-e2c877269c19'),
(5, 4, 1, 'assets', 'uploads/assets/', '2019-11-12 12:21:00', '2019-11-12 12:21:00', 'e5423547-8f14-46df-a6c5-da0f6b1c52d5'),
(6, 5, 1, 'cover', 'uploads/assets/cover/', '2019-11-12 12:21:00', '2019-11-12 12:21:00', '134e76bf-6d80-4cbb-885c-e1204a97a1eb'),
(7, 6, 1, 'image', 'uploads/assets/cover/image/', '2019-11-12 12:21:00', '2019-11-12 12:21:00', '78ec6e14-14f7-4c93-a60d-308533b258aa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_volumes`
--

CREATE TABLE `my_volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_volumes`
--

INSERT INTO `my_volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'image', 'image', 'craft\\volumes\\Local', 1, '/uploads/assets/cover/image', '{\"path\":\"uploads/assets/cover/image\"}', 1, '2019-11-10 03:08:39', '2019-11-11 08:03:02', NULL, '129ea671-9029-49fa-8685-b84c0b05f425');

-- --------------------------------------------------------

--
-- Struktur dari tabel `my_widgets`
--

CREATE TABLE `my_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `my_widgets`
--

INSERT INTO `my_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"section\":\"*\",\"siteId\":\"1\",\"limit\":10}', 1, '2019-11-06 13:52:22', '2019-11-06 13:52:22', '27a06036-3615-4ca1-abfc-eeb8f5884ce5'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2019-11-06 13:52:22', '2019-11-06 13:52:22', '55edaa69-0d58-4760-8522-8ec9af8f58fb'),
(3, 1, 'craft\\widgets\\Updates', 3, 1, '[]', 1, '2019-11-06 13:52:22', '2019-11-20 08:28:31', '3be9967e-8a3f-4afe-9a61-629627a23905'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2019-11-06 13:52:23', '2019-11-06 13:52:23', '6393a099-7517-4f9d-9877-83f029bfd6b0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `my_assetindexdata`
--
ALTER TABLE `my_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  ADD KEY `my_assetindexdata_volumeId_idx` (`volumeId`);

--
-- Indeks untuk tabel `my_assets`
--
ALTER TABLE `my_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_assets_filename_folderId_idx` (`filename`,`folderId`),
  ADD KEY `my_assets_folderId_idx` (`folderId`),
  ADD KEY `my_assets_volumeId_idx` (`volumeId`);

--
-- Indeks untuk tabel `my_assettransformindex`
--
ALTER TABLE `my_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`);

--
-- Indeks untuk tabel `my_assettransforms`
--
ALTER TABLE `my_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `my_assettransforms_handle_unq_idx` (`handle`);

--
-- Indeks untuk tabel `my_categories`
--
ALTER TABLE `my_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_categories_groupId_idx` (`groupId`),
  ADD KEY `my_categories_parentId_fk` (`parentId`);

--
-- Indeks untuk tabel `my_categorygroups`
--
ALTER TABLE `my_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_categorygroups_name_idx` (`name`),
  ADD KEY `my_categorygroups_handle_idx` (`handle`),
  ADD KEY `my_categorygroups_structureId_idx` (`structureId`),
  ADD KEY `my_categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `my_categorygroups_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `my_categorygroups_sites`
--
ALTER TABLE `my_categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  ADD KEY `my_categorygroups_sites_siteId_idx` (`siteId`);

--
-- Indeks untuk tabel `my_content`
--
ALTER TABLE `my_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `my_content_siteId_idx` (`siteId`),
  ADD KEY `my_content_title_idx` (`title`);

--
-- Indeks untuk tabel `my_craftidtokens`
--
ALTER TABLE `my_craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_craftidtokens_userId_fk` (`userId`);

--
-- Indeks untuk tabel `my_deprecationerrors`
--
ALTER TABLE `my_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indeks untuk tabel `my_drafts`
--
ALTER TABLE `my_drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_drafts_creatorId_fk` (`creatorId`),
  ADD KEY `my_drafts_sourceId_fk` (`sourceId`);

--
-- Indeks untuk tabel `my_elementindexsettings`
--
ALTER TABLE `my_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_elementindexsettings_type_unq_idx` (`type`);

--
-- Indeks untuk tabel `my_elements`
--
ALTER TABLE `my_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_elements_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `my_elements_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `my_elements_type_idx` (`type`),
  ADD KEY `my_elements_enabled_idx` (`enabled`),
  ADD KEY `my_elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  ADD KEY `my_elements_draftId_fk` (`draftId`),
  ADD KEY `my_elements_revisionId_fk` (`revisionId`);

--
-- Indeks untuk tabel `my_elements_sites`
--
ALTER TABLE `my_elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `my_elements_sites_siteId_idx` (`siteId`),
  ADD KEY `my_elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  ADD KEY `my_elements_sites_enabled_idx` (`enabled`),
  ADD KEY `my_elements_sites_uri_siteId_idx` (`uri`,`siteId`);

--
-- Indeks untuk tabel `my_entries`
--
ALTER TABLE `my_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_entries_postDate_idx` (`postDate`),
  ADD KEY `my_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `my_entries_authorId_idx` (`authorId`),
  ADD KEY `my_entries_sectionId_idx` (`sectionId`),
  ADD KEY `my_entries_typeId_idx` (`typeId`),
  ADD KEY `my_entries_parentId_fk` (`parentId`);

--
-- Indeks untuk tabel `my_entrytypes`
--
ALTER TABLE `my_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  ADD KEY `my_entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  ADD KEY `my_entrytypes_sectionId_idx` (`sectionId`),
  ADD KEY `my_entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `my_entrytypes_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `my_fieldgroups`
--
ALTER TABLE `my_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_fieldgroups_name_unq_idx` (`name`);

--
-- Indeks untuk tabel `my_fieldlayoutfields`
--
ALTER TABLE `my_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `my_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `my_fieldlayoutfields_tabId_idx` (`tabId`),
  ADD KEY `my_fieldlayoutfields_fieldId_idx` (`fieldId`);

--
-- Indeks untuk tabel `my_fieldlayouts`
--
ALTER TABLE `my_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `my_fieldlayouts_type_idx` (`type`);

--
-- Indeks untuk tabel `my_fieldlayouttabs`
--
ALTER TABLE `my_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `my_fieldlayouttabs_layoutId_idx` (`layoutId`);

--
-- Indeks untuk tabel `my_fields`
--
ALTER TABLE `my_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `my_fields_groupId_idx` (`groupId`),
  ADD KEY `my_fields_context_idx` (`context`);

--
-- Indeks untuk tabel `my_globalsets`
--
ALTER TABLE `my_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_globalsets_name_idx` (`name`),
  ADD KEY `my_globalsets_handle_idx` (`handle`),
  ADD KEY `my_globalsets_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indeks untuk tabel `my_gqlschemas`
--
ALTER TABLE `my_gqlschemas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_gqlschemas_accessToken_unq_idx` (`accessToken`),
  ADD UNIQUE KEY `my_gqlschemas_name_unq_idx` (`name`);

--
-- Indeks untuk tabel `my_info`
--
ALTER TABLE `my_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `my_matrixblocks`
--
ALTER TABLE `my_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `my_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `my_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `my_matrixblocks_sortOrder_idx` (`sortOrder`);

--
-- Indeks untuk tabel `my_matrixblocktypes`
--
ALTER TABLE `my_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `my_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `my_matrixblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `my_matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indeks untuk tabel `my_migrations`
--
ALTER TABLE `my_migrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_migrations_pluginId_idx` (`pluginId`),
  ADD KEY `my_migrations_type_pluginId_idx` (`type`,`pluginId`);

--
-- Indeks untuk tabel `my_plugins`
--
ALTER TABLE `my_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_plugins_handle_unq_idx` (`handle`);

--
-- Indeks untuk tabel `my_queue`
--
ALTER TABLE `my_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_queue_fail_timeUpdated_timePushed_idx` (`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `my_queue_fail_timeUpdated_delay_idx` (`fail`,`timeUpdated`,`delay`);

--
-- Indeks untuk tabel `my_relations`
--
ALTER TABLE `my_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `my_relations_sourceId_idx` (`sourceId`),
  ADD KEY `my_relations_targetId_idx` (`targetId`),
  ADD KEY `my_relations_sourceSiteId_idx` (`sourceSiteId`);

--
-- Indeks untuk tabel `my_resourcepaths`
--
ALTER TABLE `my_resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indeks untuk tabel `my_revisions`
--
ALTER TABLE `my_revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  ADD KEY `my_revisions_creatorId_fk` (`creatorId`);

--
-- Indeks untuk tabel `my_searchindex`
--
ALTER TABLE `my_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `my_searchindex` ADD FULLTEXT KEY `my_searchindex_keywords_idx` (`keywords`);

--
-- Indeks untuk tabel `my_sections`
--
ALTER TABLE `my_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_sections_handle_idx` (`handle`),
  ADD KEY `my_sections_name_idx` (`name`),
  ADD KEY `my_sections_structureId_idx` (`structureId`),
  ADD KEY `my_sections_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `my_sections_sites`
--
ALTER TABLE `my_sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  ADD KEY `my_sections_sites_siteId_idx` (`siteId`);

--
-- Indeks untuk tabel `my_sequences`
--
ALTER TABLE `my_sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indeks untuk tabel `my_sessions`
--
ALTER TABLE `my_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_sessions_uid_idx` (`uid`),
  ADD KEY `my_sessions_token_idx` (`token`),
  ADD KEY `my_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `my_sessions_userId_idx` (`userId`);

--
-- Indeks untuk tabel `my_shunnedmessages`
--
ALTER TABLE `my_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indeks untuk tabel `my_sitegroups`
--
ALTER TABLE `my_sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_sitegroups_name_idx` (`name`);

--
-- Indeks untuk tabel `my_sites`
--
ALTER TABLE `my_sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_sites_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `my_sites_handle_idx` (`handle`),
  ADD KEY `my_sites_sortOrder_idx` (`sortOrder`),
  ADD KEY `my_sites_groupId_fk` (`groupId`);

--
-- Indeks untuk tabel `my_structureelements`
--
ALTER TABLE `my_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `my_structureelements_root_idx` (`root`),
  ADD KEY `my_structureelements_lft_idx` (`lft`),
  ADD KEY `my_structureelements_rgt_idx` (`rgt`),
  ADD KEY `my_structureelements_level_idx` (`level`),
  ADD KEY `my_structureelements_elementId_idx` (`elementId`);

--
-- Indeks untuk tabel `my_structures`
--
ALTER TABLE `my_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_structures_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `my_supertableblocks`
--
ALTER TABLE `my_supertableblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_supertableblocks_ownerId_idx` (`ownerId`),
  ADD KEY `my_supertableblocks_fieldId_idx` (`fieldId`),
  ADD KEY `my_supertableblocks_typeId_idx` (`typeId`),
  ADD KEY `my_supertableblocks_sortOrder_idx` (`sortOrder`);

--
-- Indeks untuk tabel `my_supertableblocktypes`
--
ALTER TABLE `my_supertableblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_supertableblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `my_supertableblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indeks untuk tabel `my_systemmessages`
--
ALTER TABLE `my_systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_systemmessages_key_language_unq_idx` (`key`,`language`),
  ADD KEY `my_systemmessages_language_idx` (`language`);

--
-- Indeks untuk tabel `my_taggroups`
--
ALTER TABLE `my_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_taggroups_name_idx` (`name`),
  ADD KEY `my_taggroups_handle_idx` (`handle`),
  ADD KEY `my_taggroups_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `my_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indeks untuk tabel `my_tags`
--
ALTER TABLE `my_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_tags_groupId_idx` (`groupId`);

--
-- Indeks untuk tabel `my_templatecacheelements`
--
ALTER TABLE `my_templatecacheelements`
  ADD KEY `my_templatecacheelements_cacheId_idx` (`cacheId`),
  ADD KEY `my_templatecacheelements_elementId_idx` (`elementId`);

--
-- Indeks untuk tabel `my_templatecachequeries`
--
ALTER TABLE `my_templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_templatecachequeries_cacheId_idx` (`cacheId`),
  ADD KEY `my_templatecachequeries_type_idx` (`type`);

--
-- Indeks untuk tabel `my_templatecaches`
--
ALTER TABLE `my_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `my_templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `my_templatecaches_siteId_idx` (`siteId`);

--
-- Indeks untuk tabel `my_tokens`
--
ALTER TABLE `my_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_tokens_token_unq_idx` (`token`),
  ADD KEY `my_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indeks untuk tabel `my_usergroups`
--
ALTER TABLE `my_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_usergroups_handle_unq_idx` (`handle`),
  ADD UNIQUE KEY `my_usergroups_name_unq_idx` (`name`);

--
-- Indeks untuk tabel `my_usergroups_users`
--
ALTER TABLE `my_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `my_usergroups_users_userId_idx` (`userId`);

--
-- Indeks untuk tabel `my_userpermissions`
--
ALTER TABLE `my_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_userpermissions_name_unq_idx` (`name`);

--
-- Indeks untuk tabel `my_userpermissions_usergroups`
--
ALTER TABLE `my_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `my_userpermissions_usergroups_groupId_idx` (`groupId`);

--
-- Indeks untuk tabel `my_userpermissions_users`
--
ALTER TABLE `my_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `my_userpermissions_users_userId_idx` (`userId`);

--
-- Indeks untuk tabel `my_userpreferences`
--
ALTER TABLE `my_userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indeks untuk tabel `my_users`
--
ALTER TABLE `my_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_users_uid_idx` (`uid`),
  ADD KEY `my_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `my_users_email_idx` (`email`),
  ADD KEY `my_users_username_idx` (`username`),
  ADD KEY `my_users_photoId_fk` (`photoId`);

--
-- Indeks untuk tabel `my_volumefolders`
--
ALTER TABLE `my_volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  ADD KEY `my_volumefolders_parentId_idx` (`parentId`),
  ADD KEY `my_volumefolders_volumeId_idx` (`volumeId`);

--
-- Indeks untuk tabel `my_volumes`
--
ALTER TABLE `my_volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_volumes_name_idx` (`name`),
  ADD KEY `my_volumes_handle_idx` (`handle`),
  ADD KEY `my_volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `my_volumes_dateDeleted_idx` (`dateDeleted`);

--
-- Indeks untuk tabel `my_widgets`
--
ALTER TABLE `my_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `my_widgets_userId_idx` (`userId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `my_assetindexdata`
--
ALTER TABLE `my_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_assettransformindex`
--
ALTER TABLE `my_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_assettransforms`
--
ALTER TABLE `my_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_categorygroups`
--
ALTER TABLE `my_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_categorygroups_sites`
--
ALTER TABLE `my_categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_content`
--
ALTER TABLE `my_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT untuk tabel `my_craftidtokens`
--
ALTER TABLE `my_craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_deprecationerrors`
--
ALTER TABLE `my_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `my_drafts`
--
ALTER TABLE `my_drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `my_elementindexsettings`
--
ALTER TABLE `my_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `my_elements`
--
ALTER TABLE `my_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT untuk tabel `my_elements_sites`
--
ALTER TABLE `my_elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT untuk tabel `my_entrytypes`
--
ALTER TABLE `my_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `my_fieldgroups`
--
ALTER TABLE `my_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_fieldlayoutfields`
--
ALTER TABLE `my_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `my_fieldlayouts`
--
ALTER TABLE `my_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `my_fieldlayouttabs`
--
ALTER TABLE `my_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `my_fields`
--
ALTER TABLE `my_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `my_globalsets`
--
ALTER TABLE `my_globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_gqlschemas`
--
ALTER TABLE `my_gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_info`
--
ALTER TABLE `my_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_matrixblocktypes`
--
ALTER TABLE `my_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_migrations`
--
ALTER TABLE `my_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT untuk tabel `my_plugins`
--
ALTER TABLE `my_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `my_queue`
--
ALTER TABLE `my_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `my_relations`
--
ALTER TABLE `my_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1829;

--
-- AUTO_INCREMENT untuk tabel `my_revisions`
--
ALTER TABLE `my_revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `my_sections`
--
ALTER TABLE `my_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `my_sections_sites`
--
ALTER TABLE `my_sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `my_sessions`
--
ALTER TABLE `my_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `my_shunnedmessages`
--
ALTER TABLE `my_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_sitegroups`
--
ALTER TABLE `my_sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_sites`
--
ALTER TABLE `my_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_structureelements`
--
ALTER TABLE `my_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `my_structures`
--
ALTER TABLE `my_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_supertableblocktypes`
--
ALTER TABLE `my_supertableblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_systemmessages`
--
ALTER TABLE `my_systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_taggroups`
--
ALTER TABLE `my_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_templatecachequeries`
--
ALTER TABLE `my_templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_templatecaches`
--
ALTER TABLE `my_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_tokens`
--
ALTER TABLE `my_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `my_usergroups`
--
ALTER TABLE `my_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_usergroups_users`
--
ALTER TABLE `my_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_userpermissions`
--
ALTER TABLE `my_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_userpermissions_usergroups`
--
ALTER TABLE `my_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_userpermissions_users`
--
ALTER TABLE `my_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `my_userpreferences`
--
ALTER TABLE `my_userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_volumefolders`
--
ALTER TABLE `my_volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `my_volumes`
--
ALTER TABLE `my_volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `my_widgets`
--
ALTER TABLE `my_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `my_assetindexdata`
--
ALTER TABLE `my_assetindexdata`
  ADD CONSTRAINT `my_assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `my_volumes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_assets`
--
ALTER TABLE `my_assets`
  ADD CONSTRAINT `my_assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `my_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_assets_id_fk` FOREIGN KEY (`id`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `my_volumes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_categories`
--
ALTER TABLE `my_categories`
  ADD CONSTRAINT `my_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `my_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `my_categories` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `my_categorygroups`
--
ALTER TABLE `my_categorygroups`
  ADD CONSTRAINT `my_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `my_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `my_structures` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_categorygroups_sites`
--
ALTER TABLE `my_categorygroups_sites`
  ADD CONSTRAINT `my_categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `my_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `my_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_content`
--
ALTER TABLE `my_content`
  ADD CONSTRAINT `my_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `my_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_craftidtokens`
--
ALTER TABLE `my_craftidtokens`
  ADD CONSTRAINT `my_craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `my_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_drafts`
--
ALTER TABLE `my_drafts`
  ADD CONSTRAINT `my_drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `my_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `my_drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_elements`
--
ALTER TABLE `my_elements`
  ADD CONSTRAINT `my_elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `my_drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `my_elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `my_revisions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_elements_sites`
--
ALTER TABLE `my_elements_sites`
  ADD CONSTRAINT `my_elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `my_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_entries`
--
ALTER TABLE `my_entries`
  ADD CONSTRAINT `my_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `my_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `my_entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `my_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `my_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `my_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_entrytypes`
--
ALTER TABLE `my_entrytypes`
  ADD CONSTRAINT `my_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `my_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `my_sections` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_fieldlayoutfields`
--
ALTER TABLE `my_fieldlayoutfields`
  ADD CONSTRAINT `my_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `my_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `my_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_fieldlayouttabs`
--
ALTER TABLE `my_fieldlayouttabs`
  ADD CONSTRAINT `my_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_fields`
--
ALTER TABLE `my_fields`
  ADD CONSTRAINT `my_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `my_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_globalsets`
--
ALTER TABLE `my_globalsets`
  ADD CONSTRAINT `my_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `my_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_matrixblocks`
--
ALTER TABLE `my_matrixblocks`
  ADD CONSTRAINT `my_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `my_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `my_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_matrixblocktypes`
--
ALTER TABLE `my_matrixblocktypes`
  ADD CONSTRAINT `my_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `my_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `my_migrations`
--
ALTER TABLE `my_migrations`
  ADD CONSTRAINT `my_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `my_plugins` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_relations`
--
ALTER TABLE `my_relations`
  ADD CONSTRAINT `my_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `my_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `my_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `my_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_revisions`
--
ALTER TABLE `my_revisions`
  ADD CONSTRAINT `my_revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `my_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `my_revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_sections`
--
ALTER TABLE `my_sections`
  ADD CONSTRAINT `my_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `my_structures` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `my_sections_sites`
--
ALTER TABLE `my_sections_sites`
  ADD CONSTRAINT `my_sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `my_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `my_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_sessions`
--
ALTER TABLE `my_sessions`
  ADD CONSTRAINT `my_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `my_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_shunnedmessages`
--
ALTER TABLE `my_shunnedmessages`
  ADD CONSTRAINT `my_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `my_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_sites`
--
ALTER TABLE `my_sites`
  ADD CONSTRAINT `my_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `my_sitegroups` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_structureelements`
--
ALTER TABLE `my_structureelements`
  ADD CONSTRAINT `my_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `my_structures` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_supertableblocks`
--
ALTER TABLE `my_supertableblocks`
  ADD CONSTRAINT `my_supertableblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `my_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_supertableblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_supertableblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_supertableblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `my_supertableblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_supertableblocktypes`
--
ALTER TABLE `my_supertableblocktypes`
  ADD CONSTRAINT `my_supertableblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `my_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_supertableblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `my_taggroups`
--
ALTER TABLE `my_taggroups`
  ADD CONSTRAINT `my_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `my_tags`
--
ALTER TABLE `my_tags`
  ADD CONSTRAINT `my_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `my_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_templatecacheelements`
--
ALTER TABLE `my_templatecacheelements`
  ADD CONSTRAINT `my_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `my_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_templatecachequeries`
--
ALTER TABLE `my_templatecachequeries`
  ADD CONSTRAINT `my_templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `my_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_templatecaches`
--
ALTER TABLE `my_templatecaches`
  ADD CONSTRAINT `my_templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `my_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_usergroups_users`
--
ALTER TABLE `my_usergroups_users`
  ADD CONSTRAINT `my_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `my_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `my_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_userpermissions_usergroups`
--
ALTER TABLE `my_userpermissions_usergroups`
  ADD CONSTRAINT `my_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `my_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `my_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_userpermissions_users`
--
ALTER TABLE `my_userpermissions_users`
  ADD CONSTRAINT `my_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `my_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `my_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_userpreferences`
--
ALTER TABLE `my_userpreferences`
  ADD CONSTRAINT `my_userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `my_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_users`
--
ALTER TABLE `my_users`
  ADD CONSTRAINT `my_users_id_fk` FOREIGN KEY (`id`) REFERENCES `my_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `my_assets` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `my_volumefolders`
--
ALTER TABLE `my_volumefolders`
  ADD CONSTRAINT `my_volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `my_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `my_volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `my_volumes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `my_volumes`
--
ALTER TABLE `my_volumes`
  ADD CONSTRAINT `my_volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `my_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `my_widgets`
--
ALTER TABLE `my_widgets`
  ADD CONSTRAINT `my_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `my_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
