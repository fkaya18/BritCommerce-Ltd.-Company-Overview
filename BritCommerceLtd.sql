CREATE DATABASE BritCommerceLtd;
USE BritCommerceLtd;

CREATE TABLE customers (
	customer_id NVARCHAR(50) PRIMARY KEY,
	birthdate DATE,
	gender NVARCHAR(50),
	city NVARCHAR(50),
	country NVARCHAR(50)
);

BULK INSERT customers
FROM 'C:\Users\Furkan\data_analysis\marketing_analysis\raw_data\customers.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001' 
);



SELECT *
FROM customers;


SELECT 
	MIN(birthdate) AS min_birthdate,
	MAX(birthdate) AS max_birthdate
FROM customers;


SELECT 
	DISTINCT city
FROM customers
ORDER BY 1;


SELECT city,
	COUNT(*) AS city_count
FROM customers
GROUP BY city
ORDER BY 1;


SELECT 
	DISTINCT country
FROM customers
ORDER BY 1;

SELECT country,
	COUNT(*) AS country_count
FROM customers
GROUP BY country
ORDER BY 1;



ALTER TABLE customers
ADD age INT;

UPDATE customers
SET age = DATEDIFF(YEAR, birthdate, GETDATE()) 
	- CASE 
		WHEN MONTH(birthdate) > MONTH(GETDATE())
			OR (MONTH(birthdate) = MONTH(GETDATE()) AND DAY(birthdate) > DAY(GETDATE()))
		THEN 1 
		ELSE 0
	END;

ALTER TABLE customers
ADD age_category NVARCHAR(50);

UPDATE customers
SET age_category = CASE WHEN age >= 18 AND age < 26 THEN '18-25'
						WHEN age >= 26 AND age < 36 THEN '26-35'
						WHEN age >= 36 AND age < 46 THEN '36-45'
						WHEN age >= 46 AND age < 56 THEN '46-55'
						WHEN age >= 56 AND age < 66 THEN '56-65'
						ELSE '65+'
					END

ALTER TABLE customers
ADD customer_segment NVARCHAR(50);

WITH CustomerSegments AS (
    SELECT
        customer_id,
        CASE
            -- Champions: Both loyal and high spenders
            WHEN order_count >= 3 AND total_payment > 15000 THEN 'Champions'
            
            -- High Spenders: Higher than average spending
            WHEN total_payment > 7090 THEN 'High Spenders'
            
            -- Loyal: Regular orderers with longer duration
            WHEN order_count >= 3 AND customer_duration_years > 1.0 THEN 'Loyal'
            
            -- Value Seekers: Lower spend but have been customers for a while
            WHEN customer_duration_years > 1.5 AND total_payment < 4430 THEN 'Value Seekers'
            
            -- Promising: Multiple orders but newer customers
            WHEN order_count > 1 AND customer_duration_years <= 1.5 THEN 'Promising'
            
            -- One-Time High Spenders: Single order with above median payment
            WHEN order_count = 1 AND total_payment > 4430 THEN 'One-Time High Spenders'
            
            -- Newbies: New customers with low spending
            WHEN order_count = 1 AND customer_duration_years < 1.0 THEN 'Newbies'
            
            -- Medium Spenders: Customers with average spending range
            WHEN total_payment BETWEEN 2433 AND 7090 THEN 'Medium Spenders'
            
            -- Occasional Shoppers: Few orders spread over time
            WHEN order_count <= 2 AND customer_duration_years > 1.0 THEN 'Occasional Shoppers'
            
            -- Others: Any remaining customers
            ELSE 'Others'
        END AS customer_segment
    FROM (
        SELECT
            customer_id,
            SUM(payment) AS total_payment,
            COUNT(DISTINCT order_id) AS order_count,
            ROUND(CAST(DATEDIFF(DAY, MIN(order_date), GETDATE()) AS FLOAT) / 365.0, 2) AS customer_duration_years
        FROM
            sales
        GROUP BY
            customer_id
    ) AS CustomerMetrics
)
UPDATE c
SET c.customer_segment = cs.customer_segment
FROM customers c
INNER JOIN CustomerSegments cs ON c.customer_id = cs.customer_id;


SELECT *
FROM customers;




CREATE TABLE products(
	product_id NVARCHAR(50) PRIMARY KEY,
	product_line NVARCHAR(50),
	product_name NVARCHAR(50),
	cost FLOAT,
	list_price FLOAT
);

BULK INSERT products
FROM 'C:\Users\Furkan\data_analysis\marketing_analysis\raw_data\products.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);



SELECT *
FROM products;

SELECT 
	COUNT(DISTINCT product_id) AS id_count,
	COUNT(DISTINCT product_name) AS name_count
FROM products;

SELECT 
	DISTINCT product_line
FROM products
ORDER BY 1;



CREATE TABLE sales(
	order_id NVARCHAR(50),
	order_date DATE,
	customer_id NVARCHAR(50),
	product_id NVARCHAR(50),
	quantity INT,
	payment FLOAT,
	payment_method NVARCHAR(50),
	PRIMARY KEY(order_id, product_id),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id)
);

BULK INSERT sales
FROM 'C:\Users\Furkan\data_analysis\marketing_analysis\raw_data\sales.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);


SELECT *
FROM sales;

SELECT *
FROM sales 
WHERE order_date > '2024-12-31'
	OR order_date < '2022-01-01';




SELECT *
FROM sales
WHERE customer_id IS NULL;



SELECT
	s.order_id,
	s.product_id AS s_id,
	p.product_id AS p_id,
	s.quantity,
	s.payment,
	p.list_price * s.quantity AS payment_check
FROM sales AS s
INNER JOIN products AS p
ON s.product_id = p.product_id
WHERE ROUND(s.payment, 2) <> ROUND(p.list_price * s.quantity, 2);


ALTER TABLE sales
ADD total_profit FLOAT;

UPDATE sales
SET total_profit = s.payment - p.cost * s.quantity
FROM sales AS s
INNER JOIN products AS p
ON s.product_id = p.product_id;


SELECT *
FROM sales;
