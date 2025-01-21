SELECT ROUND(
		COUNT(texts.email_id) / COUNT(DISTINCT emails.email_id),
		3
	) AS activation_rate
FROM emails
	LEFT JOIN texts ON emails.email_id = texts.email_id
	AND texts.signup_action = 'Confirmed';