/*
 Navicat Premium Data Transfer

 Source Server         : xx
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:5000
 Source Schema         : trcode

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 24/07/2021 11:46:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_city
-- ----------------------------
DROP TABLE IF EXISTS `tb_city`;
CREATE TABLE `tb_city`  (
  `id` int(10) UNSIGNED NOT NULL COMMENT '主键',
  `city` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市名称',
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拼音简称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_city`(`city`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '疫情城市列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_city
-- ----------------------------
INSERT INTO `tb_city` VALUES (1, '阿坝市', 'ab');
INSERT INTO `tb_city` VALUES (2, '安康市', 'ak');
INSERT INTO `tb_city` VALUES (3, '阿克苏市', 'aks');
INSERT INTO `tb_city` VALUES (4, '阿拉善市', 'alsm');
INSERT INTO `tb_city` VALUES (5, '安顺市', 'anshun');
INSERT INTO `tb_city` VALUES (6, '安庆市', 'aq');
INSERT INTO `tb_city` VALUES (7, '鞍山市', 'as');
INSERT INTO `tb_city` VALUES (8, '安阳市', 'ay');
INSERT INTO `tb_city` VALUES (9, '百色市', 'baise');
INSERT INTO `tb_city` VALUES (10, '白山市', 'baishan');
INSERT INTO `tb_city` VALUES (11, '宝鸡市', 'baoji');
INSERT INTO `tb_city` VALUES (12, '巴中市', 'bazhong');
INSERT INTO `tb_city` VALUES (13, '蚌埠市', 'bb');
INSERT INTO `tb_city` VALUES (14, '白城市', 'bc');
INSERT INTO `tb_city` VALUES (15, '保定市', 'bd');
INSERT INTO `tb_city` VALUES (16, '博尔塔拉市', 'betl');
INSERT INTO `tb_city` VALUES (17, '北海市', 'bh');
INSERT INTO `tb_city` VALUES (18, '毕节市', 'bijie');
INSERT INTO `tb_city` VALUES (19, '北京市', 'bj');
INSERT INTO `tb_city` VALUES (20, '西双版纳市', 'bn');
INSERT INTO `tb_city` VALUES (21, '亳州市', 'bozhou');
INSERT INTO `tb_city` VALUES (22, '保山市', 'bs');
INSERT INTO `tb_city` VALUES (23, '包头市', 'bt');
INSERT INTO `tb_city` VALUES (24, '本溪市', 'bx');
INSERT INTO `tb_city` VALUES (25, '白银市', 'by');
INSERT INTO `tb_city` VALUES (26, '巴彦淖尔市', 'bycem');
INSERT INTO `tb_city` VALUES (27, '巴音郭楞市', 'bygl');
INSERT INTO `tb_city` VALUES (28, '滨州市', 'bz');
INSERT INTO `tb_city` VALUES (29, '沧州市', 'cangzhou');
INSERT INTO `tb_city` VALUES (30, '长春市', 'cc');
INSERT INTO `tb_city` VALUES (31, '成都市', 'cd');
INSERT INTO `tb_city` VALUES (32, '赤峰市', 'cf');
INSERT INTO `tb_city` VALUES (33, '常德市', 'changde');
INSERT INTO `tb_city` VALUES (34, '长治市', 'changzhi');
INSERT INTO `tb_city` VALUES (35, '潮州市', 'chaozhou');
INSERT INTO `tb_city` VALUES (36, '承德市', 'chengde');
INSERT INTO `tb_city` VALUES (37, '郴州市', 'chenzhou');
INSERT INTO `tb_city` VALUES (38, '池州市', 'chizhou');
INSERT INTO `tb_city` VALUES (39, '崇左市', 'chongzuo');
INSERT INTO `tb_city` VALUES (40, '滁州市', 'chuzhou');
INSERT INTO `tb_city` VALUES (41, '昌吉市', 'cj');
INSERT INTO `tb_city` VALUES (42, '重庆市', 'cq');
INSERT INTO `tb_city` VALUES (43, '长沙市', 'cs');
INSERT INTO `tb_city` VALUES (44, '楚雄市', 'cx');
INSERT INTO `tb_city` VALUES (45, '朝阳市', 'cy');
INSERT INTO `tb_city` VALUES (46, '常州市', 'cz');
INSERT INTO `tb_city` VALUES (47, '大理市', 'dali');
INSERT INTO `tb_city` VALUES (48, '达州市', 'dazhou');
INSERT INTO `tb_city` VALUES (49, '丹东市', 'dd');
INSERT INTO `tb_city` VALUES (50, '德阳市', 'deyang');
INSERT INTO `tb_city` VALUES (51, '东莞市', 'dg');
INSERT INTO `tb_city` VALUES (52, '德宏市', 'dh');
INSERT INTO `tb_city` VALUES (53, '迪庆市', 'diqing');
INSERT INTO `tb_city` VALUES (54, '大连市', 'dl');
INSERT INTO `tb_city` VALUES (55, '大庆市', 'dq');
INSERT INTO `tb_city` VALUES (56, '大同市', 'dt');
INSERT INTO `tb_city` VALUES (57, '定西市', 'dx');
INSERT INTO `tb_city` VALUES (58, '大兴安岭市', 'dxal');
INSERT INTO `tb_city` VALUES (59, '东营市', 'dy');
INSERT INTO `tb_city` VALUES (60, '德州市', 'dz');
INSERT INTO `tb_city` VALUES (61, '鄂尔多斯市', 'erds');
INSERT INTO `tb_city` VALUES (62, '恩施市', 'es');
INSERT INTO `tb_city` VALUES (63, '鄂州市', 'ez');
INSERT INTO `tb_city` VALUES (64, '防城港市', 'fcg');
INSERT INTO `tb_city` VALUES (65, '佛山市', 'fs');
INSERT INTO `tb_city` VALUES (66, '抚顺市', 'fushun');
INSERT INTO `tb_city` VALUES (67, '抚州市', 'fuzhou');
INSERT INTO `tb_city` VALUES (68, '阜新市', 'fx');
INSERT INTO `tb_city` VALUES (69, '阜阳市', 'fy');
INSERT INTO `tb_city` VALUES (70, '福州市', 'fz');
INSERT INTO `tb_city` VALUES (71, '广安市', 'ga');
INSERT INTO `tb_city` VALUES (72, '赣州市', 'ganzhou');
INSERT INTO `tb_city` VALUES (73, '甘孜市', 'ganzi');
INSERT INTO `tb_city` VALUES (74, '贵港市', 'gg');
INSERT INTO `tb_city` VALUES (75, '桂林市', 'gl');
INSERT INTO `tb_city` VALUES (76, '广元市', 'guangyuan');
INSERT INTO `tb_city` VALUES (77, '果洛市', 'guoluo');
INSERT INTO `tb_city` VALUES (78, '固原市', 'guyuan');
INSERT INTO `tb_city` VALUES (79, '贵阳市', 'gy');
INSERT INTO `tb_city` VALUES (80, '广州市', 'gz');
INSERT INTO `tb_city` VALUES (81, '淮安市', 'ha');
INSERT INTO `tb_city` VALUES (82, '海北市', 'haibei');
INSERT INTO `tb_city` VALUES (83, '海东市', 'haidong');
INSERT INTO `tb_city` VALUES (84, '海南市', 'hainan');
INSERT INTO `tb_city` VALUES (85, '汉中市', 'hanzhong');
INSERT INTO `tb_city` VALUES (86, '鹤壁市', 'hb');
INSERT INTO `tb_city` VALUES (87, '河池市', 'hc');
INSERT INTO `tb_city` VALUES (88, '邯郸市', 'hd');
INSERT INTO `tb_city` VALUES (89, '哈尔滨市', 'heb');
INSERT INTO `tb_city` VALUES (90, '鹤岗市', 'hegang');
INSERT INTO `tb_city` VALUES (91, '黑河市', 'heihe');
INSERT INTO `tb_city` VALUES (92, '河源市', 'heyuan');
INSERT INTO `tb_city` VALUES (93, '菏泽市', 'heze');
INSERT INTO `tb_city` VALUES (94, '贺州市', 'hezhou');
INSERT INTO `tb_city` VALUES (95, '合肥市', 'hf');
INSERT INTO `tb_city` VALUES (96, '黄冈市', 'hg');
INSERT INTO `tb_city` VALUES (97, '怀化市', 'hh');
INSERT INTO `tb_city` VALUES (98, '呼伦贝尔市', 'hlbe');
INSERT INTO `tb_city` VALUES (99, '葫芦岛市', 'hld');
INSERT INTO `tb_city` VALUES (100, '哈密市', 'hm');
INSERT INTO `tb_city` VALUES (101, '淮南市', 'hn');
INSERT INTO `tb_city` VALUES (102, '红河市', 'honghe');
INSERT INTO `tb_city` VALUES (103, '衡水市', 'hs');
INSERT INTO `tb_city` VALUES (104, '黄石市', 'hshi');
INSERT INTO `tb_city` VALUES (105, '和田市', 'ht');
INSERT INTO `tb_city` VALUES (106, '呼和浩特市', 'hu');
INSERT INTO `tb_city` VALUES (107, '淮北市', 'huaibei');
INSERT INTO `tb_city` VALUES (108, '黄南市', 'huangnan');
INSERT INTO `tb_city` VALUES (109, '黄山市', 'huangshan');
INSERT INTO `tb_city` VALUES (110, '惠州市', 'huizhou');
INSERT INTO `tb_city` VALUES (111, '湖州市', 'huzhou');
INSERT INTO `tb_city` VALUES (112, '海西市', 'hx');
INSERT INTO `tb_city` VALUES (113, '衡阳市', 'hy');
INSERT INTO `tb_city` VALUES (114, '杭州市', 'hz');
INSERT INTO `tb_city` VALUES (115, '吉安市', 'ja');
INSERT INTO `tb_city` VALUES (116, '晋城市', 'jc');
INSERT INTO `tb_city` VALUES (117, '景德镇市', 'jdz');
INSERT INTO `tb_city` VALUES (118, '金华市', 'jh');
INSERT INTO `tb_city` VALUES (119, '焦作市', 'jiaozuo');
INSERT INTO `tb_city` VALUES (120, '金昌市', 'jinchang');
INSERT INTO `tb_city` VALUES (121, '荆门市', 'jingmen');
INSERT INTO `tb_city` VALUES (122, '荆州市', 'jingzhou');
INSERT INTO `tb_city` VALUES (123, '济宁市', 'jining');
INSERT INTO `tb_city` VALUES (124, '锦州市', 'jinzhou');
INSERT INTO `tb_city` VALUES (125, '鸡西市', 'jixi');
INSERT INTO `tb_city` VALUES (126, '济源市', 'jiyuan');
INSERT INTO `tb_city` VALUES (127, '九江市', 'jj');
INSERT INTO `tb_city` VALUES (128, '吉林市', 'jl');
INSERT INTO `tb_city` VALUES (129, '江门市', 'jm');
INSERT INTO `tb_city` VALUES (130, '佳木斯市', 'jms');
INSERT INTO `tb_city` VALUES (131, '济南市', 'jn');
INSERT INTO `tb_city` VALUES (132, '酒泉市', 'jq');
INSERT INTO `tb_city` VALUES (133, '嘉兴市', 'jx');
INSERT INTO `tb_city` VALUES (134, '揭阳市', 'jy');
INSERT INTO `tb_city` VALUES (135, '嘉峪关市', 'jyg');
INSERT INTO `tb_city` VALUES (136, '晋中市', 'jz');
INSERT INTO `tb_city` VALUES (137, '喀什市', 'kashi');
INSERT INTO `tb_city` VALUES (138, '开封市', 'kf');
INSERT INTO `tb_city` VALUES (139, '克拉玛依市', 'klmy');
INSERT INTO `tb_city` VALUES (140, '昆明市', 'km');
INSERT INTO `tb_city` VALUES (141, '克孜勒苏市', 'kzls');
INSERT INTO `tb_city` VALUES (142, '六安市', 'la');
INSERT INTO `tb_city` VALUES (143, '来宾市', 'lb');
INSERT INTO `tb_city` VALUES (144, '聊城市', 'lc');
INSERT INTO `tb_city` VALUES (145, '娄底市', 'ld');
INSERT INTO `tb_city` VALUES (146, '乐山市', 'leshan');
INSERT INTO `tb_city` VALUES (147, '廊坊市', 'lf');
INSERT INTO `tb_city` VALUES (148, '漯河市', 'lh');
INSERT INTO `tb_city` VALUES (149, '凉山市', 'liangshan');
INSERT INTO `tb_city` VALUES (150, '辽阳市', 'liaoyang');
INSERT INTO `tb_city` VALUES (151, '辽源市', 'liaoyuan');
INSERT INTO `tb_city` VALUES (152, '临沧市', 'lincang');
INSERT INTO `tb_city` VALUES (153, '临汾市', 'linfen');
INSERT INTO `tb_city` VALUES (154, '临沂市', 'linyi');
INSERT INTO `tb_city` VALUES (155, '丽水市', 'lishui');
INSERT INTO `tb_city` VALUES (156, '柳州市', 'liuzhou');
INSERT INTO `tb_city` VALUES (157, '丽江市', 'lj');
INSERT INTO `tb_city` VALUES (158, '吕梁市', 'll');
INSERT INTO `tb_city` VALUES (159, '陇南市', 'ln');
INSERT INTO `tb_city` VALUES (160, '龙岩市', 'longyan');
INSERT INTO `tb_city` VALUES (161, '六盘水市', 'lps');
INSERT INTO `tb_city` VALUES (162, '泸州市', 'luzhou');
INSERT INTO `tb_city` VALUES (163, '洛阳市', 'ly');
INSERT INTO `tb_city` VALUES (164, '连云港市', 'lyg');
INSERT INTO `tb_city` VALUES (165, '兰州市', 'lz');
INSERT INTO `tb_city` VALUES (166, '马鞍山市', 'mas');
INSERT INTO `tb_city` VALUES (167, '牡丹江市', 'mdj');
INSERT INTO `tb_city` VALUES (168, '茂名市', 'mm');
INSERT INTO `tb_city` VALUES (169, '眉山市', 'ms');
INSERT INTO `tb_city` VALUES (170, '绵阳市', 'my');
INSERT INTO `tb_city` VALUES (171, '梅州市', 'mz');
INSERT INTO `tb_city` VALUES (172, '南充市', 'nanchong');
INSERT INTO `tb_city` VALUES (173, '宁波市', 'nb');
INSERT INTO `tb_city` VALUES (174, '南昌市', 'nc');
INSERT INTO `tb_city` VALUES (175, '宁德市', 'nd');
INSERT INTO `tb_city` VALUES (176, '内江市', 'neijiang');
INSERT INTO `tb_city` VALUES (177, '南京市', 'nj');
INSERT INTO `tb_city` VALUES (178, '南宁市', 'nn');
INSERT INTO `tb_city` VALUES (179, '南平市', 'np');
INSERT INTO `tb_city` VALUES (180, '南通市', 'nt');
INSERT INTO `tb_city` VALUES (181, '怒江市', 'nujiang');
INSERT INTO `tb_city` VALUES (182, '南阳市', 'ny');
INSERT INTO `tb_city` VALUES (183, '平顶山市', 'pds');
INSERT INTO `tb_city` VALUES (184, '普洱市', 'pe');
INSERT INTO `tb_city` VALUES (185, '盘锦市', 'pj');
INSERT INTO `tb_city` VALUES (186, '平凉市', 'pl');
INSERT INTO `tb_city` VALUES (187, '莆田市', 'pt');
INSERT INTO `tb_city` VALUES (188, '萍乡市', 'px');
INSERT INTO `tb_city` VALUES (189, '濮阳市', 'py');
INSERT INTO `tb_city` VALUES (190, '攀枝花市', 'pzh');
INSERT INTO `tb_city` VALUES (191, '青岛市', 'qd');
INSERT INTO `tb_city` VALUES (192, '黔东南市', 'qdn');
INSERT INTO `tb_city` VALUES (193, '秦皇岛市', 'qhd');
INSERT INTO `tb_city` VALUES (194, '潜江市', 'qianjiang');
INSERT INTO `tb_city` VALUES (195, '庆阳市', 'qingyang');
INSERT INTO `tb_city` VALUES (196, '钦州市', 'qinzhou');
INSERT INTO `tb_city` VALUES (197, '曲靖市', 'qj');
INSERT INTO `tb_city` VALUES (198, '黔南市', 'qn');
INSERT INTO `tb_city` VALUES (199, '齐齐哈尔市', 'qqhr');
INSERT INTO `tb_city` VALUES (200, '七台河市', 'qth');
INSERT INTO `tb_city` VALUES (201, '衢州市', 'quzhou');
INSERT INTO `tb_city` VALUES (202, '黔西南市', 'qxn');
INSERT INTO `tb_city` VALUES (203, '清远市', 'qy');
INSERT INTO `tb_city` VALUES (204, '泉州市', 'qz');
INSERT INTO `tb_city` VALUES (205, '日照市', 'rz');
INSERT INTO `tb_city` VALUES (206, '三亚市', 'sanya');
INSERT INTO `tb_city` VALUES (207, '韶关市', 'sg');
INSERT INTO `tb_city` VALUES (208, '上海市', 'sh');
INSERT INTO `tb_city` VALUES (209, '邵阳市', 'shaoyang');
INSERT INTO `tb_city` VALUES (210, '十堰市', 'shiyan');
INSERT INTO `tb_city` VALUES (211, '朔州市', 'shuozhou');
INSERT INTO `tb_city` VALUES (212, '石家庄市', 'sjz');
INSERT INTO `tb_city` VALUES (213, '商洛市', 'sl');
INSERT INTO `tb_city` VALUES (214, '三明市', 'sm');
INSERT INTO `tb_city` VALUES (215, '三门峡市', 'smx');
INSERT INTO `tb_city` VALUES (216, '神农架市', 'snj');
INSERT INTO `tb_city` VALUES (217, '松原市', 'songyuan');
INSERT INTO `tb_city` VALUES (218, '四平市', 'sp');
INSERT INTO `tb_city` VALUES (219, '商丘市', 'sq');
INSERT INTO `tb_city` VALUES (220, '上饶市', 'sr');
INSERT INTO `tb_city` VALUES (221, '汕头市', 'st');
INSERT INTO `tb_city` VALUES (222, '宿州市', 'su');
INSERT INTO `tb_city` VALUES (223, '绥化市', 'suihua');
INSERT INTO `tb_city` VALUES (224, '遂宁市', 'suining');
INSERT INTO `tb_city` VALUES (225, '随州市', 'suizhou');
INSERT INTO `tb_city` VALUES (226, '宿迁市', 'suqian');
INSERT INTO `tb_city` VALUES (227, '苏州市', 'suzhou');
INSERT INTO `tb_city` VALUES (228, '汕尾市', 'sw');
INSERT INTO `tb_city` VALUES (229, '绍兴市', 'sx');
INSERT INTO `tb_city` VALUES (230, '沈阳市', 'sy');
INSERT INTO `tb_city` VALUES (231, '双鸭山市', 'sys');
INSERT INTO `tb_city` VALUES (232, '深圳市', 'bendibao.com/news/yqdengji/');
INSERT INTO `tb_city` VALUES (233, '石嘴山市', 'szs');
INSERT INTO `tb_city` VALUES (234, '泰安市', 'ta');
INSERT INTO `tb_city` VALUES (235, '塔城市', 'tacheng');
INSERT INTO `tb_city` VALUES (236, '泰州市', 'taizhou');
INSERT INTO `tb_city` VALUES (237, '铜川市', 'tc');
INSERT INTO `tb_city` VALUES (238, '通化市', 'th');
INSERT INTO `tb_city` VALUES (239, '天水市', 'tianshui');
INSERT INTO `tb_city` VALUES (240, '天津市', 'tj');
INSERT INTO `tb_city` VALUES (241, '吐鲁番市', 'tlf');
INSERT INTO `tb_city` VALUES (242, '天门市', 'tm');
INSERT INTO `tb_city` VALUES (243, '通辽市', 'tongliao');
INSERT INTO `tb_city` VALUES (244, '铜陵市', 'tongling');
INSERT INTO `tb_city` VALUES (245, '铜仁市', 'tr');
INSERT INTO `tb_city` VALUES (246, '唐山市', 'ts');
INSERT INTO `tb_city` VALUES (247, '太原市', 'ty');
INSERT INTO `tb_city` VALUES (248, '台州市', 'tz');
INSERT INTO `tb_city` VALUES (249, '威海市', 'weihai');
INSERT INTO `tb_city` VALUES (250, '潍坊市', 'wf');
INSERT INTO `tb_city` VALUES (251, '武汉市', 'wh');
INSERT INTO `tb_city` VALUES (252, '乌兰察布市', 'wlcb');
INSERT INTO `tb_city` VALUES (253, '乌鲁木齐市', 'wlmq');
INSERT INTO `tb_city` VALUES (254, '渭南市', 'wn');
INSERT INTO `tb_city` VALUES (255, '文山市', 'ws');
INSERT INTO `tb_city` VALUES (256, '乌海市', 'wuhai');
INSERT INTO `tb_city` VALUES (257, '芜湖市', 'wuhu');
INSERT INTO `tb_city` VALUES (258, '武威市', 'wuwei');
INSERT INTO `tb_city` VALUES (259, '吴忠市', 'wuzhong');
INSERT INTO `tb_city` VALUES (260, '梧州市', 'wuzhou');
INSERT INTO `tb_city` VALUES (261, '无锡市', 'wx');
INSERT INTO `tb_city` VALUES (262, '温州市', 'wz');
INSERT INTO `tb_city` VALUES (263, '五指山市', 'wzs');
INSERT INTO `tb_city` VALUES (264, '西安市', 'xa');
INSERT INTO `tb_city` VALUES (265, '兴安市', 'xam');
INSERT INTO `tb_city` VALUES (266, '许昌市', 'xc');
INSERT INTO `tb_city` VALUES (267, '襄阳市', 'xf');
INSERT INTO `tb_city` VALUES (268, '孝感市', 'xg');
INSERT INTO `tb_city` VALUES (269, '湘潭市', 'xiangtan');
INSERT INTO `tb_city` VALUES (270, '湘西市', 'xiangxi');
INSERT INTO `tb_city` VALUES (271, '咸宁市', 'xianning');
INSERT INTO `tb_city` VALUES (272, '仙桃市', 'xiantao');
INSERT INTO `tb_city` VALUES (273, '咸阳市', 'xianyang');
INSERT INTO `tb_city` VALUES (274, '新余市', 'xinyu');
INSERT INTO `tb_city` VALUES (275, '忻州市', 'xinzhou');
INSERT INTO `tb_city` VALUES (276, '锡林郭勒市', 'xl');
INSERT INTO `tb_city` VALUES (277, '厦门市', 'xm');
INSERT INTO `tb_city` VALUES (278, '西宁市', 'xn');
INSERT INTO `tb_city` VALUES (279, '邢台市', 'xt');
INSERT INTO `tb_city` VALUES (280, '宣城市', 'xuancheng');
INSERT INTO `tb_city` VALUES (281, '新乡市', 'xx');
INSERT INTO `tb_city` VALUES (282, '信阳市', 'xy');
INSERT INTO `tb_city` VALUES (283, '徐州市', 'xz');
INSERT INTO `tb_city` VALUES (284, '雅安市', 'ya');
INSERT INTO `tb_city` VALUES (285, '延边市', 'yanbian');
INSERT INTO `tb_city` VALUES (286, '盐城市', 'yancheng');
INSERT INTO `tb_city` VALUES (287, '阳泉市', 'yangquan');
INSERT INTO `tb_city` VALUES (288, '宜宾市', 'yb');
INSERT INTO `tb_city` VALUES (289, '银川市', 'yc');
INSERT INTO `tb_city` VALUES (290, '云浮市', 'yf');
INSERT INTO `tb_city` VALUES (291, '伊春市', 'yich');
INSERT INTO `tb_city` VALUES (292, '宜昌市', 'yichang');
INSERT INTO `tb_city` VALUES (293, '宜春市', 'yichun');
INSERT INTO `tb_city` VALUES (294, '伊犁市', 'yili');
INSERT INTO `tb_city` VALUES (295, '鹰潭市', 'yingtan');
INSERT INTO `tb_city` VALUES (296, '益阳市', 'yiyang');
INSERT INTO `tb_city` VALUES (297, '阳江市', 'yj');
INSERT INTO `tb_city` VALUES (298, '营口市', 'yk');
INSERT INTO `tb_city` VALUES (299, '榆林市', 'yl');
INSERT INTO `tb_city` VALUES (300, '延安市', 'yn');
INSERT INTO `tb_city` VALUES (301, '永州市', 'yongzhou');
INSERT INTO `tb_city` VALUES (302, '玉树市', 'ys');
INSERT INTO `tb_city` VALUES (303, '烟台市', 'yt');
INSERT INTO `tb_city` VALUES (304, '玉林市', 'yulin');
INSERT INTO `tb_city` VALUES (305, '运城市', 'yuncheng');
INSERT INTO `tb_city` VALUES (306, '玉溪市', 'yx');
INSERT INTO `tb_city` VALUES (307, '岳阳市', 'yy');
INSERT INTO `tb_city` VALUES (308, '扬州市', 'yz');
INSERT INTO `tb_city` VALUES (309, '枣庄市', 'zaozhuang');
INSERT INTO `tb_city` VALUES (310, '淄博市', 'zb');
INSERT INTO `tb_city` VALUES (311, '自贡市', 'zg');
INSERT INTO `tb_city` VALUES (312, '珠海市', 'zh');
INSERT INTO `tb_city` VALUES (313, '张掖市', 'zhangye');
INSERT INTO `tb_city` VALUES (314, '漳州市', 'zhangzhou');
INSERT INTO `tb_city` VALUES (315, '湛江市', 'zhanjiang');
INSERT INTO `tb_city` VALUES (316, '舟山市', 'zhoushan');
INSERT INTO `tb_city` VALUES (317, '株洲市', 'zhuzhou');
INSERT INTO `tb_city` VALUES (318, '镇江市', 'zj');
INSERT INTO `tb_city` VALUES (319, '张家界市', 'zjj');
INSERT INTO `tb_city` VALUES (320, '张家口市', 'zjk');
INSERT INTO `tb_city` VALUES (321, '周口市', 'zk');
INSERT INTO `tb_city` VALUES (322, '驻马店市', 'zmd');
INSERT INTO `tb_city` VALUES (323, '肇庆市', 'zq');
INSERT INTO `tb_city` VALUES (324, '中山市', 'zs');
INSERT INTO `tb_city` VALUES (325, '昭通市', 'zt');
INSERT INTO `tb_city` VALUES (326, '遵义市', 'zunyi');
INSERT INTO `tb_city` VALUES (327, '中卫市', 'zw');
INSERT INTO `tb_city` VALUES (328, '资阳市', 'zy');
INSERT INTO `tb_city` VALUES (329, '郑州市', 'zz');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE,
  INDEX `tel`(`tel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'oAs-v5UE65I19qveFeLtbtvSaGu4', '聂小倩', '210213199904161986', '辽宁省大连市金州区', '女', '18888888888', '2021-07-20 11:28:14');

SET FOREIGN_KEY_CHECKS = 1;
