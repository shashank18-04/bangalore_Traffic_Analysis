-- 7. Rolling 4-week moving average of weekly volume (window function)
SELECT Year, WeekNumber, total_volume,
       ROUND(AVG(total_volume) OVER (ORDER BY Year, WeekNumber ROWS BETWEEN 3 PRECEDING AND CURRENT ROW),0) AS ma4_weeks
FROM (
  SELECT Year, WeekNumber, SUM("Traffic Volume") AS total_volume
  FROM traffic
  GROUP BY Year, WeekNumber
) t
ORDER BY Year, WeekNumber;
