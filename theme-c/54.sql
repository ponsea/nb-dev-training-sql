UPDATE
  パーティー
SET
  MP = ROUND(
    MP + (
      (
        SELECT TMP.合計MP
        FROM (SELECT SUM(MP) AS 合計MP FROM パーティー) TMP
        # MySQLではUPDATEの対象テーブルをサブクエリで直接使うとエラーになるので
        # 一旦サブクエリ対象のテーブルを導出テーブルにして回避している
        # https://dev.mysql.com/doc/refman/5.6/ja/subquery-errors.html
      ) - MP) * 0.1
  )
WHERE
  職業コード = '20'
;

# 回答例
# 「本人以外」を"職業コード <> '20'"で指定しているようだが、それが複数いる場合は適切でない条件だと思う
# UPDATE パーティー
#    SET MP = MP + (SELECT ROUND(SUM(MP * 0.1))
#                     FROM パーティー
#                    WHERE 職業コード <> '20')
#  WHERE 職業コード = '20'
