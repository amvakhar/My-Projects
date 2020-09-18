-- SQLite
SELECT transactions.prod_id,products.prod_name,COUNT(transactions.prod_id) AS 'count'
FROM 'transactions'
JOIN 'products' ON transactions.prod_id=products.prod_id 
AND transactions.trans_dt BETWEEN '2016-01-01 00:00:00' AND '2016-03-31 23:59:59'
GROUP BY transactions.prod_id;