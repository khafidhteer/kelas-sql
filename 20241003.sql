-- Type of Triangle
SELECT
CASE
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
    WHEN A = B OR B = C OR A = C THEN 'Isosceles'    
    ELSE 'Scalene'
    END AS triangle_type
FROM TRIANGLES


SELECT si.roll_number, si.name
FROM student_information AS si
INNER JOIN examination_marks AS em
ON si.roll_number = em.roll_number
WHERE (em.subject_one + em.subject_two + em.subject_three) < 100


SELECT
ptm.stock_code
FROM price_today AS ptd
INNER JOIN price_tomorrow AS ptm
ON ptd.stock_code = ptm.stock_code
WHERE ptm.price > ptd.price
ORDER BY ptm.stock_code ASC
