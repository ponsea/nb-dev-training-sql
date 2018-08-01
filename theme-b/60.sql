INSERT INTO
  注文
SELECT
  注文日,
  注文番号,
  MAX(注文枝番) + 1,
  'S1003',
  1,
  NULL
FROM
  注文
WHERE
  注文日 = '2013-03-21'
  AND 注文番号 = '201303210080'
GROUP BY
  注文日,
  注文番号
;

INSERT INTO
  注文
SELECT
  注文日,
  注文番号,
  MAX(注文枝番) + 1,
  'A0052',
  2,
  500
FROM
  注文
WHERE
  注文日 = '2013-03-22'
  AND 注文番号 = '201303220901'
GROUP BY
  注文日,
  注文番号
;
