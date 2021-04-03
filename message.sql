/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : message

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 01/04/2021 21:06:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for front_city
-- ----------------------------
DROP TABLE IF EXISTS `front_city`;
CREATE TABLE `front_city`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ask_num` bigint(20) NULL DEFAULT NULL COMMENT '总留言',
  `response_num` bigint(20) NULL DEFAULT NULL COMMENT '总回复',
  `is_delete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of front_city
-- ----------------------------
INSERT INTO `front_city` VALUES (1, '北京市', 7, 2, 'false');
INSERT INTO `front_city` VALUES (2, '东城区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (3, '西城区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (4, '朝阳区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (5, '海淀区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (6, '丰台区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (7, '石景山区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (8, '门头沟区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (9, '房山区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (10, '通州区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (11, '顺义区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (12, '昌平区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (13, '大兴区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (14, '怀柔区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (15, '密云区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (16, '延庆区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (17, '平谷区', 0, 0, 'false');
INSERT INTO `front_city` VALUES (18, '北京经济开发区', 0, 0, 'false');

-- ----------------------------
-- Table structure for front_leader_name
-- ----------------------------
DROP TABLE IF EXISTS `front_leader_name`;
CREATE TABLE `front_leader_name`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city_id` bigint(20) NULL DEFAULT NULL,
  `leader_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '领导姓名',
  `is_mayor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否是书记',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'email',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `is_delete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of front_leader_name
-- ----------------------------
INSERT INTO `front_leader_name` VALUES (44, 1, '陈吉宁', 'truetrue', 'chengjining@qq.com', 'f92411dfc34b3ec6e5c31e5c13ee5332', '0', '15922228811', 'false');
INSERT INTO `front_leader_name` VALUES (45, 1, '蔡奇', 'false', 'caiqi@qq.com', '46c0cacf44070164081486b0006032aa', '0', '15922228821', 'false');
INSERT INTO `front_leader_name` VALUES (46, 2, '夏林茂', 'false', 'xialinmao@qq.com', '28f0ecbcf9e272d3122b3fe5f70ef8b9', '0', '15922228831', 'false');
INSERT INTO `front_leader_name` VALUES (47, 2, '金晖', 'true', 'jinhui@qq.com', '626e2ee5997dc26045f4625310a7e19b', '0', '15922228841', 'false');
INSERT INTO `front_leader_name` VALUES (48, 3, '孙军民', 'false', 'suijunmin@qq.com', '422e3163f0348b2ff96e12c3b90169bc', '0', '15922228851', 'false');
INSERT INTO `front_leader_name` VALUES (49, 3, '孙硕', 'true', 'suishuo@qq.com', 'dd20056a326f49c65956fbae84adc7cc', '0', '15922228861', 'false');
INSERT INTO `front_leader_name` VALUES (50, 4, '王灏', 'false', 'wanghao@qq.com', '44c683b864c8f212bab3a1b7ed039c11', '0', '15922228871', 'false');
INSERT INTO `front_leader_name` VALUES (51, 4, '文献', 'true', 'wenxian@qq.com', 'b22a2fcee235d67462b7a250ef02c15b', '0', '15922228881', 'false');
INSERT INTO `front_leader_name` VALUES (52, 5, '于军', 'false', 'yujun@qq.com', '170ffc0f6cc263fb014af4b003e0862f', '0', '15922228891', 'false');
INSERT INTO `front_leader_name` VALUES (53, 5, '王合生', 'true', 'wanghesheng@qq.com', 'd6ae9660652c8d843d2b5061b0b9b529', '0', '15922228820', 'false');
INSERT INTO `front_leader_name` VALUES (54, 6, '徐贱云', 'false', 'xujianyun@qq.com', '4a17651626d9c03d8c0b50acfe9b5e70', '0', '15922228821', 'false');
INSERT INTO `front_leader_name` VALUES (55, 6, '初军威', 'true', 'chujunwei@qq.com', '4ae45e700ea8e3179f12d0ff2d943ff3', '0', '15922228822', 'false');
INSERT INTO `front_leader_name` VALUES (56, 7, '常卫', 'false', 'changwei@qq.com', '0774a9bdfa861eb0a66b7aedd9d380ca', '0', '15922228823', 'false');
INSERT INTO `front_leader_name` VALUES (57, 7, '李新', 'true', 'lixin@qq.com', '3175ddaf555e32a67bf1a1dc7c14cfdc', '0', '15922228824', 'false');
INSERT INTO `front_leader_name` VALUES (58, 8, '张力兵', 'false', 'zhanglibing@qq.com', 'b5f6f6821d40b0d77438d2832e879420', '0', '15922228825', 'false');
INSERT INTO `front_leader_name` VALUES (59, 8, '喻华锋', 'true', 'yuhuafeng@qq.com', 'f826684465f0006bacdbc15563f6a4bf', '0', '15922228826', 'false');
INSERT INTO `front_leader_name` VALUES (60, 9, '陈清', 'false', 'chenqing@qq.com', '6bea743f9e1cfa64e40febc6dca45214', '0', '15922228827', 'false');
INSERT INTO `front_leader_name` VALUES (61, 9, '郭延红', 'true', 'guotinghong@qq.com', '12b5352123082bd1344a32b469ae14cd', '0', '15922228828', 'false');
INSERT INTO `front_leader_name` VALUES (62, 10, '曾赞荣', 'false', 'zengzanrong@qq.com', '2f76368d895b566b33adab4256e116b0', '0', '15922228829', 'false');
INSERT INTO `front_leader_name` VALUES (63, 10, '赵磊', 'true', 'zhaolei@qq.com', 'bba45cbff34bf934c1679d70cb292d69', '0', '15922228830', 'false');
INSERT INTO `front_leader_name` VALUES (64, 11, '高朋', 'false', 'gaopeng@qq.com', '3219574b3480d8fa12f9a3f616ebb427', '0', '15922228831', 'false');
INSERT INTO `front_leader_name` VALUES (65, 11, '龚宗元', 'true', 'qiuzongyuan@qq.com', '0dcadd46b6c4737a82357cb66cb3256c', '0', '15922228832', 'false');
INSERT INTO `front_leader_name` VALUES (66, 12, '于长辉', 'false', 'yuchanghui@qq.com', '65f433d2b73e3a3d117cf592cad2f355', '0', '15922228833', 'false');
INSERT INTO `front_leader_name` VALUES (67, 12, '甘靖中', 'true', 'ganjingzhong@qq.com', 'ac0a5d1f442a826dbfa43224f4fa7e84', '0', '15922228834', 'false');
INSERT INTO `front_leader_name` VALUES (68, 13, '周立云', 'false', 'zhouliyun@qq.com', 'e95e60860cfd34dd0bea7b5e888bdbe3', '0', '15922228835', 'false');
INSERT INTO `front_leader_name` VALUES (69, 13, '王有国', 'true', 'wangyouguo@qq.com', '52fb439b009ad7ee0b73e4c83e3c3b5c', '0', '15922228836', 'false');
INSERT INTO `front_leader_name` VALUES (70, 14, '戴彬彬', 'false', 'daibinbin@qq.com', '8241fb81e90108a21967fb296b61a3d2', '0', '15922228837', 'false');
INSERT INTO `front_leader_name` VALUES (71, 14, '于庆丰', 'true', 'yuqingfeng@qq.com', 'bc63243c521832e557a82e988c84bdeb', '0', '15922228838', 'false');
INSERT INTO `front_leader_name` VALUES (72, 17, '王成国', 'false', 'wangchengguo@qq.com', 'f54535a64d03279e3ab341b3c7434885', '0', '15922228839', 'false');
INSERT INTO `front_leader_name` VALUES (73, 17, '吴小杰', 'true', 'wuxiaojie@qq.com', '8649257e418599c1c9c593cd0facf6f9', '0', '15922228840', 'false');
INSERT INTO `front_leader_name` VALUES (74, 15, '潘临珠', 'false', 'panlinzhu@qq.com', 'eb33ed0c6860fd0d1db915126d52c331', '0', '15922228841', 'false');
INSERT INTO `front_leader_name` VALUES (75, 15, '马新明', 'true', 'maxinming@qq.com', 'ad7eb8069031fdce5df36b8f1aea7b29', '0', '15922228842', 'false');
INSERT INTO `front_leader_name` VALUES (76, 16, '穆鹏', 'false', 'mupeng@qq.com', '2e5c244c80a2f5fdf901bb5233b52fb6', '0', '15922228843', 'false');
INSERT INTO `front_leader_name` VALUES (77, 16, '于波', 'true', 'yubo@qq.com', '639f3778b3ee94b49ec84f7292f21467', '0', '15922228845', 'false');
INSERT INTO `front_leader_name` VALUES (78, 18, '王少峰', 'false', 'wangshaofeng@qq.com', '36e1253ed0166f61a970fd241873323d', '0', '15922228846', 'false');
INSERT INTO `front_leader_name` VALUES (79, 18, '梁胜', 'true', 'liangsheng@qq.com', '2544625d8ba59df119e660a13a43c42d', '0', '15922228847', 'false');

-- ----------------------------
-- Table structure for front_left_message
-- ----------------------------
DROP TABLE IF EXISTS `front_left_message`;
CREATE TABLE `front_left_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `leader_id` bigint(20) NULL DEFAULT NULL COMMENT '领导id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类 1-咨询；5-建言；2-投诉；6-求助；9-感谢',
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '领域',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `passage` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '正文',
  `ask_passage` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '诉求',
  `extra_passage` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '补充信息',
  `is_process` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否处理 true-已经处理 false-待处理',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '留言时间',
  `response_passage` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of front_left_message
-- ----------------------------
INSERT INTO `front_left_message` VALUES (17, 45, 12, '1', '医疗', '疫苗接种', '我在顺义空港融慧园工作，由于今年一直在备孕阶段不适合打疫苗，2021年3月26日上午接到园区通知：要求不打疫苗要出具三甲医院开具的疾病证明，否则不能进入园区，2021年3月26日下午给顺义中医院打电话咨询，得到回复备孕无法开具疾病证明，想咨询目前不开证明就必须打吗?', NULL, NULL, 'true', '2021-03-27 19:53:21', '回复');
INSERT INTO `front_left_message` VALUES (19, 45, 12, '5', '教育', '永外西教育均衡', '首先感谢政府感谢领导，作为东城教育洼地的天永学区不断传来好消息，文汇南和汇文南，作为这个片区的家长十分振奋，不胜感激。但是作为天永洼地中洼地的永外西，在这次重大利好之中还是觉得有被刻意的忽略和遗忘，且说说汇文南学校，为什么家长帮大V和众多家长明确说要留给一师附小100%直升和给龙体片区调剂，永外三里，革新里宝华里定安里的未来何在，特别是革新里小学，永外西唯一一渣小，今年毕业班京籍只有60多个孩子，我十分担心长此以往如此态势发展下去，永外西革新里小学可能都找不到小孩上学，希望政府可以给革新里渣小一些优质的中学名额吧，挽救一下永外三里特别是革新里的口碑，作为家长我们十分重视孩子的学习，不希望以后被迫为了孩子换房。', NULL, NULL, 'false', '2021-03-29 22:24:12', NULL);
INSERT INTO `front_left_message` VALUES (20, 45, 12, '6', '城建', '居民楼多年不接入光纤，物业接线高收费 ', '崇文门宝鼎中心长年没有光纤接入，严重影响楼里的长期居住的住户。物业开发商不作为，大家不知道应该找谁，网络只能接入联通，物业还高收费本应免费安装接入的网络。希望政府能出面帮助解决光纤的问题，使楼里居民在5g时代不再使用十多年前的网络，同时规范物业的收费。', NULL, NULL, 'false', '2021-03-29 22:38:28', NULL);
INSERT INTO `front_left_message` VALUES (21, 45, 12, '9', '就业', '百途新媒体技术(北京)有限公司拖欠工资感谢', '尊敬的领导：您好！本人于2020年3月31号从百途新媒体技术(北京)有限公司辞职，共税后工资10036元未结清，签署离职合同协议一份，协议中公司承诺6个月之内一次性结清工资，但我的工资从此一直没有音讯，到目前为止公司人事及财务等相关人员联系不上，按照劳动法规定离职时应一次性结清工资，但考虑到疫情原因当时公司确实困难，本人也做出了让步6月之内结清，但离职后却一直没有结果，万般无奈讨薪无门，向相关领导请求协助帮忙追回拖欠的工资，维护本人的合法权益，谢谢！', NULL, NULL, 'false', '2021-03-29 22:40:46', NULL);
INSERT INTO `front_left_message` VALUES (22, 45, 12, '2', '环境', '北清路王府医院到名流花园路段：脏秃乱', '', '1.绿化带很多秃了，土都飞起来了\r\n2.卫生差，绿化带内，人行道，垃圾桶旁边等等随处可见垃圾\r\n3.人形道坑洼不平\r\n\r\n', '我两年前已经留言过，但是没有改变，之前回复此路段属于北七家镇权，如果北七家镇解决困难，希望更上级部门给予支持，比如区级甚至市级，多谢', 'true', '2021-03-29 23:06:14', '测试回复');

-- ----------------------------
-- Table structure for front_user_message
-- ----------------------------
DROP TABLE IF EXISTS `front_user_message`;
CREATE TABLE `front_user_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言电话',
  `extra_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言备注',
  `true_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of front_user_message
-- ----------------------------
INSERT INTO `front_user_message` VALUES (12, 'HL', '15922228853', '2423571560@qq.com', 'f0d5f33c3271df464f3f31bc6db964e7', 'f0d5f33c3271df464f3f31bc6db964e7', 'false', '15922228853', '测试留言', '贺博轩');

-- ----------------------------
-- Table structure for pe_user
-- ----------------------------
DROP TABLE IF EXISTS `pe_user`;
CREATE TABLE `pe_user`  (
  `user_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不能重复,可为中文',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'shiro MD5密码32位',
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '1启用0停用',
  `degree` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pe_user
-- ----------------------------
INSERT INTO `pe_user` VALUES ('44', 'chengjining@qq.com', '陈吉宁', 'f92411dfc34b3ec6e5c31e5c13ee5332', 1, 1);
INSERT INTO `pe_user` VALUES ('45', 'caiqi@qq.com', '蔡奇', '46c0cacf44070164081486b0006032aa', 1, 1);
INSERT INTO `pe_user` VALUES ('46', 'xialinmao@qq.com', '夏林茂', '28f0ecbcf9e272d3122b3fe5f70ef8b9', 1, 1);
INSERT INTO `pe_user` VALUES ('47', 'jinhui@qq.com', '金晖', '626e2ee5997dc26045f4625310a7e19b', 1, 1);
INSERT INTO `pe_user` VALUES ('48', 'suijunmin@qq.com', '孙军民', '422e3163f0348b2ff96e12c3b90169bc', 1, 1);
INSERT INTO `pe_user` VALUES ('49', 'suishuo@qq.com', '孙硕', 'dd20056a326f49c65956fbae84adc7cc', 1, 1);
INSERT INTO `pe_user` VALUES ('50', 'wanghao@qq.com', '王灏', '44c683b864c8f212bab3a1b7ed039c11', 1, 1);
INSERT INTO `pe_user` VALUES ('51', 'wenxian@qq.com', '文献', 'b22a2fcee235d67462b7a250ef02c15b', 1, 1);
INSERT INTO `pe_user` VALUES ('52', 'yujun@qq.com', '于军', '170ffc0f6cc263fb014af4b003e0862f', 1, 1);
INSERT INTO `pe_user` VALUES ('53', 'wanghesheng@qq.com', '王合生', 'd6ae9660652c8d843d2b5061b0b9b529', 1, 1);
INSERT INTO `pe_user` VALUES ('54', 'xujianyun@qq.com', '徐贱云', '4a17651626d9c03d8c0b50acfe9b5e70', 1, 1);
INSERT INTO `pe_user` VALUES ('55', 'chujunwei@qq.com', '初军威', '4ae45e700ea8e3179f12d0ff2d943ff3', 1, 1);
INSERT INTO `pe_user` VALUES ('56', 'changwei@qq.com', '常卫', '0774a9bdfa861eb0a66b7aedd9d380ca', 1, 1);
INSERT INTO `pe_user` VALUES ('57', 'lixin@qq.com', '李新', '3175ddaf555e32a67bf1a1dc7c14cfdc', 1, 1);
INSERT INTO `pe_user` VALUES ('58', 'zhanglibing@qq.com', '张力兵', 'b5f6f6821d40b0d77438d2832e879420', 1, 1);
INSERT INTO `pe_user` VALUES ('59', 'yuhuafeng@qq.com', '喻华锋', 'f826684465f0006bacdbc15563f6a4bf', 1, 1);
INSERT INTO `pe_user` VALUES ('60', 'chenqing@qq.com', '陈清', '6bea743f9e1cfa64e40febc6dca45214', 1, 1);
INSERT INTO `pe_user` VALUES ('61', 'guotinghong@qq.com', '郭延红', '12b5352123082bd1344a32b469ae14cd', 1, 1);
INSERT INTO `pe_user` VALUES ('62', 'zengzanrong@qq.com', '曾赞荣', '2f76368d895b566b33adab4256e116b0', 1, 1);
INSERT INTO `pe_user` VALUES ('63', 'zhaolei@qq.com', '赵磊', 'bba45cbff34bf934c1679d70cb292d69', 1, 1);
INSERT INTO `pe_user` VALUES ('64', 'gaopeng@qq.com', '高朋', '3219574b3480d8fa12f9a3f616ebb427', 1, 1);
INSERT INTO `pe_user` VALUES ('65', 'qiuzongyuan@qq.com', '龚宗元', '0dcadd46b6c4737a82357cb66cb3256c', 1, 1);
INSERT INTO `pe_user` VALUES ('66', 'yuchanghui@qq.com', '于长辉', '65f433d2b73e3a3d117cf592cad2f355', 1, 1);
INSERT INTO `pe_user` VALUES ('67', 'ganjingzhong@qq.com', '甘靖中', 'ac0a5d1f442a826dbfa43224f4fa7e84', 1, 1);
INSERT INTO `pe_user` VALUES ('68', 'zhouliyun@qq.com', '周立云', 'e95e60860cfd34dd0bea7b5e888bdbe3', 1, 1);
INSERT INTO `pe_user` VALUES ('69', 'wangyouguo@qq.com', '王有国', '52fb439b009ad7ee0b73e4c83e3c3b5c', 1, 1);
INSERT INTO `pe_user` VALUES ('70', 'daibinbin@qq.com', '戴彬彬', '8241fb81e90108a21967fb296b61a3d2', 1, 1);
INSERT INTO `pe_user` VALUES ('71', 'yuqingfeng@qq.com', '于庆丰', 'bc63243c521832e557a82e988c84bdeb', 1, 1);
INSERT INTO `pe_user` VALUES ('72', 'wangchengguo@qq.com', '王成国', 'f54535a64d03279e3ab341b3c7434885', 1, 1);
INSERT INTO `pe_user` VALUES ('73', 'wuxiaojie@qq.com', '吴小杰', '8649257e418599c1c9c593cd0facf6f9', 1, 1);
INSERT INTO `pe_user` VALUES ('74', 'panlinzhu@qq.com', '潘临珠', 'eb33ed0c6860fd0d1db915126d52c331', 1, 1);
INSERT INTO `pe_user` VALUES ('75', 'maxinming@qq.com', '马新明', 'ad7eb8069031fdce5df36b8f1aea7b29', 1, 1);
INSERT INTO `pe_user` VALUES ('76', 'mupeng@qq.com', '穆鹏', '2e5c244c80a2f5fdf901bb5233b52fb6', 1, 1);
INSERT INTO `pe_user` VALUES ('77', 'yubo@qq.com', '于波', '639f3778b3ee94b49ec84f7292f21467', 1, 1);
INSERT INTO `pe_user` VALUES ('78', 'wangshaofeng@qq.com', '王少峰', '36e1253ed0166f61a970fd241873323d', 1, 1);
INSERT INTO `pe_user` VALUES ('79', 'liangsheng@qq.com', '梁胜', '2544625d8ba59df119e660a13a43c42d', 1, 1);
INSERT INTO `pe_user` VALUES ('83', '3548859133@qq.com', '贺博轩测试', 'cb0abdf9437e8cbc6d8974cd5e69abab', 1, 1);
INSERT INTO `pe_user` VALUES ('84', '3548859133@qq.com', '贺博轩测试', 'e5b46ffdcee77724a123ac47b4a479b3', 1, 1);
INSERT INTO `pe_user` VALUES ('85', '3548859133@qq.com', '贺博轩测试', '36e7bc65d11d1b495b932ee30c1e7d00', 0, 1);
INSERT INTO `pe_user` VALUES ('9fe270f8-f682-4126-92aa-604d945c95f1', 'zhangsan@qq.com', 'zhangsan', 'fa21ab31f0c0a23420d5b683413529bd', 1, 0);

-- ----------------------------
-- Table structure for ss_module
-- ----------------------------
DROP TABLE IF EXISTS `ss_module`;
CREATE TABLE `ss_module`  (
  `module_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `layer_num` decimal(11, 0) NULL DEFAULT NULL,
  `is_leaf` decimal(11, 0) NULL DEFAULT NULL,
  `ico` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cpermission` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `curl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctype` decimal(11, 0) NULL DEFAULT NULL COMMENT '0 主菜单/1 左侧菜单/2按钮/3 链接/4 状态',
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '1启用0停用',
  `belong` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮时，可以标识其归属，\\n            查询某页面按钮时就用此属性查询',
  `cwhich` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quote_num` decimal(11, 0) NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`module_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ss_module
-- ----------------------------
INSERT INTO `ss_module` VALUES ('07ed47d4-e638-48e3-9ef5-adcf85bff03b', '', '', '个人中心', NULL, NULL, NULL, '个人中心', '', 0, 1, '1', NULL, NULL, '', 3);
INSERT INTO `ss_module` VALUES ('182104f0-7690-4a84-a90c-16d24e491a3a', '5', '系统管理', '登录日志', NULL, NULL, NULL, '登录日志', 'system/log/list.do', 1, 1, '0', NULL, NULL, '', NULL);
INSERT INTO `ss_module` VALUES ('2', '', '', '回复管理', NULL, NULL, NULL, '回复管理', '', 0, 1, '1', NULL, NULL, 'cargo', 1);
INSERT INTO `ss_module` VALUES ('3', '', '', '统计分析', NULL, NULL, NULL, '统计分析', '', 0, 1, '1', NULL, NULL, 'stat', 2);
INSERT INTO `ss_module` VALUES ('301', '3', '统计分析', '各区咨询总数对比', NULL, NULL, NULL, '各区咨询总数对比', 'stat/toCharts.do?chartsType=askCompare', 1, 1, '1', NULL, NULL, 'stat', 13);
INSERT INTO `ss_module` VALUES ('302', '3', '统计分析', '各区回复总数对比', NULL, NULL, NULL, '各区回复总数对比', 'stat/toCharts.do?chartsType=resCompare', 1, 1, '1', NULL, NULL, 'stat', 14);
INSERT INTO `ss_module` VALUES ('5', '', '', '系统管理', NULL, NULL, NULL, '系统管理', '', 0, 1, '0', NULL, NULL, 'sysadmin', 2);
INSERT INTO `ss_module` VALUES ('502', '5', '系统管理', '领导管理', NULL, NULL, NULL, '领导管理', 'system/frontLeaderName/list.do', 1, 1, '0', NULL, NULL, 'sysadmin', 19);
INSERT INTO `ss_module` VALUES ('5dc4e6d9-625e-4d98-aa07-3507ed12a742', '2', '回复管理', '咨询', NULL, NULL, NULL, '咨询', 'cargo/consult/unlist.do?typeId=1', 1, 1, '1', NULL, NULL, 'cargo', 4);
INSERT INTO `ss_module` VALUES ('8842b580-49c0-4871-b234-5cf9c721a507', 'ad3be6e7-551f-45b6-b816-b2b751e204ed', 'SaaS管理', '模块管理', NULL, NULL, NULL, '模块管理', 'system/module/list.do', 1, 1, '0', NULL, NULL, '', NULL);
INSERT INTO `ss_module` VALUES ('8edca8bc-ef66-4f1d-941a-8059bef49566', 'ad3be6e7-551f-45b6-b816-b2b751e204ed', 'SaaS管理', '区域管理', NULL, NULL, NULL, '区域管理', 'county/list.do', 1, 1, '0', NULL, NULL, '', NULL);
INSERT INTO `ss_module` VALUES ('9297ed1b-734f-4708-8f38-ae7aec329808', '2', '回复管理', '建言', NULL, NULL, NULL, '建言', 'cargo/advise/unlist.do?typeId=5', 1, 1, '1', NULL, NULL, 'cargo', 5);
INSERT INTO `ss_module` VALUES ('a948242c-4a76-412d-bfea-66a8bb2bfbda', '2', '回复管理', '投诉', NULL, NULL, NULL, '投诉', 'cargo/complaint/unlist.do?typeId=2', 1, 1, '1', NULL, NULL, 'cargo', 6);
INSERT INTO `ss_module` VALUES ('ad3be6e7-551f-45b6-b816-b2b751e204ed', '', '', 'SaaS管理', NULL, NULL, NULL, 'SaaS管理', '', 0, 1, '0', NULL, NULL, '', 1);
INSERT INTO `ss_module` VALUES ('b59abe73-aa6e-41c9-a422-75fdc90ec90b', '2', '回复管理', '求助', NULL, NULL, NULL, '求助', 'cargo/help/unlist.do?typeId=6', 1, 1, '1', NULL, NULL, 'cargo', 7);
INSERT INTO `ss_module` VALUES ('d0a60588-a122-47b4-b757-8cabb65a4294', '2', '回复管理', '感谢', NULL, NULL, NULL, '感谢', 'cargo/thank/unlist.do?typeId=9', 1, 1, '1', NULL, NULL, 'cargo', 8);
INSERT INTO `ss_module` VALUES ('f47dad97-af19-452f-aa48-519875d630c4', '07ed47d4-e638-48e3-9ef5-adcf85bff03b', '个人中心', '修改密码', NULL, NULL, NULL, '修改密码', 'password/toUpdate.do', 1, 1, '1', NULL, NULL, '', 1);

-- ----------------------------
-- Table structure for st_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `st_sys_log`;
CREATE TABLE `st_sys_log`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of st_sys_log
-- ----------------------------
INSERT INTO `st_sys_log` VALUES ('04d76dd6-2c9d-45b5-841b-ea2f42220776', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:07:50');
INSERT INTO `st_sys_log` VALUES ('07cea952-be89-47e3-93fc-fdbbd3199e00', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 14:40:40');
INSERT INTO `st_sys_log` VALUES ('1546addc-78e5-4971-bea1-5b34dff116c2', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 19:44:47');
INSERT INTO `st_sys_log` VALUES ('17d08ff6-bfe4-448b-bca6-9ad2a275a795', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 20:07:18');
INSERT INTO `st_sys_log` VALUES ('18fe242f-8240-4efb-b46f-16638979505f', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 14:45:45');
INSERT INTO `st_sys_log` VALUES ('21a4699b-c861-4fb9-9684-9d3441b41b8c', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 16:28:00');
INSERT INTO `st_sys_log` VALUES ('21f6670a-f250-42b6-b6c1-5e7eb6ed8957', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 14:40:35');
INSERT INTO `st_sys_log` VALUES ('3f7c35e0-20da-4fa6-9529-7856fe9922ec', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 20:06:52');
INSERT INTO `st_sys_log` VALUES ('45777bc7-4ff2-43d0-bec4-84b7676dcf7c', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:07:10');
INSERT INTO `st_sys_log` VALUES ('518551a0-3499-4177-b80b-6fd910c3ebb1', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 15:14:06');
INSERT INTO `st_sys_log` VALUES ('5c017904-ae45-49c5-a952-bdd362c6883c', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 15:14:19');
INSERT INTO `st_sys_log` VALUES ('63c2193d-a323-4a8e-955e-f705b932bd7e', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:41:52');
INSERT INTO `st_sys_log` VALUES ('6d21b79d-dc42-454e-9f12-05ef95585552', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 14:46:20');
INSERT INTO `st_sys_log` VALUES ('73c8c77c-516a-4d5d-aca2-8b99a5e829d5', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 15:02:33');
INSERT INTO `st_sys_log` VALUES ('7a0f6cb4-d9f0-409d-b65a-4390ceeb56b3', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:00:28');
INSERT INTO `st_sys_log` VALUES ('7f02390d-c022-4b07-b60a-26489782a6f5', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 15:15:29');
INSERT INTO `st_sys_log` VALUES ('7f4bce7e-3866-4e41-bb18-458d5c0e4bd3', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 15:10:19');
INSERT INTO `st_sys_log` VALUES ('7f7fcbcc-7967-4954-872e-1a4ca4e2b975', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:06:45');
INSERT INTO `st_sys_log` VALUES ('8119f36b-b80f-4a12-b8df-c969f0d200d8', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 19:26:24');
INSERT INTO `st_sys_log` VALUES ('8929881b-1ec7-4a56-83b1-15bf3ec3a256', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 19:26:16');
INSERT INTO `st_sys_log` VALUES ('92d4a30a-11ab-4331-9e0e-2f33a0fbbe78', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:38:24');
INSERT INTO `st_sys_log` VALUES ('9cfc2fe7-b82d-474e-8cc2-191dc3693cbd', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 20:39:36');
INSERT INTO `st_sys_log` VALUES ('aa232fbb-a090-4f4d-9cd9-ef8e9fce2753', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:26:56');
INSERT INTO `st_sys_log` VALUES ('ac172adf-ce40-4c7d-a8c9-f2168e47cfd5', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 15:09:44');
INSERT INTO `st_sys_log` VALUES ('ad6f2e0e-0ff0-4d53-bdea-57dcbe3dc189', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 19:26:08');
INSERT INTO `st_sys_log` VALUES ('b203b3cc-d675-4c06-8f73-804aa9973fc1', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 20:24:48');
INSERT INTO `st_sys_log` VALUES ('bae6f435-cc1a-4db9-a8d7-b2dba20c175a', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 15:14:48');
INSERT INTO `st_sys_log` VALUES ('cd12c9e3-c503-4b49-9619-8c08bad0fc93', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 20:07:23');
INSERT INTO `st_sys_log` VALUES ('d421a7cc-25bc-4ab7-affd-df61ed18e741', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 15:11:17');
INSERT INTO `st_sys_log` VALUES ('d5221aab-de34-431c-ae41-bff617f779ab', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:11:25');
INSERT INTO `st_sys_log` VALUES ('d6497721-a40b-48b2-9bcf-9223c871bd3d', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 14:36:01');
INSERT INTO `st_sys_log` VALUES ('ec7bb98c-8ac2-4057-9c0a-249ea606899d', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:09:57');
INSERT INTO `st_sys_log` VALUES ('ed3db83a-5e66-470a-af2c-d2b6329e3b21', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 15:13:09');
INSERT INTO `st_sys_log` VALUES ('ef293377-2c9d-4ed5-a75b-c2ac3b4fd1ce', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 20:10:11');
INSERT INTO `st_sys_log` VALUES ('f008319b-2f3a-417f-8909-a8f79ae3818d', '蔡奇', '0:0:0:0:0:0:0:1', '2021-04-01 19:55:01');
INSERT INTO `st_sys_log` VALUES ('f3ee5823-3d12-4668-8bdc-8a3d0074f86a', 'zhangsan', '0:0:0:0:0:0:0:1', '2021-04-01 17:03:55');

SET FOREIGN_KEY_CHECKS = 1;
