SELECT SUM(items * price) as income_from_female FROM Purchases
WHERE user_gender like 'f%'