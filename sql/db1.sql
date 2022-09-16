DROP database IF EXISTS `db1`;

create database `db1` DEFAULT charset utf8;
use `db1`;

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(100) NOT NULL,
  `gender` char(1)  NOT NULL,
  `birth_date` date NOT NULL,
  `education` varchar(50)  NOT NULL,
  `employed_date` date NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL
);

INSERT into `employees` VALUES(null,'萧正诚','男','1990-03-07','本科','2011-07-10','设计部',5851.00);

