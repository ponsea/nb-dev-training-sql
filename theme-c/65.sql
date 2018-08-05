SELECT
  P.ID,
  P.名称 AS なまえ,
  C1.コード名称 AS 職業,
  C2.コード名称 AS 状態
FROM
  パーティー P
  INNER JOIN コード C1
    ON C1.コード種別 = 1
    AND P.職業コード = C1.コード値
  INNER JOIN コード C2
    ON C2.コード種別 = 2
    AND P.状態コード = C2.コード値
ORDER BY
  P.ID
;
