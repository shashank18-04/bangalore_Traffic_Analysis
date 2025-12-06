-- 2. Top 10 areas by total traffic & their key KPIs
SELECT "Area Name" AS area,
       SUM("Traffic Volume") AS total_volume,
       ROUND(AVG("Average Speed"),2) AS avg_speed,
       ROUND(AVG("Congestion Level"),2) AS avg_congestion,
       SUM("Incident Reports") AS incidents
FROM traffic
GROUP BY area
ORDER BY total_volume DESC
LIMIT 10;