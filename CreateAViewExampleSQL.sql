CREATE VIEW ProjectInfo AS
SELECT
P.Pname AS Project_Name,
E.Fname || ' ' || E.Lname AS Manager_Name,
COUNT(W.Ssn) AS Num_Employees,
SUM(W.Hours) AS Total_Hours_Worked
FROM
PROJECT P
JOIN
DEPARTMENT D ON P.Dno = D.Dnumber
JOIN
EMPLOYEE E ON D.Mgr_ssn = E.Ssn
LEFT JOIN
WORKS_ON W ON P.Pnumber = W.Pno
GROUP BY
P.Pname, Manager_Name
