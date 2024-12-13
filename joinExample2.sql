SELECT G.学生番号, T.得点, G.氏名 FROM 学生表 G, 得点表 T
WHERE G.学生番号 = T.学生番号
AND T.得点 BETWEEN 80 AND 90;

SELECT `学生番号`, `得点`, `氏名` FROM `学生表` 
JOIN `得点表` ON `学生表`.`学生番号` = `得点表`.`学生番号` 
WHERE `得点` BETWEEN 80 AND 90;

