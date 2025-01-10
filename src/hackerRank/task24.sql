SELECT
    CONCAT(name, '(', LEFT(occupation, 1), ')') AS profession
FROM occupations
ORDER BY name ASC;

SELECT
    CONCAT(
        "There are a total of ",
        COUNT(occupation),
        " ",
        LOWER(occupation),
        "s."
    ) AS summary
FROM occupations
GROUP BY occupation
ORDER BY COUNT(occupation) ASC, occupation ASC;