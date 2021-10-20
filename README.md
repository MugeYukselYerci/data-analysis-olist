# Olist Data Analysis
## Data source
Brazilian E-Commerce Public Dataset by Olist

https://www.kaggle.com/olistbr/brazilian-ecommerce

## Introduction


This dataset is Brazilian e-commerce public dataset of Olist Store including 100k orders years between 2016 and 2018 made at multiple marketplaces in Brazil. The tables of the dataset are Customers, Geolocation, Order Items, Order Payments, Order Reviews, Orders, Products, Sellers, Product Category Name English. 

In this project, I have analyzed total sales and customer reviews by using Power BI and created stored procedure by using MySQL.


## Data Installation

1. Download CSV file from data source (https://www.kaggle.com/olistbr/brazilian-ecommerce)
2. Run create_table.sql in MySQL. (see attachment)
3. Run below SQL command for all downloaded CSV files.

```sql
load data local infile <CSV_FILE_PATH> into table <CSV_FILE_NAME>
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;

```
For Power BI, SQL server database is used as datasource. Relationships between tables have been created on Power BI.

## Data Analysis with Power BI

### Sales Analysis
In this sales analysis;

1. 	Total sales amount and number of orders have been analyzed by month and year in general.
2. 	Total sales amount by weekdays have been compared. 
3. 	Top 10 most sold product category names and their sales amount percentages have been viewed.
4. 	The purchase amounts were examined by considering customers’ states. 

In this page, all visuals can be filtered by using month and year slicer.

<img width="861" alt="Sales_Olist_PBI" src="https://user-images.githubusercontent.com/92820578/138098891-dcab1b75-60e7-4081-89f5-dd0fd6c4a842.png">

### Customer Reviews Analysis
In this reviews analysis section;

1. Percentages of review scores have been viewed. 
2. Percentages of commented and non commented messages have been calculated and shown in a table. 
3. The effect of delivery days (number of days between purchase date and order delivered customer date) on average review score have been analyzed by date. 
4. Average review scores by order status have been viewed. 

In this page, all visuals can be filtered by using year slicer and customer states slicer.

<img width="861" alt="Reviews_Olist_PBI" src="https://user-images.githubusercontent.com/92820578/138098911-ecb9e822-991e-4b15-b129-b2f11461d639.png">

Power BI file is attached.

## Creating Stored Procedure with MySQL

### total_sales

In “total_sales” stored procedure, total sales are computed with start date and end date as input parameters. (see attachment)

### categories_by_price

In “categories_by_price” stored procedure with input parameters, product categories can be viewed by entering minimum and maximum prices. (see attachment)
