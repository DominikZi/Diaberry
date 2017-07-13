-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2017 at 09:06 PM
-- Server version: 5.7.17-0ubuntu0.16.04.2
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diaberry`
--

-- --------------------------------------------------------

--
-- Table structure for table `Alarm`
--

CREATE TABLE `Alarm` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `msg` text NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `repeat0` int(11) NOT NULL,
  `repeat1` int(11) NOT NULL,
  `repeat2` int(11) NOT NULL,
  `repeat3` int(11) NOT NULL,
  `repeat4` int(11) NOT NULL,
  `repeat5` int(11) NOT NULL,
  `repeat6` int(11) NOT NULL,
  `time_h` int(11) NOT NULL,
  `time_m` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Alarm`
--

INSERT INTO `Alarm` (`id`, `uid`, `msg`, `enabled`, `repeat0`, `repeat1`, `repeat2`, `repeat3`, `repeat4`, `repeat5`, `repeat6`, `time_h`, `time_m`) VALUES
(2, 4, 'Schule, aufsatehen', 1, 1, 1, 1, 1, 0, 0, 0, 6, 40),
(3, 4, 'Arbeotseinsat, schule', 1, 1, 1, 0, 0, 0, 0, 0, 14, 40),
(4, 4, 'tis, schul', 1, 0, 1, 0, 0, 0, 1, 0, 8, 30),
(7, 9, '', 1, 0, 0, 0, 0, 1, 1, 1, 22, 30),
(8, 9, 'Hunger', 1, 1, 1, 1, 1, 1, 1, 1, 11, 0),
(9, 4, 'fdsa', 1, 1, 1, 1, 1, 1, 1, 1, 34, 4),
(10, 4, 'fdsa', 1, 1, 1, 1, 1, 1, 1, 1, 34, 4),
(11, 4, 'fdsa', 1, 1, 1, 1, 1, 1, 1, 1, 34, 4),
(12, 9, 'Hunger', 1, 1, 1, 1, 1, 1, 1, 1, 11, 8);

-- --------------------------------------------------------

--
-- Table structure for table `DiaryEntry`
--

CREATE TABLE `DiaryEntry` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notice` text NOT NULL,
  `status` enum('trash','draft','private') NOT NULL,
  `is_workday` tinyint(1) NOT NULL,
  `sugar_value` double NOT NULL,
  `ke` double NOT NULL,
  `ke_factor` double NOT NULL,
  `bolus` double NOT NULL,
  `basis` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DiaryEntry`
--

INSERT INTO `DiaryEntry` (`id`, `uid`, `ts`, `notice`, `status`, `is_workday`, `sugar_value`, `ke`, `ke_factor`, `bolus`, `basis`) VALUES
(1, 4, '2017-04-11 13:25:33', 'fsda', 'private', 1, 3, 2, 3, 4, 5),
(2, 2, '2017-04-11 13:49:57', 'fdasfdsa', 'private', 1, 1, 1, 25, 5, 1),
(3, 2, '2017-04-11 13:55:46', 'fdasfdsa', 'private', 1, 1, 1, 25, 5, 1),
(4, 9, '2017-04-11 13:56:53', 'fdasfdsa', 'private', 1, 1, 1, 25, 5, 1),
(5, 9, '2017-04-11 13:57:02', 'fdasfdsa', 'private', 1, 1, 1, 25, 5, 1),
(6, 9, '2017-04-11 13:57:38', 'fdasfdsa', 'private', 1, 1, 1, 25, 5, 1),
(7, 4, '2017-04-11 13:59:42', 'fasd', 'private', 1, 6, 6, 6, 5, 1),
(8, 4, '2017-04-11 14:00:03', 'fasd', 'private', 1, 6, 6, 6, 6, 6),
(9, 4, '2017-04-11 14:25:36', '500 be eingegeben', 'private', 1, 1, 416.66666666667, 1, 1, 1),
(10, 9, '2017-04-11 15:03:05', 'Verspritzt', 'private', 1, 52.6, 29.166666666667, 49, 4, 79),
(11, 10, '2017-04-11 15:21:27', '323423', 'private', 1, 34, 23, 2, 23, 23),
(12, 9, '2017-04-11 15:40:49', 'holla', 'private', 1, 1e21, 2.5e17, 40000000000, 90000000000000, 3e16);

-- --------------------------------------------------------

--
-- Table structure for table `Dish`
--

CREATE TABLE `Dish` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `uid` int(11) NOT NULL,
  `portions` int(11) NOT NULL,
  `preparing_time_h` int(11) NOT NULL,
  `cooking_time_h` int(11) NOT NULL,
  `status` text NOT NULL,
  `difficulty` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cooking_time_m` int(11) NOT NULL,
  `preparing_time_m` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dish`
--

