-- 5. Weather impact: average speed & congestion per weather condition
SELECT "Weather Conditions" AS weather,
       COUNT(*) AS rows,
       ROUND(AVG("Average Speed"),2) AS avg_speed,
       ROUND(AVG("Congestion Level"),2) AS avg_congestion,
       ROUND(AVG("Traffic Volume"),0) AS avg_volume
FROM traffic
GROUP BY weather
ORDER BY avg_speed DESC;
