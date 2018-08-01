SELECT
  COUNT(クーポン割引料) AS 注文件数,
  SUM(クーポン割引料) AS 割引額の合計
FROM
  注文
;
