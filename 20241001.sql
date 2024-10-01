SELECT
	COUNT(order_id) AS total_order,
	SUM(sales) AS total_sales,
	AVG(sales) AS avg_sales,
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sales) AS median_sales,
	MIN(sales) AS min_sales,
	MAX(sales) AS max_sales
FROM superstore_orders;

SELECT
	region,
	COUNT(order_id) AS total_order,
	SUM(sales) AS total_sales,
	AVG(sales) AS avg_sales,
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sales) AS median_sales,
	MIN(sales) AS min_sales,
	MAX(sales) AS max_sales
FROM superstore_orders
GROUP BY region;

SELECT
	region,
	COUNT(order_id) AS total_order,
	SUM(sales) AS total_sales,
	AVG(sales) AS avg_sales,
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sales) AS median_sales,
	MIN(sales) AS min_sales,
	MAX(sales) AS max_sales
FROM superstore_orders
WHERE sales > 10
GROUP BY region
ORDER BY total_sales DESC;

SELECT
	region,
	COUNT(order_id) AS total_order,
	SUM(sales) AS total_sales,
	AVG(sales) AS avg_sales,
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sales) AS median_sales,
	MIN(sales) AS min_sales,
	MAX(sales) AS max_sales
FROM superstore_orders
WHERE sales > 10
GROUP BY 1
ORDER BY 5 DESC;

SELECT
	region,
	category,
	sub_category,
	COUNT(order_id) AS total_order,
	SUM(sales) AS total_sales,
	AVG(sales) AS avg_sales,
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sales) AS median_sales,
	MIN(sales) AS min_sales,
	MAX(sales) AS max_sales
FROM superstore_orders
WHERE sales > 10
GROUP BY 1,2,3
ORDER BY 1,2,3;


SELECT
	region,
	COUNT(order_id) AS total_order,
	SUM(sales) AS total_sales,
	AVG(sales) AS avg_sales,
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY sales) AS median_sales,
	MIN(sales) AS min_sales,
	MAX(sales) AS max_sales
FROM superstore_orders
WHERE sales > 10
GROUP BY
	region,
	category,
	sub_category;

SELECT order_id, order_date
FROM superstore_orders
ORDER BY sales;


SELECT
	order_id,
	sales,
	CASE
		WHEN sales > 100 THEN '>100'
		WHEN sales > 50 THEN '50+ - 100'
		WHEN sales > 10 THEN '10+ - 50'
		ELSE '<=10'
	END AS sales_group
FROM superstore_orders;


-- Weather Observation Station 11
SELECT DISTINCT
    CITY
FROM
    STATION
WHERE
    NOT (
    (
        CITY LIKE 'a%'
        OR CITY LIKE 'e%'
        OR CITY LIKE 'i%'
        OR CITY LIKE 'o%'
        OR CITY LIKE 'u%'
    )
    AND (
        CITY LIKE '%a'
        OR CITY LIKE '%e'
        OR CITY LIKE '%i'
        OR CITY LIKE '%o'
        OR CITY LIKE '%u'
    )
)
