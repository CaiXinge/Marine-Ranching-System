/*
 Navicat Premium Data Transfer

 Source Server         : connect
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : marineranching_system

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 25/05/2024 22:10:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1001', '123456');
INSERT INTO `admin` VALUES ('1002', '123456');

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('云台', 'holder-1', 'H.264', '1kb');
INSERT INTO `device` VALUES ('气象站', 'meteror-1', 'TXT', '500b');
INSERT INTO `device` VALUES ('传感器', 'sensor-1', 'TXT', '2kb');
INSERT INTO `device` VALUES ('声纳', 'sonar-1', 'CSV', '10kb');
INSERT INTO `device` VALUES ('水底摄像头', 'video-1', 'H.264', '4Mb');
INSERT INTO `device` VALUES ('水底摄像头', 'video-2', '4CIF', '128kb');
INSERT INTO `device` VALUES ('水面摄像头', 'video-3', 'H.264', '100b');

-- ----------------------------
-- Table structure for fish
-- ----------------------------
DROP TABLE IF EXISTS `fish`;
CREATE TABLE `fish`  (
  `Species` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Weight(g)` double NULL DEFAULT NULL,
  `Length1(cm)` double NULL DEFAULT NULL,
  `Length2(cm)` double NULL DEFAULT NULL,
  `Length3(cm)` double NULL DEFAULT NULL,
  `Height(cm)` double NULL DEFAULT NULL,
  `Width(cm)` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fish
-- ----------------------------
INSERT INTO `fish` VALUES ('Bream', 242, 23.2, 25.4, 30, 11.52, 4.02);
INSERT INTO `fish` VALUES ('Bream', 290, 24, 26.3, 31.2, 12.48, 4.3056);
INSERT INTO `fish` VALUES ('Bream', 340, 23.9, 26.5, 31.1, 12.3778, 4.6961);
INSERT INTO `fish` VALUES ('Bream', 363, 26.3, 29, 33.5, 12.73, 4.4555);
INSERT INTO `fish` VALUES ('Bream', 430, 26.5, 29, 34, 12.444, 5.134);
INSERT INTO `fish` VALUES ('Bream', 450, 26.8, 29.7, 34.7, 13.6024, 4.9274);
INSERT INTO `fish` VALUES ('Bream', 500, 26.8, 29.7, 34.5, 14.1795, 5.2785);
INSERT INTO `fish` VALUES ('Bream', 390, 27.6, 30, 35, 12.67, 4.69);
INSERT INTO `fish` VALUES ('Bream', 450, 27.6, 30, 35.1, 14.0049, 4.8438);
INSERT INTO `fish` VALUES ('Bream', 500, 28.5, 30.7, 36.2, 14.2266, 4.9594);
INSERT INTO `fish` VALUES ('Bream', 475, 28.4, 31, 36.2, 14.2628, 5.1042);
INSERT INTO `fish` VALUES ('Bream', 500, 28.7, 31, 36.2, 14.3714, 4.8146);
INSERT INTO `fish` VALUES ('Bream', 500, 29.1, 31.5, 36.4, 13.7592, 4.368);
INSERT INTO `fish` VALUES ('Bream', 340, 29.5, 32, 37.3, 13.9129, 5.0728);
INSERT INTO `fish` VALUES ('Bream', 600, 29.4, 32, 37.2, 14.9544, 5.1708);
INSERT INTO `fish` VALUES ('Bream', 600, 29.4, 32, 37.2, 15.438, 5.58);
INSERT INTO `fish` VALUES ('Bream', 700, 30.4, 33, 38.3, 14.8604, 5.2854);
INSERT INTO `fish` VALUES ('Bream', 700, 30.4, 33, 38.5, 14.938, 5.1975);
INSERT INTO `fish` VALUES ('Bream', 610, 30.9, 33.5, 38.6, 15.633, 5.1338);
INSERT INTO `fish` VALUES ('Bream', 650, 31, 33.5, 38.7, 14.4738, 5.7276);
INSERT INTO `fish` VALUES ('Bream', 575, 31.3, 34, 39.5, 15.1285, 5.5695);
INSERT INTO `fish` VALUES ('Bream', 685, 31.4, 34, 39.2, 15.9936, 5.3704);
INSERT INTO `fish` VALUES ('Bream', 620, 31.5, 34.5, 39.7, 15.5227, 5.2801);
INSERT INTO `fish` VALUES ('Bream', 680, 31.8, 35, 40.6, 15.4686, 6.1306);
INSERT INTO `fish` VALUES ('Bream', 700, 31.9, 35, 40.5, 16.2405, 5.589);
INSERT INTO `fish` VALUES ('Bream', 725, 31.8, 35, 40.9, 16.36, 6.0532);
INSERT INTO `fish` VALUES ('Bream', 720, 32, 35, 40.6, 16.3618, 6.09);
INSERT INTO `fish` VALUES ('Bream', 714, 32.7, 36, 41.5, 16.517, 5.8515);
INSERT INTO `fish` VALUES ('Bream', 850, 32.8, 36, 41.6, 16.8896, 6.1984);
INSERT INTO `fish` VALUES ('Bream', 1000, 33.5, 37, 42.6, 18.957, 6.603);
INSERT INTO `fish` VALUES ('Bream', 920, 35, 38.5, 44.1, 18.0369, 6.3063);
INSERT INTO `fish` VALUES ('Bream', 955, 35, 38.5, 44, 18.084, 6.292);
INSERT INTO `fish` VALUES ('Bream', 925, 36.2, 39.5, 45.3, 18.7542, 6.7497);
INSERT INTO `fish` VALUES ('Bream', 975, 37.4, 41, 45.9, 18.6354, 6.7473);
INSERT INTO `fish` VALUES ('Bream', 950, 38, 41, 46.5, 17.6235, 6.3705);
INSERT INTO `fish` VALUES ('Roach', 40, 12.9, 14.1, 16.2, 4.1472, 2.268);
INSERT INTO `fish` VALUES ('Roach', 69, 16.5, 18.2, 20.3, 5.2983, 2.8217);
INSERT INTO `fish` VALUES ('Roach', 78, 17.5, 18.8, 21.2, 5.5756, 2.9044);
INSERT INTO `fish` VALUES ('Roach', 87, 18.2, 19.8, 22.2, 5.6166, 3.1746);
INSERT INTO `fish` VALUES ('Roach', 120, 18.6, 20, 22.2, 6.216, 3.5742);
INSERT INTO `fish` VALUES ('Roach', 0, 19, 20.5, 22.8, 6.4752, 3.3516);
INSERT INTO `fish` VALUES ('Roach', 110, 19.1, 20.8, 23.1, 6.1677, 3.3957);
INSERT INTO `fish` VALUES ('Roach', 120, 19.4, 21, 23.7, 6.1146, 3.2943);
INSERT INTO `fish` VALUES ('Roach', 150, 20.4, 22, 24.7, 5.8045, 3.7544);
INSERT INTO `fish` VALUES ('Roach', 145, 20.5, 22, 24.3, 6.6339, 3.5478);
INSERT INTO `fish` VALUES ('Roach', 160, 20.5, 22.5, 25.3, 7.0334, 3.8203);
INSERT INTO `fish` VALUES ('Roach', 140, 21, 22.5, 25, 6.55, 3.325);
INSERT INTO `fish` VALUES ('Roach', 160, 21.1, 22.5, 25, 6.4, 3.8);
INSERT INTO `fish` VALUES ('Roach', 169, 22, 24, 27.2, 7.5344, 3.8352);
INSERT INTO `fish` VALUES ('Roach', 161, 22, 23.4, 26.7, 6.9153, 3.6312);
INSERT INTO `fish` VALUES ('Roach', 200, 22.1, 23.5, 26.8, 7.3968, 4.1272);
INSERT INTO `fish` VALUES ('Roach', 180, 23.6, 25.2, 27.9, 7.0866, 3.906);
INSERT INTO `fish` VALUES ('Roach', 290, 24, 26, 29.2, 8.8768, 4.4968);
INSERT INTO `fish` VALUES ('Roach', 272, 25, 27, 30.6, 8.568, 4.7736);
INSERT INTO `fish` VALUES ('Roach', 390, 29.5, 31.7, 35, 9.485, 5.355);
INSERT INTO `fish` VALUES ('Whitefish', 270, 23.6, 26, 28.7, 8.3804, 4.2476);
INSERT INTO `fish` VALUES ('Whitefish', 270, 24.1, 26.5, 29.3, 8.1454, 4.2485);
INSERT INTO `fish` VALUES ('Whitefish', 306, 25.6, 28, 30.8, 8.778, 4.6816);
INSERT INTO `fish` VALUES ('Whitefish', 540, 28.5, 31, 34, 10.744, 6.562);
INSERT INTO `fish` VALUES ('Whitefish', 800, 33.7, 36.4, 39.6, 11.7612, 6.5736);
INSERT INTO `fish` VALUES ('Whitefish', 1000, 37.3, 40, 43.5, 12.354, 6.525);
INSERT INTO `fish` VALUES ('Parkki', 55, 13.5, 14.7, 16.5, 6.8475, 2.3265);
INSERT INTO `fish` VALUES ('Parkki', 60, 14.3, 15.5, 17.4, 6.5772, 2.3142);
INSERT INTO `fish` VALUES ('Parkki', 90, 16.3, 17.7, 19.8, 7.4052, 2.673);
INSERT INTO `fish` VALUES ('Parkki', 120, 17.5, 19, 21.3, 8.3922, 2.9181);
INSERT INTO `fish` VALUES ('Parkki', 150, 18.4, 20, 22.4, 8.8928, 3.2928);
INSERT INTO `fish` VALUES ('Parkki', 140, 19, 20.7, 23.2, 8.5376, 3.2944);
INSERT INTO `fish` VALUES ('Parkki', 170, 19, 20.7, 23.2, 9.396, 3.4104);
INSERT INTO `fish` VALUES ('Parkki', 145, 19.8, 21.5, 24.1, 9.7364, 3.1571);
INSERT INTO `fish` VALUES ('Parkki', 200, 21.2, 23, 25.8, 10.3458, 3.6636);
INSERT INTO `fish` VALUES ('Parkki', 273, 23, 25, 28, 11.088, 4.144);
INSERT INTO `fish` VALUES ('Parkki', 300, 24, 26, 29, 11.368, 4.234);
INSERT INTO `fish` VALUES ('Perch', 5.9, 7.5, 8.4, 8.8, 2.112, 1.408);
INSERT INTO `fish` VALUES ('Perch', 32, 12.5, 13.7, 14.7, 3.528, 1.9992);
INSERT INTO `fish` VALUES ('Perch', 40, 13.8, 15, 16, 3.824, 2.432);
INSERT INTO `fish` VALUES ('Perch', 51.5, 15, 16.2, 17.2, 4.5924, 2.6316);
INSERT INTO `fish` VALUES ('Perch', 70, 15.7, 17.4, 18.5, 4.588, 2.9415);
INSERT INTO `fish` VALUES ('Perch', 100, 16.2, 18, 19.2, 5.2224, 3.3216);
INSERT INTO `fish` VALUES ('Perch', 78, 16.8, 18.7, 19.4, 5.1992, 3.1234);
INSERT INTO `fish` VALUES ('Perch', 80, 17.2, 19, 20.2, 5.6358, 3.0502);
INSERT INTO `fish` VALUES ('Perch', 85, 17.8, 19.6, 20.8, 5.1376, 3.0368);
INSERT INTO `fish` VALUES ('Perch', 85, 18.2, 20, 21, 5.082, 2.772);
INSERT INTO `fish` VALUES ('Perch', 110, 19, 21, 22.5, 5.6925, 3.555);
INSERT INTO `fish` VALUES ('Perch', 115, 19, 21, 22.5, 5.9175, 3.3075);
INSERT INTO `fish` VALUES ('Perch', 125, 19, 21, 22.5, 5.6925, 3.6675);
INSERT INTO `fish` VALUES ('Perch', 130, 19.3, 21.3, 22.8, 6.384, 3.534);
INSERT INTO `fish` VALUES ('Perch', 120, 20, 22, 23.5, 6.11, 3.4075);
INSERT INTO `fish` VALUES ('Perch', 120, 20, 22, 23.5, 5.64, 3.525);
INSERT INTO `fish` VALUES ('Perch', 130, 20, 22, 23.5, 6.11, 3.525);
INSERT INTO `fish` VALUES ('Perch', 135, 20, 22, 23.5, 5.875, 3.525);
INSERT INTO `fish` VALUES ('Perch', 110, 20, 22, 23.5, 5.5225, 3.995);
INSERT INTO `fish` VALUES ('Perch', 130, 20.5, 22.5, 24, 5.856, 3.624);
INSERT INTO `fish` VALUES ('Perch', 150, 20.5, 22.5, 24, 6.792, 3.624);
INSERT INTO `fish` VALUES ('Perch', 145, 20.7, 22.7, 24.2, 5.9532, 3.63);
INSERT INTO `fish` VALUES ('Perch', 150, 21, 23, 24.5, 5.2185, 3.626);
INSERT INTO `fish` VALUES ('Perch', 170, 21.5, 23.5, 25, 6.275, 3.725);
INSERT INTO `fish` VALUES ('Perch', 225, 22, 24, 25.5, 7.293, 3.723);
INSERT INTO `fish` VALUES ('Perch', 145, 22, 24, 25.5, 6.375, 3.825);
INSERT INTO `fish` VALUES ('Perch', 188, 22.6, 24.6, 26.2, 6.7334, 4.1658);
INSERT INTO `fish` VALUES ('Perch', 180, 23, 25, 26.5, 6.4395, 3.6835);
INSERT INTO `fish` VALUES ('Perch', 197, 23.5, 25.6, 27, 6.561, 4.239);
INSERT INTO `fish` VALUES ('Perch', 218, 25, 26.5, 28, 7.168, 4.144);
INSERT INTO `fish` VALUES ('Perch', 300, 25.2, 27.3, 28.7, 8.323, 5.1373);
INSERT INTO `fish` VALUES ('Perch', 260, 25.4, 27.5, 28.9, 7.1672, 4.335);
INSERT INTO `fish` VALUES ('Perch', 265, 25.4, 27.5, 28.9, 7.0516, 4.335);
INSERT INTO `fish` VALUES ('Perch', 250, 25.4, 27.5, 28.9, 7.2828, 4.5662);
INSERT INTO `fish` VALUES ('Perch', 250, 25.9, 28, 29.4, 7.8204, 4.2042);
INSERT INTO `fish` VALUES ('Perch', 300, 26.9, 28.7, 30.1, 7.5852, 4.6354);
INSERT INTO `fish` VALUES ('Perch', 320, 27.8, 30, 31.6, 7.6156, 4.7716);
INSERT INTO `fish` VALUES ('Perch', 514, 30.5, 32.8, 34, 10.03, 6.018);
INSERT INTO `fish` VALUES ('Perch', 556, 32, 34.5, 36.5, 10.2565, 6.3875);
INSERT INTO `fish` VALUES ('Perch', 840, 32.5, 35, 37.3, 11.4884, 7.7957);
INSERT INTO `fish` VALUES ('Perch', 685, 34, 36.5, 39, 10.881, 6.864);
INSERT INTO `fish` VALUES ('Perch', 700, 34, 36, 38.3, 10.6091, 6.7408);
INSERT INTO `fish` VALUES ('Perch', 700, 34.5, 37, 39.4, 10.835, 6.2646);
INSERT INTO `fish` VALUES ('Perch', 690, 34.6, 37, 39.3, 10.5717, 6.3666);
INSERT INTO `fish` VALUES ('Perch', 900, 36.5, 39, 41.4, 11.1366, 7.4934);
INSERT INTO `fish` VALUES ('Perch', 650, 36.5, 39, 41.4, 11.1366, 6.003);
INSERT INTO `fish` VALUES ('Perch', 820, 36.6, 39, 41.3, 12.4313, 7.3514);
INSERT INTO `fish` VALUES ('Perch', 850, 36.9, 40, 42.3, 11.9286, 7.1064);
INSERT INTO `fish` VALUES ('Perch', 900, 37, 40, 42.5, 11.73, 7.225);
INSERT INTO `fish` VALUES ('Perch', 1015, 37, 40, 42.4, 12.3808, 7.4624);
INSERT INTO `fish` VALUES ('Perch', 820, 37.1, 40, 42.5, 11.135, 6.63);
INSERT INTO `fish` VALUES ('Perch', 1100, 39, 42, 44.6, 12.8002, 6.8684);
INSERT INTO `fish` VALUES ('Perch', 1000, 39.8, 43, 45.2, 11.9328, 7.2772);
INSERT INTO `fish` VALUES ('Perch', 1100, 40.1, 43, 45.5, 12.5125, 7.4165);
INSERT INTO `fish` VALUES ('Perch', 1000, 40.2, 43.5, 46, 12.604, 8.142);
INSERT INTO `fish` VALUES ('Perch', 1000, 41.1, 44, 46.6, 12.4888, 7.5958);
INSERT INTO `fish` VALUES ('Pike', 200, 30, 32.3, 34.8, 5.568, 3.3756);
INSERT INTO `fish` VALUES ('Pike', 300, 31.7, 34, 37.8, 5.7078, 4.158);
INSERT INTO `fish` VALUES ('Pike', 300, 32.7, 35, 38.8, 5.9364, 4.3844);
INSERT INTO `fish` VALUES ('Pike', 300, 34.8, 37.3, 39.8, 6.2884, 4.0198);
INSERT INTO `fish` VALUES ('Pike', 430, 35.5, 38, 40.5, 7.29, 4.5765);
INSERT INTO `fish` VALUES ('Pike', 345, 36, 38.5, 41, 6.396, 3.977);
INSERT INTO `fish` VALUES ('Pike', 456, 40, 42.5, 45.5, 7.28, 4.3225);
INSERT INTO `fish` VALUES ('Pike', 510, 40, 42.5, 45.5, 6.825, 4.459);
INSERT INTO `fish` VALUES ('Pike', 540, 40.1, 43, 45.8, 7.786, 5.1296);
INSERT INTO `fish` VALUES ('Pike', 500, 42, 45, 48, 6.96, 4.896);
INSERT INTO `fish` VALUES ('Pike', 567, 43.2, 46, 48.7, 7.792, 4.87);
INSERT INTO `fish` VALUES ('Pike', 770, 44.8, 48, 51.2, 7.68, 5.376);
INSERT INTO `fish` VALUES ('Pike', 950, 48.3, 51.7, 55.1, 8.9262, 6.1712);
INSERT INTO `fish` VALUES ('Pike', 1250, 52, 56, 59.7, 10.6863, 6.9849);
INSERT INTO `fish` VALUES ('Pike', 1600, 56, 60, 64, 9.6, 6.144);
INSERT INTO `fish` VALUES ('Pike', 1550, 56, 60, 64, 9.6, 6.144);
INSERT INTO `fish` VALUES ('Pike', 1650, 59, 63.4, 68, 10.812, 7.48);
INSERT INTO `fish` VALUES ('Smelt', 6.7, 9.3, 9.8, 10.8, 1.7388, 1.0476);
INSERT INTO `fish` VALUES ('Smelt', 7.5, 10, 10.5, 11.6, 1.972, 1.16);
INSERT INTO `fish` VALUES ('Smelt', 7, 10.1, 10.6, 11.6, 1.7284, 1.1484);
INSERT INTO `fish` VALUES ('Smelt', 9.7, 10.4, 11, 12, 2.196, 1.38);
INSERT INTO `fish` VALUES ('Smelt', 9.8, 10.7, 11.2, 12.4, 2.0832, 1.2772);
INSERT INTO `fish` VALUES ('Smelt', 8.7, 10.8, 11.3, 12.6, 1.9782, 1.2852);
INSERT INTO `fish` VALUES ('Smelt', 10, 11.3, 11.8, 13.1, 2.2139, 1.2838);
INSERT INTO `fish` VALUES ('Smelt', 9.9, 11.3, 11.8, 13.1, 2.2139, 1.1659);
INSERT INTO `fish` VALUES ('Smelt', 9.8, 11.4, 12, 13.2, 2.2044, 1.1484);
INSERT INTO `fish` VALUES ('Smelt', 12.2, 11.5, 12.2, 13.4, 2.0904, 1.3936);
INSERT INTO `fish` VALUES ('Smelt', 13.4, 11.7, 12.4, 13.5, 2.43, 1.269);
INSERT INTO `fish` VALUES ('Smelt', 12.2, 12.1, 13, 13.8, 2.277, 1.2558);
INSERT INTO `fish` VALUES ('Smelt', 19.7, 13.2, 14.3, 15.2, 2.8728, 2.0672);
INSERT INTO `fish` VALUES ('Smelt', 19.9, 13.8, 15, 16.2, 2.9322, 1.8792);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('', '');
INSERT INTO `user` VALUES ('1', '123456');
INSERT INTO `user` VALUES ('123@mail.com', '123456');
INSERT INTO `user` VALUES ('1234@mail.com', '123456');
INSERT INTO `user` VALUES ('123456@mail.com', '123456');
INSERT INTO `user` VALUES ('2', '123456');
INSERT INTO `user` VALUES ('3', '123456');
INSERT INTO `user` VALUES ('456@mail.com', '123456');
INSERT INTO `user` VALUES ('789@mail.com', '123456');
INSERT INTO `user` VALUES ('987@mail.com', '123456');

-- ----------------------------
-- Table structure for 水质数据
-- ----------------------------
DROP TABLE IF EXISTS `水质数据`;
CREATE TABLE `水质数据`  (
  `date` date NOT NULL,
  `水温` double NULL DEFAULT NULL,
  `pH` double NULL DEFAULT NULL,
  `溶氧量` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `电导率` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `浊度` double NULL DEFAULT NULL,
  `高锰酸盐指数` double NULL DEFAULT NULL,
  `氨氮` double NULL DEFAULT NULL,
  `总磷` double NULL DEFAULT NULL,
  `总氮` double NULL DEFAULT NULL,
  `站点情况` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 水质数据
-- ----------------------------
INSERT INTO `水质数据` VALUES ('2024-05-01', 16.3, 8.1, '9.64', '880.9', 24.8, 4.44, 0.419, 0.082, 5.63, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-02', 10.7, 8.29, '11.92', '437.4', 2.9, 2.27, 0.025, 0.005, 1.3, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-03', 17, 7.83, '11.95', '731.54', 20.6, 2.67, 0.005, 0.091, 3.04, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-04', 17.4, 7.11, '12.86', '658.49', 11.1, 4.41, 0.067, 0.02, 1.39, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-05', 16.1, 7.07, '9.21', '597.85', 12.9, 6.06, 0.02, 0.028, 7.86, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-06', 15.7, 7, '14.15', '513.76', 10, 2.06, 0.099, 0.082, 5.1, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-07', 12.3, 7.81, '21.1', '775.25', 10.3, 5.13, 0.034, 0.024, 1.93, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-08', 15.8, 8.07, '12.45', '834.99', 20.6, 4.47, 0.074, 0.074, 4.33, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-09', 12.2, 7.88, '13.15', '849.2', 11, 5.97, 0.067, 0.099, 5.89, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-10', 13.4, 7.23, '12.38', '741.02', 12.3, 1.45, 0.014, 0.073, 6.43, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-11', 10.6, 8.47, '12.39', '657.49', 7.3, 2.31, 0.069, 0.068, 4.51, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-12', 12.8, 7.69, '19.23', '564.39', 18.6, 6.2, 0.002, 0.022, 3.23, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-13', 12.1, 7.03, '12.48', '849.48', 10.4, 2.07, 0.004, 0.004, 2.62, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-14', 12.3, 8.07, '12.12', '554.23', 14.9, 4.75, 0.012, 0.054, 3.42, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-15', 15.2, 7.25, '12.21', '722.71', 2.4, 2.55, 0.051, 0.061, 9.25, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-16', 19.1, 7.04, '12.35', '950.84', 6.2, 4.5, 0.019, 0.04, 5.98, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-17', 19.8, 8.48, '16.15', '586.09', 2.7, 6.85, 0.04, 0.017, 2.16, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-18', 11.9, 7.26, '19.15', '577.94', 13.9, 5.74, 0.042, 0.064, 2.84, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-19', 19.9, 8.84, '14.48', '631.41', 20.3, 7.14, 0.09, 0.068, 7.75, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-20', 14, 7.46, '11.3', '923.24', 19.1, 3.48, 0.026, 0.05, 0.2, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-21', 10.2, 8.75, '21.3', '721.95', 13.7, 1.97, 0.061, 0.045, 7.76, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-22', 18.8, 7.37, '13.6', '840.03', 9.8, 5.44, 0.026, 0.073, 8.2, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-23', 13.5, 7.61, '13.1', '534.32', 7.2, 6.27, 0.045, 0.033, 7.72, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-24', 11.2, 7.94, '12.48', '651.49', 5.7, 7.03, 0.05, 0.046, 3.99, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-25', 18.1, 8.33, '10.58', '882.8', 2.5, 5.45, 0.04, 0.051, 7.95, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-26', 19.3, 7.69, '10.42', '1175.1', 12.5, 3.86, 0.054, 0.042, 9.62, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-27', 16.2, 8.38, '12.49', '1121.8', 15.3, 4.32, 0.037, 0.03, 1.92, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-28', 19.6, 7.86, '10.05', '923.8', 6.9, 3.16, 0.035, 0.059, 6.35, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-29', 17.5, 8.75, '14.59', '1001.1', 5.6, 2.84, 0.034, 0.049, 4.49, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-30', 16.5, 7.83, '9.17', '987.5', 11.1, 3.96, 0.073, 0.051, 4.38, '正常');
INSERT INTO `水质数据` VALUES ('2024-05-31', 18.5, 8.17, '11.32', '1052.7', 13.2, 4.6, 0.034, 0.068, 4.27, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-01', 17, 7.66, '9.62', '1209.1', 38.7, 3.25, 0.259, 0.085, 6.68, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-02', 19.8, 8.69, '16.00', '1229.7', 13.3, 4.97, 0.108, 0.125, 7.05, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-03', 17.6, 8.98, '--', '1151.7', 1.7, 4.73, 0.035, 0.055, 6.06, '维护');
INSERT INTO `水质数据` VALUES ('2024-06-04', 14.1, 8.32, '10.76', '417.8', 6.7, 2.3, 0.025, 0.005, 1.17, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-07', 13.8, 8.11, '10.38', '500.8', 16.3, 1.29, 0.025, 0.005, 4.62, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-08', 15.4, 7.97, '9.46', '592.8', 3.3, 1.11, 0.025, 0.005, 5.27, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-09', 16.9, 8.48, '13.67', '595.6', 8.1, 2.7, 0.025, 0.005, 3.84, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-10', 14.1, 8.29, '7.25', '547.3', 21, 0.95, 0.025, 0.005, 11.26, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-11', 16.2, 8.1, '9.31', '1073.9', 13.3, 0.97, 0.087, 0.056, 0.98, '维护');
INSERT INTO `水质数据` VALUES ('2024-06-12', 16.4, 8.52, '15.61', '868.9', 3.9, 3.33, 0.047, 0.052, 1.52, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-13', 16.5, 9.13, '18.84', '1568.5', 5.4, 5.15, 0.049, 0.058, 1.22, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-14', 16.6, 8.3, '9.71', '282.6', 1.1, 1.57, 0.025, 0.005, 1.1, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-15', 14.2, 8.67, '13.90', '--', 8.5, 4.11, 0.096, 0.114, 2, '维护');
INSERT INTO `水质数据` VALUES ('2024-06-16', 15.1, 8.05, '9.61', '288.3', 5, 1.78, 0.025, 0.005, 1.14, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-17', 16, 8.02, '11.73', '972.7', 0.6, 5.59, 0.123, 0.052, 8.98, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-18', 14.7, 8.83, '9.87', '1006.2', 5.6, 3.73, 0.025, 0.043, 2.47, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-19', 14.2, 8.46, '12.28', '2642.4', 9.9, 4.95, 0.025, 0.058, 4.96, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-20', 14.5, 9.03, '16.35', '26761.6', 18.5, 10.86, 0.342, 0.146, 2.26, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-21', 14.9, 8.42, '10.72', '37459.5', 21.5, 2.47, 0.759, 0.033, 1.3, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-22', 16, 7.83, '8.12', '33905.1', 133.6, 8.86, 0.685, 0.193, 1.15, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-23', 14.1, 8.38, '11.33', '1783.6', 15.6, 8.07, 0.025, 0.098, 4.81, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-24', 13.6, 8.67, '9.78', '15880.5', 33.7, 8.43, 0.184, 0.137, 2.34, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-25', 14.9, 8.79, '14.18', '1876.2', 15.6, 6.53, 0.044, 0.073, 4.86, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-26', 13.8, 8.38, '10.66', '551.9', 2.2, 4.36, 0.032, 0.015, 0.99, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-27', 13.6, 8.24, '8.84', '515.2', 4.3, 2.67, 0.025, 0.015, 1.17, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-28', 17.3, 8.62, '11.37', '704.9', 4.9, 2.24, 0.025, 0.024, 8.92, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-29', 16.6, 8.25, '12.82', '828.8', 12.7, 2.28, 0.025, 0.03, 10.58, '正常');
INSERT INTO `水质数据` VALUES ('2024-06-30', 16.7, 8.75, '12.22', '750.9', 1.4, 6.15, 0.025, 0.021, 3.15, '维护');
INSERT INTO `水质数据` VALUES ('2024-07-01', 16.1, 8.92, '18.96', '515.0', 5.6, 3.37, 0.025, 0.03, 1.24, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-02', 17.6, 8.48, '24.16', '621.6', 30.1, 3.9, 0.025, 0.036, 3.29, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-03', 18.7, 7.9, '8.70', '1175.6', 13.1, 0.55, 0.058, 0.048, 5.66, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-04', 19, 8.28, '11.98', '961.2', 27.4, 1.04, 0.025, 0.013, 6.99, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-05', 17, 8.32, '6.18', '1382.8', 21.2, 6.95, 0.104, 0.132, 7.71, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-06', 12, 8.87, '14.74', '561.3', 1.8, 2.12, 0.025, 0.014, 3.14, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-07', 17.5, 9.01, '15.20', '768.5', 9.5, 4.94, 0.047, 0.077, 1.3, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-08', 13.9, 9.56, '22.07', '920.5', 7.3, 6.84, 0.047, 0.084, 1.19, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-09', 12.5, 8.17, '10.95', '497.5', 5.5, 1.74, 0.059, 0.029, 2.92, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-10', 15.2, 8.18, '11.51', '14148.2', 1.8, 2.6, 0.025, 0.025, 0.77, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-11', 16.1, 9.04, '27.77', '12107.5', 4.6, 8.13, 0.125, 0.044, 2.87, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-12', 11.1, 8.57, '13.41', '464.2', 2.1, 1.12, 0.025, 0.015, 2.28, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-13', 13.1, 8.44, '11.79', '776.8', 3.8, 2.94, 0.049, 0.014, 1.62, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-14', 16.5, 8.33, '10.38', '843.1', 12.6, 2.52, 0.051, 0.038, 3.18, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-15', 15.8, 8.52, '10.01', '1127.9', 10.5, 3.35, 0.06, 0.032, 2.49, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-16', 17, 7.97, '12.58', '762.3', 11.3, 5.12, 0.025, 0.033, 3.34, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-17', 18.1, 8.33, '10.58', '882.8', 2.5, 5.45, 0.04, 0.051, 7.95, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-18', 19.3, 7.69, '10.42', '1175.1', 12.5, 3.64, 0.054, 0.04, 9.18, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-19', 16.2, 8.38, '12.49', '1121.8', 15.3, 4.23, 0.037, 0.028, 1.9, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-20', 19.6, 7.86, '10.05', '923.8', 6.9, 3.87, 0.035, 0.057, 5.93, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-21', 17.5, 8.75, '14.59', '1001.1', 5.6, 2.84, 0.034, 0.049, 4.49, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-22', 16.5, 7.83, '9.17', '987.5', 11.1, 3.02, 0.073, 0.034, 3.86, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-23', 18.5, 8.17, '11.32', '1052.7', 13.2, 4.6, 0.034, 0.068, 4.27, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-24', 17, 7.66, '9.62', '1209.1', 38.7, 3.25, 0.259, 0.089, 6.98, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-25', 19.8, 8.69, '16.00', '1229.7', 13.3, 4.97, 0.108, 0.125, 7.05, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-26', 17.6, 8.98, '--', '1151.7', 1.7, 4.73, 0.044, 0.048, 6.08, '维护');
INSERT INTO `水质数据` VALUES ('2024-07-27', 14.1, 8.32, '10.76', '417.8', 6.7, 2.3, 0.025, 0.005, 1.17, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-28', 16.3, 8.1, '9.64', '880.9', 24.8, 4.85, 0.419, 0.076, 5.09, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-29', 10.7, 8.29, '11.92', '437.4', 2.9, 2.27, 0.025, 0.005, 1.3, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-30', 13.8, 8.11, '10.38', '500.8', 16.3, 1.29, 0.025, 0.005, 4.62, '正常');
INSERT INTO `水质数据` VALUES ('2024-07-31', 15.4, 7.97, '9.46', '592.8', 3.3, 1.11, 0.025, 0.005, 5.27, '正常');

SET FOREIGN_KEY_CHECKS = 1;
