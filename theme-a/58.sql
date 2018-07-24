SELECT
  SUBSTRING(名義, 1, 1),
  COUNT(*),
  AVG(LENGTH(REPLACE(名義, '　', '')))
FROM 口座
GROUP BY SUBSTRING(名義, 1, 1)
HAVING
  COUNT(*) >= 10 OR
  AVG(LENGTH(REPLACE(名義, '　', ''))) > 5;

