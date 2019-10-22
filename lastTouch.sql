# This counts the last touches from each of the campaigns
WITH last_touch AS (
    SELECT user_id,
        MAX(timestamp) as last_touch_at
    FROM page_visits
    GROUP BY user_id
),
lt_attr AS (
  SELECT 	lt.user_id,
          lt.last_touch_at,
          pv.utm_source,
          pv.utm_campaign
  FROM last_touch lt
  JOIN page_visits pv
      ON lt.user_id = pv.user_id
      AND lt.last_touch_at = pv.timestamp
)
SELECT lt_attr.utm_source, 
		lt_attr.utm_campaign,
    COUNT(*)
FROM lt_attr
GROUP BY 1,2
ORDER BY 3 DESC;
