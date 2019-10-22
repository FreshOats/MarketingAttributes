# Finds the individual campaigns from each source
SELECT DISTINCT utm_source, utm_campaign
FROM page_visits;
