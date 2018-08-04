SELECT
  'クリアした' AS 区分,
  COUNT(*) AS イベント数
FROM
  経験イベント
WHERE
  クリア区分 = '1'
UNION
SELECT
  '参加したがクリアしていない' AS 区分,
  COUNT(*) AS イベント数
FROM
  経験イベント
WHERE
  クリア区分 = '0'
;
