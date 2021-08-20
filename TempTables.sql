CREATE TABLE #temp_employee2 (
EmployeeID INT,
JobTitle VARCHAR(100),
Salary INT
)


SELECT * 
FRP< #temp_employee2



INSERT INTO #temp_employee2 VALUES 
				(
				'1001', 'HR', '45000'
					)

INSERT INTO #temp_employee2 


SELECT * FROM SQLTutorial..EmployeeSalary

SELECT * FROM #temp_employee2




DROP TABLE IF EXISTS #temp_employee3
CREATE TABLE #temp_employee3 (
JobTitle VARCHAR(100),
EmployeesPerJob INT ,
AvgAge INT,
AvgSalary INT
)



INSERT INTO #temp_employee3
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle



SELECT * 
FROM #temp_employee3



SELECT AvgAge * AvgSalary
FROM #temp_employee3
