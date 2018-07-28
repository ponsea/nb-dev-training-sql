# MySQLではFULL OUTER JOINが使えないようなのでUNIONを使う
SELECT DISTINCT
  T.取引事由ID AS `取引.取引事由ID`,
  TJ.取引事由ID AS `取引事由.取引事由ID`,
  TJ.取引事由名
FROM 取引 T LEFT OUTER JOIN 取引事由 TJ ON T.取引事由ID = TJ.取引事由ID

UNION

SELECT DISTINCT
  T.取引事由ID AS `取引.取引事由ID`,
  TJ.取引事由ID AS `取引事由.取引事由ID`,
  TJ.取引事由名
FROM 取引 T RIGHT OUTER JOIN 取引事由 TJ ON T.取引事由ID = TJ.取引事由ID;
