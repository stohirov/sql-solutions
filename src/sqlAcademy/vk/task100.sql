SELECT COUNT(user_id) as unique_male_users from Purchases
WHERE items > 3 AND user_gender LIKE "m%";