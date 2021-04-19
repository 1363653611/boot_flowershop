-- --------------------------------------------------------
-- 主机:                           47.101.198.61
-- Server version:               10.3.21-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for boot_flowershop
CREATE DATABASE IF NOT EXISTS `boot_flowershop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `boot_flowershop`;

-- Dumping structure for table boot_flowershop.about
DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.about: ~0 rows (approximately)
DELETE FROM `about`;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` (`id`, `content`) VALUES
	(1, '欢迎来到航模爱好者网站， 具体地址是河南省南阳宛城区河南南阳市宛城区天山路东华小区，联系人是ysyysyysy01。\r\n主要经营航模飞机。\r\n单位注册资金未知。\r\n我司主要产品有：IT 游戏机 航模 等，公司在激烈的市场竞争中迅速发展壮大，赢得了广泛的支持与用户的信赖。公司秉承“顾客至上，锐意进取”的经营理念，坚持“客户”的原则为广大客户提供优质的服务。本公司在今后的岁月中坚持“以质量求生存，以信誉求发展“的宗旨。将以更高的企业服务回馈朋友们的支持和厚爱，并竭诚欢迎您的惠顾。\r\n我司主要产品有：IT 游戏机 航模 等，公司在激烈的市场竞争中迅速发展壮大，赢得了广泛的支持与用户的信赖。公司秉承“顾客至上，锐意进取”的经营理念，坚持“客户”的原则为广大客户提供优质的服务。本公司在今后的岁月中坚持“以质量求生存，以1信誉求发展“的宗旨。将以更高的企业服务回馈朋友们的支持和厚爱，并竭诚欢迎您的惠顾。222222222222');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.address
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `delstatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.address: ~4 rows (approximately)
DELETE FROM `address`;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`id`, `memberid`, `name`, `tel`, `addr`, `delstatus`) VALUES
	(1, 9, '小薇', '13732921234', '湖北省武汉市洪山广场209号', '0'),
	(2, 9, '小薇', '13888888888', '湖北省武汉市洪山广场209号', '1'),
	(3, 10, '李四', '13483098204', '湖北省武汉市洪山广场209号', '1'),
	(4, 10, '李四', '13850948504', '武汉光谷广场', '0');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.cart
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.cart: ~0 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `delstatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.category: ~4 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`, `delstatus`) VALUES
	(3, '红玫瑰', '0'),
	(4, '康乃馨', '0'),
	(5, '百合', '0'),
	(6, '粉玫瑰', '0');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.comment
DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.comment: ~0 rows (approximately)
DELETE FROM `comment`;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.fav
DROP TABLE IF EXISTS `fav`;
CREATE TABLE IF NOT EXISTS `fav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `memberid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.fav: ~0 rows (approximately)
DELETE FROM `fav`;
/*!40000 ALTER TABLE `fav` DISABLE KEYS */;
/*!40000 ALTER TABLE `fav` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.inventory
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.inventory: ~15 rows (approximately)
DELETE FROM `inventory`;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` (`id`, `productid`, `type`, `num`) VALUES
	(28, '38', 'in', 10),
	(29, '37', 'in', 10),
	(30, '36', 'in', 10),
	(31, '35', 'in', 10),
	(32, '34', 'in', 10),
	(33, '33', 'in', 10),
	(34, '33', 'out', 1),
	(35, '37', 'out', 2),
	(36, '34', 'out', 1),
	(37, '34', 'out', 1),
	(38, '34', 'out', 1),
	(39, '38', 'out', 2),
	(40, '34', 'out', 1),
	(41, '34', 'out', 1),
	(42, '38', 'out', 1);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.logistics
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE IF NOT EXISTS `logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.logistics: ~4 rows (approximately)
DELETE FROM `logistics`;
/*!40000 ALTER TABLE `logistics` DISABLE KEYS */;
INSERT INTO `logistics` (`id`, `orderno`, `savetime`, `type`, `content`) VALUES
	(13, 'DD0309224641', '2020-03-09 22:47:53', '途中', '武汉'),
	(14, 'DD0309224641', '2020-03-09 22:48:02', '目的地', '湖南'),
	(15, 'DD0309224951', '2020-03-09 22:50:44', '途中', '武汉'),
	(16, 'DD0309224951', '2020-03-09 22:50:53', '目的地', '湖南终点站');
/*!40000 ALTER TABLE `logistics` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.member
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `upass` varchar(255) DEFAULT NULL,
  `tname` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `lev` varchar(255) DEFAULT NULL,
  `integral` int(255) DEFAULT NULL,
  `yue` decimal(10,2) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `delstatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.member: ~3 rows (approximately)
