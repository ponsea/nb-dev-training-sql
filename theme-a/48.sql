# 誤り: SELECT COALESCE(更新日, '設定なし') AS 更新日
SELECT COALESCE(CAST(更新日 AS CHAR), '設定なし') AS 更新日
FROM 口座;

# 列の値ドメインは揃えないといけないから?
