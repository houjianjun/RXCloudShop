/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : rxcloudshop_opc

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 14/05/2018 22:56:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pc_mq_message_data
-- ----------------------------
DROP TABLE IF EXISTS `pc_mq_message_data`;
CREATE TABLE `pc_mq_message_data`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本号',
  `message_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '消息key',
  `message_topic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'topic',
  `message_tag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'tag',
  `message_body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '消息内容',
  `message_type` int(11) NULL DEFAULT 10 COMMENT '消息类型: 10 - 生产者 ; 20 - 消费者',
  `delay_level` int(11) NULL DEFAULT 0 COMMENT '延时级别 1s 5s 10s 30s 1m 2m 3m 4m 5m 6m 7m 8m 9m 10m 20m 30m 1h 2h',
  `order_type` int(11) NULL DEFAULT 0 COMMENT '顺序类型 0有序 1无序',
  `status` int(11) NULL DEFAULT 10 COMMENT '消息状态',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `yn` int(11) NULL DEFAULT 0 COMMENT '是否删除 -0 未删除 -1 已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_message_key`(`message_key`) USING BTREE,
  INDEX `idx_created_time`(`created_time`) USING BTREE,
  INDEX `idx_update_time`(`update_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 318182082838798337 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '消息记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pc_opc_sms_setting
-- ----------------------------
DROP TABLE IF EXISTS `pc_opc_sms_setting`;
CREATE TABLE `pc_opc_sms_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(4) NOT NULL DEFAULT 0 COMMENT '版本号',
  `again_send_time` int(4) NULL DEFAULT NULL COMMENT '可再次发送时间（毫秒）',
  `invalid_time` int(4) NULL DEFAULT NULL COMMENT '失效时间（分钟）',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '短信类型',
  `type_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '类型描述',
  `templet_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模板code',
  `templet_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模板内容',
  `send_max_num` int(4) NULL DEFAULT NULL COMMENT '一天中可发送的最大数量',
  `ip_send_max_num` int(4) NULL DEFAULT NULL COMMENT '一个IP一天中可发送的最大数量',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `yn` int(11) NULL DEFAULT 0 COMMENT '删除标识(1-已删除；0-未删除)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `un_type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '短信模板设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pc_opt_attachment
-- ----------------------------
DROP TABLE IF EXISTS `pc_opt_attachment`;
CREATE TABLE `pc_opt_attachment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `ref_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '上传附件的相关业务流水号',
  `center_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '中心名称(英文简写)',
  `bucket_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '文件服务器根目录',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '附件名称',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '附件存储相对路径',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '附件类型',
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '附件格式',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `version` bigint(20) NULL DEFAULT 0 COMMENT '版本号',
  `creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `last_operator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 318168887994621953 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '业务附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_opt_attachment
-- ----------------------------
INSERT INTO `pc_opt_attachment` VALUES (314167466638974976, '27', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314167458443304960.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:14:37', '超级管理员', 1, '2018-03-10 11:14:49');
INSERT INTO `pc_opt_attachment` VALUES (314167478794067968, '27', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314167475623174144.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:14:39', '超级管理员', 1, '2018-03-10 11:14:49');
INSERT INTO `pc_opt_attachment` VALUES (314167500805775360, '27', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314167496099766272.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:14:41', '超级管理员', 1, '2018-03-10 11:14:49');
INSERT INTO `pc_opt_attachment` VALUES (314168622983421952, '26', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314168619401486336.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:16:55', '超级管理员', 1, '2018-03-10 11:17:16');
INSERT INTO `pc_opt_attachment` VALUES (314168653241131008, '26', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314168650615496704.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:16:59', '超级管理员', 1, '2018-03-10 11:17:16');
INSERT INTO `pc_opt_attachment` VALUES (314168677257715712, '26', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314168675412221952.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:17:02', '超级管理员', 1, '2018-03-10 11:17:16');
INSERT INTO `pc_opt_attachment` VALUES (314168716944220160, '26', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314168713681051648.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:17:06', '超级管理员', 1, '2018-03-10 11:17:16');
INSERT INTO `pc_opt_attachment` VALUES (314169253622194176, '28', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169250627461120.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:18:10', '超级管理员', 1, '2018-03-10 11:18:20');
INSERT INTO `pc_opt_attachment` VALUES (314169275776507904, '28', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169272446230528.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:18:13', '超级管理员', 1, '2018-03-10 11:18:20');
INSERT INTO `pc_opt_attachment` VALUES (314169295019974656, '28', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169291622588416.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:18:15', '超级管理员', 1, '2018-03-10 11:18:20');
INSERT INTO `pc_opt_attachment` VALUES (314169831807000576, '29', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169828216676352.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:19', '超级管理员', 1, '2018-03-10 11:19:31');
INSERT INTO `pc_opt_attachment` VALUES (314169860747698176, '29', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169850421321728.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:23', '超级管理员', 1, '2018-03-10 11:19:31');
INSERT INTO `pc_opt_attachment` VALUES (314169878858702848, '29', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169873087340544.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:25', '超级管理员', 1, '2018-03-10 11:19:31');
INSERT INTO `pc_opt_attachment` VALUES (314169969338228736, '312426496260057088', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169966418993152.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:36', '超级管理员', 1, '2018-03-10 11:19:43');
INSERT INTO `pc_opt_attachment` VALUES (314169988875296768, '312426496260057088', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314169985905729536.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:38', '超级管理员', 1, '2018-03-10 11:19:43');
INSERT INTO `pc_opt_attachment` VALUES (314170064850919424, '312415946721470464', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '314170052939096064.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-10 11:19:47', '超级管理员', 1, '2018-03-11 20:13:06');
INSERT INTO `pc_opt_attachment` VALUES (315163180122775552, '312415946721470464', 'paascloud-oss-bucket', 'paascloud-oss-bucket', '315163179812397056.jpg', 'paascloud/picture/product/', 'picture', 'jpg', '', 0, '', NULL, '2018-03-11 20:12:58', '超级管理员', 1, '2018-03-11 20:13:06');

SET FOREIGN_KEY_CHECKS = 1;
