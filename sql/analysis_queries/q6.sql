-- 6. Incident vs non-incident days: compare daily avg congestion & speed
-- First aggregate per day
WITH daily AS (
  SELECT DATE("Date") AS day,
         SUM("Incident Reports") AS incidents,
         AVG("Average Speed") AS avg_speed,
         AVG("Congestion Level") AS avg_congestion,
         SUM("Traffic Volume") AS total_volume
  FROM traffic
  GROUP BY DATE("Date")
)
SELECT CASE WHEN incidents>0 THEN 'incident_day' ELSE 'no_incident' END AS day_type,
       COUNT(*) AS days,
       ROUND(AVG(avg_speed),2) AS mean_speed,
       ROUND(AVG(avg_congestion),2) AS mean_congestion,
       ROUND(AVG(total_volume),0) AS mean_volume
FROM daily
GROUP BY day_type;