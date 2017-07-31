-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-07-31 09:46:11
-- 服务器版本： 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baiduimg`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_admin_user`
--

CREATE TABLE `tp_admin_user` (
  `id` int(255) NOT NULL,
  `username` varchar(999) NOT NULL COMMENT '用户名',
  `password` varchar(999) NOT NULL,
  `name` varchar(999) NOT NULL COMMENT '名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_admin_user`
--

INSERT INTO `tp_admin_user` (`id`, `username`, `password`, `name`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '管理员');

-- --------------------------------------------------------

--
-- 表的结构 `tp_bdconfig`
--

CREATE TABLE `tp_bdconfig` (
  `id` int(25) NOT NULL,
  `name` varchar(999) NOT NULL COMMENT '贴吧名称',
  `en` varchar(999) NOT NULL COMMENT '贴吧英文名',
  `p_start` varchar(999) NOT NULL COMMENT '开始页',
  `p_end` varchar(999) NOT NULL COMMENT '结束页',
  `str` int(50) NOT NULL DEFAULT '0' COMMENT '状态0正常，1关闭',
  `score` int(255) NOT NULL DEFAULT '0' COMMENT '采集次数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_bdconfig`
--

INSERT INTO `tp_bdconfig` (`id`, `name`, `en`, `p_start`, `p_end`, `str`, `score`) VALUES
(1, '美女', 'meinv', '1', '5', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_imginfo`
--

CREATE TABLE `tp_imginfo` (
  `id` int(25) NOT NULL,
  `icolumn` varchar(999) NOT NULL COMMENT '所属栏目',
  `title` varchar(999) NOT NULL COMMENT '标题',
  `author` varchar(999) NOT NULL COMMENT '作者',
  `baiduid` varchar(999) NOT NULL COMMENT '百度帖子ID',
  `uptime` varchar(999) NOT NULL COMMENT '更时间',
  `imgurl` longtext COMMENT '图片URL',
  `score` int(255) DEFAULT '0' COMMENT '点击数',
  `str` int(20) DEFAULT '0' COMMENT '状态0正常，1关闭，2删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_tmpinfo`
--

CREATE TABLE `tp_tmpinfo` (
  `id` int(25) NOT NULL,
  `icolumn` varchar(999) NOT NULL COMMENT '所属栏目',
  `title` varchar(999) NOT NULL COMMENT '标题',
  `author` varchar(999) NOT NULL COMMENT '作者',
  `baiduid` varchar(999) NOT NULL COMMENT '百度帖子ID',
  `uptime` varchar(999) NOT NULL COMMENT '更时间',
  `getstr` int(25) NOT NULL COMMENT '采集状态0未采集，1已采集'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp_admin_user`
--
ALTER TABLE `tp_admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_bdconfig`
--
ALTER TABLE `tp_bdconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_imginfo`
--
ALTER TABLE `tp_imginfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_tmpinfo`
--
ALTER TABLE `tp_tmpinfo`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tp_admin_user`
--
ALTER TABLE `tp_admin_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `tp_bdconfig`
--
ALTER TABLE `tp_bdconfig`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `tp_imginfo`
--
ALTER TABLE `tp_imginfo`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `tp_tmpinfo`
--
ALTER TABLE `tp_tmpinfo`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
