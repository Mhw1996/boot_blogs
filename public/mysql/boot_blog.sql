SET NAMES UTF8;
DROP DATABASE IF EXISTS boot_blog;
CREATE DATABASE boot_blog CHARSET=UTF8;
USE boot_blog;
CREATE TABLE blog_use(
	uid	int(11)		AUTO_INCREMENT PRIMARY KEY,
	email	varchar(64),
	upwd	varchar(32),
	vs	varchar(6)
);
CREATE TABLE use_info(
	lid int(11) AUTO_INCREMENT PRIMARY KEY,
	words varchar(150)
);