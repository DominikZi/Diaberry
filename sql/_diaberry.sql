-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2017 at 10:56 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
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
  `time` time NOT NULL,
  `day` enum('0','1','2','3','4','5','6','7') NOT NULL COMMENT '0=sunday'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DiaryEntry`
--

CREATE TABLE `DiaryEntry` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  `point_of_time` enum('before','while','after') NOT NULL,
  `sugar_value_before` double NOT NULL,
  `sugar_value_while` double NOT NULL,
  `sugar_value_after` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `preparing_time` time NOT NULL,
  `cooking_time` time NOT NULL,
  `status` text NOT NULL,
  `difficulty` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dish`
--

INSERT INTO `Dish` (`id`, `title`, `description`, `uid`, `portions`, `preparing_time`, `cooking_time`, `status`, `difficulty`, `ts`) VALUES
(22, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 0, '00:00:00', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(23, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 0, '00:00:00', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(24, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 43, '01:00:00', '00:18:00', 'trash', 0, '2017-04-10 19:53:08'),
(25, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 0, '00:00:00', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(26, 'schinkenbraten ', 'fsdajfisd afdjska fjdslaf dsakf jdslka fjdlksajkl', 5, 0, '00:00:00', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(27, 'fdsa', 'sdfdsasgd', 5, 3, '00:30:00', '00:04:00', 'trash', 0, '2017-04-10 19:53:08'),
(28, 'fdsa', 'sdfdsasgd', 5, 0, '00:30:00', '00:04:00', 'trash', 0, '2017-04-10 19:53:08'),
(29, 'schnitzelbraten', 'ein schnitzelbratzen mit pommes', 6, 2, '00:00:00', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(30, 'schnitzelbraten', 'ein schnitzelbratzen mit pommes', 6, 3, '00:01:20', '00:00:40', 'trash', 0, '2017-04-10 19:53:08'),
(31, 'Schweinebraten', 'mit rotkohl', 4, 3, '00:00:40', '00:01:10', 'trash', 0, '2017-04-10 19:53:08'),
(32, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(33, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(34, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(35, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(36, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(37, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(38, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(39, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(40, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(41, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(42, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(43, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(44, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(45, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(46, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(47, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(48, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(49, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(50, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(51, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(52, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(53, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(54, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(55, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(56, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(57, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(58, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(59, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(60, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(61, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(62, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(63, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(64, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(65, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(66, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(67, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(68, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(69, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(70, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(71, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(72, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(73, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(74, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(75, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(76, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(77, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(78, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(79, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(80, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(81, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(82, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(83, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'trash', 0, '2017-04-10 19:53:08'),
(84, 'hgfd', 'hgfd', 4, 4, '00:00:10', '00:00:00', 'public', 0, '2017-04-10 19:53:08'),
(85, '', '', 4, 0, '00:00:00', '00:00:00', 'public', 0, '2017-04-10 19:53:08'),
(86, '', '', 4, 0, '00:00:00', '00:00:00', 'public', 0, '2017-04-10 19:53:08'),
(87, 'GemÃ¼sestrudel', 'FÃ¼r viele ist eine richtige Party ohne Kartoffelsalat undenkbar und als Grillbeilage hat der Kartoffelsalat genauso wie der Nudelsalat lÃ¤ngst Kultst', 4, 4, '00:00:20', '00:00:40', 'trash', 0, '2017-04-10 19:53:08'),
(88, 'GemÃ¼sestrudel', 'FÃ¼r viele ist eine richtige Party ohne Kartoffelsalat undenkbar und als Grillbeilage hat der Kartoffelsalat genauso wie der Nudelsalat lÃ¤ngst Kultst', 4, 4, '00:00:20', '00:00:40', 'trash', 0, '2017-04-10 19:53:08'),
(89, 'GemÃ¼sestrudel', 'FÃ¼r viele ist eine richtige Party ohne Kartoffelsalat undenkbar und als Grillbeilage hat der Kartoffelsalat genauso wie der Nudelsalat lÃ¤ngst Kultst', 4, 4, '00:00:20', '00:00:40', 'trash', 0, '2017-04-10 19:53:08'),
(90, 'GemÃ¼sestrudel', 'FÃ¼r viele ist eine richtige Party ohne Kartoffelsalat undenkbar und als Grillbeilage hat der Kartoffelsalat genauso wie der Nudelsalat lÃ¤ngst Kultst', 4, 4, '00:00:20', '00:00:40', 'private', 0, '2017-04-10 19:53:08');

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
(12, 4, '2017-04-10 22:32:01', 'f sad', 90);

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
(42, 90, 41, 1, 5);

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
(13, 90, '751066607058ebc5b5852db', 'Strudel 3', '2017-04-10 17:49:41', 'jpg', NULL);

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
(40, 'Die Zwiebel, den Knoblauch und die Karotten fein schneiden und andÃ¼nsten. Zum Schluss die Zucchini beigeben und noch 10 Minuten weiter dÃ¼nsten. Die Masse Ã¼berkÃ¼hlen lassen. Dann mit Ei, CrÃ¨me fraÃ®che, Salz und Pfeffer abschmecken. \r\n', 90, 'Backen');

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
  `title` text NOT NULL,
  `text` text NOT NULL,
  `tags` text NOT NULL,
  `lang` enum('de','en') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Help`
--

INSERT INTO `Help` (`id`, `title`, `text`, `tags`, `lang`) VALUES
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
(30, 'Mehl', 12);

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
(937, '', 'share'),
(938, '', 'Ingredients'),
(939, '', 'Ingredient'),
(940, '', 'Amount (g/ml/pcs)'),
(941, '', 'Steps'),
(942, '', 'Rating'),
(943, '', 'Comments'),
(944, '', 'Leave a comment'),
(946, '', 'Difficulty'),
(948, '', 'Difficulty (the lower, the easier)'),
(949, 'Leider wurden keine Ergebnisse gefunden', 'Unfortunately there were no results'),
(950, '', 'Email'),
(951, '', 'register'),
(952, '', 'forgot your password?'),
(953, '', 'new? register here'),
(954, '', 'new? register'),
(955, '', 'Password forgotten?'),
(956, '', 'Your email adress'),
(957, '', 'Create a new account'),
(958, '', 'Firstname'),
(959, '', 'Lastname'),
(960, '', 'Please choose a password'),
(961, '', 'needs to be at least 8 characters and contain a Uppercase letter as well as a number.'),
(962, '', 'Dish was deleted.'),
(963, '', 'Leave another comment.'),
(964, '', 'Leave another comment'),
(965, '', 'Easy'),
(966, '', 'Normal'),
(967, '', 'Hard');

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
  `bmi` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `fname`, `lname`, `email`, `gid`, `bmi`) VALUES
(4, 'Dominik', 'Ziegenhagel', 'domi@domisseite.de', 1, 0),
(6, 'angela', 'griesbaum', 'angela@griesbaum.de', 1, 0);

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
(1, 4, '2017-03-16 17:29:36', 'a0c5e93d5b972e08c4feead21b1891e672f8728ff9fd6575c7ffa23a032ad2f73ebc6287e70d7e35e935bb859b0789b11956e98b74e9eb9f037cf8209061351b'),
(2, 4, '2017-03-16 17:29:36', '30c85c6525d994a2c6a992f9b54c2f924d36c152c095aa229f1256a3e4920accbba8981fd73409771153e807af6b6c0290933b7319ef3cbb215bc996bb41ebe4'),
(3, 4, '2017-03-16 17:34:27', 'cf0d02e7278e8e793a1478236bb5f9113a804770c5b668294f8d296b72e4d3335a7a935675cb4c48d2d3997c2a0a3d7e9d7c6a175853c62b8610322a27da689f'),
(4, 4, '2017-03-16 17:34:27', 'cf0d02e7278e8e793a1478236bb5f9113a804770c5b668294f8d296b72e4d3335a7a935675cb4c48d2d3997c2a0a3d7e9d7c6a175853c62b8610322a27da689f'),
(5, 5, '2017-03-24 08:59:12', '3632bc14227323ba01da716d31dfb25b2e87450919937e9349e18bace914911b5c1e213fcb330ada8310d83b493f3e50bdd4f4029bb8d41d138c4967cdd5114d'),
(6, 5, '2017-03-24 08:59:12', '3632bc14227323ba01da716d31dfb25b2e87450919937e9349e18bace914911b5c1e213fcb330ada8310d83b493f3e50bdd4f4029bb8d41d138c4967cdd5114d'),
(7, 5, '2017-03-24 08:59:31', '3632bc14227323ba01da716d31dfb25b2e87450919937e9349e18bace914911b5c1e213fcb330ada8310d83b493f3e50bdd4f4029bb8d41d138c4967cdd5114d'),
(8, 5, '2017-03-24 08:59:31', '3632bc14227323ba01da716d31dfb25b2e87450919937e9349e18bace914911b5c1e213fcb330ada8310d83b493f3e50bdd4f4029bb8d41d138c4967cdd5114d'),
(9, 5, '2017-03-24 09:06:03', '3632bc14227323ba01da716d31dfb25b2e87450919937e9349e18bace914911b5c1e213fcb330ada8310d83b493f3e50bdd4f4029bb8d41d138c4967cdd5114d'),
(10, 5, '2017-03-24 09:06:03', '3632bc14227323ba01da716d31dfb25b2e87450919937e9349e18bace914911b5c1e213fcb330ada8310d83b493f3e50bdd4f4029bb8d41d138c4967cdd5114d'),
(11, 5, '2017-03-26 09:51:06', 'da98341a4bc46876bf00002f8c26384f2babbd267939fb75e549bd940a6433ba85053716b0450bc922a6bcb847aeb6f5db60632751541adc4ccf8005a9c34ad0'),
(12, 5, '2017-03-26 09:51:06', 'da98341a4bc46876bf00002f8c26384f2babbd267939fb75e549bd940a6433ba85053716b0450bc922a6bcb847aeb6f5db60632751541adc4ccf8005a9c34ad0'),
(13, 5, '2017-03-26 10:11:27', '8be7d28ba20bbc3084b7f3c26ca1590c8d9e1f4a95018209945db58154869917973961ca4a9045d6c96f3d61e0a93e963c0b65978ca1cddeca5dca6c5da78ebf'),
(14, 5, '2017-03-26 10:11:27', '8be7d28ba20bbc3084b7f3c26ca1590c8d9e1f4a95018209945db58154869917973961ca4a9045d6c96f3d61e0a93e963c0b65978ca1cddeca5dca6c5da78ebf'),
(15, 5, '2017-03-26 14:00:42', '3f153f96c999a9467c21886b0d728ce774ba3f187ccb4502bdda477705410f15481e53b31351e95c756ce55ad1da4d1e670239b63a5dc243d2875dff2093895b'),
(16, 5, '2017-03-26 14:00:42', '3f153f96c999a9467c21886b0d728ce774ba3f187ccb4502bdda477705410f15481e53b31351e95c756ce55ad1da4d1e670239b63a5dc243d2875dff2093895b'),
(17, 6, '2017-03-28 13:33:33', '00001ecf7b3dc061baee5626b4f01cb62fb450b15d2630c4d691a44d0ffae1e2b6b60023a14fcb436a2df8c292ce63df4204b2b6c439f66262be264021bf1d43'),
(18, 6, '2017-03-28 13:33:33', '00001ecf7b3dc061baee5626b4f01cb62fb450b15d2630c4d691a44d0ffae1e2b6b60023a14fcb436a2df8c292ce63df4204b2b6c439f66262be264021bf1d43'),
(19, 6, '2017-03-28 13:41:49', 'e1b9acde9480b9601643e47b3a0b0da06873da6080cf0a3299bb8ffa5e7ec34efc80c984a6ae8ebc2c98f0e1b3ddbe7d1ad386b3404e6260f6241c9a9d3c3ec4'),
(20, 6, '2017-03-28 13:41:49', 'e1b9acde9480b9601643e47b3a0b0da06873da6080cf0a3299bb8ffa5e7ec34efc80c984a6ae8ebc2c98f0e1b3ddbe7d1ad386b3404e6260f6241c9a9d3c3ec4'),
(21, 6, '2017-03-28 13:45:04', 'fd3d9d6ba7069d71c24800d96b72c8e5292b4a94fb6e948a722032b9a0a1598ad4279d5337741775ef12689ba3f27cd18c090f0d87f80dcfc09ff75ca2aa1fd2'),
(22, 6, '2017-03-28 13:45:04', 'fd3d9d6ba7069d71c24800d96b72c8e5292b4a94fb6e948a722032b9a0a1598ad4279d5337741775ef12689ba3f27cd18c090f0d87f80dcfc09ff75ca2aa1fd2'),
(23, 6, '2017-03-28 15:44:38', 'ee0a4d476a58d386c38f481f000cf85ab6defd6710054ff5e0d91214148ea3285e0287a5b665914ce89bcb4fdaf489640acfef45f10bbe41b28aa91586634da9'),
(24, 6, '2017-03-28 15:44:38', 'ee0a4d476a58d386c38f481f000cf85ab6defd6710054ff5e0d91214148ea3285e0287a5b665914ce89bcb4fdaf489640acfef45f10bbe41b28aa91586634da9'),
(25, 4, '2017-04-10 07:12:17', '5f933d0363c1165200805c1e3ae164aaf5e9b039f070eeb93b92516c16b86429de8e23ac4215dc6a025e33553c3477f1fafd4743d783a078e89d126029ebf004'),
(26, 4, '2017-04-10 07:12:17', '5f933d0363c1165200805c1e3ae164aaf5e9b039f070eeb93b92516c16b86429de8e23ac4215dc6a025e33553c3477f1fafd4743d783a078e89d126029ebf004'),
(27, 4, '2017-04-10 07:13:02', '5f933d0363c1165200805c1e3ae164aaf5e9b039f070eeb93b92516c16b86429de8e23ac4215dc6a025e33553c3477f1fafd4743d783a078e89d126029ebf004'),
(28, 4, '2017-04-10 07:13:02', '5f933d0363c1165200805c1e3ae164aaf5e9b039f070eeb93b92516c16b86429de8e23ac4215dc6a025e33553c3477f1fafd4743d783a078e89d126029ebf004'),
(29, 4, '2017-04-10 08:30:25', '2f5cd1994ceaeacea7af5fa4e15e8dc894d6970ca0563988fcef22b684a5cbf30f3f7628bc3c44dfdecb757066bb5e2cb32b41bf25112d16763119ae6a5465c7'),
(30, 4, '2017-04-10 08:30:25', '2f5cd1994ceaeacea7af5fa4e15e8dc894d6970ca0563988fcef22b684a5cbf30f3f7628bc3c44dfdecb757066bb5e2cb32b41bf25112d16763119ae6a5465c7'),
(31, 4, '2017-04-10 16:22:59', 'b2e6242adf1062f8ef53a487a4d40e763e72bbd925a56a5d59921d53b0c49ab400ddd33b9371d77da9d742136ffca3d664bfc70f915ae25b2e17b4f2a8bf0591'),
(32, 4, '2017-04-10 16:22:59', 'b2e6242adf1062f8ef53a487a4d40e763e72bbd925a56a5d59921d53b0c49ab400ddd33b9371d77da9d742136ffca3d664bfc70f915ae25b2e17b4f2a8bf0591'),
(33, 4, '2017-04-10 19:23:55', '4521121bd1f96d29f3a5ec5eca6a4e442aa7017a007a88de800948f0dbba47b8f12f93ef045f187518002d76172458a095e337fbc8a779cdbf4735d32575a827'),
(34, 4, '2017-04-10 19:46:49', '2fa478d0ac40344274d88533d4a408660126940953d85f71851b4de53769efe8fcca3b89170943241ed25730091cbd01e2ac2b9836006dcb3030cc1f342f4360'),
(35, 4, '2017-04-10 19:47:01', '2fa478d0ac40344274d88533d4a408660126940953d85f71851b4de53769efe8fcca3b89170943241ed25730091cbd01e2ac2b9836006dcb3030cc1f342f4360'),
(36, 4, '2017-04-10 19:47:17', '2fa478d0ac40344274d88533d4a408660126940953d85f71851b4de53769efe8fcca3b89170943241ed25730091cbd01e2ac2b9836006dcb3030cc1f342f4360'),
(37, 4, '2017-04-10 19:47:30', '2fa478d0ac40344274d88533d4a408660126940953d85f71851b4de53769efe8fcca3b89170943241ed25730091cbd01e2ac2b9836006dcb3030cc1f342f4360');

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
(8, '4695495ae9ec99bc1c0cf72b5a3dcd88a9e772c403c046d2ddb91ab2d3b6454a38ae9854c9b5a96164fb2716e4ffcb08ebf5aea3fd83753f33c61f4104f63a13', '2017-04-10 09:12:07', 4);

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
(23, 4, '2017-04-10 09:08:09', 'bc3df6af8351b557464334d17271e96d44fb185889c10e988746006f7058b30292145dbb064e460eb6038a95b6999c0da42131f79a9271ad1bd9ecb980a008f258eb2f5982696', 0);

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
(1, 5, 'fdasfds', 'hhg'),
(2, 5, 'jgfj', '4364'),
(3, 5, 'jgfj', '4364'),
(4, 5, 'hfdhgfd', 'krewterwf'),
(5, 5, 'hfdhgfd', 'krewterwf'),
(6, 6, 'wie heisst dein haustier', 'bello'),
(7, 6, 'leiblingsfarbe?', 'rot');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `DiaryEntry`
--
ALTER TABLE `DiaryEntry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Dish`
--
ALTER TABLE `Dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `DishComment`
--
ALTER TABLE `DishComment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `DishIngredient`
--
ALTER TABLE `DishIngredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `DishPicture`
--
ALTER TABLE `DishPicture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `DishRating`
--
ALTER TABLE `DishRating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `DishStep`
--
ALTER TABLE `DishStep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Ingredient`
--
ALTER TABLE `Ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=968;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `UserPassword`
--
ALTER TABLE `UserPassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `UserPasswordReset`
--
ALTER TABLE `UserPasswordReset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `UserPreference`
--
ALTER TABLE `UserPreference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserSecurityQuestion`
--
ALTER TABLE `UserSecurityQuestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
