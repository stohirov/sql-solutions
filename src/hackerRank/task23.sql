select
    case
        when not (a + b > c and a + c > b and b + c > a) then "Not A Triangle"
        when a = b and b = c then "Equilateral"
        when a = b or a = c or b = c then "Isosceles"
        when a != b and b != c then "Scalene"
    end as type
from triangles;