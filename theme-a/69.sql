SELECT
  T.取引番号,
  CONCAT(TJ.取引事由ID, ':', TJ.取引事由名),
  T.日付,
  T.口座番号,
  T.入金額,
  T.出金額
FROM 取引 T RIGHT OUTER JOIN 取引事由 TJ ON T.取引事由ID = TJ.取引事由ID;
