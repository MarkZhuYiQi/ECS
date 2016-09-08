-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2016 at 04:58 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecs`
--

-- --------------------------------------------------------

--
-- Table structure for table `ecs_news`
--

CREATE TABLE IF NOT EXISTS `ecs_news` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(50) NOT NULL,
  `news_intr` varchar(500) NOT NULL,
  `news_classId` int(11) NOT NULL,
  `new_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ecs_news`
--

INSERT INTO `ecs_news` (`id`, `news_title`, `news_intr`, `news_classId`, `new_content`) VALUES
(1, 'news', 'news introduction', 1, 'asasd');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_prod`
--

CREATE TABLE IF NOT EXISTS `ecs_prod` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(50) NOT NULL,
  `prod_introduction` varchar(500) NOT NULL,
  `prod_content` text NOT NULL COMMENT '商品图文简介',
  `prod_classId` int(11) NOT NULL DEFAULT '0',
  `prod_price1` decimal(10,2) NOT NULL,
  `prod_price2` decimal(10,2) NOT NULL,
  `prd_class_name` varchar(20) NOT NULL,
  `prod_ispublic` tinyint(1) NOT NULL DEFAULT '1' COMMENT '商品是否发布',
  `addTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_prod_class`
--

CREATE TABLE IF NOT EXISTS `ecs_prod_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_prod_meta`
--

CREATE TABLE IF NOT EXISTS `ecs_prod_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) NOT NULL,
  `metaName` varchar(15) NOT NULL,
  `metaValue` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ecs_user`
--

CREATE TABLE IF NOT EXISTS `ecs_user` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `user_pass` varchar(40) NOT NULL,
  `user_regTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ecs_user`
--

INSERT INTO `ecs_user` (`id`, `user_name`, `user_pass`, `user_regTime`) VALUES
(1, 'red', '+Gk3ICUy4AIYsMhUUXlHXg==', '2016-09-02 00:00:00'),
(2, 'mark', '/thaEVX0wJOMs57x2YxG2A==', '2016-09-03 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
