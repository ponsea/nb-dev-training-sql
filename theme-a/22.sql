/* 回答
SELECT *
FROM 口座
WHERE 口座番号 BETWEEN 2000000 AND 2999999 OR
      名義 LIKE 'エ__　%コ';
*/

# 参考書の回答例
select * from 口座 where 口座番号 like '2______' or 名義 like 'エ__%コ';
