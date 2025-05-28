1. Find all the orders shipped via 'Economy' mode with a total amount greater than ₹25000.
-- select  * from sales where ship_Mode = "Economy" and Total_Amount > 25000;

2. Retrieve all sales data for Technology category in Ireland made after 2020-01-01.
-- select * from sales where category='Technology' and Country = 'ireland' and Order_Date > '2020-01-01';

3. list the top 10 most profitable sales transactions in descending order .
-- select * from sales order by unit_profit  desc limit 10;

4. Find all customers whose name starts with 'J' and ends with 'n'.
-- select  order_id,customer_name from sales where Customer_Name like 'J%n';

5. Retrieve all products names that contain 'Acco' anywhere in the name.
-- select order_id,product_name from sales where product_name like '%Acco%';

6. Get the top 5 cities with the highest total sales amount.
-- select City, sum(Total_Amount) AS Total_Sales from sales group by City order by Total_Sales desc limit 5;

7. Display the second set of 10 records for customer_name and total_amount in decreasing order.
-- select customer_name,total_amount from sales order by total_amount desc limit 10, 10;

8. Find the total revenue,average unit cost,and total number of orders.
-- select sum(Total_Amount) as `Total Revenue`, avg(Unit_Cost) as `Average Unit Cost`, count(order_id) as `Total Orders` from sales;

9. count unique no of regions.
-- select count(distinct(region)) as unique_sales from sales; 

10. Find the number of orders placed by each customer.
-- select customer_name, count(order_id) as order_count from sales group by customer_name order by order_count desc;

11. Rank 5 products based on total sales using RANK().
-- select product_name, sum(Total_Amount) as total_sales, rank() over (order by sum(Total_Amount) desc) as sales_rank 
-- from sales group by product_name limit 5;
