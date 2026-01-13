-- Sample Advanced SQL Queries
-- Total Revenue
SELECT SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'Paid';

-- Repeat Customers
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
WHERE order_status = 'Delivered'
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Top Selling Products
SELECT p.product_name,
SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Customer Lifetime Value (CLV)
SELECT c.customer_name,
SUM(pay.amount) AS lifetime_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments pay ON o.order_id = pay.order_id
WHERE pay.payment_status = 'Paid'
GROUP BY c.customer_name;

-- Revenue by City
SELECT c.city, SUM(p.amount) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.city;