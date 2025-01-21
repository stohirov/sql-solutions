SELECT page_id FROM pages
WHERE page_id NOT IN (
    SELECT page_id from page_likes
)
ORDER BY page_id