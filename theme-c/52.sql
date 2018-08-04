SELECT
  SUM(
    CASE
      WHEN HP < 100 THEN 1
      WHEN HP < 150 THEN 2
      WHEN HP < 200 THEN 3
      ELSE 5
    END
  ) AS 開けることのできる扉の数
FROM
  パーティー
;
