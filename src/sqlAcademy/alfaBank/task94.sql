SELECT c.name as name from Customer c
WHERE c.customer_key in (
    SELECT pu.customer_key
    FROM Purchase pu
    JOIN Product p ON pu.product_key = p.product_key

    WHERE p.name IN ('Monitor', 'Laptop')

    AND YEAR(pu.date) = 2024 AND MONTH(pu.date) = 3

    GROUP BY pu.customer_key
    HAVING COUNT(DISTINCT p.name) = 2
)