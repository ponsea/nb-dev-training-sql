UPDATE 口座
SET
# 誤り: 残高 = (
  残高 = 残高 + (
    SELECT SUM(COALESCE(入金額, 0)) - SUM(COALESCE(出金額, 0))
    FROM 取引
    WHERE 口座番号 = '0351333' AND 日付 = '2013-01-11'
  )
WHERE 口座番号 = '0351333';
