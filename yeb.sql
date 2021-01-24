/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : voa2

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 09/05/2020 09:52:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住宅电话',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `userFace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, '系统管理员', '13812361398', '71937538', '香港特别行政区强县长寿柳州路p座123', 1, 'admin', '$2a$10$ogvUqZZAxrBwrmVI/e7.SuFYyx8my8d.9zJ6bs9lPKWvbD9eefyCe', 'http://192.168.10.100:8888/group1/M00/00/00/wKgKZF6oHzuAXnw9AABaLsrkrQQ148.jpg', NULL);
INSERT INTO `t_admin` VALUES (2, '何淑华', '18875971675', '41413109', '河北省秀荣市萧山长沙街p座 737268', 0, 'taomeng', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585830947922&di=60b35821fb9112d0aad6915efe982c8d&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201703%2F26%2F20170326161532_aGteC.jpeg', NULL);
INSERT INTO `t_admin` VALUES (3, '安淑华123', '14588110811', '50603155', '山东省凤英县长寿银川街l座', 1, 'naqiao', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', NULL);
INSERT INTO `t_admin` VALUES (4, '林宇', '15761248727', '25546253', '宁夏回族自治区帆市翔安昆明路b座 672985', 0, 'leisu', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585830829995&di=0fc5f8313a734b401d20a57bc9bdd421&imgtype=0&src=http%3A%2F%2Fpic4.zhimg.com%2F50%2Fv2-7fece9a613445edb78271216c8c20c6d_hd.jpg', NULL);
INSERT INTO `t_admin` VALUES (5, '武军', '18030710396', '27523842', '宁夏回族自治区秀兰县涪城邯郸路t座 618651', 0, 'hanli', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585830877372&di=9ae7236e73ff24c756ac30722b6e84b1&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201704%2F10%2F20170410095843_SEvMy.thumb.700_0.jpeg', NULL);

-- ----------------------------
-- Table structure for t_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_role`;
CREATE TABLE `t_admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `adminId` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `rid` int(11) NULL DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  INDEX `adminId`(`adminId`) USING BTREE,
  CONSTRAINT `t_admin_role_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `t_admin` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `t_admin_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin_role
-- ----------------------------
INSERT INTO `t_admin_role` VALUES (2, 5, 4);
INSERT INTO `t_admin_role` VALUES (3, 5, 3);
INSERT INTO `t_admin_role` VALUES (4, 5, 2);
INSERT INTO `t_admin_role` VALUES (5, 4, 3);
INSERT INTO `t_admin_role` VALUES (6, 4, 2);
INSERT INTO `t_admin_role` VALUES (7, 4, 4);
INSERT INTO `t_admin_role` VALUES (8, 4, 5);
INSERT INTO `t_admin_role` VALUES (16, 1, 6);
INSERT INTO `t_admin_role` VALUES (55, 3, 3);
INSERT INTO `t_admin_role` VALUES (56, 3, 4);
INSERT INTO `t_admin_role` VALUES (67, 2, 3);
INSERT INTO `t_admin_role` VALUES (68, 2, 4);

-- ----------------------------
-- Table structure for t_appraise
-- ----------------------------
DROP TABLE IF EXISTS `t_appraise`;
CREATE TABLE `t_appraise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int(11) NULL DEFAULT NULL COMMENT '员工id',
  `appDate` date NULL DEFAULT NULL COMMENT '考评日期',
  `appResult` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评结果',
  `appContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评内容',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_appraise_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `parentId` int(11) NULL DEFAULT NULL COMMENT '父id',
  `depPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  `isParent` tinyint(1) NULL DEFAULT 0 COMMENT '是否上级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES (1, '股东会', -1, '.1', 1, 1);
INSERT INTO `t_department` VALUES (2, '董事会', 1, '.1.2', 1, 1);
INSERT INTO `t_department` VALUES (3, '总办', 2, '.1.2.3', 1, 1);
INSERT INTO `t_department` VALUES (4, '财务部', 3, '.1.2.3.4', 1, 0);
INSERT INTO `t_department` VALUES (5, '市场部', 3, '.1.2.3.5', 1, 1);
INSERT INTO `t_department` VALUES (6, '华东市场部', 5, '1.2.3.5.6', 1, 1);
INSERT INTO `t_department` VALUES (7, '华南市场部', 5, '1.2.3.5.7', 1, 0);
INSERT INTO `t_department` VALUES (8, '上海市场部', 6, '1.2.3.5.6.8', 1, 0);
INSERT INTO `t_department` VALUES (9, '西北市场部', 5, '.1.2.3.5.9', 1, 1);
INSERT INTO `t_department` VALUES (10, '贵阳市场', 9, '.1.2.3.5.9.10', 1, 1);
INSERT INTO `t_department` VALUES (11, '乌当区市场', 10, '.1.2.3.5.9.10.11', 1, 0);
INSERT INTO `t_department` VALUES (12, '技术部', 3, '.1.2.3.12', 1, 0);
INSERT INTO `t_department` VALUES (13, '运维部', 3, '.1.2.3.13', 1, 0);

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `gender` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `idCard` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `wedlock` enum('已婚','未婚','离异') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '婚姻状况',
  `nationId` int(8) NULL DEFAULT NULL COMMENT '民族',
  `nativePlace` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `politicId` int(8) NULL DEFAULT NULL COMMENT '政治面貌',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `departmentId` int(11) NULL DEFAULT NULL COMMENT '所属部门',
  `jobLevelId` int(11) NULL DEFAULT NULL COMMENT '职称ID',
  `posId` int(11) NULL DEFAULT NULL COMMENT '职位ID',
  `engageForm` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '聘用形式',
  `tiptopDegree` enum('博士','硕士','本科','大专','高中','初中','小学','其他') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最高学历',
  `specialty` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属专业',
  `school` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业院校',
  `beginDate` date NULL DEFAULT NULL COMMENT '入职日期',
  `workState` enum('在职','离职') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '在职' COMMENT '在职状态',
  `workID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `contractTerm` double NULL DEFAULT NULL COMMENT '合同期限',
  `conversionTime` date NULL DEFAULT NULL COMMENT '转正日期',
  `notWorkDate` date NULL DEFAULT NULL COMMENT '离职日期',
  `beginContract` date NULL DEFAULT NULL COMMENT '合同起始日期',
  `endContract` date NULL DEFAULT NULL COMMENT '合同终止日期',
  `workAge` int(11) NULL DEFAULT NULL COMMENT '工龄',
  `salaryId` int(11) NULL DEFAULT NULL COMMENT '工资账套ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `departmentId`(`departmentId`) USING BTREE,
  INDEX `jobId`(`jobLevelId`) USING BTREE,
  INDEX `posId`(`posId`) USING BTREE,
  INDEX `nationId`(`nationId`) USING BTREE,
  INDEX `politicId`(`politicId`) USING BTREE,
  INDEX `workId`(`workID`) USING BTREE,
  INDEX `salaryId`(`salaryId`) USING BTREE,
  CONSTRAINT `t_employee_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `t_department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_2` FOREIGN KEY (`jobLevelId`) REFERENCES `t_joblevel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_3` FOREIGN KEY (`posId`) REFERENCES `t_position` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_4` FOREIGN KEY (`nationId`) REFERENCES `t_nation` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_5` FOREIGN KEY (`politicId`) REFERENCES `t_politics_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_6` FOREIGN KEY (`salaryId`) REFERENCES `t_salary` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 418 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES (1, '韦梅', '女', '1999-11-20', '341502198810196427', '未婚', 1, '英市', 11, 'xia53@gangjing.cn', '15567487644', '贵州省洁市清城汕尾街d座 502246', 3, 5, 5, '劳动合同', '博士', '电子工程', '中国科学技术大学', '2018-10-16', '在职', '00000001', 9.31, '2018-08-29', NULL, '2017-09-03', '2019-08-26', NULL, 4);
INSERT INTO `t_employee` VALUES (2, '王丹', '女', '1992-03-25', '350481197304037905', '未婚', 1, '关岭市', 2, 'jieqian@yahoo.com', '18762780051', '山西省合肥县西峰香港街C座 302114', 4, 8, 2, '劳动合同', '博士', '无', '北京大学', '2018-06-25', '在职', '00000002', 9.5, '2017-08-05', NULL, '2017-05-31', '2020-01-06', NULL, 1);
INSERT INTO `t_employee` VALUES (3, '刘俊', '男', '1996-07-18', '130224197009132687', '未婚', 1, '萍县', 13, 'qiangfang@yahoo.com', '18663579680', '西藏自治区秀荣市海陵张家港街m座 576579', 1, 6, 1, '劳务合同', '博士', '护理学', '南京大学', '2017-08-15', '在职', '00000003', 2.53, '2016-05-25', NULL, '2015-12-21', '2019-04-21', NULL, 1);
INSERT INTO `t_employee` VALUES (4, '刘玉珍', '女', '1993-07-10', '512000196701014288', '未婚', 1, '雷县', 5, 'fangyang@pinggang.cn', '13972309788', '西藏自治区张家港市双滦凌街V座 614280', 4, 8, 1, '劳动合同', '博士', '市场营销', '上海交通大学', '2019-02-21', '在职', '00000004', 5.68, '2018-06-26', NULL, '2019-02-27', '2019-11-06', NULL, 4);
INSERT INTO `t_employee` VALUES (5, '孟秀兰', '女', '2000-01-08', '130601195204145457', '未婚', 1, '荆门县', 10, 'xliu@yahoo.com', '13319975239', '天津市辽阳市金平傅街j座 850761', 8, 4, 3, '劳动合同', '博士', '电子工程', '浙江大学', '2016-12-13', '在职', '00000005', 9.33, '2018-03-09', NULL, '2016-11-28', '2019-06-25', NULL, 3);
INSERT INTO `t_employee` VALUES (6, '袁秀英', '男', '1990-05-07', '110107198510132428', '未婚', 1, '合肥县', 4, 'nawu@hotmail.com', '15984781796', '重庆市兰英市高明沈阳街d座 430329', 9, 7, 2, '劳务合同', '博士', '无', '中国人民大学', '2015-10-15', '在职', '00000006', 9.2, '2016-08-30', NULL, '2019-03-21', '2019-11-30', NULL, 2);
INSERT INTO `t_employee` VALUES (7, '沈璐', '男', '1992-05-07', '520400196705056989', '未婚', 1, '合山县', 8, 'gaotao@hotmail.com', '14715158775', '浙江省坤县西峰余街C座 221697', 5, 6, 5, '劳务合同', '博士', '室内装修设计', '中国科学院大学', '2016-07-30', '在职', '00000007', 7.96, '2018-12-22', NULL, '2016-09-28', '2020-02-05', NULL, 3);
INSERT INTO `t_employee` VALUES (8, '丁艳', '男', '2001-01-29', '542100199401152966', '未婚', 1, '玲市', 10, 'yong36@gmail.com', '18878249984', '江西省南昌县双滦王路E座 490503', 8, 6, 3, '劳动合同', '博士', '信息管理与信息系统', '中国科学技术大学', '2016-05-21', '在职', '00000008', 0.25, '2017-05-06', NULL, '2015-07-28', '2019-06-05', NULL, 2);
INSERT INTO `t_employee` VALUES (9, '张瑞', '男', '1994-01-11', '330782198309077942', '未婚', 1, '银川市', 10, 'ping21@zengyi.net', '15510694655', '江西省太原市翔安刘街J座 815655', 12, 4, 1, '劳务合同', '博士', '信息管理与信息系统', '上海交通大学', '2018-01-15', '在职', '00000009', 4.54, '2016-04-30', NULL, '2017-02-03', '2019-08-04', NULL, 3);
INSERT INTO `t_employee` VALUES (10, '黄柳', '男', '1999-10-03', '45142219420818691X', '未婚', 1, '北镇市', 3, 'juanliu@jieming.cn', '14523008198', '江苏省宁县南溪王路x座 227133', 1, 1, 2, '劳务合同', '博士', '市场营销', '南京大学', '2017-06-17', '在职', '00000010', 1.46, '2016-11-03', NULL, '2016-06-07', '2019-08-24', NULL, 4);
INSERT INTO `t_employee` VALUES (11, '王慧', '女', '1994-07-09', '441223196008184592', '未婚', 1, '贵阳县', 8, 'xiahu@dengpan.net', '18288493616', '青海省长沙县山亭廖街v座 439792', 5, 1, 1, '劳务合同', '博士', '电子工程', '浙江大学', '2015-10-22', '在职', '00000011', 9.54, '2016-07-28', NULL, '2018-03-02', '2019-09-11', NULL, 4);
INSERT INTO `t_employee` VALUES (12, '田龙', '男', '1991-07-21', '621026195512050072', '未婚', 1, '敏县', 11, 'epan@hotmail.com', '13130911244', '安徽省帆市东城唐路d座 819867', 2, 7, 4, '劳务合同', '博士', '电子工程', '中国科学技术大学', '2016-06-13', '在职', '00000012', 4.95, '2019-02-15', NULL, '2018-07-28', '2019-08-27', NULL, 2);
INSERT INTO `t_employee` VALUES (13, '徐桂香', '男', '1997-03-06', '220101195011153893', '未婚', 1, '桂芝市', 8, 'mingxiong@guiyingna.cn', '15239681245', '广东省巢湖县和平王路V座 418151', 4, 5, 3, '劳务合同', '博士', '信息管理与信息系统', '中国人民大学', '2018-03-01', '在职', '00000013', 8.58, '2018-04-13', NULL, '2018-01-09', '2020-03-29', NULL, 2);
INSERT INTO `t_employee` VALUES (14, '韩桂花', '女', '1993-03-13', '451200193609248217', '已婚', 1, '丽丽市', 13, 'vzhao@la.cn', '13091676162', '澳门特别行政区东莞市高港关岭街Z座 113957', 9, 3, 1, '劳务合同', '博士', '护理学', '清华大学', '2015-08-09', '在职', '00000014', 5.9, '2016-08-08', NULL, '2017-09-04', '2019-06-23', NULL, 4);
INSERT INTO `t_employee` VALUES (15, '方勇', '女', '1993-03-31', '50022619560729008X', '已婚', 1, '银川县', 12, 'juan44@hotmail.com', '13599861266', '吉林省芳县南湖兰路y座 907387', 10, 3, 5, '劳务合同', '硕士', '室内装修设计', '北京大学', '2016-01-17', '在职', '00000015', 7.9, '2018-11-06', NULL, '2017-09-22', '2019-12-16', NULL, 2);
INSERT INTO `t_employee` VALUES (16, '徐桂芝', '女', '1999-12-07', '350627193810292241', '已婚', 1, '玉梅县', 2, 'min11@hotmail.com', '18060545344', '海南省桂荣县锡山拉萨路m座 889598', 3, 8, 4, '劳动合同', '硕士', '市场营销', '南京大学', '2015-10-11', '在职', '00000016', 8.5, '2017-10-08', NULL, '2016-01-25', '2019-09-07', NULL, 3);
INSERT INTO `t_employee` VALUES (17, '郭玉英', '女', '1991-05-13', '532626196803147428', '已婚', 1, '荆门市', 5, 'taozhang@hotmail.com', '13498131990', '贵州省玉英市长寿席路j座 607847', 4, 6, 4, '劳动合同', '硕士', '护理学', '清华大学', '2017-09-23', '在职', '00000017', 6.9, '2019-03-31', NULL, '2017-10-23', '2019-07-17', NULL, 2);
INSERT INTO `t_employee` VALUES (18, '张波', '男', '1995-07-20', '341523193305302515', '已婚', 1, '淑英县', 4, 'chao28@yahoo.com', '13198353039', '甘肃省勇县金平合山街V座 343550', 6, 1, 3, '劳务合同', '硕士', '信息管理与信息系统', '中国科学院大学', '2015-05-24', '在职', '00000018', 6.51, '2018-04-10', NULL, '2016-07-14', '2019-07-21', NULL, 4);
INSERT INTO `t_employee` VALUES (19, '陈桂英', '女', '1998-07-24', '320300198302021032', '已婚', 1, '西宁市', 12, 'leixiuying@lijun.cn', '15196790642', '江西省梧州县西峰林街g座 890108', 12, 2, 1, '劳务合同', '硕士', '室内装修设计', '中国人民大学', '2019-02-19', '在职', '00000019', 9.4, '2018-01-31', NULL, '2016-04-20', '2019-12-24', NULL, 2);
INSERT INTO `t_employee` VALUES (20, '郭慧', '男', '1997-12-27', '370784196907163913', '已婚', 1, '冬梅市', 5, 'jingyi@lilong.cn', '18748925191', '浙江省淮安市西峰周路Q座 231298', 1, 2, 3, '劳务合同', '硕士', '室内装修设计', '复旦大学', '2018-05-20', '在职', '00000020', 1.23, '2018-02-28', NULL, '2016-02-03', '2019-05-13', NULL, 2);
INSERT INTO `t_employee` VALUES (21, '王兰英', '女', '2001-01-14', '13062819460201540X', '已婚', 1, '北镇县', 2, 'nren@kc.cn', '13697605585', '河北省荆门县东丽徐路w座 733493', 9, 8, 3, '劳动合同', '硕士', '市场营销', '国防科技大学', '2017-11-22', '在职', '00000021', 7.2, '2017-09-14', NULL, '2018-05-04', '2019-10-11', NULL, 1);
INSERT INTO `t_employee` VALUES (22, '张丽丽', '女', '1993-01-11', '44011419750119469X', '已婚', 1, '桂花市', 13, 'vcao@hotmail.com', '13499132244', '江苏省颖县黄浦吴路f座 348086', 1, 6, 5, '劳动合同', '硕士', '信息管理与信息系统', '中国科学技术大学', '2018-07-27', '在职', '00000022', 1.57, '2016-08-17', NULL, '2019-03-29', '2019-12-01', NULL, 2);
INSERT INTO `t_employee` VALUES (23, '陈红', '女', '1991-05-07', '120101194008275509', '已婚', 1, '永安市', 4, 'fgu@hotmail.com', '14504492015', '宁夏回族自治区帆县山亭黄路Q座 528477', 9, 2, 5, '劳动合同', '硕士', '市场营销', '南京大学', '2018-06-24', '在职', '00000023', 2.32, '2016-11-21', NULL, '2018-09-15', '2020-02-11', NULL, 4);
INSERT INTO `t_employee` VALUES (24, '范凤英', '女', '1994-11-12', '510122194703163917', '已婚', 1, '秀兰县', 6, 'yong19@34.cn', '13973512992', '海南省梧州市滨城李路f座 504377', 8, 6, 4, '劳动合同', '硕士', '电子工程', '北京大学', '2017-07-23', '在职', '00000024', 3.52, '2017-07-30', NULL, '2016-02-23', '2019-12-07', NULL, 2);
INSERT INTO `t_employee` VALUES (25, '张兵', '男', '1990-09-06', '420701196603064012', '已婚', 1, '宜都市', 3, 'edeng@rd.cn', '15904360492', '西藏自治区桂珍市友好昆明街Y座 634021', 9, 6, 3, '劳务合同', '硕士', '市场营销', '中国人民大学', '2017-03-20', '在职', '00000025', 0.5, '2016-11-07', NULL, '2017-06-02', '2020-01-24', NULL, 2);
INSERT INTO `t_employee` VALUES (26, '黄宁', '男', '1995-06-12', '510303198712060557', '已婚', 1, '玉英县', 11, 'xiuyingpan@gmail.com', '13377122856', '广东省莉市朝阳台北街x座 190715', 6, 4, 4, '劳动合同', '硕士', '护理学', '中国科学院大学', '2017-05-09', '在职', '00000026', 7.72, '2017-01-24', NULL, '2018-06-07', '2019-10-31', NULL, 4);
INSERT INTO `t_employee` VALUES (27, '黄荣', '女', '1997-08-04', '14060319870325316X', '已婚', 1, '大冶市', 1, 'ihao@yahoo.com', '14528832529', '江西省六安县和平永安街r座 137243', 9, 4, 1, '劳务合同', '硕士', '无', '浙江大学', '2018-09-29', '在职', '00000027', 6.16, '2017-11-25', NULL, '2017-12-14', '2019-12-29', NULL, 2);
INSERT INTO `t_employee` VALUES (28, '周雷', '男', '2001-12-03', '411201197212305874', '已婚', 1, '六安市', 7, 'ping89@wg.cn', '14550266014', '浙江省丹县黄浦北镇路G座 186275', 6, 4, 3, '劳动合同', '硕士', '电子工程', '中国科学院大学', '2017-10-04', '在职', '00000028', 8.14, '2018-04-18', NULL, '2018-03-07', '2020-03-20', NULL, 2);
INSERT INTO `t_employee` VALUES (29, '周静', '女', '2001-03-14', '640105199111105559', '已婚', 1, '雪梅县', 6, 'xiajing@yahoo.com', '18912358599', '山西省瑜县怀柔北京路p座 691913', 6, 6, 4, '劳务合同', '硕士', '护理学', '北京大学', '2018-02-28', '在职', '00000029', 1.4, '2018-10-20', NULL, '2017-05-04', '2020-01-05', NULL, 4);
INSERT INTO `t_employee` VALUES (30, '师婷婷', '男', '1998-09-14', '500241199402197190', '已婚', 1, '沈阳县', 2, 'pcui@hotmail.com', '14572285539', '福建省海口县江北陈路H座 259607', 5, 4, 4, '劳动合同', '本科', '信息管理与信息系统', '南京大学', '2017-02-22', '在职', '00000030', 8.7, '2018-11-17', NULL, '2018-07-07', '2019-05-26', NULL, 1);
INSERT INTO `t_employee` VALUES (31, '邹平', '男', '1995-07-18', '469023197609079864', '已婚', 1, '沈阳县', 7, 'qiang09@hotmail.com', '15711044116', '甘肃省丽丽县永川石家庄街w座 788572', 13, 2, 2, '劳务合同', '本科', '市场营销', '浙江大学', '2019-02-27', '在职', '00000031', 0.22, '2019-01-15', NULL, '2017-04-12', '2019-05-02', NULL, 3);
INSERT INTO `t_employee` VALUES (32, '蒋桂兰', '男', '2002-01-03', '451000198103141393', '已婚', 1, '通辽县', 2, 'xuli@yahoo.com', '14747861689', '台湾省斌县大兴潮州街Q座 620273', 5, 6, 1, '劳务合同', '本科', '电子工程', '浙江大学', '2019-01-30', '在职', '00000032', 4.11, '2018-09-26', NULL, '2015-05-16', '2019-05-13', NULL, 3);
INSERT INTO `t_employee` VALUES (33, '何燕', '女', '1995-10-03', '211081194006172759', '已婚', 1, '伟市', 9, 'pqin@yahoo.com', '14510585247', '宁夏回族自治区健市和平蔡街X座 666462', 9, 6, 1, '劳动合同', '本科', '护理学', '复旦大学', '2018-05-08', '在职', '00000033', 9.4, '2017-03-17', NULL, '2017-07-12', '2019-10-22', NULL, 3);
INSERT INTO `t_employee` VALUES (34, '马淑珍', '女', '2001-07-07', '130604198910150088', '已婚', 1, '成县', 7, 'leizou@yahoo.com', '13164981755', '湖北省太原县魏都安街c座 530374', 9, 8, 3, '劳动合同', '本科', '市场营销', '中国科学院大学', '2019-03-12', '在职', '00000034', 2.67, '2018-10-18', NULL, '2018-12-22', '2020-04-04', NULL, 4);
INSERT INTO `t_employee` VALUES (35, '杨秀芳', '女', '1994-04-13', '130581196312068381', '已婚', 1, '合肥县', 11, 'pqian@jiena.cn', '13873572680', '重庆市璐县大东孙街P座 155477', 1, 4, 3, '劳动合同', '本科', '信息管理与信息系统', '中国科学院大学', '2017-07-21', '在职', '00000035', 4.4, '2017-08-12', NULL, '2016-01-07', '2019-07-22', NULL, 2);
INSERT INTO `t_employee` VALUES (36, '邱洁', '女', '2000-09-29', '130101194910161225', '已婚', 1, '婷婷县', 8, 'czhou@yongluo.cn', '13841978850', '安徽省磊县南溪刘街U座 968626', 7, 5, 3, '劳务合同', '本科', '市场营销', '复旦大学', '2016-06-01', '在职', '00000036', 1.63, '2018-04-25', NULL, '2015-05-18', '2019-12-12', NULL, 4);
INSERT INTO `t_employee` VALUES (37, '王桂花', '女', '1992-05-08', '140723194212128260', '已婚', 1, '呼和浩特市', 8, 'ping62@yahoo.com', '18029671014', '内蒙古自治区英县魏都台北街h座 836168', 8, 6, 1, '劳动合同', '本科', '中国语言文学', '浙江大学', '2015-09-26', '在职', '00000037', 9.93, '2017-10-24', NULL, '2017-06-27', '2019-07-13', NULL, 2);
INSERT INTO `t_employee` VALUES (38, '刘畅', '女', '1995-12-27', '511000193311215215', '已婚', 1, '兴安盟县', 1, 'naxiong@yahoo.com', '13377530628', '河北省呼和浩特县大东王街A座 556099', 12, 1, 4, '劳动合同', '本科', '信息管理与信息系统', '中国科学技术大学', '2017-12-11', '在职', '00000038', 6.5, '2018-10-09', NULL, '2018-05-08', '2019-04-20', NULL, 4);
INSERT INTO `t_employee` VALUES (39, '蒋欣', '男', '1994-04-02', '450225195711013399', '已婚', 1, '南宁市', 7, 'chenli@75.cn', '13808748993', '福建省杭州市南长天津街m座 127451', 4, 3, 5, '劳务合同', '本科', '无', '北京大学', '2016-04-15', '在职', '00000039', 7.55, '2016-10-15', NULL, '2018-10-04', '2020-03-28', NULL, 3);
INSERT INTO `t_employee` VALUES (40, '王超', '男', '1991-03-18', '652901197112045159', '已婚', 1, '重庆市', 5, 'mengyong@xiongyu.cn', '18159666889', '广东省秀华县浔阳高街Q座 723731', 7, 5, 3, '劳务合同', '本科', '无', '中国人民大学', '2016-10-09', '在职', '00000040', 9.67, '2017-05-01', NULL, '2015-06-11', '2019-04-19', NULL, 1);
INSERT INTO `t_employee` VALUES (41, '龚东', '女', '1993-04-15', '140107193503215615', '已婚', 1, '成都市', 5, 'guiying04@leilai.cn', '13611631710', '台湾省东莞县龙潭潜江路d座 593600', 11, 4, 1, '劳动合同', '本科', '室内装修设计', '南京大学', '2016-05-09', '在职', '00000041', 8.68, '2016-05-05', NULL, '2017-08-22', '2020-01-21', NULL, 2);
INSERT INTO `t_employee` VALUES (42, '侯欢', '女', '1990-08-09', '341824193311150186', '已婚', 1, '龙县', 8, 'yangsu@fangpeng.net', '13821459885', '河南省哈尔滨县东丽呼和浩特路C座 743024', 7, 8, 1, '劳动合同', '本科', '中国语言文学', '复旦大学', '2015-11-18', '在职', '00000042', 2.62, '2018-11-17', NULL, '2017-04-15', '2020-01-26', NULL, 4);
INSERT INTO `t_employee` VALUES (43, '赵玉华', '女', '1998-01-09', '341525197108234630', '未婚', 1, '博县', 2, 'xiuying33@dt.cn', '18682469543', '香港特别行政区晨县上街刘街e座 463619', 3, 1, 1, '劳动合同', '本科', '护理学', '南京大学', '2016-02-11', '在职', '00000043', 2.66, '2016-07-21', NULL, '2016-03-11', '2019-07-04', NULL, 4);
INSERT INTO `t_employee` VALUES (44, '刘杨', '男', '1993-05-06', '610404193406165281', '未婚', 1, '玉兰县', 11, 'fangren@xg.cn', '15750031625', '台湾省玉兰市门头沟海门街p座 470818', 5, 2, 2, '劳动合同', '本科', '无', '上海交通大学', '2015-10-21', '在职', '00000044', 1.63, '2016-07-16', NULL, '2018-07-14', '2020-04-08', NULL, 2);
INSERT INTO `t_employee` VALUES (45, '谢秀兰', '女', '1993-10-29', '450203200203284294', '未婚', 1, '六安县', 6, 'yangmo@59.cn', '15970698995', '澳门特别行政区秀芳市安次张路l座 926668', 11, 8, 2, '劳动合同', '本科', '室内装修设计', '国防科技大学', '2019-02-09', '在职', '00000045', 7.66, '2016-11-15', NULL, '2016-04-25', '2019-12-25', NULL, 4);
INSERT INTO `t_employee` VALUES (46, '徐秀云', '男', '1997-07-22', '520621193005292541', '未婚', 1, '六盘水市', 8, 'zhengyan@yahoo.com', '15017588555', '山西省太原县滨城潜江路a座 670289', 10, 2, 5, '劳务合同', '大专', '护理学', '国防科技大学', '2015-10-26', '在职', '00000046', 2.41, '2017-01-17', NULL, '2016-02-23', '2019-10-04', NULL, 3);
INSERT INTO `t_employee` VALUES (47, '秦艳', '男', '1993-11-26', '420581194004273164', '未婚', 1, '兵县', 3, 'guiying60@shikang.cn', '15048749906', '北京市建军县沈北新齐齐哈尔路a座 711455', 5, 5, 5, '劳动合同', '大专', '电子工程', '复旦大学', '2018-10-20', '在职', '00000047', 9.55, '2018-01-13', NULL, '2019-01-11', '2020-02-18', NULL, 2);
INSERT INTO `t_employee` VALUES (48, '李瑞', '男', '1990-06-27', '231085198709305690', '未婚', 1, '建军县', 2, 'mindong@yahoo.com', '13974711811', '贵州省马鞍山市龙潭朱街L座 375799', 6, 8, 4, '劳务合同', '大专', '信息管理与信息系统', '国防科技大学', '2017-08-11', '在职', '00000048', 7.61, '2016-09-08', NULL, '2018-06-16', '2019-08-18', NULL, 2);
INSERT INTO `t_employee` VALUES (49, '周倩', '男', '2001-01-10', '140926195508093145', '未婚', 1, '巢湖县', 10, 'qianjuan@yan.cn', '18792735131', '西藏自治区重庆市江北石家庄路G座 574433', 12, 1, 5, '劳动合同', '大专', '信息管理与信息系统', '复旦大学', '2018-11-09', '在职', '00000049', 7.79, '2018-10-07', NULL, '2018-06-25', '2019-08-10', NULL, 2);
INSERT INTO `t_employee` VALUES (50, '宋阳', '女', '1993-05-17', '510921199204091277', '未婚', 1, '昆明市', 3, 'mwen@minyu.cn', '18826244663', '湖南省丽丽县清城李路P座 172795', 10, 8, 2, '劳动合同', '大专', '无', '国防科技大学', '2015-08-20', '在职', '00000050', 6.69, '2019-02-23', NULL, '2017-08-18', '2019-11-12', NULL, 2);
INSERT INTO `t_employee` VALUES (51, '毛玉', '男', '1995-05-24', '230901193512038662', '未婚', 1, '哈尔滨县', 10, 'tshao@yaoliu.cn', '13921802030', '广东省晶县房山郑州路t座 474776', 2, 1, 2, '劳务合同', '大专', '护理学', '北京大学', '2016-11-16', '在职', '00000051', 9.3, '2019-01-05', NULL, '2017-03-16', '2020-04-05', NULL, 4);
INSERT INTO `t_employee` VALUES (52, '陈红梅', '男', '1993-01-15', '36078120010301542X', '未婚', 1, '明市', 9, 'ptian@guiying.cn', '15660538227', '澳门特别行政区淑珍县华龙田路s座 526080', 3, 2, 2, '劳务合同', '大专', '市场营销', '南京大学', '2016-03-14', '在职', '00000052', 7.99, '2018-11-16', NULL, '2016-08-13', '2020-04-15', NULL, 3);
INSERT INTO `t_employee` VALUES (53, '萧春梅', '女', '1994-07-14', '130225193503290451', '未婚', 1, '华县', 7, 'guiyingzeng@gmail.com', '15280462787', '河北省昆明市长寿顾街o座 728886', 3, 3, 3, '劳务合同', '大专', '中国语言文学', '国防科技大学', '2017-07-25', '在职', '00000053', 8.1, '2017-04-08', NULL, '2017-06-16', '2020-04-05', NULL, 2);
INSERT INTO `t_employee` VALUES (54, '蔡琳', '女', '2001-04-07', '230801197307256970', '未婚', 1, '雪县', 6, 'yongkong@gmail.com', '13658227544', '澳门特别行政区小红市西夏刘路v座 917143', 4, 4, 1, '劳务合同', '大专', '中国语言文学', '复旦大学', '2016-02-17', '在职', '00000054', 1.32, '2018-09-27', NULL, '2017-07-31', '2019-11-19', NULL, 1);
INSERT INTO `t_employee` VALUES (55, '谢杰', '男', '1990-07-04', '532524199902246363', '未婚', 1, '晨市', 12, 'junjin@yahoo.com', '13637320900', '内蒙古自治区辽阳市淄川刘路w座 282976', 13, 4, 2, '劳务合同', '大专', '市场营销', '中国人民大学', '2016-03-23', '在职', '00000055', 4.3, '2016-07-16', NULL, '2017-03-09', '2019-11-05', NULL, 3);
INSERT INTO `t_employee` VALUES (56, '都利', '男', '2001-12-03', '410601196110227963', '未婚', 1, '东莞市', 3, 'wzeng@yahoo.com', '13388584730', '湖北省西宁县沙湾沈阳街Y座 767974', 6, 4, 5, '劳务合同', '大专', '信息管理与信息系统', '北京大学', '2016-07-26', '在职', '00000056', 2.91, '2019-02-11', NULL, '2016-11-19', '2019-10-02', NULL, 1);
INSERT INTO `t_employee` VALUES (57, '刘颖', '男', '1992-01-01', '130403198604090550', '未婚', 1, '六盘水县', 11, 'zhaofang@84.cn', '15110335073', '澳门特别行政区嘉禾市白云周路J座 881702', 4, 3, 1, '劳务合同', '大专', '中国语言文学', '中国科学技术大学', '2016-10-01', '在职', '00000057', 3.3, '2016-12-05', NULL, '2018-03-10', '2020-01-17', NULL, 4);
INSERT INTO `t_employee` VALUES (58, '刁桂芳', '女', '2001-09-13', '150302197202283875', '未婚', 1, '六安县', 5, 'rdong@hotmail.com', '15357876400', '新疆维吾尔自治区佳县南溪宜都街R座 771673', 12, 8, 3, '劳务合同', '大专', '市场营销', '清华大学', '2017-10-29', '在职', '00000058', 4.85, '2018-08-12', NULL, '2015-05-03', '2019-06-22', NULL, 3);
INSERT INTO `t_employee` VALUES (59, '许明', '女', '1996-02-01', '540121196305265449', '未婚', 1, '海口市', 2, 'dlu@yahoo.com', '15131877702', '贵州省香港市黄浦佛山街P座 941339', 3, 4, 2, '劳动合同', '大专', '无', '南京大学', '2016-04-15', '在职', '00000059', 4.3, '2019-02-08', NULL, '2017-04-02', '2019-10-09', NULL, 4);
INSERT INTO `t_employee` VALUES (60, '张瑞', '男', '1997-11-07', '220104197208285134', '未婚', 1, '龙市', 5, 'yong72@36.net', '13034769245', '山西省桂荣县海陵洪街u座 729157', 8, 3, 1, '劳务合同', '大专', '室内装修设计', '浙江大学', '2015-05-30', '在职', '00000060', 5.37, '2018-03-25', NULL, '2015-12-25', '2020-04-07', NULL, 4);
INSERT INTO `t_employee` VALUES (61, '周荣', '女', '1999-08-11', '450304196910099779', '未婚', 1, '天津县', 12, 'chao45@30.cn', '15278236594', '宁夏回族自治区娟县合川辛集街l座 407633', 7, 1, 2, '劳务合同', '大专', '无', '国防科技大学', '2015-05-17', '在职', '00000061', 9.96, '2018-06-02', NULL, '2015-09-18', '2020-03-28', NULL, 2);
INSERT INTO `t_employee` VALUES (62, '徐飞', '女', '1993-03-27', '350600195104028506', '未婚', 1, '芳市', 5, 'chaoyuan@yahoo.com', '18975736884', '香港特别行政区合肥县翔安陈街s座 253286', 12, 3, 1, '劳动合同', '大专', '市场营销', '复旦大学', '2017-12-14', '在职', '00000062', 9.6, '2017-11-26', NULL, '2019-04-09', '2019-09-04', NULL, 3);
INSERT INTO `t_employee` VALUES (63, '金健', '男', '1991-04-26', '610125197105094719', '未婚', 1, '呼和浩特市', 9, 'juan18@hotmail.com', '15328888611', '浙江省颖县涪城福州街Z座 270167', 9, 8, 4, '劳务合同', '大专', '信息管理与信息系统', '南京大学', '2017-09-02', '在职', '00000063', 8.84, '2018-01-08', NULL, '2018-05-09', '2019-12-15', NULL, 3);
INSERT INTO `t_employee` VALUES (64, '刘红梅', '女', '1991-09-18', '653001195201108337', '未婚', 1, '柳州县', 2, 'pwei@yuan.cn', '13716052290', '贵州省济南县安次林路r座 659793', 11, 6, 2, '劳务合同', '大专', '电子工程', '中国人民大学', '2018-11-09', '在职', '00000064', 7.27, '2018-12-14', NULL, '2018-09-05', '2019-08-06', NULL, 4);
INSERT INTO `t_employee` VALUES (65, '彭静', '女', '1994-03-14', '420105196211114116', '未婚', 1, '秀华县', 11, 'jinggu@yongzeng.net', '13342125691', '湖南省燕县友好阜新路Z座 892528', 1, 5, 5, '劳动合同', '大专', '无', '中国人民大学', '2017-12-17', '在职', '00000065', 7.48, '2018-09-08', NULL, '2017-09-01', '2019-10-10', NULL, 3);
INSERT INTO `t_employee` VALUES (66, '朱燕', '男', '1998-12-25', '140724199512227964', '未婚', 1, '兰州县', 12, 'nguo@gmail.com', '14747652210', '贵州省呼和浩特市六枝特宗街k座 609064', 6, 2, 4, '劳动合同', '大专', '无', '中国人民大学', '2017-07-28', '在职', '00000066', 1.52, '2017-10-23', NULL, '2016-05-31', '2020-01-22', NULL, 1);
INSERT INTO `t_employee` VALUES (67, '成健', '女', '1996-03-30', '230108200104147249', '未婚', 1, '武汉市', 7, 'nxiao@uu.cn', '13209643778', '香港特别行政区邯郸市浔阳呼和浩特路U座 929024', 7, 4, 2, '劳务合同', '大专', '中国语言文学', '中国人民大学', '2017-05-25', '在职', '00000067', 2.1, '2017-01-27', NULL, '2018-01-30', '2019-07-21', NULL, 1);
INSERT INTO `t_employee` VALUES (68, '高成', '男', '1994-04-09', '410000198807233933', '离异', 1, '辽阳市', 10, 'baijun@gmail.com', '15061826099', '广西壮族自治区桂芳市沈河济南路Y座 175803', 13, 6, 1, '劳务合同', '大专', '信息管理与信息系统', '浙江大学', '2015-10-07', '在职', '00000068', 1.24, '2017-01-12', NULL, '2016-10-15', '2020-03-09', NULL, 4);
INSERT INTO `t_employee` VALUES (69, '杜海燕', '男', '1992-02-29', '421127195707202229', '离异', 1, '台北市', 4, 'chaoyi@kd.cn', '13961620974', '青海省洁县沙湾罗街V座 370522', 8, 6, 4, '劳动合同', '高中', '无', '浙江大学', '2017-03-15', '在职', '00000069', 4.13, '2017-09-20', NULL, '2019-02-20', '2019-11-29', NULL, 4);
INSERT INTO `t_employee` VALUES (70, '徐芳', '男', '1998-09-25', '621223197609010852', '离异', 1, '娜县', 11, 'dzou@yinsun.org', '13372235190', '云南省秀梅市东丽淮安街j座 774716', 3, 3, 1, '劳动合同', '高中', '室内装修设计', '中国人民大学', '2018-08-18', '在职', '00000070', 8.79, '2017-06-28', NULL, '2015-09-02', '2019-12-27', NULL, 2);
INSERT INTO `t_employee` VALUES (71, '徐宇', '女', '1996-05-19', '62102519520401847X', '离异', 1, '红梅市', 7, 'na38@hotmail.com', '14754588063', '重庆市磊县花溪南京街Z座 323661', 11, 4, 2, '劳务合同', '高中', '市场营销', '中国科学技术大学', '2015-08-23', '在职', '00000071', 7.83, '2019-03-29', NULL, '2016-02-15', '2020-04-13', NULL, 4);
INSERT INTO `t_employee` VALUES (72, '孟璐', '男', '1991-01-26', '220105195307205862', '离异', 1, '婷婷县', 11, 'yangtang@gmail.com', '13267664247', '四川省贵阳县闵行北京路y座 418617', 5, 8, 4, '劳动合同', '高中', '信息管理与信息系统', '复旦大学', '2017-11-01', '在职', '00000072', 5.18, '2018-02-26', NULL, '2019-01-22', '2019-10-25', NULL, 1);
INSERT INTO `t_employee` VALUES (73, '王鹏', '女', '2000-06-06', '330281198803115744', '离异', 1, '桂英县', 6, 'gang62@pan.cn', '18660120065', '浙江省武汉市怀柔王路v座 294443', 6, 2, 5, '劳动合同', '高中', '电子工程', '复旦大学', '2018-05-13', '在职', '00000073', 6.85, '2017-02-05', NULL, '2018-04-10', '2019-04-22', NULL, 1);
INSERT INTO `t_employee` VALUES (74, '刘金凤', '男', '2001-02-16', '330203194112083504', '离异', 1, '涛市', 2, 'bliang@gmail.com', '15159155928', '山东省峰市大兴潘路x座 917961', 3, 4, 2, '劳务合同', '高中', '市场营销', '浙江大学', '2015-11-05', '在职', '00000074', 1.78, '2018-12-17', NULL, '2016-09-20', '2020-03-23', NULL, 2);
INSERT INTO `t_employee` VALUES (75, '苏琴', '男', '1994-12-21', '222404198310016558', '离异', 1, '桂花市', 4, 'xiangguiying@gmail.com', '18692275625', '四川省璐县永川邢街O座 973198', 5, 1, 4, '劳动合同', '高中', '护理学', '北京大学', '2015-06-30', '在职', '00000075', 5.3, '2018-05-05', NULL, '2017-04-08', '2020-03-29', NULL, 1);
INSERT INTO `t_employee` VALUES (76, '毛帆', '男', '1998-09-07', '450903196006129649', '离异', 1, '佛山市', 13, 'juan48@xia.cn', '18652337157', '浙江省凤英市高明宜都路l座 164063', 10, 3, 4, '劳务合同', '高中', '无', '中国科学技术大学', '2016-04-15', '在职', '00000076', 4.11, '2016-08-27', NULL, '2018-05-15', '2019-10-01', NULL, 4);
INSERT INTO `t_employee` VALUES (77, '张秀云', '男', '1998-10-26', '431123197807174937', '离异', 1, '重庆市', 5, 'vsu@haoliao.cn', '18029370756', '陕西省太原市朝阳王路X座 220974', 11, 6, 5, '劳务合同', '高中', '无', '浙江大学', '2017-03-10', '在职', '00000077', 5.17, '2018-01-08', NULL, '2017-08-27', '2020-03-31', NULL, 4);
INSERT INTO `t_employee` VALUES (78, '高想', '女', '2000-11-30', '371723198203262056', '离异', 1, '哈尔滨市', 7, 'vxiang@hotmail.com', '15044991465', '西藏自治区辉市秀英张街T座 564316', 8, 2, 5, '劳务合同', '高中', '电子工程', '国防科技大学', '2016-06-01', '在职', '00000078', 1.13, '2017-06-06', NULL, '2017-11-07', '2019-09-13', NULL, 4);
INSERT INTO `t_employee` VALUES (79, '朱宁', '女', '1992-05-05', '211322196507123213', '离异', 1, '呼和浩特县', 4, 'lei13@tao.cn', '15222017286', '四川省广州县南湖邹路U座 729670', 12, 1, 2, '劳务合同', '高中', '护理学', '北京大学', '2017-07-01', '在职', '00000079', 2.55, '2018-12-28', NULL, '2015-09-12', '2019-04-29', NULL, 4);
INSERT INTO `t_employee` VALUES (80, '陈楠', '男', '1992-04-28', '230129196805237522', '离异', 1, '桂兰市', 13, 'gangkang@hotmail.com', '13406718891', '台湾省林市清浦周路k座 115493', 7, 2, 2, '劳动合同', '高中', '护理学', '中国科学院大学', '2015-08-15', '在职', '00000080', 8.88, '2016-11-22', NULL, '2018-09-28', '2019-12-28', NULL, 2);
INSERT INTO `t_employee` VALUES (81, '方桂珍', '女', '1998-07-07', '230108194311177987', '离异', 1, '帅市', 6, 'nli@hotmail.com', '15127153492', '青海省春梅县璧山马鞍山路J座 120691', 7, 7, 1, '劳务合同', '高中', '市场营销', '国防科技大学', '2017-10-22', '在职', '00000081', 5.63, '2017-12-27', NULL, '2017-11-07', '2019-11-17', NULL, 4);
INSERT INTO `t_employee` VALUES (82, '李佳', '女', '2001-06-21', '440606196708251869', '离异', 1, '萍市', 1, 'donglei@yahoo.com', '18989396343', '山东省娟县海陵孙街D座 339304', 3, 7, 3, '劳动合同', '高中', '中国语言文学', '中国科学院大学', '2016-10-30', '在职', '00000082', 0.89, '2017-05-20', NULL, '2018-09-24', '2019-09-02', NULL, 2);
INSERT INTO `t_employee` VALUES (83, '朱丽华', '女', '1994-06-20', '230705193206128541', '离异', 1, '博县', 6, 'yinxiulan@fangsong.cn', '15767432260', '台湾省香港市东城杭州街L座 231062', 6, 6, 5, '劳动合同', '高中', '室内装修设计', '南京大学', '2018-05-07', '在职', '00000083', 7.35, '2018-06-24', NULL, '2017-05-05', '2019-08-31', NULL, 2);
INSERT INTO `t_employee` VALUES (84, '丛婷婷', '男', '1990-07-15', '341323195608243637', '离异', 1, '六安市', 6, 'leisong@gmail.com', '15058065854', '黑龙江省昆明市崇文南昌街k座 929460', 3, 4, 4, '劳务合同', '高中', '中国语言文学', '国防科技大学', '2018-09-17', '在职', '00000084', 5.4, '2017-05-20', NULL, '2017-07-27', '2019-05-07', NULL, 1);
INSERT INTO `t_employee` VALUES (85, '阙亮', '男', '1990-05-12', '542221195510068340', '离异', 1, '汕尾县', 2, 'minfang@gmail.com', '15728517177', '香港特别行政区永安县西峰王路n座 719026', 2, 1, 5, '劳务合同', '高中', '信息管理与信息系统', '南京大学', '2017-01-10', '在职', '00000085', 6.33, '2017-01-11', NULL, '2016-05-05', '2019-08-23', NULL, 1);
INSERT INTO `t_employee` VALUES (86, '范红霞', '男', '1999-02-14', '440704198110164308', '离异', 1, '辽阳县', 3, 'iyuan@tao.cn', '18943020154', '贵州省秀兰市徐汇东莞街Z座 140503', 3, 1, 5, '劳务合同', '高中', '电子工程', '上海交通大学', '2018-05-03', '在职', '00000086', 5.91, '2018-08-23', NULL, '2017-12-18', '2019-04-29', NULL, 2);
INSERT INTO `t_employee` VALUES (87, '曹娜', '男', '1993-08-04', '431321195103314793', '离异', 1, '秀荣县', 9, 'lei99@xiulanjiang.cn', '14535758888', '广东省娟县崇文彭街p座 303594', 6, 2, 5, '劳动合同', '高中', '护理学', '浙江大学', '2018-08-02', '在职', '00000087', 6.79, '2017-08-31', NULL, '2018-04-24', '2020-03-25', NULL, 1);
INSERT INTO `t_employee` VALUES (88, '秦龙', '男', '1991-08-23', '420601199107076880', '离异', 1, '春梅县', 6, 'dingyong@hotmail.com', '13035350393', '北京市拉萨县西夏哈尔滨路l座 940104', 3, 5, 4, '劳动合同', '高中', '信息管理与信息系统', '南京大学', '2015-07-04', '在职', '00000088', 7.36, '2018-01-09', NULL, '2017-08-24', '2019-09-09', NULL, 1);
INSERT INTO `t_employee` VALUES (89, '刘欢', '男', '2000-04-14', '360124197901038461', '离异', 1, '呼和浩特县', 4, 'leiluo@hotmail.com', '18650425363', '台湾省秀珍县门头沟张路k座 785416', 2, 3, 4, '劳务合同', '高中', '信息管理与信息系统', '中国科学技术大学', '2018-08-28', '在职', '00000089', 6.76, '2017-01-25', NULL, '2019-03-23', '2020-02-05', NULL, 2);
INSERT INTO `t_employee` VALUES (90, '邵刚', '女', '1992-05-31', '450401194505080019', '离异', 1, '丽市', 7, 'junxiong@hotmail.com', '15138260125', '青海省建军市海陵戴街x座 562142', 4, 5, 1, '劳动合同', '高中', '市场营销', '中国人民大学', '2018-01-17', '在职', '00000090', 3.92, '2019-03-17', NULL, '2019-04-05', '2019-11-20', NULL, 4);
INSERT INTO `t_employee` VALUES (91, '石坤', '男', '1991-12-06', '211301200012288558', '离异', 1, '超县', 9, 'jun14@yahoo.com', '13380161242', '江西省昆明市丰都苏路b座 863383', 8, 5, 1, '劳动合同', '高中', '市场营销', '上海交通大学', '2018-05-31', '在职', '00000091', 6.93, '2017-09-24', NULL, '2015-06-13', '2020-04-14', NULL, 4);
INSERT INTO `t_employee` VALUES (92, '余建华', '女', '1992-07-17', '520302193402030347', '离异', 1, '阳市', 3, 'mingding@28.cn', '13435060183', '重庆市金凤市江北杭州路V座 700174', 6, 3, 3, '劳务合同', '高中', '市场营销', '清华大学', '2018-11-27', '在职', '00000092', 0.29, '2018-06-10', NULL, '2018-08-04', '2019-08-10', NULL, 2);
INSERT INTO `t_employee` VALUES (93, '宋伟', '女', '1999-11-09', '330300198210308601', '离异', 1, '北京市', 11, 'juanliang@gmail.com', '18862667374', '吉林省亮市秀英拉萨路w座 463882', 5, 1, 2, '劳务合同', '高中', '市场营销', '复旦大学', '2018-09-23', '在职', '00000093', 2.57, '2018-01-01', NULL, '2018-02-01', '2020-03-14', NULL, 1);
INSERT INTO `t_employee` VALUES (94, '韦成', '男', '1991-02-13', '130421198801238342', '离异', 1, '雷县', 10, 'zhaoxia@kt.cn', '14575813594', '青海省宁德县普陀淮安路W座 410428', 7, 6, 3, '劳务合同', '高中', '电子工程', '清华大学', '2018-07-14', '在职', '00000094', 2.27, '2017-03-04', NULL, '2016-01-26', '2019-12-06', NULL, 2);
INSERT INTO `t_employee` VALUES (95, '陈鹏', '男', '2000-07-19', '620721197805215584', '离异', 1, '兴安盟市', 9, 'juan93@04.cn', '13709426633', '云南省桂英县沙湾黄路m座 314538', 5, 3, 4, '劳动合同', '高中', '信息管理与信息系统', '复旦大学', '2015-09-29', '在职', '00000095', 2.22, '2018-10-14', NULL, '2018-01-12', '2019-12-01', NULL, 3);
INSERT INTO `t_employee` VALUES (96, '叶楠', '女', '1990-12-03', '532931197605230863', '离异', 1, '太原县', 9, 'ming60@yahoo.com', '14770621573', '陕西省辉市朝阳佛山街r座 140974', 5, 5, 5, '劳务合同', '高中', '信息管理与信息系统', '南京大学', '2018-01-10', '在职', '00000096', 9.78, '2016-09-29', NULL, '2016-11-21', '2019-12-25', NULL, 1);
INSERT INTO `t_employee` VALUES (97, '原红霞', '男', '1997-04-07', '341701193905207661', '已婚', 1, '刚县', 5, 'yan03@ye.cn', '13243818433', '辽宁省桂荣市沙湾陈路E座 758823', 1, 7, 5, '劳务合同', '高中', '无', '浙江大学', '2016-11-18', '在职', '00000097', 2.3, '2017-06-03', NULL, '2016-09-26', '2020-01-16', NULL, 3);
INSERT INTO `t_employee` VALUES (98, '王玉英', '女', '1998-03-12', '370282193508208316', '已婚', 1, '英县', 7, 'liaochao@gmail.com', '14798666739', '湖北省贵阳县花溪汕尾街e座 501635', 13, 5, 3, '劳动合同', '高中', '中国语言文学', '中国科学技术大学', '2017-12-19', '在职', '00000098', 2.23, '2017-11-02', NULL, '2018-05-08', '2019-10-21', NULL, 3);
INSERT INTO `t_employee` VALUES (99, '张红梅', '女', '1991-07-18', '350923199911240828', '已婚', 1, '燕市', 2, 'yili@hotmail.com', '13506023869', '浙江省兰州县大兴侯路x座 732564', 2, 8, 4, '劳动合同', '高中', '电子工程', '上海交通大学', '2017-11-27', '在职', '00000099', 2.4, '2018-03-13', NULL, '2019-01-30', '2019-07-04', NULL, 1);
INSERT INTO `t_employee` VALUES (100, '李强', '男', '1994-02-17', '330127200203300889', '已婚', 1, '淑兰县', 4, 'fang76@ds.cn', '15703517874', '重庆市凤兰市山亭马路l座 594007', 5, 2, 1, '劳务合同', '高中', '无', '上海交通大学', '2015-12-14', '在职', '00000100', 5.96, '2017-09-06', NULL, '2017-06-16', '2019-06-08', NULL, 3);

-- ----------------------------
-- Table structure for t_employee_ec
-- ----------------------------
DROP TABLE IF EXISTS `t_employee_ec`;
CREATE TABLE `t_employee_ec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int(11) NULL DEFAULT NULL COMMENT '员工编号',
  `ecDate` date NULL DEFAULT NULL COMMENT '奖罚日期',
  `ecReason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖罚原因',
  `ecPoint` int(11) NULL DEFAULT NULL COMMENT '奖罚分',
  `ecType` int(11) NULL DEFAULT NULL COMMENT '奖罚类别，0：奖，1：罚',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_employee_ec_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_employee_remove
-- ----------------------------
DROP TABLE IF EXISTS `t_employee_remove`;
CREATE TABLE `t_employee_remove`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int(11) NULL DEFAULT NULL COMMENT '员工id',
  `afterDepId` int(11) NULL DEFAULT NULL COMMENT '调动后部门',
  `afterJobId` int(11) NULL DEFAULT NULL COMMENT '调动后职位',
  `removeDate` date NULL DEFAULT NULL COMMENT '调动日期',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调动原因',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_employee_remove_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_employee_train
-- ----------------------------
DROP TABLE IF EXISTS `t_employee_train`;
CREATE TABLE `t_employee_train`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int(11) NULL DEFAULT NULL COMMENT '员工编号',
  `trainDate` date NULL DEFAULT NULL COMMENT '培训日期',
  `trainContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培训内容',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_employee_train_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_joblevel
-- ----------------------------
DROP TABLE IF EXISTS `t_joblevel`;
CREATE TABLE `t_joblevel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称名称',
  `titleLevel` enum('正高级','副高级','中级','初级','员级') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称等级',
  `createDate` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_joblevel
-- ----------------------------
INSERT INTO `t_joblevel` VALUES (1, '教授', '正高级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (2, '副教授', '副高级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (3, '助教', '初级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (4, '讲师', '中级', '2020-03-31 16:20:34', 0);
INSERT INTO `t_joblevel` VALUES (5, '初级工程师', '初级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (6, '中级工程师', '中级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (7, '高级工程师', '副高级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (8, '骨灰级工程师', '正高级', '2020-03-31 16:20:34', 1);

-- ----------------------------
-- Table structure for t_mail_log
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_log`;
CREATE TABLE `t_mail_log`  (
  `msgId` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消息id',
  `eid` int(11) NULL DEFAULT NULL COMMENT '接收员工id',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态（0:消息投递中 1:投递成功 2:投递失败）',
  `routeKey` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由键',
  `exchange` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交换机',
  `count` int(1) NULL DEFAULT NULL COMMENT '重试次数',
  `tryTime` datetime(0) NULL DEFAULT NULL COMMENT '重试时间',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  UNIQUE INDEX `msgId`(`msgId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url',
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'path',
  `component` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名',
  `iconCls` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `keepAlive` tinyint(1) NULL DEFAULT NULL COMMENT '是否保持激活',
  `requireAuth` tinyint(1) NULL DEFAULT NULL COMMENT '是否要求权限',
  `parentId` int(11) NULL DEFAULT NULL COMMENT '父id',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`parentId`) USING BTREE,
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `t_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, '/', NULL, NULL, '所有', NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_menu` VALUES (2, '/', '/home', 'Home', '员工资料', 'fa fa-user-circle-o', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (3, '/', '/home', 'Home', '人事管理', 'fa fa-address-card-o', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (4, '/', '/home', 'Home', '薪资管理', 'fa fa-money', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (5, '/', '/home', 'Home', '统计管理', 'fa fa-bar-chart', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (6, '/', '/home', 'Home', '系统管理', 'fa fa-windows', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (7, '/employee/basic/**', '/emp/basic', 'EmpBasic', '基本资料', NULL, NULL, 1, 2, 1);
INSERT INTO `t_menu` VALUES (8, '/employee/advanced/**', '/emp/adv', 'EmpAdv', '高级资料', NULL, NULL, 1, 2, 1);
INSERT INTO `t_menu` VALUES (9, '/personnel/emp/**', '/per/emp', 'PerEmp', '员工资料', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (10, '/personnel/ec/**', '/per/ec', 'PerEc', '员工奖惩', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (11, '/personnel/train/**', '/per/train', 'PerTrain', '员工培训', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (12, '/personnel/salary/**', '/per/salary', 'PerSalary', '员工调薪', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (13, '/personnel/remove/**', '/per/mv', 'PerMv', '员工调动', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (14, '/salary/sob/**', '/sal/sob', 'SalSob', '工资账套管理', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (15, '/salary/sobcfg/**', '/sal/sobcfg', 'SalSobCfg', '员工账套设置', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (16, '/salary/table/**', '/sal/table', 'SalTable', '工资表管理', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (17, '/salary/month/**', '/sal/month', 'SalMonth', '月末处理', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (18, '/salary/search/**', '/sal/search', 'SalSearch', '工资表查询', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (19, '/statistics/all/**', '/sta/all', 'StaAll', '综合信息统计', NULL, NULL, 1, 5, 1);
INSERT INTO `t_menu` VALUES (20, '/statistics/score/**', '/sta/score', 'StaScore', '员工积分统计', NULL, NULL, 1, 5, 1);
INSERT INTO `t_menu` VALUES (21, '/statistics/personnel/**', '/sta/pers', 'StaPers', '人事信息统计', NULL, NULL, 1, 5, 1);
INSERT INTO `t_menu` VALUES (22, '/statistics/recored/**', '/sta/record', 'StaRecord', '人事记录统计', NULL, NULL, 1, 5, 1);
INSERT INTO `t_menu` VALUES (23, '/system/basic/**', '/sys/basic', 'SysBasic', '基础信息设置', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (24, '/system/cfg/**', '/sys/cfg', 'SysCfg', '系统管理', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (25, '/system/log/**', '/sys/log', 'SysLog', '操作日志管理', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (26, '/system/admin/**', '/sys/admin', 'SysAdmin', '操作员管理', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (27, '/system/data/**', '/sys/data', 'SysData', '备份恢复数据库', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (28, '/system/init/**', '/sys/init', 'SysInit', '初始化数据库', NULL, NULL, 1, 6, 1);

-- ----------------------------
-- Table structure for t_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_role`;
CREATE TABLE `t_menu_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mid` int(11) NULL DEFAULT NULL COMMENT '菜单id',
  `rid` int(11) NULL DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  CONSTRAINT `t_menu_role_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `t_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_menu_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 747 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu_role
-- ----------------------------
INSERT INTO `t_menu_role` VALUES (1, 7, 3);
INSERT INTO `t_menu_role` VALUES (2, 7, 6);
INSERT INTO `t_menu_role` VALUES (3, 9, 6);
INSERT INTO `t_menu_role` VALUES (4, 10, 6);
INSERT INTO `t_menu_role` VALUES (5, 11, 6);
INSERT INTO `t_menu_role` VALUES (6, 12, 6);
INSERT INTO `t_menu_role` VALUES (7, 13, 6);
INSERT INTO `t_menu_role` VALUES (8, 14, 6);
INSERT INTO `t_menu_role` VALUES (9, 15, 6);
INSERT INTO `t_menu_role` VALUES (10, 16, 6);
INSERT INTO `t_menu_role` VALUES (11, 17, 6);
INSERT INTO `t_menu_role` VALUES (12, 18, 6);
INSERT INTO `t_menu_role` VALUES (13, 19, 6);
INSERT INTO `t_menu_role` VALUES (14, 20, 6);
INSERT INTO `t_menu_role` VALUES (15, 21, 6);
INSERT INTO `t_menu_role` VALUES (16, 22, 6);
INSERT INTO `t_menu_role` VALUES (17, 23, 6);
INSERT INTO `t_menu_role` VALUES (18, 25, 6);
INSERT INTO `t_menu_role` VALUES (19, 26, 6);
INSERT INTO `t_menu_role` VALUES (20, 27, 6);
INSERT INTO `t_menu_role` VALUES (21, 28, 6);
INSERT INTO `t_menu_role` VALUES (22, 24, 6);
INSERT INTO `t_menu_role` VALUES (26, 7, 2);
INSERT INTO `t_menu_role` VALUES (27, 8, 2);
INSERT INTO `t_menu_role` VALUES (28, 9, 2);
INSERT INTO `t_menu_role` VALUES (29, 10, 2);
INSERT INTO `t_menu_role` VALUES (30, 12, 2);
INSERT INTO `t_menu_role` VALUES (31, 13, 2);
INSERT INTO `t_menu_role` VALUES (32, 7, 1);
INSERT INTO `t_menu_role` VALUES (33, 8, 1);
INSERT INTO `t_menu_role` VALUES (34, 9, 1);
INSERT INTO `t_menu_role` VALUES (35, 10, 1);
INSERT INTO `t_menu_role` VALUES (36, 11, 1);
INSERT INTO `t_menu_role` VALUES (37, 12, 1);
INSERT INTO `t_menu_role` VALUES (38, 13, 1);
INSERT INTO `t_menu_role` VALUES (39, 14, 1);
INSERT INTO `t_menu_role` VALUES (40, 15, 1);
INSERT INTO `t_menu_role` VALUES (41, 16, 1);
INSERT INTO `t_menu_role` VALUES (42, 17, 1);
INSERT INTO `t_menu_role` VALUES (43, 18, 1);
INSERT INTO `t_menu_role` VALUES (44, 19, 1);
INSERT INTO `t_menu_role` VALUES (45, 20, 1);
INSERT INTO `t_menu_role` VALUES (46, 21, 1);
INSERT INTO `t_menu_role` VALUES (47, 22, 1);
INSERT INTO `t_menu_role` VALUES (48, 23, 1);
INSERT INTO `t_menu_role` VALUES (49, 24, 1);
INSERT INTO `t_menu_role` VALUES (50, 25, 1);
INSERT INTO `t_menu_role` VALUES (51, 26, 1);
INSERT INTO `t_menu_role` VALUES (52, 27, 1);
INSERT INTO `t_menu_role` VALUES (53, 28, 1);
INSERT INTO `t_menu_role` VALUES (346, 11, 4);
INSERT INTO `t_menu_role` VALUES (347, 8, 4);
INSERT INTO `t_menu_role` VALUES (348, 7, 4);

-- ----------------------------
-- Table structure for t_nation
-- ----------------------------
DROP TABLE IF EXISTS `t_nation`;
CREATE TABLE `t_nation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_nation
-- ----------------------------
INSERT INTO `t_nation` VALUES (1, '汉族');
INSERT INTO `t_nation` VALUES (2, '蒙古族');
INSERT INTO `t_nation` VALUES (3, '回族');
INSERT INTO `t_nation` VALUES (4, '藏族');
INSERT INTO `t_nation` VALUES (5, '维吾尔族');
INSERT INTO `t_nation` VALUES (6, '苗族');
INSERT INTO `t_nation` VALUES (7, '彝族');
INSERT INTO `t_nation` VALUES (8, '壮族');
INSERT INTO `t_nation` VALUES (9, '布依族');
INSERT INTO `t_nation` VALUES (10, '朝鲜族');
INSERT INTO `t_nation` VALUES (11, '满族');
INSERT INTO `t_nation` VALUES (12, '侗族');
INSERT INTO `t_nation` VALUES (13, '瑶族');
INSERT INTO `t_nation` VALUES (14, '白族');
INSERT INTO `t_nation` VALUES (15, '土家族');
INSERT INTO `t_nation` VALUES (16, '哈尼族');
INSERT INTO `t_nation` VALUES (17, '哈萨克族');
INSERT INTO `t_nation` VALUES (18, '傣族');
INSERT INTO `t_nation` VALUES (19, '黎族');
INSERT INTO `t_nation` VALUES (20, '傈僳族');
INSERT INTO `t_nation` VALUES (21, '佤族');
INSERT INTO `t_nation` VALUES (22, '畲族');
INSERT INTO `t_nation` VALUES (23, '高山族');
INSERT INTO `t_nation` VALUES (24, '拉祜族');
INSERT INTO `t_nation` VALUES (25, '水族');
INSERT INTO `t_nation` VALUES (26, '东乡族');
INSERT INTO `t_nation` VALUES (27, '纳西族');
INSERT INTO `t_nation` VALUES (28, '景颇族');
INSERT INTO `t_nation` VALUES (29, '柯尔克孜族');
INSERT INTO `t_nation` VALUES (30, '土族');
INSERT INTO `t_nation` VALUES (31, '达斡尔族');
INSERT INTO `t_nation` VALUES (32, '仫佬族');
INSERT INTO `t_nation` VALUES (33, '羌族');
INSERT INTO `t_nation` VALUES (34, '布朗族');
INSERT INTO `t_nation` VALUES (35, '撒拉族');
INSERT INTO `t_nation` VALUES (36, '毛难族');
INSERT INTO `t_nation` VALUES (37, '仡佬族');
INSERT INTO `t_nation` VALUES (38, '锡伯族');
INSERT INTO `t_nation` VALUES (39, '阿昌族');
INSERT INTO `t_nation` VALUES (40, '普米族');
INSERT INTO `t_nation` VALUES (41, '塔吉克族');
INSERT INTO `t_nation` VALUES (42, '怒族');
INSERT INTO `t_nation` VALUES (43, '乌孜别克族');
INSERT INTO `t_nation` VALUES (44, '俄罗斯族');
INSERT INTO `t_nation` VALUES (45, '鄂温克族');
INSERT INTO `t_nation` VALUES (46, '崩龙族');
INSERT INTO `t_nation` VALUES (47, '保安族');
INSERT INTO `t_nation` VALUES (48, '裕固族');
INSERT INTO `t_nation` VALUES (49, '京族');
INSERT INTO `t_nation` VALUES (50, '塔塔尔族');
INSERT INTO `t_nation` VALUES (51, '独龙族');
INSERT INTO `t_nation` VALUES (52, '鄂伦春族');
INSERT INTO `t_nation` VALUES (53, '赫哲族');
INSERT INTO `t_nation` VALUES (54, '门巴族');
INSERT INTO `t_nation` VALUES (55, '珞巴族');
INSERT INTO `t_nation` VALUES (56, '基诺族');

-- ----------------------------
-- Table structure for t_oplog
-- ----------------------------
DROP TABLE IF EXISTS `t_oplog`;
CREATE TABLE `t_oplog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `addDate` date NULL DEFAULT NULL COMMENT '添加日期',
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作内容',
  `adminid` int(11) NULL DEFAULT NULL COMMENT '操作员ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `adminid`(`adminid`) USING BTREE,
  CONSTRAINT `t_oplog_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `t_admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_politics_status
-- ----------------------------
DROP TABLE IF EXISTS `t_politics_status`;
CREATE TABLE `t_politics_status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_politics_status
-- ----------------------------
INSERT INTO `t_politics_status` VALUES (1, '中共党员');
INSERT INTO `t_politics_status` VALUES (2, '中共预备党员');
INSERT INTO `t_politics_status` VALUES (3, '共青团员');
INSERT INTO `t_politics_status` VALUES (4, '民革党员');
INSERT INTO `t_politics_status` VALUES (5, '民盟盟员');
INSERT INTO `t_politics_status` VALUES (6, '民建会员');
INSERT INTO `t_politics_status` VALUES (7, '民进会员');
INSERT INTO `t_politics_status` VALUES (8, '农工党党员');
INSERT INTO `t_politics_status` VALUES (9, '致公党党员');
INSERT INTO `t_politics_status` VALUES (10, '九三学社社员');
INSERT INTO `t_politics_status` VALUES (11, '台盟盟员');
INSERT INTO `t_politics_status` VALUES (12, '无党派民主人士');
INSERT INTO `t_politics_status` VALUES (13, '普通公民');

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `createDate` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_position
-- ----------------------------
INSERT INTO `t_position` VALUES (1, '技术总监', '2020-03-31 16:20:34', 1);
INSERT INTO `t_position` VALUES (2, '运营总监', '2020-03-31 16:20:34', 1);
INSERT INTO `t_position` VALUES (3, '市场总监', '2020-03-31 16:20:34', 1);
INSERT INTO `t_position` VALUES (4, '研发工程师', '2020-03-31 16:20:34', 1);
INSERT INTO `t_position` VALUES (5, '运维工程师', '2020-03-31 16:20:34', 1);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `nameZh` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, 'ROLE_manager', '部门经理');
INSERT INTO `t_role` VALUES (2, 'ROLE_personnel', '人事专员');
INSERT INTO `t_role` VALUES (3, 'ROLE_recruiter', '招聘主管');
INSERT INTO `t_role` VALUES (4, 'ROLE_train', '培训主管');
INSERT INTO `t_role` VALUES (5, 'ROLE_performance', '薪酬绩效主管');
INSERT INTO `t_role` VALUES (6, 'ROLE_admin', '系统管理员');
INSERT INTO `t_role` VALUES (8, 'ROLE_test', '测试角色');

-- ----------------------------
-- Table structure for t_salary
-- ----------------------------
DROP TABLE IF EXISTS `t_salary`;
CREATE TABLE `t_salary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `basicSalary` int(11) NULL DEFAULT NULL COMMENT '基本工资',
  `bonus` int(11) NULL DEFAULT NULL COMMENT '奖金',
  `lunchSalary` int(11) NULL DEFAULT NULL COMMENT '午餐补助',
  `trafficSalary` int(11) NULL DEFAULT NULL COMMENT '交通补助',
  `allSalary` int(11) NULL DEFAULT NULL COMMENT '应发工资',
  `pensionBase` int(11) NULL DEFAULT NULL COMMENT '养老金基数',
  `pensionPer` float NULL DEFAULT NULL COMMENT '养老金比率',
  `createDate` timestamp(0) NULL DEFAULT NULL COMMENT '启用时间',
  `medicalBase` int(11) NULL DEFAULT NULL COMMENT '医疗基数',
  `medicalPer` float NULL DEFAULT NULL COMMENT '医疗保险比率',
  `accumulationFundBase` int(11) NULL DEFAULT NULL COMMENT '公积金基数',
  `accumulationFundPer` float NULL DEFAULT NULL COMMENT '公积金比率',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_salary
-- ----------------------------
INSERT INTO `t_salary` VALUES (1, 8000, 500, 800, 400, NULL, 1000, 0.06, '2018-01-24 00:00:00', 1000, 0.06, 1000, 0.06, '市场部工资账套');
INSERT INTO `t_salary` VALUES (2, 3000, 500, 500, 500, NULL, 1800, 0.06, '2018-01-01 00:00:00', 2200, 0.06, 3200, 0.06, '人事部工资账套');
INSERT INTO `t_salary` VALUES (3, 9000, 500, 1000, 1000, NULL, 3000, 0.06, '2018-01-25 00:00:00', 3000, 0.06, 3000, 0.06, '运维部工资账套');
INSERT INTO `t_salary` VALUES (4, 5000, 500, 500, 500, NULL, 500, 0.06, '2020-04-10 14:15:45', 500, 0.06, 500, 0.06, '财务部工资账套');

-- ----------------------------
-- Table structure for t_salary_adjust
-- ----------------------------
DROP TABLE IF EXISTS `t_salary_adjust`;
CREATE TABLE `t_salary_adjust`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int(11) NULL DEFAULT NULL COMMENT '员工ID',
  `asDate` date NULL DEFAULT NULL COMMENT '调薪日期',
  `beforeSalary` int(11) NULL DEFAULT NULL COMMENT '调前薪资',
  `afterSalary` int(11) NULL DEFAULT NULL COMMENT '调后薪资',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调薪原因',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_salary_adjust_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sys_msg
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_msg`;
CREATE TABLE `t_sys_msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mid` int(11) NULL DEFAULT NULL COMMENT '消息id',
  `type` int(11) NULL DEFAULT 0 COMMENT '0表示群发消息',
  `adminid` int(11) NULL DEFAULT NULL COMMENT '这条消息是给谁的',
  `state` int(11) NULL DEFAULT 0 COMMENT '0 未读 1 已读',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `adminid`(`adminid`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  CONSTRAINT `t_sys_msg_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `t_sys_msg_content` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_sys_msg_ibfk_2` FOREIGN KEY (`adminid`) REFERENCES `t_admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_msg
-- ----------------------------
INSERT INTO `t_sys_msg` VALUES (1, 1, 0, 1, 1);
INSERT INTO `t_sys_msg` VALUES (2, 1, 0, 2, 1);
INSERT INTO `t_sys_msg` VALUES (3, 1, 0, 3, 1);
INSERT INTO `t_sys_msg` VALUES (4, 1, 0, 4, 0);
INSERT INTO `t_sys_msg` VALUES (5, 1, 0, 5, 0);
INSERT INTO `t_sys_msg` VALUES (6, 2, 0, 1, 1);
INSERT INTO `t_sys_msg` VALUES (7, 2, 0, 2, 1);
INSERT INTO `t_sys_msg` VALUES (8, 2, 0, 3, 1);
INSERT INTO `t_sys_msg` VALUES (9, 2, 0, 4, 0);
INSERT INTO `t_sys_msg` VALUES (10, 2, 0, 5, 0);
INSERT INTO `t_sys_msg` VALUES (11, 3, 0, 1, 1);
INSERT INTO `t_sys_msg` VALUES (12, 3, 0, 2, 1);
INSERT INTO `t_sys_msg` VALUES (13, 3, 0, 3, 1);
INSERT INTO `t_sys_msg` VALUES (14, 3, 0, 4, 0);
INSERT INTO `t_sys_msg` VALUES (15, 3, 0, 5, 0);

-- ----------------------------
-- Table structure for t_sys_msg_content
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_msg_content`;
CREATE TABLE `t_sys_msg_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `createDate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_msg_content
-- ----------------------------
INSERT INTO `t_sys_msg_content` VALUES (1, '通知标题1', '通知内容1', '2020-03-31 16:20:34');
INSERT INTO `t_sys_msg_content` VALUES (2, '通知标题2', '通知内容2', '2020-03-31 16:20:34');
INSERT INTO `t_sys_msg_content` VALUES (3, '通知标题3', '通知内容3', '2020-03-31 16:20:34');

-- ----------------------------
-- Procedure structure for addDep
-- ----------------------------
DROP PROCEDURE IF EXISTS `addDep`;
delimiter ;;
CREATE PROCEDURE `addDep`(in depName varchar(32),in parentId int,in enabled boolean,out result int,out result2 int)
begin
  declare did int;
  declare pDepPath varchar(64);
  insert into t_department set name=depName,parentId=parentId,enabled=enabled;
  select row_count() into result;
  select last_insert_id() into did;
  set result2=did;
  select depPath into pDepPath from t_department where id=parentId;
  update t_department set depPath=concat(pDepPath,'.',did) where id=did;
  update t_department set isParent=true where id=parentId;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for deleteDep
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDep`;
delimiter ;;
CREATE PROCEDURE `deleteDep`(in did int,out result int)
begin
  declare ecount int;
  declare pid int;
  declare pcount int;
  declare a int;
  select count(*) into a from t_department where id=did and isParent=false;
  if a=0 then set result=-2;
  else
  select count(*) into ecount from t_employee where departmentId=did;
  if ecount>0 then set result=-1;
  else 
  select parentId into pid from t_department where id=did;
  delete from t_department where id=did and isParent=false;
  select row_count() into result;
  select count(*) into pcount from t_department where parentId=pid;
  if pcount=0 then update t_department set isParent=false where id=pid;
  end if;
  end if;
  end if;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
