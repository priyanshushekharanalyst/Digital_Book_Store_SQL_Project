# Digital Bookstore Database & Business Insights with SQL

> An end-to-end SQL portfolio project demonstrating database design, data loading, business analysis, and insight generation using PostgreSQL

# 📖 Project Overview

The **Digital Bookstore Business Analysis** project demonstrates how SQL can be used to solve real-world business problems by analyzing transactional data from an online bookstore.
The project involves designing a relational database, importing datasets into PostgreSQL, and writing SQL queries to answer business questions related to customers, sales, inventory, and revenue.

Business Objectives

The primary objectives of this project are to:

- Design a relational database for a digital bookstore.
- Load and manage datasets using PostgreSQL.
- Perform exploratory data analysis using SQL.
- Analyze customer purchasing behavior.
- Evaluate book sales performance.
- Monitor inventory availability.
- Generate actionable business insights through SQL queries.

---

# 📂 Dataset

The database consists of three relational tables.

| Table | Description |
|---------|------------|
| **Books** | Contains information about books, authors, genres, prices, and available stock. |
| **Customers** | Stores customer information including location and contact details. |
| **Orders** | Stores customer purchase transactions and sales information. |

---

# 🗄️ Database Schema (ER Diagram)

The database follows a relational structure where:

- One customer can place multiple orders.
- One book can appear in multiple orders.
- The **Orders** table acts as the transactional table connecting Customers and Books.

<p align="center">
<img src="Images/ER_Diagram.png" width="800">
</p>

---

# Entity Relationships

1[Schemas] ()


```

### Relationships

- **Customers → Orders**
  - One-to-Many

- **Books → Orders**
  - One-to-Many

---

# 🛠️ Tools & Technologies

- PostgreSQL
- MS Excel
- pgAdmin 4
- GitHub

---

# SQL Concepts Demonstrated

This project includes practical implementation of:

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions
- DISTINCT
- LIMIT
- INNER JOIN
- LEFT JOIN
- CASE Statements
- Aliases
- Aggregate Reporting
- Business Analytics Queries

---

# Business Questions Answered

The SQL analysis answers several business-focused questions, including:

### Books Analysis

- Retrieve books by genre.
- Find books published after a specific year.
- Identify the most expensive books.
- Find books with low inventory.
- Calculate average book prices by genre.

### Customer Analysis

- Identify customers from specific countries.
- Find customers who placed multiple orders.
- Identify highest spending customers.
- Analyze customer purchasing behavior.

### Sales Analysis

- Calculate total revenue.
- Determine monthly sales trends.
- Find the most frequently purchased books.
- Analyze sales by genre.
- Identify top-selling authors.
- Evaluate city-wise sales performance.

### Inventory Analysis

- Calculate remaining stock after sales.
- Identify books that require restocking.

---

# Key Business Insights

Using SQL, the project provides insights such as:

- Best-selling books and genres
- Revenue generated from book sales
- High-value customers
- Inventory availability
- Top-performing cities
- Best-selling authors
- Customer purchasing trends

---

# Project Structure

```
Digital-Bookstore-Business-Analysis/
│
├── Dataset/
│   ├── Books.csv
│   ├── Customers.csv
│   └── Orders.csv
│
├── SQL/
│   ├── Database_Creation.sql
│   ├── Data_Loading.sql
│   ├── Business_Queries.sql
│   └── Analysis.sql
│
├── Images/
│   └── ER_Diagram.png
│
├── README.md
│
└── LICENSE
```

---

Skills Demonstrated

This project highlights proficiency in:

- SQL Programming, PostgreSQL, Database Design, Relational Database Management, Data Cleaning, Business Analytics, Sales Analysis & Data Interpretation.

---


# Conclusion

This project demonstrates the practical application of SQL in analyzing business data and generating actionable insights for decision-making. It showcases my ability to work with relational databases, write efficient SQL queries, and solve real-world business problems using data.