DELETE FROM `member`;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `uname`, `upass`, `tname`, `filename`, `tel`, `email`, `content`, `lev`, `integral`, `yue`, `savetime`, `delstatus`) VALUES
	(9, 'zhangsan', '123', '张三', '1546240982993.jpg', '13893784349', 'zhangsan@126.com', '上个王者真的不容易', '会员', 0, 1.20, '2020-03-08 15:23:30', '0'),
	(10, 'lisi', '123', '李四', '1546320290227.jpg', '13874628204', 'lisi@126.com', '上个王者真的不容易', '会员', 0, 172.00, '2020-03-08 13:25:19', '0'),
	(11, 'wangwu', '123', '王五', '1546320851801.jpg', '13732921234', 'wangwu@126.com', '上个王者真是不容易', '会员', 0, 66.00, '2020-03-08 13:34:42', '0');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.message
DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `replycontent` text DEFAULT NULL,
  `replysavetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.message: ~0 rows (approximately)
DELETE FROM `message`;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.mj
DROP TABLE IF EXISTS `mj`;
CREATE TABLE IF NOT EXISTS `mj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mmoney` int(11) DEFAULT NULL,
  `jmoney` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.mj: ~0 rows (approximately)
DELETE FROM `mj`;
/*!40000 ALTER TABLE `mj` DISABLE KEYS */;
INSERT INTO `mj` (`id`, `mmoney`, `jmoney`) VALUES
	(1, 100, 10);
/*!40000 ALTER TABLE `mj` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.news
DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.news: ~4 rows (approximately)
DELETE FROM `news`;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`, `title`, `filename`, `content`, `savetime`) VALUES
	(1, '2018年航空模型、无人机飞行器科普大赛精彩开幕！', '', '本届大赛是在2017年首届青少年科普大赛的基础上推出的第二届大型青少年航空科普赛事。今年的比赛将从9月持续至11月,面向上海及各地区小学、初中、高中、技校、中专和职高的在读学生,进行航空科普、无人机编程、多旋翼DIY制作、多旋翼飞行、航空模型科普、航空模型专项竞技类及纸火箭制作等六个项目的比拼。比赛将航空知识科普和体育锻炼有机结合,内容涵盖航空科普、飞行原理、人工智能、电子技术、机械构造等多项科普及专项知识,以推广普及航空科技知识,带领青少年们走近航空运动和科技体育。', '2020-03-08 20:28:16'),
	(2, '歌尔杯2018全国航空模型公开赛十月将在荣成举办', '1537964979240.jpg', '本届赛事以“科技运动文化的融合”为主题，旨在促进科技创新，激发航空运动热情，弘扬航空文化，倡导未来新时代的生活方式，打造一场面向社会、面向国际、以涡喷航模为主的大型综合性航空盛会。\r\n\r\n发布会上获悉，本次赛事共设置了2018全国航空模型公开赛(荣成)、2018涡喷大师编队邀请赛、“蓝天飞梦”全国青少年模拟飞行大赛、全国教育无人机研学邀请赛、航空运动表演等多项竞技赛事，同时举办航空航海嘉年华、荣成城市展、海鲜美食节、青少年科创教育与研学研讨会、荣成首届热气球文化节等特色活动。', '2020-03-08 20:29:51'),
	(6, '荣成再迎航空盛事 顶级涡喷航模比赛下月上演', '', '金秋十月，山东省荣成市将再次上演“蓝天盛宴”，“歌尔杯2018全国航空模型公开赛（荣成站）暨涡喷大师编队邀请赛”将于10月10日至15日在荣成市樱花湖体育公园举办。9月26日，主办方在荣成市召开新闻发布会，正式发布活动赛程及赛事准备情况。荣成市人民政府副市长王继静、中国航空学会秘书长姚俊臣、北京领飞文化传播有限公司总经理陈喆、荣成市体育局局长张建波出席发布会。', '2020-03-08 20:50:04'),
	(7, '滨州学院学生利用自制航模 成就自己的飞天梦', '1550156742165.jpg', '“毕业后我想找一份能够与航模有关的工作。“大学时光过得太快，已经大四的王斌摆弄着手中的飞行器显得格外不舍。在众多社团成员眼中，王斌是他们的师哥，也是他们的老师，只要王斌一进入实验室，这里就会成为课堂。\r\n\r\n　　实验室内，摆放着各式各样的航模，如今的社团部长董建伟告诉记者，看似一台简单的航模，从设计到制作组装都要花掉他们数日的时间，甚至更长。\r\n\r\n　　“这些航模里边很多都是我们亲手制作的，虽然买台成品也并不贵，但我们享受的就是这个过程。”董建伟说。航模是个烧钱的爱好，如果操控过程中出现失误，很容易导致航模损坏。为避免出现事故，每位社团成员的电脑上都有一个模拟飞行的软件，没事的时候就会对着电脑练习操控。\r\n\r\n　　“这台飞行器是我自己攒的，结构与零件加起来至少花了我两万多块钱。”王斌告诉记者，自己的这个爱好家里非常支持，但过多的花费也让他非常头疼，于是在经过深思熟虑之后，他成立了自己的航拍公司，并逐渐开始盈利。\r\n\r\n　　“我就是想把我的爱好发展成为我将来的事业，利用我手中的飞行器成就我自己的飞天梦。”王斌说。', '2020-03-08 20:50:39');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.ordermsg
