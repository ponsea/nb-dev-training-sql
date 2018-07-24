SELECT
  口座番号,
  名義,
  CASE
    WHEN 残高 < 10000 THEN 'C'
    WHEN 残高 BETWEEN 10000 AND 999999 THEN 'B'
    WHEN 残高 > 1000000 THEN 'A'
  END AS 残高ランク
FROM 口座;
