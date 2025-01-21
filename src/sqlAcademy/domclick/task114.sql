SELECT p.name from Pilots p
WHERE p.pilot_id in (
 SELECT f.second_pilot_id from Flights f
 WHERE f.destination = 'New York' AND
 MONTH(f.flight_date) = 8 AND
 YEAR(f.flight_date) = 2023
)