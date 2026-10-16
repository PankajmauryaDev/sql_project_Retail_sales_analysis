SELECT * FROM retail_sales
LIMIT 10;

SELECT COUNT(*) FROM retail_sales;

-- data cleaning.

-- check null values 
SELECT COUNT(*) FROM retail_sales
WHERE 
    (transactions_id is NULL OR transactions_id =0)
    OR
    (customer_id is NULL OR customer_id = 0)
    OR
    (age is NULL or age = 0)
    OR
    (quantiy is NULL or quantiy =0)
    OR
    (price_per_unit is NULL or price_per_unit = 0)
    OR
    (cogs is NULL or cogs = 0)
    OR
    (total_sale is NULL OR total_sale = 0);

-- delete record which is 0.

DELETE FROM retail_sales
WHERE 
    (transactions_id is NULL OR transactions_id =0)
    OR
    (customer_id is NULL OR customer_id = 0)
    OR
    (age is NULL or age = 0)
    OR
    (quantiy is NULL or quantiy =0)
    OR
    (price_per_unit is NULL or price_per_unit = 0)
    OR
    (cogs is NULL or cogs = 0)
    OR
    (total_sale is NULL OR total_sale = 0);

-- remain rows
SELECT COUNT(*) AS remaining_rows
FROM retail_sales;

-- Data Exploration

-- How many sales we have?
SELECT COUNT(*) as total_sale FROM retail_sales;

-- How many uniuque customers we have ?
SELECT COUNT(DISTINCT customer_id) as total_sale FROM retail_sales;


SELECT DISTINCT category FROM retail_sales;

-- Data Analysis & Business Key Problems & Answers

-- My Analysis & Findings

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05

SELECT * FROM retail_sales
WHERE sale_date = "2022-11-05";

-- Q.2 Write a SQL query to retrieve all transactions 
-- where the category is 'Clothing' and the quantity sold is more than 10
-- in the month of Nov-2022

SELECT * FROM retail_sales
WHERE category = "Clothing" and quantiy > 10 and DATE(sale_date) >= "2022-11-1";


SELECT *
FROM retail_sales
WHERE category = 'Clothing'
AND quantiy > 10
and MONTH(sale_date) = 11
AND YEAR(sale_date) = 2022;



SELECT sale_date FROM retail_sales;

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.


-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

