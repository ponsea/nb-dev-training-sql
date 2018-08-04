UPDATE
  パーティー
SET
  状態コード = '04'
WHERE
  MOD(HP, 4) = 0
  OR MOD(MP, 4) = 0
;
