# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.22)
# Database: yeb
# Generation Time: 2021-01-21 11:14:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table t_admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '住宅电话',
  `address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系地址',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  `user_face` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户头像',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `enabled` tinyint DEFAULT '1' COMMENT '是否启用1 0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理员表';

LOCK TABLES `t_admin` WRITE;
/*!40000 ALTER TABLE `t_admin` DISABLE KEYS */;

INSERT INTO `t_admin` (`id`, `name`, `phone`, `telephone`, `address`, `username`, `password`, `user_face`, `remark`, `enabled`)
VALUES
	(1,'系统管理员','13761719602','3259272','广东深圳','admin','$2a$10$kMiEaKxQPMLxN2aLmJoErufsJHpRyrx4IdLMcsWAgFU2S2OoszXSW','https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2871119264,233376496&fm=26&gp=0.jpg',NULL,1),
	(2,'何淑华','13761719602','3259272','广东深圳123','bing','$2a$10$AG7skrpZrWvJZerB3xRBMOZKrIrng5jqMJvdoU8tA3sdMpflkwm/i','https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2871119264,233376496&fm=26&gp=0.jpg',NULL,1),
	(3,'安溪','13761719602','3259272','广东深圳','naqiao','$2a$10$kMiEaKxQPMLxN2aLmJoErufsJHpRyrx4IdLMcsWAgFU2S2OoszXSW','https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2871119264,233376496&fm=26&gp=0.jpg',NULL,1),
	(4,'梦寐','13761719602','3259272','广东深圳','leisu','$2a$10$kMiEaKxQPMLxN2aLmJoErufsJHpRyrx4IdLMcsWAgFU2S2OoszXSW','https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2871119264,233376496&fm=26&gp=0.jpg',NULL,1),
	(5,'武军','13761719602','3259272','广东深圳','aaa','$2a$10$kMiEaKxQPMLxN2aLmJoErufsJHpRyrx4IdLMcsWAgFU2S2OoszXSW','https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2871119264,233376496&fm=26&gp=0.jpg',NULL,1);

/*!40000 ALTER TABLE `t_admin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_admin_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_admin_role`;

CREATE TABLE `t_admin_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `admin_id` int DEFAULT NULL COMMENT '用户id',
  `rid` int DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理员角色中间表';

LOCK TABLES `t_admin_role` WRITE;
/*!40000 ALTER TABLE `t_admin_role` DISABLE KEYS */;

INSERT INTO `t_admin_role` (`id`, `admin_id`, `rid`)
VALUES
	(4,4,3),
	(5,4,2),
	(6,4,4),
	(7,4,5),
	(8,1,6),
	(9,3,3),
	(10,3,4),
	(11,2,3),
	(12,2,4),
	(13,2,4),
	(14,2,3),
	(18,5,2),
	(19,5,3),
	(20,5,4),
	(21,2,6);

/*!40000 ALTER TABLE `t_admin_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_appraise
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_appraise`;

CREATE TABLE `t_appraise` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int DEFAULT NULL COMMENT '员工id',
  `app_date` timestamp NULL DEFAULT NULL COMMENT '考评日期',
  `app_result` varchar(500) DEFAULT NULL COMMENT '考评结果',
  `app_content` varchar(600) DEFAULT NULL COMMENT '考评内容',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='考评表';



# Dump of table t_department
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_department`;

CREATE TABLE `t_department` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '部门名称',
  `parent_id` int DEFAULT NULL COMMENT '父id',
  `dep_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '路径',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  `is_parent` tinyint(1) DEFAULT '0' COMMENT '是否上级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

LOCK TABLES `t_department` WRITE;
/*!40000 ALTER TABLE `t_department` DISABLE KEYS */;

INSERT INTO `t_department` (`id`, `name`, `parent_id`, `dep_path`, `enabled`, `is_parent`)
VALUES
	(1,'股东会',-1,'.1',1,1),
	(2,'董事会',1,'.1.2',1,1),
	(3,'总办',2,'.1.2.3',1,1),
	(4,'账务部',3,'.1.2.3.4',1,0),
	(5,'市场部',3,'.1.2.3.5',1,1),
	(6,'华东市场部',5,'1.2.3.5.6',1,1),
	(7,'华南市场部',5,'1.2.3.5.7',1,0),
	(8,'上海市场部',6,'1.2.3.5.6.8',1,0),
	(9,'西北市场部',5,'.1.2.3.5.9',1,1),
	(10,'贵阳市场',9,'.1.2.3.5.8.9.10',1,1),
	(11,'乌当区市场',10,'1.2.3.5.9.10.11',1,0),
	(12,'技术部',3,'.1.2.3.12',1,0),
	(13,'运维部',3,'.1.2.3.13',1,0);

