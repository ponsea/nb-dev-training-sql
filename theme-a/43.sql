/* 回答
SELECT *
FROM 口座
WHERE
  LENGTH(CAST(残高 AS CHAR)) >= 4 AND
  # 残高の1000円未満の端数がないことをLENGTHを使って求める -> わかりません。
*/

# 正解
SELECT *
FROM 口座
WHERE
  LENGTH(CAST(残高 AS CHAR)) >= 4 AND
  SUBSTRING(CAST(残高 AS CHAR), LENGTH(CAST(残高 AS CHAR)) - 2, 3) = '000';

# MOD(残高, 1000) = 0 でいいと思うのだが...
