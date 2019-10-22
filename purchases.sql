# Counts the number of actual purchases were made
SELECT DISTINCT COUNT(*)
FROM page_visits
WHERE page_name = '4 - purchase';
