WITH RECURSIVE EmployeeHierarchy AS (
SELECT SSN, CONCAT(FName, ' ', LName) AS FullName, Manager_SSN, 1 AS Level
FROM EMPLOYEE
WHERE Manager_SSN IS NULL
UNION ALL
SELECT e.SSN, CONCAT(e.FName, ' ', e.LName) AS FullName, e.Manager_SSN,
eh.Level + 1
FROM EMPLOYEE e
INNER JOIN EmployeeHierarchy eh ON e.ManagerSSN = eh.SSN
)
SELECT FullName, Level
FROM EmployeeHierarchy
ORDER BY Level, FullName;