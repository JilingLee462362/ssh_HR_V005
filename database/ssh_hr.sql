/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50522
Source Host           : 192.168.4.39:3306
Source Database       : ssh_hr

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2017-06-06 14:07:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bonus`
-- ----------------------------
DROP TABLE IF EXISTS `bonus`;
CREATE TABLE `bonus` (
  `bon_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_kind_id` char(10) DEFAULT NULL,
  `major_kind_name` varchar(60) DEFAULT NULL,
  `major_id` char(10) DEFAULT NULL,
  `major_name` varchar(60) DEFAULT NULL,
  `human_id` varchar(30) DEFAULT NULL,
  `human_name` varchar(60) DEFAULT NULL,
  `bonus_item` varchar(60) DEFAULT NULL,
  `bonus_worth` varchar(60) DEFAULT NULL,
  `bonus_degree` varchar(60) DEFAULT NULL,
  `remark` text,
  `register` varchar(60) DEFAULT NULL,
  `checker` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `check_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`bon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bonus
-- ----------------------------
INSERT INTO `bonus` VALUES ('2', '1001', '工程师', '1001', '高级java工程师', '1001', '壮壮', '薪酬', null, '2级', '', '任壮壮', '邓腾飞', '2017-06-02 11:22:21', '2017-06-02 11:22:26', '1');
INSERT INTO `bonus` VALUES ('3', '1002', '框架师', '1002', '高级java框架师', '1002', '安民', '晋升', null, '1级', '', '任壮壮', '邓腾飞', '2017-06-05 20:05:39', '2017-06-05 20:05:47', '1');
INSERT INTO `bonus` VALUES ('4', '1001', '工程师', '1003', '中级java工程师', '1003', '邓腾飞', '旅游', null, '3级', '', '任壮壮', '邓腾飞', '2017-06-04 20:13:26', '2017-06-04 20:13:32', '1');
INSERT INTO `bonus` VALUES ('5', '1003', '经理', '1004', '经理', '1004', '王凛', '度假', null, '3级', null, '任壮壮', '邓腾飞', '2017-06-03 20:16:02', '2017-06-03 20:16:10', '1');
INSERT INTO `bonus` VALUES ('6', '1003', '经理', '1004', '见习经理', '1005', '陈坤', '期权', null, '3级', null, '任壮壮', '邓腾飞', '2017-06-01 20:18:14', '2017-06-01 20:18:18', '1');
INSERT INTO `bonus` VALUES ('7', '1001', '工程师', '1003', '中级java工程师', '1006', '张恺', '旅游', null, '3级', null, '任壮壮', '邓腾飞', '2017-06-05 20:20:18', '2017-06-05 20:20:22', '1');
INSERT INTO `bonus` VALUES ('8', '1001', '工程师', '1003', '中级java工程师', '1007', '杨敏', '旅游', null, '3三级', null, '任壮壮', '邓腾飞', '2017-06-04 20:22:03', '2017-06-04 20:22:07', '1');
INSERT INTO `bonus` VALUES ('9', '1001', '工程师', '1005', '高级java工程师', '1008', '陈豆', '女朋友', null, '1级', null, '任壮壮', '邓腾飞', '2017-06-05 20:25:14', '2017-06-05 20:25:18', '1');
INSERT INTO `bonus` VALUES ('10', '1001', '工程师', '1003', '中级java工程师', '1009', '叶睿', '旅游', null, '3级', null, '任壮壮', '邓腾飞', '2017-06-04 20:26:47', '2017-06-04 20:26:53', '1');
INSERT INTO `bonus` VALUES ('11', '1003', '经理', '1004', '高级经理', '1010', '于小宝', '哈雷', null, '2级', null, '任壮壮', '邓腾飞', '2017-06-04 20:28:34', '2017-06-04 20:28:38', '1');
INSERT INTO `bonus` VALUES ('12', '1004', '经理', '1004', '中级经理', '1011', '文飞', '晋升', null, '2级', null, '任壮壮', '邓腾飞', '2017-06-04 20:30:17', '2017-06-04 20:30:21', '1');
INSERT INTO `bonus` VALUES ('13', '1001', '工程师', '1003', '中级java工程师', '1012', '段云冲', '旅游', null, '2级', null, '任壮壮', '邓腾飞', '2017-06-04 20:31:51', '2017-06-04 20:31:55', '1');

-- ----------------------------
-- Table structure for `config_file_third_kind`
-- ----------------------------
DROP TABLE IF EXISTS `config_file_third_kind`;
CREATE TABLE `config_file_third_kind` (
  `ftk_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_kind_id` char(2) DEFAULT NULL,
  `first_kind_name` varchar(60) DEFAULT NULL,
  `second_kind_id` char(2) DEFAULT NULL,
  `second_kind_name` varchar(60) DEFAULT NULL,
  `third_kind_id` char(2) DEFAULT NULL,
  `third_kind_name` varchar(60) DEFAULT NULL,
  `third_kind_sale_id` text,
  `third_kind_is_retail` char(2) DEFAULT NULL,
  PRIMARY KEY (`ftk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_file_third_kind
-- ----------------------------
INSERT INTO `config_file_third_kind` VALUES ('1', '01', '集团', '01', '软件公司', '01', '外包组', '1', '否');
INSERT INTO `config_file_third_kind` VALUES ('2', '01', '集团', '02', '生物科技有限公司', '01', '药店', '1', '是');