DROP TABLE IF EXISTS `ordermsg`;
CREATE TABLE IF NOT EXISTS `ordermsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(255) DEFAULT NULL,
  `memberid` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `fkstatus` varchar(255) DEFAULT NULL,
  `fhstatus` varchar(255) DEFAULT NULL,
  `shstatus` varchar(255) DEFAULT NULL,
  `addrid` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `shfs` varchar(255) DEFAULT NULL,
  `issd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.ordermsg: ~4 rows (approximately)
DELETE FROM `ordermsg`;
/*!40000 ALTER TABLE `ordermsg` DISABLE KEYS */;
INSERT INTO `ordermsg` (`id`, `orderno`, `memberid`, `total`, `fkstatus`, `fhstatus`, `shstatus`, `addrid`, `savetime`, `shfs`, `issd`) VALUES
	(34, 'DD0309224624', '9', '509.20', '已付款', '已发货', '已收货', '1', '2020-03-09 22:46:24', '自取', NULL),
	(35, 'DD0309224641', '9', '213.20', '已付款', '已发货', '已收货', '1', '2020-03-09 22:46:41', '送货上门', NULL),
	(36, 'DD0309224937', '9', '213.20', '已付款', '已发货', '已收货', '1', '2020-03-09 22:49:37', '自取', NULL),
	(37, 'DD0309224951', '9', '138.00', '已付款', '已发货', '已收货', '1', '2020-03-09 22:49:51', '送货上门', NULL);
/*!40000 ALTER TABLE `ordermsg` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.ordermsgdetails
DROP TABLE IF EXISTS `ordermsgdetails`;
CREATE TABLE IF NOT EXISTS `ordermsgdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(255) DEFAULT NULL,
  `productid` int(255) DEFAULT NULL,
  `memberid` int(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.ordermsgdetails: ~5 rows (approximately)
DELETE FROM `ordermsgdetails`;
/*!40000 ALTER TABLE `ordermsgdetails` DISABLE KEYS */;
INSERT INTO `ordermsgdetails` (`id`, `orderno`, `productid`, `memberid`, `num`, `savetime`) VALUES
	(39, 'DD0309224624', 34, 9, 1, '2020-03-09 22:46:24'),
	(40, 'DD0309224624', 38, 9, 2, '2020-03-09 22:46:24'),
	(41, 'DD0309224641', 34, 9, 1, '2020-03-09 22:46:41'),
	(42, 'DD0309224937', 34, 9, 1, '2020-03-09 22:49:37'),
	(43, 'DD0309224951', 38, 9, 1, '2020-03-09 22:49:51');
