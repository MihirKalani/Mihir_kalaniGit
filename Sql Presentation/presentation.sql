use Hospital_DB

CREATE TABLE Employees (
    EmpID       INT PRIMARY KEY,
    Name        VARCHAR(50),
    Department  VARCHAR(50),
    Role        VARCHAR(50),
    City        VARCHAR(50),
    Age         INT,
    Salary      DECIMAL(10,2),
    Status      VARCHAR(20),
    Email       VARCHAR(100)
);

INSERT INTO Employees VALUES
(1,  'Aarav Shah',     'IT',        'Developer',  'Mumbai', 28, 72000, 'Active',   'aarav@example.com'),
(2,  'Priya Mehta',    'HR',        'Manager',    'Delhi',  35, 85000, 'Active',   'priya@example.com'),
(3,  'Rohan Verma',    'Finance',   'Analyst',    'Mumbai', 30, 60000, 'Active',   'rohan@example.com'),
(4,  'Sneha Joshi',    'IT',        'Tester',     'Pune',   25, 48000, 'Inactive', NULL),
(5,  'Karan Patel',    'HR',        'Recruiter',  'Mumbai', 27, 42000, 'Active',   'karan@example.com'),
(6,  'Meera Nair',     'Finance',   'Analyst',    'Delhi',  32, 65000, 'Active',   'meera@example.com'),
(7,  'Arjun Singh',    'IT',        'Developer',  'Pune',   29, 75000, 'Active',   'arjun@example.com'),
(8,  'Divya Rao',      'Marketing', 'Executive',  'Delhi',  24, 38000, 'Active',   'divya@example.com'),
(9,  'Nikhil Gupta',   'IT',        'Lead',       'Mumbai', 40, 95000, 'Active',   'nikhil@example.com'),
(10, 'Anita Sharma',   'HR',        'Executive',  'Pune',   26, 40000, 'Inactive', NULL),
(11, 'Vikram Desai',   'Finance',   'Manager',    'Mumbai', 38, 90000, 'Active',   'vikram@example.com'),
(12, 'Pooja Iyer',     'Marketing', 'Manager',    'Delhi',  33, 78000, 'Active',   'pooja@example.com'),
(13, 'Rahul Jain',     'IT',        'Developer',  'Delhi',  31, 70000, 'Active',   'rahul@example.com'),
(14, 'Nisha Pillai',   'Marketing', 'Executive',  'Pune',   23, 35000, 'Active',   'nisha@example.com'),
(15, 'Suresh Kumar',   'Finance',   'Analyst',    'Pune',   29, 55000, 'Inactive', NULL);

SELECT * FROM Employees;

-- ╔══════════════════════════════════════════════════════════╗
-- ║               1. WHERE CLAUSE                           ║
-- ╚══════════════════════════════════════════════════════════╝

/*
------------------------------------------------------------
DEFINITION:
   WHERE clause filters rows from a table based on a condition.
   Only rows where the condition is TRUE are returned.
   Used with SELECT, UPDATE, and DELETE.

------------------------------------------------------------
SYNTAX:
   SELECT column1, column2
   FROM table_name
   WHERE condition;

------------------------------------------------------------
OPERATORS:

   COMPARISON:
      =    Equal to
      <>   Not equal to
      >    Greater than
      <    Less than
      >=   Greater than or equal
      <=   Less than or equal

   LOGICAL:
      AND       Both conditions must be TRUE
      OR        At least one condition must be TRUE
      NOT       Reverses / negates the condition

   SPECIAL:
      LIKE      Pattern match  (% = any chars,  _ = one char)
      IN        Match from a list of values
      BETWEEN   Inclusive range check (includes both endpoints)
      IS NULL   Check for missing / empty values
------------------------------------------------------------
*/


-- ------------------------------------------------------------
-- QUESTION 1: Show all employees whose salary is more than 50,000
-- ------------------------------------------------------------
SELECT Name, Salary
FROM Employees
WHERE Salary > 50000;


