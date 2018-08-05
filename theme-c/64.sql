SELECT
  E.イベント番号,
  E.イベント名称,
  CASE
    WHEN K.クリア区分 IS NULL OR K.クリア区分 = '0' THEN '未クリア'
    ELSE K.クリア区分
  END AS クリア区分
FROM
  イベント E
  LEFT OUTER JOIN 経験イベント K
    ON E.イベント番号 = K.イベント番号
WHERE
  E.タイプ = '1'
;

# 回答例はクリア区分ではなくクリア結果を出しているが、誤植だった。
# 正誤表で正された答えはクリア区分をCOALESCE関数にかけているが、
# クリア区分 = '0'も「未クリア」のうちに入るはずなので、これも腑に落ちない。

# 正誤表
# [誤]
# SELECT M. イベント番号, M. イベント名称, COALESCE(E. クリア結果, ' 未クリア')
# AS クリア結果 FROM イベント M LEFT JOIN 経験イベント E ON M. イベント番号 =
# [正]
# SELECT M. イベント番号, M. イベント名称, COALESCE(E. クリア区分, ' 未クリア')
# AS クリア区分 FROM イベント M LEFT JOIN 経験イベント E ON M. イベント番号 =