INSERT INTO `Dish` (`id`, `title`, `description`, `uid`, `portions`, `preparing_time_h`, `cooking_time_h`, `status`, `difficulty`, `ts`, `cooking_time_m`, `preparing_time_m`) VALUES
(22, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 0, 0, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(23, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 0, 0, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(24, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 43, 10000, 1800, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(25, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 0, 0, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(26, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 0, 0, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(27, 'fdsa', 'sdfdsasgd', 5, 3, 3000, 400, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(28, 'fdsa', 'sdfdsasgd', 5, 0, 3000, 400, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(29, 'schnitzelbraten', 'ein schnitzelbratzen mit pommes', 6, 2, 0, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(30, 'schnitzelbraten', 'ein schnitzelbratzen mit pommes', 6, 3, 120, 40, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(31, 'Schweinebraten', 'mit rotkohl', 4, 3, 40, 110, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(32, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(33, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(34, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(35, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(36, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(37, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(38, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(39, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(40, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(41, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(42, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(43, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(44, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(45, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(46, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(47, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(48, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(49, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(50, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(51, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(52, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(53, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(54, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(55, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(56, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(57, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(58, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(59, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(60, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(61, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(62, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(63, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(64, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(65, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(66, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(67, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(68, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(69, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(70, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(71, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(72, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(73, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(74, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(75, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(76, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(77, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(78, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(79, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(80, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(81, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(82, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(83, 'hgfd', 'hgfd', 4, 4, 10, 0, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(84, 'hgfd', 'hgfd', 4, 4, 10, 0, '', 0, '2017-04-10 19:53:08', 0, 0),
(85, '', '', 4, 0, 0, 0, 'public', 0, '2017-04-10 19:53:08', 0, 0),
(86, '', '', 4, 0, 0, 0, 'public', 0, '2017-04-10 19:53:08', 0, 0),
(87, 'GemÃ¼sestrudel', 'FÃ¼r viele ist eine richtige Party ohne Kartoffelsalat undenkbar und als Grillbeilage hat der Kartoffelsalat genauso wie der Nudelsalat lÃ¤ngst Kultst', 4, 4, 20, 40, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(88, 'GemÃ¼sestrudel', 'FÃ¼r viele ist eine richtige Party ohne Kartoffelsalat undenkbar und als Grillbeilage hat der Kartoffelsalat genauso wie der Nudelsalat lÃ¤ngst Kultst', 4, 4, 20, 40, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(89, 'GemÃ¼sestrudel', 'FÃ¼r viele ist eine richtige Party ohne Kartoffelsalat undenkbar und als Grillbeilage hat der Kartoffelsalat genauso wie der Nudelsalat lÃ¤ngst Kultst', 4, 4, 20, 40, 'trash', 0, '2017-04-10 19:53:08', 0, 0),
(90, 'GemÃ¼sestrudel', 'FÃ¼r viele ist eine richtige Party ohne Kartoffelsalat undenkbar und als Grillbeilage hat der Kartoffelsalat genauso wie der Nudelsalat lÃ¤ngst Kultst', 4, 4, 20, 40, 'private', 0, '2017-04-10 19:53:08', 0, 0),
(91, 'Omas Katoffelsalat', '', 9, 0, 0, 0, 'trash', 1, '2017-04-11 12:30:16', 0, 0),
(92, 'Omas Katoffelsalat', '', 4, 0, 0, 0, 'trash', 1, '2017-04-11 12:30:38', 0, 0),
(93, 'Omas Katoffelsalat', '', 4, 0, 0, 0, 'trash', 1, '2017-04-11 12:33:42', 0, 0),
(94, 'Dominiks Katoffelsalat', 'Sehr lecker ', 4, 7, 40, 10, 'public', 2, '2017-04-11 12:40:02', 0, 0),
(95, 'Omas Katoffelsalat', 'Wahnsinnig lecker', 10, 1, 1, 0, 'public', 3, '2017-04-11 13:28:05', 15, 19),
(96, 'Omas Katoffelsalat', 'Wahnsinnig lecker', 10, 1, 1, 0, 'public', 3, '2017-04-11 13:28:19', 15, 19),
(97, 'Omas Katoffelsalat', 'Wahnsinnig lecker', 10, 1, 1, 0, 'public', 3, '2017-04-11 13:28:36', 15, 19),
(98, 'Omas Katoffelsalat', 'Wahnsinnig lecker', 10, 1, 1, 0, 'public', 3, '2017-04-11 13:28:54', 15, 19),
(99, 'Omas Katoffelsalat', 'Wahnsinnig lecker', 10, 1, 1, 0, 'public', 3, '2017-04-11 13:29:38', 15, 19),
(100, 'Katoffelpuffer', 'lecka', 10, 23, 3, 0, 'public', 2, '2017-04-11 13:34:54', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `DishComment`
--

CREATE TABLE `DishComment` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text NOT NULL,
  `dish_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DishComment`
--

INSERT INTO `DishComment` (`id`, `uid`, `ts`, `comment`, `dish_id`) VALUES
(1, 1, '2017-04-10 22:18:52', 'ds', 0),
(2, 4, '2017-04-10 22:23:44', 'fasd', 0),
(3, 4, '2017-04-10 22:23:47', 'fads', 0),
(4, 4, '2017-04-10 22:24:01', 'fdsa', 0),
(5, 4, '2017-04-10 22:24:03', 'g sfdgsfd', 0),
(6, 4, '2017-04-10 22:24:51', 'fasd', 0),
(7, 4, '2017-04-10 22:25:07', 'test', 0),
(8, 4, '2017-04-10 22:26:26', 'fdsa', 0),
(9, 4, '2017-04-10 22:26:53', 'fsdaf sdafsa454235432534254325', 90),
(10, 4, '2017-04-10 22:30:47', '34265', 90),
(11, 4, '2017-04-10 22:31:20', 'ztsd gfsdj klgfdsj kgjfsdlg jfsdkjl hgksdff jkÃ¶sadkjlf jkdlsaf Ã¶jklsda kljÃ¶fkÃ¶ljdsf jklÃ¶sa', 90),
(12, 4, '2017-04-10 22:32:01', 'f sad', 90),
(13, 4, '2017-04-11 10:37:46', 'hmmmm leckaaaaa', 90),
(14, 4, '2017-04-11 10:39:08', '0.1jhgfjhg', 90),
(15, 4, '2017-04-11 10:39:21', 'khuikhu', 90),
(16, 4, '2017-04-11 10:39:23', 'okhu', 90),
(17, 4, '2017-04-11 10:39:24', 'khj', 90),
(18, 4, '2017-04-11 15:12:07', 'zret', 94),
(19, 4, '2017-04-11 15:12:13', 'Leckaaaa\nfg', 94);

-- --------------------------------------------------------

--
-- Table structure for table `DishIngredient`
--

CREATE TABLE `DishIngredient` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `amnt` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DishIngredient`
--

INSERT INTO `DishIngredient` (`id`, `dish_id`, `ingredient_id`, `amnt`, `unit_id`) VALUES
(1, 20, 3, 43, 0),
(2, 20, 4, 324, 0),
(3, 21, 5, 43, 0),
(4, 21, 6, 324, 0),
(5, 22, 7, 1, 0),
(6, 22, 8, 200, 0),
(7, 22, 9, 500, 0),
(8, 23, 10, 1, 0),
(9, 23, 11, 200, 0),
(10, 23, 12, 500, 0),
(11, 24, 13, 1, 0),
(12, 24, 14, 200, 0),
(13, 24, 15, 500, 0),
(14, 25, 16, 1, 0),
(15, 25, 17, 200, 0),
(16, 25, 18, 500, 0),
(17, 26, 19, 1, 0),
(18, 26, 20, 200, 0),
(19, 26, 21, 500, 0),
(20, 28, 22, 432, 0),
(21, 28, 23, 4321, 0),
(22, 30, 24, 50, 0),
(23, 30, 25, 100, 0),
(24, 30, 26, 250, 0),
(25, 30, 27, 2, 0),
(26, 31, 28, 500, 0),
(27, 31, 29, 100, 0),
(28, 31, 30, 200, 0),
(29, 89, 89, 1, 5),
(30, 89, 29, 100, 5),
(31, 89, 30, 1, 5),
(32, 89, 31, 2, 5),
(33, 89, 32, 3, 5),
(34, 89, 33, 2, 5),
(35, 89, 34, 1, 5),
(36, 90, 90, 1, 5),
(37, 90, 36, 100, 5),
(38, 90, 37, 1, 5),
(39, 90, 38, 2, 5),
(40, 90, 39, 3, 5),
(41, 90, 40, 2, 5),
(42, 90, 41, 1, 5),
(43, 94, 34, 7000, 2),
(44, 95, 35, 70, 2),
(45, 95, 36, 700, 1),
(46, 96, 37, 70, 2),
(47, 96, 38, 700, 1),
(48, 97, 39, 70, 2),
(49, 97, 40, 700, 1),
(50, 98, 41, 70, 2),
(51, 98, 42, 700, 1),
(52, 99, 43, 70, 2),
(53, 99, 44, 700, 1),
(54, 100, 45, 56, 1),
(55, 100, 46, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `DishPicture`
--

CREATE TABLE `DishPicture` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ext` text NOT NULL,
  `color` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DishPicture`
--

INSERT INTO `DishPicture` (`id`, `dish_id`, `url`, `title`, `ts`, `ext`, `color`) VALUES
(1, 83, 'cdn/uploads/images/173283151158eb654850bab', 'c300', '2017-04-10 11:01:54', 'jpg', '0'),
(2, 83, 'cdn/uploads/images/133787383758eb6548651b6', 'f55', '2017-04-10 11:01:55', 'jpg', '0'),
(3, 84, '632044347658eb656508045', 'c300', '2017-04-10 11:01:50', 'jpg', '0'),
(4, 84, '489491218658eb65651ccfe', 'f55', '2017-04-10 11:01:51', 'jpg', '0'),
(5, 88, '815071300358ebc4fb4d4f0', 'Strudel 1', '2017-04-10 17:46:35', 'jpg', NULL),
(6, 88, '618764527158ebc4fb54ba3', 'Strudel 2', '2017-04-10 17:46:35', 'jpg', NULL),
(7, 88, '98114479058ebc4fb5baad', 'Strudel 3', '2017-04-10 17:46:35', 'jpg', NULL),
(8, 89, '222915704858ebc530de9a1', 'Strudel 1', '2017-04-10 17:47:28', 'jpg', NULL),
(9, 89, '268591226158ebc530e5cca', 'Strudel 2', '2017-04-10 17:47:28', 'jpg', NULL),
(10, 89, '602846352158ebc530ec85d', 'Strudel 3', '2017-04-10 17:47:28', 'jpg', NULL),
(11, 90, '130744036258ebc5b576d3f', 'Strudel 1', '2017-04-10 17:49:41', 'jpg', NULL),
(12, 90, '734679288158ebc5b57e2bd', 'Strudel 2', '2017-04-10 17:49:41', 'jpg', NULL),
(13, 90, '751066607058ebc5b5852db', 'Strudel 3', '2017-04-10 17:49:41', 'jpg', NULL),
(14, 91, '531588619458eccc58888f1', '', '2017-04-11 12:30:16', '', NULL),
(15, 92, '793894455558eccc6e81832', '', '2017-04-11 12:30:38', '', NULL),
(16, 93, '261839912458eccd2609af5', '', '2017-04-11 12:33:42', '', NULL),
(17, 94, '73245878658eccea2d7056', 'gzu', '2017-04-11 12:40:03', 'png', NULL),
(18, 94, '15461499958eccea3244ba', 'uzt', '2017-04-11 12:40:03', 'png', NULL),
(19, 94, '767236572358eccea365355', 'uztg', '2017-04-11 12:40:03', 'png', NULL),
(20, 95, '891401387858ecd9e5d2605', 'Un en salada', '2017-04-11 13:28:05', 'desktop', NULL),
(21, 96, '797727155358ecd9f3a4f2b', 'Un en salada', '2017-04-11 13:28:19', 'desktop', NULL),
(22, 97, '715904233658ecda043bad6', 'Un en salada', '2017-04-11 13:28:36', 'desktop', NULL),
(23, 98, '35974085258ecda16f2918', 'Un en salada', '2017-04-11 13:28:54', 'desktop', NULL),
(24, 99, '283583184958ecda42888f8', 'Un en salada', '2017-04-11 13:29:38', 'desktop', NULL),
(25, 100, '651023695158ecdb7e9088a', 'Puff puff', '2017-04-11 13:34:54', 'desktop', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DishRating`
--

CREATE TABLE `DishRating` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DishStep`
--

CREATE TABLE `DishStep` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `dish_id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DishStep`
--

INSERT INTO `DishStep` (`id`, `description`, `dish_id`, `title`) VALUES
(1, 'bvxcbvcxbcvb f  sgf reerwer', 28, 'bxcv'),
(2, 'nxcbncvb', 28, 'gsfd'),
(3, 'bereiten sie die ssse zu und schÃ¼tten sie sie Ã¼ber se schnitzel', 30, 'sosse'),
(4, 'nehmen siedas schnitzel aus der verpackung und legen Siees in den ofen', 30, 'schnitzel'),
(5, 'bereiten sie alles vor', 30, 'vorbeireuntv'),
(6, 'Jetzt einfach backen und dann esesn', 31, 'Vorbereitung'),
(7, 'Jetzt alles zusammenrÃ¼phren', 31, 'Zubereitung'),
(8, 'Zuerst FLaden herstellen, durch vermischen von Wasser und Mehl', 31, 'Backend'),
(9, 'fsa', 32, 'fdsa'),
(10, 'fsa', 33, 'fdsa'),
(11, 'fsa', 34, 'fdsa'),
(12, 'fsa', 35, 'fdsa'),
(13, 'fsa', 36, 'fdsa'),
(14, 'fsa', 37, 'fdsa'),
(15, 'fsa', 38, 'fdsa'),
(16, 'fsa', 39, 'fdsa'),
(17, 'fsa', 40, 'fdsa'),
(18, 'fsa', 41, 'fdsa'),
(19, 'fsa', 42, 'fdsa'),
(20, 'fsa', 43, 'fdsa'),
(21, 'fsa', 44, 'fdsa'),
(22, 'fsa', 45, 'fdsa'),
(23, 'fsa', 46, 'fdsa'),
(24, 'fsa', 47, 'fdsa'),
(25, 'fsa', 48, 'fdsa'),
(26, 'fsa', 49, 'fdsa'),
(27, 'fsa', 50, 'fdsa'),
(28, '', 86, ''),
(29, 'Auf den BlÃ¤tterteig die SchinkenblÃ¤tter auslegen, die FÃ¼lle darauf geben und einrollen. Mit Ei bestreichen und ca. 30 Minuten auf der mittleren Schiene backen.\r\n', 87, 'Zubereitung'),
(30, 'Den Backofen auf 200 Â°C Ober-/Unterhitze vorheizen\r\n', 87, 'Vorheizen'),
(31, 'Die Zwiebel, den Knoblauch und die Karotten fein schneiden und andÃ¼nsten. Zum Schluss die Zucchini beigeben und noch 10 Minuten weiter dÃ¼nsten. Die Masse Ã¼berkÃ¼hlen lassen. Dann mit Ei, CrÃ¨me fraÃ®che, Salz und Pfeffer abschmecken. \r\n', 87, 'Backen'),
(32, 'Auf den BlÃ¤tterteig die SchinkenblÃ¤tter auslegen, die FÃ¼lle darauf geben und einrollen. Mit Ei bestreichen und ca. 30 Minuten auf der mittleren Schiene backen.\r\n', 88, 'Zubereitung'),
(33, 'Den Backofen auf 200 Â°C Ober-/Unterhitze vorheizen\r\n', 88, 'Vorheizen'),
(34, 'Die Zwiebel, den Knoblauch und die Karotten fein schneiden und andÃ¼nsten. Zum Schluss die Zucchini beigeben und noch 10 Minuten weiter dÃ¼nsten. Die Masse Ã¼berkÃ¼hlen lassen. Dann mit Ei, CrÃ¨me fraÃ®che, Salz und Pfeffer abschmecken. \r\n', 88, 'Backen'),
(35, 'Auf den BlÃ¤tterteig die SchinkenblÃ¤tter auslegen, die FÃ¼lle darauf geben und einrollen. Mit Ei bestreichen und ca. 30 Minuten auf der mittleren Schiene backen.\r\n', 89, 'Zubereitung'),
(36, 'Den Backofen auf 200 Â°C Ober-/Unterhitze vorheizen\r\n', 89, 'Vorheizen'),
(37, 'Die Zwiebel, den Knoblauch und die Karotten fein schneiden und andÃ¼nsten. Zum Schluss die Zucchini beigeben und noch 10 Minuten weiter dÃ¼nsten. Die Masse Ã¼berkÃ¼hlen lassen. Dann mit Ei, CrÃ¨me fraÃ®che, Salz und Pfeffer abschmecken. \r\n', 89, 'Backen'),
(38, 'Auf den BlÃ¤tterteig die SchinkenblÃ¤tter auslegen, die FÃ¼lle darauf geben und einrollen. Mit Ei bestreichen und ca. 30 Minuten auf der mittleren Schiene backen.\r\n', 90, 'Zubereitung'),
(39, 'Den Backofen auf 200 Â°C Ober-/Unterhitze vorheizen\r\n', 90, 'Vorheizen'),
(40, 'Die Zwiebel, den Knoblauch und die Karotten fein schneiden und andÃ¼nsten. Zum Schluss die Zucchini beigeben und noch 10 Minuten weiter dÃ¼nsten. Die Masse Ã¼berkÃ¼hlen lassen. Dann mit Ei, CrÃ¨me fraÃ®che, Salz und Pfeffer abschmecken. \r\n', 90, 'Backen'),
(41, '', 91, ''),
(42, '', 92, ''),
(43, '', 93, ''),
(44, 'GenieÃŸe Dominiks Kartoffelsalat', 94, 'Katoffeln schÃ¤len'),
(45, 'den salat eine stunde stehen lassen ', 94, 'Stampfen'),
(46, 'Die SalatsoÃŸe an den katoffelsalat machen ', 94, 'An machen '),
(47, 'Die geschÃ¤lten Katoffeln stampfen', 94, 'Ziehen lassen'),
(48, 'Man nehme eine gekochte Katoffel und schÃ¤hle diese', 94, 'Essen '),
(49, 'Lecka lecka', 95, 'pellen'),
(50, 'gekochte katoffel schÃ¤len', 95, 'An machen'),
(51, 'Lecka lecka', 96, 'pellen'),
(52, 'gekochte katoffel schÃ¤len', 96, 'An machen'),
(53, 'Lecka lecka', 97, 'pellen'),
(54, 'gekochte katoffel schÃ¤len', 97, 'An machen'),
(55, 'Lecka lecka', 98, 'pellen'),
(56, 'gekochte katoffel schÃ¤len', 98, 'An machen'),
(57, 'Lecka lecka', 99, 'pellen'),
(58, 'gekochte katoffel schÃ¤len', 99, 'An machen'),
(59, 'jammi jammi', 100, 'Essen '),
(60, 'Lecka leckaIf you really want to disable your account, please type ', 100, 'An machen');

-- --------------------------------------------------------

--
-- Table structure for table `Eaten`
--

CREATE TABLE `Eaten` (
  `id` int(11) NOT NULL,
  `ts` datetime NOT NULL,
  `sugar_vaule` float NOT NULL,
  `taken` float NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Friends`
--

CREATE TABLE `Friends` (
  `uid1` int(11) NOT NULL,
  `ui2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE `Group` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `owner_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GroupPermission`
--

CREATE TABLE `GroupPermission` (
  `id` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `alias` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Help`
--

CREATE TABLE `Help` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Help`
--

INSERT INTO `Help` (`id`, `parent`, `uid`, `ts`, `text`) VALUES
(2, 0, 7, '2017-04-10 22:03:27', 'Wie heisst der BÃ¼rgermeister von Wesel?'),
(5, 2, 4, '2017-04-10 22:07:08', 'esel'),
(6, 2, 5, '2017-04-10 22:07:08', 'eeeesel'),
(7, 0, 4, '2017-04-10 22:27:41', 'Was ist 3x3'),
(8, 7, 6, '2017-04-10 22:27:56', 'fsdaf asdf das'),
(9, 7, 7, '2017-04-10 22:27:57', 'neeeunne'),
(10, 7, 8, '2017-04-10 22:27:58', '9gag'),
(11, 1, 1, '2017-04-10 22:33:06', 'cv'),
(12, 7, 7, '2017-04-10 22:33:45', 'fda'),
(13, 7, 7, '2017-04-10 22:33:48', '456'),
(14, 7, 7, '2017-04-10 22:34:01', '456'),
(15, 7, 7, '2017-04-10 22:34:04', 'r4132z'),
(16, 7, 7, '2017-04-10 22:34:56', 'm'),
(17, 7, 10, '2017-04-11 13:20:47', 'TrÃ¶lf\r\n'),
(18, 7, 10, '2017-04-11 13:20:53', 'drÃ¶lf\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `Help_old`
--

CREATE TABLE `Help_old` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `tags` text NOT NULL,
  `lang` enum('de','en') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Help_old`
--

INSERT INTO `Help_old` (`id`, `title`, `text`, `tags`, `lang`) VALUES
(1, 'Wie werden Kohlenhydrate zu KE umgerechnet?', 'Den KE-Wert erhält man, in dem man die Kohlenhydrate durch 10 teilt.', 'Umrechnung KE umrechnen Kohlenhydrate umgerechnet KE-Wert  teilen teilt ', 'de'),
(2, 'Wie rechnet man Kohlenhydrate in einen BE-Wert um?', 'Die Berechnung eines BE-Wertes erfolgt, wenn man die Kohlenhydrate durch den Faktor 12 teilt.', 'BE-Wert BE Kohlenhydrate Broteinheiten Berechnung berechnen berechnet ', 'de'),
(3, 'Was kann den Blutzucker beeinflussen?', 'Die folgenden Punkte können Einflüsse auf den Blutzuckerspiegel haben:\r\nErnährung\r\nVerzögerungsinsulin 	\r\nTagesablauf\r\nVerdauung 	\r\nInjektionszeitpunkt 	\r\nSport\r\nSpritz-Ess-Abstand 	Injektionsstelle 	\r\nMedikamente\r\nInsulin pro Broteinheit 	Injektionstiefe 	Menstruationszyklus\r\nInsulindosis 	\r\nInsulinempfindlichkeit 	\r\nKrankheit\r\nNormalinsulin 	\r\nGeweberesorption 	\r\nStress\r\n\r\n ', 'Einfluss Beinflussung Blutzucker Blutzuckerspiegel kann einen einfluss haben auf ', 'de'),
(4, 'Was kann zu einer Typ-2-Diabetes führen oder sie negativ beeinflussen?', 'Es gibt viele Riskiofaktoren für eine Typ-2-Diabetes die wichtigsten sind:\r\n\r\nAlkohol\r\nBewegungsarmut\r\nBluthochdruck\r\nFalsche Ernährung\r\nRauchen\r\nÜbergewicht\r\n', 'negativ beeinflussen führen', 'de'),
(5, 'Wie bemerkt man eine Unterzuckerung?', 'Eine Unterzuckerung (Hypoglykämie) kündigt sich mit Schweißausbrüchen, \r\nHeißhunger und Herzklopfen an.', 'Unterzucker bemerkt bemerken spüren ankündigen ', 'de'),
(6, 'Wie bemerkt man eine Überzuckerung?', 'Eine Überzuckerung erkennt man an Anzeichen wie Müdigkeit, häufigem Urindrang und starkem Durst, \r\nÜbelkeit und einem Azetongeruch des Atems (riecht wie Nagellackentferner oder \r\nfaulige Äpfel). ', 'Anzeichen Überzuckerung bemerken spüren bemerkt auffallen auffällt fällt auf ', 'de'),
(7, 'Werden alle übergewichtigen Menschen früher oder später Diabetiker? ', 'Nicht alle, aber viele. Als Faustregel gilt: Je massiver das Übergewicht, desto früher tritt der Diabetes auf. Allerdings spielen offenbar auch beim Typ 2 Erbfaktoren eine wichtige Rolle. Starkes Indiz für die genetische Komponente: Fast jeder eineiige Zwilling eines Typ-2-Diabetikers wird früher oder später ebenfalls Diabetiker. ', 'übergewichtigt Fettleibigkeit Auslöser erkranken', 'de');

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE `Image` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `title` text NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `large` text NOT NULL,
  `thumb` text NOT NULL,
  `xthumb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ingredient`
--

CREATE TABLE `Ingredient` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `ke` int(11) NOT NULL COMMENT 'in gramms'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ingredient`
--

INSERT INTO `Ingredient` (`id`, `title`, `ke`) VALUES
(1, 'fads', 900),
(2, 'fsd', 764),
(3, 'hg', 66),
(4, 'fsad', 765),
(5, 'hg', 66),
(6, 'fsad', 765),
(7, 'brot', 4),
(8, 'sosse', 65),
(9, 'schinen', 3),
(10, 'brot', 4),
(11, 'sosse', 65),
(12, 'schinen', 3),
(13, 'brot', 4),
(14, 'sosse', 65),
(15, 'schinen', 3),
(16, 'brot', 4),
(17, 'sosse', 65),
(18, 'schinen', 3),
(19, 'brot', 4),
(20, 'sosse', 65),
(21, 'schinen', 3),
(22, 'gsfd', 543),
(23, 'fdsa', 34),
(24, 'pommes', 12),
(25, 'wasser', 0),
(26, 'sosse', 66),
(27, 'schnitzel', 50),
(28, 'Schweinebraten', 400),
(29, 'Wasser', 0),
(30, 'Mehl', 12),
(31, '', 0),
(32, '', 0),
(33, '', 0),
(34, 'Katoffeln', 11),
(35, 'SoÃŸe', 2000),
(36, 'Katoffeln', 15),
(37, 'SoÃŸe', 2000),
(38, 'Katoffeln', 15),
(39, 'SoÃŸe', 2000),
(40, 'Katoffeln', 15),
(41, 'SoÃŸe', 2000),
(42, 'Katoffeln', 15),
(43, 'SoÃŸe', 2000),
(44, 'Katoffeln', 15),
(45, 'Bratenfett', 11),
(46, 'Katoff', 10);

-- --------------------------------------------------------

--
-- Table structure for table `IngredientUnit`
--

CREATE TABLE `IngredientUnit` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `IngredientUnit`
--

INSERT INTO `IngredientUnit` (`id`, `title`) VALUES
(1, 'g'),
(2, 'kg'),
(3, 'L'),
(4, 'mL'),
(5, 'Stck'),
(6, 'TL'),
(7, 'EL'),
(8, 'Cup'),
(9, 'Oz'),
(10, 'Sp');

-- --------------------------------------------------------

--
-- Table structure for table `Insulin`
--

CREATE TABLE `Insulin` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `halflife_period` int(11) NOT NULL,
  `insulin_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `InsulinType`
--

CREATE TABLE `InsulinType` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Meal`
--

CREATE TABLE `Meal` (
  `id` int(11) NOT NULL,
  `ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Preference`
--

CREATE TABLE `Preference` (
  `alias` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Preference`
--

INSERT INTO `Preference` (`alias`) VALUES
('alt_email'),
('security_question');

-- --------------------------------------------------------

--
-- Table structure for table `Time`
--

CREATE TABLE `Time` (
  `id` int(11) NOT NULL,
  `start` time NOT NULL,
  `end` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Translation`
--

CREATE TABLE `Translation` (
  `id` int(11) NOT NULL,
  `de` text NOT NULL,
  `en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Translation`
--

INSERT INTO `Translation` (`id`, `de`, `en`) VALUES
(2, 'Rezepte', 'Dishes'),
(3, 'Hinzufügen', 'add new'),
(4, 'Meine Rezepte', 'my dishes'),
(5, 'Werkzeuge', 'Tools'),
(6, 'Wecker', 'Alarm'),
(7, 'Berechnung', 'Calculator'),
(8, 'Datenbank', 'Dictionary'),
(9, 'Tagebuch', 'Diary'),
(10, 'Hilfe', 'Help'),
(11, 'Konto', 'Account'),
(12, 'Benutzer Einstellungen', 'User settings'),
(13, 'Allgemeine Einstellungen', 'General settings'),
(14, 'Sicherheits Einstellungen', 'Security settings'),
(15, 'Datenschutz-Einstellungen', 'Privacy settings'),
(16, 'Titel', 'title'),
(17, 'Beschreibung', 'description'),
(18, 'Bilder hinzufügen', 'Add Images'),
(19, 'Bild hinzufügen', 'Add Image'),
(20, 'Portionen', 'portions'),
(21, 'Zubereitungs - Dauer', 'preparing_time'),
(22, 'Koch/Back - Dauer', 'cooking_time'),
(23, 'Zutaten hinzufügen', 'add ingredient'),
(24, 'Zutat Name', 'ingredient name'),
(25, 'Zutat Menge', 'ingredient amnt'),
(920, 'Dashboard', 'Dashboard'),
(921, 'KE', 'ke'),
(922, 'Schritt hinzufügen', 'add step'),
(923, 'Schritt Titel', 'step title'),
(924, 'Schritt Beschreibung', 'step description'),
(925, 'Zubereitungs - Dauer', 'Preparing time'),
(926, 'Koch/Back - Dauer', 'Cooking time'),
(927, 'Anschauen', 'view'),
(928, 'Eintrag hinzufügen', 'add entry'),
(929, 'Nach Thema suchen', 'Search for Threads'),
(930, 'Seite wurde nicht gefunden.', 'Page not found.'),
(932, 'Fehler', 'Error'),
(933, 'Neues Rezept hinzufügen', 'Add new Dish'),
(934, 'Hinzufügen', 'Add'),
(936, 'Schritte hinzufügen', 'Add steps'),
(949, 'Leider wurden keine Ergebnisse gefunden', 'Unfortunately there were no results'),
(1090, 'Essen Score', 'Food Score'),
(1117, 'Schwierigkeitslevel', 'Difficulty'),
(1118, 'Einfach', 'Easy'),
(1119, 'Normal', 'Normal'),
(1120, 'Schwer', 'Hard'),
(1121, 'Alarm hinzufügen', 'Add alarm'),
(1122, 'Uhrzeit', 'Time'),
(1123, 'Wöchentliche Wiederholung an diesen Tagen', 'Repeat weekly on these days'),
(1124, 'Nachricht', 'Message'),
(1127, 'Mo', 'Mo'),
(1128, 'Di', 'Tu'),
(1129, 'Mi', 'We'),
(1130, 'Do', 'Th'),
(1131, 'Fr', 'Fr'),
(1132, 'Sa', 'Sa'),
(1133, 'So', 'Su'),
(1134, 'Die Nachricht, welche Ihnen zugestellt wird', 'The message which should be send to you'),
(1135, 'Uhr', ''),
(1136, 'Umrechnung von Kohlenhydrate pro 100 Gramm', 'Convert From KH (g / 100g kCal)'),
(1137, 'Umrechnung von KH ', 'Convert from KH'),
(1138, 'Umrechnung von BE', 'Convert from BE'),
(1139, 'Umrechnung von KE', 'Convert from KE'),
(1140, 'Brennwert', 'Calories'),
(1141, 'Fett', 'Fat'),
(1142, 'Kohlenhydrate', 'Carbs'),
(1143, 'Eiweiß', 'Protein'),
(1144, 'Bitte geben Sie einen Suchbegriff ein...', 'Please enter a searchterm...'),
(1145, 'Hilfe Center', 'Help Center'),
(1146, 'Kürzlich gestellte Fragen', 'Recently asked questions'),
(1147, 'Eine Anwort hinterlassen', 'Leave an answer'),
(1148, 'Bitte geben Sie eine Antwort ein. Versuchen Sie bitte so präzise wie möglich zu sein.', 'Please type in your answer. Try to be as precise as possible.'),
(1149, 'Antwort speichern', 'Post answer'),
(1150, 'Sicherheitsfragen', 'Security questions'),
(1151, 'Sicherheitsfrage hinzufügen', 'Add security question'),
(1152, 'Frage', 'Question'),
(1153, 'Antwort', 'Answer'),
(1154, 'Logins', 'Logins'),
(1155, 'Neues Passwort setzen', 'Set new Password'),
(1156, 'Auf allen anderen Geräten ausloggen', 'Logout everywhere else'),
(1158, 'Bitte wählen Sie ein neues Passwort', 'Please choose a new password'),
(1159, 'Neues Passwort', 'New password'),
(1160, 'Bestätigen Sie ihr neues Passwort', 'Confirm new password'),
(1161, 'Zurück', 'Go back'),
(1162, 'Das Passwort hat weniger als 8 Zeichen. </h1><p>Bitte wählen Sie ein längeres Passwort</p><h1>', 'Password is less than 8 characters </h1><p>Please choose a longer password</p><h1>'),
(1163, 'Account deaktivieren', 'Disable account'),
(1164, 'bestätigen', 'confirm'),
(1165, 'Wenn Sie sich sicher sind, dass Sie Ihren Account deaktivieren wollen, geben Sie bitte <u><b>bestätigen</b></u> in das Textfeld ein.', 'If you really want to disable your account, please type <u><b>confirm</b></u> into the textbox below and press &quot;Disable account&quot;'),
(1166, 'Bitte geben Sie "bestätigen" ein, um Ihren Account zu deaktivieren', 'Type in "confirm" to disable your account'),
(1167, 'Sicherheitsfrage wurde gespeichert', 'Security question was saved.'),
(1168, 'Email', 'Email'),
(1169, 'Passwort vergessen?', 'forgot your password?'),
(1170, 'Registrieren', 'register'),
(1171, 'Zutaten', 'Ingredients'),
(1172, 'Zutat', 'Ingredient'),
(1173, 'Menge', 'Amount (g/ml/pcs)'),
(1174, 'Arbeitsschritte', 'Steps'),
(1175, 'Noch einen Kommentar hinterlassen', 'Leave another comment'),
(1176, 'Kommentare', 'Comments'),
(1177, 'Einen Kommentar hinterlassen', 'Leave a comment'),
(1183, 'Blutzuckerwerte', 'Sugar value'),
(1184, 'KE-Faktor', 'KE factor'),
(1185, 'Bolus', 'Bolus'),
(1186, 'Basis', 'Basis'),
(1187, 'Anmerkungen', 'Notice'),
(1188, 'Speichern', 'Save'),
(1189, 'Heute gesamt', 'Total today'),
(1190, 'Arbeitstag', 'Workday'),
(1191, 'Uhr', 'a Clock'),
(1192, 'Jeden Tag', 'Every day at'),
(1193, 'Der Eintrag wurde gespeichert', 'Entry was saved.'),
(1194, 'Durchschnittlicher Zuckerwert', 'Sum Sugar value'),
(1195, 'Summe von KE', 'Sum KE'),
(1196, 'Durchschnittlicher KE-Faktor', 'Average KE factor'),
(1197, 'Summe Bolus', 'Sum Bolus'),
(1198, 'Summe Basis', 'Sum Basis'),
(1199, 'Durchschnittlicher Zuckerwert', 'Average Sugar value'),
(1200, 'Frei', 'Holdiday'),
(1201, 'Frei-/Arbeitstag', 'Type of day'),
(1202, 'BE', 'BE'),
(1203, 'BE Faktor', 'BE factor'),
(1204, 'Summe BE', 'Sum BE'),
(1205, 'Durchschnittlicher BE Faktor', 'Average BE factor'),
(1206, 'Stunde', 'HH'),
(1207, 'Minute', 'MM'),
(1208, 'Gericht wurde gelöscht', 'Dish was deleted.'),
(1209, 'Löschen', 'Delete'),
(1210, 'Privatisieren', 'Make private'),
(1211, 'Die Sichtbarkeit wurde auf privat gesetzt', 'Post status was changed to private.'),
(1212, 'Es wurde kein Gericht gefunden', 'Dish not found'),
(1213, 'Es tut uns leid, aber das Rezept wurde gelöscht, hat noch nie existiert oder Sie sind nicht dazu berechtigt es anzuzeigen', 'We are sorry, but either the dish was deleted, never existed or you are not allowed to view it anymore'),
(1214, 'Veröffentlichen', 'Make public'),
(1215, 'Passwort vergessen?', 'Password forgotten?'),
(1216, 'Ihre E-Mail Adresse', 'Your email adress'),
(1217, 'Setzen Sie ihr Diaberry Passwort zurück', 'Reset your password for Diaberry'),
(1218, 'Bitte überprüfen Sie ihre E-mails', 'Please check your emails'),
(1219, 'Erstelle Sie einen neuen Account', 'Create a new account'),
(1220, 'Vorname', 'Firstname'),
(1221, 'Nachname', 'Lastname'),
(1222, 'Bitte ändere Sie ihr Passwort', 'Please choose a password'),
(1223, 'Jetzt registrieren', 'Register now'),
(1224, 'Bitte wählen Sie eine andere Email Adresse', 'Please choose another email adress'),
(1225, 'Ihre Registrierung war von Erfolg gekrönt. Sie können sich jetzt einloggen.', 'Registration was successful. You can now log in.'),
(1226, 'Jetzt einloggen', 'Log-in now'),
(1227, 'Bitte wählen Sie ein neues Passwort. Dieses Passwort ist zu unsicher, da Sie es bereits benutzt haben..', 'Please choose a new password. This password already has been used earlier by you.'),
(1228, 'Gesamt', 'Sum'),
(1229, 'Wenn Sie  wirklich sicher sind, dass Sie ihren Account löschen möchten, dann tippen Sie bitte  <u><b>bestätigen </b></u> in das Textfeld und drücken Sie danach den Button&quot;Account deaktivieren &quot;', 'If you really want to disable your account, please type <u><b>bestÃ¤tigen</b></u> into the textbox below and press &quot;Disable account&quot;'),
(1230, '', 'N/a'),
(1231, '', 'Wrong log-in data'),
(1232, '', 'Please check the email adress you entered.'),
(1233, '', 'Calculation'),
(1234, '', 'Search'),
(1235, '', 'Visit'),
(1236, '', 'We are sorry, but either the post was deleted, never existed or you are not allowed to view it anymore');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `gid` int(11) NOT NULL,
  `bmi` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL,
  `lang` text NOT NULL,
  `uses_ke` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `fname`, `lname`, `email`, `gid`, `bmi`, `is_active`, `lang`, `uses_ke`) VALUES
(4, 'Dominik', 'Ziegenhagel', 'domi@domisseite.de', 1, 0, 1, '', 0),
(6, 'angela', 'griesbaum', 'fdas', 1, 0, 0, '', 0),
(7, 'fdsa', 'fdsa', 'asd@fdsa', 1, 0, 0, '', 0),
(8, 'fdsa', 'fdsa', 'fsd@fdsa', 1, 0, 0, '', 0),
(9, 'Angela', 'Griesbaum', 'angela.griesbaum@web.de', 1, 0, 1, 'de', 0),
(10, 'Angela', 'Griesbaum', 'Angi_angela520@web.de', 1, 0, 1, 'de', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserFactor`
--

CREATE TABLE `UserFactor` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time_id` int(11) NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserInjectionTime`
--

CREATE TABLE `UserInjectionTime` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserInsulin`
--

CREATE TABLE `UserInsulin` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `insulin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserLogin`
--

CREATE TABLE `UserLogin` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hash` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserLogin`
--

INSERT INTO `UserLogin` (`id`, `uid`, `ts`, `hash`) VALUES
(58, 10, '2017-04-11 13:08:39', 'bfcce2db94d267ae3bf4e7dc834923b37f47a257cad30e3e7fe711191d26878c4a5ad5158e0f4ef87f357e03e80c8bca1d305c055e628d6d2cfa7f170c70133b'),
(60, 4, '2017-04-11 13:19:46', 'c7abd9f60a8bf92f9fe90489221cbe6d28998a8ee3769a153437b94c6285ad1ff534c73a2b53e36b843b69d2086f02ca982c156ee3c2fff4ab48ef543e61b121'),
(61, 9, '2017-04-11 13:38:57', 'be957f0218c39ca21369a2f8b6c33485b1440862f2c836b5670b145fe5b6b96defcaab0fd7ce9cb93ebf7a8f49be4bf76805f244e91b6e13c2bc8551d0b5fe6a'),
(62, 4, '2017-04-11 19:04:16', '572b3a33375e1ef893fd7cf28d0aaaea456799518746060125aa68489f6ad2ba0e6dba62982b9ff6debffd1175c020a6a6a0d4869eb2c730b474d2ea11ca698c'),
(63, 4, '2017-04-12 09:36:44', '21b86b2c221d3b33407f219430de9d78a935e5f701c12faea4f79c4115fc6a5f77c34c2adba22190348e980e4983065eeb61c2c6c2bd6dc79c8efed0fce1a4f0'),
(64, 4, '2017-04-14 13:08:49', 'e46d844ddb1353ac1069607afaddc2136184c8adcf2b6a4edc58454ebd1c9101531279272eaa3e5c43f39c96d45f04ab7ebdf36a4c4649d1619b1e3ca4c36b21'),
(65, 4, '2017-04-14 13:09:08', 'c783d9ec702c3001a4bebf9935ea733ee4111ad88f8ff4bfcae2f3a80c5aa3aa09bb6879414a986bed8d70958225319679a948dd62a60c84f7574aedeb0b1b87'),
(66, 4, '2017-04-14 13:10:53', 'c783d9ec702c3001a4bebf9935ea733ee4111ad88f8ff4bfcae2f3a80c5aa3aa09bb6879414a986bed8d70958225319679a948dd62a60c84f7574aedeb0b1b87');

-- --------------------------------------------------------

--
-- Table structure for table `UserPassword`
--

CREATE TABLE `UserPassword` (
  `id` int(11) NOT NULL,
  `password` text NOT NULL,
  `ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserPassword`
--

INSERT INTO `UserPassword` (`id`, `password`, `ts`, `uid`) VALUES
(1, '86a4482fe4cff639b5e42eaf90cad79bb648a6408a00737c29e8ed6279d3ed8984566a720f94ff55e4fb033b7bac3c8e2cee3e462225b0a12ad947635457e58d', '2017-03-16 18:29:03', 4),
(2, '909d97d8b3b57404930cf941c9cd68318e10012ec493cc74516d03964bd3638746fc0c3a094a1daa47ab705b552566490a230c84e208e630324061bae60ebba1', '2017-03-24 09:59:04', 5),
(3, '00ba557232be5a8bf03d1b361f8ea1639b07d9a7c99350ca4ac4cbfb29a5fd3dd34ef9099ce68e78fe94a645f8dd86571996c923e2eade9c95c717e756706034', '2017-03-26 11:46:17', 5),
(4, 'f39868d5ac48613eea30201c5b0b611e3e8141e68ad810ec31016a3535db44b543bea168d6463ea7f38ca2d7a6550127fa6da360c6d9f4e9ad8f1fa14656c199', '2017-03-26 11:50:13', 5),
(5, 'faa0c31a5153bf59a1abc50ddc4f11f6cc9c888ef4a1fd30d9c0f35af26fca2895f71fdebb2c20811233cd5a56362f4eda926d5cc6c0e57e2bc85246a7b95393', '2017-03-26 12:11:19', 5),
(6, 'f39868d5ac48613eea30201c5b0b611e3e8141e68ad810ec31016a3535db44b543bea168d6463ea7f38ca2d7a6550127fa6da360c6d9f4e9ad8f1fa14656c199', '2017-03-28 15:31:12', 6),
(8, '4695495ae9ec99bc1c0cf72b5a3dcd88a9e772c403c046d2ddb91ab2d3b6454a38ae9854c9b5a96164fb2716e4ffcb08ebf5aea3fd83753f33c61f4104f63a13', '2017-04-10 09:12:07', 4),
(9, '6e80c019e21588491bad404f8f7e4faefafb4c10c496813a9e6742844d8ce137ea448be64c9ec40ee59076521dca1361ee9ef440d90e4de1e207ba510db3d901', '2017-04-10 23:44:03', 4),
(10, '7cbfea3e60489c95924023553e1a8e06c8b75297a04f42cd2042eade84aab20ed1fb772b7901dedb4412caa10cf6617cf4c910a8a8e69f382a46af5b9e56b8f4', '2017-04-10 23:44:35', 4),
(11, '39dad35c2da497e8661522e01ef0d4a630f05743d1a1f275066544c0496ae381799446f6cc42a57db3b22f4ce361701375ce6f247f61f96fbf73e5afc89163eb', '2017-04-10 23:45:20', 4),
(12, '3d9207370a726800c7d1c20efde8f0fd891bf8bb1b601f074be30105ff534852fa70548ccf5128961eb53d3dda88cc25b4ceca3b0318ae356182ed07235566fd', '2017-04-10 23:47:34', 7),
(13, 'eeafa7e44472c4f9b95f1b0b5ba8178f37ebd4129b71914654a5d703683c370b5888ab31a8b5ff1343aa3e605f4a2e2666dde2af7f0d0c856130135338c41e53', '2017-04-10 23:48:45', 8),
(14, 'b8ae381f6e2a9b19fe3125158c03a8a2d7f5486427c2c4e0b7b66973550aea5f1b6ea48b616d8cbda095cc15c6c38c289b82925ec8bbe773af8e343ed85ae852', '2017-04-11 10:26:17', 9),
(15, 'b8ae381f6e2a9b19fe3125158c03a8a2d7f5486427c2c4e0b7b66973550aea5f1b6ea48b616d8cbda095cc15c6c38c289b82925ec8bbe773af8e343ed85ae852', '2017-04-11 15:08:24', 10);

-- --------------------------------------------------------

--
-- Table structure for table `UserPasswordReset`
--

CREATE TABLE `UserPasswordReset` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hash` text NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserPasswordReset`
--

INSERT INTO `UserPasswordReset` (`id`, `uid`, `ts`, `hash`, `used`) VALUES
(1, 5, '2017-03-26 11:43:05', '9e5be6d3143a8f3805b3282696a3016ddec001e145cf33a8669c6014e4e93d0235e433ff4e1ab452e3e8144a01aa046309bdb3b65bd263136914e6b9a85cd66b58d78d2997d22', 0),
(2, 5, '2017-03-26 12:04:45', '5042c9d0d69859753a3c4d9be00c5d145061b123d35914dcd23ea91c0902d83fa42f699aa1189a442d556d8e970718b7c8dea7ba30a25ccba633bfaa1a4291b758d7923d53d0c', 0),
(3, 5, '2017-03-26 12:04:57', '87a5fe72c06c07f5d4df9f2a603ea7505c20dd79dc9d47be418e35215c1b4a56a52d20b3b14cf611185f0b3f23d6266f501873a8a518ea7c4bda91511da7c24d58d79249a38ac', 0),
(4, 5, '2017-03-26 12:06:15', '488259c4ff5442ed5ef3b6690a3e185c3a971ecda0bde965161ef20795b0ffb524e5d893d558f72e6ffe96059c06af07622f97068387e81a13e98bc3bb64e7df58d79297758a6', 0),
(5, 5, '2017-03-26 12:06:24', '1a2f2a66149cae16ebaee4cfda45c49f33953cbd254c6e34171611e57835ff476af613e5a9470a0d2fdfe4bf39461ebda71722714fa6953e67096d98fbd3c85f58d792a06a0ab', 0),
(6, 5, '2017-03-26 12:06:32', '8875e35c74c26e19feea2e4fd495962e8bcd210ead1a2fb15ab00906ad5de53a2b2734bdaaa970ff6120d74bba057486988336879e8550e774689f19e218dde158d792a801d37', 0),
(7, 5, '2017-03-26 12:06:35', '06d8b263cabfdd9dec1658a335051a7fad8c8a4b06eec95059bccc76c562fcec948fac20924280401ac7180f9e11934d8571538993682a58a91ae8fdb75a200258d792ab1e17c', 0),
(8, 5, '2017-03-26 12:07:08', 'c1223d27c58de86652b62ea17e671bd4afc7b3fc1cecd1544f084e4dc6a240e57c4b798386cba25bd873c5b15ac3b6ea4e848059ed17dd114c8fca92fb66e61358d792cc0c9ab', 0),
(9, 5, '2017-03-26 12:07:17', '0a2d5f7d0415873df52fa3df1f6b73b03e3bde98770b44a8301e21ec21263538df859f2ed2c64c3b84160689f9ada99cd92c7e29bba5666e0305a599f27a77b258d792d584e29', 0),
(10, 5, '2017-03-26 12:07:33', 'cb451416bd1d28c2debd0e04bb54a9d23f4759b3242f2dced18f66c04284d24521a3eb59d46d629fbab78e094817edb008e615f2208c97e147fc70f4762d16a258d792e5895d8', 0),
(11, 5, '2017-03-26 12:08:25', '94336f05589fe4df694d5853ebd4e9d522669422e04e79dc48b922a13913b0b856c342dc1d8abab34c4d3339c6f5b8ee68f61412ed51628fa94ac63257d2aa8658d7931994dff', 0),
(12, 5, '2017-03-26 12:08:30', 'f7812826957465f30de5da3a06a7919e8233422f99eb70f7534792692c4312517e0eb4d105c8ca5bdd83515055d514234e87557e834837209deec9dffbe3b1b058d7931e9fcfe', 0),
(13, 5, '2017-03-26 12:08:31', '66a5643a9d98877ef7522be915c14a80b4374025eeea56e5a848fc6fb08af1464b7c2c9580711bffa83d2f8f8df47537aedf41e426a044d324c1d6912284026458d7931f9791e', 0),
(14, 5, '2017-03-26 12:08:33', '27cd429ae943b7d872a1bdb2611a44c0942b42c567d6f24f76e2b020314eabec87400d68de9556d4f04cc8d3cfe8820e7bc341d8ede28bb222757dee5d245ba358d793217d391', 0),
(15, 5, '2017-03-26 12:09:55', 'cc135e0c36a27edf60dc6798f4c075762331513625f30ba663dffd635b7ca256c792ab58d436922304ddf09e6c7653a276b90ce745cc483632982b444340347e58d7937388afa', 0),
(16, 5, '2017-03-26 12:10:18', 'a21b42320d8239d6464f588267eec025ebfe59bb2c784e024a7bcc567632289463e439b2a6cf285dbb4521b1815a54159e4e438005d65a5dfb3adc1771ac545858d7938a10099', 0),
(17, 5, '2017-03-26 12:10:25', 'd3f7049dbe1746caf8b4ab85dcbc60a34383fbb23f6caf4f5d17f0e8b604ce0168f99a729738db36733b6a75ad608ee9e0a99335a670255a9f9e910574a9947158d793912edda', 0),
(18, 5, '2017-03-26 12:10:31', '0ec4f63cf01af0e75f497368e669856caea5423e74caad520b451b1e82727d6b55dd89f8c5095dac715c6bed03b26bccc7a62bfc6f24eb808109038340aed5e758d7939765f04', 0),
(19, 5, '2017-03-26 12:10:33', '358cb5e633ea9f1c836cfda2e3ee0bafb3ee1a8b849ce82451dc28437e8ca81d0ac920654ea430dbb6ef1244eaca5452987ca48bf6a198ec57febd49d032089c58d7939982d8d', 0),
(20, 5, '2017-03-26 12:11:02', '991e208ce92cafc2027acefdf8e1b314bb3b7d1149ae58703efc451618b1095e2df5364aae454c5a7ee5386c12f7e97b933e332ad57149a2c2aee72751bace7e58d793b6af394', 0),
(21, 6, '2017-03-28 15:31:52', 'fc393e6056749a84aa9423d0a083453c533190d7ea0a4443171a0ca4d4056b6cae1d781224370456664fe3873af7a55475b6a48cf995ba556318cfe941090d3658da65c884db6', 0),
(22, 4, '2017-04-10 09:07:50', 'd19e5fa623a7234e2b63f46e83f025edb1374666f2c1dc8321526eccf7ea0812b79718f5c8f9406c85e1b5fccc81a71c693cb407f89489f93363c9d78c3f91a958eb2f46e39bf', 0),
(23, 4, '2017-04-10 09:08:09', 'bc3df6af8351b557464334d17271e96d44fb185889c10e988746006f7058b30292145dbb064e460eb6038a95b6999c0da42131f79a9271ad1bd9ecb980a008f258eb2f5982696', 0),
(24, 4, '2017-04-10 23:37:30', 'd5fe22d8b40593ecdc5f205bff119d8a406902f565f998309decf4180412ee886395df34af83d7f32049e061220919bfcbe0d5856251d4e57827419231d4632d58ebfb1adb309', 0),
(25, 4, '2017-04-10 23:37:38', '99c44fb0be68b66dd00c9320b99ac11fa07846bbb9a1729216d0e4b369b72f4346cc2661ec1ace4c0345aa377ce463ea927079116dff11a870a4d86a1517efa658ebfb2283da8', 0),
(26, 4, '2017-04-10 23:38:08', 'a6388c31f4c23426eb0d448adb3d24f701c2b0f8387664bd82cffa5b030e2b5854a1760f6a03af3a0ff4323ee375eda7f7acf553ca9b1289a44753eac532158158ebfb409c914', 0),
(27, 4, '2017-04-10 23:38:11', '81282a4e2b96597cb19e9205fdb53cca0c41a1a7eb09a8ae2a671bffe58d2089d1212ce9a234e18a714955f930b2d9fd254db68bf6c5150682fbfb5848bb3f6e58ebfb434a0c2', 0),
(28, 4, '2017-04-10 23:38:18', 'b876c68e7345003e4730f1533d9f2728a5d03ea86e663cbb092fdea487b95b38557c886cf8dab475b63e81e698c1624dfea9ba2c5feb344de25257d08a053b5358ebfb4ad53c3', 0),
(29, 4, '2017-04-10 23:38:32', 'b7fb10774177e1ce481cdf30c140462504c819326eb3f29b8d26ecaf5627dfc2ba206f781684474d96b3c2384f61b01476b2664f3b1b3ace7da3188204e9fd8d58ebfb580e7b3', 0),
(30, 4, '2017-04-10 23:38:55', '35c9da8c899efc1de37c0e3270654367caa1411c17b679369a738c480b10b242ab85c3cfac5e1eb8cafa965a50efde1b72aa963299deedfa266e6aa50f0d038358ebfb6f13460', 0),
(31, 4, '2017-04-10 23:39:38', 'ec8543cd1c96403fa83ed1ba1b5ef45fa22335ee55133c70c69f12ec066e1946bd4b060de5d4292402f2ebf98bc9f04c2818b7679761ba8cb3ee0a7b5f67c31658ebfb9a39efc', 0),
(32, 4, '2017-04-10 23:39:39', 'acea720dc96b1a40af56ab7a3d4e6ee81744cd7895eea2facb5a11db2a297589ba350cec77b636fcb99c55bc031e1336b0a90a1e367d63735463f2b97a241ed258ebfb9b363ae', 0),
(33, 4, '2017-04-10 23:39:48', 'c752902e379d8dc1e0f7404020d0f08151f9dbdc1fff4781a2da4ea4c4b18470504b5bd8b62834187ee8b5a3ec97e2b2a9ca7564189c79badfca0624260713af58ebfba438bd2', 0),
(34, 4, '2017-04-10 23:40:08', 'c9c019899630374110a21c4d2282835aec3fab23b8fb6888b4b8a9982e5f54eb4cf3ca2af5803b9875346a252afffbcf9bf02ecaf237f08c28d051b87b1b68cb58ebfbb80d9ba', 0),
(35, 4, '2017-04-10 23:40:13', '189322ed4f2513a5058c211aa3ff89ccee1d037a3bcdb3f9d05ecd7dd2e108874525f47bc5ece161326e526bd3c7a84e2df4d56b406d5609b52054bfbbafefa758ebfbbda3c1f', 0),
(36, 4, '2017-04-10 23:40:19', '22a656b74e6b18228e7963bcb88d9a8c781351d6bd90b115084dc73b33fa8a524fdfe786812162a3105b3d18aa021e379c127a267a43ecc6676bdff67b5fe80658ebfbc3bcd3f', 0),
(37, 4, '2017-04-10 23:40:29', '58fd6e444185978b7f25b7383e57852a3f0880c68fe56f24d35b670081a948286ef0c1455f0db17eaa2c5eedacff4d88bca5c885caf3eb849b4b7658689a9efe58ebfbcd5f5f7', 0),
(38, 4, '2017-04-10 23:40:35', '21d097c152e48ba8d8427fed609c4af065241535c404b7a2cdc99c71c9d993734f7b1d077903c6beff62eccb9cbfa7701689fbf2457d7f5f4b41c29941ea426658ebfbd317a42', 0),
(39, 4, '2017-04-10 23:40:40', 'a33d124e6dd9605dc8972ce3bc2dc33f000dfebbdd54f840d94984e7abff6972cd0c83010aefb993f7ded517af18288c49f58bb96393f34245cbc687c761399e58ebfbd88cc9b', 0),
(40, 4, '2017-04-11 01:10:15', 'c03a07d82cc5e062b99ae27db66e1143a6c1838d50a54bdae968f3e22a5ce51b1497e04dd7b218ff4cf55ef2b1675947a6c7b5b7ffbc460c888f0e2e5a9e6b8058ec10d779a7a', 0),
(41, 9, '2017-04-11 11:18:19', '25e33a7730b1eb976245ae52828885b005da6c71c6b12f64a83891a392c8c9fc7921a424b0f365a9a07be8546febc0d7c75e16ada10f5a1e8423b056e34ccee758ec9f5bded7e', 0),
(42, 9, '2017-04-11 13:23:41', 'd3b6115b079f89bf52337355c54a030d4cac6d9ec174ca2b76d50fbd6ad37195d18d69888396335447af5b43a876d886937e0871dae1696bea1d2552928ff70c58ecbcbd8122d', 0),
(43, 9, '2017-04-11 13:23:46', '6afc5f11967f386fd617683d88ef89f85b2bfff482c11cc8a2ff299ce00516138f3e9a234d161d9803722987b4b1ecf807fb9736e7105a5022ed794ce754944758ecbcc23dfd7', 0),
(44, 9, '2017-04-11 15:05:47', '36689fd92bdbfdc76c908688fe8d5999d37e591cbe48c2c622f0b2bdac44dc90a73f457d8be357806d73b104ba69fb1515de2ba5fce5762456e36167f45e651658ecd4ab609b8', 0),
(45, 10, '2017-04-11 15:09:02', '57d6b1e2b448b8e5fc4d21810e33f0e36ca8dfb23cb3e4ce4bbcc978aee89ec0d0edefa410f9a157d5c711daa22a6421814dad8ed4c53d1944d791c2b272da3258ecd56e9e0f3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserPreference`
--

CREATE TABLE `UserPreference` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` text NOT NULL,
  `val` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserSecurityQuestion`
--

CREATE TABLE `UserSecurityQuestion` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `q` text NOT NULL,
  `a` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserSecurityQuestion`
--

INSERT INTO `UserSecurityQuestion` (`id`, `uid`, `q`, `a`) VALUES
(6, 4, 'wie heisst dein haustier', 'bello'),
(7, 4, 'leiblingsfarbe?', 'rot'),
(14, 9, 'p=l', 'p[l'),
(15, 9, 'p=l', 'p[l'),
(16, 9, 'Wann bin ich geboren?', '1998'),
(17, 9, 'Wann bin ich geboren?', '1998');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Alarm`
--
ALTER TABLE `Alarm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `DiaryEntry`
--
ALTER TABLE `DiaryEntry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Dish`
--
ALTER TABLE `Dish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `DishComment`
--
ALTER TABLE `DishComment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `DishIngredient`
--
ALTER TABLE `DishIngredient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DishPicture`
--
ALTER TABLE `DishPicture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`dish_id`);

--
-- Indexes for table `DishRating`
--
ALTER TABLE `DishRating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`dish_id`),
  ADD KEY `rating_id` (`rating`);

--
-- Indexes for table `DishStep`
--
ALTER TABLE `DishStep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`dish_id`);

--
-- Indexes for table `Eaten`
--
ALTER TABLE `Eaten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `Friends`
--
ALTER TABLE `Friends`
  ADD PRIMARY KEY (`uid1`,`ui2`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `GroupPermission`
--
ALTER TABLE `GroupPermission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Help`
--
ALTER TABLE `Help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Help_old`
--
ALTER TABLE `Help_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Ingredient`
--
ALTER TABLE `Ingredient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `IngredientUnit`
--
ALTER TABLE `IngredientUnit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Insulin`
--
ALTER TABLE `Insulin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insulin_type_id` (`insulin_type_id`);

--
-- Indexes for table `InsulinType`
--
ALTER TABLE `InsulinType`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Meal`
--
ALTER TABLE `Meal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Preference`
--
ALTER TABLE `Preference`
  ADD PRIMARY KEY (`alias`(64));

--
-- Indexes for table `Time`
--
ALTER TABLE `Time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Translation`
--
ALTER TABLE `Translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `UserFactor`
--
ALTER TABLE `UserFactor`
  ADD KEY `uid` (`uid`),
  ADD KEY `time_id` (`time_id`);

--
-- Indexes for table `UserInjectionTime`
--
ALTER TABLE `UserInjectionTime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `time_id` (`time_id`);

--
-- Indexes for table `UserInsulin`
--
ALTER TABLE `UserInsulin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insulin_id` (`insulin_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `UserLogin`
--
ALTER TABLE `UserLogin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `UserPassword`
--
ALTER TABLE `UserPassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UserPasswordReset`
--
ALTER TABLE `UserPasswordReset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UserPreference`
--
ALTER TABLE `UserPreference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UserSecurityQuestion`
--
ALTER TABLE `UserSecurityQuestion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Alarm`
--
ALTER TABLE `Alarm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `DiaryEntry`
--
ALTER TABLE `DiaryEntry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Dish`
--
ALTER TABLE `Dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `DishComment`
--
ALTER TABLE `DishComment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `DishIngredient`
--
ALTER TABLE `DishIngredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `DishPicture`
--
ALTER TABLE `DishPicture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `DishRating`
--
ALTER TABLE `DishRating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `DishStep`
--
ALTER TABLE `DishStep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `Eaten`
--
ALTER TABLE `Eaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GroupPermission`
--
ALTER TABLE `GroupPermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Help`
--
ALTER TABLE `Help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Help_old`
--
ALTER TABLE `Help_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Ingredient`
--
ALTER TABLE `Ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `IngredientUnit`
--
ALTER TABLE `IngredientUnit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Insulin`
--
ALTER TABLE `Insulin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Meal`
--
ALTER TABLE `Meal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Translation`
--
ALTER TABLE `Translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1237;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `UserInjectionTime`
--
ALTER TABLE `UserInjectionTime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserInsulin`
--
ALTER TABLE `UserInsulin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserLogin`
--
ALTER TABLE `UserLogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `UserPassword`
--
ALTER TABLE `UserPassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `UserPasswordReset`
--
ALTER TABLE `UserPasswordReset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `UserPreference`
--
ALTER TABLE `UserPreference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserSecurityQuestion`
--
ALTER TABLE `UserSecurityQuestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Alarm`
--
ALTER TABLE `Alarm`
  ADD CONSTRAINT `Alarm_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `User` (`id`);

--
-- Constraints for table `DishPicture`
--
ALTER TABLE `DishPicture`
  ADD CONSTRAINT `DishPicture_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `Dish` (`id`);

--
-- Constraints for table `Insulin`
--
ALTER TABLE `Insulin`
  ADD CONSTRAINT `Insulin_ibfk_1` FOREIGN KEY (`insulin_type_id`) REFERENCES `InsulinType` (`id`);

--
-- Constraints for table `UserFactor`
--
ALTER TABLE `UserFactor`
  ADD CONSTRAINT `UserFactor_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `UserFactor_ibfk_2` FOREIGN KEY (`time_id`) REFERENCES `Time` (`id`);

--
-- Constraints for table `UserInjectionTime`
--
ALTER TABLE `UserInjectionTime`
  ADD CONSTRAINT `UserInjectionTime_ibfk_1` FOREIGN KEY (`time_id`) REFERENCES `Time` (`id`),
  ADD CONSTRAINT `UserInjectionTime_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `User` (`id`);

--
-- Constraints for table `UserInsulin`
--
ALTER TABLE `UserInsulin`
  ADD CONSTRAINT `UserInsulin_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `UserInsulin_ibfk_2` FOREIGN KEY (`insulin_id`) REFERENCES `Insulin` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
