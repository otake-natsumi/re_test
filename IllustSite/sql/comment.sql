set names utf8;
set foreign_key_checks = 0;
drop database if exists comment;

create database if not exists comment;
use comment;

drop table if exists comment_list;

create table comment_list(
	nick_name varchar(16),
	comment varchar(255),
	update_date datetime
);

INSERT INTO comment_list(nick_name,comment) VALUES("nick_name","comment");