/*!40000 ALTER TABLE `ordermsgdetails` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.picture
DROP TABLE IF EXISTS `picture`;
CREATE TABLE IF NOT EXISTS `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.picture: ~3 rows (approximately)
DELETE FROM `picture`;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` (`id`, `filename`) VALUES
	(1, '1550108302843.jpg'),
	(2, '1550108313014.jpg'),
	(3, '1550108322778.jpg');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `categoryid` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `vote` int(11) DEFAULT NULL,
  `delstatus` varchar(255) DEFAULT NULL,
  `looknum` int(11) DEFAULT NULL,
  `isxs` varchar(255) DEFAULT NULL,
  `jdcontent` text DEFAULT NULL,
  `issj` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.product: ~8 rows (approximately)
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `productname`, `filename`, `price`, `discount`, `categoryid`, `content`, `vote`, `delstatus`, `looknum`, `isxs`, `jdcontent`, `issj`) VALUES
	(30, '33枝红玫瑰', '1550108380814.jpg', 750, 0.8, '3', '商品名称：中礼情人节鲜花速递 33枝红玫瑰花束 全国同城鲜花花店送花【指定日期送达】生日鲜花快递配送上门商品编号：1000054804店铺： 中礼鲜花官方旗舰店商品毛重：2.0kg货号：BK适合节日：圣诞节，情人节，结婚纪念日，母亲节，七夕分类：鲜花速递适用人群：爱人，朋友/同事，老师，客户，领导/长辈鲜花主花材：红玫瑰', 3, '0', 11, 'no', '中礼情人节鲜花速递 33枝红玫瑰花束 全国同城鲜花花店送花【指定日期送达】生日鲜花快递配送上门', 'yes'),
	(31, '99朵红玫瑰', '1550109749470.jpg', 600, 0.7, '4', '来一客99朵红玫瑰生日花束鲜花速递同城全国表白求婚北京上海广州深圳成都重庆西安天津送花店 99朵红玫瑰女神款来一客99朵红玫瑰生日花束鲜花速递同城全国表白求婚北京上海广州深圳成都重庆西安天津送花店 99朵红玫瑰女神款来一客99朵红玫瑰生日花束鲜花速递同城全国表白求婚北京上海广州深圳成都重庆西安天津送花店 99朵红玫瑰女神款', 0, '0', 2, 'yes', '来一客99朵红玫瑰生日花束鲜花速递同城全国表白求婚北京上海广州深圳成都重庆西安天津送花店 99朵红玫瑰女神款', 'yes'),
	(33, '花诺达康乃馨', '1550154604265.jpg', 178, 1, '4', '花诺达康乃馨百合花束生日礼物送妈妈长辈老师北京上海武汉深圳成都杭州重庆沈阳广州天津全国鲜花速递同城 C款 19朵红粉康乃馨2枝粉百合花诺达康乃馨百合花束生日礼物送妈妈长辈老师北京上海武汉深圳成都杭州重庆沈阳广州天津全国鲜花速递同城 C款 19朵红粉康乃馨2枝粉百合', 0, '0', 6, 'no', '花诺达康乃馨百合花束生日礼物送妈妈长辈老师北京上海武汉深圳成都杭州重庆沈阳广州天津全国鲜花速递同城 C款 19朵红粉康乃馨2枝粉百合', 'yes'),
	(34, '11朵粉色康乃馨', '1550154686161.jpg', 248, 0.9, '4', '鲜花速递教师节礼物礼盒鲜花花束鲜花预定北京杭州广州南京深圳上海同城花店送花上门 11朵粉色康乃馨花束B鲜花速递教师节礼物礼盒鲜花花束鲜花预定北京杭州广州南京深圳上海同城花店送花上门 11朵粉色康乃馨花束B', 0, '0', 23, 'no', '鲜花速递教师节礼物礼盒鲜花花束鲜花预定北京杭州广州南京深圳上海同城花店送花上门 11朵粉色康乃馨花束B', 'yes'),
	(35, '19朵白百合', '1550154772516.jpg', 398, 1, '5', '来一客 鲜花速递 同城送花19朵玫瑰香水百合花束礼盒生日鲜花北京上海石家庄广州杭州深圳全国 19朵白百合+9朵红玫瑰花束来一客 鲜花速递 同城送花19朵玫瑰香水百合花束礼盒生日鲜花北京上海石家庄广州杭州深圳全国 19朵白百合+9朵红玫瑰花束', 0, '0', 7, 'no', '来一客 鲜花速递 同城送花19朵玫瑰香水百合花束礼盒生日鲜花北京上海石家庄广州杭州深圳全国 19朵白百合+9朵红玫瑰花束', 'yes'),
	(36, '12朵百合6朵红玫瑰', '1550154837955.jpg', 298, 1, '5', '花诺达香水百合花康乃馨花束鲜花速递 同城送花生日情人节礼物北京上海广州深圳成都武汉天津沈阳杭州长沙 M款 12朵百合6朵红玫瑰花诺达香水百合花康乃馨花束鲜花速递 同城送花生日情人节礼物北京上海广州深圳成都武汉天津沈阳杭州长沙 M款 12朵百合6朵红玫瑰', 0, '0', 10, 'no', '花诺达香水百合花康乃馨花束鲜花速递 同城送花生日情人节礼物北京上海广州深圳成都武汉天津沈阳杭州长沙 M款 12朵百合6朵红玫瑰', 'yes'),
	(37, '19朵粉玫瑰花', '1550155040515.jpg', 388, 1, '6', '维纳斯情人节鲜花速递同城送花玫瑰花19朵粉玫瑰花束生日表白道歉纪念日送女友闺蜜全国花店维纳斯情人节鲜花速递同城送花玫瑰花19朵粉玫瑰花束生日表白道歉纪念日送女友闺蜜全国花店', 1, '0', 35, 'no', '维纳斯情人节鲜花速递同城送花玫瑰花19朵粉玫瑰花束生日表白道歉纪念日送女友闺蜜全国花店', 'yes'),
	(38, '21朵粉保鲜花', '1550155093658.jpg', 148, 1, '6', '初朵21朵粉保鲜花速递香皂玫瑰花康乃馨混彩灯礼盒情人节鲜花礼物生日礼物纪念日创意礼品送女生女友初朵21朵粉保鲜花速递香皂玫瑰花康乃馨混彩灯礼盒情人节鲜花礼物生日礼物纪念日创意礼品送女生女友', 0, '0', 7, 'yes', '初朵21朵粉保鲜花速递香皂玫瑰花康乃馨混彩灯礼盒情人节鲜花礼物生日礼物纪念日创意礼品送女生女友1', 'yes');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.servicer
DROP TABLE IF EXISTS `servicer`;
CREATE TABLE IF NOT EXISTS `servicer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.servicer: ~2 rows (approximately)
DELETE FROM `servicer`;
/*!40000 ALTER TABLE `servicer` DISABLE KEYS */;
INSERT INTO `servicer` (`id`, `name`, `qq`) VALUES
	(1, '客服一', '250739730'),
	(3, '客服二', '290953174');
/*!40000 ALTER TABLE `servicer` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `userpassword` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `delstatus` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.user: ~0 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `userpassword`, `realname`, `sex`, `tel`, `delstatus`, `usertype`, `filename`) VALUES
	(1, 'admin', '123', '张大仙', '男', '13872867577', '0', '管理员', '1550157062216.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table boot_flowershop.vote
DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_flowershop.vote: ~2 rows (approximately)
DELETE FROM `vote`;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` (`id`, `memberid`, `productid`) VALUES
	(1, 9, 30),
	(2, 10, 37);
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
