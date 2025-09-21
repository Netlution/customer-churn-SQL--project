# 📊 Customer Churn Analysis (SQL)

This project explores **customer churn** using SQL. It demonstrates querying, filtering, aggregation, joins, subqueries, and set operations on a telecom churn dataset. Designed as a learning project for practicing **SQL fundamentals and advanced queries**.

---

## 📑 Table of Contents
- [📂 Dataset](#-dataset)
- [🛠️ Features & SQL Concepts Covered](#️-features--sql-concepts-covered)
- [📘 Example Queries](#-example-queries)
- [🚀 Getting Started](#-getting-started)
- [📈 Insights](#-insights)
- [🤝 Contributing](#-contributing)
- [📜 License](#-license)
- [🙌 Acknowledgments](#-acknowledgments)

---

## 📂 Dataset
The dataset contains **64,374 customer records** with 12 columns:

- `CustomerID` – unique customer identifier  
- `Age` – customer age  
- `Gender` – Male/Female  
- `Tenure` – length of time with company  
- `Usage Frequency` – service usage level  
- `Support Calls` – number of support calls  
- `Payment Delay` – delay in payments (days)  
- `Subscription Type` – Basic, Standard, Premium  
- `Contract Length` – Monthly, Quarterly, Annual  
- `Total Spend` – total amount spent  
- `Last Interaction` – days since last interaction  
- `Churn` – 1 = churned, 0 = active  

---

## 🛠️ Features & SQL Concepts Covered
- Basic querying: `SELECT`, `WHERE`, `DISTINCT`  
- Filtering: `IN`, `BETWEEN`, `LIKE`, `ILIKE`  
- Conditional logic: `CASE WHEN`, `COALESCE`  
- Aggregations: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`  
- Grouping & filtering: `GROUP BY`, `HAVING`  
- Combining data: `UNION`, `UNION ALL`, `EXCEPT`  
- Subqueries & nested queries  
- Self-joins  

---

## 📘 Example Queries

**1. Customers who churned**
```sql
SELECT * 
FROM customer_churn 
WHERE Churn = 1;

# 🚀 Getting Started

## Prerequisites
- Python 3.x  
- Pandas  
- SQLite / MySQL / PostgreSQL (depending on setup)  

---

## 📂 Clone Repository
```bash
git clone https://github.com/Netlution/customer-churn-SQL--project.git
cd customer_churn_

## ▶️ Run Queries in SQLite 
sqlite3 customerchurn.db < Customer_churn.sql

## 📈 Insights
--Premium users show higher spending but also higher churn risk.
--Longer contract lengths (Annual) correlate with lower churn.
--Customers with frequent support calls are more likely to churn.

## 🤝 Contributing

**Contributions are welcome!**

--Fork the repo
--Create a new branch
--Commit your changes
--Submit a pull request

## 📜 License
This project is licensed under the MIT License.

## 🙌 Acknowledgments
Dataset inspired by telecom churn scenarios for SQL practice and data analysis learning.
