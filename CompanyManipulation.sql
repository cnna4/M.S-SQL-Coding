USE company;
#A List the first name, middle initial, and last name
# of all employees who earn a salary between 32000 and 45000.
SELECT Fname, Minit, Lname
FROM employee
WHERE Salary >= 32000 AND Salary <= 45000;
#B List the first name, last name, and address of all
# employees who do not have any dependents
SELECT Fname, Lname, address
FROM employee
WHERE ssn NOT IN(
SELECT essn from dependent);
#C List the first name, last name, and address of all employees who
# have dependents other than sons or daughters.
SELECT Fname, Lname, address, dependent_name
FROM employee, dependent
WHERE ssn = essn AND relationship NOT IN ('daughter', 'son');
#D List the full name (first name, middle initial, and last name) of each employee in a single column named , that are
# member of the "Administration" department, sorting the employees in alphabetical order by last name.
SELECT CONCAT(Fname, " ", Minit, " ", Lname) AS Employee
FROM employee, department
WHERE employee.dno = department.dnumber AND department.dname =
"Administration"
order by Lname;
#E List the full name (first name, middle initial, and last name) of each employee in a single column
#named , that are member of the department managed by the
#person with last name 'Wong'. sorting the employees in alphabetical order by full name.
SELECT CONCAT(Fname, " ", Minit, " ", Lname) AS Employee
FROM employee
WHERE employee.dno =
(SELECT dnumber from department JOIN employee ON (ssn
= mgr_ssn) WHERE Lname = 'Wong')
order by Employee;
#F List the full name (first name, middle initial, and last name) #each employee in a single column named , sorting the employees in
#alphabetical order by last name. If the employee has a supervisor, list the full name of the supervisor
#in a single column named .
SELECT CONCAT(e.Fname, " ", e.Minit, " ", e.Lname) AS Employee,
CONCAT(s.Fname, " ", s.Minit, " ", s.Lname) AS Supervisor
FROM employee e LEFT JOIN employee s ON(e.super_ssn = s.ssn)
order by e.Lname;
#H List the project names and their respective project locations that belong to
#the Research Department.
SELECT PName, PLocation
FROM Project
WHERE Dnum = (SELECT Dnumber FROM department WHERE Dname
='RESEARCH');
#i. List the distinct project names and their respective locations that
# are worked on by members of the Research Department
SELECT DISTINCT pname, plocation,d.Dname
FROM project p, department d, employee e
JOIN works_on w ON w.Essn = e.Ssn
WHERE d.dname = 'Research';
