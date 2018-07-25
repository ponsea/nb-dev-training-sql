SELECT 口座番号, 名義, 残高
FROM 口座
WHERE
  口座番号 IN (
    SELECT DISTINCT 口座番号
    FROM 取引
    WHERE 入金額 >= 1000000
  );
