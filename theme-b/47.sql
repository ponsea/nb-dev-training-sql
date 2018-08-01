SELECT
  注文日,
  SUM(数量) AS 数量の合計
FROM
  注文
GROUP BY
  注文日
ORDER BY
  注文日
;
