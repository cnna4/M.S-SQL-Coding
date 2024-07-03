#Question 5 - Required Queries- for each query describe in simple English intended goal
#Aggregate functions, Demonstrate the use of 3

SELECT COUNT(*) AS TotalRecords FROM staffinginfo;
-- This query calculates the total number of records in the "staffinginfo" table.

SELECT AVG(ProductiveHours) AS AvgProductiveHours FROM staffinginfo;
-- This query calculates the average value of the "ProductiveHours" column in the "staffinginfo" table.

SELECT SUM(ProductiveHours) AS TotalProductiveHours FROM staffinginfo;
-- This query calculates the total sum of the "ProductiveHours" column in the "staffinginfo" table.

