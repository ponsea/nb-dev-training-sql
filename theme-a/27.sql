SELECT 更新日
FROM 口座
WHERE 更新日 IS NOT NULL
ORDER BY 更新日 LIMIT 10;