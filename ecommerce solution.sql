
USE ecommerce;

 -- Retrieve all products from the `products` table.
SELECT * FROM products;

-- 2. Find the total number of orders.
SELECT COUNT(order_id) FROM orders;

-- 3. List the products with a price greater than $50.00.
select * from products
WHERE price > 50;

-- 4. Retrieve the order ID, product name, and total price for each order.
SELECT order_id,product_name, total_price FROM orders 
JOIN products 
ON orders.product_id = products.product_id;

-- 5. Calculate the total revenue generated from the orders.
-- REVENUE = PRICE * QUANTITY
SELECT SUM(total_price) FROM orders;

SELECT sum(price * quantity)  FROM orders
JOIN products
ON orders.product_id = products.product_id;

-- 6. Get the average price of products in the `products` table
SELECT AVG(price) FROM products;

-- 7. Find the highest total price among the orders.
SELECT MAX(total_price) AS Highest FROM orders;

-- 8. List the products along with their categories.
SELECT product_name, category FROM products;

-- 9. Find the product(s) with the highest price.
-- subqueries - when you place a query inside another query
SELECT product_name, MAX(price) FROM products
GROUP BY product_name;

-- highest price

SELECT * FROM products
WHERE price = (SELECT MAX(price) FROM products);

-- 10. Retrieve the order ID and quantity for orders where the total price is greater than $200.00
SELECT order_id, quantity FROM orders
WHERE total_price > 200;