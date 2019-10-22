# Find the number of distinct visits
SELECT DISTINCT COUNT(utm_source), COUNT(utm_campaign)
FROM page_visits; 
