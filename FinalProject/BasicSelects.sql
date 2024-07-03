#Question 5 - Required Queries- for each query describe in simple English intended goal
#Part A

SELECT * FROM staffinginfo;
-- (i)This query selects all columns from the table staffinginfo, retrieving all rows without any filtering or sorting

SELECT * FROM staffinginfo
ORDER BY FacilityName;
-- (ii)This query selects all columns from the table staffinginfo and orders the results by the FacilityName column in ascending order.

SELECT DISTINCT CountyName FROM staffinginfo;
-- (iii)This query selects distinct values from the CountyName column of the staffinginfo table,
-- ensuring only unique county names are returned, eliminating duplicates

SELECT * FROM staffinginfo
WHERE CountyName = 'Humboldt' AND TypeOfControl = 'Investor';
-- (iv)This query selects all columns from the staffinginfo table where the CountyName is 'Humoldt' and the TypeOfControl is
-- 'Distrcit'. It uses the AND operator
-- to specify that both conditions must be true for a row to be included in the result set.

SELECT * FROM staffinginfo
WHERE CountyName IN ('Glenn', 'Los Angeles', 'Humboldt');
-- (v)This query selects all columns from the staffinginfo table where the CountyName is either 'Glenn', 'Los Angeles', 'Humboldt' 
-- It uses the IN operator to match values against a list of specified options.

SELECT * FROM staffinginfo
WHERE FacilityName LIKE 'A%';
-- (vi)This query selects all columns from the staffinginfo table where the FacilityName starts with 'A'.
 -- The % is a wildcard that matches any sequence of characters, so this query would match 'ALAMEDA HOSPITAL', and ALHAMBRA HOSPITAL


