SELECT 口座番号, CONCAT('カ)', 名義) AS 名義
FROM 口座
WHERE 種別 = '3';
