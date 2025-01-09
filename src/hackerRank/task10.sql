select min(city), length(city) from station group by length(city) order by length(city) limit 1;
select max(city), length(city) from station group by length(city) order by length(city) desc limit 1;
