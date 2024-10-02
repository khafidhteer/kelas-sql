--Weather Observation Station 12
-- Weather Observation Station 12
SELECT DISTINCT
    CITY
FROM
    STATION
WHERE
    LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u')
    AND RIGHT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');
    
SELECT DISTINCT
    CITY
FROM
    STATION
WHERE 
    NOT(
        CITY LIKE 'a%'
        OR CITY LIKE 'e%'
        OR CITY LIKE 'i%'
        OR CITY LIKE 'o%'
        OR CITY LIKE 'u%'
    )
    AND NOT (
        CITY LIKE '%a'
        OR CITY LIKE '%e'
        OR CITY LIKE '%i'
        OR CITY LIKE '%o'
        OR CITY LIKE '%u'
    );
