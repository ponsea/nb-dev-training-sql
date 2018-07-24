SELECT *
FROM 口座
WHERE
  LENGTH(CAST(残高 AS CHAR)) >= 4 AND
  # 残高の1000円未満の端数がないことをLENGTHを使って求める -> わかりません。
