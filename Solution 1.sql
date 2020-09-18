SELECT cust_id,seg_name,update_at
FROM retail_data.segments
WHERE active_flag='Y'
ORDER BY seg_name;
