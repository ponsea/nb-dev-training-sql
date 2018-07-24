SELECT 口座番号, 更新日, DATE_ADD(更新日, INTERVAL + 180 DAY) AS 通帳期限日
FROM 口座
WHERE 更新日 < '2012-01-01';
