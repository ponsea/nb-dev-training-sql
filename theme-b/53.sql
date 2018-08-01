SELECT
  DATE_FORMAT(注文日, '%Y%m') AS 年月,
  COUNT(*) AS 注文件数
FROM
  注文
GROUP BY
  DATE_FORMAT(注文日, '%Y%m')
ORDER BY
  年月
;
