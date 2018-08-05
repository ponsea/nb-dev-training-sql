UPDATE
  パーティー
SET
  MP = MP + (
    (
      SELECT TMP.合計MP
      FROM (SELECT SUM(MP) AS 合計MP FROM パーティー) TMP
      # MySQLではUPDATEの対象テーブルをサブクエリで直接使うとエラーになるので
      # 一旦サブクエリ対象のテーブルを導出テーブルにして回避している
      # https://dev.mysql.com/doc/refman/5.6/ja/subquery-errors.html
    ) - MP) * 0.1
WHERE
  職業コード = '20'
;
