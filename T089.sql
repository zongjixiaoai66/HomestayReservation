/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t089`;
CREATE DATABASE IF NOT EXISTS `t089` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t089`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-04-24 02:14:02', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-04-24 02:14:02', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-04-24 02:14:02', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-04-24 02:14:02', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-04-24 02:14:02', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-04-24 02:14:02', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'minsuxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='客服';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(41, '2021-04-24 02:14:02', 1, 1, '提问1', '回复1', 1),
	(42, '2021-04-24 02:14:02', 2, 2, '提问2', '回复2', 2),
	(43, '2021-04-24 02:14:02', 3, 3, '提问3', '回复3', 3),
	(44, '2021-04-24 02:14:02', 4, 4, '提问4', '回复4', 4),
	(45, '2021-04-24 02:14:02', 5, 5, '提问5', '回复5', 5),
	(46, '2021-04-24 02:14:02', 6, 6, '提问6', '回复6', 6);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootr0p7i/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootr0p7i/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootr0p7i/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussminsuxinxi`;
CREATE TABLE IF NOT EXISTS `discussminsuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='民宿信息评论表';

DELETE FROM `discussminsuxinxi`;
INSERT INTO `discussminsuxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-04-24 02:14:02', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-04-24 02:14:02', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-04-24 02:14:02', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-04-24 02:14:02', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-04-24 02:14:02', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-04-24 02:14:02', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `minsufenlei`;
CREATE TABLE IF NOT EXISTS `minsufenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `minsufenlei` varchar(200) DEFAULT NULL COMMENT '民宿分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='民宿分类';

DELETE FROM `minsufenlei`;
INSERT INTO `minsufenlei` (`id`, `addtime`, `minsufenlei`) VALUES
	(21, '2021-04-24 02:14:02', '民宿分类1'),
	(22, '2021-04-24 02:14:02', '民宿分类2'),
	(23, '2021-04-24 02:14:02', '民宿分类3'),
	(24, '2021-04-24 02:14:02', '民宿分类4'),
	(25, '2021-04-24 02:14:02', '民宿分类5'),
	(26, '2021-04-24 02:14:02', '民宿分类6');

