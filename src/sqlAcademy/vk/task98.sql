SELECT d.name as DepartmentName,
MAX(e.Salary) as HighestSalary FROM Employees e
JOIN Departments d on d.id = e.Dep_id
GROUP BY d.name
ORDER BY HighestSalary DESC;