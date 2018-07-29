SELECT
  *
FROM
  注文
WHERE
  数量 >= 10
  OR クーポン割引料 IS NOT NULL
;