-- ------------------------------------------------------------
-- QUESTION 2: Show employees who are 30 years old or older
-- ------------------------------------------------------------
SELECT Name, Age
FROM Employees
WHERE Age >= 30;

-- ------------------------------------------------------------
-- QUESTION 3: Show all employees who are NOT inactive
-- ------------------------------------------------------------
SELECT Name, Status
FROM Employees
WHERE NOT Status = 'Inactive';

-- Same result using:  WHERE Status <> 'Inactive'

-- ------------------------------------------------------------
-- QUESTION 4: Show employees who are older than 25 AND live in Mumbai
-- ------------------------------------------------------------
SELECT Name, Age, City
FROM Employees
WHERE Age > 25 AND City = 'Mumbai';

-- ------------------------------------------------------------
-- QUESTION 5: Show employees who work in HR or IT department
-- ------------------------------------------------------------
SELECT Name, Department
FROM Employees
WHERE Department = 'HR' OR Department = 'IT';

-- ------------------------------------------------------------
-- QUESTION 6: Show employees whose name starts with letter 'A'
-- ------------------------------------------------------------
SELECT Name
FROM Employees
WHERE Name LIKE 'A%';

-- ------------------------------------------------------------
-- QUESTION 7: Show employees who live in Delhi or Mumbai
-- ------------------------------------------------------------
SELECT Name, City
FROM Employees
WHERE City IN ('Delhi', 'Mumbai');

-- ------------------------------------------------------------
-- QUESTION 8: Show employees whose age is between 25 and 30
-- ------------------------------------------------------------
SELECT Name, Age
FROM Employees
WHERE Age BETWEEN 25 AND 30;

-- ------------------------------------------------------------
-- QUESTION 9: Show employees whose email is missing (not provided)
-- ------------------------------------------------------------
SELECT Name, Email
FROM Employees
WHERE Email IS NULL;

-- ╔══════════════════════════════════════════════════════════╗
-- ║               2. GROUP BY CLAUSE                        ║
-- ╚══════════════════════════════════════════════════════════╝

/*
------------------------------------------------------------
DEFINITION:
   GROUP BY groups rows that have the same value in a column
   into summary rows. Always used with aggregate functions
   to calculate one result per group.

------------------------------------------------------------
SYNTAX:
   SELECT column, AGGREGATE_FUNCTION(column)
   FROM table_name
   WHERE condition          -- optional
   GROUP BY column;

------------------------------------------------------------
AGGREGATE FUNCTIONS:
   COUNT()   Count number of rows in each group
   SUM()     Add up all values in each group
   AVG()     Calculate average value in each group
   MAX()     Find the highest value in each group
   MIN()     Find the lowest value in each group

------------------------------------------------------------
KEY RULES:
   - Every column in SELECT that is NOT inside an aggregate
     function MUST be listed in GROUP BY.
   - WHERE filters rows BEFORE grouping happens.
   - Use HAVING (not WHERE) to filter on aggregate results.

EXECUTION ORDER:
   FROM --> WHERE --> GROUP BY --> SELECT --> ORDER BY
------------------------------------------------------------
*/


-- ------------------------------------------------------------
-- QUESTION 1: How many employees are there in each department?
-- ------------------------------------------------------------
SELECT Department, COUNT(EmpID) AS TotalEmployees
FROM Employees
GROUP BY Department;

select * from Employees

-- ------------------------------------------------------------
-- QUESTION 2: What is the total salary paid in each department?
-- ------------------------------------------------------------
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department;

-- ------------------------------------------------------------
-- QUESTION 3: What is the total salary of ACTIVE employees per department?
-- ------------------------------------------------------------
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
WHERE Status = 'Active'       -- Step 1: remove Inactive rows
GROUP BY Department;          -- Step 2: group remaining Active rows


-- ╔══════════════════════════════════════════════════════════╗
-- ║               3. HAVING CLAUSE                          ║
-- ╚══════════════════════════════════════════════════════════╝