/*!40000 ALTER TABLE `t_department` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_employee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_employee`;

CREATE TABLE `t_employee` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '员工姓名',
  `gender` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '性别',
  `birthday` timestamp NULL DEFAULT NULL COMMENT '出生日期',
  `id_card` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '身份证号',
  `wedlock` enum('已婚','未婚','离异') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '婚姻状况',
  `nation_id` int DEFAULT NULL COMMENT '民族',
  `native_place` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `politic_id` int DEFAULT NULL COMMENT '政治面貌',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '电话号码',
  `address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系地址',
  `department_id` int DEFAULT NULL COMMENT '所属部门',
  `job_level_id` int DEFAULT NULL COMMENT '职称ID',
  `pos_id` int DEFAULT NULL COMMENT '职位ID',
  `engage_form` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '聘用形式：劳动合同，劳务合同',
  `tiptop_degree` enum('博士','硕士','本科','大专','高中','初中','小学','其它') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '最高学历',
  `specialty` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '所属专业',
  `school` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '毕业院校',
  `begin_date` timestamp NULL DEFAULT NULL COMMENT '入职日期',
  `work_state` enum('在职','离职') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '在职状态',
  `work_id` char(8) DEFAULT NULL COMMENT '工号',
  `contract_term` double DEFAULT NULL COMMENT '合同期限',
  `conversion_time` timestamp NULL DEFAULT NULL COMMENT '转正日期',
  `notWork_date` timestamp NULL DEFAULT NULL COMMENT '离职日期',
  `begin_contract` timestamp NULL DEFAULT NULL COMMENT '合同起始日期',
  `end_contract` timestamp NULL DEFAULT NULL COMMENT '合同终止日期',
  `work_age` int DEFAULT NULL COMMENT '工龄',
  `salary_id` int DEFAULT NULL COMMENT '工资账套ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='员工表';

LOCK TABLES `t_employee` WRITE;
/*!40000 ALTER TABLE `t_employee` DISABLE KEYS */;

