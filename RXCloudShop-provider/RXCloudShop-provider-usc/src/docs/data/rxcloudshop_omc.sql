/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : rxcloudshop_omc

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 14/05/2018 22:30:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pc_omc_cart
-- ----------------------------
DROP TABLE IF EXISTS `pc_omc_cart`;
CREATE TABLE `pc_omc_cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本号',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `product_id` bigint(20) NOT NULL COMMENT '商品ID',
  `quantity` int(11) NULL DEFAULT NULL COMMENT '数量',
  `checked` int(11) NULL DEFAULT NULL COMMENT '是否选择,1=已勾选,0=未勾选',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pc_omc_order
-- ----------------------------
DROP TABLE IF EXISTS `pc_omc_order`;
CREATE TABLE `pc_omc_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `order_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `shipping_id` bigint(20) NULL DEFAULT NULL COMMENT '收货人ID',
  `payment` decimal(20, 2) NULL DEFAULT NULL COMMENT '实际付款金额,单位是元,保留两位小数',
  `payment_type` int(4) NOT NULL DEFAULT 1 COMMENT '支付类型,1-在线支付',
  `postage` int(10) NULL DEFAULT 0 COMMENT '运费,单位是元',
  `status` int(10) NULL DEFAULT 10 COMMENT '订单状态:0-已取消-10-未付款，20-已付款，40-已发货，50-交易成功，60-交易关闭',
  `payment_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime(0) NULL DEFAULT NULL COMMENT '交易关闭时间',
  `creator` varchar(20) CHARACTER SET utf32 COLLATE utf32_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no_index`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 384853396294864897 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pc_omc_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `pc_omc_order_detail`;
CREATE TABLE `pc_omc_order_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本号',
  `detail_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单明细序列号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `order_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单号',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '商品ID',
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `product_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品图片地址',
  `current_unit_price` decimal(20, 2) NULL DEFAULT NULL COMMENT '生成订单时的商品单价，单位是元,保留两位小数',
  `quantity` int(10) NULL DEFAULT NULL COMMENT '商品数量',
  `total_price` decimal(20, 2) NULL DEFAULT NULL COMMENT '商品总价,单位是元,保留两位小数',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_no_index`(`order_no`) USING BTREE,
  INDEX `order_no_user_id_index`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 384853396437471233 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pc_omc_shipping
-- ----------------------------
DROP TABLE IF EXISTS `pc_omc_shipping`;
CREATE TABLE `pc_omc_shipping`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货姓名',
  `receiver_phone_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货固定电话',
  `receiver_mobile_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货移动电话',
  `province_id` bigint(32) NULL DEFAULT NULL COMMENT '收货人省ID',
  `province_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '省份',
  `city_id` bigint(20) NULL DEFAULT NULL COMMENT '收货人城市ID',
  `city_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货人城市名称',
  `district_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '区/县',
  `district_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '区/县 编码',
  `street_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '街道ID',
  `street_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '接到名称',
  `detail_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '详细地址',
  `receiver_zip_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮编',
  `default_address` int(1) NULL DEFAULT 0 COMMENT '默认地址',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(20) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(20) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收货人信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_omc_shipping
-- ----------------------------
INSERT INTO `pc_omc_shipping` VALUES (4, 0, 1, 'jack', '13800138000', '18688888888', NULL, '北京', NULL, '北京市', '海淀区', '', '', '西二街', '中关村', '100000', 0, 'admin', 1, '2017-07-12 14:01:35', 'admin', 1, '2017-07-12 14:01:35');
INSERT INTO `pc_omc_shipping` VALUES (7, 0, 1, 'Rosen', '13800138000', '13800138000', NULL, '北京', NULL, '北京', NULL, '', '', '东二街', '中关村', '100000', 1, 'admin', 1, '2017-07-12 14:01:35', 'admin', 1, '2017-07-12 14:01:35');
INSERT INTO `pc_omc_shipping` VALUES (29, 0, 1, '吉利', '13800138000', '13800138000', NULL, '北京', NULL, '北京', '海淀区', '', '', '背二街', '海淀区中关村', '100000', 1, 'admin', 1, '2017-07-12 14:01:35', 'admin', 1, '2017-07-12 14:01:35');

-- ----------------------------
-- Table structure for pc_ptc_pay_info
-- ----------------------------
DROP TABLE IF EXISTS `pc_ptc_pay_info`;
CREATE TABLE `pc_ptc_pay_info`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单号',
  `pay_platform` int(10) NULL DEFAULT NULL COMMENT '支付平台:1-支付宝,2-微信',
  `platform_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '支付宝支付流水号',
  `platform_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '支付宝支付状态',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `creator_id` bigint(32) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最近操作人',
  `last_operator_id` bigint(32) NULL DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