/*
------------------------------------------------------------
DEFINITION:
   HAVING filters groups AFTER GROUP BY has been applied.
   WHERE cannot be used with aggregate functions - HAVING can.
   It is the only way to filter results of COUNT, SUM, AVG etc.

------------------------------------------------------------
SYNTAX:
   SELECT column, AGGREGATE_FUNCTION(column)
   FROM table_name
   GROUP BY column
   HAVING condition;

------------------------------------------------------------
WHERE vs HAVING - KEY DIFFERENCE:

   Feature      | WHERE                 | HAVING
   -------------|-----------------------|-------------------------
   Filters      | Individual rows       | Groups of rows
   Works with   | Column values         | Aggregate functions
   Runs         | BEFORE GROUP BY       | AFTER GROUP BY
   Example      | WHERE Age > 25        | HAVING COUNT(*) > 3

EXECUTION ORDER:
   FROM --> WHERE --> GROUP BY --> HAVING --> SELECT --> ORDER BY
------------------------------------------------------------
*/


-- ------------------------------------------------------------
-- QUESTION 1: Which departments have more than 3 employees?
-- ------------------------------------------------------------
SELECT Department, COUNT(*) AS Total
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 3;

-- ------------------------------------------------------------
-- QUESTION 2: Which departments have an average salary above 60,000?
-- ------------------------------------------------------------
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 60000;

-- ------------------------------------------------------------
-- QUESTION 3: Which departments have more than 2 employees
-- ------------------------------------------------------------
SELECT Department, COUNT(*) AS Total, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 2
   AND MAX(Salary) < 95000;

-- ╔══════════════════════════════════════════════════════════╗
-- ║               4. ORDER BY CLAUSE                        ║
-- ╚══════════════════════════════════════════════════════════╝

/*
------------------------------------------------------------
DEFINITION:
   ORDER BY sorts the result set in ascending or descending order.
   ASC  = Ascending  (smallest to largest, A to Z) -- DEFAULT
   DESC = Descending (largest to smallest, Z to A)
   ORDER BY always executes LAST in SQL query processing.

------------------------------------------------------------
SYNTAX:
   SELECT column1, column2
   FROM table_name
   ORDER BY column1 ASC,
            column2 DESC;

------------------------------------------------------------
KEY RULES:
   - ASC is the default, you can skip writing it
   - You can sort by multiple columns
   - You can sort by a column that is NOT in SELECT list
   - You can use column position number instead of name
   - ORDER BY always runs last
------------------------------------------------------------
*/


-- ------------------------------------------------------------
-- QUESTION 1: Show all employees sorted by salary from highest to lowest
-- ------------------------------------------------------------
SELECT Name, Salary
FROM Employees
ORDER BY Salary DESC;

-- ------------------------------------------------------------
-- QUESTION 2: Show all employees sorted by age youngest to oldest
-- ------------------------------------------------------------
SELECT Name, Age
FROM Employees
ORDER BY Age ASC;

-- ------------------------------------------------------------
-- QUESTION 3: Sort by department A to Z, and within same department
-- ------------------------------------------------------------
SELECT Name, Department, Salary
FROM Employees
ORDER BY Department ASC,
         Salary DESC;

-- ------------------------------------------------------------
-- QUESTION 4: Sort using column position number instead of column name
-- ------------------------------------------------------------
SELECT Name, Age, Salary
FROM Employees
ORDER BY 3 DESC;              -- 3 means 3rd column = Salary


-- ╔══════════════════════════════════════════════════════════╗
-- ║               5. TOP CLAUSE                             ║
-- ╚══════════════════════════════════════════════════════════╝

/*
------------------------------------------------------------
DEFINITION:
   TOP limits the number of rows returned by a query.
   Specific to SQL Server and MS Access.
   MySQL uses LIMIT,  Oracle uses FETCH FIRST n ROWS.

------------------------------------------------------------
SYNTAX:
   -- Return fixed number of rows:
   SELECT TOP n column1, column2
   FROM table_name
   ORDER BY column;

   -- Return percentage of rows:
   SELECT TOP n PERCENT column1
   FROM table_name
   ORDER BY column;

------------------------------------------------------------
KEY NOTES:
   - Always use TOP with ORDER BY for meaningful results
   - Without ORDER BY, TOP picks rows in random order
   - TOP PERCENT calculates the percentage of total rows
------------------------------------------------------------
*/


