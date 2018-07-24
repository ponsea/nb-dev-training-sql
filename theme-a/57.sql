# 誤り: SELECT 種別, SUM(残高)
SELECT 種別, SUM(残高), COUNT(*)
FROM 口座
GROUP BY 種別
HAVING SUM(残高) > 3000000;
