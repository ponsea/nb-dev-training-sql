SELECT
  商品名,
  CHAR_LENGTH(商品名) AS 文字数
FROM
  商品
WHERE
  CHAR_LENGTH(商品名) > 10
ORDER BY
  文字数
;
# MySQLのLENGTH関数はバイト数になるので、CHAR_LENGHTを使わないといけない
