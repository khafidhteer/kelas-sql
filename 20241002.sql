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

-- Top Earners
SELECT total_earnings, COUNT(*) 
FROM (
    SELECT salary * months AS total_earnings 
    FROM Employee
) AS earnings
WHERE total_earnings = (
    SELECT MAX(salary * months) 
    FROM Employee
)
GROUP BY total_earnings
;

SELECT salary * months AS total_earnings, count(*) number_of_employee
FROM Employee
GROUP BY 1
ORDER BY 1 DESC
LIMIT 1;

-- Employee Salaries
SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC;

-- Weather Observation Station 18
SELECT
ROUND((MAX(LAT_N) - MIN(LAT_N)) + (MAX(LONG_W) - MIN(LONG_W)), 4) AS m_dis
FROM STATION;

-- Weather Observation Station 19
SELECT
ROUND(SQRT(POWER((MAX(LAT_N) - MIN(LAT_N)),2) +
POWER((MAX(LONG_W) - MIN(LONG_W)),2)), 4) AS e_dis
FROM STATION;

-- Population Density Difference
SELECT 
MAX(POPULATION) - MIN(POPULATION) AS population_difference
FROM CITY;
