SELECT
  CHAR_LENGTH(口座番号),
  CHAR_LENGTH(CAST(残高 AS CHAR)),
  CHAR_LENGTH(REPLACE(名義, '　', ''))
FROM 口座;
