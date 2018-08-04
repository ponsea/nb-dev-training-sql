SELECT
  クリア結果,
  COUNT(*) AS イベント数
FROM
  経験イベント
WHERE
  クリア結果 IS NOT NULL
GROUP BY
  クリア結果
ORDER BY
  クリア結果
;
