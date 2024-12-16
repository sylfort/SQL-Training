create database level2_105 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE 商品表 (
	商CO char(3),
    商品名 char(20),
 	定価 int,
    PRIMARY KEY (商CO)) DEFAULT charset=utf8;

CREATE TABLE 得意先名表 (
	得CO char(3),
    得意先名 char(20),
    商CO char(2),
 	数量 int,
    PRIMARY KEY (得CO),
	FOREIGN KEY (商CO) REFERENCES 商品表(商CO)) DEFAULT charset=utf8;

CREATE TABLE 増量率表 (
	数量 char(50),
    数量率 decimal(3,2),
	PRIMARY KEY (数量)) DEFAULT charset=utf8;

CREATE VIEW 出力データ_105_2 (
    得意先名,
    商CO,
    商品名,
    定価,
    売価,
    売上額,
    増量率,
    増量数,
    評価
) AS

SELECT T.`得意先名`, 
       S.`商CO`, 
       S.`商品名`, 
       S.`定価`, 
       (S.`定価` * 0.87) AS 売価,
       ((S.`定価` * 0.87) * T.`数量`) AS 売上額,
       P.`数量率` AS 増量率,
       T.`数量` * (IF(T.`数量` > 500, P.`数量率`, IF(T.`数量` >= 400, P.`数量率`, P.`数量率`))) AS 増量数,
       IF(((S.`定価` * 0.87) * T.`数量`) > 600000, "好調", "調査") AS 評価
FROM 商品表 AS S
JOIN 得意先名表 AS T ON S.`商CO` = T.`商CO`
JOIN 増量率表 AS P;
