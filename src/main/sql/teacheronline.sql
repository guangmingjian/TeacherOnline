-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-05 12:55:44
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teacheronline`
--

-- --------------------------------------------------------

--
-- 表的结构 `questions`
--

CREATE TABLE `questions` (
  `qu_id` int(11) NOT NULL COMMENT '自动生成主键',
  `u_id` int(11) NOT NULL COMMENT '用户的id，找到发出问题的用户',
  `qu_title` varchar(50) NOT NULL,
  `qu_type` varchar(50) NOT NULL COMMENT '分类类型，如：心理学，计算机等',
  `qu_values` int(11) NOT NULL,
  `qu_content` text NOT NULL,
  `qu_html` text NOT NULL,
  `qu_date` varchar(50) NOT NULL COMMENT '提出问题时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问题表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qu_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `questions`
--
ALTER TABLE `questions`
  MODIFY `qu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动生成主键';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
