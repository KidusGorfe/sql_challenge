--Analysis

--Question 1

SELECT e.EmpNo, e.LastName, e.FirstName, e.Sex, s.Salary
FROM Employees e
JOIN Salaries s ON e.EmpNo = s.EmpNo;

--Question 2

SELECT FirstName, LastName, HireDate
FROM Employees
WHERE EXTRACT(YEAR FROM HireDate) = 1986;

--Question 3

SELECT dm.DeptNo, d.DeptName, e.EmpNo, e.LastName, e.FirstName
FROM DepartmentManagers dm
JOIN Departments d ON dm.DeptNo = d.DeptNum
JOIN Employees e ON dm.EmpNo = e.EmpNo;

--Question 4
SELECT de.DeptNo, e.EmpNo, e.LastName, e.FirstName, d.DeptName
FROM DepartmentEmployees de
JOIN Employees e ON de.EmpNo = e.EmpNo
JOIN Departments d ON de.DeptNo = d.DeptNum;

--Question 5

SELECT FirstName, LastName, Sex
FROM Employees
WHERE FirstName = 'Hercules' AND LastName LIKE 'B%';

--Question 6

SELECT e.EmpNo, e.LastName, e.FirstName
FROM Employees e
JOIN DepartmentEmployees de ON e.EmpNo = de.EmpNo
JOIN Departments d ON de.DeptNo = d.DeptNum
WHERE d.DeptName = 'Sales';

--Question 7

SELECT e.EmpNo, e.LastName, e.FirstName, d.DeptName
FROM Employees e
JOIN DepartmentEmployees de ON e.EmpNo = de.EmpNo
JOIN Departments d ON de.DeptNo = d.DeptNum
WHERE d.DeptName IN ('Sales', 'Development');

--Question 8

SELECT LastName, COUNT(*) AS Frequency
FROM Employees
GROUP BY LastName
ORDER BY Frequency DESC;
