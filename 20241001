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
