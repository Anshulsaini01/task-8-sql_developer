# 🔄 SQL Stored Procedures & Functions

## 📝 Objective
This project explores the creation of **Stored Procedures** and **Functions** in SQL, empowering developers to modularize and reuse database logic efficiently. These techniques support cleaner code, parameterized queries, and better control flow in complex systems.

---

## 🛠 Tools Used
- [DB Browser for SQLite](https://sqlitebrowser.org/) *(Note: limited support for procedures/functions)*
- [MySQL Workbench](https://www.mysql.com/products/workbench/)

---

## 💡 Key Concepts

- **Stored Procedure**: A set of SQL statements saved in the database that performs actions (like select, insert, update).
- **Function**: A reusable block that performs operations and returns a value.
- **Modularization**: Breaks down logic into callable components.
- **Parameterization**: Enables passing input values for flexibility.

---

## 📦 Stored Procedure Example

```sql
DELIMITER //

CREATE PROCEDURE GetEmployeesByDept(
    IN dept_name VARCHAR(100)
)
BEGIN
    SELECT first_name, last_name, salary
    FROM employees
    WHERE department = dept_name;
END //

DELIMITER ;
