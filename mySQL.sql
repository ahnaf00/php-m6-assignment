-- 1 --
SELECT customers.id, customers.name, COUNT(orders.id) AS total_orders
FROM customers
LEFT JOIN orders ON customers.id =orders.customer_id
ORDER BY total_orders DESC


-- 2 -- 
SELECT order_items.id, products.name, order_items.quantity, (order_items.quantity * order_items.unit_price) AS total_amount
FROM
order_items
INNER JOIN
products ON order_items.product_id = products.id
ORDER BY
order_items.id ASC

-- 3 -- 
SELECT categories.name, SUM(order_items.quantity* order_items.unit_price) AS total_revenue
FROM categories
INNER JOIN products
LEFT JOIN order_items ON products.id = order_items.product_id
ORDER BY total_revenue DESC


-- 4 --
