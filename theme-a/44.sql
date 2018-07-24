SELECT 口座番号, 残高, ROUND(残高 * 0.0002) AS 利息
FROM 口座
ORDER BY 残高 DESC;
