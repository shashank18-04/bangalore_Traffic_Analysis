-- 8. Rank areas by average congestion (dense_rank)
SELECT area, avg_congestion, total_volume,
       DENSE_RANK() OVER (ORDER BY avg_congestion DESC) AS congestion_rank
FROM (
  SELECT "Area Name" AS area,
         ROUND(AVG("Congestion Level"),2) AS avg_congestion,
         SUM("Traffic Volume") AS total_volume
  FROM traffic
  GROUP BY "Area Name"
) s
ORDER BY congestion_rank;