SELECT
  口座番号,
  残高,
  ROUND(
    CASE
      WHEN 残高 < 500000 THEN 残高 * 0.0001
      WHEN 残高 BETWEEN 500000 AND 1999999 THEN 残高 * 0.0002
      ELSE 残高 * 0.0003
    END
  ) AS 残高別利息
FROM 口座
ORDER BY 残高別利息 DESC, 口座番号;
