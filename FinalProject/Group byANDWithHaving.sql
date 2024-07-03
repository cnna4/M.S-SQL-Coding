#Question 5 - Required Queries- for each query describe in simple English intended goal
#. Group by With Having

SELECT CountyName, SUM(ProductiveHours) AS TotalProductiveHours
FROM staffinginfo
GROUP BY CountyName
HAVING TotalProductiveHours > 1000;