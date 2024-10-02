--Weather Observation Station 12
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

-- Weather Observation Station 10
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '%a' 
  AND CITY NOT LIKE '%e' 
  AND CITY NOT LIKE '%i' 
  AND CITY NOT LIKE '%o' 
  AND CITY NOT LIKE '%u';


-- Revising Aggregations - The Count Function
SELECT COUNT(*) AS city_count
FROM CITY
WHERE POPULATION > 100000;

SELECT COUNT(ID) AS city_count
FROM CITY
WHERE POPULATION > 100000;

SELECT COUNT(NAME) AS city_count
FROM CITY
WHERE POPULATION > 100000;
