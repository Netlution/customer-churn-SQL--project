-- Select everything from the original table
SELECT * FROM `customer_churn_dataset-testing-master`;

SELECT * FROM customer_churn;

# Get all customers who churned.

SELECT *  FROM customer_churn
WHERE Churn = 1;

# List all unique subscription types.
SELECT DISTINCT `Subscription Type`
FROM customer_churn;

# Find customers aged between 30 and 40.

SELECT CustomerID, Age FROM customer_churn WHERE Age BETWEEN 30 AND 40;

# Get customers with either monthly or annual contracts.
SELECT CustomerID, `Contract Length`
FROM customer_churn
WHERE `Contract Length` IN ('Monthly', 'Annual');

## Get customers whose subscription type starts with "P" (e.g., Premium) 
SELECT * FROM customer_churn
WHERE `Subscription Type` LIKE 'P%';

## Count customers who did not churn.
SELECT count(*) FROM customer_churn WHERE churn = 0;

# Total spending of female customers.
SELECT SUM(`Total Spend`)
FROM customer_churn
WHERE Gender = 'Female';

## Average age of churned customers.
 SELECT AVG(Age) FROM customer_churn WHERE Churn = 1;
 
## Find the shortest and longest tenure.
SELECT MAX(Tenure), MIN(Tenure) FROM customer_churn;

## Customers grouped by subscription type.
SELECT `Subscription Type`, COUNT(*) AS total_customers
FROM customer_churn
GROUP BY `Subscription Type`;

##Show contract lengths with more than 10,000 customers.

SELECT `Contract Length`, COUNT(*) AS morethan
FROM customer_churn
GROUP BY `Contract Length`
HAVING morethan > 10000;

## Categorize customers by age group.

SELECT CustomerID, 
        CASE WHEN Age > 30 THEN 'Young'
             WHEN Age BETWEEN 30 AND 50 THEN 'Middle-aged'
             ELSE 'Elder' END as Age_group
FROM customer_churn;

## Replace missing payment delays with 0.

SELECT COALESCE(`Payment Delay`, 0)
FROM customer_churn;

## Top 10 customers by spending.
SELECT CustomerID, `Total Spend`
FROM customer_churn
ORDER BY `Total Spend` DESC
LIMIT 10;

## Pair customers with the same subscription type.
SELECT a.CustomerID, a.`Total Spend`, 
       b.CustomerID, b.`Total Spend`
FROM customer_churn a
JOIN customer_churn b
  ON a.`Subscription Type` = b.`Subscription Type`
 AND a.CustomerID <> b.CustomerID;
 
# Combine male and female customers (removes duplicates).
SELECT CustomerID, Age FROM customer_churn WHERE Gender = 'Male'
UNION
SELECT CustomerID, Age FROM customer_churn WHERE Gender = 'Female';

## All customers with churn and non-churn (keeps duplicates).
SELECT CustomerID FROM customer_churn WHERE Churn = 1
UNION ALL 
SELECT CustomerID FROM customer_churn WHERE Churn = 1;

## Annual contract customers who did NOT churn.
SELECT CustomerID
FROM customer_churn
WHERE `Contract Length` = 'Annual'
  AND CustomerID NOT IN (
      SELECT CustomerID
      FROM customer_churn
      WHERE Churn = 1
  );

## Customers spending above average.
SELECT *
FROM customer_churn
WHERE `Total Spend` > (
    SELECT AVG(`Total Spend`)
    FROM customer_churn
);


## Average spending grouped by subscription type and contract length.
SELECT `Subscription Type`, `Contract Length`, AVG(`Total Spend`)
FROM customer_churn
GROUP BY `Subscription Type`, `Contract Length`;
