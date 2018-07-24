# 誤り: SELECT 口座番号, 残高, ROUND(残高 * 0.0002) AS 利息
SELECT 口座番号, 残高, TRUNCATE(残高 * 0.0002, 0) AS 利息
FROM 口座
ORDER BY 残高 DESC;
