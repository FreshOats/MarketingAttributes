# Find the number of distinct visits
SELECT DISTINCT COUNT(utm_source), COUNT(utm_campaign)
FROM page_visits; 

SELECT DISTINCT utm_source, utm_campaign
FROM page_visits;

SELECT DISTINCT page_name
FROM page_visits;
