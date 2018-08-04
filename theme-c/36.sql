SELECT
  名称 AS なまえ,
  CONCAT(CAST(HP AS CHAR), '／', CAST(MP AS CHAR)) AS HPとMP,
  CASE 状態コード
    WHEN '00' THEN ''
    WHEN '01' THEN '眠り'
    WHEN '02' THEN '毒'
    WHEN '03' THEN '沈黙'
    WHEN '04' THEN '混乱'
    WHEN '09' THEN '気絶'
  END AS ステータス
FROM
  パーティー
;
