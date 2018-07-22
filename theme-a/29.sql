SELECT T.口座番号
FROM (
  SELECT 口座番号 FROM 口座
  UNION ALL
  SELECT 口座番号 FROM 廃止口座) AS T
ORDER BY T.口座番号;
