set names utf8;

create table 学生表 (
学生番号 char(4), 
氏名 char(20), 
性別 char(1) ,primary key (学生番号)) default charset=utf8;

create table 科目表 (
科目番号 char(3), 
科目名 char(20) ,primary key (科目番号)) default charset=utf8;

INSERT INTO 科目表 ( 科目番号,科目名 ) values ("K11","英語1");
INSERT INTO 科目表 ( 科目番号,科目名 ) values ("K12","英語2");
INSERT INTO 科目表 ( 科目番号,科目名 ) values ("K21","数学");

INSERT INTO 学生表 ( 学生番号,氏名,性別 ) values ("6724","山本 一希","男");
INSERT INTO 学生表 ( 学生番号,氏名,性別 ) values ("6725","本山 十吾","男");
INSERT INTO 学生表 ( 学生番号,氏名,性別 ) values ("6816","山田 百音","女");
INSERT INTO 学生表 ( 学生番号,氏名,性別 ) values ("6817","山本 千代","女");
