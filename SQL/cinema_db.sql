/*
 Navicat Premium Data Transfer

 Source Server         : mysql pc
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : cinema_db

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 07/05/2023 22:57:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_banner
-- ----------------------------
DROP TABLE IF EXISTS `tbl_banner`;
CREATE TABLE `tbl_banner`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hinh_anh_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ma_banner` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2vekmlnjonlntjogcdewq1jgf`(`ma_banner`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_banner
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_cinema
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cinema`;
CREATE TABLE `tbl_cinema`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hinh_anh_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ten_cum_rap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ma_he_thong_rap` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKgrnjcp967w355umyj22dcqwkf`(`ma_he_thong_rap`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_cinema
-- ----------------------------
INSERT INTO `tbl_cinema` VALUES (1, 'Số 54A Nguyễn Chí Thanh, Phường Láng Thượng, Quận Đống Đa, Hà Nội', 'https://movie-booking-project.vercel.app/img/cumRap/lotte-cinema-cong-hoa-15383860949090.jpg', '0912123123', 'Cinema Nguyễn Chí Thanh', 1);
INSERT INTO `tbl_cinema` VALUES (2, 'Tầng 5, 461 Trương Định, Hoàng Mai, Hà Nội', NULL, '0912456123', 'Cinema Trương Định Plaza', 1);
INSERT INTO `tbl_cinema` VALUES (3, 'Tầng 5 - TTTM VINCOM CENTER TRẦN DUY HUNG, Đường Trần Duy Hưng, P. Trung Hòa, Q. Cầu Giấy, Hà Nội.', NULL, '0912452123', 'Cinema Vincom Trần Duy Hưng', 1);
INSERT INTO `tbl_cinema` VALUES (4, 'Tầng 5 TTTM Hà Nội Centerpoint, 27 Lê Văn Lương (Số 85 Lê Văn Lương cũ), Phường Nhân Chính, Quận Thanh Xuân, TP.Hà Nội.', NULL, '0912451234', 'Cinema Hà Nội Centerpoint', 1);
INSERT INTO `tbl_cinema` VALUES (5, '29 Liễu Giai, quận Ba Đình, Hà Nội', NULL, '19001245', 'Cinema Metropolis', 2);
INSERT INTO `tbl_cinema` VALUES (6, 'Tầng 3 & 4 – TTTM AEON MALL HÀ ĐÔNG, P. Dương Nội, Q. Hà Đông, Hà Nội', NULL, '19001234', 'Cinema Aeon Hà Đông', 2);
INSERT INTO `tbl_cinema` VALUES (7, 'Tầng 5, MIPEC Tower 229 Tây Sơn Quận Đống Đa, Hà Nội', NULL, '19001452', 'Cinema Mipec', 2);
INSERT INTO `tbl_cinema` VALUES (8, 'Tầng B1, TTTM Vincom Mega Mall Times City, 458 Minh Khai, Hai Bà Trưng, Hà Nội', NULL, '19002514', 'Cinema Time City', 2);
INSERT INTO `tbl_cinema` VALUES (9, 'Tầng 6, Toà nhà VinCom Center Hà Nội 191 đường Bà Triệu Quận Hai Bà Trưng Hà Nội', NULL, '19006017', 'Cinema Bà Trệu', 3);
INSERT INTO `tbl_cinema` VALUES (10, 'Tầng B2- Khu R4, TTTM Vincom Mega Mall Royal City , 72A Nguyễn Trãi,Thanh Xuân, Hà Nội.', NULL, '19006017', 'Cinema Royal City', 3);
INSERT INTO `tbl_cinema` VALUES (11, 'Tầng 3, TTTM Hồ Gươm Plaza, 110 Trần Phú, Phường Mỗ Lao, Quận Hà Đông, Hà Nội', NULL, '19006017', 'Cinema Hồ Gươm Plaza', 3);

-- ----------------------------
-- Table structure for tbl_comment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE `tbl_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avt_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `data_test` bit(1) NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `likes` smallint NOT NULL,
  `point` float NOT NULL,
  `ma_phim` bigint NULL DEFAULT NULL,
  `tai_khoan` bigint NULL DEFAULT NULL,
  `post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdu3g0wr7ax8hiv6xos49372d9`(`ma_phim`) USING BTREE,
  INDEX `FKsilvttc9nhslc7evk4hk7a53k`(`tai_khoan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_comment
-- ----------------------------
INSERT INTO `tbl_comment` VALUES (1, '1', '2023-05-07 19:35:29', b'1', 'dinh dong', 111, 5, 1, 1, 'comment');
INSERT INTO `tbl_comment` VALUES (2, '2', '2023-05-07 19:35:29', b'1', 'dinh dong2', 111, 5, 1, 1, 'comment');
INSERT INTO `tbl_comment` VALUES (3, 'admin', '2023-05-07 20:12:08', b'0', 'dinh dong2', 0, 5, 1, 1, 'test');
INSERT INTO `tbl_comment` VALUES (4, 'admin', '2023-05-07 20:16:17', b'0', 'dinh dong2', 0, 8, 1, 1, 'day la test moi');
INSERT INTO `tbl_comment` VALUES (5, 'admin', '2023-05-07 20:20:57', b'0', 'dinh dong2', 0, 8, 1, 1, 'aergsefg');
INSERT INTO `tbl_comment` VALUES (6, 'admin', '2023-05-07 20:22:00', b'0', 'dinh dong2', 0, 10, 1, 1, 'sedfhgxrfgs');
INSERT INTO `tbl_comment` VALUES (7, 'admin', '2023-05-07 20:25:27', b'0', 'dinh dong2', 0, 10, 1, 1, 'sthdrtjhdsrthgr');
INSERT INTO `tbl_comment` VALUES (8, 'admin', '2023-05-07 20:26:46', b'0', 'Dinh Dong', 0, 10, 1, 1, 'setrhdrtjhs');

-- ----------------------------
-- Table structure for tbl_movie
-- ----------------------------
DROP TABLE IF EXISTS `tbl_movie`;
CREATE TABLE `tbl_movie`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bi_danh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `danh_gia` int NOT NULL,
  `dao_dien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dien_vien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hinh_anh_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_show` bit(1) NOT NULL,
  `mo_ta` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ngay_khoi_chieu` date NULL DEFAULT NULL,
  `rated` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ten_phim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `the_loai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `thoi_luong_phim` tinyint NOT NULL,
  `trailer_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_movie
-- ----------------------------
INSERT INTO `tbl_movie` VALUES (1, 'bi danh', 0, NULL, NULL, 'https://ocwckgy6c1obj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/a/i/air_poster_vn_1_.jpg', b'1', 'day la mo ta day la mo ta day la mo takjaebrfoaljesbdvfaldbjlday la mo takjaebrfoaljesbdvfaldbjlvday la mo takjaebrfoaljesbdvfaldbjlday la mo takjaebrfoaljesbdvfaldbjlday la mo takjaebrfoaljesbdvfaldbjlday la mo takjaebrfoaljesbdvfaldbjlvday la mo takjaebrfoaljesbdvfaldbjlday la mo takjaebrfoaljesbdvfaldbjl', '2023-05-01', ' p ', 'AIR - THEO ĐUỔI MỘT HUYỀN THOẠI', 'Tâm lí', 120, 'https://www.youtube.com/watch?v=0j_EK9OwNwc');
INSERT INTO `tbl_movie` VALUES (2, 'the-flash', 5, 'Andy Muschietti', 'Ben Affleck, Michael Shannon, Michael Keaton', 'https://ocwckgy6c1obj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/r/s/rsz_the_flash.jpg', b'1', 'day la mo ta 2', '2023-06-16', 'c13', 'The Flash', 'Hành Động, Phiêu Lưu, Thần thoại', 120, 'https://www.youtube.com/watch?v=0j_EK9OwNwc');
INSERT INTO `tbl_movie` VALUES (3, 'super-mario-bros', 5, 'Aaron Horvath, Michael Jelenic', 'Chris Pratt, Anya Taylor-Joy, Charlie Day, …', 'https://ocwckgy6c1obj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/s/u/super_mario_bros._payoff_poster.jpg', b'1', 'Câu chuyện về cuộc phiêu lưu của anh em Super Mario đến vương quốc Nấm.', '2023-04-01', ' p ', 'ANH EM SUPER MARIO', 'Hài, Hoạt Hình, Phiêu Lưu', 93, 'https://www.youtube.com/watch?v=UGO_i2tf1BM');
INSERT INTO `tbl_movie` VALUES (4, 'khe-uoc', 0, 'Guy Ritchie', 'Jake Gyllenhaal, Alexander Ludwig, Antony Starr,…', 'https://ocwckgy6c1obj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/p/o/poster_payoff_khe_uoc_12.jpg', b'1', 'Trong nhiệm vụ cuối cùng ở Afghanistan, Trung sĩ John Kinley cùng đội với phiên dịch viên bản địa Ahmed. Khi đơn vị của họ bị phục kích, Kinley và Ahmed là 2 người sống sót duy nhất. Bị kẻ địch truy đuổi, Ahmed liều mạng đưa Kinley đang bị thương băng qua nhiều dặm đường địa hình khắc nghiệt đến nơi an toàn. Trở về Mỹ, Kinley biết rằng Ahmed và gia đình không dc cấp giấy thông hành tới Mỹ như đã hứa. Quyết tâm bảo vệ bạn mình và đền ơn cứu mạng, Kinley trở lại chiến trường để giúp Ahmed và gia đình trước khi lực lượng phiến quân phát hiện ra họ.', '2023-05-06', 'c18', 'KHẾ ƯỚC', 'Hành Động, Hồi hộp, Tội phạm', 123, 'https://www.youtube.com/watch?v=KHk2Dk-ZJnw');
INSERT INTO `tbl_movie` VALUES (5, 'fast-x', 5, 'Louis Leterrier', 'Vin Diesel, Jason Momoa, Brie Larson,…', 'https://ocwckgy6c1obj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/f/a/fast_x_700x1000px.jpg', b'1', 'Dom Toretto và gia đình của anh ấy bị trở thành mục tiêu của người con trai đầy thù hận của ông trùm ma túy Hernan Reyes.', '2023-05-19', 'c15', 'FAST AND FURIOUS X', 'Đua xe, Hành Động, Tội phạm', 125, 'https://www.youtube.com/watch?v=Jphd23nUCLs');
INSERT INTO `tbl_movie` VALUES (6, 'trànformer: rise-of-the-beast', 0, 'Steven Caple Jr.\r\n', 'Michelle Yeoh, Dominique Fishback, Ron Perlman', 'https://ocwckgy6c1obj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/t/f/tf7_700x1000.jpg', b'1', 'Bộ phim dựa trên sự kiện Beast Wars trong loạt phim hoạt hình \"Transformers\", nơi mà các robot có khả năng biến thành động vật khổng lồ cùng chiến đấu chống lại một mối đe dọa tiềm tàng.', '2023-06-09', 'c15', 'TRANSFORMERS: QUÁI THÚ TRỖI DẬY', 'Hành Động, Khoa Học Viễn Tưởng, Phiêu Lưu', 125, 'https://www.youtube.com/watch?v=FH4-_8oVWkw');

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_b8pdcpsskpvgwwxu1mey2x6dq`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES (1, 'QuanTri', 'QuanTri');
INSERT INTO `tbl_role` VALUES (2, 'KhachHang', 'KhachHang');

-- ----------------------------
-- Table structure for tbl_room
-- ----------------------------
DROP TABLE IF EXISTS `tbl_room`;
CREATE TABLE `tbl_room`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ten_rap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ma_cum_rap` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKal3fcuw8x6i09c8jaa3cj3x9o`(`ma_cum_rap`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_room
-- ----------------------------
INSERT INTO `tbl_room` VALUES (1, 'Rạp 1', 1);
INSERT INTO `tbl_room` VALUES (2, 'Rạp 2', 1);
INSERT INTO `tbl_room` VALUES (3, 'Rạp 3', 1);
INSERT INTO `tbl_room` VALUES (4, 'Rạp 4', 1);
INSERT INTO `tbl_room` VALUES (5, 'Rạp 5', 1);
INSERT INTO `tbl_room` VALUES (6, 'Rạp 6', 1);
INSERT INTO `tbl_room` VALUES (7, 'Rạp 1', 2);
INSERT INTO `tbl_room` VALUES (8, 'Rạp 2', 2);
INSERT INTO `tbl_room` VALUES (9, 'Rạp 3', 2);
INSERT INTO `tbl_room` VALUES (10, 'Rạp 4', 2);
INSERT INTO `tbl_room` VALUES (11, 'Rạp 5', 2);
INSERT INTO `tbl_room` VALUES (12, 'Rạp 6', 2);
INSERT INTO `tbl_room` VALUES (13, 'Rạp 1', 3);
INSERT INTO `tbl_room` VALUES (14, 'Rạp 2', 3);
INSERT INTO `tbl_room` VALUES (15, 'Rạp 3', 3);
INSERT INTO `tbl_room` VALUES (16, 'Rạp 4', 3);
INSERT INTO `tbl_room` VALUES (17, 'Rạp 5', 3);
INSERT INTO `tbl_room` VALUES (18, 'Rạp 6', 3);
INSERT INTO `tbl_room` VALUES (19, 'Rạp 1', 4);
INSERT INTO `tbl_room` VALUES (20, 'Rạp 2', 4);
INSERT INTO `tbl_room` VALUES (21, 'Rạp 3', 4);
INSERT INTO `tbl_room` VALUES (22, 'Rạp 4', 4);
INSERT INTO `tbl_room` VALUES (23, 'Rạp 5', 4);
INSERT INTO `tbl_room` VALUES (24, 'Rạp 6', 4);
INSERT INTO `tbl_room` VALUES (25, 'Rạp 1', 5);
INSERT INTO `tbl_room` VALUES (26, 'Rạp 2', 5);
INSERT INTO `tbl_room` VALUES (27, 'Rạp 3', 5);
INSERT INTO `tbl_room` VALUES (28, 'Rạp 4', 5);
INSERT INTO `tbl_room` VALUES (29, 'Rạp 5', 5);
INSERT INTO `tbl_room` VALUES (30, 'Rạp 6', 5);
INSERT INTO `tbl_room` VALUES (31, 'Rạp 1', 6);
INSERT INTO `tbl_room` VALUES (32, 'Rạp 2', 6);
INSERT INTO `tbl_room` VALUES (33, 'Rạp 3', 6);
INSERT INTO `tbl_room` VALUES (34, 'Rạp 4', 6);
INSERT INTO `tbl_room` VALUES (35, 'Rạp 5', 6);
INSERT INTO `tbl_room` VALUES (36, 'Rạp 6', 6);
INSERT INTO `tbl_room` VALUES (37, 'Rạp 1', 7);
INSERT INTO `tbl_room` VALUES (38, 'Rạp 2', 7);
INSERT INTO `tbl_room` VALUES (39, 'Rạp 3', 7);
INSERT INTO `tbl_room` VALUES (40, 'Rạp 4', 7);
INSERT INTO `tbl_room` VALUES (41, 'Rạp 5', 7);
INSERT INTO `tbl_room` VALUES (42, 'Rạp 6', 7);
INSERT INTO `tbl_room` VALUES (43, 'Rạp 1', 8);
INSERT INTO `tbl_room` VALUES (44, 'Rạp 2', 8);
INSERT INTO `tbl_room` VALUES (45, 'Rạp 3', 8);
INSERT INTO `tbl_room` VALUES (46, 'Rạp 4', 8);
INSERT INTO `tbl_room` VALUES (47, 'Rạp 1', 9);
INSERT INTO `tbl_room` VALUES (48, 'Rạp 2', 9);
INSERT INTO `tbl_room` VALUES (49, 'Rạp 3', 9);
INSERT INTO `tbl_room` VALUES (50, 'Rạp 4', 9);
INSERT INTO `tbl_room` VALUES (51, 'Rạp 1', 10);
INSERT INTO `tbl_room` VALUES (52, 'Rạp 2', 10);
INSERT INTO `tbl_room` VALUES (53, 'Rạp 3', 10);
INSERT INTO `tbl_room` VALUES (54, 'Rạp 4', 10);
INSERT INTO `tbl_room` VALUES (55, 'Rạp 1', 11);
INSERT INTO `tbl_room` VALUES (56, 'Rạp 2', 11);
INSERT INTO `tbl_room` VALUES (57, 'Rạp 3', 11);
INSERT INTO `tbl_room` VALUES (58, 'Rạp 4', 11);

-- ----------------------------
-- Table structure for tbl_schedule
-- ----------------------------
DROP TABLE IF EXISTS `tbl_schedule`;
CREATE TABLE `tbl_schedule`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gia_ve` int NOT NULL,
  `ngay_gioi_chieu` datetime NULL DEFAULT NULL,
  `movie_id` bigint NULL DEFAULT NULL,
  `room_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK7rl8lutliuls5pp31d0ajixot`(`movie_id`) USING BTREE,
  INDEX `FKavhnaufqupomif5y8ah8k41ff`(`room_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tbl_schedule
-- ----------------------------
INSERT INTO `tbl_schedule` VALUES (1, 70000, '2023-05-01 20:00:00', 1, 1);
INSERT INTO `tbl_schedule` VALUES (2, 70000, '2023-05-02 07:00:00', 1, 7);
INSERT INTO `tbl_schedule` VALUES (3, 90000, '2023-05-02 08:00:00', 2, 13);
INSERT INTO `tbl_schedule` VALUES (4, 90000, '2023-05-02 09:00:09', 1, 1);
INSERT INTO `tbl_schedule` VALUES (5, 90000, '2023-05-02 10:00:00', 2, 7);
INSERT INTO `tbl_schedule` VALUES (6, 90000, '2023-05-02 13:00:00', 1, 13);
INSERT INTO `tbl_schedule` VALUES (7, 90000, '2023-05-02 15:00:00', 2, 1);
INSERT INTO `tbl_schedule` VALUES (8, 90000, '2023-05-06 23:13:40', 1, 1);
INSERT INTO `tbl_schedule` VALUES (9, 10000, '2023-05-07 09:00:00', 1, 1);

-- ----------------------------
-- Table structure for tbl_seat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_seat`;
CREATE TABLE `tbl_seat`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `loai_ghe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `so_thu_tu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ten_ghe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ma_rap` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKpod0iqovv7ypy3ff0ygjfa2s6`(`ma_rap`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1601 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_seat
-- ----------------------------
INSERT INTO `tbl_seat` VALUES (1, 'basic', '1', 'A1', 1);
INSERT INTO `tbl_seat` VALUES (2, 'basic', '2', 'A2', 1);
INSERT INTO `tbl_seat` VALUES (3, 'basic', '3', 'A3', 1);
INSERT INTO `tbl_seat` VALUES (4, 'basic', '4', 'A4', 1);
INSERT INTO `tbl_seat` VALUES (5, 'basic', '5', 'A5', 1);
INSERT INTO `tbl_seat` VALUES (6, 'basic', '6', 'A6', 1);
INSERT INTO `tbl_seat` VALUES (7, 'basic', '7', 'A7', 1);
INSERT INTO `tbl_seat` VALUES (8, 'basic', '8', 'A8', 1);
INSERT INTO `tbl_seat` VALUES (9, 'basic', '9', 'A9', 1);
INSERT INTO `tbl_seat` VALUES (10, 'basic', '10', 'A10', 1);
INSERT INTO `tbl_seat` VALUES (11, 'basic', '11', 'A11', 1);
INSERT INTO `tbl_seat` VALUES (12, 'basic', '12', 'A12', 1);
INSERT INTO `tbl_seat` VALUES (13, 'basic', '13', 'A13', 1);
INSERT INTO `tbl_seat` VALUES (14, 'basic', '14', 'A14', 1);
INSERT INTO `tbl_seat` VALUES (15, 'basic', '15', 'A15', 1);
INSERT INTO `tbl_seat` VALUES (16, 'basic', '16', 'A16', 1);
INSERT INTO `tbl_seat` VALUES (17, 'basic', '17', 'B1', 1);
INSERT INTO `tbl_seat` VALUES (18, 'basic', '18', 'B2', 1);
INSERT INTO `tbl_seat` VALUES (19, 'basic', '19', 'B3', 1);
INSERT INTO `tbl_seat` VALUES (20, 'basic', '20', 'B4', 1);
INSERT INTO `tbl_seat` VALUES (21, 'basic', '21', 'B5', 1);
INSERT INTO `tbl_seat` VALUES (22, 'basic', '22', 'B6', 1);
INSERT INTO `tbl_seat` VALUES (23, 'basic', '23', 'B7', 1);
INSERT INTO `tbl_seat` VALUES (24, 'basic', '24', 'B8', 1);
INSERT INTO `tbl_seat` VALUES (25, 'basic', '25', 'B9', 1);
INSERT INTO `tbl_seat` VALUES (26, 'basic', '26', 'B10', 1);
INSERT INTO `tbl_seat` VALUES (27, 'basic', '27', 'B11', 1);
INSERT INTO `tbl_seat` VALUES (28, 'basic', '28', 'B12', 1);
INSERT INTO `tbl_seat` VALUES (29, 'basic', '29', 'B13', 1);
INSERT INTO `tbl_seat` VALUES (30, 'basic', '30', 'B14', 1);
INSERT INTO `tbl_seat` VALUES (31, 'basic', '31', 'B15', 1);
INSERT INTO `tbl_seat` VALUES (32, 'basic', '32', 'B16', 1);
INSERT INTO `tbl_seat` VALUES (33, 'basic', '33', 'C1', 1);
INSERT INTO `tbl_seat` VALUES (34, 'basic', '34', 'C2', 1);
INSERT INTO `tbl_seat` VALUES (35, 'vip', '35', 'C3', 1);
INSERT INTO `tbl_seat` VALUES (36, 'vip', '36', 'C4', 1);
INSERT INTO `tbl_seat` VALUES (37, 'vip', '37', 'C5', 1);
INSERT INTO `tbl_seat` VALUES (38, 'vip', '38', 'C6', 1);
INSERT INTO `tbl_seat` VALUES (39, 'vip', '39', 'C7', 1);
INSERT INTO `tbl_seat` VALUES (40, 'vip', '40', 'C8', 1);
INSERT INTO `tbl_seat` VALUES (41, 'vip', '41', 'C9', 1);
INSERT INTO `tbl_seat` VALUES (42, 'vip', '42', 'C10', 1);
INSERT INTO `tbl_seat` VALUES (43, 'vip', '43', 'C11', 1);
INSERT INTO `tbl_seat` VALUES (44, 'vip', '44', 'C12', 1);
INSERT INTO `tbl_seat` VALUES (45, 'vip', '45', 'C13', 1);
INSERT INTO `tbl_seat` VALUES (46, 'vip', '46', 'C14', 1);
INSERT INTO `tbl_seat` VALUES (47, 'basic', '47', 'C15', 1);
INSERT INTO `tbl_seat` VALUES (48, 'basic', '48', 'C16', 1);
INSERT INTO `tbl_seat` VALUES (49, 'basic', '49', 'D1', 1);
INSERT INTO `tbl_seat` VALUES (50, 'basic', '50', 'D2', 1);
INSERT INTO `tbl_seat` VALUES (51, 'vip', '51', 'D3', 1);
INSERT INTO `tbl_seat` VALUES (52, 'vip', '52', 'D4', 1);
INSERT INTO `tbl_seat` VALUES (53, 'vip', '53', 'D5', 1);
INSERT INTO `tbl_seat` VALUES (54, 'vip', '54', 'D6', 1);
INSERT INTO `tbl_seat` VALUES (55, 'vip', '55', 'D7', 1);
INSERT INTO `tbl_seat` VALUES (56, 'vip', '56', 'D8', 1);
INSERT INTO `tbl_seat` VALUES (57, 'vip', '57', 'D9', 1);
INSERT INTO `tbl_seat` VALUES (58, 'vip', '58', 'D10', 1);
INSERT INTO `tbl_seat` VALUES (59, 'vip', '59', 'D11', 1);
INSERT INTO `tbl_seat` VALUES (60, 'vip', '60', 'D12', 1);
INSERT INTO `tbl_seat` VALUES (61, 'vip', '61', 'D13', 1);
INSERT INTO `tbl_seat` VALUES (62, 'vip', '62', 'D14', 1);
INSERT INTO `tbl_seat` VALUES (63, 'basic', '63', 'D15', 1);
INSERT INTO `tbl_seat` VALUES (64, 'basic', '64', 'D16', 1);
INSERT INTO `tbl_seat` VALUES (65, 'basic', '65', 'E1', 1);
INSERT INTO `tbl_seat` VALUES (66, 'basic', '66', 'E2', 1);
INSERT INTO `tbl_seat` VALUES (67, 'vip', '67', 'E3', 1);
INSERT INTO `tbl_seat` VALUES (68, 'vip', '68', 'E4', 1);
INSERT INTO `tbl_seat` VALUES (69, 'vip', '69', 'E5', 1);
INSERT INTO `tbl_seat` VALUES (70, 'vip', '70', 'E6', 1);
INSERT INTO `tbl_seat` VALUES (71, 'vip', '71', 'E7', 1);
INSERT INTO `tbl_seat` VALUES (72, 'vip', '72', 'E8', 1);
INSERT INTO `tbl_seat` VALUES (73, 'vip', '73', 'E9', 1);
INSERT INTO `tbl_seat` VALUES (74, 'vip', '74', 'E10', 1);
INSERT INTO `tbl_seat` VALUES (75, 'vip', '75', 'E11', 1);
INSERT INTO `tbl_seat` VALUES (76, 'vip', '76', 'E12', 1);
INSERT INTO `tbl_seat` VALUES (77, 'vip', '77', 'E13', 1);
INSERT INTO `tbl_seat` VALUES (78, 'vip', '78', 'E14', 1);
INSERT INTO `tbl_seat` VALUES (79, 'basic', '79', 'E15', 1);
INSERT INTO `tbl_seat` VALUES (80, 'basic', '80', 'E16', 1);
INSERT INTO `tbl_seat` VALUES (81, 'basic', '81', 'F1', 1);
INSERT INTO `tbl_seat` VALUES (82, 'basic', '82', 'F2', 1);
INSERT INTO `tbl_seat` VALUES (83, 'vip', '83', 'F3', 1);
INSERT INTO `tbl_seat` VALUES (84, 'vip', '84', 'F4', 1);
INSERT INTO `tbl_seat` VALUES (85, 'vip', '85', 'F5', 1);
INSERT INTO `tbl_seat` VALUES (86, 'vip', '86', 'F6', 1);
INSERT INTO `tbl_seat` VALUES (87, 'vip', '87', 'F7', 1);
INSERT INTO `tbl_seat` VALUES (88, 'vip', '88', 'F8', 1);
INSERT INTO `tbl_seat` VALUES (89, 'vip', '89', 'F9', 1);
INSERT INTO `tbl_seat` VALUES (90, 'vip', '90', 'F10', 1);
INSERT INTO `tbl_seat` VALUES (91, 'vip', '91', 'F11', 1);
INSERT INTO `tbl_seat` VALUES (92, 'vip', '92', 'F12', 1);
INSERT INTO `tbl_seat` VALUES (93, 'vip', '93', 'F13', 1);
INSERT INTO `tbl_seat` VALUES (94, 'vip', '94', 'F14', 1);
INSERT INTO `tbl_seat` VALUES (95, 'basic', '95', 'F15', 1);
INSERT INTO `tbl_seat` VALUES (96, 'basic', '96', 'F16', 1);
INSERT INTO `tbl_seat` VALUES (97, 'basic', '97', 'G1', 1);
INSERT INTO `tbl_seat` VALUES (98, 'basic', '98', 'G2', 1);
INSERT INTO `tbl_seat` VALUES (99, 'vip', '99', 'G3', 1);
INSERT INTO `tbl_seat` VALUES (100, 'vip', '100', 'G4', 1);
INSERT INTO `tbl_seat` VALUES (101, 'vip', '101', 'G5', 1);
INSERT INTO `tbl_seat` VALUES (102, 'vip', '102', 'G6', 1);
INSERT INTO `tbl_seat` VALUES (103, 'vip', '103', 'G7', 1);
INSERT INTO `tbl_seat` VALUES (104, 'vip', '104', 'G8', 1);
INSERT INTO `tbl_seat` VALUES (105, 'vip', '105', 'G9', 1);
INSERT INTO `tbl_seat` VALUES (106, 'vip', '106', 'G10', 1);
INSERT INTO `tbl_seat` VALUES (107, 'vip', '107', 'G11', 1);
INSERT INTO `tbl_seat` VALUES (108, 'vip', '108', 'G12', 1);
INSERT INTO `tbl_seat` VALUES (109, 'vip', '109', 'G13', 1);
INSERT INTO `tbl_seat` VALUES (110, 'vip', '110', 'G14', 1);
INSERT INTO `tbl_seat` VALUES (111, 'basic', '111', 'G15', 1);
INSERT INTO `tbl_seat` VALUES (112, 'basic', '112', 'G16', 1);
INSERT INTO `tbl_seat` VALUES (113, 'basic', '113', 'H1', 1);
INSERT INTO `tbl_seat` VALUES (114, 'basic', '114', 'H2', 1);
INSERT INTO `tbl_seat` VALUES (115, 'vip', '115', 'H3', 1);
INSERT INTO `tbl_seat` VALUES (116, 'vip', '116', 'H4', 1);
INSERT INTO `tbl_seat` VALUES (117, 'vip', '117', 'H5', 1);
INSERT INTO `tbl_seat` VALUES (118, 'vip', '118', 'H6', 1);
INSERT INTO `tbl_seat` VALUES (119, 'vip', '119', 'H7', 1);
INSERT INTO `tbl_seat` VALUES (120, 'vip', '120', 'H8', 1);
INSERT INTO `tbl_seat` VALUES (121, 'vip', '121', 'H9', 1);
INSERT INTO `tbl_seat` VALUES (122, 'vip', '122', 'H10', 1);
INSERT INTO `tbl_seat` VALUES (123, 'vip', '123', 'H11', 1);
INSERT INTO `tbl_seat` VALUES (124, 'vip', '124', 'H12', 1);
INSERT INTO `tbl_seat` VALUES (125, 'vip', '125', 'H13', 1);
INSERT INTO `tbl_seat` VALUES (126, 'vip', '126', 'H14', 1);
INSERT INTO `tbl_seat` VALUES (127, 'basic', '127', 'H15', 1);
INSERT INTO `tbl_seat` VALUES (128, 'basic', '128', 'H16', 1);
INSERT INTO `tbl_seat` VALUES (129, 'basic', '129', 'I1', 1);
INSERT INTO `tbl_seat` VALUES (130, 'basic', '130', 'I2', 1);
INSERT INTO `tbl_seat` VALUES (131, 'basic', '131', 'I3', 1);
INSERT INTO `tbl_seat` VALUES (132, 'basic', '132', 'I4', 1);
INSERT INTO `tbl_seat` VALUES (133, 'basic', '133', 'I5', 1);
INSERT INTO `tbl_seat` VALUES (134, 'basic', '134', 'I6', 1);
INSERT INTO `tbl_seat` VALUES (135, 'basic', '135', 'I7', 1);
INSERT INTO `tbl_seat` VALUES (136, 'basic', '136', 'I8', 1);
INSERT INTO `tbl_seat` VALUES (137, 'basic', '137', 'I9', 1);
INSERT INTO `tbl_seat` VALUES (138, 'basic', '138', 'I10', 1);
INSERT INTO `tbl_seat` VALUES (139, 'basic', '139', 'I11', 1);
INSERT INTO `tbl_seat` VALUES (140, 'basic', '140', 'I12', 1);
INSERT INTO `tbl_seat` VALUES (141, 'basic', '141', 'I13', 1);
INSERT INTO `tbl_seat` VALUES (142, 'basic', '142', 'I14', 1);
INSERT INTO `tbl_seat` VALUES (143, 'basic', '143', 'I15', 1);
INSERT INTO `tbl_seat` VALUES (144, 'basic', '144', 'I16', 1);
INSERT INTO `tbl_seat` VALUES (145, 'basic', '145', 'J1', 1);
INSERT INTO `tbl_seat` VALUES (146, 'basic', '146', 'J2', 1);
INSERT INTO `tbl_seat` VALUES (147, 'basic', '147', 'J3', 1);
INSERT INTO `tbl_seat` VALUES (148, 'basic', '148', 'J4', 1);
INSERT INTO `tbl_seat` VALUES (149, 'basic', '149', 'J5', 1);
INSERT INTO `tbl_seat` VALUES (150, 'basic', '150', 'J6', 1);
INSERT INTO `tbl_seat` VALUES (151, 'basic', '151', 'J7', 1);
INSERT INTO `tbl_seat` VALUES (152, 'basic', '152', 'J8', 1);
INSERT INTO `tbl_seat` VALUES (153, 'basic', '153', 'J9', 1);
INSERT INTO `tbl_seat` VALUES (154, 'basic', '154', 'J10', 1);
INSERT INTO `tbl_seat` VALUES (155, 'basic', '155', 'J11', 1);
INSERT INTO `tbl_seat` VALUES (156, 'basic', '156', 'J12', 1);
INSERT INTO `tbl_seat` VALUES (157, 'basic', '157', 'J13', 1);
INSERT INTO `tbl_seat` VALUES (158, 'basic', '158', 'J14', 1);
INSERT INTO `tbl_seat` VALUES (159, 'basic', '159', 'J15', 1);
INSERT INTO `tbl_seat` VALUES (160, 'basic', '160', 'J16', 1);
INSERT INTO `tbl_seat` VALUES (161, 'basic', '1', 'A1', 2);
INSERT INTO `tbl_seat` VALUES (162, 'basic', '2', 'A2', 2);
INSERT INTO `tbl_seat` VALUES (163, 'basic', '3', 'A3', 2);
INSERT INTO `tbl_seat` VALUES (164, 'basic', '4', 'A4', 2);
INSERT INTO `tbl_seat` VALUES (165, 'basic', '5', 'A5', 2);
INSERT INTO `tbl_seat` VALUES (166, 'basic', '6', 'A6', 2);
INSERT INTO `tbl_seat` VALUES (167, 'basic', '7', 'A7', 2);
INSERT INTO `tbl_seat` VALUES (168, 'basic', '8', 'A8', 2);
INSERT INTO `tbl_seat` VALUES (169, 'basic', '9', 'A9', 2);
INSERT INTO `tbl_seat` VALUES (170, 'basic', '10', 'A10', 2);
INSERT INTO `tbl_seat` VALUES (171, 'basic', '11', 'A11', 2);
INSERT INTO `tbl_seat` VALUES (172, 'basic', '12', 'A12', 2);
INSERT INTO `tbl_seat` VALUES (173, 'basic', '13', 'A13', 2);
INSERT INTO `tbl_seat` VALUES (174, 'basic', '14', 'A14', 2);
INSERT INTO `tbl_seat` VALUES (175, 'basic', '15', 'A15', 2);
INSERT INTO `tbl_seat` VALUES (176, 'basic', '16', 'A16', 2);
INSERT INTO `tbl_seat` VALUES (177, 'basic', '17', 'B1', 2);
INSERT INTO `tbl_seat` VALUES (178, 'basic', '18', 'B2', 2);
INSERT INTO `tbl_seat` VALUES (179, 'basic', '19', 'B3', 2);
INSERT INTO `tbl_seat` VALUES (180, 'basic', '20', 'B4', 2);
INSERT INTO `tbl_seat` VALUES (181, 'basic', '21', 'B5', 2);
INSERT INTO `tbl_seat` VALUES (182, 'basic', '22', 'B6', 2);
INSERT INTO `tbl_seat` VALUES (183, 'basic', '23', 'B7', 2);
INSERT INTO `tbl_seat` VALUES (184, 'basic', '24', 'B8', 2);
INSERT INTO `tbl_seat` VALUES (185, 'basic', '25', 'B9', 2);
INSERT INTO `tbl_seat` VALUES (186, 'basic', '26', 'B10', 2);
INSERT INTO `tbl_seat` VALUES (187, 'basic', '27', 'B11', 2);
INSERT INTO `tbl_seat` VALUES (188, 'basic', '28', 'B12', 2);
INSERT INTO `tbl_seat` VALUES (189, 'basic', '29', 'B13', 2);
INSERT INTO `tbl_seat` VALUES (190, 'basic', '30', 'B14', 2);
INSERT INTO `tbl_seat` VALUES (191, 'basic', '31', 'B15', 2);
INSERT INTO `tbl_seat` VALUES (192, 'basic', '32', 'B16', 2);
INSERT INTO `tbl_seat` VALUES (193, 'basic', '33', 'C1', 2);
INSERT INTO `tbl_seat` VALUES (194, 'basic', '34', 'C2', 2);
INSERT INTO `tbl_seat` VALUES (195, 'vip', '35', 'C3', 2);
INSERT INTO `tbl_seat` VALUES (196, 'vip', '36', 'C4', 2);
INSERT INTO `tbl_seat` VALUES (197, 'vip', '37', 'C5', 2);
INSERT INTO `tbl_seat` VALUES (198, 'vip', '38', 'C6', 2);
INSERT INTO `tbl_seat` VALUES (199, 'vip', '39', 'C7', 2);
INSERT INTO `tbl_seat` VALUES (200, 'vip', '40', 'C8', 2);
INSERT INTO `tbl_seat` VALUES (201, 'vip', '41', 'C9', 2);
INSERT INTO `tbl_seat` VALUES (202, 'vip', '42', 'C10', 2);
INSERT INTO `tbl_seat` VALUES (203, 'vip', '43', 'C11', 2);
INSERT INTO `tbl_seat` VALUES (204, 'vip', '44', 'C12', 2);
INSERT INTO `tbl_seat` VALUES (205, 'vip', '45', 'C13', 2);
INSERT INTO `tbl_seat` VALUES (206, 'vip', '46', 'C14', 2);
INSERT INTO `tbl_seat` VALUES (207, 'basic', '47', 'C15', 2);
INSERT INTO `tbl_seat` VALUES (208, 'basic', '48', 'C16', 2);
INSERT INTO `tbl_seat` VALUES (209, 'basic', '49', 'D1', 2);
INSERT INTO `tbl_seat` VALUES (210, 'basic', '50', 'D2', 2);
INSERT INTO `tbl_seat` VALUES (211, 'vip', '51', 'D3', 2);
INSERT INTO `tbl_seat` VALUES (212, 'vip', '52', 'D4', 2);
INSERT INTO `tbl_seat` VALUES (213, 'vip', '53', 'D5', 2);
INSERT INTO `tbl_seat` VALUES (214, 'vip', '54', 'D6', 2);
INSERT INTO `tbl_seat` VALUES (215, 'vip', '55', 'D7', 2);
INSERT INTO `tbl_seat` VALUES (216, 'vip', '56', 'D8', 2);
INSERT INTO `tbl_seat` VALUES (217, 'vip', '57', 'D9', 2);
INSERT INTO `tbl_seat` VALUES (218, 'vip', '58', 'D10', 2);
INSERT INTO `tbl_seat` VALUES (219, 'vip', '59', 'D11', 2);
INSERT INTO `tbl_seat` VALUES (220, 'vip', '60', 'D12', 2);
INSERT INTO `tbl_seat` VALUES (221, 'vip', '61', 'D13', 2);
INSERT INTO `tbl_seat` VALUES (222, 'vip', '62', 'D14', 2);
INSERT INTO `tbl_seat` VALUES (223, 'basic', '63', 'D15', 2);
INSERT INTO `tbl_seat` VALUES (224, 'basic', '64', 'D16', 2);
INSERT INTO `tbl_seat` VALUES (225, 'basic', '65', 'E1', 2);
INSERT INTO `tbl_seat` VALUES (226, 'basic', '66', 'E2', 2);
INSERT INTO `tbl_seat` VALUES (227, 'vip', '67', 'E3', 2);
INSERT INTO `tbl_seat` VALUES (228, 'vip', '68', 'E4', 2);
INSERT INTO `tbl_seat` VALUES (229, 'vip', '69', 'E5', 2);
INSERT INTO `tbl_seat` VALUES (230, 'vip', '70', 'E6', 2);
INSERT INTO `tbl_seat` VALUES (231, 'vip', '71', 'E7', 2);
INSERT INTO `tbl_seat` VALUES (232, 'vip', '72', 'E8', 2);
INSERT INTO `tbl_seat` VALUES (233, 'vip', '73', 'E9', 2);
INSERT INTO `tbl_seat` VALUES (234, 'vip', '74', 'E10', 2);
INSERT INTO `tbl_seat` VALUES (235, 'vip', '75', 'E11', 2);
INSERT INTO `tbl_seat` VALUES (236, 'vip', '76', 'E12', 2);
INSERT INTO `tbl_seat` VALUES (237, 'vip', '77', 'E13', 2);
INSERT INTO `tbl_seat` VALUES (238, 'vip', '78', 'E14', 2);
INSERT INTO `tbl_seat` VALUES (239, 'basic', '79', 'E15', 2);
INSERT INTO `tbl_seat` VALUES (240, 'basic', '80', 'E16', 2);
INSERT INTO `tbl_seat` VALUES (241, 'basic', '81', 'F1', 2);
INSERT INTO `tbl_seat` VALUES (242, 'basic', '82', 'F2', 2);
INSERT INTO `tbl_seat` VALUES (243, 'vip', '83', 'F3', 2);
INSERT INTO `tbl_seat` VALUES (244, 'vip', '84', 'F4', 2);
INSERT INTO `tbl_seat` VALUES (245, 'vip', '85', 'F5', 2);
INSERT INTO `tbl_seat` VALUES (246, 'vip', '86', 'F6', 2);
INSERT INTO `tbl_seat` VALUES (247, 'vip', '87', 'F7', 2);
INSERT INTO `tbl_seat` VALUES (248, 'vip', '88', 'F8', 2);
INSERT INTO `tbl_seat` VALUES (249, 'vip', '89', 'F9', 2);
INSERT INTO `tbl_seat` VALUES (250, 'vip', '90', 'F10', 2);
INSERT INTO `tbl_seat` VALUES (251, 'vip', '91', 'F11', 2);
INSERT INTO `tbl_seat` VALUES (252, 'vip', '92', 'F12', 2);
INSERT INTO `tbl_seat` VALUES (253, 'vip', '93', 'F13', 2);
INSERT INTO `tbl_seat` VALUES (254, 'vip', '94', 'F14', 2);
INSERT INTO `tbl_seat` VALUES (255, 'basic', '95', 'F15', 2);
INSERT INTO `tbl_seat` VALUES (256, 'basic', '96', 'F16', 2);
INSERT INTO `tbl_seat` VALUES (257, 'basic', '97', 'G1', 2);
INSERT INTO `tbl_seat` VALUES (258, 'basic', '98', 'G2', 2);
INSERT INTO `tbl_seat` VALUES (259, 'vip', '99', 'G3', 2);
INSERT INTO `tbl_seat` VALUES (260, 'vip', '100', 'G4', 2);
INSERT INTO `tbl_seat` VALUES (261, 'vip', '101', 'G5', 2);
INSERT INTO `tbl_seat` VALUES (262, 'vip', '102', 'G6', 2);
INSERT INTO `tbl_seat` VALUES (263, 'vip', '103', 'G7', 2);
INSERT INTO `tbl_seat` VALUES (264, 'vip', '104', 'G8', 2);
INSERT INTO `tbl_seat` VALUES (265, 'vip', '105', 'G9', 2);
INSERT INTO `tbl_seat` VALUES (266, 'vip', '106', 'G10', 2);
INSERT INTO `tbl_seat` VALUES (267, 'vip', '107', 'G11', 2);
INSERT INTO `tbl_seat` VALUES (268, 'vip', '108', 'G12', 2);
INSERT INTO `tbl_seat` VALUES (269, 'vip', '109', 'G13', 2);
INSERT INTO `tbl_seat` VALUES (270, 'vip', '110', 'G14', 2);
INSERT INTO `tbl_seat` VALUES (271, 'basic', '111', 'G15', 2);
INSERT INTO `tbl_seat` VALUES (272, 'basic', '112', 'G16', 2);
INSERT INTO `tbl_seat` VALUES (273, 'basic', '113', 'H1', 2);
INSERT INTO `tbl_seat` VALUES (274, 'basic', '114', 'H2', 2);
INSERT INTO `tbl_seat` VALUES (275, 'vip', '115', 'H3', 2);
INSERT INTO `tbl_seat` VALUES (276, 'vip', '116', 'H4', 2);
INSERT INTO `tbl_seat` VALUES (277, 'vip', '117', 'H5', 2);
INSERT INTO `tbl_seat` VALUES (278, 'vip', '118', 'H6', 2);
INSERT INTO `tbl_seat` VALUES (279, 'vip', '119', 'H7', 2);
INSERT INTO `tbl_seat` VALUES (280, 'vip', '120', 'H8', 2);
INSERT INTO `tbl_seat` VALUES (281, 'vip', '121', 'H9', 2);
INSERT INTO `tbl_seat` VALUES (282, 'vip', '122', 'H10', 2);
INSERT INTO `tbl_seat` VALUES (283, 'vip', '123', 'H11', 2);
INSERT INTO `tbl_seat` VALUES (284, 'vip', '124', 'H12', 2);
INSERT INTO `tbl_seat` VALUES (285, 'vip', '125', 'H13', 2);
INSERT INTO `tbl_seat` VALUES (286, 'vip', '126', 'H14', 2);
INSERT INTO `tbl_seat` VALUES (287, 'basic', '127', 'H15', 2);
INSERT INTO `tbl_seat` VALUES (288, 'basic', '128', 'H16', 2);
INSERT INTO `tbl_seat` VALUES (289, 'basic', '129', 'I1', 2);
INSERT INTO `tbl_seat` VALUES (290, 'basic', '130', 'I2', 2);
INSERT INTO `tbl_seat` VALUES (291, 'basic', '131', 'I3', 2);
INSERT INTO `tbl_seat` VALUES (292, 'basic', '132', 'I4', 2);
INSERT INTO `tbl_seat` VALUES (293, 'basic', '133', 'I5', 2);
INSERT INTO `tbl_seat` VALUES (294, 'basic', '134', 'I6', 2);
INSERT INTO `tbl_seat` VALUES (295, 'basic', '135', 'I7', 2);
INSERT INTO `tbl_seat` VALUES (296, 'basic', '136', 'I8', 2);
INSERT INTO `tbl_seat` VALUES (297, 'basic', '137', 'I9', 2);
INSERT INTO `tbl_seat` VALUES (298, 'basic', '138', 'I10', 2);
INSERT INTO `tbl_seat` VALUES (299, 'basic', '139', 'I11', 2);
INSERT INTO `tbl_seat` VALUES (300, 'basic', '140', 'I12', 2);
INSERT INTO `tbl_seat` VALUES (301, 'basic', '141', 'I13', 2);
INSERT INTO `tbl_seat` VALUES (302, 'basic', '142', 'I14', 2);
INSERT INTO `tbl_seat` VALUES (303, 'basic', '143', 'I15', 2);
INSERT INTO `tbl_seat` VALUES (304, 'basic', '144', 'I16', 2);
INSERT INTO `tbl_seat` VALUES (305, 'basic', '145', 'J1', 2);
INSERT INTO `tbl_seat` VALUES (306, 'basic', '146', 'J2', 2);
INSERT INTO `tbl_seat` VALUES (307, 'basic', '147', 'J3', 2);
INSERT INTO `tbl_seat` VALUES (308, 'basic', '148', 'J4', 2);
INSERT INTO `tbl_seat` VALUES (309, 'basic', '149', 'J5', 2);
INSERT INTO `tbl_seat` VALUES (310, 'basic', '150', 'J6', 2);
INSERT INTO `tbl_seat` VALUES (311, 'basic', '151', 'J7', 2);
INSERT INTO `tbl_seat` VALUES (312, 'basic', '152', 'J8', 2);
INSERT INTO `tbl_seat` VALUES (313, 'basic', '153', 'J9', 2);
INSERT INTO `tbl_seat` VALUES (314, 'basic', '154', 'J10', 2);
INSERT INTO `tbl_seat` VALUES (315, 'basic', '155', 'J11', 2);
INSERT INTO `tbl_seat` VALUES (316, 'basic', '156', 'J12', 2);
INSERT INTO `tbl_seat` VALUES (317, 'basic', '157', 'J13', 2);
INSERT INTO `tbl_seat` VALUES (318, 'basic', '158', 'J14', 2);
INSERT INTO `tbl_seat` VALUES (319, 'basic', '159', 'J15', 2);
INSERT INTO `tbl_seat` VALUES (320, 'basic', '160', 'J16', 2);
INSERT INTO `tbl_seat` VALUES (321, 'basic', '1', 'A1', 3);
INSERT INTO `tbl_seat` VALUES (322, 'basic', '2', 'A2', 3);
INSERT INTO `tbl_seat` VALUES (323, 'basic', '3', 'A3', 3);
INSERT INTO `tbl_seat` VALUES (324, 'basic', '4', 'A4', 3);
INSERT INTO `tbl_seat` VALUES (325, 'basic', '5', 'A5', 3);
INSERT INTO `tbl_seat` VALUES (326, 'basic', '6', 'A6', 3);
INSERT INTO `tbl_seat` VALUES (327, 'basic', '7', 'A7', 3);
INSERT INTO `tbl_seat` VALUES (328, 'basic', '8', 'A8', 3);
INSERT INTO `tbl_seat` VALUES (329, 'basic', '9', 'A9', 3);
INSERT INTO `tbl_seat` VALUES (330, 'basic', '10', 'A10', 3);
INSERT INTO `tbl_seat` VALUES (331, 'basic', '11', 'A11', 3);
INSERT INTO `tbl_seat` VALUES (332, 'basic', '12', 'A12', 3);
INSERT INTO `tbl_seat` VALUES (333, 'basic', '13', 'A13', 3);
INSERT INTO `tbl_seat` VALUES (334, 'basic', '14', 'A14', 3);
INSERT INTO `tbl_seat` VALUES (335, 'basic', '15', 'A15', 3);
INSERT INTO `tbl_seat` VALUES (336, 'basic', '16', 'A16', 3);
INSERT INTO `tbl_seat` VALUES (337, 'basic', '17', 'B1', 3);
INSERT INTO `tbl_seat` VALUES (338, 'basic', '18', 'B2', 3);
INSERT INTO `tbl_seat` VALUES (339, 'basic', '19', 'B3', 3);
INSERT INTO `tbl_seat` VALUES (340, 'basic', '20', 'B4', 3);
INSERT INTO `tbl_seat` VALUES (341, 'basic', '21', 'B5', 3);
INSERT INTO `tbl_seat` VALUES (342, 'basic', '22', 'B6', 3);
INSERT INTO `tbl_seat` VALUES (343, 'basic', '23', 'B7', 3);
INSERT INTO `tbl_seat` VALUES (344, 'basic', '24', 'B8', 3);
INSERT INTO `tbl_seat` VALUES (345, 'basic', '25', 'B9', 3);
INSERT INTO `tbl_seat` VALUES (346, 'basic', '26', 'B10', 3);
INSERT INTO `tbl_seat` VALUES (347, 'basic', '27', 'B11', 3);
INSERT INTO `tbl_seat` VALUES (348, 'basic', '28', 'B12', 3);
INSERT INTO `tbl_seat` VALUES (349, 'basic', '29', 'B13', 3);
INSERT INTO `tbl_seat` VALUES (350, 'basic', '30', 'B14', 3);
INSERT INTO `tbl_seat` VALUES (351, 'basic', '31', 'B15', 3);
INSERT INTO `tbl_seat` VALUES (352, 'basic', '32', 'B16', 3);
INSERT INTO `tbl_seat` VALUES (353, 'basic', '33', 'C1', 3);
INSERT INTO `tbl_seat` VALUES (354, 'basic', '34', 'C2', 3);
INSERT INTO `tbl_seat` VALUES (355, 'vip', '35', 'C3', 3);
INSERT INTO `tbl_seat` VALUES (356, 'vip', '36', 'C4', 3);
INSERT INTO `tbl_seat` VALUES (357, 'vip', '37', 'C5', 3);
INSERT INTO `tbl_seat` VALUES (358, 'vip', '38', 'C6', 3);
INSERT INTO `tbl_seat` VALUES (359, 'vip', '39', 'C7', 3);
INSERT INTO `tbl_seat` VALUES (360, 'vip', '40', 'C8', 3);
INSERT INTO `tbl_seat` VALUES (361, 'vip', '41', 'C9', 3);
INSERT INTO `tbl_seat` VALUES (362, 'vip', '42', 'C10', 3);
INSERT INTO `tbl_seat` VALUES (363, 'vip', '43', 'C11', 3);
INSERT INTO `tbl_seat` VALUES (364, 'vip', '44', 'C12', 3);
INSERT INTO `tbl_seat` VALUES (365, 'vip', '45', 'C13', 3);
INSERT INTO `tbl_seat` VALUES (366, 'vip', '46', 'C14', 3);
INSERT INTO `tbl_seat` VALUES (367, 'basic', '47', 'C15', 3);
INSERT INTO `tbl_seat` VALUES (368, 'basic', '48', 'C16', 3);
INSERT INTO `tbl_seat` VALUES (369, 'basic', '49', 'D1', 3);
INSERT INTO `tbl_seat` VALUES (370, 'basic', '50', 'D2', 3);
INSERT INTO `tbl_seat` VALUES (371, 'vip', '51', 'D3', 3);
INSERT INTO `tbl_seat` VALUES (372, 'vip', '52', 'D4', 3);
INSERT INTO `tbl_seat` VALUES (373, 'vip', '53', 'D5', 3);
INSERT INTO `tbl_seat` VALUES (374, 'vip', '54', 'D6', 3);
INSERT INTO `tbl_seat` VALUES (375, 'vip', '55', 'D7', 3);
INSERT INTO `tbl_seat` VALUES (376, 'vip', '56', 'D8', 3);
INSERT INTO `tbl_seat` VALUES (377, 'vip', '57', 'D9', 3);
INSERT INTO `tbl_seat` VALUES (378, 'vip', '58', 'D10', 3);
INSERT INTO `tbl_seat` VALUES (379, 'vip', '59', 'D11', 3);
INSERT INTO `tbl_seat` VALUES (380, 'vip', '60', 'D12', 3);
INSERT INTO `tbl_seat` VALUES (381, 'vip', '61', 'D13', 3);
INSERT INTO `tbl_seat` VALUES (382, 'vip', '62', 'D14', 3);
INSERT INTO `tbl_seat` VALUES (383, 'basic', '63', 'D15', 3);
INSERT INTO `tbl_seat` VALUES (384, 'basic', '64', 'D16', 3);
INSERT INTO `tbl_seat` VALUES (385, 'basic', '65', 'E1', 3);
INSERT INTO `tbl_seat` VALUES (386, 'basic', '66', 'E2', 3);
INSERT INTO `tbl_seat` VALUES (387, 'vip', '67', 'E3', 3);
INSERT INTO `tbl_seat` VALUES (388, 'vip', '68', 'E4', 3);
INSERT INTO `tbl_seat` VALUES (389, 'vip', '69', 'E5', 3);
INSERT INTO `tbl_seat` VALUES (390, 'vip', '70', 'E6', 3);
INSERT INTO `tbl_seat` VALUES (391, 'vip', '71', 'E7', 3);
INSERT INTO `tbl_seat` VALUES (392, 'vip', '72', 'E8', 3);
INSERT INTO `tbl_seat` VALUES (393, 'vip', '73', 'E9', 3);
INSERT INTO `tbl_seat` VALUES (394, 'vip', '74', 'E10', 3);
INSERT INTO `tbl_seat` VALUES (395, 'vip', '75', 'E11', 3);
INSERT INTO `tbl_seat` VALUES (396, 'vip', '76', 'E12', 3);
INSERT INTO `tbl_seat` VALUES (397, 'vip', '77', 'E13', 3);
INSERT INTO `tbl_seat` VALUES (398, 'vip', '78', 'E14', 3);
INSERT INTO `tbl_seat` VALUES (399, 'basic', '79', 'E15', 3);
INSERT INTO `tbl_seat` VALUES (400, 'basic', '80', 'E16', 3);
INSERT INTO `tbl_seat` VALUES (401, 'basic', '81', 'F1', 3);
INSERT INTO `tbl_seat` VALUES (402, 'basic', '82', 'F2', 3);
INSERT INTO `tbl_seat` VALUES (403, 'vip', '83', 'F3', 3);
INSERT INTO `tbl_seat` VALUES (404, 'vip', '84', 'F4', 3);
INSERT INTO `tbl_seat` VALUES (405, 'vip', '85', 'F5', 3);
INSERT INTO `tbl_seat` VALUES (406, 'vip', '86', 'F6', 3);
INSERT INTO `tbl_seat` VALUES (407, 'vip', '87', 'F7', 3);
INSERT INTO `tbl_seat` VALUES (408, 'vip', '88', 'F8', 3);
INSERT INTO `tbl_seat` VALUES (409, 'vip', '89', 'F9', 3);
INSERT INTO `tbl_seat` VALUES (410, 'vip', '90', 'F10', 3);
INSERT INTO `tbl_seat` VALUES (411, 'vip', '91', 'F11', 3);
INSERT INTO `tbl_seat` VALUES (412, 'vip', '92', 'F12', 3);
INSERT INTO `tbl_seat` VALUES (413, 'vip', '93', 'F13', 3);
INSERT INTO `tbl_seat` VALUES (414, 'vip', '94', 'F14', 3);
INSERT INTO `tbl_seat` VALUES (415, 'basic', '95', 'F15', 3);
INSERT INTO `tbl_seat` VALUES (416, 'basic', '96', 'F16', 3);
INSERT INTO `tbl_seat` VALUES (417, 'basic', '97', 'G1', 3);
INSERT INTO `tbl_seat` VALUES (418, 'basic', '98', 'G2', 3);
INSERT INTO `tbl_seat` VALUES (419, 'vip', '99', 'G3', 3);
INSERT INTO `tbl_seat` VALUES (420, 'vip', '100', 'G4', 3);
INSERT INTO `tbl_seat` VALUES (421, 'vip', '101', 'G5', 3);
INSERT INTO `tbl_seat` VALUES (422, 'vip', '102', 'G6', 3);
INSERT INTO `tbl_seat` VALUES (423, 'vip', '103', 'G7', 3);
INSERT INTO `tbl_seat` VALUES (424, 'vip', '104', 'G8', 3);
INSERT INTO `tbl_seat` VALUES (425, 'vip', '105', 'G9', 3);
INSERT INTO `tbl_seat` VALUES (426, 'vip', '106', 'G10', 3);
INSERT INTO `tbl_seat` VALUES (427, 'vip', '107', 'G11', 3);
INSERT INTO `tbl_seat` VALUES (428, 'vip', '108', 'G12', 3);
INSERT INTO `tbl_seat` VALUES (429, 'vip', '109', 'G13', 3);
INSERT INTO `tbl_seat` VALUES (430, 'vip', '110', 'G14', 3);
INSERT INTO `tbl_seat` VALUES (431, 'basic', '111', 'G15', 3);
INSERT INTO `tbl_seat` VALUES (432, 'basic', '112', 'G16', 3);
INSERT INTO `tbl_seat` VALUES (433, 'basic', '113', 'H1', 3);
INSERT INTO `tbl_seat` VALUES (434, 'basic', '114', 'H2', 3);
INSERT INTO `tbl_seat` VALUES (435, 'vip', '115', 'H3', 3);
INSERT INTO `tbl_seat` VALUES (436, 'vip', '116', 'H4', 3);
INSERT INTO `tbl_seat` VALUES (437, 'vip', '117', 'H5', 3);
INSERT INTO `tbl_seat` VALUES (438, 'vip', '118', 'H6', 3);
INSERT INTO `tbl_seat` VALUES (439, 'vip', '119', 'H7', 3);
INSERT INTO `tbl_seat` VALUES (440, 'vip', '120', 'H8', 3);
INSERT INTO `tbl_seat` VALUES (441, 'vip', '121', 'H9', 3);
INSERT INTO `tbl_seat` VALUES (442, 'vip', '122', 'H10', 3);
INSERT INTO `tbl_seat` VALUES (443, 'vip', '123', 'H11', 3);
INSERT INTO `tbl_seat` VALUES (444, 'vip', '124', 'H12', 3);
INSERT INTO `tbl_seat` VALUES (445, 'vip', '125', 'H13', 3);
INSERT INTO `tbl_seat` VALUES (446, 'vip', '126', 'H14', 3);
INSERT INTO `tbl_seat` VALUES (447, 'basic', '127', 'H15', 3);
INSERT INTO `tbl_seat` VALUES (448, 'basic', '128', 'H16', 3);
INSERT INTO `tbl_seat` VALUES (449, 'basic', '129', 'I1', 3);
INSERT INTO `tbl_seat` VALUES (450, 'basic', '130', 'I2', 3);
INSERT INTO `tbl_seat` VALUES (451, 'basic', '131', 'I3', 3);
INSERT INTO `tbl_seat` VALUES (452, 'basic', '132', 'I4', 3);
INSERT INTO `tbl_seat` VALUES (453, 'basic', '133', 'I5', 3);
INSERT INTO `tbl_seat` VALUES (454, 'basic', '134', 'I6', 3);
INSERT INTO `tbl_seat` VALUES (455, 'basic', '135', 'I7', 3);
INSERT INTO `tbl_seat` VALUES (456, 'basic', '136', 'I8', 3);
INSERT INTO `tbl_seat` VALUES (457, 'basic', '137', 'I9', 3);
INSERT INTO `tbl_seat` VALUES (458, 'basic', '138', 'I10', 3);
INSERT INTO `tbl_seat` VALUES (459, 'basic', '139', 'I11', 3);
INSERT INTO `tbl_seat` VALUES (460, 'basic', '140', 'I12', 3);
INSERT INTO `tbl_seat` VALUES (461, 'basic', '141', 'I13', 3);
INSERT INTO `tbl_seat` VALUES (462, 'basic', '142', 'I14', 3);
INSERT INTO `tbl_seat` VALUES (463, 'basic', '143', 'I15', 3);
INSERT INTO `tbl_seat` VALUES (464, 'basic', '144', 'I16', 3);
INSERT INTO `tbl_seat` VALUES (465, 'basic', '145', 'J1', 3);
INSERT INTO `tbl_seat` VALUES (466, 'basic', '146', 'J2', 3);
INSERT INTO `tbl_seat` VALUES (467, 'basic', '147', 'J3', 3);
INSERT INTO `tbl_seat` VALUES (468, 'basic', '148', 'J4', 3);
INSERT INTO `tbl_seat` VALUES (469, 'basic', '149', 'J5', 3);
INSERT INTO `tbl_seat` VALUES (470, 'basic', '150', 'J6', 3);
INSERT INTO `tbl_seat` VALUES (471, 'basic', '151', 'J7', 3);
INSERT INTO `tbl_seat` VALUES (472, 'basic', '152', 'J8', 3);
INSERT INTO `tbl_seat` VALUES (473, 'basic', '153', 'J9', 3);
INSERT INTO `tbl_seat` VALUES (474, 'basic', '154', 'J10', 3);
INSERT INTO `tbl_seat` VALUES (475, 'basic', '155', 'J11', 3);
INSERT INTO `tbl_seat` VALUES (476, 'basic', '156', 'J12', 3);
INSERT INTO `tbl_seat` VALUES (477, 'basic', '157', 'J13', 3);
INSERT INTO `tbl_seat` VALUES (478, 'basic', '158', 'J14', 3);
INSERT INTO `tbl_seat` VALUES (479, 'basic', '159', 'J15', 3);
INSERT INTO `tbl_seat` VALUES (480, 'basic', '160', 'J16', 3);
INSERT INTO `tbl_seat` VALUES (481, 'basic', '1', 'A1', 4);
INSERT INTO `tbl_seat` VALUES (482, 'basic', '2', 'A2', 4);
INSERT INTO `tbl_seat` VALUES (483, 'basic', '3', 'A3', 4);
INSERT INTO `tbl_seat` VALUES (484, 'basic', '4', 'A4', 4);
INSERT INTO `tbl_seat` VALUES (485, 'basic', '5', 'A5', 4);
INSERT INTO `tbl_seat` VALUES (486, 'basic', '6', 'A6', 4);
INSERT INTO `tbl_seat` VALUES (487, 'basic', '7', 'A7', 4);
INSERT INTO `tbl_seat` VALUES (488, 'basic', '8', 'A8', 4);
INSERT INTO `tbl_seat` VALUES (489, 'basic', '9', 'A9', 4);
INSERT INTO `tbl_seat` VALUES (490, 'basic', '10', 'A10', 4);
INSERT INTO `tbl_seat` VALUES (491, 'basic', '11', 'A11', 4);
INSERT INTO `tbl_seat` VALUES (492, 'basic', '12', 'A12', 4);
INSERT INTO `tbl_seat` VALUES (493, 'basic', '13', 'A13', 4);
INSERT INTO `tbl_seat` VALUES (494, 'basic', '14', 'A14', 4);
INSERT INTO `tbl_seat` VALUES (495, 'basic', '15', 'A15', 4);
INSERT INTO `tbl_seat` VALUES (496, 'basic', '16', 'A16', 4);
INSERT INTO `tbl_seat` VALUES (497, 'basic', '17', 'B1', 4);
INSERT INTO `tbl_seat` VALUES (498, 'basic', '18', 'B2', 4);
INSERT INTO `tbl_seat` VALUES (499, 'basic', '19', 'B3', 4);
INSERT INTO `tbl_seat` VALUES (500, 'basic', '20', 'B4', 4);
INSERT INTO `tbl_seat` VALUES (501, 'basic', '21', 'B5', 4);
INSERT INTO `tbl_seat` VALUES (502, 'basic', '22', 'B6', 4);
INSERT INTO `tbl_seat` VALUES (503, 'basic', '23', 'B7', 4);
INSERT INTO `tbl_seat` VALUES (504, 'basic', '24', 'B8', 4);
INSERT INTO `tbl_seat` VALUES (505, 'basic', '25', 'B9', 4);
INSERT INTO `tbl_seat` VALUES (506, 'basic', '26', 'B10', 4);
INSERT INTO `tbl_seat` VALUES (507, 'basic', '27', 'B11', 4);
INSERT INTO `tbl_seat` VALUES (508, 'basic', '28', 'B12', 4);
INSERT INTO `tbl_seat` VALUES (509, 'basic', '29', 'B13', 4);
INSERT INTO `tbl_seat` VALUES (510, 'basic', '30', 'B14', 4);
INSERT INTO `tbl_seat` VALUES (511, 'basic', '31', 'B15', 4);
INSERT INTO `tbl_seat` VALUES (512, 'basic', '32', 'B16', 4);
INSERT INTO `tbl_seat` VALUES (513, 'basic', '33', 'C1', 4);
INSERT INTO `tbl_seat` VALUES (514, 'basic', '34', 'C2', 4);
INSERT INTO `tbl_seat` VALUES (515, 'vip', '35', 'C3', 4);
INSERT INTO `tbl_seat` VALUES (516, 'vip', '36', 'C4', 4);
INSERT INTO `tbl_seat` VALUES (517, 'vip', '37', 'C5', 4);
INSERT INTO `tbl_seat` VALUES (518, 'vip', '38', 'C6', 4);
INSERT INTO `tbl_seat` VALUES (519, 'vip', '39', 'C7', 4);
INSERT INTO `tbl_seat` VALUES (520, 'vip', '40', 'C8', 4);
INSERT INTO `tbl_seat` VALUES (521, 'vip', '41', 'C9', 4);
INSERT INTO `tbl_seat` VALUES (522, 'vip', '42', 'C10', 4);
INSERT INTO `tbl_seat` VALUES (523, 'vip', '43', 'C11', 4);
INSERT INTO `tbl_seat` VALUES (524, 'vip', '44', 'C12', 4);
INSERT INTO `tbl_seat` VALUES (525, 'vip', '45', 'C13', 4);
INSERT INTO `tbl_seat` VALUES (526, 'vip', '46', 'C14', 4);
INSERT INTO `tbl_seat` VALUES (527, 'basic', '47', 'C15', 4);
INSERT INTO `tbl_seat` VALUES (528, 'basic', '48', 'C16', 4);
INSERT INTO `tbl_seat` VALUES (529, 'basic', '49', 'D1', 4);
INSERT INTO `tbl_seat` VALUES (530, 'basic', '50', 'D2', 4);
INSERT INTO `tbl_seat` VALUES (531, 'vip', '51', 'D3', 4);
INSERT INTO `tbl_seat` VALUES (532, 'vip', '52', 'D4', 4);
INSERT INTO `tbl_seat` VALUES (533, 'vip', '53', 'D5', 4);
INSERT INTO `tbl_seat` VALUES (534, 'vip', '54', 'D6', 4);
INSERT INTO `tbl_seat` VALUES (535, 'vip', '55', 'D7', 4);
INSERT INTO `tbl_seat` VALUES (536, 'vip', '56', 'D8', 4);
INSERT INTO `tbl_seat` VALUES (537, 'vip', '57', 'D9', 4);
INSERT INTO `tbl_seat` VALUES (538, 'vip', '58', 'D10', 4);
INSERT INTO `tbl_seat` VALUES (539, 'vip', '59', 'D11', 4);
INSERT INTO `tbl_seat` VALUES (540, 'vip', '60', 'D12', 4);
INSERT INTO `tbl_seat` VALUES (541, 'vip', '61', 'D13', 4);
INSERT INTO `tbl_seat` VALUES (542, 'vip', '62', 'D14', 4);
INSERT INTO `tbl_seat` VALUES (543, 'basic', '63', 'D15', 4);
INSERT INTO `tbl_seat` VALUES (544, 'basic', '64', 'D16', 4);
INSERT INTO `tbl_seat` VALUES (545, 'basic', '65', 'E1', 4);
INSERT INTO `tbl_seat` VALUES (546, 'basic', '66', 'E2', 4);
INSERT INTO `tbl_seat` VALUES (547, 'vip', '67', 'E3', 4);
INSERT INTO `tbl_seat` VALUES (548, 'vip', '68', 'E4', 4);
INSERT INTO `tbl_seat` VALUES (549, 'vip', '69', 'E5', 4);
INSERT INTO `tbl_seat` VALUES (550, 'vip', '70', 'E6', 4);
INSERT INTO `tbl_seat` VALUES (551, 'vip', '71', 'E7', 4);
INSERT INTO `tbl_seat` VALUES (552, 'vip', '72', 'E8', 4);
INSERT INTO `tbl_seat` VALUES (553, 'vip', '73', 'E9', 4);
INSERT INTO `tbl_seat` VALUES (554, 'vip', '74', 'E10', 4);
INSERT INTO `tbl_seat` VALUES (555, 'vip', '75', 'E11', 4);
INSERT INTO `tbl_seat` VALUES (556, 'vip', '76', 'E12', 4);
INSERT INTO `tbl_seat` VALUES (557, 'vip', '77', 'E13', 4);
INSERT INTO `tbl_seat` VALUES (558, 'vip', '78', 'E14', 4);
INSERT INTO `tbl_seat` VALUES (559, 'basic', '79', 'E15', 4);
INSERT INTO `tbl_seat` VALUES (560, 'basic', '80', 'E16', 4);
INSERT INTO `tbl_seat` VALUES (561, 'basic', '81', 'F1', 4);
INSERT INTO `tbl_seat` VALUES (562, 'basic', '82', 'F2', 4);
INSERT INTO `tbl_seat` VALUES (563, 'vip', '83', 'F3', 4);
INSERT INTO `tbl_seat` VALUES (564, 'vip', '84', 'F4', 4);
INSERT INTO `tbl_seat` VALUES (565, 'vip', '85', 'F5', 4);
INSERT INTO `tbl_seat` VALUES (566, 'vip', '86', 'F6', 4);
INSERT INTO `tbl_seat` VALUES (567, 'vip', '87', 'F7', 4);
INSERT INTO `tbl_seat` VALUES (568, 'vip', '88', 'F8', 4);
INSERT INTO `tbl_seat` VALUES (569, 'vip', '89', 'F9', 4);
INSERT INTO `tbl_seat` VALUES (570, 'vip', '90', 'F10', 4);
INSERT INTO `tbl_seat` VALUES (571, 'vip', '91', 'F11', 4);
INSERT INTO `tbl_seat` VALUES (572, 'vip', '92', 'F12', 4);
INSERT INTO `tbl_seat` VALUES (573, 'vip', '93', 'F13', 4);
INSERT INTO `tbl_seat` VALUES (574, 'vip', '94', 'F14', 4);
INSERT INTO `tbl_seat` VALUES (575, 'basic', '95', 'F15', 4);
INSERT INTO `tbl_seat` VALUES (576, 'basic', '96', 'F16', 4);
INSERT INTO `tbl_seat` VALUES (577, 'basic', '97', 'G1', 4);
INSERT INTO `tbl_seat` VALUES (578, 'basic', '98', 'G2', 4);
INSERT INTO `tbl_seat` VALUES (579, 'vip', '99', 'G3', 4);
INSERT INTO `tbl_seat` VALUES (580, 'vip', '100', 'G4', 4);
INSERT INTO `tbl_seat` VALUES (581, 'vip', '101', 'G5', 4);
INSERT INTO `tbl_seat` VALUES (582, 'vip', '102', 'G6', 4);
INSERT INTO `tbl_seat` VALUES (583, 'vip', '103', 'G7', 4);
INSERT INTO `tbl_seat` VALUES (584, 'vip', '104', 'G8', 4);
INSERT INTO `tbl_seat` VALUES (585, 'vip', '105', 'G9', 4);
INSERT INTO `tbl_seat` VALUES (586, 'vip', '106', 'G10', 4);
INSERT INTO `tbl_seat` VALUES (587, 'vip', '107', 'G11', 4);
INSERT INTO `tbl_seat` VALUES (588, 'vip', '108', 'G12', 4);
INSERT INTO `tbl_seat` VALUES (589, 'vip', '109', 'G13', 4);
INSERT INTO `tbl_seat` VALUES (590, 'vip', '110', 'G14', 4);
INSERT INTO `tbl_seat` VALUES (591, 'basic', '111', 'G15', 4);
INSERT INTO `tbl_seat` VALUES (592, 'basic', '112', 'G16', 4);
INSERT INTO `tbl_seat` VALUES (593, 'basic', '113', 'H1', 4);
INSERT INTO `tbl_seat` VALUES (594, 'basic', '114', 'H2', 4);
INSERT INTO `tbl_seat` VALUES (595, 'vip', '115', 'H3', 4);
INSERT INTO `tbl_seat` VALUES (596, 'vip', '116', 'H4', 4);
INSERT INTO `tbl_seat` VALUES (597, 'vip', '117', 'H5', 4);
INSERT INTO `tbl_seat` VALUES (598, 'vip', '118', 'H6', 4);
INSERT INTO `tbl_seat` VALUES (599, 'vip', '119', 'H7', 4);
INSERT INTO `tbl_seat` VALUES (600, 'vip', '120', 'H8', 4);
INSERT INTO `tbl_seat` VALUES (601, 'vip', '121', 'H9', 4);
INSERT INTO `tbl_seat` VALUES (602, 'vip', '122', 'H10', 4);
INSERT INTO `tbl_seat` VALUES (603, 'vip', '123', 'H11', 4);
INSERT INTO `tbl_seat` VALUES (604, 'vip', '124', 'H12', 4);
INSERT INTO `tbl_seat` VALUES (605, 'vip', '125', 'H13', 4);
INSERT INTO `tbl_seat` VALUES (606, 'vip', '126', 'H14', 4);
INSERT INTO `tbl_seat` VALUES (607, 'basic', '127', 'H15', 4);
INSERT INTO `tbl_seat` VALUES (608, 'basic', '128', 'H16', 4);
INSERT INTO `tbl_seat` VALUES (609, 'basic', '129', 'I1', 4);
INSERT INTO `tbl_seat` VALUES (610, 'basic', '130', 'I2', 4);
INSERT INTO `tbl_seat` VALUES (611, 'basic', '131', 'I3', 4);
INSERT INTO `tbl_seat` VALUES (612, 'basic', '132', 'I4', 4);
INSERT INTO `tbl_seat` VALUES (613, 'basic', '133', 'I5', 4);
INSERT INTO `tbl_seat` VALUES (614, 'basic', '134', 'I6', 4);
INSERT INTO `tbl_seat` VALUES (615, 'basic', '135', 'I7', 4);
INSERT INTO `tbl_seat` VALUES (616, 'basic', '136', 'I8', 4);
INSERT INTO `tbl_seat` VALUES (617, 'basic', '137', 'I9', 4);
INSERT INTO `tbl_seat` VALUES (618, 'basic', '138', 'I10', 4);
INSERT INTO `tbl_seat` VALUES (619, 'basic', '139', 'I11', 4);
INSERT INTO `tbl_seat` VALUES (620, 'basic', '140', 'I12', 4);
INSERT INTO `tbl_seat` VALUES (621, 'basic', '141', 'I13', 4);
INSERT INTO `tbl_seat` VALUES (622, 'basic', '142', 'I14', 4);
INSERT INTO `tbl_seat` VALUES (623, 'basic', '143', 'I15', 4);
INSERT INTO `tbl_seat` VALUES (624, 'basic', '144', 'I16', 4);
INSERT INTO `tbl_seat` VALUES (625, 'basic', '145', 'J1', 4);
INSERT INTO `tbl_seat` VALUES (626, 'basic', '146', 'J2', 4);
INSERT INTO `tbl_seat` VALUES (627, 'basic', '147', 'J3', 4);
INSERT INTO `tbl_seat` VALUES (628, 'basic', '148', 'J4', 4);
INSERT INTO `tbl_seat` VALUES (629, 'basic', '149', 'J5', 4);
INSERT INTO `tbl_seat` VALUES (630, 'basic', '150', 'J6', 4);
INSERT INTO `tbl_seat` VALUES (631, 'basic', '151', 'J7', 4);
INSERT INTO `tbl_seat` VALUES (632, 'basic', '152', 'J8', 4);
INSERT INTO `tbl_seat` VALUES (633, 'basic', '153', 'J9', 4);
INSERT INTO `tbl_seat` VALUES (634, 'basic', '154', 'J10', 4);
INSERT INTO `tbl_seat` VALUES (635, 'basic', '155', 'J11', 4);
INSERT INTO `tbl_seat` VALUES (636, 'basic', '156', 'J12', 4);
INSERT INTO `tbl_seat` VALUES (637, 'basic', '157', 'J13', 4);
INSERT INTO `tbl_seat` VALUES (638, 'basic', '158', 'J14', 4);
INSERT INTO `tbl_seat` VALUES (639, 'basic', '159', 'J15', 4);
INSERT INTO `tbl_seat` VALUES (640, 'basic', '160', 'J16', 4);
INSERT INTO `tbl_seat` VALUES (641, 'basic', '1', 'A1', 5);
INSERT INTO `tbl_seat` VALUES (642, 'basic', '2', 'A2', 5);
INSERT INTO `tbl_seat` VALUES (643, 'basic', '3', 'A3', 5);
INSERT INTO `tbl_seat` VALUES (644, 'basic', '4', 'A4', 5);
INSERT INTO `tbl_seat` VALUES (645, 'basic', '5', 'A5', 5);
INSERT INTO `tbl_seat` VALUES (646, 'basic', '6', 'A6', 5);
INSERT INTO `tbl_seat` VALUES (647, 'basic', '7', 'A7', 5);
INSERT INTO `tbl_seat` VALUES (648, 'basic', '8', 'A8', 5);
INSERT INTO `tbl_seat` VALUES (649, 'basic', '9', 'A9', 5);
INSERT INTO `tbl_seat` VALUES (650, 'basic', '10', 'A10', 5);
INSERT INTO `tbl_seat` VALUES (651, 'basic', '11', 'A11', 5);
INSERT INTO `tbl_seat` VALUES (652, 'basic', '12', 'A12', 5);
INSERT INTO `tbl_seat` VALUES (653, 'basic', '13', 'A13', 5);
INSERT INTO `tbl_seat` VALUES (654, 'basic', '14', 'A14', 5);
INSERT INTO `tbl_seat` VALUES (655, 'basic', '15', 'A15', 5);
INSERT INTO `tbl_seat` VALUES (656, 'basic', '16', 'A16', 5);
INSERT INTO `tbl_seat` VALUES (657, 'basic', '17', 'B1', 5);
INSERT INTO `tbl_seat` VALUES (658, 'basic', '18', 'B2', 5);
INSERT INTO `tbl_seat` VALUES (659, 'basic', '19', 'B3', 5);
INSERT INTO `tbl_seat` VALUES (660, 'basic', '20', 'B4', 5);
INSERT INTO `tbl_seat` VALUES (661, 'basic', '21', 'B5', 5);
INSERT INTO `tbl_seat` VALUES (662, 'basic', '22', 'B6', 5);
INSERT INTO `tbl_seat` VALUES (663, 'basic', '23', 'B7', 5);
INSERT INTO `tbl_seat` VALUES (664, 'basic', '24', 'B8', 5);
INSERT INTO `tbl_seat` VALUES (665, 'basic', '25', 'B9', 5);
INSERT INTO `tbl_seat` VALUES (666, 'basic', '26', 'B10', 5);
INSERT INTO `tbl_seat` VALUES (667, 'basic', '27', 'B11', 5);
INSERT INTO `tbl_seat` VALUES (668, 'basic', '28', 'B12', 5);
INSERT INTO `tbl_seat` VALUES (669, 'basic', '29', 'B13', 5);
INSERT INTO `tbl_seat` VALUES (670, 'basic', '30', 'B14', 5);
INSERT INTO `tbl_seat` VALUES (671, 'basic', '31', 'B15', 5);
INSERT INTO `tbl_seat` VALUES (672, 'basic', '32', 'B16', 5);
INSERT INTO `tbl_seat` VALUES (673, 'basic', '33', 'C1', 5);
INSERT INTO `tbl_seat` VALUES (674, 'basic', '34', 'C2', 5);
INSERT INTO `tbl_seat` VALUES (675, 'vip', '35', 'C3', 5);
INSERT INTO `tbl_seat` VALUES (676, 'vip', '36', 'C4', 5);
INSERT INTO `tbl_seat` VALUES (677, 'vip', '37', 'C5', 5);
INSERT INTO `tbl_seat` VALUES (678, 'vip', '38', 'C6', 5);
INSERT INTO `tbl_seat` VALUES (679, 'vip', '39', 'C7', 5);
INSERT INTO `tbl_seat` VALUES (680, 'vip', '40', 'C8', 5);
INSERT INTO `tbl_seat` VALUES (681, 'vip', '41', 'C9', 5);
INSERT INTO `tbl_seat` VALUES (682, 'vip', '42', 'C10', 5);
INSERT INTO `tbl_seat` VALUES (683, 'vip', '43', 'C11', 5);
INSERT INTO `tbl_seat` VALUES (684, 'vip', '44', 'C12', 5);
INSERT INTO `tbl_seat` VALUES (685, 'vip', '45', 'C13', 5);
INSERT INTO `tbl_seat` VALUES (686, 'vip', '46', 'C14', 5);
INSERT INTO `tbl_seat` VALUES (687, 'basic', '47', 'C15', 5);
INSERT INTO `tbl_seat` VALUES (688, 'basic', '48', 'C16', 5);
INSERT INTO `tbl_seat` VALUES (689, 'basic', '49', 'D1', 5);
INSERT INTO `tbl_seat` VALUES (690, 'basic', '50', 'D2', 5);
INSERT INTO `tbl_seat` VALUES (691, 'vip', '51', 'D3', 5);
INSERT INTO `tbl_seat` VALUES (692, 'vip', '52', 'D4', 5);
INSERT INTO `tbl_seat` VALUES (693, 'vip', '53', 'D5', 5);
INSERT INTO `tbl_seat` VALUES (694, 'vip', '54', 'D6', 5);
INSERT INTO `tbl_seat` VALUES (695, 'vip', '55', 'D7', 5);
INSERT INTO `tbl_seat` VALUES (696, 'vip', '56', 'D8', 5);
INSERT INTO `tbl_seat` VALUES (697, 'vip', '57', 'D9', 5);
INSERT INTO `tbl_seat` VALUES (698, 'vip', '58', 'D10', 5);
INSERT INTO `tbl_seat` VALUES (699, 'vip', '59', 'D11', 5);
INSERT INTO `tbl_seat` VALUES (700, 'vip', '60', 'D12', 5);
INSERT INTO `tbl_seat` VALUES (701, 'vip', '61', 'D13', 5);
INSERT INTO `tbl_seat` VALUES (702, 'vip', '62', 'D14', 5);
INSERT INTO `tbl_seat` VALUES (703, 'basic', '63', 'D15', 5);
INSERT INTO `tbl_seat` VALUES (704, 'basic', '64', 'D16', 5);
INSERT INTO `tbl_seat` VALUES (705, 'basic', '65', 'E1', 5);
INSERT INTO `tbl_seat` VALUES (706, 'basic', '66', 'E2', 5);
INSERT INTO `tbl_seat` VALUES (707, 'vip', '67', 'E3', 5);
INSERT INTO `tbl_seat` VALUES (708, 'vip', '68', 'E4', 5);
INSERT INTO `tbl_seat` VALUES (709, 'vip', '69', 'E5', 5);
INSERT INTO `tbl_seat` VALUES (710, 'vip', '70', 'E6', 5);
INSERT INTO `tbl_seat` VALUES (711, 'vip', '71', 'E7', 5);
INSERT INTO `tbl_seat` VALUES (712, 'vip', '72', 'E8', 5);
INSERT INTO `tbl_seat` VALUES (713, 'vip', '73', 'E9', 5);
INSERT INTO `tbl_seat` VALUES (714, 'vip', '74', 'E10', 5);
INSERT INTO `tbl_seat` VALUES (715, 'vip', '75', 'E11', 5);
INSERT INTO `tbl_seat` VALUES (716, 'vip', '76', 'E12', 5);
INSERT INTO `tbl_seat` VALUES (717, 'vip', '77', 'E13', 5);
INSERT INTO `tbl_seat` VALUES (718, 'vip', '78', 'E14', 5);
INSERT INTO `tbl_seat` VALUES (719, 'basic', '79', 'E15', 5);
INSERT INTO `tbl_seat` VALUES (720, 'basic', '80', 'E16', 5);
INSERT INTO `tbl_seat` VALUES (721, 'basic', '81', 'F1', 5);
INSERT INTO `tbl_seat` VALUES (722, 'basic', '82', 'F2', 5);
INSERT INTO `tbl_seat` VALUES (723, 'vip', '83', 'F3', 5);
INSERT INTO `tbl_seat` VALUES (724, 'vip', '84', 'F4', 5);
INSERT INTO `tbl_seat` VALUES (725, 'vip', '85', 'F5', 5);
INSERT INTO `tbl_seat` VALUES (726, 'vip', '86', 'F6', 5);
INSERT INTO `tbl_seat` VALUES (727, 'vip', '87', 'F7', 5);
INSERT INTO `tbl_seat` VALUES (728, 'vip', '88', 'F8', 5);
INSERT INTO `tbl_seat` VALUES (729, 'vip', '89', 'F9', 5);
INSERT INTO `tbl_seat` VALUES (730, 'vip', '90', 'F10', 5);
INSERT INTO `tbl_seat` VALUES (731, 'vip', '91', 'F11', 5);
INSERT INTO `tbl_seat` VALUES (732, 'vip', '92', 'F12', 5);
INSERT INTO `tbl_seat` VALUES (733, 'vip', '93', 'F13', 5);
INSERT INTO `tbl_seat` VALUES (734, 'vip', '94', 'F14', 5);
INSERT INTO `tbl_seat` VALUES (735, 'basic', '95', 'F15', 5);
INSERT INTO `tbl_seat` VALUES (736, 'basic', '96', 'F16', 5);
INSERT INTO `tbl_seat` VALUES (737, 'basic', '97', 'G1', 5);
INSERT INTO `tbl_seat` VALUES (738, 'basic', '98', 'G2', 5);
INSERT INTO `tbl_seat` VALUES (739, 'vip', '99', 'G3', 5);
INSERT INTO `tbl_seat` VALUES (740, 'vip', '100', 'G4', 5);
INSERT INTO `tbl_seat` VALUES (741, 'vip', '101', 'G5', 5);
INSERT INTO `tbl_seat` VALUES (742, 'vip', '102', 'G6', 5);
INSERT INTO `tbl_seat` VALUES (743, 'vip', '103', 'G7', 5);
INSERT INTO `tbl_seat` VALUES (744, 'vip', '104', 'G8', 5);
INSERT INTO `tbl_seat` VALUES (745, 'vip', '105', 'G9', 5);
INSERT INTO `tbl_seat` VALUES (746, 'vip', '106', 'G10', 5);
INSERT INTO `tbl_seat` VALUES (747, 'vip', '107', 'G11', 5);
INSERT INTO `tbl_seat` VALUES (748, 'vip', '108', 'G12', 5);
INSERT INTO `tbl_seat` VALUES (749, 'vip', '109', 'G13', 5);
INSERT INTO `tbl_seat` VALUES (750, 'vip', '110', 'G14', 5);
INSERT INTO `tbl_seat` VALUES (751, 'basic', '111', 'G15', 5);
INSERT INTO `tbl_seat` VALUES (752, 'basic', '112', 'G16', 5);
INSERT INTO `tbl_seat` VALUES (753, 'basic', '113', 'H1', 5);
INSERT INTO `tbl_seat` VALUES (754, 'basic', '114', 'H2', 5);
INSERT INTO `tbl_seat` VALUES (755, 'vip', '115', 'H3', 5);
INSERT INTO `tbl_seat` VALUES (756, 'vip', '116', 'H4', 5);
INSERT INTO `tbl_seat` VALUES (757, 'vip', '117', 'H5', 5);
INSERT INTO `tbl_seat` VALUES (758, 'vip', '118', 'H6', 5);
INSERT INTO `tbl_seat` VALUES (759, 'vip', '119', 'H7', 5);
INSERT INTO `tbl_seat` VALUES (760, 'vip', '120', 'H8', 5);
INSERT INTO `tbl_seat` VALUES (761, 'vip', '121', 'H9', 5);
INSERT INTO `tbl_seat` VALUES (762, 'vip', '122', 'H10', 5);
INSERT INTO `tbl_seat` VALUES (763, 'vip', '123', 'H11', 5);
INSERT INTO `tbl_seat` VALUES (764, 'vip', '124', 'H12', 5);
INSERT INTO `tbl_seat` VALUES (765, 'vip', '125', 'H13', 5);
INSERT INTO `tbl_seat` VALUES (766, 'vip', '126', 'H14', 5);
INSERT INTO `tbl_seat` VALUES (767, 'basic', '127', 'H15', 5);
INSERT INTO `tbl_seat` VALUES (768, 'basic', '128', 'H16', 5);
INSERT INTO `tbl_seat` VALUES (769, 'basic', '129', 'I1', 5);
INSERT INTO `tbl_seat` VALUES (770, 'basic', '130', 'I2', 5);
INSERT INTO `tbl_seat` VALUES (771, 'basic', '131', 'I3', 5);
INSERT INTO `tbl_seat` VALUES (772, 'basic', '132', 'I4', 5);
INSERT INTO `tbl_seat` VALUES (773, 'basic', '133', 'I5', 5);
INSERT INTO `tbl_seat` VALUES (774, 'basic', '134', 'I6', 5);
INSERT INTO `tbl_seat` VALUES (775, 'basic', '135', 'I7', 5);
INSERT INTO `tbl_seat` VALUES (776, 'basic', '136', 'I8', 5);
INSERT INTO `tbl_seat` VALUES (777, 'basic', '137', 'I9', 5);
INSERT INTO `tbl_seat` VALUES (778, 'basic', '138', 'I10', 5);
INSERT INTO `tbl_seat` VALUES (779, 'basic', '139', 'I11', 5);
INSERT INTO `tbl_seat` VALUES (780, 'basic', '140', 'I12', 5);
INSERT INTO `tbl_seat` VALUES (781, 'basic', '141', 'I13', 5);
INSERT INTO `tbl_seat` VALUES (782, 'basic', '142', 'I14', 5);
INSERT INTO `tbl_seat` VALUES (783, 'basic', '143', 'I15', 5);
INSERT INTO `tbl_seat` VALUES (784, 'basic', '144', 'I16', 5);
INSERT INTO `tbl_seat` VALUES (785, 'basic', '145', 'J1', 5);
INSERT INTO `tbl_seat` VALUES (786, 'basic', '146', 'J2', 5);
INSERT INTO `tbl_seat` VALUES (787, 'basic', '147', 'J3', 5);
INSERT INTO `tbl_seat` VALUES (788, 'basic', '148', 'J4', 5);
INSERT INTO `tbl_seat` VALUES (789, 'basic', '149', 'J5', 5);
INSERT INTO `tbl_seat` VALUES (790, 'basic', '150', 'J6', 5);
INSERT INTO `tbl_seat` VALUES (791, 'basic', '151', 'J7', 5);
INSERT INTO `tbl_seat` VALUES (792, 'basic', '152', 'J8', 5);
INSERT INTO `tbl_seat` VALUES (793, 'basic', '153', 'J9', 5);
INSERT INTO `tbl_seat` VALUES (794, 'basic', '154', 'J10', 5);
INSERT INTO `tbl_seat` VALUES (795, 'basic', '155', 'J11', 5);
INSERT INTO `tbl_seat` VALUES (796, 'basic', '156', 'J12', 5);
INSERT INTO `tbl_seat` VALUES (797, 'basic', '157', 'J13', 5);
INSERT INTO `tbl_seat` VALUES (798, 'basic', '158', 'J14', 5);
INSERT INTO `tbl_seat` VALUES (799, 'basic', '159', 'J15', 5);
INSERT INTO `tbl_seat` VALUES (800, 'basic', '160', 'J16', 5);
INSERT INTO `tbl_seat` VALUES (801, 'basic', '1', 'A1', 6);
INSERT INTO `tbl_seat` VALUES (802, 'basic', '2', 'A2', 6);
INSERT INTO `tbl_seat` VALUES (803, 'basic', '3', 'A3', 6);
INSERT INTO `tbl_seat` VALUES (804, 'basic', '4', 'A4', 6);
INSERT INTO `tbl_seat` VALUES (805, 'basic', '5', 'A5', 6);
INSERT INTO `tbl_seat` VALUES (806, 'basic', '6', 'A6', 6);
INSERT INTO `tbl_seat` VALUES (807, 'basic', '7', 'A7', 6);
INSERT INTO `tbl_seat` VALUES (808, 'basic', '8', 'A8', 6);
INSERT INTO `tbl_seat` VALUES (809, 'basic', '9', 'A9', 6);
INSERT INTO `tbl_seat` VALUES (810, 'basic', '10', 'A10', 6);
INSERT INTO `tbl_seat` VALUES (811, 'basic', '11', 'A11', 6);
INSERT INTO `tbl_seat` VALUES (812, 'basic', '12', 'A12', 6);
INSERT INTO `tbl_seat` VALUES (813, 'basic', '13', 'A13', 6);
INSERT INTO `tbl_seat` VALUES (814, 'basic', '14', 'A14', 6);
INSERT INTO `tbl_seat` VALUES (815, 'basic', '15', 'A15', 6);
INSERT INTO `tbl_seat` VALUES (816, 'basic', '16', 'A16', 6);
INSERT INTO `tbl_seat` VALUES (817, 'basic', '17', 'B1', 6);
INSERT INTO `tbl_seat` VALUES (818, 'basic', '18', 'B2', 6);
INSERT INTO `tbl_seat` VALUES (819, 'basic', '19', 'B3', 6);
INSERT INTO `tbl_seat` VALUES (820, 'basic', '20', 'B4', 6);
INSERT INTO `tbl_seat` VALUES (821, 'basic', '21', 'B5', 6);
INSERT INTO `tbl_seat` VALUES (822, 'basic', '22', 'B6', 6);
INSERT INTO `tbl_seat` VALUES (823, 'basic', '23', 'B7', 6);
INSERT INTO `tbl_seat` VALUES (824, 'basic', '24', 'B8', 6);
INSERT INTO `tbl_seat` VALUES (825, 'basic', '25', 'B9', 6);
INSERT INTO `tbl_seat` VALUES (826, 'basic', '26', 'B10', 6);
INSERT INTO `tbl_seat` VALUES (827, 'basic', '27', 'B11', 6);
INSERT INTO `tbl_seat` VALUES (828, 'basic', '28', 'B12', 6);
INSERT INTO `tbl_seat` VALUES (829, 'basic', '29', 'B13', 6);
INSERT INTO `tbl_seat` VALUES (830, 'basic', '30', 'B14', 6);
INSERT INTO `tbl_seat` VALUES (831, 'basic', '31', 'B15', 6);
INSERT INTO `tbl_seat` VALUES (832, 'basic', '32', 'B16', 6);
INSERT INTO `tbl_seat` VALUES (833, 'basic', '33', 'C1', 6);
INSERT INTO `tbl_seat` VALUES (834, 'basic', '34', 'C2', 6);
INSERT INTO `tbl_seat` VALUES (835, 'vip', '35', 'C3', 6);
INSERT INTO `tbl_seat` VALUES (836, 'vip', '36', 'C4', 6);
INSERT INTO `tbl_seat` VALUES (837, 'vip', '37', 'C5', 6);
INSERT INTO `tbl_seat` VALUES (838, 'vip', '38', 'C6', 6);
INSERT INTO `tbl_seat` VALUES (839, 'vip', '39', 'C7', 6);
INSERT INTO `tbl_seat` VALUES (840, 'vip', '40', 'C8', 6);
INSERT INTO `tbl_seat` VALUES (841, 'vip', '41', 'C9', 6);
INSERT INTO `tbl_seat` VALUES (842, 'vip', '42', 'C10', 6);
INSERT INTO `tbl_seat` VALUES (843, 'vip', '43', 'C11', 6);
INSERT INTO `tbl_seat` VALUES (844, 'vip', '44', 'C12', 6);
INSERT INTO `tbl_seat` VALUES (845, 'vip', '45', 'C13', 6);
INSERT INTO `tbl_seat` VALUES (846, 'vip', '46', 'C14', 6);
INSERT INTO `tbl_seat` VALUES (847, 'basic', '47', 'C15', 6);
INSERT INTO `tbl_seat` VALUES (848, 'basic', '48', 'C16', 6);
INSERT INTO `tbl_seat` VALUES (849, 'basic', '49', 'D1', 6);
INSERT INTO `tbl_seat` VALUES (850, 'basic', '50', 'D2', 6);
INSERT INTO `tbl_seat` VALUES (851, 'vip', '51', 'D3', 6);
INSERT INTO `tbl_seat` VALUES (852, 'vip', '52', 'D4', 6);
INSERT INTO `tbl_seat` VALUES (853, 'vip', '53', 'D5', 6);
INSERT INTO `tbl_seat` VALUES (854, 'vip', '54', 'D6', 6);
INSERT INTO `tbl_seat` VALUES (855, 'vip', '55', 'D7', 6);
INSERT INTO `tbl_seat` VALUES (856, 'vip', '56', 'D8', 6);
INSERT INTO `tbl_seat` VALUES (857, 'vip', '57', 'D9', 6);
INSERT INTO `tbl_seat` VALUES (858, 'vip', '58', 'D10', 6);
INSERT INTO `tbl_seat` VALUES (859, 'vip', '59', 'D11', 6);
INSERT INTO `tbl_seat` VALUES (860, 'vip', '60', 'D12', 6);
INSERT INTO `tbl_seat` VALUES (861, 'vip', '61', 'D13', 6);
INSERT INTO `tbl_seat` VALUES (862, 'vip', '62', 'D14', 6);
INSERT INTO `tbl_seat` VALUES (863, 'basic', '63', 'D15', 6);
INSERT INTO `tbl_seat` VALUES (864, 'basic', '64', 'D16', 6);
INSERT INTO `tbl_seat` VALUES (865, 'basic', '65', 'E1', 6);
INSERT INTO `tbl_seat` VALUES (866, 'basic', '66', 'E2', 6);
INSERT INTO `tbl_seat` VALUES (867, 'vip', '67', 'E3', 6);
INSERT INTO `tbl_seat` VALUES (868, 'vip', '68', 'E4', 6);
INSERT INTO `tbl_seat` VALUES (869, 'vip', '69', 'E5', 6);
INSERT INTO `tbl_seat` VALUES (870, 'vip', '70', 'E6', 6);
INSERT INTO `tbl_seat` VALUES (871, 'vip', '71', 'E7', 6);
INSERT INTO `tbl_seat` VALUES (872, 'vip', '72', 'E8', 6);
INSERT INTO `tbl_seat` VALUES (873, 'vip', '73', 'E9', 6);
INSERT INTO `tbl_seat` VALUES (874, 'vip', '74', 'E10', 6);
INSERT INTO `tbl_seat` VALUES (875, 'vip', '75', 'E11', 6);
INSERT INTO `tbl_seat` VALUES (876, 'vip', '76', 'E12', 6);
INSERT INTO `tbl_seat` VALUES (877, 'vip', '77', 'E13', 6);
INSERT INTO `tbl_seat` VALUES (878, 'vip', '78', 'E14', 6);
INSERT INTO `tbl_seat` VALUES (879, 'basic', '79', 'E15', 6);
INSERT INTO `tbl_seat` VALUES (880, 'basic', '80', 'E16', 6);
INSERT INTO `tbl_seat` VALUES (881, 'basic', '81', 'F1', 6);
INSERT INTO `tbl_seat` VALUES (882, 'basic', '82', 'F2', 6);
INSERT INTO `tbl_seat` VALUES (883, 'vip', '83', 'F3', 6);
INSERT INTO `tbl_seat` VALUES (884, 'vip', '84', 'F4', 6);
INSERT INTO `tbl_seat` VALUES (885, 'vip', '85', 'F5', 6);
INSERT INTO `tbl_seat` VALUES (886, 'vip', '86', 'F6', 6);
INSERT INTO `tbl_seat` VALUES (887, 'vip', '87', 'F7', 6);
INSERT INTO `tbl_seat` VALUES (888, 'vip', '88', 'F8', 6);
INSERT INTO `tbl_seat` VALUES (889, 'vip', '89', 'F9', 6);
INSERT INTO `tbl_seat` VALUES (890, 'vip', '90', 'F10', 6);
INSERT INTO `tbl_seat` VALUES (891, 'vip', '91', 'F11', 6);
INSERT INTO `tbl_seat` VALUES (892, 'vip', '92', 'F12', 6);
INSERT INTO `tbl_seat` VALUES (893, 'vip', '93', 'F13', 6);
INSERT INTO `tbl_seat` VALUES (894, 'vip', '94', 'F14', 6);
INSERT INTO `tbl_seat` VALUES (895, 'basic', '95', 'F15', 6);
INSERT INTO `tbl_seat` VALUES (896, 'basic', '96', 'F16', 6);
INSERT INTO `tbl_seat` VALUES (897, 'basic', '97', 'G1', 6);
INSERT INTO `tbl_seat` VALUES (898, 'basic', '98', 'G2', 6);
INSERT INTO `tbl_seat` VALUES (899, 'vip', '99', 'G3', 6);
INSERT INTO `tbl_seat` VALUES (900, 'vip', '100', 'G4', 6);
INSERT INTO `tbl_seat` VALUES (901, 'vip', '101', 'G5', 6);
INSERT INTO `tbl_seat` VALUES (902, 'vip', '102', 'G6', 6);
INSERT INTO `tbl_seat` VALUES (903, 'vip', '103', 'G7', 6);
INSERT INTO `tbl_seat` VALUES (904, 'vip', '104', 'G8', 6);
INSERT INTO `tbl_seat` VALUES (905, 'vip', '105', 'G9', 6);
INSERT INTO `tbl_seat` VALUES (906, 'vip', '106', 'G10', 6);
INSERT INTO `tbl_seat` VALUES (907, 'vip', '107', 'G11', 6);
INSERT INTO `tbl_seat` VALUES (908, 'vip', '108', 'G12', 6);
INSERT INTO `tbl_seat` VALUES (909, 'vip', '109', 'G13', 6);
INSERT INTO `tbl_seat` VALUES (910, 'vip', '110', 'G14', 6);
INSERT INTO `tbl_seat` VALUES (911, 'basic', '111', 'G15', 6);
INSERT INTO `tbl_seat` VALUES (912, 'basic', '112', 'G16', 6);
INSERT INTO `tbl_seat` VALUES (913, 'basic', '113', 'H1', 6);
INSERT INTO `tbl_seat` VALUES (914, 'basic', '114', 'H2', 6);
INSERT INTO `tbl_seat` VALUES (915, 'vip', '115', 'H3', 6);
INSERT INTO `tbl_seat` VALUES (916, 'vip', '116', 'H4', 6);
INSERT INTO `tbl_seat` VALUES (917, 'vip', '117', 'H5', 6);
INSERT INTO `tbl_seat` VALUES (918, 'vip', '118', 'H6', 6);
INSERT INTO `tbl_seat` VALUES (919, 'vip', '119', 'H7', 6);
INSERT INTO `tbl_seat` VALUES (920, 'vip', '120', 'H8', 6);
INSERT INTO `tbl_seat` VALUES (921, 'vip', '121', 'H9', 6);
INSERT INTO `tbl_seat` VALUES (922, 'vip', '122', 'H10', 6);
INSERT INTO `tbl_seat` VALUES (923, 'vip', '123', 'H11', 6);
INSERT INTO `tbl_seat` VALUES (924, 'vip', '124', 'H12', 6);
INSERT INTO `tbl_seat` VALUES (925, 'vip', '125', 'H13', 6);
INSERT INTO `tbl_seat` VALUES (926, 'vip', '126', 'H14', 6);
INSERT INTO `tbl_seat` VALUES (927, 'basic', '127', 'H15', 6);
INSERT INTO `tbl_seat` VALUES (928, 'basic', '128', 'H16', 6);
INSERT INTO `tbl_seat` VALUES (929, 'basic', '129', 'I1', 6);
INSERT INTO `tbl_seat` VALUES (930, 'basic', '130', 'I2', 6);
INSERT INTO `tbl_seat` VALUES (931, 'basic', '131', 'I3', 6);
INSERT INTO `tbl_seat` VALUES (932, 'basic', '132', 'I4', 6);
INSERT INTO `tbl_seat` VALUES (933, 'basic', '133', 'I5', 6);
INSERT INTO `tbl_seat` VALUES (934, 'basic', '134', 'I6', 6);
INSERT INTO `tbl_seat` VALUES (935, 'basic', '135', 'I7', 6);
INSERT INTO `tbl_seat` VALUES (936, 'basic', '136', 'I8', 6);
INSERT INTO `tbl_seat` VALUES (937, 'basic', '137', 'I9', 6);
INSERT INTO `tbl_seat` VALUES (938, 'basic', '138', 'I10', 6);
INSERT INTO `tbl_seat` VALUES (939, 'basic', '139', 'I11', 6);
INSERT INTO `tbl_seat` VALUES (940, 'basic', '140', 'I12', 6);
INSERT INTO `tbl_seat` VALUES (941, 'basic', '141', 'I13', 6);
INSERT INTO `tbl_seat` VALUES (942, 'basic', '142', 'I14', 6);
INSERT INTO `tbl_seat` VALUES (943, 'basic', '143', 'I15', 6);
INSERT INTO `tbl_seat` VALUES (944, 'basic', '144', 'I16', 6);
INSERT INTO `tbl_seat` VALUES (945, 'basic', '145', 'J1', 6);
INSERT INTO `tbl_seat` VALUES (946, 'basic', '146', 'J2', 6);
INSERT INTO `tbl_seat` VALUES (947, 'basic', '147', 'J3', 6);
INSERT INTO `tbl_seat` VALUES (948, 'basic', '148', 'J4', 6);
INSERT INTO `tbl_seat` VALUES (949, 'basic', '149', 'J5', 6);
INSERT INTO `tbl_seat` VALUES (950, 'basic', '150', 'J6', 6);
INSERT INTO `tbl_seat` VALUES (951, 'basic', '151', 'J7', 6);
INSERT INTO `tbl_seat` VALUES (952, 'basic', '152', 'J8', 6);
INSERT INTO `tbl_seat` VALUES (953, 'basic', '153', 'J9', 6);
INSERT INTO `tbl_seat` VALUES (954, 'basic', '154', 'J10', 6);
INSERT INTO `tbl_seat` VALUES (955, 'basic', '155', 'J11', 6);
INSERT INTO `tbl_seat` VALUES (956, 'basic', '156', 'J12', 6);
INSERT INTO `tbl_seat` VALUES (957, 'basic', '157', 'J13', 6);
INSERT INTO `tbl_seat` VALUES (958, 'basic', '158', 'J14', 6);
INSERT INTO `tbl_seat` VALUES (959, 'basic', '159', 'J15', 6);
INSERT INTO `tbl_seat` VALUES (960, 'basic', '160', 'J16', 6);
INSERT INTO `tbl_seat` VALUES (961, 'basic', '1', 'A1', 7);
INSERT INTO `tbl_seat` VALUES (962, 'basic', '2', 'A2', 7);
INSERT INTO `tbl_seat` VALUES (963, 'basic', '3', 'A3', 7);
INSERT INTO `tbl_seat` VALUES (964, 'basic', '4', 'A4', 7);
INSERT INTO `tbl_seat` VALUES (965, 'basic', '5', 'A5', 7);
INSERT INTO `tbl_seat` VALUES (966, 'basic', '6', 'A6', 7);
INSERT INTO `tbl_seat` VALUES (967, 'basic', '7', 'A7', 7);
INSERT INTO `tbl_seat` VALUES (968, 'basic', '8', 'A8', 7);
INSERT INTO `tbl_seat` VALUES (969, 'basic', '9', 'A9', 7);
INSERT INTO `tbl_seat` VALUES (970, 'basic', '10', 'A10', 7);
INSERT INTO `tbl_seat` VALUES (971, 'basic', '11', 'A11', 7);
INSERT INTO `tbl_seat` VALUES (972, 'basic', '12', 'A12', 7);
INSERT INTO `tbl_seat` VALUES (973, 'basic', '13', 'A13', 7);
INSERT INTO `tbl_seat` VALUES (974, 'basic', '14', 'A14', 7);
INSERT INTO `tbl_seat` VALUES (975, 'basic', '15', 'A15', 7);
INSERT INTO `tbl_seat` VALUES (976, 'basic', '16', 'A16', 7);
INSERT INTO `tbl_seat` VALUES (977, 'basic', '17', 'B1', 7);
INSERT INTO `tbl_seat` VALUES (978, 'basic', '18', 'B2', 7);
INSERT INTO `tbl_seat` VALUES (979, 'basic', '19', 'B3', 7);
INSERT INTO `tbl_seat` VALUES (980, 'basic', '20', 'B4', 7);
INSERT INTO `tbl_seat` VALUES (981, 'basic', '21', 'B5', 7);
INSERT INTO `tbl_seat` VALUES (982, 'basic', '22', 'B6', 7);
INSERT INTO `tbl_seat` VALUES (983, 'basic', '23', 'B7', 7);
INSERT INTO `tbl_seat` VALUES (984, 'basic', '24', 'B8', 7);
INSERT INTO `tbl_seat` VALUES (985, 'basic', '25', 'B9', 7);
INSERT INTO `tbl_seat` VALUES (986, 'basic', '26', 'B10', 7);
INSERT INTO `tbl_seat` VALUES (987, 'basic', '27', 'B11', 7);
INSERT INTO `tbl_seat` VALUES (988, 'basic', '28', 'B12', 7);
INSERT INTO `tbl_seat` VALUES (989, 'basic', '29', 'B13', 7);
INSERT INTO `tbl_seat` VALUES (990, 'basic', '30', 'B14', 7);
INSERT INTO `tbl_seat` VALUES (991, 'basic', '31', 'B15', 7);
INSERT INTO `tbl_seat` VALUES (992, 'basic', '32', 'B16', 7);
INSERT INTO `tbl_seat` VALUES (993, 'basic', '33', 'C1', 7);
INSERT INTO `tbl_seat` VALUES (994, 'basic', '34', 'C2', 7);
INSERT INTO `tbl_seat` VALUES (995, 'vip', '35', 'C3', 7);
INSERT INTO `tbl_seat` VALUES (996, 'vip', '36', 'C4', 7);
INSERT INTO `tbl_seat` VALUES (997, 'vip', '37', 'C5', 7);
INSERT INTO `tbl_seat` VALUES (998, 'vip', '38', 'C6', 7);
INSERT INTO `tbl_seat` VALUES (999, 'vip', '39', 'C7', 7);
INSERT INTO `tbl_seat` VALUES (1000, 'vip', '40', 'C8', 7);
INSERT INTO `tbl_seat` VALUES (1001, 'vip', '41', 'C9', 7);
INSERT INTO `tbl_seat` VALUES (1002, 'vip', '42', 'C10', 7);
INSERT INTO `tbl_seat` VALUES (1003, 'vip', '43', 'C11', 7);
INSERT INTO `tbl_seat` VALUES (1004, 'vip', '44', 'C12', 7);
INSERT INTO `tbl_seat` VALUES (1005, 'vip', '45', 'C13', 7);
INSERT INTO `tbl_seat` VALUES (1006, 'vip', '46', 'C14', 7);
INSERT INTO `tbl_seat` VALUES (1007, 'basic', '47', 'C15', 7);
INSERT INTO `tbl_seat` VALUES (1008, 'basic', '48', 'C16', 7);
INSERT INTO `tbl_seat` VALUES (1009, 'basic', '49', 'D1', 7);
INSERT INTO `tbl_seat` VALUES (1010, 'basic', '50', 'D2', 7);
INSERT INTO `tbl_seat` VALUES (1011, 'vip', '51', 'D3', 7);
INSERT INTO `tbl_seat` VALUES (1012, 'vip', '52', 'D4', 7);
INSERT INTO `tbl_seat` VALUES (1013, 'vip', '53', 'D5', 7);
INSERT INTO `tbl_seat` VALUES (1014, 'vip', '54', 'D6', 7);
INSERT INTO `tbl_seat` VALUES (1015, 'vip', '55', 'D7', 7);
INSERT INTO `tbl_seat` VALUES (1016, 'vip', '56', 'D8', 7);
INSERT INTO `tbl_seat` VALUES (1017, 'vip', '57', 'D9', 7);
INSERT INTO `tbl_seat` VALUES (1018, 'vip', '58', 'D10', 7);
INSERT INTO `tbl_seat` VALUES (1019, 'vip', '59', 'D11', 7);
INSERT INTO `tbl_seat` VALUES (1020, 'vip', '60', 'D12', 7);
INSERT INTO `tbl_seat` VALUES (1021, 'vip', '61', 'D13', 7);
INSERT INTO `tbl_seat` VALUES (1022, 'vip', '62', 'D14', 7);
INSERT INTO `tbl_seat` VALUES (1023, 'basic', '63', 'D15', 7);
INSERT INTO `tbl_seat` VALUES (1024, 'basic', '64', 'D16', 7);
INSERT INTO `tbl_seat` VALUES (1025, 'basic', '65', 'E1', 7);
INSERT INTO `tbl_seat` VALUES (1026, 'basic', '66', 'E2', 7);
INSERT INTO `tbl_seat` VALUES (1027, 'vip', '67', 'E3', 7);
INSERT INTO `tbl_seat` VALUES (1028, 'vip', '68', 'E4', 7);
INSERT INTO `tbl_seat` VALUES (1029, 'vip', '69', 'E5', 7);
INSERT INTO `tbl_seat` VALUES (1030, 'vip', '70', 'E6', 7);
INSERT INTO `tbl_seat` VALUES (1031, 'vip', '71', 'E7', 7);
INSERT INTO `tbl_seat` VALUES (1032, 'vip', '72', 'E8', 7);
INSERT INTO `tbl_seat` VALUES (1033, 'vip', '73', 'E9', 7);
INSERT INTO `tbl_seat` VALUES (1034, 'vip', '74', 'E10', 7);
INSERT INTO `tbl_seat` VALUES (1035, 'vip', '75', 'E11', 7);
INSERT INTO `tbl_seat` VALUES (1036, 'vip', '76', 'E12', 7);
INSERT INTO `tbl_seat` VALUES (1037, 'vip', '77', 'E13', 7);
INSERT INTO `tbl_seat` VALUES (1038, 'vip', '78', 'E14', 7);
INSERT INTO `tbl_seat` VALUES (1039, 'basic', '79', 'E15', 7);
INSERT INTO `tbl_seat` VALUES (1040, 'basic', '80', 'E16', 7);
INSERT INTO `tbl_seat` VALUES (1041, 'basic', '81', 'F1', 7);
INSERT INTO `tbl_seat` VALUES (1042, 'basic', '82', 'F2', 7);
INSERT INTO `tbl_seat` VALUES (1043, 'vip', '83', 'F3', 7);
INSERT INTO `tbl_seat` VALUES (1044, 'vip', '84', 'F4', 7);
INSERT INTO `tbl_seat` VALUES (1045, 'vip', '85', 'F5', 7);
INSERT INTO `tbl_seat` VALUES (1046, 'vip', '86', 'F6', 7);
INSERT INTO `tbl_seat` VALUES (1047, 'vip', '87', 'F7', 7);
INSERT INTO `tbl_seat` VALUES (1048, 'vip', '88', 'F8', 7);
INSERT INTO `tbl_seat` VALUES (1049, 'vip', '89', 'F9', 7);
INSERT INTO `tbl_seat` VALUES (1050, 'vip', '90', 'F10', 7);
INSERT INTO `tbl_seat` VALUES (1051, 'vip', '91', 'F11', 7);
INSERT INTO `tbl_seat` VALUES (1052, 'vip', '92', 'F12', 7);
INSERT INTO `tbl_seat` VALUES (1053, 'vip', '93', 'F13', 7);
INSERT INTO `tbl_seat` VALUES (1054, 'vip', '94', 'F14', 7);
INSERT INTO `tbl_seat` VALUES (1055, 'basic', '95', 'F15', 7);
INSERT INTO `tbl_seat` VALUES (1056, 'basic', '96', 'F16', 7);
INSERT INTO `tbl_seat` VALUES (1057, 'basic', '97', 'G1', 7);
INSERT INTO `tbl_seat` VALUES (1058, 'basic', '98', 'G2', 7);
INSERT INTO `tbl_seat` VALUES (1059, 'vip', '99', 'G3', 7);
INSERT INTO `tbl_seat` VALUES (1060, 'vip', '100', 'G4', 7);
INSERT INTO `tbl_seat` VALUES (1061, 'vip', '101', 'G5', 7);
INSERT INTO `tbl_seat` VALUES (1062, 'vip', '102', 'G6', 7);
INSERT INTO `tbl_seat` VALUES (1063, 'vip', '103', 'G7', 7);
INSERT INTO `tbl_seat` VALUES (1064, 'vip', '104', 'G8', 7);
INSERT INTO `tbl_seat` VALUES (1065, 'vip', '105', 'G9', 7);
INSERT INTO `tbl_seat` VALUES (1066, 'vip', '106', 'G10', 7);
INSERT INTO `tbl_seat` VALUES (1067, 'vip', '107', 'G11', 7);
INSERT INTO `tbl_seat` VALUES (1068, 'vip', '108', 'G12', 7);
INSERT INTO `tbl_seat` VALUES (1069, 'vip', '109', 'G13', 7);
INSERT INTO `tbl_seat` VALUES (1070, 'vip', '110', 'G14', 7);
INSERT INTO `tbl_seat` VALUES (1071, 'basic', '111', 'G15', 7);
INSERT INTO `tbl_seat` VALUES (1072, 'basic', '112', 'G16', 7);
INSERT INTO `tbl_seat` VALUES (1073, 'basic', '113', 'H1', 7);
INSERT INTO `tbl_seat` VALUES (1074, 'basic', '114', 'H2', 7);
INSERT INTO `tbl_seat` VALUES (1075, 'vip', '115', 'H3', 7);
INSERT INTO `tbl_seat` VALUES (1076, 'vip', '116', 'H4', 7);
INSERT INTO `tbl_seat` VALUES (1077, 'vip', '117', 'H5', 7);
INSERT INTO `tbl_seat` VALUES (1078, 'vip', '118', 'H6', 7);
INSERT INTO `tbl_seat` VALUES (1079, 'vip', '119', 'H7', 7);
INSERT INTO `tbl_seat` VALUES (1080, 'vip', '120', 'H8', 7);
INSERT INTO `tbl_seat` VALUES (1081, 'vip', '121', 'H9', 7);
INSERT INTO `tbl_seat` VALUES (1082, 'vip', '122', 'H10', 7);
INSERT INTO `tbl_seat` VALUES (1083, 'vip', '123', 'H11', 7);
INSERT INTO `tbl_seat` VALUES (1084, 'vip', '124', 'H12', 7);
INSERT INTO `tbl_seat` VALUES (1085, 'vip', '125', 'H13', 7);
INSERT INTO `tbl_seat` VALUES (1086, 'vip', '126', 'H14', 7);
INSERT INTO `tbl_seat` VALUES (1087, 'basic', '127', 'H15', 7);
INSERT INTO `tbl_seat` VALUES (1088, 'basic', '128', 'H16', 7);
INSERT INTO `tbl_seat` VALUES (1089, 'basic', '129', 'I1', 7);
INSERT INTO `tbl_seat` VALUES (1090, 'basic', '130', 'I2', 7);
INSERT INTO `tbl_seat` VALUES (1091, 'basic', '131', 'I3', 7);
INSERT INTO `tbl_seat` VALUES (1092, 'basic', '132', 'I4', 7);
INSERT INTO `tbl_seat` VALUES (1093, 'basic', '133', 'I5', 7);
INSERT INTO `tbl_seat` VALUES (1094, 'basic', '134', 'I6', 7);
INSERT INTO `tbl_seat` VALUES (1095, 'basic', '135', 'I7', 7);
INSERT INTO `tbl_seat` VALUES (1096, 'basic', '136', 'I8', 7);
INSERT INTO `tbl_seat` VALUES (1097, 'basic', '137', 'I9', 7);
INSERT INTO `tbl_seat` VALUES (1098, 'basic', '138', 'I10', 7);
INSERT INTO `tbl_seat` VALUES (1099, 'basic', '139', 'I11', 7);
INSERT INTO `tbl_seat` VALUES (1100, 'basic', '140', 'I12', 7);
INSERT INTO `tbl_seat` VALUES (1101, 'basic', '141', 'I13', 7);
INSERT INTO `tbl_seat` VALUES (1102, 'basic', '142', 'I14', 7);
INSERT INTO `tbl_seat` VALUES (1103, 'basic', '143', 'I15', 7);
INSERT INTO `tbl_seat` VALUES (1104, 'basic', '144', 'I16', 7);
INSERT INTO `tbl_seat` VALUES (1105, 'basic', '145', 'J1', 7);
INSERT INTO `tbl_seat` VALUES (1106, 'basic', '146', 'J2', 7);
INSERT INTO `tbl_seat` VALUES (1107, 'basic', '147', 'J3', 7);
INSERT INTO `tbl_seat` VALUES (1108, 'basic', '148', 'J4', 7);
INSERT INTO `tbl_seat` VALUES (1109, 'basic', '149', 'J5', 7);
INSERT INTO `tbl_seat` VALUES (1110, 'basic', '150', 'J6', 7);
INSERT INTO `tbl_seat` VALUES (1111, 'basic', '151', 'J7', 7);
INSERT INTO `tbl_seat` VALUES (1112, 'basic', '152', 'J8', 7);
INSERT INTO `tbl_seat` VALUES (1113, 'basic', '153', 'J9', 7);
INSERT INTO `tbl_seat` VALUES (1114, 'basic', '154', 'J10', 7);
INSERT INTO `tbl_seat` VALUES (1115, 'basic', '155', 'J11', 7);
INSERT INTO `tbl_seat` VALUES (1116, 'basic', '156', 'J12', 7);
INSERT INTO `tbl_seat` VALUES (1117, 'basic', '157', 'J13', 7);
INSERT INTO `tbl_seat` VALUES (1118, 'basic', '158', 'J14', 7);
INSERT INTO `tbl_seat` VALUES (1119, 'basic', '159', 'J15', 7);
INSERT INTO `tbl_seat` VALUES (1120, 'basic', '160', 'J16', 7);
INSERT INTO `tbl_seat` VALUES (1121, 'basic', '1', 'A1', 8);
INSERT INTO `tbl_seat` VALUES (1122, 'basic', '2', 'A2', 8);
INSERT INTO `tbl_seat` VALUES (1123, 'basic', '3', 'A3', 8);
INSERT INTO `tbl_seat` VALUES (1124, 'basic', '4', 'A4', 8);
INSERT INTO `tbl_seat` VALUES (1125, 'basic', '5', 'A5', 8);
INSERT INTO `tbl_seat` VALUES (1126, 'basic', '6', 'A6', 8);
INSERT INTO `tbl_seat` VALUES (1127, 'basic', '7', 'A7', 8);
INSERT INTO `tbl_seat` VALUES (1128, 'basic', '8', 'A8', 8);
INSERT INTO `tbl_seat` VALUES (1129, 'basic', '9', 'A9', 8);
INSERT INTO `tbl_seat` VALUES (1130, 'basic', '10', 'A10', 8);
INSERT INTO `tbl_seat` VALUES (1131, 'basic', '11', 'A11', 8);
INSERT INTO `tbl_seat` VALUES (1132, 'basic', '12', 'A12', 8);
INSERT INTO `tbl_seat` VALUES (1133, 'basic', '13', 'A13', 8);
INSERT INTO `tbl_seat` VALUES (1134, 'basic', '14', 'A14', 8);
INSERT INTO `tbl_seat` VALUES (1135, 'basic', '15', 'A15', 8);
INSERT INTO `tbl_seat` VALUES (1136, 'basic', '16', 'A16', 8);
INSERT INTO `tbl_seat` VALUES (1137, 'basic', '17', 'B1', 8);
INSERT INTO `tbl_seat` VALUES (1138, 'basic', '18', 'B2', 8);
INSERT INTO `tbl_seat` VALUES (1139, 'basic', '19', 'B3', 8);
INSERT INTO `tbl_seat` VALUES (1140, 'basic', '20', 'B4', 8);
INSERT INTO `tbl_seat` VALUES (1141, 'basic', '21', 'B5', 8);
INSERT INTO `tbl_seat` VALUES (1142, 'basic', '22', 'B6', 8);
INSERT INTO `tbl_seat` VALUES (1143, 'basic', '23', 'B7', 8);
INSERT INTO `tbl_seat` VALUES (1144, 'basic', '24', 'B8', 8);
INSERT INTO `tbl_seat` VALUES (1145, 'basic', '25', 'B9', 8);
INSERT INTO `tbl_seat` VALUES (1146, 'basic', '26', 'B10', 8);
INSERT INTO `tbl_seat` VALUES (1147, 'basic', '27', 'B11', 8);
INSERT INTO `tbl_seat` VALUES (1148, 'basic', '28', 'B12', 8);
INSERT INTO `tbl_seat` VALUES (1149, 'basic', '29', 'B13', 8);
INSERT INTO `tbl_seat` VALUES (1150, 'basic', '30', 'B14', 8);
INSERT INTO `tbl_seat` VALUES (1151, 'basic', '31', 'B15', 8);
INSERT INTO `tbl_seat` VALUES (1152, 'basic', '32', 'B16', 8);
INSERT INTO `tbl_seat` VALUES (1153, 'basic', '33', 'C1', 8);
INSERT INTO `tbl_seat` VALUES (1154, 'basic', '34', 'C2', 8);
INSERT INTO `tbl_seat` VALUES (1155, 'vip', '35', 'C3', 8);
INSERT INTO `tbl_seat` VALUES (1156, 'vip', '36', 'C4', 8);
INSERT INTO `tbl_seat` VALUES (1157, 'vip', '37', 'C5', 8);
INSERT INTO `tbl_seat` VALUES (1158, 'vip', '38', 'C6', 8);
INSERT INTO `tbl_seat` VALUES (1159, 'vip', '39', 'C7', 8);
INSERT INTO `tbl_seat` VALUES (1160, 'vip', '40', 'C8', 8);
INSERT INTO `tbl_seat` VALUES (1161, 'vip', '41', 'C9', 8);
INSERT INTO `tbl_seat` VALUES (1162, 'vip', '42', 'C10', 8);
INSERT INTO `tbl_seat` VALUES (1163, 'vip', '43', 'C11', 8);
INSERT INTO `tbl_seat` VALUES (1164, 'vip', '44', 'C12', 8);
INSERT INTO `tbl_seat` VALUES (1165, 'vip', '45', 'C13', 8);
INSERT INTO `tbl_seat` VALUES (1166, 'vip', '46', 'C14', 8);
INSERT INTO `tbl_seat` VALUES (1167, 'basic', '47', 'C15', 8);
INSERT INTO `tbl_seat` VALUES (1168, 'basic', '48', 'C16', 8);
INSERT INTO `tbl_seat` VALUES (1169, 'basic', '49', 'D1', 8);
INSERT INTO `tbl_seat` VALUES (1170, 'basic', '50', 'D2', 8);
INSERT INTO `tbl_seat` VALUES (1171, 'vip', '51', 'D3', 8);
INSERT INTO `tbl_seat` VALUES (1172, 'vip', '52', 'D4', 8);
INSERT INTO `tbl_seat` VALUES (1173, 'vip', '53', 'D5', 8);
INSERT INTO `tbl_seat` VALUES (1174, 'vip', '54', 'D6', 8);
INSERT INTO `tbl_seat` VALUES (1175, 'vip', '55', 'D7', 8);
INSERT INTO `tbl_seat` VALUES (1176, 'vip', '56', 'D8', 8);
INSERT INTO `tbl_seat` VALUES (1177, 'vip', '57', 'D9', 8);
INSERT INTO `tbl_seat` VALUES (1178, 'vip', '58', 'D10', 8);
INSERT INTO `tbl_seat` VALUES (1179, 'vip', '59', 'D11', 8);
INSERT INTO `tbl_seat` VALUES (1180, 'vip', '60', 'D12', 8);
INSERT INTO `tbl_seat` VALUES (1181, 'vip', '61', 'D13', 8);
INSERT INTO `tbl_seat` VALUES (1182, 'vip', '62', 'D14', 8);
INSERT INTO `tbl_seat` VALUES (1183, 'basic', '63', 'D15', 8);
INSERT INTO `tbl_seat` VALUES (1184, 'basic', '64', 'D16', 8);
INSERT INTO `tbl_seat` VALUES (1185, 'basic', '65', 'E1', 8);
INSERT INTO `tbl_seat` VALUES (1186, 'basic', '66', 'E2', 8);
INSERT INTO `tbl_seat` VALUES (1187, 'vip', '67', 'E3', 8);
INSERT INTO `tbl_seat` VALUES (1188, 'vip', '68', 'E4', 8);
INSERT INTO `tbl_seat` VALUES (1189, 'vip', '69', 'E5', 8);
INSERT INTO `tbl_seat` VALUES (1190, 'vip', '70', 'E6', 8);
INSERT INTO `tbl_seat` VALUES (1191, 'vip', '71', 'E7', 8);
INSERT INTO `tbl_seat` VALUES (1192, 'vip', '72', 'E8', 8);
INSERT INTO `tbl_seat` VALUES (1193, 'vip', '73', 'E9', 8);
INSERT INTO `tbl_seat` VALUES (1194, 'vip', '74', 'E10', 8);
INSERT INTO `tbl_seat` VALUES (1195, 'vip', '75', 'E11', 8);
INSERT INTO `tbl_seat` VALUES (1196, 'vip', '76', 'E12', 8);
INSERT INTO `tbl_seat` VALUES (1197, 'vip', '77', 'E13', 8);
INSERT INTO `tbl_seat` VALUES (1198, 'vip', '78', 'E14', 8);
INSERT INTO `tbl_seat` VALUES (1199, 'basic', '79', 'E15', 8);
INSERT INTO `tbl_seat` VALUES (1200, 'basic', '80', 'E16', 8);
INSERT INTO `tbl_seat` VALUES (1201, 'basic', '81', 'F1', 8);
INSERT INTO `tbl_seat` VALUES (1202, 'basic', '82', 'F2', 8);
INSERT INTO `tbl_seat` VALUES (1203, 'vip', '83', 'F3', 8);
INSERT INTO `tbl_seat` VALUES (1204, 'vip', '84', 'F4', 8);
INSERT INTO `tbl_seat` VALUES (1205, 'vip', '85', 'F5', 8);
INSERT INTO `tbl_seat` VALUES (1206, 'vip', '86', 'F6', 8);
INSERT INTO `tbl_seat` VALUES (1207, 'vip', '87', 'F7', 8);
INSERT INTO `tbl_seat` VALUES (1208, 'vip', '88', 'F8', 8);
INSERT INTO `tbl_seat` VALUES (1209, 'vip', '89', 'F9', 8);
INSERT INTO `tbl_seat` VALUES (1210, 'vip', '90', 'F10', 8);
INSERT INTO `tbl_seat` VALUES (1211, 'vip', '91', 'F11', 8);
INSERT INTO `tbl_seat` VALUES (1212, 'vip', '92', 'F12', 8);
INSERT INTO `tbl_seat` VALUES (1213, 'vip', '93', 'F13', 8);
INSERT INTO `tbl_seat` VALUES (1214, 'vip', '94', 'F14', 8);
INSERT INTO `tbl_seat` VALUES (1215, 'basic', '95', 'F15', 8);
INSERT INTO `tbl_seat` VALUES (1216, 'basic', '96', 'F16', 8);
INSERT INTO `tbl_seat` VALUES (1217, 'basic', '97', 'G1', 8);
INSERT INTO `tbl_seat` VALUES (1218, 'basic', '98', 'G2', 8);
INSERT INTO `tbl_seat` VALUES (1219, 'vip', '99', 'G3', 8);
INSERT INTO `tbl_seat` VALUES (1220, 'vip', '100', 'G4', 8);
INSERT INTO `tbl_seat` VALUES (1221, 'vip', '101', 'G5', 8);
INSERT INTO `tbl_seat` VALUES (1222, 'vip', '102', 'G6', 8);
INSERT INTO `tbl_seat` VALUES (1223, 'vip', '103', 'G7', 8);
INSERT INTO `tbl_seat` VALUES (1224, 'vip', '104', 'G8', 8);
INSERT INTO `tbl_seat` VALUES (1225, 'vip', '105', 'G9', 8);
INSERT INTO `tbl_seat` VALUES (1226, 'vip', '106', 'G10', 8);
INSERT INTO `tbl_seat` VALUES (1227, 'vip', '107', 'G11', 8);
INSERT INTO `tbl_seat` VALUES (1228, 'vip', '108', 'G12', 8);
INSERT INTO `tbl_seat` VALUES (1229, 'vip', '109', 'G13', 8);
INSERT INTO `tbl_seat` VALUES (1230, 'vip', '110', 'G14', 8);
INSERT INTO `tbl_seat` VALUES (1231, 'basic', '111', 'G15', 8);
INSERT INTO `tbl_seat` VALUES (1232, 'basic', '112', 'G16', 8);
INSERT INTO `tbl_seat` VALUES (1233, 'basic', '113', 'H1', 8);
INSERT INTO `tbl_seat` VALUES (1234, 'basic', '114', 'H2', 8);
INSERT INTO `tbl_seat` VALUES (1235, 'vip', '115', 'H3', 8);
INSERT INTO `tbl_seat` VALUES (1236, 'vip', '116', 'H4', 8);
INSERT INTO `tbl_seat` VALUES (1237, 'vip', '117', 'H5', 8);
INSERT INTO `tbl_seat` VALUES (1238, 'vip', '118', 'H6', 8);
INSERT INTO `tbl_seat` VALUES (1239, 'vip', '119', 'H7', 8);
INSERT INTO `tbl_seat` VALUES (1240, 'vip', '120', 'H8', 8);
INSERT INTO `tbl_seat` VALUES (1241, 'vip', '121', 'H9', 8);
INSERT INTO `tbl_seat` VALUES (1242, 'vip', '122', 'H10', 8);
INSERT INTO `tbl_seat` VALUES (1243, 'vip', '123', 'H11', 8);
INSERT INTO `tbl_seat` VALUES (1244, 'vip', '124', 'H12', 8);
INSERT INTO `tbl_seat` VALUES (1245, 'vip', '125', 'H13', 8);
INSERT INTO `tbl_seat` VALUES (1246, 'vip', '126', 'H14', 8);
INSERT INTO `tbl_seat` VALUES (1247, 'basic', '127', 'H15', 8);
INSERT INTO `tbl_seat` VALUES (1248, 'basic', '128', 'H16', 8);
INSERT INTO `tbl_seat` VALUES (1249, 'basic', '129', 'I1', 8);
INSERT INTO `tbl_seat` VALUES (1250, 'basic', '130', 'I2', 8);
INSERT INTO `tbl_seat` VALUES (1251, 'basic', '131', 'I3', 8);
INSERT INTO `tbl_seat` VALUES (1252, 'basic', '132', 'I4', 8);
INSERT INTO `tbl_seat` VALUES (1253, 'basic', '133', 'I5', 8);
INSERT INTO `tbl_seat` VALUES (1254, 'basic', '134', 'I6', 8);
INSERT INTO `tbl_seat` VALUES (1255, 'basic', '135', 'I7', 8);
INSERT INTO `tbl_seat` VALUES (1256, 'basic', '136', 'I8', 8);
INSERT INTO `tbl_seat` VALUES (1257, 'basic', '137', 'I9', 8);
INSERT INTO `tbl_seat` VALUES (1258, 'basic', '138', 'I10', 8);
INSERT INTO `tbl_seat` VALUES (1259, 'basic', '139', 'I11', 8);
INSERT INTO `tbl_seat` VALUES (1260, 'basic', '140', 'I12', 8);
INSERT INTO `tbl_seat` VALUES (1261, 'basic', '141', 'I13', 8);
INSERT INTO `tbl_seat` VALUES (1262, 'basic', '142', 'I14', 8);
INSERT INTO `tbl_seat` VALUES (1263, 'basic', '143', 'I15', 8);
INSERT INTO `tbl_seat` VALUES (1264, 'basic', '144', 'I16', 8);
INSERT INTO `tbl_seat` VALUES (1265, 'basic', '145', 'J1', 8);
INSERT INTO `tbl_seat` VALUES (1266, 'basic', '146', 'J2', 8);
INSERT INTO `tbl_seat` VALUES (1267, 'basic', '147', 'J3', 8);
INSERT INTO `tbl_seat` VALUES (1268, 'basic', '148', 'J4', 8);
INSERT INTO `tbl_seat` VALUES (1269, 'basic', '149', 'J5', 8);
INSERT INTO `tbl_seat` VALUES (1270, 'basic', '150', 'J6', 8);
INSERT INTO `tbl_seat` VALUES (1271, 'basic', '151', 'J7', 8);
INSERT INTO `tbl_seat` VALUES (1272, 'basic', '152', 'J8', 8);
INSERT INTO `tbl_seat` VALUES (1273, 'basic', '153', 'J9', 8);
INSERT INTO `tbl_seat` VALUES (1274, 'basic', '154', 'J10', 8);
INSERT INTO `tbl_seat` VALUES (1275, 'basic', '155', 'J11', 8);
INSERT INTO `tbl_seat` VALUES (1276, 'basic', '156', 'J12', 8);
INSERT INTO `tbl_seat` VALUES (1277, 'basic', '157', 'J13', 8);
INSERT INTO `tbl_seat` VALUES (1278, 'basic', '158', 'J14', 8);
INSERT INTO `tbl_seat` VALUES (1279, 'basic', '159', 'J15', 8);
INSERT INTO `tbl_seat` VALUES (1280, 'basic', '160', 'J16', 8);
INSERT INTO `tbl_seat` VALUES (1281, 'basic', '1', 'A1', 9);
INSERT INTO `tbl_seat` VALUES (1282, 'basic', '2', 'A2', 9);
INSERT INTO `tbl_seat` VALUES (1283, 'basic', '3', 'A3', 9);
INSERT INTO `tbl_seat` VALUES (1284, 'basic', '4', 'A4', 9);
INSERT INTO `tbl_seat` VALUES (1285, 'basic', '5', 'A5', 9);
INSERT INTO `tbl_seat` VALUES (1286, 'basic', '6', 'A6', 9);
INSERT INTO `tbl_seat` VALUES (1287, 'basic', '7', 'A7', 9);
INSERT INTO `tbl_seat` VALUES (1288, 'basic', '8', 'A8', 9);
INSERT INTO `tbl_seat` VALUES (1289, 'basic', '9', 'A9', 9);
INSERT INTO `tbl_seat` VALUES (1290, 'basic', '10', 'A10', 9);
INSERT INTO `tbl_seat` VALUES (1291, 'basic', '11', 'A11', 9);
INSERT INTO `tbl_seat` VALUES (1292, 'basic', '12', 'A12', 9);
INSERT INTO `tbl_seat` VALUES (1293, 'basic', '13', 'A13', 9);
INSERT INTO `tbl_seat` VALUES (1294, 'basic', '14', 'A14', 9);
INSERT INTO `tbl_seat` VALUES (1295, 'basic', '15', 'A15', 9);
INSERT INTO `tbl_seat` VALUES (1296, 'basic', '16', 'A16', 9);
INSERT INTO `tbl_seat` VALUES (1297, 'basic', '17', 'B1', 9);
INSERT INTO `tbl_seat` VALUES (1298, 'basic', '18', 'B2', 9);
INSERT INTO `tbl_seat` VALUES (1299, 'basic', '19', 'B3', 9);
INSERT INTO `tbl_seat` VALUES (1300, 'basic', '20', 'B4', 9);
INSERT INTO `tbl_seat` VALUES (1301, 'basic', '21', 'B5', 9);
INSERT INTO `tbl_seat` VALUES (1302, 'basic', '22', 'B6', 9);
INSERT INTO `tbl_seat` VALUES (1303, 'basic', '23', 'B7', 9);
INSERT INTO `tbl_seat` VALUES (1304, 'basic', '24', 'B8', 9);
INSERT INTO `tbl_seat` VALUES (1305, 'basic', '25', 'B9', 9);
INSERT INTO `tbl_seat` VALUES (1306, 'basic', '26', 'B10', 9);
INSERT INTO `tbl_seat` VALUES (1307, 'basic', '27', 'B11', 9);
INSERT INTO `tbl_seat` VALUES (1308, 'basic', '28', 'B12', 9);
INSERT INTO `tbl_seat` VALUES (1309, 'basic', '29', 'B13', 9);
INSERT INTO `tbl_seat` VALUES (1310, 'basic', '30', 'B14', 9);
INSERT INTO `tbl_seat` VALUES (1311, 'basic', '31', 'B15', 9);
INSERT INTO `tbl_seat` VALUES (1312, 'basic', '32', 'B16', 9);
INSERT INTO `tbl_seat` VALUES (1313, 'basic', '33', 'C1', 9);
INSERT INTO `tbl_seat` VALUES (1314, 'basic', '34', 'C2', 9);
INSERT INTO `tbl_seat` VALUES (1315, 'vip', '35', 'C3', 9);
INSERT INTO `tbl_seat` VALUES (1316, 'vip', '36', 'C4', 9);
INSERT INTO `tbl_seat` VALUES (1317, 'vip', '37', 'C5', 9);
INSERT INTO `tbl_seat` VALUES (1318, 'vip', '38', 'C6', 9);
INSERT INTO `tbl_seat` VALUES (1319, 'vip', '39', 'C7', 9);
INSERT INTO `tbl_seat` VALUES (1320, 'vip', '40', 'C8', 9);
INSERT INTO `tbl_seat` VALUES (1321, 'vip', '41', 'C9', 9);
INSERT INTO `tbl_seat` VALUES (1322, 'vip', '42', 'C10', 9);
INSERT INTO `tbl_seat` VALUES (1323, 'vip', '43', 'C11', 9);
INSERT INTO `tbl_seat` VALUES (1324, 'vip', '44', 'C12', 9);
INSERT INTO `tbl_seat` VALUES (1325, 'vip', '45', 'C13', 9);
INSERT INTO `tbl_seat` VALUES (1326, 'vip', '46', 'C14', 9);
INSERT INTO `tbl_seat` VALUES (1327, 'basic', '47', 'C15', 9);
INSERT INTO `tbl_seat` VALUES (1328, 'basic', '48', 'C16', 9);
INSERT INTO `tbl_seat` VALUES (1329, 'basic', '49', 'D1', 9);
INSERT INTO `tbl_seat` VALUES (1330, 'basic', '50', 'D2', 9);
INSERT INTO `tbl_seat` VALUES (1331, 'vip', '51', 'D3', 9);
INSERT INTO `tbl_seat` VALUES (1332, 'vip', '52', 'D4', 9);
INSERT INTO `tbl_seat` VALUES (1333, 'vip', '53', 'D5', 9);
INSERT INTO `tbl_seat` VALUES (1334, 'vip', '54', 'D6', 9);
INSERT INTO `tbl_seat` VALUES (1335, 'vip', '55', 'D7', 9);
INSERT INTO `tbl_seat` VALUES (1336, 'vip', '56', 'D8', 9);
INSERT INTO `tbl_seat` VALUES (1337, 'vip', '57', 'D9', 9);
INSERT INTO `tbl_seat` VALUES (1338, 'vip', '58', 'D10', 9);
INSERT INTO `tbl_seat` VALUES (1339, 'vip', '59', 'D11', 9);
INSERT INTO `tbl_seat` VALUES (1340, 'vip', '60', 'D12', 9);
INSERT INTO `tbl_seat` VALUES (1341, 'vip', '61', 'D13', 9);
INSERT INTO `tbl_seat` VALUES (1342, 'vip', '62', 'D14', 9);
INSERT INTO `tbl_seat` VALUES (1343, 'basic', '63', 'D15', 9);
INSERT INTO `tbl_seat` VALUES (1344, 'basic', '64', 'D16', 9);
INSERT INTO `tbl_seat` VALUES (1345, 'basic', '65', 'E1', 9);
INSERT INTO `tbl_seat` VALUES (1346, 'basic', '66', 'E2', 9);
INSERT INTO `tbl_seat` VALUES (1347, 'vip', '67', 'E3', 9);
INSERT INTO `tbl_seat` VALUES (1348, 'vip', '68', 'E4', 9);
INSERT INTO `tbl_seat` VALUES (1349, 'vip', '69', 'E5', 9);
INSERT INTO `tbl_seat` VALUES (1350, 'vip', '70', 'E6', 9);
INSERT INTO `tbl_seat` VALUES (1351, 'vip', '71', 'E7', 9);
INSERT INTO `tbl_seat` VALUES (1352, 'vip', '72', 'E8', 9);
INSERT INTO `tbl_seat` VALUES (1353, 'vip', '73', 'E9', 9);
INSERT INTO `tbl_seat` VALUES (1354, 'vip', '74', 'E10', 9);
INSERT INTO `tbl_seat` VALUES (1355, 'vip', '75', 'E11', 9);
INSERT INTO `tbl_seat` VALUES (1356, 'vip', '76', 'E12', 9);
INSERT INTO `tbl_seat` VALUES (1357, 'vip', '77', 'E13', 9);
INSERT INTO `tbl_seat` VALUES (1358, 'vip', '78', 'E14', 9);
INSERT INTO `tbl_seat` VALUES (1359, 'basic', '79', 'E15', 9);
INSERT INTO `tbl_seat` VALUES (1360, 'basic', '80', 'E16', 9);
INSERT INTO `tbl_seat` VALUES (1361, 'basic', '81', 'F1', 9);
INSERT INTO `tbl_seat` VALUES (1362, 'basic', '82', 'F2', 9);
INSERT INTO `tbl_seat` VALUES (1363, 'vip', '83', 'F3', 9);
INSERT INTO `tbl_seat` VALUES (1364, 'vip', '84', 'F4', 9);
INSERT INTO `tbl_seat` VALUES (1365, 'vip', '85', 'F5', 9);
INSERT INTO `tbl_seat` VALUES (1366, 'vip', '86', 'F6', 9);
INSERT INTO `tbl_seat` VALUES (1367, 'vip', '87', 'F7', 9);
INSERT INTO `tbl_seat` VALUES (1368, 'vip', '88', 'F8', 9);
INSERT INTO `tbl_seat` VALUES (1369, 'vip', '89', 'F9', 9);
INSERT INTO `tbl_seat` VALUES (1370, 'vip', '90', 'F10', 9);
INSERT INTO `tbl_seat` VALUES (1371, 'vip', '91', 'F11', 9);
INSERT INTO `tbl_seat` VALUES (1372, 'vip', '92', 'F12', 9);
INSERT INTO `tbl_seat` VALUES (1373, 'vip', '93', 'F13', 9);
INSERT INTO `tbl_seat` VALUES (1374, 'vip', '94', 'F14', 9);
INSERT INTO `tbl_seat` VALUES (1375, 'basic', '95', 'F15', 9);
INSERT INTO `tbl_seat` VALUES (1376, 'basic', '96', 'F16', 9);
INSERT INTO `tbl_seat` VALUES (1377, 'basic', '97', 'G1', 9);
INSERT INTO `tbl_seat` VALUES (1378, 'basic', '98', 'G2', 9);
INSERT INTO `tbl_seat` VALUES (1379, 'vip', '99', 'G3', 9);
INSERT INTO `tbl_seat` VALUES (1380, 'vip', '100', 'G4', 9);
INSERT INTO `tbl_seat` VALUES (1381, 'vip', '101', 'G5', 9);
INSERT INTO `tbl_seat` VALUES (1382, 'vip', '102', 'G6', 9);
INSERT INTO `tbl_seat` VALUES (1383, 'vip', '103', 'G7', 9);
INSERT INTO `tbl_seat` VALUES (1384, 'vip', '104', 'G8', 9);
INSERT INTO `tbl_seat` VALUES (1385, 'vip', '105', 'G9', 9);
INSERT INTO `tbl_seat` VALUES (1386, 'vip', '106', 'G10', 9);
INSERT INTO `tbl_seat` VALUES (1387, 'vip', '107', 'G11', 9);
INSERT INTO `tbl_seat` VALUES (1388, 'vip', '108', 'G12', 9);
INSERT INTO `tbl_seat` VALUES (1389, 'vip', '109', 'G13', 9);
INSERT INTO `tbl_seat` VALUES (1390, 'vip', '110', 'G14', 9);
INSERT INTO `tbl_seat` VALUES (1391, 'basic', '111', 'G15', 9);
INSERT INTO `tbl_seat` VALUES (1392, 'basic', '112', 'G16', 9);
INSERT INTO `tbl_seat` VALUES (1393, 'basic', '113', 'H1', 9);
INSERT INTO `tbl_seat` VALUES (1394, 'basic', '114', 'H2', 9);
INSERT INTO `tbl_seat` VALUES (1395, 'vip', '115', 'H3', 9);
INSERT INTO `tbl_seat` VALUES (1396, 'vip', '116', 'H4', 9);
INSERT INTO `tbl_seat` VALUES (1397, 'vip', '117', 'H5', 9);
INSERT INTO `tbl_seat` VALUES (1398, 'vip', '118', 'H6', 9);
INSERT INTO `tbl_seat` VALUES (1399, 'vip', '119', 'H7', 9);
INSERT INTO `tbl_seat` VALUES (1400, 'vip', '120', 'H8', 9);
INSERT INTO `tbl_seat` VALUES (1401, 'vip', '121', 'H9', 9);
INSERT INTO `tbl_seat` VALUES (1402, 'vip', '122', 'H10', 9);
INSERT INTO `tbl_seat` VALUES (1403, 'vip', '123', 'H11', 9);
INSERT INTO `tbl_seat` VALUES (1404, 'vip', '124', 'H12', 9);
INSERT INTO `tbl_seat` VALUES (1405, 'vip', '125', 'H13', 9);
INSERT INTO `tbl_seat` VALUES (1406, 'vip', '126', 'H14', 9);
INSERT INTO `tbl_seat` VALUES (1407, 'basic', '127', 'H15', 9);
INSERT INTO `tbl_seat` VALUES (1408, 'basic', '128', 'H16', 9);
INSERT INTO `tbl_seat` VALUES (1409, 'basic', '129', 'I1', 9);
INSERT INTO `tbl_seat` VALUES (1410, 'basic', '130', 'I2', 9);
INSERT INTO `tbl_seat` VALUES (1411, 'basic', '131', 'I3', 9);
INSERT INTO `tbl_seat` VALUES (1412, 'basic', '132', 'I4', 9);
INSERT INTO `tbl_seat` VALUES (1413, 'basic', '133', 'I5', 9);
INSERT INTO `tbl_seat` VALUES (1414, 'basic', '134', 'I6', 9);
INSERT INTO `tbl_seat` VALUES (1415, 'basic', '135', 'I7', 9);
INSERT INTO `tbl_seat` VALUES (1416, 'basic', '136', 'I8', 9);
INSERT INTO `tbl_seat` VALUES (1417, 'basic', '137', 'I9', 9);
INSERT INTO `tbl_seat` VALUES (1418, 'basic', '138', 'I10', 9);
INSERT INTO `tbl_seat` VALUES (1419, 'basic', '139', 'I11', 9);
INSERT INTO `tbl_seat` VALUES (1420, 'basic', '140', 'I12', 9);
INSERT INTO `tbl_seat` VALUES (1421, 'basic', '141', 'I13', 9);
INSERT INTO `tbl_seat` VALUES (1422, 'basic', '142', 'I14', 9);
INSERT INTO `tbl_seat` VALUES (1423, 'basic', '143', 'I15', 9);
INSERT INTO `tbl_seat` VALUES (1424, 'basic', '144', 'I16', 9);
INSERT INTO `tbl_seat` VALUES (1425, 'basic', '145', 'J1', 9);
INSERT INTO `tbl_seat` VALUES (1426, 'basic', '146', 'J2', 9);
INSERT INTO `tbl_seat` VALUES (1427, 'basic', '147', 'J3', 9);
INSERT INTO `tbl_seat` VALUES (1428, 'basic', '148', 'J4', 9);
INSERT INTO `tbl_seat` VALUES (1429, 'basic', '149', 'J5', 9);
INSERT INTO `tbl_seat` VALUES (1430, 'basic', '150', 'J6', 9);
INSERT INTO `tbl_seat` VALUES (1431, 'basic', '151', 'J7', 9);
INSERT INTO `tbl_seat` VALUES (1432, 'basic', '152', 'J8', 9);
INSERT INTO `tbl_seat` VALUES (1433, 'basic', '153', 'J9', 9);
INSERT INTO `tbl_seat` VALUES (1434, 'basic', '154', 'J10', 9);
INSERT INTO `tbl_seat` VALUES (1435, 'basic', '155', 'J11', 9);
INSERT INTO `tbl_seat` VALUES (1436, 'basic', '156', 'J12', 9);
INSERT INTO `tbl_seat` VALUES (1437, 'basic', '157', 'J13', 9);
INSERT INTO `tbl_seat` VALUES (1438, 'basic', '158', 'J14', 9);
INSERT INTO `tbl_seat` VALUES (1439, 'basic', '159', 'J15', 9);
INSERT INTO `tbl_seat` VALUES (1440, 'basic', '160', 'J16', 9);
INSERT INTO `tbl_seat` VALUES (1441, 'basic', '1', 'A1', 10);
INSERT INTO `tbl_seat` VALUES (1442, 'basic', '2', 'A2', 10);
INSERT INTO `tbl_seat` VALUES (1443, 'basic', '3', 'A3', 10);
INSERT INTO `tbl_seat` VALUES (1444, 'basic', '4', 'A4', 10);
INSERT INTO `tbl_seat` VALUES (1445, 'basic', '5', 'A5', 10);
INSERT INTO `tbl_seat` VALUES (1446, 'basic', '6', 'A6', 10);
INSERT INTO `tbl_seat` VALUES (1447, 'basic', '7', 'A7', 10);
INSERT INTO `tbl_seat` VALUES (1448, 'basic', '8', 'A8', 10);
INSERT INTO `tbl_seat` VALUES (1449, 'basic', '9', 'A9', 10);
INSERT INTO `tbl_seat` VALUES (1450, 'basic', '10', 'A10', 10);
INSERT INTO `tbl_seat` VALUES (1451, 'basic', '11', 'A11', 10);
INSERT INTO `tbl_seat` VALUES (1452, 'basic', '12', 'A12', 10);
INSERT INTO `tbl_seat` VALUES (1453, 'basic', '13', 'A13', 10);
INSERT INTO `tbl_seat` VALUES (1454, 'basic', '14', 'A14', 10);
INSERT INTO `tbl_seat` VALUES (1455, 'basic', '15', 'A15', 10);
INSERT INTO `tbl_seat` VALUES (1456, 'basic', '16', 'A16', 10);
INSERT INTO `tbl_seat` VALUES (1457, 'basic', '17', 'B1', 10);
INSERT INTO `tbl_seat` VALUES (1458, 'basic', '18', 'B2', 10);
INSERT INTO `tbl_seat` VALUES (1459, 'basic', '19', 'B3', 10);
INSERT INTO `tbl_seat` VALUES (1460, 'basic', '20', 'B4', 10);
INSERT INTO `tbl_seat` VALUES (1461, 'basic', '21', 'B5', 10);
INSERT INTO `tbl_seat` VALUES (1462, 'basic', '22', 'B6', 10);
INSERT INTO `tbl_seat` VALUES (1463, 'basic', '23', 'B7', 10);
INSERT INTO `tbl_seat` VALUES (1464, 'basic', '24', 'B8', 10);
INSERT INTO `tbl_seat` VALUES (1465, 'basic', '25', 'B9', 10);
INSERT INTO `tbl_seat` VALUES (1466, 'basic', '26', 'B10', 10);
INSERT INTO `tbl_seat` VALUES (1467, 'basic', '27', 'B11', 10);
INSERT INTO `tbl_seat` VALUES (1468, 'basic', '28', 'B12', 10);
INSERT INTO `tbl_seat` VALUES (1469, 'basic', '29', 'B13', 10);
INSERT INTO `tbl_seat` VALUES (1470, 'basic', '30', 'B14', 10);
INSERT INTO `tbl_seat` VALUES (1471, 'basic', '31', 'B15', 10);
INSERT INTO `tbl_seat` VALUES (1472, 'basic', '32', 'B16', 10);
INSERT INTO `tbl_seat` VALUES (1473, 'basic', '33', 'C1', 10);
INSERT INTO `tbl_seat` VALUES (1474, 'basic', '34', 'C2', 10);
INSERT INTO `tbl_seat` VALUES (1475, 'vip', '35', 'C3', 10);
INSERT INTO `tbl_seat` VALUES (1476, 'vip', '36', 'C4', 10);
INSERT INTO `tbl_seat` VALUES (1477, 'vip', '37', 'C5', 10);
INSERT INTO `tbl_seat` VALUES (1478, 'vip', '38', 'C6', 10);
INSERT INTO `tbl_seat` VALUES (1479, 'vip', '39', 'C7', 10);
INSERT INTO `tbl_seat` VALUES (1480, 'vip', '40', 'C8', 10);
INSERT INTO `tbl_seat` VALUES (1481, 'vip', '41', 'C9', 10);
INSERT INTO `tbl_seat` VALUES (1482, 'vip', '42', 'C10', 10);
INSERT INTO `tbl_seat` VALUES (1483, 'vip', '43', 'C11', 10);
INSERT INTO `tbl_seat` VALUES (1484, 'vip', '44', 'C12', 10);
INSERT INTO `tbl_seat` VALUES (1485, 'vip', '45', 'C13', 10);
INSERT INTO `tbl_seat` VALUES (1486, 'vip', '46', 'C14', 10);
INSERT INTO `tbl_seat` VALUES (1487, 'basic', '47', 'C15', 10);
INSERT INTO `tbl_seat` VALUES (1488, 'basic', '48', 'C16', 10);
INSERT INTO `tbl_seat` VALUES (1489, 'basic', '49', 'D1', 10);
INSERT INTO `tbl_seat` VALUES (1490, 'basic', '50', 'D2', 10);
INSERT INTO `tbl_seat` VALUES (1491, 'vip', '51', 'D3', 10);
INSERT INTO `tbl_seat` VALUES (1492, 'vip', '52', 'D4', 10);
INSERT INTO `tbl_seat` VALUES (1493, 'vip', '53', 'D5', 10);
INSERT INTO `tbl_seat` VALUES (1494, 'vip', '54', 'D6', 10);
INSERT INTO `tbl_seat` VALUES (1495, 'vip', '55', 'D7', 10);
INSERT INTO `tbl_seat` VALUES (1496, 'vip', '56', 'D8', 10);
INSERT INTO `tbl_seat` VALUES (1497, 'vip', '57', 'D9', 10);
INSERT INTO `tbl_seat` VALUES (1498, 'vip', '58', 'D10', 10);
INSERT INTO `tbl_seat` VALUES (1499, 'vip', '59', 'D11', 10);
INSERT INTO `tbl_seat` VALUES (1500, 'vip', '60', 'D12', 10);
INSERT INTO `tbl_seat` VALUES (1501, 'vip', '61', 'D13', 10);
INSERT INTO `tbl_seat` VALUES (1502, 'vip', '62', 'D14', 10);
INSERT INTO `tbl_seat` VALUES (1503, 'basic', '63', 'D15', 10);
INSERT INTO `tbl_seat` VALUES (1504, 'basic', '64', 'D16', 10);
INSERT INTO `tbl_seat` VALUES (1505, 'basic', '65', 'E1', 10);
INSERT INTO `tbl_seat` VALUES (1506, 'basic', '66', 'E2', 10);
INSERT INTO `tbl_seat` VALUES (1507, 'vip', '67', 'E3', 10);
INSERT INTO `tbl_seat` VALUES (1508, 'vip', '68', 'E4', 10);
INSERT INTO `tbl_seat` VALUES (1509, 'vip', '69', 'E5', 10);
INSERT INTO `tbl_seat` VALUES (1510, 'vip', '70', 'E6', 10);
INSERT INTO `tbl_seat` VALUES (1511, 'vip', '71', 'E7', 10);
INSERT INTO `tbl_seat` VALUES (1512, 'vip', '72', 'E8', 10);
INSERT INTO `tbl_seat` VALUES (1513, 'vip', '73', 'E9', 10);
INSERT INTO `tbl_seat` VALUES (1514, 'vip', '74', 'E10', 10);
INSERT INTO `tbl_seat` VALUES (1515, 'vip', '75', 'E11', 10);
INSERT INTO `tbl_seat` VALUES (1516, 'vip', '76', 'E12', 10);
INSERT INTO `tbl_seat` VALUES (1517, 'vip', '77', 'E13', 10);
INSERT INTO `tbl_seat` VALUES (1518, 'vip', '78', 'E14', 10);
INSERT INTO `tbl_seat` VALUES (1519, 'basic', '79', 'E15', 10);
INSERT INTO `tbl_seat` VALUES (1520, 'basic', '80', 'E16', 10);
INSERT INTO `tbl_seat` VALUES (1521, 'basic', '81', 'F1', 10);
INSERT INTO `tbl_seat` VALUES (1522, 'basic', '82', 'F2', 10);
INSERT INTO `tbl_seat` VALUES (1523, 'vip', '83', 'F3', 10);
INSERT INTO `tbl_seat` VALUES (1524, 'vip', '84', 'F4', 10);
INSERT INTO `tbl_seat` VALUES (1525, 'vip', '85', 'F5', 10);
INSERT INTO `tbl_seat` VALUES (1526, 'vip', '86', 'F6', 10);
INSERT INTO `tbl_seat` VALUES (1527, 'vip', '87', 'F7', 10);
INSERT INTO `tbl_seat` VALUES (1528, 'vip', '88', 'F8', 10);
INSERT INTO `tbl_seat` VALUES (1529, 'vip', '89', 'F9', 10);
INSERT INTO `tbl_seat` VALUES (1530, 'vip', '90', 'F10', 10);
INSERT INTO `tbl_seat` VALUES (1531, 'vip', '91', 'F11', 10);
INSERT INTO `tbl_seat` VALUES (1532, 'vip', '92', 'F12', 10);
INSERT INTO `tbl_seat` VALUES (1533, 'vip', '93', 'F13', 10);
INSERT INTO `tbl_seat` VALUES (1534, 'vip', '94', 'F14', 10);
INSERT INTO `tbl_seat` VALUES (1535, 'basic', '95', 'F15', 10);
INSERT INTO `tbl_seat` VALUES (1536, 'basic', '96', 'F16', 10);
INSERT INTO `tbl_seat` VALUES (1537, 'basic', '97', 'G1', 10);
INSERT INTO `tbl_seat` VALUES (1538, 'basic', '98', 'G2', 10);
INSERT INTO `tbl_seat` VALUES (1539, 'vip', '99', 'G3', 10);
INSERT INTO `tbl_seat` VALUES (1540, 'vip', '100', 'G4', 10);
INSERT INTO `tbl_seat` VALUES (1541, 'vip', '101', 'G5', 10);
INSERT INTO `tbl_seat` VALUES (1542, 'vip', '102', 'G6', 10);
INSERT INTO `tbl_seat` VALUES (1543, 'vip', '103', 'G7', 10);
INSERT INTO `tbl_seat` VALUES (1544, 'vip', '104', 'G8', 10);
INSERT INTO `tbl_seat` VALUES (1545, 'vip', '105', 'G9', 10);
INSERT INTO `tbl_seat` VALUES (1546, 'vip', '106', 'G10', 10);
INSERT INTO `tbl_seat` VALUES (1547, 'vip', '107', 'G11', 10);
INSERT INTO `tbl_seat` VALUES (1548, 'vip', '108', 'G12', 10);
INSERT INTO `tbl_seat` VALUES (1549, 'vip', '109', 'G13', 10);
INSERT INTO `tbl_seat` VALUES (1550, 'vip', '110', 'G14', 10);
INSERT INTO `tbl_seat` VALUES (1551, 'basic', '111', 'G15', 10);
INSERT INTO `tbl_seat` VALUES (1552, 'basic', '112', 'G16', 10);
INSERT INTO `tbl_seat` VALUES (1553, 'basic', '113', 'H1', 10);
INSERT INTO `tbl_seat` VALUES (1554, 'basic', '114', 'H2', 10);
INSERT INTO `tbl_seat` VALUES (1555, 'vip', '115', 'H3', 10);
INSERT INTO `tbl_seat` VALUES (1556, 'vip', '116', 'H4', 10);
INSERT INTO `tbl_seat` VALUES (1557, 'vip', '117', 'H5', 10);
INSERT INTO `tbl_seat` VALUES (1558, 'vip', '118', 'H6', 10);
INSERT INTO `tbl_seat` VALUES (1559, 'vip', '119', 'H7', 10);
INSERT INTO `tbl_seat` VALUES (1560, 'vip', '120', 'H8', 10);
INSERT INTO `tbl_seat` VALUES (1561, 'vip', '121', 'H9', 10);
INSERT INTO `tbl_seat` VALUES (1562, 'vip', '122', 'H10', 10);
INSERT INTO `tbl_seat` VALUES (1563, 'vip', '123', 'H11', 10);
INSERT INTO `tbl_seat` VALUES (1564, 'vip', '124', 'H12', 10);
INSERT INTO `tbl_seat` VALUES (1565, 'vip', '125', 'H13', 10);
INSERT INTO `tbl_seat` VALUES (1566, 'vip', '126', 'H14', 10);
INSERT INTO `tbl_seat` VALUES (1567, 'basic', '127', 'H15', 10);
INSERT INTO `tbl_seat` VALUES (1568, 'basic', '128', 'H16', 10);
INSERT INTO `tbl_seat` VALUES (1569, 'basic', '129', 'I1', 10);
INSERT INTO `tbl_seat` VALUES (1570, 'basic', '130', 'I2', 10);
INSERT INTO `tbl_seat` VALUES (1571, 'basic', '131', 'I3', 10);
INSERT INTO `tbl_seat` VALUES (1572, 'basic', '132', 'I4', 10);
INSERT INTO `tbl_seat` VALUES (1573, 'basic', '133', 'I5', 10);
INSERT INTO `tbl_seat` VALUES (1574, 'basic', '134', 'I6', 10);
INSERT INTO `tbl_seat` VALUES (1575, 'basic', '135', 'I7', 10);
INSERT INTO `tbl_seat` VALUES (1576, 'basic', '136', 'I8', 10);
INSERT INTO `tbl_seat` VALUES (1577, 'basic', '137', 'I9', 10);
INSERT INTO `tbl_seat` VALUES (1578, 'basic', '138', 'I10', 10);
INSERT INTO `tbl_seat` VALUES (1579, 'basic', '139', 'I11', 10);
INSERT INTO `tbl_seat` VALUES (1580, 'basic', '140', 'I12', 10);
INSERT INTO `tbl_seat` VALUES (1581, 'basic', '141', 'I13', 10);
INSERT INTO `tbl_seat` VALUES (1582, 'basic', '142', 'I14', 10);
INSERT INTO `tbl_seat` VALUES (1583, 'basic', '143', 'I15', 10);
INSERT INTO `tbl_seat` VALUES (1584, 'basic', '144', 'I16', 10);
INSERT INTO `tbl_seat` VALUES (1585, 'basic', '145', 'J1', 10);
INSERT INTO `tbl_seat` VALUES (1586, 'basic', '146', 'J2', 10);
INSERT INTO `tbl_seat` VALUES (1587, 'basic', '147', 'J3', 10);
INSERT INTO `tbl_seat` VALUES (1588, 'basic', '148', 'J4', 10);
INSERT INTO `tbl_seat` VALUES (1589, 'basic', '149', 'J5', 10);
INSERT INTO `tbl_seat` VALUES (1590, 'basic', '150', 'J6', 10);
INSERT INTO `tbl_seat` VALUES (1591, 'basic', '151', 'J7', 10);
INSERT INTO `tbl_seat` VALUES (1592, 'basic', '152', 'J8', 10);
INSERT INTO `tbl_seat` VALUES (1593, 'basic', '153', 'J9', 10);
INSERT INTO `tbl_seat` VALUES (1594, 'basic', '154', 'J10', 10);
INSERT INTO `tbl_seat` VALUES (1595, 'basic', '155', 'J11', 10);
INSERT INTO `tbl_seat` VALUES (1596, 'basic', '156', 'J12', 10);
INSERT INTO `tbl_seat` VALUES (1597, 'basic', '157', 'J13', 10);
INSERT INTO `tbl_seat` VALUES (1598, 'basic', '158', 'J14', 10);
INSERT INTO `tbl_seat` VALUES (1599, 'basic', '159', 'J15', 10);
INSERT INTO `tbl_seat` VALUES (1600, 'basic', '160', 'J16', 10);

-- ----------------------------
-- Table structure for tbl_theater
-- ----------------------------
DROP TABLE IF EXISTS `tbl_theater`;
CREATE TABLE `tbl_theater`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logo_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ten_he_thong_rap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_theater
-- ----------------------------
INSERT INTO `tbl_theater` VALUES (1, 'https://i.imgur.com/lAMfQyj_d.webp?maxwidth=760&fidelity=grand', '2D');
INSERT INTO `tbl_theater` VALUES (2, 'https://i.imgur.com/lAMfQyj_d.webp?maxwidth=760&fidelity=grand', '3D IMAX');
INSERT INTO `tbl_theater` VALUES (3, 'https://i.imgur.com/8Lojaih.jpeg', '4DX');

-- ----------------------------
-- Table structure for tbl_ticket
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ticket`;
CREATE TABLE `tbl_ticket`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gia_ve` int NOT NULL,
  `ngay_gio_dat` datetime NULL DEFAULT NULL,
  `ma_lichchieu` bigint NULL DEFAULT NULL,
  `ma_ghe` bigint NULL DEFAULT NULL,
  `tai_khoan` bigint NULL DEFAULT NULL,
  `ma_ve` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKkk4cnosjt7ruspfdmwo5pqgf7`(`ma_lichchieu`) USING BTREE,
  INDEX `FKphgtgsk6yy99ynvtelqmxwxcq`(`ma_ghe`) USING BTREE,
  INDEX `FKpdqsu3u0bthkm3j1fohy4t7w8`(`tai_khoan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tbl_ticket
-- ----------------------------
INSERT INTO `tbl_ticket` VALUES (1, 70000, '2023-05-06 11:31:28', 1, 115, 1, 1);
INSERT INTO `tbl_ticket` VALUES (2, 70000, '2023-05-06 11:31:48', 1, 50, 1, 2);
INSERT INTO `tbl_ticket` VALUES (3, 70000, '2023-05-06 11:31:48', 1, 135, 1, 2);
INSERT INTO `tbl_ticket` VALUES (4, 70000, '2023-05-06 11:33:13', 1, 37, 1, 3);
INSERT INTO `tbl_ticket` VALUES (5, 70000, '2023-05-06 11:33:14', 1, 39, 1, 3);
INSERT INTO `tbl_ticket` VALUES (6, 70000, '2023-05-06 11:33:14', 1, 53, 1, 3);
INSERT INTO `tbl_ticket` VALUES (7, 70000, '2023-05-06 11:33:14', 1, 54, 1, 3);
INSERT INTO `tbl_ticket` VALUES (8, 70000, '2023-05-06 11:33:14', 1, 55, 1, 3);
INSERT INTO `tbl_ticket` VALUES (9, 70000, '2023-05-06 11:33:14', 1, 69, 1, 3);
INSERT INTO `tbl_ticket` VALUES (10, 70000, '2023-05-06 11:33:14', 1, 71, 1, 3);
INSERT INTO `tbl_ticket` VALUES (11, 70000, '2023-05-06 22:23:51', 1, 104, 1, 4);
INSERT INTO `tbl_ticket` VALUES (12, 70000, '2023-05-06 22:23:51', 1, 105, 1, 4);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_non_expired` bit(1) NULL DEFAULT NULL,
  `account_non_locked` bit(1) NULL DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `credentials_non_expired` bit(1) NULL DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `firebase_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_type` int NULL DEFAULT NULL,
  `need_fix_pass` tinyint(1) NULL DEFAULT 0,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_k0bty7tbcye41jpxam88q5kj2`(`username`) USING BTREE,
  UNIQUE INDEX `UK_npn1wf1yu1g5rjohbek375pp1`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, b'1', b'1', b'1', b'1', 'admin@gmail.com', NULL, 'Dinh Dong', NULL, NULL, 0, 'admin', 'admin', '0123456789');
INSERT INTO `tbl_user` VALUES (2, b'1', b'1', b'1', b'1', 'user@gmail.com', NULL, 'User', NULL, NULL, 0, '123456', 'user', '0123456789');
INSERT INTO `tbl_user` VALUES (3, b'1', b'1', b'1', b'1', 'vg@gmail.com', NULL, 'ghifjjg ggjv', NULL, NULL, NULL, 'hjuihgh', 'hjuihgh', '1220322');
INSERT INTO `tbl_user` VALUES (4, b'1', b'1', b'1', b'1', 'vg2@gmail.com', NULL, 'ghifjjg ggjv', NULL, NULL, NULL, 'hjuihgh0', 'hjuihgh0', '1220322');

-- ----------------------------
-- Table structure for tbl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role`  (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  INDEX `FK6phlytlf1w3h9vutsu019xor5`(`role_id`) USING BTREE,
  INDEX `FKggc6wjqokl2vlw89y22a1j2oh`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES (1, 1);
INSERT INTO `tbl_user_role` VALUES (2, 2);
INSERT INTO `tbl_user_role` VALUES (4, 2);
INSERT INTO `tbl_user_role` VALUES (3, 2);

-- ----------------------------
-- Table structure for tbl_verification_codes
-- ----------------------------
DROP TABLE IF EXISTS `tbl_verification_codes`;
CREATE TABLE `tbl_verification_codes`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code_sms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `expired` datetime NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_verification_codes
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