-- ----------------------------
-- Table structure for `config_major`
-- ----------------------------
DROP TABLE IF EXISTS `config_major`;
CREATE TABLE `config_major` (
  `mak_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_kind_id` varchar(100) DEFAULT NULL,
  `major_kind_name` varchar(60) DEFAULT NULL,
  `major_id` varchar(100) DEFAULT NULL,
  `major_name` varchar(60) DEFAULT NULL,
  `test_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`mak_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_major
-- ----------------------------
INSERT INTO `config_major` VALUES ('3', '02', '软件开发', '01', '项目经理', '0');
INSERT INTO `config_major` VALUES ('4', '02', '软件开发', '02', '程序员', '0');
INSERT INTO `config_major` VALUES ('5', '03', '人力资源', '01', '人事经理', '0');
INSERT INTO `config_major` VALUES ('6', '03', '人力资源', '02', '专员', '0');
INSERT INTO `config_major` VALUES ('7', '04', '生产部', '01', '主任', '0');
INSERT INTO `config_major` VALUES ('8', '04', '生产部', '02', '技术工人', '0');
INSERT INTO `config_major` VALUES ('9', '12', '保安部', '07', '大队长', '0');

-- ----------------------------
-- Table structure for `config_major_kind`
-- ----------------------------
DROP TABLE IF EXISTS `config_major_kind`;
CREATE TABLE `config_major_kind` (
  `mfk_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_kind_id` varchar(100) DEFAULT NULL,
  `major_kind_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`mfk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_major_kind
-- ----------------------------
INSERT INTO `config_major_kind` VALUES ('3', '03', '人力资源');
INSERT INTO `config_major_kind` VALUES ('4', '04', '生产部');
INSERT INTO `config_major_kind` VALUES ('5', '12', '保安部');
INSERT INTO `config_major_kind` VALUES ('6', '02', '软件开发');

-- ----------------------------
-- Table structure for `config_primary_key`
-- ----------------------------
DROP TABLE IF EXISTS `config_primary_key`;
CREATE TABLE `config_primary_key` (
  `prk_id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_key_table` varchar(60) DEFAULT NULL,
  `primary_key` varchar(60) DEFAULT NULL,
  `key_name` varchar(60) DEFAULT NULL,
  `primary_key_status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`prk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_primary_key
-- ----------------------------
INSERT INTO `config_primary_key` VALUES ('1', 'HumanFile', 'firstKindName', 'I级机构名称', '');
INSERT INTO `config_primary_key` VALUES ('2', 'HumanFile', 'secondKindName', 'II级机构名称', '');
INSERT INTO `config_primary_key` VALUES ('3', 'HumanFile', 'thirdKindName', 'III级机构名称', '');
INSERT INTO `config_primary_key` VALUES ('4', 'HumanFile', 'humanId', '档案编号', '');
INSERT INTO `config_primary_key` VALUES ('5', 'HumanFile', 'humanName', '姓名', '');
INSERT INTO `config_primary_key` VALUES ('6', 'HumanFile', 'humanAddress', '住址', '');
INSERT INTO `config_primary_key` VALUES ('7', 'HumanFile', 'humanPostcode', '邮编', '');
INSERT INTO `config_primary_key` VALUES ('8', 'HumanFile', 'humanProDesignation', '职称', '');
INSERT INTO `config_primary_key` VALUES ('9', 'HumanFile', 'humanMajorKindName', '职位分类名称', '');
INSERT INTO `config_primary_key` VALUES ('10', 'HumanFile', 'hunmaMajorName', '职位名称', '');
INSERT INTO `config_primary_key` VALUES ('11', 'HumanFile', 'humanBank', '开户银行', '');
INSERT INTO `config_primary_key` VALUES ('12', 'HumanFile', 'humanAccount', '银行帐号', '');
INSERT INTO `config_primary_key` VALUES ('13', 'HumanFile', 'humanTelephone', '电话', '');
INSERT INTO `config_primary_key` VALUES ('14', 'HumanFile', 'humanMobilephone', '手机号码', '');
INSERT INTO `config_primary_key` VALUES ('15', 'HumanFile', 'humanEmail', 'E-mail', '');
INSERT INTO `config_primary_key` VALUES ('16', 'HumanFile', 'humanHobby', '爱好', '');
INSERT INTO `config_primary_key` VALUES ('17', 'HumanFile', 'humanSpeciality', '特长', '');
INSERT INTO `config_primary_key` VALUES ('18', 'HumanFile', 'humanSex', '性别', '');
INSERT INTO `config_primary_key` VALUES ('19', 'HumanFile', 'humanReligion', '宗教信仰', '');
INSERT INTO `config_primary_key` VALUES ('20', 'HumanFile', 'humanParty', '政治面貌', '');
INSERT INTO `config_primary_key` VALUES ('21', 'HumanFile', 'humanNationality', '国籍', '');
INSERT INTO `config_primary_key` VALUES ('22', 'HumanFile', 'humanRace', '民族', '');
INSERT INTO `config_primary_key` VALUES ('23', 'HumanFile', 'humanBirthday', '生日', '');
INSERT INTO `config_primary_key` VALUES ('24', 'HumanFile', 'humanBirthplace', '出生地', '');
INSERT INTO `config_primary_key` VALUES ('25', 'HumanFile', 'humanAge', '年龄', '');
INSERT INTO `config_primary_key` VALUES ('26', 'HumanFile', 'humanEducatedDegree', '学历', '');
INSERT INTO `config_primary_key` VALUES ('27', 'HumanFile', 'humanEducatedYears', '教育年限', '');
INSERT INTO `config_primary_key` VALUES ('28', 'HumanFile', 'humanEducatedMajor', '专业', '');
INSERT INTO `config_primary_key` VALUES ('29', 'HumanFile', 'humanSocietySecurityId', '社会保障号码', '');
INSERT INTO `config_primary_key` VALUES ('30', 'HumanFile', 'humanIdCard', '身份证号码', '');
INSERT INTO `config_primary_key` VALUES ('31', 'HumanFile', 'salaryStandardId', '薪酬标准编号', '');
INSERT INTO `config_primary_key` VALUES ('32', 'HumanFile', 'salaryStandardName', '薪酬标准', '');
INSERT INTO `config_primary_key` VALUES ('33', 'HumanFile', 'majorChangeAmount', '调动次数', '');
INSERT INTO `config_primary_key` VALUES ('34', 'HumanFile', 'bonusAmount', '激励次数', '');
INSERT INTO `config_primary_key` VALUES ('35', 'HumanFile', 'trainingAmount', '培训次数', '');
INSERT INTO `config_primary_key` VALUES ('36', 'HumanFile', 'fileChangAmount', '档案变更次数', '');
INSERT INTO `config_primary_key` VALUES ('37', 'HumanFile', 'remark', '备注', '');
INSERT INTO `config_primary_key` VALUES ('38', 'HumanFile', 'humanHistroyRecords', '简历', '');
INSERT INTO `config_primary_key` VALUES ('39', 'HumanFile', 'humanFamilyMembership', '家庭关系', '');
INSERT INTO `config_primary_key` VALUES ('40', 'HumanFile', 'register', '登记人', '');
INSERT INTO `config_primary_key` VALUES ('41', 'SalaryStandard', 'standardId', '薪酬标准编号', '');
INSERT INTO `config_primary_key` VALUES ('42', 'SalaryStandard', 'standardName', '薪酬标准名称', '');
INSERT INTO `config_primary_key` VALUES ('43', 'SalaryStandard', 'designer', '设计人', '');
INSERT INTO `config_primary_key` VALUES ('44', 'SalaryGrant', 'salaryStandardId', '薪酬标准编号', '');
INSERT INTO `config_primary_key` VALUES ('45', 'SalaryGrant', 'salaryGrantId', '薪酬发放编号', '');
INSERT INTO `config_primary_key` VALUES ('46', 'Bonus', 'majorKindName', '职位分类名称', '');
INSERT INTO `config_primary_key` VALUES ('47', 'Bonus', 'majorName', '职位名称', '');
INSERT INTO `config_primary_key` VALUES ('48', 'Bonus', 'humanId', '员工编号', '');
INSERT INTO `config_primary_key` VALUES ('49', 'Bonus', 'humanName', '职员工姓名', '');
INSERT INTO `config_primary_key` VALUES ('50', 'Bonus', 'bonusItem', '激励项目', '');
INSERT INTO `config_primary_key` VALUES ('51', 'Bonus', 'bonusDegree', '激励等级', '');
INSERT INTO `config_primary_key` VALUES ('52', 'Bonus', 'remark', '备注', '');
INSERT INTO `config_primary_key` VALUES ('53', 'Training', 'majorKindName', '职位分类名称', '');
INSERT INTO `config_primary_key` VALUES ('54', 'Training', 'majorName', '职位名称', '');
INSERT INTO `config_primary_key` VALUES ('55', 'Training', 'humanId', '员工编号', '');
INSERT INTO `config_primary_key` VALUES ('56', 'Training', 'humanName', '职员工姓名', '');
INSERT INTO `config_primary_key` VALUES ('57', 'Training', 'trainingItem', '培训项目', '');
INSERT INTO `config_primary_key` VALUES ('58', 'Training', 'trainingDegree', '培训等级', '');
INSERT INTO `config_primary_key` VALUES ('59', 'Training', 'remark', '备注', '');
INSERT INTO `config_primary_key` VALUES ('60', 'MajorChange', 'firstKindName', 'I机机构', '');
INSERT INTO `config_primary_key` VALUES ('61', 'MajorChange', 'secondKindName', 'II机机构', '');
INSERT INTO `config_primary_key` VALUES ('62', 'MajorChange', 'thirdKindName', 'III机机构', '');
INSERT INTO `config_primary_key` VALUES ('63', 'MajorChange', 'majorKindName', '职位分类', '');
INSERT INTO `config_primary_key` VALUES ('64', 'MajorChange', 'majorName', '职位', '');
INSERT INTO `config_primary_key` VALUES ('65', 'MajorChange', 'humanId', '员工编号', '');
INSERT INTO `config_primary_key` VALUES ('66', 'MajorChange', 'humanName', '员工姓名', '');
INSERT INTO `config_primary_key` VALUES ('67', 'MajorChange', 'changeReason', '调动原因', '');

-- ----------------------------
-- Table structure for `config_public_char`
-- ----------------------------
DROP TABLE IF EXISTS `config_public_char`;
CREATE TABLE `config_public_char` (
  `pbc_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_kind` varchar(60) DEFAULT NULL,
  `attribute_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pbc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_public_char
-- ----------------------------
INSERT INTO `config_public_char` VALUES ('1', '国籍', '中国');
INSERT INTO `config_public_char` VALUES ('2', '国籍', '美国');
INSERT INTO `config_public_char` VALUES ('3', '民族', '汉族');
INSERT INTO `config_public_char` VALUES ('4', '民族', '回族');
INSERT INTO `config_public_char` VALUES ('5', '宗教信仰', '无');
INSERT INTO `config_public_char` VALUES ('6', '宗教信仰', '佛教');
INSERT INTO `config_public_char` VALUES ('7', '政治面貌', '党员');
INSERT INTO `config_public_char` VALUES ('8', '政治面貌', '群众');
INSERT INTO `config_public_char` VALUES ('9', '教育年限', '12');
INSERT INTO `config_public_char` VALUES ('10', '教育年限', '16');
INSERT INTO `config_public_char` VALUES ('11', '学历', '本科');
INSERT INTO `config_public_char` VALUES ('12', '学历', '大专');
INSERT INTO `config_public_char` VALUES ('13', '专业', '生物工程');
INSERT INTO `config_public_char` VALUES ('14', '专业', '计算机');
INSERT INTO `config_public_char` VALUES ('15', '特长', '数据库');
INSERT INTO `config_public_char` VALUES ('16', '特长', 'java');
INSERT INTO `config_public_char` VALUES ('17', '爱好', '篮球');
INSERT INTO `config_public_char` VALUES ('18', '爱好', '舞蹈');
INSERT INTO `config_public_char` VALUES ('19', '培训项目', '英语');
INSERT INTO `config_public_char` VALUES ('20', '培训项目', '管理');
INSERT INTO `config_public_char` VALUES ('21', '培训成绩', 'A');
INSERT INTO `config_public_char` VALUES ('22', '培训成绩', 'B');
INSERT INTO `config_public_char` VALUES ('23', '奖励项目', '技术攻关');
INSERT INTO `config_public_char` VALUES ('24', '奖励项目', '销售绩效');
INSERT INTO `config_public_char` VALUES ('25', '奖励等级', 'A');
INSERT INTO `config_public_char` VALUES ('26', '奖励等级', 'B');
INSERT INTO `config_public_char` VALUES ('27', '职称', '工程师');
INSERT INTO `config_public_char` VALUES ('28', '职称', '经理');
INSERT INTO `config_public_char` VALUES ('29', '职称', '助理');
INSERT INTO `config_public_char` VALUES ('30', '职称', '教授');
INSERT INTO `config_public_char` VALUES ('31', '职称', '讲师');
INSERT INTO `config_public_char` VALUES ('32', '职称', '技术支持');
INSERT INTO `config_public_char` VALUES ('33', '薪酬设置', '基本工资');
INSERT INTO `config_public_char` VALUES ('34', '薪酬设置', '交通补贴');
INSERT INTO `config_public_char` VALUES ('35', '薪酬设置', '住房补贴');
INSERT INTO `config_public_char` VALUES ('36', '薪酬设置', '出差补助');
INSERT INTO `config_public_char` VALUES ('37', '薪酬设置', '年终奖');
INSERT INTO `config_public_char` VALUES ('38', '薪酬设置', '误餐补助');
INSERT INTO `config_public_char` VALUES ('39', '薪酬设置', '通讯补贴');
INSERT INTO `config_public_char` VALUES ('40', '薪酬设置', '加班补贴');

-- ----------------------------
-- Table structure for `config_question_first_kind`
-- ----------------------------
DROP TABLE IF EXISTS `config_question_first_kind`;
CREATE TABLE `config_question_first_kind` (
  `qfk_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_kind_id` varchar(100) DEFAULT NULL,
  `first_kind_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`qfk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_question_first_kind
-- ----------------------------
INSERT INTO `config_question_first_kind` VALUES ('1', '01', '基础类');
INSERT INTO `config_question_first_kind` VALUES ('2', '02', '技术类');

-- ----------------------------
-- Table structure for `config_question_second_kind`
-- ----------------------------
DROP TABLE IF EXISTS `config_question_second_kind`;
CREATE TABLE `config_question_second_kind` (
  `qsk_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_kind_id` varchar(100) DEFAULT NULL,
  `first_kind_name` varchar(60) DEFAULT NULL,
  `second_kind_id` varchar(100) DEFAULT NULL,
  `second_kind_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`qsk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_question_second_kind
-- ----------------------------
INSERT INTO `config_question_second_kind` VALUES ('1', '01', '基础类', '01', '语言类');
INSERT INTO `config_question_second_kind` VALUES ('2', '01', '基础类', '02', '管理类');
INSERT INTO `config_question_second_kind` VALUES ('3', '02', '技术类', '01', '软件开发类');
INSERT INTO `config_question_second_kind` VALUES ('4', '02', '技术类', '02', '生物制药类');

-- ----------------------------
-- Table structure for `engage_answer`
-- ----------------------------
DROP TABLE IF EXISTS `engage_answer`;
CREATE TABLE `engage_answer` (
  `ans_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_number` varchar(30) DEFAULT NULL,
  `exam_number` varchar(30) DEFAULT NULL,
  `resume_id` int(11) DEFAULT NULL,
  `interview_id` int(11) DEFAULT NULL,
  `human_name` varchar(60) DEFAULT NULL,
  `human_idcard` varchar(30) DEFAULT NULL,
  `major_kind_id` varchar(100) DEFAULT NULL,
  `major_kind_name` char(10) DEFAULT NULL,
  `major_id` char(10) DEFAULT NULL,
  `major_name` char(10) DEFAULT NULL,
  `test_time` datetime DEFAULT NULL,
  `use_time` varchar(20) DEFAULT NULL,
  `total_point` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`ans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage_answer
-- ----------------------------
INSERT INTO `engage_answer` VALUES ('1', 'ewrwe', 'dfds', '345', '453', 'fsdf', 'fsdf', 'dfs', 'sdfds', 'fsdfsdf', 'dsfsd', '2017-05-02 14:19:47', 'fsdf', '345.00');
INSERT INTO `engage_answer` VALUES ('2', 'fsdf', 'fsdf', '4234', '234', '3423', 'dsf', 'dfsf', 'dfsd', '543', 'fdsf', '2017-05-16 16:22:40', 'dfsdf', '53.00');

-- ----------------------------
-- Table structure for `engage_answer_details`
-- ----------------------------
DROP TABLE IF EXISTS `engage_answer_details`;
CREATE TABLE `engage_answer_details` (
  `and_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_number` varchar(30) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `answer` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`and_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage_answer_details
-- ----------------------------
INSERT INTO `engage_answer_details` VALUES ('1', '123515435', '5131153', '的范德萨发生的');
INSERT INTO `engage_answer_details` VALUES ('2', 'dsfs344', '4545', 'fgdfgd');
INSERT INTO `engage_answer_details` VALUES ('3', 'sdd', '3424', 'fdf');
INSERT INTO `engage_answer_details` VALUES ('4', 'sdd', '3424', 'fdf');

-- ----------------------------
-- Table structure for `engage_exam`
-- ----------------------------
DROP TABLE IF EXISTS `engage_exam`;
CREATE TABLE `engage_exam` (
  `exa_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_number` varchar(30) DEFAULT NULL,
  `major_kind_id` varchar(100) DEFAULT NULL,
  `major_kind_name` varchar(60) DEFAULT NULL,
  `major_id` varchar(100) DEFAULT NULL,
  `major_name` varchar(60) DEFAULT NULL,
  `register` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `limite_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`exa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage_exam
-- ----------------------------
INSERT INTO `engage_exam` VALUES ('1', '1', '300101', '管理', '001', '总监', '王二锤', '2017-05-17 11:02:13', '1');
INSERT INTO `engage_exam` VALUES ('3', '2', '300102', '管理', '002', '总监', '王大锤', '2017-05-16 16:17:57', '1');

-- ----------------------------
-- Table structure for `engage_exam_details`
-- ----------------------------
DROP TABLE IF EXISTS `engage_exam_details`;
CREATE TABLE `engage_exam_details` (
  `exd_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_number` varchar(30) DEFAULT NULL,
  `first_kind_id` varchar(100) DEFAULT NULL,
  `first_kind_name` varchar(60) DEFAULT NULL,
  `second_kind_id` varchar(100) DEFAULT NULL,
  `second_kind_name` varchar(60) DEFAULT NULL,
  `question_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`exd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage_exam_details
-- ----------------------------
INSERT INTO `engage_exam_details` VALUES ('1', '1001', '101', '选择,填空', '201', '逻辑思维题', '100');
INSERT INTO `engage_exam_details` VALUES ('3', '1002', '102', '选择,填空', '202', '逻辑思维题', '80');

-- ----------------------------
-- Table structure for `engage_interview`
-- ----------------------------
DROP TABLE IF EXISTS `engage_interview`;
CREATE TABLE `engage_interview` (
  `ein_id` int(11) NOT NULL AUTO_INCREMENT,
  `human_name` varchar(60) DEFAULT NULL,
  `interview_amount` int(11) DEFAULT NULL,
  `human_major_kind_id` varchar(100) DEFAULT NULL,
  `human_major_kind_name` varchar(30) DEFAULT NULL,
  `human_major_id` varchar(100) DEFAULT NULL,
  `human_major_name` varchar(30) DEFAULT NULL,
  `image_degree` varchar(20) DEFAULT NULL,
  `native_language_degree` varchar(20) DEFAULT NULL,
  `foreign_language_degree` varchar(20) DEFAULT NULL,
  `response_speed_degree` varchar(20) DEFAULT NULL,
  `EQ_degree` varchar(20) DEFAULT NULL,
  `IQ_degree` varchar(20) DEFAULT NULL,
  `multi_quality_degree` varchar(20) DEFAULT NULL,
  `register` varchar(60) DEFAULT NULL,
  `checker` varchar(60) DEFAULT NULL,
  `registe_time` datetime DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `resume_id` int(11) DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  `interview_comment` text,
  `check_comment` text,
  `check_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ein_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage_interview
-- ----------------------------
INSERT INTO `engage_interview` VALUES ('36', '成冠', '1', '', 'Java开发', '', 'Java开发工程师', 'A', 'A', 'A', '优秀', '2', '2', 'A', '黎明', '刘明', '2017-06-02 14:14:54', '2017-06-02 14:14:54', '55', null, '通过', ' 通过', '1');
INSERT INTO `engage_interview` VALUES ('37', '林木', '1', '', 'Java开发', '', 'Java开发工程师', '4', '2', '4', '1', '5', '5', '90', '哈哈', '只能', '2017-06-24 00:00:00', '2017-06-01 00:00:00', '54', null, ' 还不错', ' 很好', '1');
INSERT INTO `engage_interview` VALUES ('38', '刘丽', '2', '', 'Java开发', '', 'Java开发工程师', '5', '5', '4', '5', '5', '6', '90', '哈哈', '哈哈', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '60', '  不错', ' 不错', '  不错', '0');

-- ----------------------------
-- Table structure for `engage_major_release`
-- ----------------------------
DROP TABLE IF EXISTS `engage_major_release`;
CREATE TABLE `engage_major_release` (
  `mre_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_kind_id` varchar(100) DEFAULT NULL,
  `first_kind_name` varchar(60) DEFAULT NULL,
  `second_kind_id` varchar(100) DEFAULT NULL,
  `second_kind_name` varchar(60) DEFAULT NULL,
  `third_kind_id` varchar(100) DEFAULT NULL,
  `third_kind_name` varchar(60) DEFAULT NULL,
  `major_kind_id` varchar(100) DEFAULT NULL,
  `major_kind_name` varchar(60) DEFAULT NULL,
  `major_id` varchar(100) DEFAULT NULL,
  `major_name` varchar(60) DEFAULT NULL,
  `human_amount` int(11) DEFAULT NULL,
  `engage_type` varchar(60) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `register` varchar(60) DEFAULT NULL,
  `changer` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  `major_describe` varchar(500) DEFAULT NULL,
  `engage_required` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`mre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage_major_release
-- ----------------------------
INSERT INTO `engage_major_release` VALUES ('15', null, '大型集团', null, '大型公司', null, '大学', null, 'CEO', null, 'java高级工程师', '4', '社会招聘', '2017-05-19 15:44:14', null, '李云鹏', '2017-05-26 19:40:17', null, '啥也没有', '是人就行');
INSERT INTO `engage_major_release` VALUES ('17', null, '大型集团', null, '大型公司', null, '大学', null, 'CEO', null, 'java高级工程师', '9', '社会招聘', '2017-05-02 18:34:11', null, '叶睿', '2017-05-24 18:34:22', null, '啥也没有', '是人就行');
INSERT INTO `engage_major_release` VALUES ('18', null, '大型集团', null, '大型公司', null, '大学', null, 'CEO', null, 'java高级工程师', '9', '社会招聘', '2017-05-26 19:34:01', '王凛', null, '2017-05-15 19:33:57', null, '啥也没有', '是人就行');
INSERT INTO `engage_major_release` VALUES ('21', null, '中型集团', null, '大型公司', null, '大学', null, 'CEO', null, 'java高级工程师', '20', '社会招聘', '2017-05-27 10:32:22', '王凛', null, '2017-05-27 10:32:25', null, '啥也没有', '是人就行');
INSERT INTO `engage_major_release` VALUES ('22', null, '大型集团', null, '大型公司', null, '大学', null, 'CEO', null, 'java高级工程师', '11', '社会招聘', '2017-05-27 11:04:19', null, '', '2017-05-27 11:04:21', null, '啥也没有', '是人就行');
INSERT INTO `engage_major_release` VALUES ('27', '', '集团机构01', '', '集团--公司01', '', '集团--公司--部门01', null, 'CEO', null, 'java工程师', '50', '社会招聘', '2017-05-27 17:20:11', null, '叶睿', '2017-05-27 17:20:13', null, '啥也没有', '阿东王');
INSERT INTO `engage_major_release` VALUES ('29', null, '集团机构01', null, '集团--公司01', null, '集团--公司--部门01', null, 'CEO', null, 'java工程师', '500', '社会招聘', '2017-05-27 17:25:49', null, '叶瑞', '2017-05-27 17:25:50', null, '什么事没什么', '快上课时间');
INSERT INTO `engage_major_release` VALUES ('30', null, '集团机构01', null, '集团--公司01', null, '集团--公司--部门01', null, 'CEO', null, 'java工程师', '200', '社会招聘', '2017-05-27 17:30:18', '叶瑞', null, '2017-05-27 17:30:20', null, '123', '123');
INSERT INTO `engage_major_release` VALUES ('31', null, '开发部', null, 'java开发', null, '产品开发', null, '普通职员', null, 'java工程师', '12', '社会招聘', '2017-06-08 13:48:07', '邓腾飞', null, '2017-06-06 13:48:12', null, '无', '无');

-- ----------------------------
-- Table structure for `engage_resume`
-- ----------------------------
DROP TABLE IF EXISTS `engage_resume`;
CREATE TABLE `engage_resume` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `human_name` varchar(60) DEFAULT NULL,
  `engage_type` varchar(30) DEFAULT NULL,
  `human_address` varchar(200) DEFAULT NULL,
  `human_postcode` varchar(10) DEFAULT NULL,
  `human_major_kind_id` varchar(100) DEFAULT NULL,
  `human_major_kind_name` varchar(60) DEFAULT NULL,
  `human_major_id` varchar(100) DEFAULT NULL,
  `human_major_name` varchar(60) DEFAULT NULL,
  `human_mobilephone` varchar(60) DEFAULT NULL,
  `human_email` varchar(60) DEFAULT NULL,
  `human_sex` varchar(100) DEFAULT NULL,
  `human_party` varchar(60) DEFAULT NULL,
  `human_nationality` varchar(60) DEFAULT NULL,
  `human_race` varchar(60) DEFAULT NULL,
  `human_age` int(11) DEFAULT NULL,
  `human_educated_degree` varchar(60) DEFAULT NULL,
  `human_idcard` varchar(60) DEFAULT NULL,
  `demand_salary_standard` varchar(50) DEFAULT NULL,
  `human_history_records` text,
  `remark` text,
  `recomandation` text,
  `human_picture` varchar(60) DEFAULT NULL,
  `attachment_name` varchar(60) DEFAULT NULL,
  `register` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `checker` varchar(60) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `total_points` float DEFAULT NULL,
  `test_amount` int(11) DEFAULT NULL,
  `test_checker` varchar(60) DEFAULT NULL,
  `test_check_time` datetime DEFAULT NULL,
  `pass_register` varchar(60) DEFAULT NULL,
  `pass_regist_time` datetime DEFAULT NULL,
  `pass_checker` varchar(60) DEFAULT NULL,
  `pass_check_time` datetime DEFAULT NULL,
  `pass_checkComment` varchar(60) DEFAULT NULL,
  `pass_passComment` varchar(60) DEFAULT NULL,
  `check_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage_resume
-- ----------------------------
INSERT INTO `engage_resume` VALUES ('54', '林木', 'Java开发工程师', '广东省珠海市', '335714', null, 'Java开发', null, 'Java开发工程师', '18635856852', '2953658452@qq.com', '男', '群众', '中国', '汉族', '32', '本科', '362656198621658513', '4000', ' 无', ' 无', '无', '/sshs/upload/s2.jpg', null, '廖治恒', '2017-06-07 15:21:50', '廖治恒', '2017-06-07 15:21:50', '80', null, '廖治恒', '2017-06-05 15:22:17', '廖治恒', '2017-06-07 15:21:50', '廖治恒', '2017-06-07 15:21:50', ' 无', ' 无', '0');
INSERT INTO `engage_resume` VALUES ('55', '成冠', 'Java开发工程师', '江西省上饶市', '335641', null, 'Java开发', null, 'Java开发工程师', '13865852658', '18365253516@qq.com', '男', '群众', '中国', '汉族', '26', '本科', '362556198635653212', '5000', '  无', ' 无', '无', '/sshs/upload/s3.jpg', null, '廖治恒', '2017-06-05 15:26:55', '廖治恒', '2017-06-05 15:26:44', '80', null, '廖治恒', '2017-06-05 15:26:48', '廖治恒', '2017-06-05 15:26:52', '廖治恒', '2017-06-05 15:26:35', '  无', '  无', '1');
INSERT INTO `engage_resume` VALUES ('56', '刘宝林', 'Java开发工程师', '广东省珠海市', '335621', null, 'Java开发', null, 'Java开发工程师', '18365256536', '2865356546@qq.com', '男', '群众', '中国', '汉族', '35', '本科', '362356196854233213', '600', ' 无', ' 无', '无', '/sshs/upload/s4.jpg', null, '廖治恒', '2017-06-05 15:45:22', '廖治恒', '2017-06-05 15:45:28', '80', null, '廖治恒', '2017-06-05 15:45:38', '廖治恒', '2017-06-05 15:45:41', '廖治恒', '2017-06-05 15:45:24', ' 无', ' 无', '1');
INSERT INTO `engage_resume` VALUES ('57', '刘里外', 'Java开发工程师', '广东省珠海市', '335621', null, 'Java开发', null, 'Java开发工程师', '18365256536', '2865356546@qq.com', '男', '群众', '中国', '汉族', '35', '本科', '362356196854233213', '600', ' 无', ' 无', '无', '/sshs/upload/s5.jpg', null, '廖治恒', '2017-06-05 15:45:22', '廖治恒', '2017-06-05 15:45:28', '80', null, '廖治恒', '2017-06-05 15:45:38', '廖治恒', '2017-06-05 15:45:41', '廖治恒', '2017-06-05 15:45:24', ' 无', ' 无', '1');
INSERT INTO `engage_resume` VALUES ('60', '刘丽', 'Java开发工程师', '湖南省武汉市', '335652', null, 'Java开发', null, 'Java开发工程师', '18635652145', '28635621546@qq.com', '男', '群众', '中国', '汉族', '32', '本科', '362356196854233213', '600', ' 无', ' 无', '无', '/sshs/upload/s8.jpg', null, '廖治恒', '2017-06-05 15:45:22', '廖治恒', '2017-06-05 15:45:28', '80', null, '廖治恒', '2017-06-05 15:45:38', '廖治恒', '2017-06-05 15:45:41', '廖治恒', '2017-06-05 15:45:24', ' 无', ' 无', '0');

-- ----------------------------
-- Table structure for `engage_subjects`
-- ----------------------------
DROP TABLE IF EXISTS `engage_subjects`;
CREATE TABLE `engage_subjects` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_kind_id` varchar(100) DEFAULT NULL,
  `first_kind_name` varchar(60) DEFAULT NULL,
  `second_kind_id` varchar(100) DEFAULT NULL,
  `second_kind_name` varchar(60) DEFAULT NULL,
  `register` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `derivation` varchar(60) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `key_a` varchar(500) DEFAULT NULL,
  `key_b` varchar(500) DEFAULT NULL,
  `key_c` varchar(500) DEFAULT NULL,
  `key_d` varchar(500) DEFAULT NULL,
  `key_e` varchar(500) DEFAULT NULL,
  `correct_key` varchar(10) DEFAULT NULL,
  `changer` varchar(60) DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage_subjects
-- ----------------------------
INSERT INTO `engage_subjects` VALUES ('2', '0001', 'JAVA', '1223', '模考', '飞哥', '2017-05-16 20:29:05', '网络', '提供java存取数据能力的包是', 'java.sql', 'java.awt', 'java.lang', 'java.swing', 'java.utl', 'A', '鹏哥', '2017-05-16 20:29:05');
INSERT INTO `engage_subjects` VALUES ('18', '0002', 'JAVA', '1003', '模考', '壮哥', '2017-05-16 20:30:31', '网络', '不能用来修饰interface的有', 'private', 'public', 'protected', 'static', 'still', 'C', '鹏哥', '2017-05-16 20:30:31');
INSERT INTO `engage_subjects` VALUES ('21', '111', 'JAVA', '666', 'aa', '壮哥', '2017-05-16 20:30:31', '百度文库', 'JAVA所定义的版本中不包括：', 'java2 EE', 'java2 card', 'java2 me', 'java2 he', 'java2 se', 'C', '鹏飞', '2017-05-16 20:30:31');
INSERT INTO `engage_subjects` VALUES ('23', '002', 'JAVA', '323', 'js', '鹏飞', '2017-05-16 20:30:31', '百度文库', '对象的特征在类中表示为变量，称为类的是', '对象', '属性', '方法', '数据类型', '数据', 'B', '鹏飞', '2017-05-16 20:30:31');
INSERT INTO `engage_subjects` VALUES ('29', null, 'PHP', null, null, null, null, null, '关于PHP代码的开始和结束标签书写正确的是', '<?php     ?> ', '<?php     />', '<php?     ?> ', '<php></php> ', '<php><php> ', 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('30', null, 'PHP', null, null, null, null, null, '下面哪项描述是错误的?', '父类的构造函数与析构函数不会自动被调用', '成员变量需要用public protected private修饰，在定义变量时不再需要var关键字', '父类中定义的静态成员，不可以在子类中直接调用', '包含抽象方法的类必须为抽象类，抽象类不能被实例化', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('31', '', 'PHP', '', '', '', null, '', '关于exit( )与die( )的说法正确的是', '当exit( )函数执行会停止执行下面的脚本，而die()无法做到', '当die()函数执行会停止执行下面的脚本，而exit( )无法做到', 'die()函数等价于exit()函数', 'die()函数与exit()函数没有直接关系', '', 'D', '', null);
INSERT INTO `engage_subjects` VALUES ('32', null, 'JAVA', null, null, null, null, null, 'JAVA所定义的版本中不包括：（  ）', 'JAVA2 EE', 'JAVA2 Card', 'JAVA2 Card', 'JAVA2 HE', ' JAVA2 SE', 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('33', '', 'PHP', '', '', '', null, '', '.PHP中，单引号和双引号所包围的字符串有什么区别？', '单引号速度快，双引号速度慢', '双引号速度快，单引号速度慢', '两者没有速度差别', '双引号解析其中以$开头的变量，而单引号不解析', '', 'A', '', null);
INSERT INTO `engage_subjects` VALUES ('34', null, 'JAVA', null, null, null, null, null, '下列说法正确的是（  ）', ' JAVA程序的main方法必须写在类里面', ' JAVA程序的main方法必须写在类里面', 'JAVA程序中可以有多个main方法', ' JAVA程序中类名必须与文件名一样', ' JAVA程序的main方法中如果只有一条语句，可以不用{}(大括号)括起来', 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('35', '', 'PHP', '', '', '', null, '', '.以下哪种类型是B/S构架的正确描述？', '需要安装客户端的软件', '不需要安装就可以使用的软件', '依托浏览器的网络系统', '依托outlook等软件的邮件系统? ', '', 'D', '', null);
INSERT INTO `engage_subjects` VALUES ('36', null, 'PHP', null, null, null, null, null, '下面哪个不是合法的SQL的归类函数？', 'AVG', 'SUM', '. MIN ', 'MAX', 'CURRENT_DATE() ', 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('37', null, 'JAVA', null, null, null, null, null, ' Java中，在如下所示的Test类中，共有（ ）个构造方法。public class Test{ private int x; public Test(){ x=35; } \npublic void Test(double f){  This.x=(int)f; } \npublic Test(String s){} }', '0', '1', '2', '3', '4', 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('38', null, 'JAVA', null, null, null, null, null, 'public class Test{ private int x; public Test(){ x=35; } \npublic void Test(double f){  This.x=(int)f; } \npublic Test(String s){} }', ' 变量由字母、下划线、数字、$符号随意组成', ' 变量不能以数字作为开头；', ' A和a在java中是同一个变量；', '不同类型的变量，可以起相同的名字；', '不同类型的变量，不可以起相同的名字；', 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('39', null, 'JAVA', null, null, null, null, null, '不同类型的变量，可以起相同的名字；', ' /*我爱北京天安门*/', ' //我爱北京天安门*/ ', ' /**我爱北京天安门*/', ' /*我爱北京天安门**/', ' /*我爱北京天安门', 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('40', null, 'PHP', null, null, null, null, null, '若y , x为int型变量，则执行以下语句后,y的值为(B) x=1; ++x; y = x++; ', '1', '2', '3', '0', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('41', null, 'PHP', null, null, null, null, null, '.PHP是一种什么型的语言：', '编译型', '解释型', '两者都是 ', '两者都不是', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('42', null, 'PHP', null, null, null, null, null, '下列描述正确的是', 'JavaScript是一种编译型语言', 'JavaScript是一种基于对象和事件驱动的编程语言', 'JavaScript中变量声明采用强定义类型', 'JavaScript采用静态联编', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('43', null, 'PHP', null, null, null, null, null, '要想在网页中输出”<”正确的方法是', ' & ', ' <', ' >', '\"', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('44', null, 'PHP', null, null, null, null, null, '.创建一个滚动菜单的HTML代码是？', ' <form></form>', '<select multiple name=”NAME” size=?></select>', '<option>', '<select name=“NAME”></select>', null, 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('45', null, 'PHP', null, null, null, null, null, '以下代码运行结果为：(A) <?php \n$first = “This course is very easy !”; $second = explode(” “,$first); $first = implode(“,”, $second); echo $first; ?> ', ' This,course,is,very,easy,! ', 'This course is very easy !', 'This course is very easy !,', '提示错误', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('46', null, 'PHP', null, null, null, null, null, 'Cookie最大长度是', '1KB ', '.2KB', '3KB ', '4KB ', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('47', null, 'PHP', null, null, null, null, null, '以下修改配置的说法错误的是？', '使用 set_magic_quotes_runtime()函数可以修改页面过期时间。', ' PHP 的配置文件选项存放在php.ini文件中', 'Linux 下修改了php.ini文件需要重启apache服务。', '默认网页过期时间是30秒', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('48', null, 'PHP', null, null, null, null, null, '请看代码，数据库关闭指令将关闭哪个连接标识？( ) <? \n$link1 = mysql_connect(“localhost”,”root”,”\"); $link2 = mysql_connect(“localhost”,”root”,”\"); mysql_close();', '. $link1', '$link2', '全部关闭', '报错', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('49', null, 'PHP', null, null, null, null, null, '.分析表头，使用哪个函数且必须传入$result查询结果变量？', ' mysql_fetch_field()', ' mysql_fetch_row()', 'mysql_fetch_colum()', 'mysql_fetch_variable() ', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('50', null, 'PHP', null, null, null, null, null, '取得搜索语句的结果集中的记录总数的函数是：', ' mysql_fetch_row', 'mysql_rowid', ' mysql_num_rows', 'mysql_fetch_array', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('51', null, 'PHP', null, null, null, null, null, '关于mysql_fetch_object说法中，正确的是：', 'mysql_fetch_object和mysql_fetch_array一样，没什么区别', 'mysql_fetch_object返回值是个对象，所以在速度上比mysql_fetch_array要慢 ', 'mysql_fetch_object返回值是个数组，所以在速度上和mysql_fetch_array及mysql_fetch_row差不多', 'mysql_fetch_object返回值是个对象，在速度上和mysql_fetch_array及mysql_fetch_row差不多', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('52', null, 'PHP', null, null, null, null, null, '下面哪项描述是错误的?( ) ', '父类的构造函数与析构函数不会自动被调用', '成员变量需要用public protected private修饰，在定义变量时不再需要var关键字', '父类中定义的静态成员，不可以在子类中直接调用', '包含抽象方法的类必须为抽象类，抽象类不能被实例化', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('53', null, 'PHP', null, null, null, null, null, '关于exit( )与die( )的说法正确的是', '当exit( )函数执行会停止执行下面的脚本，而die()无法做到', '当die()函数执行会停止执行下面的脚本，而exit( )无法做到', 'die()函数等价于exit()函数', 'die()函数与exit()函数没有直接关系', null, 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('54', null, 'PHP', null, null, null, null, null, '修改MySQL用户root的密码的指令是？', ' mysqladmin -u root password test ', 'ysql -u root password test', ' mysql -u root -p test ', 'mysql -u root -password test ', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('55', null, 'PHP', null, null, null, null, null, '在用浏览器查看网页时出现404错误可能的原因是', '页面源代码错误', '文件不存在', '与数据库连接错误', '权限不足', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('56', null, 'UI', null, null, null, null, null, '下面哪个不是按钮(Button)的状态? ', 'normal', 'highlighted', 'disabled', 'touchInside', null, 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('57', null, 'JAVA', null, null, null, null, null, ' 为一个boolean类型变量赋值时，可以使用(  \n)方式', ' boolean = 1', ' boolean a = (9 >= 10); ', ' boolean a=\"真\";', 'boolean a = = false;', 'boolean a = = TRUE', 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('58', null, 'UI', null, null, null, null, null, '下面哪一个是其中三个类的父类?', '下面哪一个是其中三个类的父类?', 'UILabel', 'UIView', 'UIImageView', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('59', null, 'UI', null, null, null, null, null, '下面哪一个不是确定控件位置的属性?', 'frame ', 'CGRect', 'bounds', 'center', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('60', null, 'JAVA', null, null, null, null, null, ' 以下(  )不是合法的标识符', ' STRING', ' x3x', ' void ', ' de$f', 'BSSA', 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('61', null, 'JAVA', null, null, null, null, null, ' 表达式(11+3*8)/4%3的值是(  )', '31', '0', '1', '2', '3', 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('62', null, 'JAVA', null, null, null, null, null, '运算符优先级别排序正确的是（ ）', ' 由高向低分别是：()、!、算术运算符、关系运算符、逻辑运算符、赋值运算符', ' 由高向低分别是：()、关系运算符、算术运算符、赋值运算符、!、逻辑运算符', '由高向低分别是：()、算术运算符、逻辑运算符、关系运算符、!、赋值运算符', '由高向低分别是：()、!、关系运算符、赋值运算符、算术运算符、逻辑运算符', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('63', null, 'UI', null, null, null, null, null, '在4英寸Retina屏幕的设备上,一个点是一个( )的格子?', '1像素 * 2像素', '1像素 * 1像素 ', '2像素 * 2像素', '2像素 * 1像素', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('64', null, 'JAVA', null, null, null, null, null, '以下程序的运行结果是：(  )  public class Increment{   public static void main(String args[]) {    int a;    a = 6;    System.out.print(a);    System.out.print(a++);    System.out.print(a);', '667', '668', '666', '555', '544', 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('65', null, 'UI', null, null, null, null, null, '所有可以触发操作方法的iOS控件都是（ ）的子类', 'UIView', 'UIControl', 'NSResponder', 'UIResponder', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('66', null, 'UI', null, null, null, null, null, 'UIButton 和 UIImageView 的说法正确的是?', '默认都能显示图片', '默认都能显示图片', ' 默认都能响应事件', ' 以上说法都是正确的', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('67', null, 'UI', null, null, null, null, null, '如果UIScrollView无法滚动，以下原因哪个是不正确的?', '没有取消autolayout功能', '没有接收到触摸事件:userInteractionEnabled = NO', 'scrollEnabled = YES', '没有设置contentSize', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('68', null, 'JAVA', null, null, null, null, null, '下列值不为true的表达式有（  \n）。', '\"john\" = = \"john\"', ' \"john\".equals(\"john\")', ' \"john\" = \"john\"', ' \"john\".equals(new String(\"john\")', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('70', null, 'UI', null, null, null, null, null, '关于懒加载,下列描述错误的是?', '懒加载其实就是 getter 方法', '不调用一个属性的getter, 懒加载就会失效', '调用带下划线的属性可以触发懒加载方法', '懒加载其实就是使用时再加载', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('71', null, 'UI', null, null, null, null, null, '懒加载其实就是使用时再加载', 'FireFox ', 'IE6 ', 'IE67', 'IE68', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('72', null, 'UI', null, null, null, null, null, ' UI一致性原则不包括', '设计目标一致 ', '元素外观一致  ', '交互行为一致', '前后台风格一致', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('73', null, 'UI', null, null, null, null, null, '以下哪个不是横向菜单的特征', '当前菜单必须选中', '菜单如果一行不能显示需要换行显示 \n', '菜单宽度一致', '下拉菜单最多为5级菜单', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('74', null, 'UI', null, null, null, null, null, ' 一般页面的加载时间<3秒这是属于', '环境贴切原则', '即时响应原则', '灵活高效原则', '人性\n化帮助原则', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('75', null, 'JAVA', null, null, null, null, null, '在Java中，负责对字节代码解释执行的是 ', '应用服务器', '虚拟机', '垃圾回收器', ' 垃圾回收器', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('76', null, 'JAVA', null, null, null, null, null, ' 一个栈的输入序列为1 2 3 4 5，则下列序列中不可能是栈得输出序列的是', ' 5 4 1 3 2', '2 3 4 1 5', ' 1 5 4 3 2', '2 3 1 4 5', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('77', null, 'JAVA', null, null, null, null, null, ' LDAP是什么?', '是一种开源产品', '是一种编程语言', '是一种访问协议', '是一种存储数据的目录', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('78', null, 'JAVA', null, null, null, null, null, '要想在你的视图上成功的执行查询需要做什么？', '只能在基础表中有select权限', '在视图中需要有select权限', '. 基础表中必须有数据', '基础表必须在同一个 用户模式中', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('79', null, 'JAVA', null, null, null, null, null, 'Oracle中VARCHAR2类型的最大长度是：', ' 4000', '3000', '1000', '2000', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('80', null, 'UI', null, null, null, null, null, '以下哪些不是javascript的全局函数', ' eval', 'escape', 'setTimeout', ' parseFloat', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('81', null, 'Android', null, null, null, null, null, '下列选项哪个不是Activity启动的方法？', ' goToActivity', ' startActivity', 'startActivityFromChild', ' startActivityForResult ', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('82', null, 'Android', null, null, null, null, null, '解析 xml 的方式有', '字符器类型', '流方式', ' dom', 'SAX', null, 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('83', null, 'Android', null, null, null, null, null, ' 下列哪一个不属于Activity的生命周期方法？', 'onInit', 'onStart( ) ', 'onStop( )', 'onPause( ) ', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('84', null, 'Android', null, null, null, null, null, '对于XML布局文件中的视图控件，layout_width属性的属性值不可以是什么？', 'match_parent', ' fill_parent ', 'wrap_content ', 'match_content', null, 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('85', null, 'Android', null, null, null, null, null, '对一些资源以及状态的操作保存，最好是保存在Activity生命周期的哪个函数中进行？', 'onStart( )', 'onPause( )', 'onCreate( )', 'onResume( ) ', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('86', null, 'Android', null, null, null, null, null, '关于视图控件的常用事件描述中，不正确的是？', 'Click事件只能使用在按钮上，表示按钮的点击动作', '当TextView类视图控件失去焦点或获得焦点时，将触发FocusChange事件', '当单选框中某一选项被选择时，将触发CheckedChange事件', '当多选框中某一选项被选择时，将触发CheckedChange事件', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('87', null, 'Android', null, null, null, null, null, '下列哪一个选项不属于Android中预定义的布局方式？', 'TabLayout', ' RelativeLayout', 'AbsoluteLayout', ' LinearLayout', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('88', null, 'Android', null, null, null, null, null, '下列哪一个选项不属于AdapterView类的子选项？Gallery ListViewSpinnerGridView', ' ListView', 'Spinner ', 'GridView', 'ScrollView', null, 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('89', null, 'Android', null, null, null, null, null, '下列哪一款移动设备搭载的是Android平台？', 'NOKIA手机', '小米手机', ' iPhone手机', ' iPad ', null, 'A', null, null);
INSERT INTO `engage_subjects` VALUES ('90', null, 'Android', null, null, null, null, null, '在android 中使用Menu 时可能需要重写的方法有？', 'onOptionsItemSelected()', 'onCreateOptionsMenu()', 'onItemSelected() ', 'onCreateMenu()', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('91', null, 'Android', null, null, null, null, null, '下列关于内存回收的说明，哪个是正确的？', '程序员必须创建一个线程来释放内存', '内存回收程序允许程序员直接释放内存', '内存回收程序负责释放无用内存', '内存回收程序可以在指定的时间释放内存对象', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('92', null, 'Android', null, null, null, null, null, 'Math.round(11.5)等于多少(). Math.round(-11.5)等于多少？ 选择一项：', '11 ,-11 ', '11 ,-12', '12 ,-11 ', '12 ,-12', null, 'C', null, null);
INSERT INTO `engage_subjects` VALUES ('93', null, 'Android', null, null, null, null, null, '下列程序段：void complicatedexpression_r(){int x=20, y=30;boolean b;b=x>50&&y>60||x>50&&y60||x ', '1', '0', 'true ', 'false', null, 'D', null, null);
INSERT INTO `engage_subjects` VALUES ('94', null, 'Android', null, null, null, null, null, 'Intent传递数据时，下列的哪种类型数据不可以被传递？', 'Serializable ', 'JSON对象', 'Bundle', 'charsequence', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('95', null, 'Android', null, null, null, null, null, '下列哪个是 AbsoluteLayout(绝对布局)中特有的属性', ' android:layout_height ', 'android:layout_x', 'android:layout_above', 'android:layout_toRightOf ', null, 'B', null, null);
INSERT INTO `engage_subjects` VALUES ('101', '', 'JAVA', '', '', '', null, '', '', '', '', '', '', '', '', '', null);

-- ----------------------------
-- Table structure for `hr_member`
-- ----------------------------
DROP TABLE IF EXISTS `hr_member`;
CREATE TABLE `hr_member` (
  `hr_memberid` int(11) NOT NULL AUTO_INCREMENT,
  `hr_membername` varchar(255) NOT NULL DEFAULT 'sunanmin',
  `hr_memberpass` varchar(255) NOT NULL DEFAULT '111',
  `hr_memberqq` varchar(255) NOT NULL DEFAULT '1348397254',
  `hr_memberpic` varchar(255) NOT NULL,
  `hr_memberemail` varchar(255) NOT NULL,
  PRIMARY KEY (`hr_memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_member
-- ----------------------------
INSERT INTO `hr_member` VALUES ('1', '邓腾飞', '000', '377353793', 'img/member_imgs/demo01.jpg', '377353793@qq.com');
INSERT INTO `hr_member` VALUES ('6', '孙安民', '000', '1348397254', 'img/member_imgs/demo02.jpg', '1348397254@qq.com');
INSERT INTO `hr_member` VALUES ('7', '廖治恒', '000', '18370836316', 'img/member_imgs/demo08.jpg', '2940433707@qq.com');
INSERT INTO `hr_member` VALUES ('9', '张恺', '000', '1036825008', 'img/member_imgs/demo05.jpg', '1036825008@qq.com');
INSERT INTO `hr_member` VALUES ('10', '段云冲', '000', '2010781156', 'img/member_imgs/demo06.jpg', '2010781156@qq.com');
INSERT INTO `hr_member` VALUES ('11', '刘诗俊', '000', '1358904116', 'img/member_imgs/demo03.jpg', '1358904116@qq.com');
INSERT INTO `hr_member` VALUES ('12', '叶睿', '000', '1546860508', 'img/member_imgs/demo07.jpg', '1546860508@qq.com');
INSERT INTO `hr_member` VALUES ('13', '刘鹏飞', '000', '1679743832', 'img/member_imgs/demo04.jpg', '1679743832@qq.com');
INSERT INTO `hr_member` VALUES ('14', '李云鹏', '000', '632113263', 'img/member_imgs/demo10.jpg', '632113263@qq.com');
INSERT INTO `hr_member` VALUES ('15', '王凛', '000', '598027512', 'img/member_imgs/demo11.jpg', '598027512@qq.com');
INSERT INTO `hr_member` VALUES ('16', '任壮壮', '000', '770750140', 'img/member_imgs/demo09.jpg', '770750140@qq.com');
INSERT INTO `hr_member` VALUES ('17', '杨敏', '000', '1143967562', 'img/member_imgs/demo09.jpg', '1143967562@qq.com');
INSERT INTO `hr_member` VALUES ('18', '陈坤', '000', '302734999', 'img/member_imgs/demo12.jpg', '302734999@qq.com');

-- ----------------------------
-- Table structure for `human_file`
-- ----------------------------
DROP TABLE IF EXISTS `human_file`;
CREATE TABLE `human_file` (
  `huf_id` int(11) NOT NULL AUTO_INCREMENT,
  `human_id` varchar(30) DEFAULT '1001',
  `first_kind_id` varchar(100) DEFAULT '阿里集团',
  `first_kind_name` varchar(60) DEFAULT NULL,
  `second_kind_id` varchar(100) DEFAULT '阿里集团--赣州分公司',
  `second_kind_name` varchar(60) DEFAULT NULL,
  `third_kind_id` varchar(100) DEFAULT '阿里集团--赣州分公司--技术部门',
  `third_kind_name` varchar(60) DEFAULT NULL,
  `human_name` varchar(60) DEFAULT NULL,
  `human_address` varchar(200) DEFAULT NULL,
  `human_postcode` varchar(10) DEFAULT NULL,
  `human_pro_designation` varchar(60) DEFAULT NULL,
  `human_major_kind_id` varchar(100) DEFAULT '职位分类编号01',
  `human_major_kind_name` varchar(60) DEFAULT NULL,
  `human_major_id` varchar(100) DEFAULT '职位编号01',
  `hunma_major_name` varchar(60) DEFAULT NULL,
  `human_mobilephone` varchar(20) DEFAULT NULL,
  `human_account` varchar(30) DEFAULT NULL,
  `human_email` varchar(50) DEFAULT NULL,
  `human_sex` varchar(100) DEFAULT NULL,
  `human_party` varchar(50) DEFAULT NULL,
  `human_nationality` varchar(50) DEFAULT NULL,
  `human_race` varchar(50) DEFAULT NULL,
  `human_age` int(11) DEFAULT NULL,
  `human_educated_degree` varchar(60) DEFAULT NULL,
  `human_id_card` varchar(20) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `salary_standard_id` varchar(30) DEFAULT '薪酬编号01',
  `salary_standard_name` varchar(60) DEFAULT NULL,
  `salary_sum` double DEFAULT '5000',
  `demand_salaray_sum` double DEFAULT '5000',
  `paid_salary_sum` double DEFAULT '5000',
  `major_change_amount` int(11) DEFAULT '0',
  `bonus_amount` int(11) DEFAULT '0',
  `training_amount` int(11) DEFAULT '0',
  `file_chang_amount` int(11) DEFAULT '0',
  `human_histroy_records` varchar(500) DEFAULT NULL,
  `human_picture` varchar(255) DEFAULT 'human01.jpg',
  `attachment_name` varchar(255) DEFAULT '一寸照片',
  `register` varchar(60) DEFAULT NULL,
  `checker` varchar(60) DEFAULT NULL,
  `changer` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  `lastly_change_time` datetime DEFAULT '2017-06-01 00:00:00',
  `delete_time` datetime DEFAULT NULL,
  `recovery_time` datetime DEFAULT NULL,
  `human_file_status` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`huf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of human_file
-- ----------------------------
INSERT INTO `human_file` VALUES ('204', '007', '1001', '开发部', '1001-01', '前端', '1001-01-01', 'UI设计', '李鑫灏', '海南', '341000', '低级', '3001', '普通职员', '4001', 'php工程师', '18879758569', '6228481771421123640', '1348365197@qq.com', '男', '群众', '中国', '汉族', '23', '本科', '362331199362070000', '    无', '1001', '1001', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (5).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('207', '007', '1001', '开发部', '1001-01', '总监助理', '1001-01-01', '员工管理', '周卓浩', '海口', '341000', '低级', '3001', '普通职员', '4001', 'java工程师', '18879635413', '6228481771421564120', '1348124397@qq.com', '男', '群众', '中国', '汉族', '26', '本科', '362331199608063490', ' 无', '1001', null, '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (10).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-02 14:42:33', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('208', '007', '1001', '开发部', '1001-01', '总监助理', '1001-01-01', '员工管理', '古军童', '大理', '341000', '低级', '3001', '普通职员', '4001', 'java工程师', '18845213681', '6228481771652300000', '1348352397@qq.com', '男', '群众', '中国', '汉族', '26', '本科', '362331199608035416', ' 无', '1001', null, '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (13).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-02 14:43:23', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('209', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '韦品咏', '北京', '341000', '低级', '3001', 'php工程师', '4001', '普通职员', '18879653429', '622848177142122000', '1348236397@qq.com', '男', '群众', '中国', '汉族', '26', '本科', '362331199608076342', ' 无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (14).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-02 14:44:22', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('210', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '贺世方', '天津', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18895364126', '6228481771236440000', '134832397@qq.com', '男', '群众', '中国', '汉族', '18', '本科', '362331199669723000', '       无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (15).jpg', '', '刘明', '李俪', '孙俪', '2017-06-02 14:45:12', '2017-06-05 10:57:39', '2017-06-05 10:57:43', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('211', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '黄准鲜', '张家界', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18876342000', '622848177142108520', '1348397@qq.com', '男', '群众', '中国', '汉族', '26', '本科', '362331199323651230', ' 无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (16).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-02 14:46:15', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('212', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '成河灿', '长沙', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879961000', '6228481771421692000', '1348397@qq.com', '男', '群众', '美国', '汉族', '26', '本科', '362331199608031000', '  无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (17).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-02 14:47:58', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('213', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '吴敬序', '丽江', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879755821', '6228481771421009420', '1348397@qq.com', '男', '群众', '中国', '汉族', '26', '本科', '362331199608070000', ' 无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (18).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('215', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '孙升豫', '上海', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', ' 无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (2).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('216', '007', '1001', '开发部', '1001-01', '集团--公司01', '1001-01-01', '产品开发', '梁棠菏', '北京', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', ' 无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (9).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('217', '007', '1001', '设计部', '1001-01', '前端', '1001-01-01', 'UI设计', '欧 雪', '深圳', '341000', '中级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', ' 无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (11).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-02 14:52:38', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('218', '007', '1001', '人事部', '1001-01', 'java开发', '1001-01-01', '员工管理', '许淑巧', '广州', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', ' 无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (12).jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-02 14:53:11', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('220', '007', '1001', '人事部', '1001-01', '总监助理', '1001-01-01', '员工管理', '张翔诗', '哈尔滨', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '20', '本科', '362331199608070000', '  无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/a1.jpg', '', '刘明', 'sunanmin', '孙俪', '2017-06-02 14:54:21', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('222', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '凌薇利', '兰州', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '专科', '362331199608070000', '   无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/a3.jpg', '', '刘明', '李俪', '孙俪', '2017-06-02 14:55:33', '2017-06-05 10:36:29', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '已审核');
INSERT INTO `human_file` VALUES ('223', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '时帧惠', '大连', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', '  无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/a4.jpg', '', '刘明', '李俪', '孙俪', '2017-06-02 14:56:07', '2017-06-05 10:36:53', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '已审核');
INSERT INTO `human_file` VALUES ('224', '007', '1001', '人事部', '1001-01', '总监助理', '1001-01-01', '员工管理', '郑开倩', '沈阳', '341000', '低级', '3001', 'java初级开发', '4001', '中级管理', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', '  无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/a5.jpg', '', '刘明', '李俪', '孙俪', '2017-06-02 14:56:40', '2017-06-05 10:37:07', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '已审核');
INSERT INTO `human_file` VALUES ('225', '007', '1001', '设计部', '1001-01', '前端', '1001-01-01', 'UI设计', '苏 斓', '石家庄', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', '  无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/a6.jpg', '', '刘明', '李俪', '孙俪', '2017-06-02 14:57:29', '2017-06-05 10:37:29', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '已审核');
INSERT INTO `human_file` VALUES ('226', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '周觅珍', '桂林', '341000', '中级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', '  无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/a7.jpg', '', '刘明', '李俪', '孙俪', '2017-06-02 14:58:12', '2017-06-05 10:37:44', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '已审核');
INSERT INTO `human_file` VALUES ('228', '007', '1001', '设计部', '1001-01', '前端', '1001-01-01', 'UI设计', '刘 萌', '香格里拉', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', '   无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/a9.jpg', '', '刘明', '李俪', '孙俪', '2017-06-02 14:59:49', '2017-06-05 10:38:09', '2017-06-05 10:58:22', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '已审核');
INSERT INTO `human_file` VALUES ('230', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '林帛艺', '深圳', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '女', '群众', '中国', '汉族', '26', '本科', '362331199608070000', '  无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/a10.jpg', '', '刘明', '李俪', '孙俪', '2017-06-02 15:01:43', '2017-06-05 10:38:24', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '已审核');
INSERT INTO `human_file` VALUES ('231', '007', '1001', '人事部', '1001-01', '总监助理', '1001-01-01', '员工管理', '王刚', '厦门', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '男', '群众', '中国', '汉族', '26', '本科', '362331199608070000', '  无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (3).jpg', '', '刘明', '李俪', '孙俪', '2017-06-02 15:12:44', '2017-06-05 10:38:38', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '已审核');
INSERT INTO `human_file` VALUES ('233', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '孙安民', '福建厦门', '341000', '低级', '3001', 'java初级开发', '4001', '普通职员', '18879750000', '6228481771421000000', '1348397@qq.com', '男', '群众', '中国', '汉族', '26', '本科', '362331199608070000', ' 无', '1001', '1w', '5000', '5000', '5000', '0', '0', null, null, '', '/sshs/upload/a6.jpg', '', '刘明', '陈坤', null, '2017-06-01 00:00:00', null, null, null, null, null, '已审核');
INSERT INTO `human_file` VALUES ('234', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '林木', '广东省珠海市', '335714', '低级', '3001', '普通职员', '4001', '项目经理', '18635856852', '6228481771421000000', '2953658452@qq.com', '男', '群众', '中国', '汉族', '32', '本科', '362656198621658513', ' 无', '1001', '1w', '5000', '5000', '5000', '0', '0', '0', '0', '', '/sshs/upload/1 (18).jpg', '', '廖治恒', '廖治恒', 'sunanmin', '2017-06-07 15:21:50', '2017-06-07 15:21:50', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '2017-06-01 00:00:00', '未审核');
INSERT INTO `human_file` VALUES ('235', '007', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '林木', '广东省珠海市', '335714', '低级', '3001', '普通职员', '4001', '项目经理', '18635856852', '6228481771421000000', '2953658452@qq.com', '男', '群众', '中国', '汉族', '32', '本科', '362656198621658513', '  无', '1001', '1w', '5000', '5000', '5000', '0', '0', null, null, '', '/sshs/upload/1 (6).jpg', '', '廖治恒', '廖治恒', null, '2017-06-07 15:21:50', null, null, null, null, null, '已审核');

-- ----------------------------
-- Table structure for `major_change`
-- ----------------------------
DROP TABLE IF EXISTS `major_change`;
CREATE TABLE `major_change` (
  `mch_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_kind_id` varchar(100) DEFAULT NULL,
  `first_kind_name` varchar(60) DEFAULT NULL,
  `second_kind_id` varchar(100) DEFAULT NULL,
  `second_kind_name` varchar(60) DEFAULT NULL,
  `third_kind_id` varchar(100) DEFAULT NULL,
  `third_kind_name` varchar(60) DEFAULT NULL,
  `major_kind_id` varchar(100) DEFAULT NULL,
  `major_kind_name` varchar(60) DEFAULT NULL,
  `major_id` varchar(100) DEFAULT NULL,
  `major_name` varchar(60) DEFAULT NULL,
  `new_first_kind_id` varchar(100) DEFAULT NULL,
  `new_first_kind_name` varchar(60) DEFAULT NULL,
  `new_second_kind_id` varchar(100) DEFAULT NULL,
  `new_second_kind_name` varchar(60) DEFAULT NULL,
  `new_third_kind_id` varchar(100) DEFAULT NULL,
  `new_third_kind_name` varchar(60) DEFAULT NULL,
  `new_major_kind_id` varchar(100) DEFAULT NULL,
  `new_major_kind_name` varchar(60) DEFAULT NULL,
  `new_major_id` varchar(100) DEFAULT NULL,
  `new_major_name` varchar(60) DEFAULT NULL,
  `human_id` varchar(30) DEFAULT NULL,
  `human_name` varchar(60) DEFAULT NULL,
  `salary_standard_id` varchar(30) DEFAULT NULL,
  `salary_standard_name` varchar(60) DEFAULT NULL,
  `salary_sum` double DEFAULT NULL,
  `new_salary_standard_id` varchar(30) DEFAULT NULL,
  `new_salary_standard_name` varchar(60) DEFAULT NULL,
  `new_salary_sum` double DEFAULT NULL,
  `change_reason` varchar(500) DEFAULT NULL,
  `check_reason` varchar(500) DEFAULT NULL,
  `check_status` int(11) DEFAULT NULL,
  `register` varchar(60) DEFAULT NULL,
  `checker` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  PRIMARY KEY (`mch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major_change
-- ----------------------------
INSERT INTO `major_change` VALUES ('15', null, '人事部', null, '总监助理', null, '员工管理', null, 'php工程师', null, '普通职员', null, '开发部', null, '总监助理', null, '员工管理', null, '普通职员', null, 'java工程师', '207', '周卓浩', null, '1w', null, null, null, null, '能力突出', '通过', null, '黎明', '李华', '2017-06-06 13:50:37', '2017-06-06 13:50:41');
INSERT INTO `major_change` VALUES ('16', null, '人事部', null, '前端', null, 'UI设计', null, 'java初级开发', null, '普通职员', null, '开发部', null, '总监助理', null, '员工管理', null, '普通职员', null, 'java工程师', '208', '古军童', null, '1w', null, null, null, null, '能力突出', '同意', null, '黎明', '卢涵', '2017-06-05 10:54:41', '2017-06-05 16:26:25');
INSERT INTO `major_change` VALUES ('24', '1001', '开发部', '1001-01', 'java开发', '1001-01-01', '产品开发', '3001', 'java初级开发', '4001', '普通职员', null, '开发部', null, 'java开发', null, '产品开发', null, '普通职员', null, 'java工程师', '222', '凌薇利', null, '1w', null, null, null, null, '无', null, null, 'lsj', null, '2017-06-06 10:46:41', null);

-- ----------------------------
-- Table structure for `menutree`
-- ----------------------------
DROP TABLE IF EXISTS `menutree`;
CREATE TABLE `menutree` (
  `right_code` int(11) NOT NULL,
  `right_parent_code` int(11) DEFAULT NULL,
  `right_text` varchar(100) DEFAULT NULL,
  `right_url` varchar(50) DEFAULT NULL,
  `right_target` varchar(50) DEFAULT NULL,
  `right_ico` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`right_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menutree
-- ----------------------------
INSERT INTO `menutree` VALUES ('0', '-1', '人力关系管理系统', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('1', '0', '系统管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('2', '0', '档案管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('3', '0', '招聘管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('4', '0', '薪酬管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('5', '0', '调动管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('6', '0', '激励管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('7', '0', '数据报表', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('11', '1', '用户管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('12', '1', '权限管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('13', '1', '日志管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('14', '1', '报表管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('21', '2', '档案查询', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('22', '2', '档案登记', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('23', '2', '档案复核', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('24', '2', '档案查询变更', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('25', '2', '档案删除', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('26', '2', '档案登记', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('31', '3', '职位发布管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('32', '3', '简历管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('33', '3', '题库管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('34', '3', '招考管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('35', '3', '录用管理 ', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('41', '4', '薪酬标准管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('42', '4', '薪酬发放管理', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('51', '5', '调动登记', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('52', '5', '调动审核', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('61', '6', '添加激励', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('62', '6', '查看激励', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('63', '6', '删除激励', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('111', '11', '添加用户', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('112', '11', '查找用户', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('113', '11', '修改用户', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('114', '11', '删除用户', 'tab/tab.jsp', 'I2', 'folderopen.gif');
INSERT INTO `menutree` VALUES ('300', '1', 'url', 'tab/tab.jsp', 'I2', 'folderopen.gif');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `role_desc` varchar(50) DEFAULT NULL,
  `role_flag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('2', 'adminRole', '管理员', '1');
INSERT INTO `role` VALUES ('3', 'adminRole01', 'BOSS', '1');
INSERT INTO `role` VALUES ('4', 'adminRole01', 'BOSS', '1');
INSERT INTO `role` VALUES ('5', 'adminRole02', '财务', '1');
INSERT INTO `role` VALUES ('6', 'adminRole', '管理员', '1');
INSERT INTO `role` VALUES ('7', 'boss', 'boss', '1');
INSERT INTO `role` VALUES ('17', '最强角色', '最强角色', '1');
INSERT INTO `role` VALUES ('18', '最强角色', '最强角色', '1');
INSERT INTO `role` VALUES ('19', '最强角色', '最强角色', '1');
INSERT INTO `role` VALUES ('20', '最强角色', '最强角色', '1');
INSERT INTO `role` VALUES ('21', '最强角色', '最强角色', '1');
INSERT INTO `role` VALUES ('22', '最强角色', '最强角色', '1');
INSERT INTO `role` VALUES ('23', '最强角色2', '最强角色2', '1');
INSERT INTO `role` VALUES ('25', 'zshow1', 'zshow1', '1');
INSERT INTO `role` VALUES ('26', 'zshow2', 'zshow2', '1');
INSERT INTO `role` VALUES ('27', 'zshow', 'zshow', '1');
INSERT INTO `role` VALUES ('28', 'yhao', 'yhao', '1');

-- ----------------------------
-- Table structure for `role_menutree`
-- ----------------------------
DROP TABLE IF EXISTS `role_menutree`;
CREATE TABLE `role_menutree` (
  `rf_menutree` int(11) NOT NULL,
  `rf_role_id` int(11) NOT NULL,
  PRIMARY KEY (`rf_menutree`,`rf_role_id`),
  KEY `FKA86ABD34538F745E` (`rf_menutree`),
  KEY `FKA86ABD341C1CAD6E` (`rf_role_id`),
  CONSTRAINT `FKA86ABD341C1CAD6E` FOREIGN KEY (`rf_role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `role_menutree_ibfk_1` FOREIGN KEY (`rf_menutree`) REFERENCES `menutree` (`right_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menutree
-- ----------------------------
INSERT INTO `role_menutree` VALUES ('0', '26');
INSERT INTO `role_menutree` VALUES ('0', '27');
INSERT INTO `role_menutree` VALUES ('0', '28');
INSERT INTO `role_menutree` VALUES ('1', '26');
INSERT INTO `role_menutree` VALUES ('1', '27');
INSERT INTO `role_menutree` VALUES ('1', '28');
INSERT INTO `role_menutree` VALUES ('2', '26');
INSERT INTO `role_menutree` VALUES ('2', '27');
INSERT INTO `role_menutree` VALUES ('2', '28');
INSERT INTO `role_menutree` VALUES ('3', '26');
INSERT INTO `role_menutree` VALUES ('3', '27');
INSERT INTO `role_menutree` VALUES ('3', '28');
INSERT INTO `role_menutree` VALUES ('4', '26');
INSERT INTO `role_menutree` VALUES ('4', '27');
INSERT INTO `role_menutree` VALUES ('4', '28');
INSERT INTO `role_menutree` VALUES ('5', '26');
INSERT INTO `role_menutree` VALUES ('5', '27');
INSERT INTO `role_menutree` VALUES ('5', '28');
INSERT INTO `role_menutree` VALUES ('6', '26');
INSERT INTO `role_menutree` VALUES ('6', '27');
INSERT INTO `role_menutree` VALUES ('6', '28');
INSERT INTO `role_menutree` VALUES ('7', '26');
INSERT INTO `role_menutree` VALUES ('7', '27');
INSERT INTO `role_menutree` VALUES ('7', '28');
INSERT INTO `role_menutree` VALUES ('11', '26');
INSERT INTO `role_menutree` VALUES ('11', '27');
INSERT INTO `role_menutree` VALUES ('11', '28');
INSERT INTO `role_menutree` VALUES ('12', '26');
INSERT INTO `role_menutree` VALUES ('12', '27');
INSERT INTO `role_menutree` VALUES ('12', '28');
INSERT INTO `role_menutree` VALUES ('13', '26');
INSERT INTO `role_menutree` VALUES ('13', '27');
INSERT INTO `role_menutree` VALUES ('13', '28');
INSERT INTO `role_menutree` VALUES ('14', '26');
INSERT INTO `role_menutree` VALUES ('14', '27');
INSERT INTO `role_menutree` VALUES ('14', '28');
INSERT INTO `role_menutree` VALUES ('21', '26');
INSERT INTO `role_menutree` VALUES ('21', '27');
INSERT INTO `role_menutree` VALUES ('21', '28');
INSERT INTO `role_menutree` VALUES ('22', '26');
INSERT INTO `role_menutree` VALUES ('22', '27');
INSERT INTO `role_menutree` VALUES ('22', '28');
INSERT INTO `role_menutree` VALUES ('23', '26');
INSERT INTO `role_menutree` VALUES ('23', '27');
INSERT INTO `role_menutree` VALUES ('23', '28');
INSERT INTO `role_menutree` VALUES ('24', '26');
INSERT INTO `role_menutree` VALUES ('24', '27');
INSERT INTO `role_menutree` VALUES ('24', '28');
INSERT INTO `role_menutree` VALUES ('25', '26');
INSERT INTO `role_menutree` VALUES ('25', '27');
INSERT INTO `role_menutree` VALUES ('25', '28');
INSERT INTO `role_menutree` VALUES ('26', '26');
INSERT INTO `role_menutree` VALUES ('26', '27');
INSERT INTO `role_menutree` VALUES ('26', '28');
INSERT INTO `role_menutree` VALUES ('31', '26');
INSERT INTO `role_menutree` VALUES ('31', '27');
INSERT INTO `role_menutree` VALUES ('31', '28');
INSERT INTO `role_menutree` VALUES ('32', '26');
INSERT INTO `role_menutree` VALUES ('32', '27');
INSERT INTO `role_menutree` VALUES ('32', '28');
INSERT INTO `role_menutree` VALUES ('33', '26');
INSERT INTO `role_menutree` VALUES ('33', '27');
INSERT INTO `role_menutree` VALUES ('33', '28');
INSERT INTO `role_menutree` VALUES ('34', '26');
INSERT INTO `role_menutree` VALUES ('34', '27');
INSERT INTO `role_menutree` VALUES ('34', '28');
INSERT INTO `role_menutree` VALUES ('35', '26');
INSERT INTO `role_menutree` VALUES ('35', '27');
INSERT INTO `role_menutree` VALUES ('35', '28');
INSERT INTO `role_menutree` VALUES ('41', '26');
INSERT INTO `role_menutree` VALUES ('41', '27');
INSERT INTO `role_menutree` VALUES ('41', '28');
INSERT INTO `role_menutree` VALUES ('42', '26');
INSERT INTO `role_menutree` VALUES ('42', '27');
INSERT INTO `role_menutree` VALUES ('42', '28');
INSERT INTO `role_menutree` VALUES ('51', '26');
INSERT INTO `role_menutree` VALUES ('51', '27');
INSERT INTO `role_menutree` VALUES ('51', '28');
INSERT INTO `role_menutree` VALUES ('52', '26');
INSERT INTO `role_menutree` VALUES ('52', '27');
INSERT INTO `role_menutree` VALUES ('52', '28');
INSERT INTO `role_menutree` VALUES ('61', '26');
INSERT INTO `role_menutree` VALUES ('61', '27');
INSERT INTO `role_menutree` VALUES ('61', '28');
INSERT INTO `role_menutree` VALUES ('62', '26');
INSERT INTO `role_menutree` VALUES ('62', '27');
INSERT INTO `role_menutree` VALUES ('62', '28');
INSERT INTO `role_menutree` VALUES ('63', '26');
INSERT INTO `role_menutree` VALUES ('63', '27');
INSERT INTO `role_menutree` VALUES ('63', '28');
INSERT INTO `role_menutree` VALUES ('111', '26');
INSERT INTO `role_menutree` VALUES ('111', '27');
INSERT INTO `role_menutree` VALUES ('111', '28');
INSERT INTO `role_menutree` VALUES ('112', '26');
INSERT INTO `role_menutree` VALUES ('112', '27');
INSERT INTO `role_menutree` VALUES ('112', '28');
INSERT INTO `role_menutree` VALUES ('113', '26');
INSERT INTO `role_menutree` VALUES ('113', '27');
INSERT INTO `role_menutree` VALUES ('113', '28');
INSERT INTO `role_menutree` VALUES ('114', '26');
INSERT INTO `role_menutree` VALUES ('114', '27');
INSERT INTO `role_menutree` VALUES ('114', '28');
INSERT INTO `role_menutree` VALUES ('300', '26');
INSERT INTO `role_menutree` VALUES ('300', '27');
INSERT INTO `role_menutree` VALUES ('300', '28');

-- ----------------------------
-- Table structure for `role_menutree_copy`
-- ----------------------------
DROP TABLE IF EXISTS `role_menutree_copy`;
CREATE TABLE `role_menutree_copy` (
  `rf_menutree` int(11) NOT NULL,
  `rf_role_id` int(11) NOT NULL,
  PRIMARY KEY (`rf_menutree`,`rf_role_id`),
  KEY `FKA86ABD34538F745E` (`rf_menutree`),
  KEY `FKA86ABD341C1CAD6E` (`rf_role_id`),
  CONSTRAINT `role_menutree_copy_ibfk_1` FOREIGN KEY (`rf_role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `role_menutree_copy_ibfk_2` FOREIGN KEY (`rf_menutree`) REFERENCES `menutree` (`right_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menutree_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `salary_grant`
-- ----------------------------
DROP TABLE IF EXISTS `salary_grant`;
CREATE TABLE `salary_grant` (
  `sgr_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_grant_id` varchar(30) DEFAULT NULL,
  `salary_standard_id` varchar(30) DEFAULT NULL,
  `first_kind_id` varchar(100) DEFAULT NULL,
  `first_kind_name` varchar(60) DEFAULT NULL,
  `second_kind_id` varchar(100) DEFAULT NULL,
  `second_kind_name` varchar(60) DEFAULT NULL,
  `third_kind_id` varchar(100) DEFAULT NULL,
  `third_kind_name` varchar(60) DEFAULT NULL,
  `human_amount` int(11) DEFAULT NULL,
  `salary_standard_sum` double DEFAULT NULL,
  `salary_paid_sum` double DEFAULT NULL,
  `register` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `checker` varchar(60) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `check_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`sgr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salary_grant
-- ----------------------------
INSERT INTO `salary_grant` VALUES ('2', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', 'aaa', '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('3', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', 'ccc', '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('4', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', 'ccc', '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('5', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', '杨敏', '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('6', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('7', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('8', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('9', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('10', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('11', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('12', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('13', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('14', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('15', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('16', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('17', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('18', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('19', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');
INSERT INTO `salary_grant` VALUES ('20', '1001', '1101', '1201', '人事部', '1202', '监察部', '1203', '管理部', '10', '50000', '48000', null, '1970-01-01 08:00:02', '朱总', '1970-01-01 08:00:02', '2');

-- ----------------------------
-- Table structure for `salary_standard`
-- ----------------------------
DROP TABLE IF EXISTS `salary_standard`;
CREATE TABLE `salary_standard` (
  `ssd_id` int(11) NOT NULL AUTO_INCREMENT,
  `standard_id` varchar(30) DEFAULT NULL,
  `standard_name` varchar(60) DEFAULT NULL,
  `designer` varchar(60) DEFAULT NULL,
  `register` varchar(60) DEFAULT NULL,
  `checker` varchar(60) DEFAULT NULL,
  `changer` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  `salary_sum` double DEFAULT NULL,
  `check_status` int(11) DEFAULT NULL,
  `change_status` int(11) DEFAULT NULL,
  `check_comment` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ssd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salary_standard
-- ----------------------------
INSERT INTO `salary_standard` VALUES ('35', '10001', 'Java中级工程师', '李华', '李华', null, null, '2017-06-01 00:00:00', null, null, '500', '3', null, null, '嗯，不错');
INSERT INTO `salary_standard` VALUES ('36', '10002', 'Java中级工程师', '李华', '李华', null, null, '2017-06-01 00:00:00', null, null, '500', '3', null, null, '还可以');
INSERT INTO `salary_standard` VALUES ('37', '10003', 'Java中级工程师', '李华', '李华', null, null, '2017-06-01 00:00:00', null, null, '100', '3', null, null, '不错');
INSERT INTO `salary_standard` VALUES ('39', '10005', 'Java中级工程师', '李斌', '李华', null, null, '2017-06-01 00:00:00', null, null, '1000', '3', null, null, '不错');
INSERT INTO `salary_standard` VALUES ('40', '10006', 'Java中级工程师', '李二', '李三', null, null, '2017-06-01 00:00:00', null, null, '500', '3', null, null, '不错');
INSERT INTO `salary_standard` VALUES ('41', '10007', 'Java中级工程师', '李四', '李斯', null, null, '2017-06-01 00:00:00', null, null, '500', '3', null, null, '还可以');
INSERT INTO `salary_standard` VALUES ('42', '1001', 'Java中级工程师', '李华', '李华', null, null, '2017-06-01 00:00:00', null, null, '0', '3', null, null, '无');

-- ----------------------------
-- Table structure for `salary_standard_details`
-- ----------------------------
DROP TABLE IF EXISTS `salary_standard_details`;
CREATE TABLE `salary_standard_details` (
  `sdt_id` int(11) NOT NULL AUTO_INCREMENT,
  `standard_id` varchar(30) DEFAULT NULL,
  `standard_name` varchar(60) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(60) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`sdt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salary_standard_details
-- ----------------------------
INSERT INTO `salary_standard_details` VALUES ('167', '10001', 'Java中级工程师', '33', '基本工资', '2000');
INSERT INTO `salary_standard_details` VALUES ('168', '10001', 'Java中级工程师', '34', '交通补贴', '200');
INSERT INTO `salary_standard_details` VALUES ('169', '10001', 'Java中级工程师', '35', '住房补贴', '100');
INSERT INTO `salary_standard_details` VALUES ('170', '10001', 'Java中级工程师', '36', '出差补助', '200');
INSERT INTO `salary_standard_details` VALUES ('171', '10001', 'Java中级工程师', '37', '年终奖', '500');
INSERT INTO `salary_standard_details` VALUES ('172', '10001', 'Java中级工程师', '38', '误餐补助', '300');
INSERT INTO `salary_standard_details` VALUES ('173', '10001', 'Java中级工程师', '39', '通讯补贴', '200');
INSERT INTO `salary_standard_details` VALUES ('174', '10001', 'Java中级工程师', '40', '加班补贴', '500');
INSERT INTO `salary_standard_details` VALUES ('175', '10002', 'Java中级工程师', '33', '基本工资', '2500');
INSERT INTO `salary_standard_details` VALUES ('176', '10002', 'Java中级工程师', '34', '交通补贴', '100');
INSERT INTO `salary_standard_details` VALUES ('177', '10002', 'Java中级工程师', '35', '住房补贴', '200');
INSERT INTO `salary_standard_details` VALUES ('178', '10002', 'Java中级工程师', '36', '出差补助', '200');
INSERT INTO `salary_standard_details` VALUES ('179', '10002', 'Java中级工程师', '37', '年终奖', '2000');
INSERT INTO `salary_standard_details` VALUES ('180', '10002', 'Java中级工程师', '38', '误餐补助', '200');
INSERT INTO `salary_standard_details` VALUES ('181', '10002', 'Java中级工程师', '39', '通讯补贴', '100');
INSERT INTO `salary_standard_details` VALUES ('182', '10002', 'Java中级工程师', '40', '加班补贴', '500');
INSERT INTO `salary_standard_details` VALUES ('183', '10003', 'Java中级工程师', '33', '基本工资', '3000');
INSERT INTO `salary_standard_details` VALUES ('184', '10003', 'Java中级工程师', '34', '交通补贴', '200');
INSERT INTO `salary_standard_details` VALUES ('185', '10003', 'Java中级工程师', '35', '住房补贴', '100');
INSERT INTO `salary_standard_details` VALUES ('186', '10003', 'Java中级工程师', '36', '出差补助', '200');
INSERT INTO `salary_standard_details` VALUES ('187', '10003', 'Java中级工程师', '37', '年终奖', '1000');
INSERT INTO `salary_standard_details` VALUES ('188', '10003', 'Java中级工程师', '38', '误餐补助', '100');
INSERT INTO `salary_standard_details` VALUES ('189', '10003', 'Java中级工程师', '39', '通讯补贴', '100');
INSERT INTO `salary_standard_details` VALUES ('190', '10003', 'Java中级工程师', '40', '加班补贴', '100');
INSERT INTO `salary_standard_details` VALUES ('199', '10005', 'Java中级工程师', '33', '基本工资', '2000');
INSERT INTO `salary_standard_details` VALUES ('200', '10005', 'Java中级工程师', '34', '交通补贴', '200');
INSERT INTO `salary_standard_details` VALUES ('201', '10005', 'Java中级工程师', '35', '住房补贴', '300');
INSERT INTO `salary_standard_details` VALUES ('202', '10005', 'Java中级工程师', '36', '出差补助', '100');
INSERT INTO `salary_standard_details` VALUES ('203', '10005', 'Java中级工程师', '37', '年终奖', '200');
INSERT INTO `salary_standard_details` VALUES ('204', '10005', 'Java中级工程师', '38', '误餐补助', '200');
INSERT INTO `salary_standard_details` VALUES ('205', '10005', 'Java中级工程师', '39', '通讯补贴', '100');
INSERT INTO `salary_standard_details` VALUES ('206', '10005', 'Java中级工程师', '40', '加班补贴', '1000');
INSERT INTO `salary_standard_details` VALUES ('207', '10006', 'Java中级工程师', '33', '基本工资', '2000');
INSERT INTO `salary_standard_details` VALUES ('208', '10006', 'Java中级工程师', '34', '交通补贴', '100');
INSERT INTO `salary_standard_details` VALUES ('209', '10006', 'Java中级工程师', '35', '住房补贴', '500');
INSERT INTO `salary_standard_details` VALUES ('210', '10006', 'Java中级工程师', '36', '出差补助', '200');
INSERT INTO `salary_standard_details` VALUES ('211', '10006', 'Java中级工程师', '37', '年终奖', '1000');
INSERT INTO `salary_standard_details` VALUES ('212', '10006', 'Java中级工程师', '38', '误餐补助', '200');
INSERT INTO `salary_standard_details` VALUES ('213', '10006', 'Java中级工程师', '39', '通讯补贴', '100');
INSERT INTO `salary_standard_details` VALUES ('214', '10006', 'Java中级工程师', '40', '加班补贴', '500');
INSERT INTO `salary_standard_details` VALUES ('215', '10007', 'Java中级工程师', '33', '基本工资', '2000');
INSERT INTO `salary_standard_details` VALUES ('216', '10007', 'Java中级工程师', '34', '交通补贴', '200');
INSERT INTO `salary_standard_details` VALUES ('217', '10007', 'Java中级工程师', '35', '住房补贴', '1000');
INSERT INTO `salary_standard_details` VALUES ('218', '10007', 'Java中级工程师', '36', '出差补助', '200');
INSERT INTO `salary_standard_details` VALUES ('219', '10007', 'Java中级工程师', '37', '年终奖', '200');
INSERT INTO `salary_standard_details` VALUES ('220', '10007', 'Java中级工程师', '38', '误餐补助', '200');
INSERT INTO `salary_standard_details` VALUES ('221', '10007', 'Java中级工程师', '39', '通讯补贴', '200');
INSERT INTO `salary_standard_details` VALUES ('222', '10007', 'Java中级工程师', '40', '加班补贴', '500');
INSERT INTO `salary_standard_details` VALUES ('223', '1001', 'Java中级工程师', '33', '基本工资', '800');
INSERT INTO `salary_standard_details` VALUES ('224', '1001', 'Java中级工程师', '34', '交通补贴', '582');
INSERT INTO `salary_standard_details` VALUES ('225', '1001', 'Java中级工程师', '35', '住房补贴', '800');
INSERT INTO `salary_standard_details` VALUES ('226', '1001', 'Java中级工程师', '36', '出差补助', '800');
INSERT INTO `salary_standard_details` VALUES ('227', '1001', 'Java中级工程师', '37', '年终奖', '800');
INSERT INTO `salary_standard_details` VALUES ('228', '1001', 'Java中级工程师', '38', '误餐补助', '0');
INSERT INTO `salary_standard_details` VALUES ('229', '1001', 'Java中级工程师', '39', '通讯补贴', '0');
INSERT INTO `salary_standard_details` VALUES ('230', '1001', 'Java中级工程师', '40', '加班补贴', '0');

-- ----------------------------
-- Table structure for `training`
-- ----------------------------
DROP TABLE IF EXISTS `training`;
CREATE TABLE `training` (
  `tra_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_kind_id` varchar(100) DEFAULT NULL,
  `major_kind_name` varchar(60) DEFAULT NULL,
  `major_id` varchar(100) DEFAULT NULL,
  `major_name` varchar(60) DEFAULT NULL,
  `human_id` varchar(30) DEFAULT NULL,
  `human_name` varchar(60) DEFAULT NULL,
  `training_item` varchar(60) DEFAULT NULL,
  `training_time` datetime DEFAULT NULL,
  `training_hour` int(11) DEFAULT NULL,
  `training_degree` varchar(60) DEFAULT NULL,
  `register` varchar(60) DEFAULT NULL,
  `checker` varchar(60) DEFAULT NULL,
  `regist_time` datetime DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `checkstatus` int(11) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`tra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of training
-- ----------------------------
INSERT INTO `training` VALUES ('10', '1001', 'java工程师', '201701', '高级java工程师', '201701019', '任壮壮', '岗前实训', '2017-05-19 15:44:18', '64', '100', '邓腾飞', '邓腾飞', '2017-05-19 15:44:18', '2017-05-25 14:06:18', '1', 'prefect');
INSERT INTO `training` VALUES ('11', '1001', 'java工程师', '201701', '高级java工程师', '2017010110', '段云冲', '岗前实训', '2017-05-19 15:44:18', '64', '100', '孙安民', '孙安民', '2017-05-19 15:44:18', '2017-05-19 15:44:18', '1', 'prefect');
INSERT INTO `training` VALUES ('12', '1001', 'java工程师', '201701', '高级java工程师', '2017010111', '李云鹏', '岗前实训', '2017-05-19 15:44:18', '64', '100', '任壮壮', '任壮壮', '2017-05-19 15:44:18', '2017-05-19 15:44:18', '1', 'prefect');
INSERT INTO `training` VALUES ('13', '1001', 'php工程师', '201701', '中级java工程师', '20170102', '叶睿', '岗前实训', '2017-05-25 14:58:21', '50', '90', '柏文飞', '柏文飞', '2017-05-25 14:58:50', '2017-05-25 14:58:52', '1', 'remark');
INSERT INTO `training` VALUES ('14', '1002', 'java工程师', '201702', '中级java工程师', '20170102', '柏文飞', '岗前实训', '2017-05-25 14:59:41', '50', '90', '邓腾飞', '段云冲', '2017-05-25 15:00:22', '2017-05-25 15:00:25', '1', 'remark');
INSERT INTO `training` VALUES ('15', '1002', 'php工程师', '2017102', '初级php工程师', '2017201', '刘鹏飞', 'php', '2017-05-25 15:13:04', '30', '90', '柏文飞', '段云冲', '2017-05-25 15:13:16', '2017-05-25 15:13:18', '1', 'remark');
INSERT INTO `training` VALUES ('16', '1001', 'php工程师', '2017201', '初级python工程师', '2017201', '刘诗俊', 'python', '2017-05-25 15:12:15', '30', '95', '段云冲', '段云冲', '2017-05-25 15:12:34', '2017-05-25 15:12:36', '1', '');
INSERT INTO `training` VALUES ('17', '1001', 'java工程师', '2017101', '初级java工程师', '2017101', '张恺', 'java', '2017-05-25 15:17:25', '20', '95', '邓腾飞', '段云冲', '2017-05-25 15:17:48', '2017-05-25 15:17:50', '2', 'remark');
INSERT INTO `training` VALUES ('18', '1002', 'php工程师', '2017102', '中级java工程师', '2017102', '杨敏', 'java', '2017-05-25 15:15:26', '50', '80', '段云冲', '段云冲', '2017-05-25 15:15:41', '2017-05-25 15:15:43', '1', 'remark');
INSERT INTO `training` VALUES ('19', '1003', 'C语言工程师', '2017403', '高级C语言工程师', '2017402', '王凛', 'C', '2017-05-25 15:16:42', '50', '90', '孙安民', '孙安民', '2017-05-25 15:16:55', '2017-05-25 15:16:56', '2', 'remark');
INSERT INTO `training` VALUES ('20', '1005', 'php工程师', '2017303', '高级php工程师', '2017303', '陈豆', 'php', '2017-05-25 15:18:43', '50', '100', '段云冲', '孙安民', '2017-05-25 15:19:12', '2017-05-25 15:19:14', '1', 'remark');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123123', 'xm', '12580', '2014-08-19', '2014-08-19');
INSERT INTO `user` VALUES ('15', '张恺', '123123', '江西理工大学黄金校区', '18370837425', '2017-05-16', '2017-05-16');
INSERT INTO `user` VALUES ('28', '陈翅俊', '123123', '江西', '153456236954', '2017-05-26', null);
INSERT INTO `user` VALUES ('29', '段云冲', '123456', '江西省上饶市', '18879753237', '2017-06-02', null);

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '用户名',
  `user_password` varchar(100) DEFAULT NULL,
  `user_flag` varchar(100) NOT NULL DEFAULT '1',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `usr_role_id` (`role_id`),
  CONSTRAINT `userinfo_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('2', 'admin', '77778888', '1', '26');
INSERT INTO `userinfo` VALUES ('3', 'admin', '123123', '1', '27');
INSERT INTO `userinfo` VALUES ('4', 'boss', '123123', '1', '28');
INSERT INTO `userinfo` VALUES ('6', '张恺', '123123', '1', '7');
INSERT INTO `userinfo` VALUES ('7', '腾飞1号', '123123', '1', '6');
INSERT INTO `userinfo` VALUES ('8', '腾飞2号', '123123', '1', '6');
INSERT INTO `userinfo` VALUES ('17', '腾飞2号', '123123', '1', '6');
INSERT INTO `userinfo` VALUES ('18', '腾飞3号', '123123', '1', '6');
