SELECT c.name as name, SUM(pu.quantity * p.price)
AS total_spent FROM Customer c
JOIN Purchase pu ON pu.customer_key = c.customer_key
JOIN Product p ON p.product_key = pu.product_key
WHERE pu.date BETWEEN '2024-03-01' AND '2024-04-30'
GROUP BY c.name
HAVING SUM(pu.quantity * p.price) > 9200;