-- ------------------------------------------------------------
-- QUESTION 1: Show only the top 5 highest paid employees
-- ------------------------------------------------------------
SELECT TOP 5 Name, Salary
FROM Employees
ORDER BY Salary DESC;

-- ------------------------------------------------------------
-- QUESTION 2: Show the 3 youngest employees in the company
-- ------------------------------------------------------------
SELECT TOP 3 Name, Age, Department
FROM Employees
ORDER BY Age ASC;

-- ------------------------------------------------------------
-- QUESTION 3: Show top 10 percent of employees by salary
-- ------------------------------------------------------------
SELECT TOP 10 Name, Salary
FROM Employees
ORDER BY Salary DESC

select * From Employees

select * from Employees



-- ------------------------------------------------------------
-- QUESTION 4: Who is the single highest paid employee in the IT department?
-- ------------------------------------------------------------
SELECT TOP 1 Name, Department, Salary
FROM Employees
WHERE Department = 'IT'
ORDER BY Salary DESC;

-- ╔══════════════════════════════════════════════════════════╗
-- ║               6. DISTINCT CLAUSE                        ║
-- ╚══════════════════════════════════════════════════════════╝

/*
------------------------------------------------------------
DEFINITION:
   DISTINCT removes duplicate rows and returns only unique values.
   When multiple columns are selected, uniqueness is checked
   on the COMBINATION of all selected columns together.

------------------------------------------------------------
SYNTAX:
   -- Single column:
   SELECT DISTINCT column1
   FROM table_name;

   -- Multiple columns:
   SELECT DISTINCT column1, column2
   FROM table_name;

   -- Count unique values:
   SELECT COUNT(DISTINCT column1)
   FROM table_name;

------------------------------------------------------------
KEY NOTES:
   - NULL values are treated as equal
     (only one NULL will appear in DISTINCT results)
   - DISTINCT is faster than GROUP BY for simple deduplication
   - COUNT(DISTINCT col) counts how many unique values exist
------------------------------------------------------------
*/


-- ------------------------------------------------------------
-- QUESTION 1: What are the different departments in the company?
-- ------------------------------------------------------------
SELECT DISTINCT Department
FROM Employees;

-- ------------------------------------------------------------
-- QUESTION 2: What are the different cities where employees are located?
-- ------------------------------------------------------------
SELECT DISTINCT City
FROM Employees;

-- ------------------------------------------------------------
-- QUESTION 3: Show unique combinations of Department and City
-- ------------------------------------------------------------
SELECT DISTINCT Department, City
FROM Employees;

-- ╔══════════════════════════════════════════════════════════╗
-- ║    FINAL: ALL 6 CLAUSES USED TOGETHER IN ONE QUERY      ║
-- ╚══════════════════════════════════════════════════════════╝

/*
------------------------------------------------------------
QUESTION:
   Show the TOP 3 departments where Active employees work,
   that have more than 1 employee,
   sorted by average salary from highest to lowest.
   Show department name, total employees, avg salary, max salary.

------------------------------------------------------------
EXPECTED OUTPUT:
   IT dept at top (highest avg salary among active employees)
------------------------------------------------------------
*/

SELECT TOP 3
    Department,
    COUNT(*)     AS TotalEmployees,
    AVG(Salary)  AS AvgSalary,
    MAX(Salary)  AS HighestSalary
FROM Employees
WHERE Status = 'Active'       -- Step 2: filter only Active rows
GROUP BY Department            -- Step 3: group by department
HAVING COUNT(*) > 1            -- Step 4: keep groups with more than 1 employee
ORDER BY AvgSalary DESC;       -- Step 6: sort by avg salary, highest first
                               -- TOP 3 at line 1: return only top 3 results

-- ============================================================
-- END OF PRESENTATION EXAMPLES
-- ============================================================