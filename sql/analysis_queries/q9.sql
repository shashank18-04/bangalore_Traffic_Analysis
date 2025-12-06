-- 9. Exportable small table for Power BI: area-month level summary
SELECT "Area Name" AS area, Year, Month,
       SUM("Traffic Volume") AS total_volume,
       ROUND(AVG("Average Speed"),2) AS avg_speed,
       ROUND(AVG("Congestion Level"),2) AS avg_congestion,
       SUM("Incident Reports") AS total_incidents
FROM traffic
GROUP BY "Area Name", Year, Month
ORDER BY "Area Name", Year,
  CASE Month WHEN 'January' THEN 1 WHEN 'February' THEN 2 WHEN 'March' THEN 3 WHEN 'April' THEN 4
             WHEN 'May' THEN 5 WHEN 'June' THEN 6 WHEN 'July' THEN 7 WHEN 'August' THEN 8
             WHEN 'September' THEN 9 WHEN 'October' THEN 10 WHEN 'November' THEN 11 WHEN 'December' THEN 12
  END;