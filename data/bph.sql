/*
Navicat MySQL Data Transfer

Source Server         : h5_1809
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : bph

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-01-19 17:26:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bopihui
-- ----------------------------
DROP TABLE IF EXISTS `bopihui`;
CREATE TABLE `bopihui` (
  `﻿id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `sold` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `imgur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿id`)
) ENGINE=MyISAM AUTO_INCREMENT=565 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bopihui
-- ----------------------------
INSERT INTO `bopihui` VALUES ('500', '德国进口啤酒奇盟小麦黑啤5L*1桶', '128', '98', '244', '德国', '../../images/list/0.png');
INSERT INTO `bopihui` VALUES ('501', '德国进口啤酒奇盟小麦黑啤5L*2桶', '170', '140', '245', '德国', '../../images/list/1.png');
INSERT INTO `bopihui` VALUES ('502', '德国进口啤酒奇盟小麦黑啤5L*3桶', '178', '158', '246', '德国', '../../images/list/2.png');
INSERT INTO `bopihui` VALUES ('503', '德国进口啤酒奇盟小麦黑啤5L*4桶', '430', '330', '247', '德国', '../../images/list/3.png');
INSERT INTO `bopihui` VALUES ('504', '德国进口啤酒奇盟小麦黑啤5L*5桶', '550', '520', '248', '德国', '../../images/list/4.png');
INSERT INTO `bopihui` VALUES ('505', '德国进口啤酒奇盟小麦黑啤5L*6桶', '132', '98', '249', '德国', '../../images/list/5.png');
INSERT INTO `bopihui` VALUES ('506', '德国进口啤酒奇盟小麦黑啤5L*7桶', '166', '136', '250', '德国', '../../images/list/6.png');
INSERT INTO `bopihui` VALUES ('507', '德国进口啤酒奇盟小麦黑啤5L*8桶', '125', '90', '251', '德国', '../../images/list/7.png');
INSERT INTO `bopihui` VALUES ('508', '德国进口啤酒奇盟小麦黑啤5L*9桶', '230', '190', '252', '德国', '../../images/list/8.png');
INSERT INTO `bopihui` VALUES ('509', '德国进口啤酒奇盟小麦黑啤5L*10桶', '510', '420', '253', '德国', '../../images/list/9.png');
INSERT INTO `bopihui` VALUES ('510', '德国进口啤酒奇盟小麦黑啤5L*11桶', '511', '421', '254', '德国', '../../images/list/10.png');
INSERT INTO `bopihui` VALUES ('511', '德国进口啤酒奇盟小麦黑啤5L*12桶', '512', '422', '255', '德国', '../../images/list/11.png');
INSERT INTO `bopihui` VALUES ('512', '德国进口啤酒奇盟小麦黑啤5L*13桶', '513', '423', '256', '德国', '../../images/list/12.png');
INSERT INTO `bopihui` VALUES ('513', '德国进口啤酒奇盟小麦黑啤5L*14桶', '514', '424', '257', '德国', '../../images/list/13.png');
INSERT INTO `bopihui` VALUES ('514', '德国进口啤酒奇盟小麦黑啤5L*15桶', '515', '425', '258', '德国', '../../images/list/14.png');
INSERT INTO `bopihui` VALUES ('515', '德国进口啤酒奇盟小麦黑啤5L*16桶', '516', '426', '259', '德国', '../../images/list/15.png');
INSERT INTO `bopihui` VALUES ('516', '德国进口啤酒奇盟小麦黑啤5L*17桶', '517', '427', '260', '德国', '../../images/list/16.png');
INSERT INTO `bopihui` VALUES ('517', '德国进口啤酒奇盟小麦黑啤5L*18桶', '518', '428', '261', '德国', '../../images/list/17.png');
INSERT INTO `bopihui` VALUES ('518', '德国进口啤酒奇盟小麦黑啤5L*19桶', '519', '429', '262', '德国', '../../images/list/18.png');
INSERT INTO `bopihui` VALUES ('519', '德国进口啤酒奇盟小麦黑啤5L*20桶', '440', '380', '263', '德国', '../../images/list/19.png');
INSERT INTO `bopihui` VALUES ('520', '德国进口啤酒奇盟小麦黑啤5L*21桶', '441', '381', '264', '德国', '../../images/list/20.png');
INSERT INTO `bopihui` VALUES ('521', '德国进口啤酒奇盟小麦黑啤5L*22桶', '442', '382', '265', '德国', '../../images/list/21.png');
INSERT INTO `bopihui` VALUES ('522', '德国进口啤酒奇盟小麦黑啤5L*23桶', '443', '383', '266', '德国', '../../images/list/22.png');
INSERT INTO `bopihui` VALUES ('523', '德国进口啤酒奇盟小麦黑啤5L*24桶', '444', '384', '267', '德国', '../../images/list/23.png');
INSERT INTO `bopihui` VALUES ('524', '德国进口啤酒奇盟小麦黑啤5L*25桶', '445', '385', '268', '德国', '../../images/list/24.png');
INSERT INTO `bopihui` VALUES ('525', '德国进口啤酒奇盟小麦黑啤5L*26桶', '446', '386', '269', '德国', '../../images/list/25.png');
INSERT INTO `bopihui` VALUES ('526', '德国进口啤酒奇盟小麦黑啤5L*27桶', '447', '387', '270', '德国', '../../images/list/26.png');
INSERT INTO `bopihui` VALUES ('527', '德国进口啤酒奇盟小麦黑啤5L*28桶', '448', '388', '271', '德国', '../../images/list/27.png');
INSERT INTO `bopihui` VALUES ('528', '德国进口啤酒奇盟小麦黑啤5L*29桶', '449', '389', '272', '德国', '../../images/list/28.png');
INSERT INTO `bopihui` VALUES ('529', '德国进口啤酒奇盟小麦黑啤5L*30桶', '450', '390', '273', '德国', '../../images/list/29.png');
INSERT INTO `bopihui` VALUES ('530', '德国进口啤酒奇盟小麦黑啤5L*31桶', '451', '391', '274', '德国', '../../images/list/30.png');
INSERT INTO `bopihui` VALUES ('531', '德国进口啤酒奇盟小麦黑啤5L*32桶', '452', '392', '275', '德国', '../../images/list/31.png');
INSERT INTO `bopihui` VALUES ('532', '德国进口啤酒奇盟小麦黑啤5L*33桶', '453', '393', '276', '德国', '../../images/list/32.png');
INSERT INTO `bopihui` VALUES ('533', '德国进口啤酒奇盟小麦黑啤5L*34桶', '454', '394', '277', '德国', '../../images/list/33.png');
INSERT INTO `bopihui` VALUES ('534', '德国进口啤酒奇盟小麦黑啤5L*35桶', '455', '395', '278', '德国', '../../images/list/34.png');
INSERT INTO `bopihui` VALUES ('535', '德国进口啤酒奇盟小麦黑啤5L*36桶', '456', '396', '279', '德国', '../../images/list/35.png');
INSERT INTO `bopihui` VALUES ('536', '德国进口啤酒奇盟小麦黑啤5L*37桶', '457', '397', '280', '德国', '../../images/list/36.png');
INSERT INTO `bopihui` VALUES ('537', '德国进口啤酒奇盟小麦黑啤5L*38桶', '458', '398', '281', '德国', '../../images/list/37.png');
INSERT INTO `bopihui` VALUES ('538', '茅台2.5L*1瓶', '998', '998', '148', '中国', '../../images/list/38.png');
INSERT INTO `bopihui` VALUES ('539', '马爹利2.5L*1瓶', '320', '270', '230', '西班牙', '../../images/list/39.png');
INSERT INTO `bopihui` VALUES ('540', '野格2.5L*1瓶', '320', '280', '200', '德国', '../../images/list/40.png');
INSERT INTO `bopihui` VALUES ('541', '尊尼黑方2.5L*1瓶', '580', '500', '108', '美国', '../../images/list/41.png');
INSERT INTO `bopihui` VALUES ('542', '杰克丹尼2.5L*1瓶', '330', '300', '300', '英国', '../../images/list/42.png');
INSERT INTO `bopihui` VALUES ('543', '芝华士2.5L*1瓶', '550', '330', '90', '俄国', '../../images/list/43.png');
INSERT INTO `bopihui` VALUES ('544', '阿布鲁帕2.5L*1瓶', '300', '280', '255', '葡萄牙', '../../images/list/44.png');
INSERT INTO `bopihui` VALUES ('545', '阿布鲁帕2.5L*2瓶', '301', '281', '256', '葡萄牙', '../../images/list/45.png');
INSERT INTO `bopihui` VALUES ('546', '阿布鲁帕2.5L*3瓶', '302', '282', '257', '葡萄牙', '../../images/list/46.png');
INSERT INTO `bopihui` VALUES ('547', '阿布鲁帕2.5L*4瓶', '303', '283', '258', '葡萄牙', '../../images/list/47.png');
INSERT INTO `bopihui` VALUES ('548', '阿布鲁帕2.5L*5瓶', '304', '284', '259', '葡萄牙', '../../images/list/48.png');
INSERT INTO `bopihui` VALUES ('549', '阿布鲁帕2.5L*6瓶', '305', '285', '260', '葡萄牙', '../../images/list/49.png');
INSERT INTO `bopihui` VALUES ('550', '阿布鲁帕2.5L*7瓶', '306', '286', '261', '葡萄牙', '../../images/list/50.png');
INSERT INTO `bopihui` VALUES ('551', '阿布鲁帕2.5L*8瓶', '307', '287', '262', '葡萄牙', '../../images/list/51.png');
INSERT INTO `bopihui` VALUES ('552', '阿布鲁帕2.5L*9瓶', '308', '288', '263', '葡萄牙', '../../images/list/52.png');
INSERT INTO `bopihui` VALUES ('553', '阿布鲁帕2.5L*10瓶', '309', '289', '264', '葡萄牙', '../../images/list/53.png');
INSERT INTO `bopihui` VALUES ('554', '阿布鲁帕2.5L*11瓶', '310', '290', '265', '葡萄牙', '../../images/list/54.png');
INSERT INTO `bopihui` VALUES ('555', '阿布鲁帕2.5L*12瓶', '311', '291', '266', '葡萄牙', '../../images/list/55.png');
INSERT INTO `bopihui` VALUES ('556', '阿布鲁帕2.5L*13瓶', '312', '292', '267', '葡萄牙', '../../images/list/56.png');
INSERT INTO `bopihui` VALUES ('557', '阿布鲁帕2.5L*14瓶', '313', '293', '268', '葡萄牙', '../../images/list/57.png');
INSERT INTO `bopihui` VALUES ('558', '阿布鲁帕2.5L*15瓶', '314', '294', '269', '葡萄牙', '../../images/list/58.png');
INSERT INTO `bopihui` VALUES ('559', '阿布鲁帕2.5L*16瓶', '315', '295', '270', '葡萄牙', '../../images/list/59.png');
INSERT INTO `bopihui` VALUES ('560', '阿布鲁帕2.5L*17瓶', '316', '296', '271', '葡萄牙', '../../images/list/60.png');
INSERT INTO `bopihui` VALUES ('561', '阿布鲁帕2.5L*18瓶', '317', '297', '272', '葡萄牙', '../../images/list/61.png');
INSERT INTO `bopihui` VALUES ('562', '阿布鲁帕2.5L*19瓶', '318', '298', '273', '葡萄牙', '../../images/list/62.png');
INSERT INTO `bopihui` VALUES ('563', '阿布鲁帕2.5L*20瓶', '319', '299', '274', '葡萄牙', '../../images/list/63.png');
INSERT INTO `bopihui` VALUES ('564', '阿布鲁帕2.5L*21瓶', '320', '300', '275', '葡萄牙', '../../images/list/64.png');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('33', '迷你泰谷啤酒8', '201.90', '2', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg');
INSERT INTO `cart` VALUES ('34', '迷你泰谷啤酒9', '202.90', '1', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg');
INSERT INTO `cart` VALUES ('1', '【买1送2】葡萄牙进口迷你导火索啤酒 200ml*24瓶', '169.90', '7', 'http://img.bphapp.com/public/attachment/201901/12/13/5c397db39c77a.jpg');

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `oldPrice` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sales` int(255) DEFAULT NULL,
  `stock` int(255) DEFAULT NULL,
  `sorts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('3', '【福利购】泰谷啤酒250ml*6罐 （每天限两单）', '362.00', '171.90', 'http://img.bphapp.com/public/attachment/201809/29/15/5baf244072b57.jpg', '3269', '1001', 'seckill');
INSERT INTO `goodslist` VALUES ('1', '【买1送2】葡萄牙进口迷你导火索啤酒 200ml*24瓶', '360.00', '169.90', 'http://img.bphapp.com/public/attachment/201901/12/13/5c397db39c77a.jpg', '3267', '999', 'seckill');
INSERT INTO `goodslist` VALUES ('2', '【年货秒杀】88元4箱 超级波克啤酒330ml*24罐', '361.00', '170.90', 'http://img.bphapp.com/public/attachment/201901/03/17/5c2dd51c8ea1b.jpg', '3268', '1000', 'seckill');
INSERT INTO `goodslist` VALUES ('4', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒1', '363.00', '172.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3270', '1002', 'times');
INSERT INTO `goodslist` VALUES ('5', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒2', '364.00', '173.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3271', '1003', 'times');
INSERT INTO `goodslist` VALUES ('6', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒3', '365.00', '174.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3272', '1004', 'times');
INSERT INTO `goodslist` VALUES ('7', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒4', '366.00', '175.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3273', '1005', 'times');
INSERT INTO `goodslist` VALUES ('8', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒5', '367.00', '176.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3274', '1006', 'times');
INSERT INTO `goodslist` VALUES ('9', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒6', '368.00', '177.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3275', '1007', 'times');
INSERT INTO `goodslist` VALUES ('10', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒7', '369.00', '178.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3276', '1008', 'times');
INSERT INTO `goodslist` VALUES ('11', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒8', '370.00', '179.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3277', '1009', 'times');
INSERT INTO `goodslist` VALUES ('12', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒9', '371.00', '180.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3278', '1010', 'times');
INSERT INTO `goodslist` VALUES ('13', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒10', '372.00', '181.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3279', '1011', 'times');
INSERT INTO `goodslist` VALUES ('14', '【APP推荐】（买1送2）葡萄牙进口阿尔寇黄啤酒11', '373.00', '182.90', 'http://img.bphapp.com/public/attachment/201804/16/16/5ad464245411a.jpg', '3280', '1012', 'times');
INSERT INTO `goodslist` VALUES ('15', '小黄袍35° 阳光露黄酒1', '374.00', '183.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3281', '1013', 'days');
INSERT INTO `goodslist` VALUES ('16', '小黄袍35° 阳光露黄酒2', '375.00', '184.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3282', '1014', 'days');
INSERT INTO `goodslist` VALUES ('17', '小黄袍35° 阳光露黄酒3', '376.00', '185.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3283', '1015', 'days');
INSERT INTO `goodslist` VALUES ('18', '小黄袍35° 阳光露黄酒4', '377.00', '186.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3284', '1016', 'days');
INSERT INTO `goodslist` VALUES ('19', '小黄袍35° 阳光露黄酒5', '378.00', '187.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3285', '1017', 'days');
INSERT INTO `goodslist` VALUES ('20', '小黄袍35° 阳光露黄酒6', '379.00', '188.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3286', '1018', 'days');
INSERT INTO `goodslist` VALUES ('21', '小黄袍35° 阳光露黄酒7', '380.00', '189.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3287', '1019', 'days');
INSERT INTO `goodslist` VALUES ('22', '小黄袍35° 阳光露黄酒8', '381.00', '190.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3288', '1020', 'days');
INSERT INTO `goodslist` VALUES ('23', '小黄袍35° 阳光露黄酒9', '382.00', '191.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3289', '1021', 'days');
INSERT INTO `goodslist` VALUES ('24', '小黄袍35° 阳光露黄酒10', '383.00', '192.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3290', '1022', 'days');
INSERT INTO `goodslist` VALUES ('25', '小黄袍35° 阳光露黄酒11', '384.00', '193.90', 'http://img.bphapp.com/public/attachment/201812/19/14/5c19e3b9e22de.jpg', '3291', '1023', 'days');
INSERT INTO `goodslist` VALUES ('26', '迷你泰谷啤酒1', '385.00', '194.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3292', '1024', 'bk');
INSERT INTO `goodslist` VALUES ('27', '迷你泰谷啤酒2', '386.00', '195.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3293', '1025', 'bk');
INSERT INTO `goodslist` VALUES ('28', '迷你泰谷啤酒3', '387.00', '196.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3294', '1026', 'bk');
INSERT INTO `goodslist` VALUES ('29', '迷你泰谷啤酒4', '388.00', '197.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3295', '1027', 'bk');
INSERT INTO `goodslist` VALUES ('30', '迷你泰谷啤酒5', '389.00', '198.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3296', '1028', 'bk');
INSERT INTO `goodslist` VALUES ('31', '迷你泰谷啤酒6', '390.00', '199.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3297', '1029', 'bk');
INSERT INTO `goodslist` VALUES ('32', '迷你泰谷啤酒7', '391.00', '200.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3298', '1030', 'bk');
INSERT INTO `goodslist` VALUES ('33', '迷你泰谷啤酒8', '392.00', '201.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3299', '1031', 'bk');
INSERT INTO `goodslist` VALUES ('34', '迷你泰谷啤酒9', '393.00', '202.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3300', '1032', 'bk');
INSERT INTO `goodslist` VALUES ('35', '迷你泰谷啤酒10', '394.00', '203.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3301', '1033', 'bk');
INSERT INTO `goodslist` VALUES ('36', '迷你泰谷啤酒11', '395.00', '204.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3302', '1034', 'bk');
INSERT INTO `goodslist` VALUES ('37', '迷你泰谷啤酒12', '396.00', '205.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3303', '1035', 'bk');
INSERT INTO `goodslist` VALUES ('38', '迷你泰谷啤酒13', '397.00', '206.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3304', '1036', 'bk');
INSERT INTO `goodslist` VALUES ('39', '迷你泰谷啤酒14', '398.00', '207.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3305', '1037', 'bk');
INSERT INTO `goodslist` VALUES ('40', '迷你泰谷啤酒15', '399.00', '208.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3306', '1038', 'bk');
INSERT INTO `goodslist` VALUES ('41', '迷你泰谷啤酒16', '400.00', '209.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3307', '1039', 'bk');
INSERT INTO `goodslist` VALUES ('42', '迷你泰谷啤酒17', '401.00', '210.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3308', '1040', 'bk');
INSERT INTO `goodslist` VALUES ('43', '迷你泰谷啤酒18', '402.00', '211.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3309', '1041', 'bk');
INSERT INTO `goodslist` VALUES ('44', '迷你泰谷啤酒19', '403.00', '212.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3310', '1042', 'bk');
INSERT INTO `goodslist` VALUES ('45', '迷你泰谷啤酒20', '404.00', '213.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3311', '1043', 'bk');
INSERT INTO `goodslist` VALUES ('46', '迷你泰谷啤酒21', '405.00', '214.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3312', '1044', 'bk');
INSERT INTO `goodslist` VALUES ('47', '迷你泰谷啤酒22', '406.00', '215.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3313', '1045', 'bk');
INSERT INTO `goodslist` VALUES ('48', '迷你泰谷啤酒23', '407.00', '216.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3314', '1046', 'bk');
INSERT INTO `goodslist` VALUES ('49', '迷你泰谷啤酒24', '408.00', '217.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3315', '1047', 'bk');
INSERT INTO `goodslist` VALUES ('50', '迷你泰谷啤酒25', '409.00', '218.90', 'http://img.bphapp.com/public/attachment/201808/07/11/5b690efaf124d.jpg', '3316', '1048', 'bk');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', 'http://hujiawei.top/images/lb1.jpg', 'lb1');
INSERT INTO `images` VALUES ('2', 'http://hujiawei.top/images/lb2.jpg', 'lb2');
INSERT INTO `images` VALUES ('3', 'http://hujiawei.top/images/lb3.jpg', 'lb3');
INSERT INTO `images` VALUES ('7', 'http://hujiawei.top/images/home/fl1.png', '啤酒');
INSERT INTO `images` VALUES ('8', 'http://hujiawei.top/images/home/fl1.png', '红酒');
INSERT INTO `images` VALUES ('9', 'http://hujiawei.top/images/home/fl1.png', '烈酒');
INSERT INTO `images` VALUES ('10', 'http://hujiawei.top/images/home/fl1.png', '新客专享');
INSERT INTO `images` VALUES ('11', 'http://hujiawei.top/images/home/fl1.png', '牛奶');
INSERT INTO `images` VALUES ('12', 'http://hujiawei.top/images/home/fl2.png', '公告');
INSERT INTO `images` VALUES ('13', 'http://hujiawei.top/images/home/fl2.png', '分享有礼');
INSERT INTO `images` VALUES ('14', 'http://hujiawei.top/images/home/fl2.png', '超级秒杀');
INSERT INTO `images` VALUES ('15', 'http://hujiawei.top/images/home/fl2.png', '限时抢购');
INSERT INTO `images` VALUES ('16', 'http://hujiawei.top/images/home/fl2.png', '我的评论');
INSERT INTO `images` VALUES ('17', 'http://hujiawei.top/images/home/cx1.jpg', 'cx1');
INSERT INTO `images` VALUES ('18', 'http://hujiawei.top/images/home/cx2.jpg', 'cx2');
INSERT INTO `images` VALUES ('19', 'http://hujiawei.top/images/home/cx3.jpg', 'cx3');
INSERT INTO `images` VALUES ('20', 'http://img.bphapp.com/public/attachment/201808/21/16/5b7bd29b85fc3.png', '泰谷');
INSERT INTO `images` VALUES ('21', 'http://img.bphapp.com/public/attachment/201807/13/14/5b48451ad67e8.png', '人气');
INSERT INTO `images` VALUES ('22', 'http://img.bphapp.com/public/attachment/201808/21/16/5b7bd22f244c5.png', '菲尔');
INSERT INTO `images` VALUES ('23', 'http://img.bphapp.com/public/attachment/201808/02/11/5b6278e58c679.png', '葡萄');
INSERT INTO `images` VALUES ('24', 'http://img.bphapp.com/public/attachment/201808/03/17/5b6421be7b2fc.png', '德国');
INSERT INTO `images` VALUES ('25', 'http://img.bphapp.com/public/attachment/201808/02/11/5b627921b781c.png', '比利时');
INSERT INTO `images` VALUES ('26', 'http://img.bphapp.com/public/attachment/201807/13/14/5b484542f0fe9.png', '果味');
INSERT INTO `images` VALUES ('27', 'http://img.bphapp.com/public/attachment/201808/02/11/5b6278b8e2969.png', '烈性');
SET FOREIGN_KEY_CHECKS=1;
