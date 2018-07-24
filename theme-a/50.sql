SELECT COUNT(*)
FROM 口座
WHERE
  種別 <> '1' AND
  残高 >= 1000000 AND
  更新日 < '2013-01-01';
