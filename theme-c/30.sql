SELECT
  CASE
    WHEN 職業コード LIKE '1%' THEN 'S'
    WHEN 職業コード LIKE '2%' THEN 'M'
    ELSE 'A'
  END AS 職業区分,
  職業コード,
  ID,
  名称
FROM
  パーティー
ORDER BY
  職業コード
;
