SELECT 口座番号, 名義, 種別, 残高, DATE_FORMAT(更新日, '%Y年%m月%d日') AS 更新日
FROM 口座;
