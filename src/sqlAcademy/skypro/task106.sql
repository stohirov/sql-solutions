SELECT course_id, SUM(price) as revenue FROM Orders
WHERE order_date BETWEEN SUBDATE(NOW(), INTERVAL 1 MONTH) AND NOW()
GROUP BY course_id;