# SQL Practice Repository

This repository contains my structured SQL practice while learning database concepts during my MCA program.
The goal of this repository is to build strong SQL fundamentals for backend development, database management, and data analysis.

---

## Repository Structure

```
SQL-Practice
│
├── select_queries.sql       # Basic SELECT statements and filtering
├── joins.sql                # INNER JOIN, LEFT JOIN, RIGHT JOIN examples
├── aggregations.sql         # COUNT, SUM, AVG, MIN, MAX functions
├── groupby.sql              # GROUP BY and HAVING clause examples
├── subqueries.sql           # Nested queries and filtering
├── case_statements.sql      # Conditional logic using CASE
├── window_functions.sql     # RANK, ROW_NUMBER, running totals
├── ddl_commands.sql         # CREATE, ALTER, DROP table examples
├── dml_commands.sql         # INSERT, UPDATE, DELETE examples
└── practice_problems.sql    # SQL interview-style practice problems
```

---

## Topics Covered

This repository includes practice examples for the following SQL concepts:

* SELECT queries and filtering
* Table joins
* Aggregation functions
* GROUP BY and HAVING
* Subqueries
* CASE statements
* Window functions
* Data Definition Language (DDL)
* Data Manipulation Language (DML)

---

## Skills Demonstrated

Through these exercises, the following SQL skills are practiced:

* Writing efficient SQL queries
* Data filtering and retrieval
* Data aggregation and grouping
* Query logic using conditional statements
* Analytical thinking using SQL problems
* Understanding relational database structures

---

## Example Query

Example of a query used in data analysis:

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

This query calculates the average salary for each department and filters departments where the average salary exceeds 50,000.

---

## Tools Used

The following tools were used while practicing SQL:

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* SQL practice platforms such as HackerRank and LeetCode

---

## Purpose

This repository serves as a personal learning journal documenting my progress in SQL while pursuing my MCA.
It is intended to strengthen my understanding of databases and improve problem-solving skills using SQL.

---

## Future Additions

The repository will continue to grow as new topics are learned, including:

* Common Table Expressions (CTE)
* Views
* Stored Procedures
* Triggers
* Query performance optimization
