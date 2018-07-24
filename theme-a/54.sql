SELECT SUM(残高), MAX(残高), MIN(残高), AVG(残高), COUNT(*)
FROM 口座
GROUP BY 種別;
