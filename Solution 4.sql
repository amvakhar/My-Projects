-- SQLite
SELECT *
FROM
    (SELECT seg.seg_name,products.category,ROUND(SUM(transactions.item_qty*transactions.item_price),2) AS 'revenue'
    FROM 'transactions'
    LEFT JOIN 'products' ON transactions.prod_id=products.prod_id
    LEFT JOIN (SELECT * 
    FROM (SELECT cust_id, update_at, seg_name 
    FROM 'segments'
    WHERE active_flag ='Y'
    ORDER BY cust_id, update_at DESC)
    GROUP BY cust_id) AS seg ON transactions.cust_id=seg.cust_id
    GROUP BY seg.seg_name,products.category
    ORDER BY seg.seg_name, revenue DESC)
GROUP BY seg_name;    
/*Assumed the most recent seg_name by updated date if more than one segment found for customers*/