DROP TABLE IF EXISTS `minsuxinxi`;
CREATE TABLE IF NOT EXISTS `minsuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `minsumingcheng` varchar(200) NOT NULL COMMENT '民宿名称',
  `minsufenlei` varchar(200) DEFAULT NULL COMMENT '民宿分类',
  `minsutupian` varchar(200) DEFAULT NULL COMMENT '民宿图片',
  `yudingjiage` int DEFAULT NULL COMMENT '预定价格',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `minsudizhi` varchar(200) DEFAULT NULL COMMENT '民宿地址',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `minsujieshao` longtext COMMENT '民宿介绍',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='民宿信息';

DELETE FROM `minsuxinxi`;
INSERT INTO `minsuxinxi` (`id`, `addtime`, `minsumingcheng`, `minsufenlei`, `minsutupian`, `yudingjiage`, `shipin`, `minsudizhi`, `fuzeren`, `lianxidianhua`, `minsujieshao`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`, `price`) VALUES
	(31, '2021-04-24 02:14:02', '民宿名称1', '民宿分类1', 'http://localhost:8080/springbootr0p7i/upload/minsuxinxi_minsutupian1.jpg', 1, '', '民宿地址1', '负责人1', '13823888881', '民宿介绍1', 1, 1, '2024-02-14 11:10:49', 3, 99.9),
	(32, '2021-04-24 02:14:02', '民宿名称2', '民宿分类2', 'http://localhost:8080/springbootr0p7i/upload/minsuxinxi_minsutupian2.jpg', 2, '', '民宿地址2', '负责人2', '13823888882', '民宿介绍2', 2, 2, '2021-04-24 10:14:02', 2, 99.9),
	(33, '2021-04-24 02:14:02', '民宿名称3', '民宿分类3', 'http://localhost:8080/springbootr0p7i/upload/minsuxinxi_minsutupian3.jpg', 3, '', '民宿地址3', '负责人3', '13823888883', '民宿介绍3', 3, 3, '2024-02-14 11:10:38', 5, 99.9),
	(34, '2021-04-24 02:14:02', '民宿名称4', '民宿分类4', 'http://localhost:8080/springbootr0p7i/upload/minsuxinxi_minsutupian4.jpg', 4, '', '民宿地址4', '负责人4', '13823888884', '民宿介绍4', 4, 4, '2021-04-24 10:14:02', 4, 99.9),
	(35, '2021-04-24 02:14:02', '民宿名称5', '民宿分类5', 'http://localhost:8080/springbootr0p7i/upload/minsuxinxi_minsutupian5.jpg', 5, '', '民宿地址5', '负责人5', '13823888885', '民宿介绍5', 5, 5, '2021-04-24 10:14:02', 5, 99.9),
	(36, '2021-04-24 02:14:02', '民宿名称6', '民宿分类6', 'http://localhost:8080/springbootr0p7i/upload/minsuxinxi_minsutupian6.jpg', 6, '', '民宿地址6', '负责人6', '13823888886', '民宿介绍6', 6, 6, '2021-04-24 10:14:02', 6, 99.9);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='民宿资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(91, '2021-04-24 02:14:02', '标题1', '简介1', 'http://localhost:8080/springbootr0p7i/upload/news_picture1.jpg', '内容1'),
	(92, '2021-04-24 02:14:02', '标题2', '简介2', 'http://localhost:8080/springbootr0p7i/upload/news_picture2.jpg', '内容2'),
	(93, '2021-04-24 02:14:02', '标题3', '简介3', 'http://localhost:8080/springbootr0p7i/upload/news_picture3.jpg', '内容3'),
	(94, '2021-04-24 02:14:02', '标题4', '简介4', 'http://localhost:8080/springbootr0p7i/upload/news_picture4.jpg', '内容4'),
	(95, '2021-04-24 02:14:02', '标题5', '简介5', 'http://localhost:8080/springbootr0p7i/upload/news_picture5.jpg', '内容5'),
	(96, '2021-04-24 02:14:02', '标题6', '简介6', 'http://localhost:8080/springbootr0p7i/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'minsuxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707880252232 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1707876880857, '2024-02-14 02:14:40', 11, 33, 'minsuxinxi', '民宿名称3', 'http://localhost:8080/springbootr0p7i/upload/minsuxinxi_minsutupian3.jpg'),
	(1707880252231, '2024-02-14 03:10:51', 11, 31, 'minsuxinxi', '民宿名称1', 'http://localhost:8080/springbootr0p7i/upload/minsuxinxi_minsutupian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '7cg34irtfkphcmzfwmqezd8krz3nqqjh', '2024-02-14 02:12:38', '2024-02-14 04:10:34'),
	(2, 11, '用户1', 'yonghu', '用户', '20soe68vzt14wxp6x66a3zg17wt3m54d', '2024-02-14 02:14:14', '2024-02-14 03:14:15');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-24 02:14:02');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `tupian`, `money`) VALUES
	(11, '2021-04-24 02:14:02', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbootr0p7i/upload/yonghu_tupian1.jpg', 100),
	(12, '2021-04-24 02:14:02', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springbootr0p7i/upload/yonghu_tupian2.jpg', 100),
	(13, '2021-04-24 02:14:02', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbootr0p7i/upload/yonghu_tupian3.jpg', 100),
	(14, '2021-04-24 02:14:02', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springbootr0p7i/upload/yonghu_tupian4.jpg', 100),
	(15, '2021-04-24 02:14:02', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbootr0p7i/upload/yonghu_tupian5.jpg', 100),
	(16, '2021-04-24 02:14:02', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbootr0p7i/upload/yonghu_tupian6.jpg', 100);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
