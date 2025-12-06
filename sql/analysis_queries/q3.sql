-- 3. Monthly totals (Year + Month) ordered correctly
SELECT Year,
       Month,
       SUM("Traffic Volume") AS total_volume
FROM traffic
GROUP BY Year, Month
ORDER BY Year, 
         CASE Month
           WHEN 'January' THEN 1 WHEN 'February' THEN 2 WHEN 'March' THEN 3 WHEN 'April' THEN 4
           WHEN 'May' THEN 5 WHEN 'June' THEN 6 WHEN 'July' THEN 7 WHEN 'August' THEN 8
           WHEN 'September' THEN 9 WHEN 'October' THEN 10 WHEN 'November' THEN 11 WHEN 'December' THEN 12
         END;