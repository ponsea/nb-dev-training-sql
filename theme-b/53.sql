SELECT
  DATE_FORMAT(注文日, '%Y%m') AS 年月,
  COUNT(*) AS 注文件数
FROM
  注文
WHERE
  注文枝番 = 1 # 注文単位にするため
GROUP BY
  DATE_FORMAT(注文日, '%Y%m')
ORDER BY
  年月
;
