-- 1.Display all sales records
SELECT *
FROM sales_data;

-- 2.Filter Electronics category sales
SELECT * 
FROM sales_data
WHERE product_category = 'Electronics';

-- 3.Transactions above ₹1000
SELECT * FROM sales_data
WHERE amount > 1000;

-- 4.Sort transactions by highest amount
SELECT *
FROM sales_data
ORDER BY amount DESC;

-- 5.Top 3 highest transactions
SELECT * 
FROM sales_data
ORDER BY amount DESC
LIMIT 3;

-- 6.Total sales amount
SELECT SUM(amount) AS total_sales
FROM sales_data;

-- 7.Total sales by product category
SELECT product_category, SUM(amount) AS total_sales
FROM sales_data
GROUP BY product_category;

-- 8.Average spending amount
SELECT AVG(amount) AS average_spending
FROM sales_data;

-- 9.Order count by payment method
SELECT payment_method, COUNT(*) AS total_orders
FROM sales_data
GROUP BY payment_method;

-- 10.Highest single order
SELECT * FROM sales_data
ORDER BY amount DESC
LIMIT 1;

-- 11.Top 2 sales days above ₹2000
SELECT order_date, SUM(amount) AS total_sales
FROM sales_data
GROUP BY order_date
HAVING SUM(amount) > 2000
ORDER BY total_sales DESC
LIMIT 2;

-- 12.Payment methods with sales above ₹3000
SELECT payment_method, SUM(amount) AS total_sales
FROM sales_data
GROUP BY payment_method
HAVING SUM(amount) > 3000;

-- 13.Category with highest total sales
SELECT product_category, SUM(amount) AS total_sales
FROM sales_data
GROUP BY product_category
ORDER BY total_sales DESC
LIMIT 1;

-- 14.Top 2 customers in Electronics category
SELECT customer_name, SUM(amount) AS total_spent
FROM sales_data
WHERE product_category = 'Electronics'
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 2;

-- 15.Daily sales trend
SELECT order_date, SUM(amount) AS daily_sales
FROM sales_data
GROUP BY order_date
ORDER BY order_date;