INSERT INTO `t_employee` (`id`, `name`, `gender`, `birthday`, `id_card`, `wedlock`, `nation_id`, `native_place`, `politic_id`, `email`, `phone`, `address`, `department_id`, `job_level_id`, `pos_id`, `engage_form`, `tiptop_degree`, `specialty`, `school`, `begin_date`, `work_state`, `work_id`, `contract_term`, `conversion_time`, `notWork_date`, `begin_contract`, `end_contract`, `work_age`, `salary_id`)
VALUES
	(1,'韦韦','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'bing_yu2001@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','00000001',5.18,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',2,2),
	(2,'王丹','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'顶起',2,'aaa@qq.com','13761718976','杭州西湖',4,8,2,'劳动合同','高中','电子工程','复旦大学','2018-05-13 00:00:00','在职','00000002',6.85,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(3,'刘俊','男','1999-11-20 00:00:00','441702197810232846','未婚',1,'顶起',13,'aaa@qq.com','13761718976','杭州西湖',1,6,1,'劳动合同','高中','市场营销','浙江大学','2015-11-05 00:00:00','在职','00000003',1.78,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(4,'刘玉珍','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'平白无故',5,'aaa@qq.com','13761718976','杭州西湖',8,8,1,'劳动合同','高中','护理学','北京大学','2015-06-30 00:00:00','在职','00000004',5.3,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(5,'孟秀兰','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'奇才',10,'aaa@qq.com','13761718976','杭州西湖',9,4,3,'劳务合同','高中','电子工程','国防大学','2015-06-30 00:00:00','在职','00000005',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(6,'袁秀英','男','1999-11-20 00:00:00','441702197810232846','未婚',1,'李大霄',4,'aaa@qq.com','13761718976','杭州西湖',5,7,2,'劳务合同','高中','市场营销','南京大学','2015-06-30 00:00:00','在职','00000006',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(7,'顶艳','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'顶起',8,'aaa@qq.com','13761718976','杭州西湖',8,6,5,'劳动合同','高中','中国语言文学','上海交通大学','2015-06-30 00:00:00','在职','00000007',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(8,'张瑞','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',10,'aaa@qq.com','13761718976','杭州西湖',12,6,3,'劳动合同','高中','室内装修设计','清华大学','2015-06-30 00:00:00','在职','00000008',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(9,'黄构','男','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',10,'aaa@qq.com','13761718976','杭州西湖',1,4,1,'劳动合同','高中','护理学','北京大学','2015-06-30 00:00:00','在职','00000009',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(10,'王慧','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',3,'aaa@qq.com','13761718976','杭州西湖',5,1,2,'劳动合同','高中','信息管理','科技大学','2015-06-30 00:00:00','在职','00000010',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(11,'田龙','男','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',8,'aaa@qq.com','13761718976','杭州西湖',2,1,1,'劳动合同','高中','无','北京大学','2015-06-30 00:00:00','在职','82',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(12,'徐桂透','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',11,'aaa@qq.com','13761718976','杭州西湖',4,7,4,'劳动合同','高中','无','北京大学','2015-06-30 00:00:00','在职','83',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(13,'夏日花','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',8,'aaa@qq.com','13761718976','杭州西湖',9,5,3,'劳务合同','高中','市场营销','北京大学','2015-06-30 00:00:00','在职','84',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(14,'方勇','男','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',13,'aaa@qq.com','13761718976','杭州西湖',10,3,1,'劳务合同','高中','护理学','南京大学','2015-06-30 00:00:00','在职','85',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(15,'徐桂葶','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',12,'aaa@qq.com','13761718976','杭州西湖',3,3,5,'劳动合同','高中','市场营销','南京大学','2015-06-30 00:00:00','在职','86',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(16,'郭玉英','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',2,'aaa@qq.com','13761718976','杭州西湖',4,8,4,'劳动合同','高中','电子工程','南京大学','2015-06-30 00:00:00','在职','87',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(17,'郭慧','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',5,'aaa@qq.com','13761718976','杭州西湖',5,6,4,'劳务合同','高中','信息管理','北京大学','2015-06-30 00:00:00','在职','88',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(18,'王壮英','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',4,'aaa@qq.com','13761718976','杭州西湖',6,1,3,'劳动合同','高中','中国语言文学','国防大学','2015-06-30 00:00:00','在职','89',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(19,'张丽丽','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',12,'aaa@qq.com','13761718976','杭州西湖',12,2,1,'劳动合同','高中','中国语言文学','南京大学','2015-06-30 00:00:00','在职','90',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(20,'练红','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',5,'aaa@qq.com','13761718976','杭州西湖',1,2,3,'劳动合同','高中','电子工程','北京大学','2015-06-30 00:00:00','在职','91',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(21,'范风英','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',2,'aaa@qq.com','13761718976','杭州西湖',9,8,3,'劳动合同','高中','电子工程','国防大学','2015-06-30 00:00:00','在职','92',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(22,'英宁','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',13,'aaa@qq.com','13761718976','杭州西湖',1,6,5,'劳务合同','高中','电子工程','国防大学','2015-06-30 00:00:00','在职','93',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(23,'黄荣','男','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',4,'aaa@qq.com','13761718976','杭州西湖',9,2,5,'劳动合同','高中','护理学','国防大学','2015-06-30 00:00:00','在职','94',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(24,'周雷','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',6,'aaa@qq.com','13761718976','杭州西湖',9,6,4,'劳动合同','高中','市场营销','国防大学','2015-06-30 00:00:00','在职','95',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(25,'周静','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',3,'aaa@qq.com','13761718976','杭州西湖',8,6,3,'劳动合同','高中','室内装饰','国防大学','2015-06-30 00:00:00','在职','6',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(26,'张三','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'aaa@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','7',3,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(27,'王五','男','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'aaa@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','21',5.18,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(29,'韦梅','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'aaa@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','72',5.18,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(30,'王丹','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'顶起',2,'aaa@qq.com','13761718976','杭州西湖',4,8,2,'劳动合同','高中','电子工程','复旦大学','2018-05-13 00:00:00','在职','73',6.85,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(31,'刘俊','男','1999-11-20 00:00:00','441702197810232846','未婚',1,'顶起',13,'aaa@qq.com','13761718976','杭州西湖',1,6,1,'劳动合同','高中','市场营销','浙江大学','2015-11-05 00:00:00','在职','74',1.78,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(32,'刘玉珍','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'平白无故',5,'aaa@qq.com','13761718976','杭州西湖',8,8,1,'劳动合同','高中','护理学','北京大学','2015-06-30 00:00:00','在职','75',5.3,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(33,'孟秀兰','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'奇才',10,'aaa@qq.com','13761718976','杭州西湖',9,4,3,'劳务合同','高中','电子工程','国防大学','2015-06-30 00:00:00','在职','76',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(34,'袁秀英','男','1999-11-20 00:00:00','441702197810232846','未婚',1,'李大霄',4,'aaa@qq.com','13761718976','杭州西湖',5,7,2,'劳务合同','高中','市场营销','南京大学','2015-06-30 00:00:00','在职','77',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(35,'顶艳','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'顶起',8,'aaa@qq.com','13761718976','杭州西湖',8,6,5,'劳动合同','高中','中国语言文学','上海交通大学','2015-06-30 00:00:00','在职','78',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(36,'张瑞','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',10,'aaa@qq.com','13761718976','杭州西湖',12,6,3,'劳动合同','高中','室内装修设计','清华大学','2015-06-30 00:00:00','在职','79',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(37,'黄构','男','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',10,'aaa@qq.com','13761718976','杭州西湖',1,4,1,'劳动合同','高中','护理学','北京大学','2015-06-30 00:00:00','在职','80',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(38,'王慧','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',3,'aaa@qq.com','13761718976','杭州西湖',5,1,2,'劳动合同','高中','信息管理','科技大学','2015-06-30 00:00:00','在职','81',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(39,'田龙','男','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',8,'aaa@qq.com','13761718976','杭州西湖',2,1,1,'劳动合同','高中','无','北京大学','2015-06-30 00:00:00','在职','82',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(40,'徐桂透','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',11,'aaa@qq.com','13761718976','杭州西湖',4,7,4,'劳动合同','高中','无','北京大学','2015-06-30 00:00:00','在职','83',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(41,'夏日花','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'银川',8,'aaa@qq.com','13761718976','杭州西湖',9,5,3,'劳务合同','高中','市场营销','北京大学','2015-06-30 00:00:00','在职','84',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(42,'方勇','男','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',13,'aaa@qq.com','13761718976','杭州西湖',10,3,1,'劳务合同','高中','护理学','南京大学','2015-06-30 00:00:00','在职','85',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(43,'徐桂葶','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',12,'aaa@qq.com','13761718976','杭州西湖',3,3,5,'劳动合同','高中','市场营销','南京大学','2015-06-30 00:00:00','在职','86',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(44,'郭玉英','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',2,'aaa@qq.com','13761718976','杭州西湖',4,8,4,'劳动合同','高中','电子工程','南京大学','2015-06-30 00:00:00','在职','87',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(45,'郭慧','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',5,'aaa@qq.com','13761718976','杭州西湖',5,6,4,'劳务合同','高中','信息管理','北京大学','2015-06-30 00:00:00','在职','88',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(46,'王壮英','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',4,'aaa@qq.com','13761718976','杭州西湖',6,1,3,'劳动合同','高中','中国语言文学','国防大学','2015-06-30 00:00:00','在职','89',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(47,'张丽丽','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',12,'aaa@qq.com','13761718976','杭州西湖',12,2,1,'劳动合同','高中','中国语言文学','南京大学','2015-06-30 00:00:00','在职','90',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(48,'练红','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',5,'aaa@qq.com','13761718976','杭州西湖',1,2,3,'劳动合同','高中','电子工程','北京大学','2015-06-30 00:00:00','在职','91',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(49,'范风英','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',2,'aaa@qq.com','13761718976','杭州西湖',9,8,3,'劳动合同','高中','电子工程','国防大学','2015-06-30 00:00:00','在职','92',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(50,'英宁','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',13,'aaa@qq.com','13761718976','杭州西湖',1,6,5,'劳务合同','高中','电子工程','国防大学','2015-06-30 00:00:00','在职','93',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(51,'黄荣','男','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',4,'aaa@qq.com','13761718976','杭州西湖',9,2,5,'劳动合同','高中','护理学','国防大学','2015-06-30 00:00:00','在职','94',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(52,'周雷','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',6,'aaa@qq.com','13761718976','杭州西湖',9,6,4,'劳动合同','高中','市场营销','国防大学','2015-06-30 00:00:00','在职','95',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(53,'周静','女','1999-11-20 00:00:00','441702197810232846','已婚',1,'银川',3,'aaa@qq.com','13761718976','杭州西湖',8,6,3,'劳动合同','高中','室内装饰','国防大学','2015-06-30 00:00:00','在职','1',4.11,'2017-02-05 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(54,'张三','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'aaa@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','2',3,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(55,'李四','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'aaa@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','3',3,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(117,'ice','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'bing_yu2001@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','00000096',3,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(118,'ice','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'bing_yu2001@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','00000096',3,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(119,'ice','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'bing_yu2001@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','00000096',3,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL),
	(120,'ice','女','1999-11-20 00:00:00','441702197810232846','未婚',1,'英市',11,'bing_yu2001@qq.com','13761718976','杭州西湖',3,5,5,'劳动合同','高中','IT 互联网','清华','2017-11-01 00:00:00','在职','00000096',3,'2017-12-12 00:00:00',NULL,'2017-10-10 00:00:00','2020-10-10 00:00:00',NULL,NULL);

/*!40000 ALTER TABLE `t_employee` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_employee_ec
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_employee_ec`;

CREATE TABLE `t_employee_ec` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int DEFAULT NULL COMMENT '员工编号',
  `ec_date` datetime DEFAULT NULL COMMENT '奖罚日期',
  `ec_reason` varchar(200) DEFAULT NULL COMMENT '奖罚原因',
  `ec_point` int DEFAULT NULL COMMENT '奖罚分',
  `ec_type` tinyint DEFAULT NULL COMMENT '奖罚类别，0：奖，1：罚',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='员工奖罚表';



# Dump of table t_employee_remove
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_employee_remove`;

CREATE TABLE `t_employee_remove` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int DEFAULT NULL COMMENT '员工id',
  `after_depId` int DEFAULT NULL COMMENT '调动后部门id',
  `after_jobId` varchar(30) DEFAULT NULL COMMENT '调动后职位',
  `remove_date` timestamp NULL DEFAULT NULL COMMENT '调动日期',
  `reason` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '调动原因',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='员工调动表';



# Dump of table t_employee_train
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_employee_train`;

CREATE TABLE `t_employee_train` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int DEFAULT NULL COMMENT '员工编号',
  `train_date` timestamp NULL DEFAULT NULL COMMENT '培训日期',
  `train_content` varchar(200) DEFAULT NULL COMMENT '培训内容',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='培训表';



# Dump of table t_joblevel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_joblevel`;

CREATE TABLE `t_joblevel` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '职称名称',
  `title_level` enum('正高级','副高级','初级','中级','高级') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '职称等级',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='职称等级表';

LOCK TABLES `t_joblevel` WRITE;
/*!40000 ALTER TABLE `t_joblevel` DISABLE KEYS */;

INSERT INTO `t_joblevel` (`id`, `name`, `title_level`, `create_date`, `enabled`)
VALUES
	(1,'教授','正高级','2021-01-16 15:29:22',1),
	(2,'副教授','副高级','2021-01-16 15:29:22',1),
	(3,'助教','初级','2021-01-16 15:29:22',1),
	(4,'讲师','中级','2021-01-16 15:29:22',0),
	(5,'初级工程师','初级','2021-01-16 15:29:22',1),
	(6,'中级工程师','中级','2021-01-16 15:29:22',1),
	(7,'高级工程师','副高级','2021-01-16 15:29:22',1),
	(8,'骨灰级工程师','正高级','2021-01-16 15:29:22',1);

/*!40000 ALTER TABLE `t_joblevel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_mail_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_mail_log`;

CREATE TABLE `t_mail_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `msg_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '消息id',
  `eid` int DEFAULT NULL COMMENT '接收员工id',
  `status` int DEFAULT NULL COMMENT '状态（0:消息投递中 1:投递成功 2:投递失败）',
  `route_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '路由键',
  `exchange` varchar(200) DEFAULT NULL COMMENT '交换机',
  `count` int DEFAULT NULL COMMENT '重试次数',
  `try_time` datetime DEFAULT NULL COMMENT '重试时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='邮件日志';

LOCK TABLES `t_mail_log` WRITE;
/*!40000 ALTER TABLE `t_mail_log` DISABLE KEYS */;

INSERT INTO `t_mail_log` (`id`, `msg_id`, `eid`, `status`, `route_key`, `exchange`, `count`, `try_time`, `create_time`, `update_time`)
VALUES
	(8,'123456',120,1,'mail.routing.key','mail.exchange',0,'2021-01-20 03:55:16','2021-01-20 03:54:16','2021-01-20 03:54:16');

/*!40000 ALTER TABLE `t_mail_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_menu`;

CREATE TABLE `t_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'url',
  `path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'path',
  `component` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '组件',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '菜单名',
  `icon_cls` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图标',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否保持激活',
  `require_auth` tinyint(1) DEFAULT NULL COMMENT '是否要求权限',
  `parent_id` int DEFAULT NULL COMMENT '父id',
  `enabled` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单表';

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;

INSERT INTO `t_menu` (`id`, `url`, `path`, `component`, `name`, `icon_cls`, `keep_alive`, `require_auth`, `parent_id`, `enabled`)
VALUES
	(1,'/',NULL,NULL,'所有',NULL,NULL,NULL,NULL,1),
	(2,'/','/home','Home','员工资料','fa fa-user-circle-o',NULL,1,1,1),
	(3,'/','/home','Home','人事管理','fa fa-address-card-o',NULL,1,1,1),
	(4,'/','/home','Home','薪资管理','fa fa-money',NULL,1,1,1),
	(5,'/','/home','Home','统计管理','fa faa-bar-chart',NULL,1,1,1),
	(6,'/','/home','Home','系统管理','fa fa-windows',NULL,1,1,1),
	(7,'/employee/basic/**','/emp/basic','EmpBasic','基本资料',NULL,NULL,1,2,1),
	(8,'/employee/advanced/**','/emp/adv','EmpAdv','高级资料',NULL,NULL,1,2,1),
	(9,'/personnel/emp/**','/per/emp','PerEmp','员工资料','fa fa-user-circle-o',NULL,1,3,1),
	(10,'/personnel/ec/**','/per/ec','PerEc','员工奖惩',NULL,NULL,1,3,1),
	(11,'/personnel/train/**','/per/train','PerTrain','员工培训',NULL,NULL,1,3,1),
	(12,'/personnel/salary/**','/per/salary','PerSalary','员工调薪',NULL,NULL,1,3,1),
	(13,'/personnel/remove/**','/per/mv','PerMv','员工调动',NULL,NULL,1,3,1),
	(14,'/salary/sob/**','/sal/sob','SalSob','工资账套管理',NULL,NULL,1,4,1),
	(15,'/salary/sobcfg/**','/sal/sobcfg','SalSobCfg','员工账套设置',NULL,NULL,1,4,1),
	(16,'/salary/table/**','/sal/table','SalTable','工资表管理',NULL,NULL,1,4,1),
	(17,'/salary/month/**','/sal/month','SalMonth','月末处理',NULL,NULL,1,4,1),
	(18,'/salary/search/**','/sal/search','SalSearch','工资表查询',NULL,NULL,1,4,1),
	(19,'/statistics/all/**','/sta/all','StaAll','综合信息统计',NULL,NULL,1,5,1),
	(20,'/statistics/score/**','/sta/score','StaScore','员工积分统计',NULL,NULL,1,5,1),
	(21,'/statistics/personnel/**','/sta/pers','StaPers','人事信息统计',NULL,NULL,1,5,1),
	(22,'/statistics/recored/**','/sta/record','StaRecord','人事记录统计',NULL,NULL,1,5,1),
	(23,'/system/basic/**','/sys/basic','SysBasic','基础信息设置',NULL,NULL,1,6,1),
	(24,'/system/config/**','/sys/config','SysConfig','系统管理',NULL,NULL,1,6,1),
	(25,'/system/log/**','/sys/log','SysLog','操作日志管理',NULL,NULL,1,6,1),
	(26,'/system/admin/**','/sys/admin','SysAdmin','操作员管理',NULL,NULL,1,6,1),
	(27,'/system/data/**','/sys/data','SysData','备份恢复数据库',NULL,NULL,1,6,1),
	(28,'/system/init/**','/sys/init','SysInit','初始化数据库',NULL,NULL,1,6,1);

/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_menu_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_menu_role`;

CREATE TABLE `t_menu_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mid` int DEFAULT NULL COMMENT '菜单id',
  `rid` int DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单角色中间表';

LOCK TABLES `t_menu_role` WRITE;
/*!40000 ALTER TABLE `t_menu_role` DISABLE KEYS */;

INSERT INTO `t_menu_role` (`id`, `mid`, `rid`)
VALUES
	(1,7,3),
	(2,7,6),
	(3,9,6),
	(4,10,6),
	(5,11,6),
	(6,12,6),
	(7,13,6),
	(8,14,6),
	(9,15,6),
	(10,16,6),
	(11,17,6),
	(12,18,6),
	(13,19,6),
	(14,20,6),
	(15,21,6),
	(16,22,6),
	(17,23,6),
	(18,25,6),
	(19,26,6),
	(20,27,6),
	(21,28,6),
	(22,24,6),
	(23,7,6),
	(24,8,6),
	(25,9,6),
	(34,7,1),
	(35,8,1),
	(36,9,1),
	(37,10,1),
	(38,11,1),
	(39,12,1),
	(40,13,1),
	(41,14,1),
	(42,15,1),
	(43,16,1),
	(44,17,1),
	(45,18,1),
	(46,19,1),
	(47,7,2),
	(48,8,2),
	(49,9,2);

/*!40000 ALTER TABLE `t_menu_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_nation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_nation`;

CREATE TABLE `t_nation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(10) DEFAULT NULL COMMENT '民族',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='民族表';

LOCK TABLES `t_nation` WRITE;
/*!40000 ALTER TABLE `t_nation` DISABLE KEYS */;

INSERT INTO `t_nation` (`id`, `name`)
VALUES
	(1,'汉族'),
	(2,'蒙古族'),
	(3,'回族'),
	(4,'藏族'),
	(5,'维吾尔族'),
	(6,'苗族'),
	(7,'彝族'),
	(8,'壮族'),
	(9,'布依族'),
	(10,'白族'),
	(11,'朝鲜族'),
	(12,'侗族'),
	(13,'哈尼族'),
	(14,'哈萨克族'),
	(15,'满族'),
	(16,'土家族'),
	(17,'瑶族'),
	(18,'达斡尔族'),
	(19,'东乡族'),
	(20,'高山族'),
	(21,'景颇族'),
	(22,'柯尔克孜族'),
	(23,'拉祜族'),
	(24,'纳西族'),
	(25,'畲族'),
	(26,'傣族'),
	(27,'黎族'),
	(28,'傈僳族'),
	(29,'仫佬族'),
	(30,'羌族'),
	(31,'水族'),
	(32,'土族'),
	(33,'佤族'),
	(34,'阿昌族'),
	(35,'布朗族'),
	(36,'毛南族'),
	(37,'普米族'),
	(38,'撒拉族'),
	(39,'塔吉克族'),
	(40,'锡伯族'),
	(41,'仡佬族'),
	(42,'保安族'),
	(43,'德昂族'),
	(44,'俄罗斯族'),
	(45,'鄂温克族'),
	(46,'京族'),
	(47,'怒族'),
	(48,'乌孜别克族'),
	(49,'裕固族'),
	(50,'独龙族'),
	(51,'鄂伦春族'),
	(52,'赫哲族'),
	(53,'基诺族'),
	(54,'珞巴族'),
	(55,'门巴族'),
	(56,'塔塔尔族');

/*!40000 ALTER TABLE `t_nation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_oplog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_oplog`;

CREATE TABLE `t_oplog` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加日期',
  `operate` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '操作内容',
  `adminid` int DEFAULT NULL COMMENT '操作员ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table t_politics_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_politics_status`;

CREATE TABLE `t_politics_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '政治面貌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `t_politics_status` WRITE;
/*!40000 ALTER TABLE `t_politics_status` DISABLE KEYS */;

INSERT INTO `t_politics_status` (`id`, `name`)
VALUES
	(1,'中共党员'),
	(2,'中共预备党员'),
	(3,'共青团员'),
	(4,'民革团员'),
	(5,'民盟盟员'),
	(6,'民建会员'),
	(7,'民进会员'),
	(8,'农工党党员'),
	(9,'致公党党员'),
	(10,'九三学社社员'),
	(11,'台盟盟员'),
	(12,'无党派民主人士'),
	(13,'普通公民');

/*!40000 ALTER TABLE `t_politics_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_position
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_position`;

CREATE TABLE `t_position` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '职位',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='职位';

LOCK TABLES `t_position` WRITE;
/*!40000 ALTER TABLE `t_position` DISABLE KEYS */;

INSERT INTO `t_position` (`id`, `name`, `create_date`, `enabled`)
VALUES
	(1,'技术总监','2020-03-31 16:20:34',1),
	(2,'运营总监','2020-03-31 16:20:34',1),
	(3,'市场总监','2020-03-31 16:20:34',1),
	(4,'研发工程师','2020-03-31 16:20:34',1),
	(5,'运维工程师','2020-03-31 16:20:34',1),
	(8,'测试角色','2021-01-16 14:32:20',1);

/*!40000 ALTER TABLE `t_position` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `name_zh` varchar(60) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色表';

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;

INSERT INTO `t_role` (`id`, `name`, `name_zh`)
VALUES
	(1,'ROLE_manager','部门经理'),
	(2,'ROLE_personnel','人事专员'),
	(3,'ROLE_recruiter','招聘主管'),
	(4,'ROLE_train','培训主管'),
	(5,'ROLE_performance','薪酬绩效主管'),
	(6,'ROLE_admin','系统管理员');

/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_salary
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_salary`;

CREATE TABLE `t_salary` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `basic_salary` int DEFAULT NULL COMMENT '基本工资',
  `bonus` int DEFAULT NULL COMMENT '奖金',
  `lunch_salary` int DEFAULT NULL COMMENT '午餐补助',
  `traffic_salary` int DEFAULT NULL COMMENT '交通补助',
  `all_salary` int DEFAULT NULL COMMENT '应发工资',
  `pension_base` int DEFAULT NULL COMMENT '养老金基数',
  `pension_per` float DEFAULT NULL COMMENT '养老金比率',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '启用时间',
  `medical_base` int DEFAULT NULL COMMENT '医疗基数',
  `medical_per` float DEFAULT NULL COMMENT '医疗保险比率',
  `accumulation_fund_base` int DEFAULT NULL COMMENT '公积金基数',
  `accumulation_fund_per` float DEFAULT NULL COMMENT '公积金比率',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='工资表';

LOCK TABLES `t_salary` WRITE;
/*!40000 ALTER TABLE `t_salary` DISABLE KEYS */;

INSERT INTO `t_salary` (`id`, `basic_salary`, `bonus`, `lunch_salary`, `traffic_salary`, `all_salary`, `pension_base`, `pension_per`, `create_date`, `medical_base`, `medical_per`, `accumulation_fund_base`, `accumulation_fund_per`, `name`)
VALUES
	(1,8000,500,800,400,NULL,1000,0,'2018-01-24 00:00:00',1000,0.06,1000,0.06,'市场部工资账套'),
	(2,3000,500,500,500,NULL,1800,0,'2018-01-24 00:00:00',2200,0.06,3200,0.06,'人事部工资账套'),
	(3,8000,500,800,400,NULL,1000,0,'2021-01-20 04:40:11',1000,0.06,1000,0.06,'后勤部工资账套'),
	(4,8000,500,800,400,NULL,1000,0,'2021-01-20 04:41:00',1000,0.06,1000,0.06,'研发部工资账套'),
	(5,8000,500,800,400,NULL,1000,0,'2021-01-20 12:44:16',1000,0.06,1000,0.06,'测试部工资账套'),
	(6,8000,500,800,400,NULL,1000,0,'2021-01-20 12:50:48',1000,0.06,1000,0.06,'账务部工资账套');

/*!40000 ALTER TABLE `t_salary` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_sys_msg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_sys_msg`;

CREATE TABLE `t_sys_msg` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mid` int DEFAULT NULL COMMENT '消息id',
  `type` int DEFAULT NULL COMMENT '0表示群发消息',
  `adminid` int DEFAULT NULL COMMENT '这条消息是给谁的',
  `state` int DEFAULT NULL COMMENT '0 未读 1 已读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统消息';



# Dump of table t_sys_msg_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_sys_msg_content`;

CREATE TABLE `t_sys_msg_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `message` varchar(500) DEFAULT NULL COMMENT '内容',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统消息内容';




--
-- Dumping routines (PROCEDURE) for database 'yeb'
--
DELIMITER ;;

# Dump of PROCEDURE addDep
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `addDep` */;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `addDep`(in depName varchar(32),in parentId int,in enabled boolean,out result int,out result2 int)
begin
 declare did int;
 declare pDepPath varchar(64);
 insert into t_department set name=depName,parent_id=parentId,enabled=enabled;
 select row_count() into result;
 select last_insert_id() into did;
 set result2=did;
 select dep_path into pDepPath from t_department where id=parentId;
 update t_department set dep_path=concat(pDepPath,'.',did) where id=did;
 update t_department set is_parent=true where id=parentId;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE deleteDep
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `deleteDep` */;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `deleteDep`(in did int,out result int)
begin
 declare ecount int;		
 declare pid int;	
 declare pcount int;		
 declare a int;		
 select count(*) into a from t_department where id=did and is_parent=false;
 if a=0 then set result=-2;
 else
 select count(*) into ecount from t_employee where department_id=did;
 if ecount>0 then set result=-1;
 else
 select parent_id into pid from t_department where id=did;
 delete from t_department where id=did and is_parent=false;
 select row_count() into result;
 select count(*) into pcount from t_department where parent_id=pid;
 if pcount=0 then update t_department set is_parent=false where id=pid;
 end if;
 end if;
 end if;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE GreetWorld
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `GreetWorld` */;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `GreetWorld`()
SELECT CONCAT(@gretting,'world') */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE p1
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `p1` */;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `p1`()
SET @last_procedure = 'p1' */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE p2
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `p2` */;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `p2`()
SELECT CONCAT('last procedure was',@last_procedure) */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
