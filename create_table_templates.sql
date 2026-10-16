CREATE DATABASE sql_project
    DEFAULT CHARACTER SET = 'utf8mb4';

DROP TABLE if EXISTS retail_sales;

CREATE TABLE retail_sales (
    transactions_id	int PRIMARY KEY,
    sale_date	DATE,
    sale_time TIME,
    customer_id INT ,
    gender VARCHAR(15),
    age	 INT,
    category VARCHAR(15) ,
    quantiy INT,
    price_per_unit FLOAT,
    cogs FLOAT,
    total_sale FLOAT
);




-- checking connection.
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';
SHOW TABLES;
USE sql_project;


-- importing data through code 
LOAD DATA LOCAL INFILE 'C:/Users/ACER/OneDrive/Desktop/analyst_project/sql_project/Retail-Sales-Analysis-SQL-Project--P1/SQL - Retail Sales Analysis_utf .csv'
INTO TABLE retail_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SELECT * FROM retail_sales;

SELECT COUNT(*) from retail_sales;