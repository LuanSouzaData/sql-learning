# 🐘 SQL Learning Path

A structured repository for learning SQL with PostgreSQL, progressing from fundamental concepts to advanced analytical queries and database optimization techniques.

The goal of this repository is to build practical SQL knowledge through incremental examples, exercises, and real-world scenarios while following professional Git and GitHub workflows.

![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)

![Status](https://img.shields.io/badge/Status-In%20Progress-orange?style=for-the-badge)

![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

---

## 📌 Repository Goals

- [x] Learn the fundamentals of relational databases and SQL.
- [x] Practice creating tables and defining relationships.
- [x] Manipulate and query data using SQL.
- [x] Work with aggregations and JOIN operations.
- [x] Learn subqueries and Common Table Expressions (CTEs).
- [x] Apply analytical queries using Window Functions.
- [ ] Import and export data using CSV files.
- [ ] Work with advanced PostgreSQL features.
- [ ] Learn database performance and query optimization.
- [x] Apply professional version control practices using Git and GitHub.

---

## 🗺️ Learning Roadmap

The repository is organized progressively, starting with SQL fundamentals and advancing toward analytical and performance-related topics.

### 🟢 Module 1: SQL Fundamentals

Topics include:

- Relational database concepts
- Tables, rows, and columns
- `SELECT`
- `WHERE`
- `ORDER BY`
- `LIMIT`
- `INSERT`
- `UPDATE`
- `DELETE`

---

### 🟡 Module 2: Data Modeling and Relationships

Topics include:

- Creating tables
- Primary keys
- Foreign keys
- Constraints
- One-to-many relationships
- Data integrity
- Basic relational modeling

---

### 🟠 Module 3: Aggregations and JOINs

Topics include:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `GROUP BY`
- `HAVING`
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- `FULL OUTER JOIN`
- Table aliases
- Aggregations across related tables

---

### 🔴 Module 4: Intermediate and Analytical SQL

Topics include:

#### Subqueries

- Subqueries in `FROM`
- Subqueries in `WHERE`
- Derived tables
- Nested queries

#### Common Table Expressions

- `WITH`
- Query decomposition
- Reusable intermediate query results

#### Window Functions

- `OVER()`
- `PARTITION BY`
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `LAG()`
- `LEAD()`
- Aggregate functions with `OVER()`

Practical examples include:

- Calculating customer spending
- Ranking customers by total spending
- Finding the most recent order for each customer
- Comparing an order with the previous order

---

### 🔵 Module 5: Advanced SQL

Planned topics:

- `CASE`
- `UNION`
- `UNION ALL`
- Running totals
- Moving averages
- Advanced Window Functions
- Recursive CTEs
- Views
- Materialized Views

---

### 🟣 Module 6: Data Import and Export

Planned topics:

- Importing CSV files
- Exporting query results
- Data validation
- Data cleaning with SQL
- Working with external datasets

---

### ⚫ Module 7: Performance and Database Administration

Planned topics:

- Indexes
- B-Tree indexes
- Query optimization
- `EXPLAIN`
- `EXPLAIN ANALYZE`
- Transactions
- `BEGIN`
- `COMMIT`
- `ROLLBACK`
- Isolation levels
- Basic PostgreSQL administration

---

## 📂 Repository Structure

```text
sql-learning/
│
├── 01-sql-basics/
│   └── SQL fundamentals and basic queries
│
├── 02-data-modeling/
│   ├── Table creation
│   ├── Relationships
│   ├── JOIN operations
│   ├── Aggregations
│   ├── Subqueries
│   ├── Common Table Expressions
│   └── Window Functions
│
└── README.md