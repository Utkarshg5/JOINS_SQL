# JOINS_SQL
Example project showing how to merge data from multiple tables using different JOIN types in Oracle Database. Includes sample data (Customers, Orders) and queries for INNER, LEFT, RIGHT, and FULL OUTER JOIN.
# SQL Joins (Inner, Left, Right, Full)

## Objective
Learn to combine data from multiple tables using SQL JOINs.

## Tools
- DB Browser for SQLite
- MySQL Workbench

## Files
- `task5_customers_orders.csv` — Sample data for Customers and Orders tables.
- `task5_sql_joins.sql` — SQL scripts demonstrating INNER, LEFT, RIGHT, and FULL JOIN queries.
- `.gitignore` — Ignores unnecessary files.

## Topics Covered
- Creating related tables
- Inserting sample data
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN (and workaround for SQLite)

## Example Queries

### INNER JOIN
```sql
SELECT Customers.first_name, Customers.last_name, Orders.product, Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;
