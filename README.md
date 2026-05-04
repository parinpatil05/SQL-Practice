# SQL Practice Repository

This repository contains my structured SQL practice while learning database concepts during my MCA program.
It focuses on building strong SQL fundamentals for backend development, database management, and data analysis.

---

## Repository Structure

```
SQL-Practice
│
├── select_queries.sql       # Basic SELECT statements and filtering
├── filtering_data.sql       # WHERE clause and filtering techniques
├── joins.sql                # Joins + real-world use cases
├── aggregations.sql         # COUNT, SUM, AVG, MIN, MAX functions
├── groupby.sql              # GROUP BY and HAVING clause examples
├── subqueries.sql           # Nested queries
├── case_statements.sql      # Conditional logic using CASE
├── window_functions.sql     # RANK, ROW_NUMBER, running totals
├── ddl_commands.sql         # CREATE, ALTER, DROP
├── dml_commands.sql         # INSERT, UPDATE, DELETE
├── null_handling.sql        # NULL handling techniques
└── practice_problems.sql    # Interview-style SQL problems
```

---

## Topics Covered

* SELECT queries and filtering
* Joins (including real-world scenarios)
* Aggregation functions
* GROUP BY and HAVING
* Subqueries
* CASE statements
* Window functions
* Data Definition Language (DDL)
* Data Manipulation Language (DML)
* NULL handling

---

## Skills Demonstrated

* Writing efficient and optimized SQL queries
* Data filtering and transformation
* Aggregation and analytical querying
* Solving real-world SQL problems
* Combining multiple SQL concepts in a single query
* Understanding relational database structure

---

## Sample Query

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

This query calculates the average salary per department and filters only those with high averages.

---

## Practice Problems

This repository includes interview-style SQL problems such as:

* Finding the second highest salary
* Identifying duplicate records
* Ranking employees using window functions
* Filtering data using subqueries

These problems are implemented in:

```
practice_problems.sql
```

---

## Tools Used

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* HackerRank
* LeetCode

---

## Learning Progress

✔ Basic Queries
✔ Joins
✔ Aggregations
✔ Subqueries
✔ Window Functions
⬜ Stored Procedures
⬜ Index Optimization
⬜ Query Performance Tuning

---

## Purpose

This repository serves as a personal learning journal and portfolio to demonstrate my SQL skills while pursuing MCA.
It reflects consistent practice, problem-solving ability, and progression toward advanced database concepts.

---

## Future Improvements

* Add Common Table Expressions (CTE)
* Implement Views and Stored Procedures
* Include query optimization examples
* Add real-world mini SQL projects
