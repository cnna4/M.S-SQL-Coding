##Question 5 - Define Scripts - Joins

SELECT s1.FacilityName, s1.CountyName, s2.FacilityName AS RelatedFacility
FROM staffinginfo s1
INNER JOIN staffinginfo s2 ON s1.CountyName = s2.CountyName
WHERE s1.FacilityName <> s2.FacilityName;
-- (Self join) This query performs a self join on the "staffinginfo" table to find pairs of facilities in the same county. It selects the FacilityName 
-- and CountyName columns from both instances of the table, aliased as s1 and s2, respectively.
-- The join condition links rows where the CountyName is the same in both instances. 
-- The WHERE clause ensures that the FacilityName from one instance is different from the FacilityName 
-- from the other instance, avoiding matching a facility with itself.

SELECT s.BeginDate, s.FacilityName, s.CountyName, p.IncomeStatementItem, p.IncomeStatementAmount
FROM staffinginfo s
INNER JOIN profits p ON s.FacilityNumber = p.FacilityNumber;
-- (inner join) This query performs an inner join between the "staffinginfo" table (aliased as s)
-- and the "profits" table (aliased as p) based on the FacilityNumber column. It selects 
 -- the FacilityName and CountyName columns from the "staffinginfo" table and the IncomeStatementItem 
 -- and IncomeStatementAmount columns from the "profits" table.

SELECT s.FacilityName, s.CountyName, p.IncomeStatementItem, p.IncomeStatementAmount,s.HoursType
FROM staffinginfo s
LEFT JOIN profits p ON s.FacilityNumber = p.FacilityNumber;
-- (Outer join) This query performs a left outer join between the "staffinginfo" table (aliased as s) and the "profits" table 
-- (p) based on the FacilityNumber column. It selects the FacilityName and CountyName columns from the "staffinginfo" table
 -- and the IncomeStatementItem and IncomeStatementAmount columns from the "profits" table.
