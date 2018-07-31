UPDATE
  注文
SET
  クーポン割引料 = クーポン割引料 + 300
WHERE
  注文日 BETWEEN '2013-03-12' AND '2013-03-14'
  AND 数量 >= 2
  AND クーポン割引料 IS NOT NULL
;
