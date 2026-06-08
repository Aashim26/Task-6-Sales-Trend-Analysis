-- =====================================
-- TASK 6 : SALES TREND ANALYSIS
-- =====================================

-- 1. Create Database
CREATE DATABASE sales_analysis;
USE sales_analysis;

-- 2. View Dataset
SELECT * FROM online_sales;

-- 3. Total Records
SELECT COUNT(*) AS Total_Records
FROM online_sales;

-- 4. Monthly Revenue Analysis
SELECT
YEAR(`Date`) AS Year,
MONTH(`Date`) AS Month,
SUM(`Total Revenue`) AS Revenue
FROM online_sales
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY Year, Month;

-- 5. Monthly Order Volume
SELECT
YEAR(`Date`) AS Year,
MONTH(`Date`) AS Month,
COUNT(DISTINCT `Transaction ID`) AS Order_Volume
FROM online_sales
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY Year, Month;

-- 6. Monthly Revenue + Order Volume
SELECT
YEAR(`Date`) AS Year,
MONTH(`Date`) AS Month,
SUM(`Total Revenue`) AS Revenue,
COUNT(DISTINCT `Transaction ID`) AS Order_Volume
FROM online_sales
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY Year, Month;

-- 7. Top 3 Months By Revenue
SELECT
YEAR(`Date`) AS Year,
MONTH(`Date`) AS Month,
SUM(`Total Revenue`) AS Revenue
FROM online_sales
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY Revenue DESC
LIMIT 3;

-- 8. Specific Time Period Analysis
SELECT *
FROM online_sales
WHERE `Date` BETWEEN '2024-01-01' AND '2024-06-30';

-- 9. Average Revenue Per Month
SELECT
YEAR(`Date`) AS Year,
MONTH(`Date`) AS Month,
AVG(`Total Revenue`) AS Avg_Revenue
FROM online_sales
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY Year, Month;

-- 10. Highest Revenue Month
SELECT
YEAR(`Date`) AS Year,
MONTH(`Date`) AS Month,
SUM(`Total Revenue`) AS Revenue
FROM online_sales
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY Revenue DESC
LIMIT 1;

