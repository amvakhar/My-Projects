-- SQLite
SELECT *
FROM(
    SELECT cust_id,seg_name,update_at
    FROM segments
    WHERE update_at <= '2016-03-01 23:59:59'
    ORDER BY cust_id, update_at DESC) as s
GROUP BY cust_id;
