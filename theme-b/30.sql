SELECT
  *
FROM
  廃番商品
WHERE
  廃番日 BETWEEN '2011-12-01' AND '2011-12-31'
  OR 売上個数 > 100
ORDER BY
  売上個数 DESC
;

# 回答例はあとからUNIONしている
# SELECT * FROM 廃番商品
#  WHERE 廃番日 >= '2011-12-01'
#    AND 廃番日 < '2012-01-01'
#  UNION
# SELECT * FROM 廃番商品
#  WHERE 売上個数 > 100
#  ORDER BY 6 DESC
