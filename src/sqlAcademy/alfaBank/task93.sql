SELECT AVG(c.age) as average_age from Customer c
WHERE c.customer_key in (
    SELECT pu.customer_key from Purchase pu
    JOIN Product p on pu.product_key = p.product_key
    WHERE p.name = 'Smartwatch' and YEAR(pu.date) = 2024
)