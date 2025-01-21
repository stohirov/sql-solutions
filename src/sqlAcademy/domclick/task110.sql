SELECT c.name as city_name from Cities c
JOIN Regions r on r.id = c.regionid
WHERE r.name = "Bavaria";