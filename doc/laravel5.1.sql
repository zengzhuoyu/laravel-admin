/*
Navicat MySQL Data Transfer

Source Server         : laravel5.1
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : laravel5.1

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-16 20:47:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '用户权限管理', 'fa-tasks', '', '0000-00-00 00:00:00', '2017-03-16 12:01:01');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-user', 'auth/permissions', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_menu` VALUES ('7', '0', '0', '网站配置', 'fa-bars', 'configs', '2017-03-16 12:05:05', '2017-03-16 12:05:05');
INSERT INTO `admin_menu` VALUES ('8', '0', '0', '文档管理', 'fa-bars', 'docs', '2017-03-16 12:05:39', '2017-03-16 12:05:39');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', '管理网站配置', 'adminconfig', '2017-03-16 09:41:01', '2017-03-16 09:58:40');
INSERT INTO `admin_permissions` VALUES ('2', '管理doc文档', 'admindoc', '2017-03-16 10:01:21', '2017-03-16 10:01:21');
INSERT INTO `admin_permissions` VALUES ('3', '用户权限管理', 'admin', '2017-03-16 12:24:17', '2017-03-16 12:24:17');

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2017-03-16 11:59:33', '2017-03-16 11:59:33');
INSERT INTO `admin_roles` VALUES ('2', '网站配置管理员', 'adminconfig', '2017-03-16 12:03:39', '2017-03-16 12:03:39');
INSERT INTO `admin_roles` VALUES ('3', 'doc文档管理员', 'admindoc', '2017-03-16 12:04:12', '2017-03-16 12:04:12');
INSERT INTO `admin_roles` VALUES ('4', '用户权限管理员', 'admin', '2017-03-16 12:25:00', '2017-03-16 12:25:00');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('2', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_menu` VALUES ('3', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_menu` VALUES ('1', '9', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_menu` VALUES ('1', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_menu` VALUES ('2', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_menu` VALUES ('3', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_menu` VALUES ('4', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_permissions` VALUES ('3', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_permissions` VALUES ('2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_permissions` VALUES ('3', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_permissions` VALUES ('4', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_users` VALUES ('2', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_users` VALUES ('3', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_users` VALUES ('3', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `admin_role_users` VALUES ('4', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$2E5EKaqOxbeeSCbWRjFqMuopiMYkJ6PgvL4.aPzJlpliWPaBrSnz2', 'Administrator', '2GRiMldjE8sVH6BUfORyEAZm92duOEBEFJ6S6uw44YkWtLDGFXTEgbQ3YJBt', '2017-03-16 11:59:32', '2017-03-16 12:25:44');
INSERT INTO `admin_users` VALUES ('2', 'zengzhuoyu', '$2y$10$8Bn8YPh5YU7ZSHl7.EPCoeWGIEKEULPO70J/TJIvhgxb928JAdrf.', 'zzy', 'h6fqg9WaDZ4nWzdj0kFFMGsmaBzaw2yNt24TCHE9Iu1LjRng3w3u1SaDM0xM', '2017-03-16 12:06:30', '2017-03-16 12:22:43');
INSERT INTO `admin_users` VALUES ('3', 'lisi', '$2y$10$F18e.WxblMWbf9iCj2DTb.RsNKfiaEAwt9.mqY4BNvRzInVmLxlKG', 'ls', 'WGriLFKNllpKW23spObZpkkrxm5rzyeJYI3sjYvovCypmvtSIRlQBxN5MvAj', '2017-03-16 12:08:15', '2017-03-16 12:09:19');
INSERT INTO `admin_users` VALUES ('5', 'wangwu', '$2y$10$Xc1GFZq4Cn4oy3wD8KmqleR8S5lxli0My6Tes3niBntvArJzUShB6', 'ww', 'OEN9eeKnMzXkvijEfillOBs2pFCxZAX3WdjWO9JlvFQ1q5LHooqDa23SVTyP', '2017-03-16 12:25:41', '2017-03-16 12:36:17');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2016_01_04_173148_create_admin_tables', '1');
