SELECT c.name as country_name from Countries c
WHERE c.id = (
    SELECT r.countryid from Regions r
    JOIN Cities ci ON ci.regionId = r.id
    WHERE ci.name = 'Salzburg'
)