
SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` datetime NULL DEFAULT NULL COMMENT '数据最后更新时间',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `confirm` int(11) NULL DEFAULT NULL COMMENT '累计确诊',
  `confirm_add` int(11) NULL DEFAULT NULL COMMENT '新增确诊',
  `heal` int(11) NULL DEFAULT NULL COMMENT '累计治愈',
  `dead` int(11) NULL DEFAULT NULL COMMENT '累计死亡',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5068 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `ds` datetime NOT NULL COMMENT '日期',
  `confirm` int(11) NULL DEFAULT NULL COMMENT '累计确诊',
  `confirm_add` int(11) NULL DEFAULT NULL COMMENT '当日新增确诊',
  `suspect` int(11) NULL DEFAULT NULL COMMENT '剩余疑似',
  `suspect_add` int(11) NULL DEFAULT NULL COMMENT '当日新增疑似',
  `heal` int(11) NULL DEFAULT NULL COMMENT '累计治愈',
  `heal_add` int(11) NULL DEFAULT NULL COMMENT '当日新增治愈',
  `dead` int(11) NULL DEFAULT NULL COMMENT '累计死亡',
  `dead_add` int(11) NULL DEFAULT NULL COMMENT '当日新增死亡',
  PRIMARY KEY (`ds`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for hotsearch
-- ----------------------------
DROP TABLE IF EXISTS `hotsearch`;
CREATE TABLE `hotsearch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` datetime NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 321 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
