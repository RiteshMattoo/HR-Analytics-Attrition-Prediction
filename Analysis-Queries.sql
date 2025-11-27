# ANALYSIS QUERIES

# Overall Attrition Stats
SELECT 
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 END) AS AttritionCount,
    ROUND((SUM(CASE WHEN Attrition='Yes' THEN 1 END)*100.0)/COUNT(*),2) AS AttritionRate
FROM employees;

# Attrition by Department

SELECT 
   Department,
   COUNT(*) AS Total,
   SUM(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Leftcount,
   ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 END)*100/COUNT(*),2) AS Attritionrate
FROM employees
GROUP BY Department
ORDER BY Attritionrate DESC;


# Salary Vs Attrition

SELECT Attrition, AVG(MonthlyIncome) AS AvgSalary
FROM employees
GROUP BY Attrition;

# Attrition by AgeGroup

SELECT  
   Agegroup,
   COUNT(*) AS Total,
   SUM(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Leftcount,
   ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 END)*100/COUNT(*),2) AS Attritionrate
FROM employees
GROUP BY Agegroup
ORDER BY Attritionrate DESC;

# Employees Most Likely Leaving (Low experience + Overtime)

SELECT EmployeeNumber, JobRole, MonthlyIncome, OverTime, YearsAtCompany
FROM employees
WHERE OverTime='Yes' AND YearsAtCompany<3 AND JobLevel<=2
ORDER BY MonthlyIncome ASC;
