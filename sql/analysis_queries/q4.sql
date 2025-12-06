-- 4. Weekly totals (Year + WeekNumber)
SELECT Year, WeekNumber, SUM("Traffic Volume") AS total_volume, ROUND(AVG("Congestion Level"),2) AS avg_congestion
FROM traffic
GROUP BY Year, WeekNumber 
ORDER BY Year, WeekNumber ASC ;