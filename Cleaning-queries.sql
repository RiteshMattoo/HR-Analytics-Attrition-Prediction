# Data Cleaning & Quality Checks

# Check Null Values in Each Column

SELECT 
    SUM(CASE WHEN Age IS NULL THEN 1 END) AS Null_Age,
    SUM(CASE WHEN MonthlyIncome IS NULL THEN 1 END) AS Null_MonthlyIncome,
    SUM(CASE WHEN Education IS NULL THEN 1 END) AS Null_Education,
    SUM(CASE WHEN JobRole IS NULL THEN 1 END) AS Null_JobRole,
    SUM(CASE WHEN Attrition IS NULL THEN 1 END) AS Null_Attrition
FROM employees;

# Check Duplicate Employee Records

SELECT EmployeeNumber, COUNT(*)
FROM employees
GROUP BY EmployeeNumber
HAVING COUNT(*) >1;

# Check Invalid / Outlier Values

WITH ordered AS (
    SELECT Age,
           ROW_NUMBER() OVER (ORDER BY Age) AS rn,
           COUNT(*) OVER() AS total_rows
    FROM employees
),
quartiles AS (
    SELECT 
        MAX(CASE WHEN rn = FLOOR(0.25*total_rows) THEN Age END) AS Q1,
        MAX(CASE WHEN rn = FLOOR(0.75*total_rows) THEN Age END) AS Q3
    FROM ordered
),
bounds AS (
    SELECT 
        Q1, Q3, (Q3-Q1) AS IQR,
        (Q1 - 1.5*(Q3-Q1)) AS LowerBound,
        (Q3 + 1.5*(Q3-Q1)) AS UpperBound
    FROM quartiles
)
SELECT e.EmployeeNumber, e.Age
FROM employees e, bounds
WHERE e.Age < LowerBound OR e.Age > UpperBound;

# Create Derived Age Group

ALTER TABLE employees DROP COLUMN Agegroup;
ALTER TABLE employees ADD COLUMN Agegroup VARCHAR(20);

UPDATE employees
SET Agegroup = CASE
   WHEN Age < 25 THEN 'Young'
   WHEN Age BETWEEN 25 AND 35 THEN 'MidCareer'
   WHEN Age BETWEEN 36 AND 45 THEN 'Experienced'
   ELSE 'Senior'
END;
