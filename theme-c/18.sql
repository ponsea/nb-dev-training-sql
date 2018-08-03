SELECT
  名称,
  状態コード
FROM
  パーティー
WHERE
  状態コード NOT IN ('00', '09')
;
