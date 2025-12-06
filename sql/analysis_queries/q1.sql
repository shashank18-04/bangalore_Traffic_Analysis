-- 1. Top 15 roads/intersections by total traffic volume
SELECT "Road/Intersection Name" AS road,
       SUM("Traffic Volume") AS total_volume,
       ROUND(AVG("Congestion Level"),2) AS avg_congestion,
       ROUND(AVG("Average Speed"),2) AS avg_speed
FROM traffic
GROUP BY road
ORDER BY total_volume DESC
LIMIT 15;