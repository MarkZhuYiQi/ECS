-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2016 at 11:51 AM
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
-- Table structure for table `ecs_m_role`
--

CREATE TABLE IF NOT EXISTS `ecs_m_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(20) DEFAULT NULL,
  `roleDes` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ecs_m_role`
--

INSERT INTO `ecs_m_role` (`id`, `roleName`, `roleDes`) VALUES
(1, 'admin', '管理员组'),
(2, 'master', '主编组'),
(3, 'editor', '编辑组'),
(4, 'finance', '财务组');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_m_roleuser`
--

CREATE TABLE IF NOT EXISTS `ecs_m_roleuser` (
  `roleId` int(11) NOT NULL COMMENT '存放用户ID指向的权限',
  `userId` int(11) NOT NULL COMMENT '存放用户的ID',
  PRIMARY KEY (`roleId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecs_m_roleuser`
--

INSERT INTO `ecs_m_roleuser` (`roleId`, `userId`) VALUES
(1, 1),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_m_tree`
--

CREATE TABLE IF NOT EXISTS `ecs_m_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_text` varchar(20) NOT NULL,
  `tree_url` varchar(200) NOT NULL,
  `tree_state` char(6) NOT NULL DEFAULT 'open',
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ecs_m_tree`
--

INSERT INTO `ecs_m_tree` (`id`, `tree_text`, `tree_url`, `tree_state`, `pid`) VALUES
(1, '商品管理', '', 'open', 0),
(2, '添加商品', '/ecs/m_index/addprod/', 'open', 1),
(3, '商品列表', '/ecs/m_index/listprod/', 'open', 1),
(4, '新闻管理', '', 'open', 0),
(5, '新闻列表', '#', 'open', 4),
(6, '添加新闻', '#', 'open', 4),
(7, '用户管理', '', 'open', 0),
(8, '安全退出', '/ecs/member/m_unlogin/', 'open', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ecs_m_user`
--

CREATE TABLE IF NOT EXISTS `ecs_m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_user_userName` varchar(20) NOT NULL,
  `m_user_password` varchar(40) NOT NULL,
  `m_user_regTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ecs_m_user`
--

INSERT INTO `ecs_m_user` (`id`, `m_user_userName`, `m_user_password`, `m_user_regTime`) VALUES
(1, 'admin', 'cs2HdHPaOnW+gfR/PhvvSg==', '2016-09-22 00:00:00'),
(2, 'mark', '/thaEVX0wJOMs57x2YxG2A==', '2016-09-22 00:00:00');

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
  `prod_name` varchar(50) NOT NULL COMMENT '商品名称',
  `prod_introduction` text COMMENT '商品简介 ',
  `prod_content` longtext COMMENT '商品图文简介',
  `prod_classId` int(11) NOT NULL DEFAULT '0' COMMENT '商品类ID|{"tb":"prod_class","id":"id","text":"class_name"}',
  `prod_price1` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `prod_price2` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `prod_class_name` varchar(20) DEFAULT NULL COMMENT '商品类别',
  `prod_ispublic` bit(1) NOT NULL DEFAULT b'1' COMMENT '商品是否发布',
  `prod_addTime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ecs_prod`
--

INSERT INTO `ecs_prod` (`id`, `prod_name`, `prod_introduction`, `prod_content`, `prod_classId`, `prod_price1`, `prod_price2`, `prod_class_name`, `prod_ispublic`, `prod_addTime`) VALUES
(7, 'red', '', 'red', 1, '0.00', '0.00', '', b'0', '1970-01-01 01:00:00'),
(8, 'Javascript高级程序设计', 'Javascript高级程序设计', 'Javascript高级程序设计', 1, '12.00', '12.00', '12', b'1', '2016-09-21 10:14:24'),
(9, 'python基础教程', 'python基础教程', 'python基础教程', 1, '65.00', '15.00', '2', b'1', '2016-09-21 10:15:13'),
(10, 'C#高级教程', 'C#高级教程', 'C#高级教程', 1, '199.00', '99.00', '2', b'1', '2016-09-21 10:15:36'),
(11, 'JAVA高级教程', 'JAVA高级教程', 'JAVA高级教程', 1, '99.00', '98.00', '2', b'1', '2016-09-21 10:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `ecs_prod_class`
--

CREATE TABLE IF NOT EXISTS `ecs_prod_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ecs_prod_class`
--

INSERT INTO `ecs_prod_class` (`id`, `class_name`) VALUES
(1, '计算机图书'),
(2, '人文类图书');

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
