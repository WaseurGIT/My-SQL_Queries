(
SELECT name,customers_number
FROM lawyers
ORDER BY customers_number DESC--this query will return the highest valued row 
LIMIT 1 --the 1 indicates that this will take only one row
)
UNION ALL
(
SELECT name,customers_number
FROM lawyers
ORDER BY customers_number ASC--this query will return the lowest valued row
LIMIT 1--the 1 indicates that this will take only one row
)
UNION ALL
(
SELECT 'Average',round(AVG(customers_number),0)--the 0 is used to round the average value to the nearest integer
FROM lawyers
)