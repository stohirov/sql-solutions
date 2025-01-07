SELECT user_id, item
FROM Transactions
WHERE transaction_ts in (
SELECT MIN(transaction_ts) from Transactions GROUP BY user_id
)