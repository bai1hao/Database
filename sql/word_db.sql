drop database if exists `word_db`;
create database if not exists `word_db`;
use `word_db`;

create table `user` (
    `id` bigint unsigned not null auto_increment,
    `name` varchar(255) not null comment '用户名',
    `password` varchar(50) not null,
    primary key(`id`)
);

create table `book` (
    `id` bigint unsigned not null auto_increment,
    `user_id` bigint unsigned not null,
    `create_time` varchar(255) not null, 
    `type` varchar(50) not null,
    foreign key(`user_id`) references `user`(`id`),
    primary key(`id`)
);

create table `items` (
    `id` bigint unsigned not null auto_increment,
    `book_id` bigint unsigned not null,
    `content` varchar(255) not null,
    foreign key(`book_id`) references `book`(`id`),
    primary key(`id`)
);

insert into user(`name`,`password`) values('测试用户','123456');