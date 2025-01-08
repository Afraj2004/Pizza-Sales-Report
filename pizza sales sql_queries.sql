select * from pizza_sales

select sum(total_price) as total_revenue
from pizza_sales

select sum(total_price)/Count(distinct order_id) as Average_Order_Value
from pizza_sales

select sum(quantity) as total_pizza_sold
from pizza_sales

select count(distinct order_id) as total_order
from pizza_sales

select cast(cast(sum(quantity)as decimal)/
cast(count(distinct order_id)as decimal)as decimal(10,2)) as Avg_pizza_per_order
from pizza_sales

SELECT DATENAME(WEEKDAY,order_date) as order_day, count(distinct order_id) as Total_orders
from pizza_sales
group by DATENAME(WEEKDAY,order_date)

SELECT DATENAME(month,order_date) as order_month, 
count(distinct order_id) as Total_orders
from pizza_sales
group by DATENAME(month,order_date)
order by Total_orders desc

SELECT pizza_category, 
count(distinct order_id) as Total_orders,
round(sum(total_price),2) as sales_by_category,
round(sum(total_price)/
(select sum(total_price)  from pizza_sales where MONTH(order_date)=1)*100,2) as percentage_sales_by_category
from pizza_sales
where MONTH(order_date)=1
group by pizza_category
order by percentage_sales_by_category,sales_by_category,Total_orders


SELECT pizza_size, 
count(distinct order_id) as Total_orders,
round(sum(total_price),2) as sales_by_size,
round(sum(total_price)/
(select sum(total_price)  from pizza_sales where DATEPART(QUARTER,order_date)=1 )*100,2) as percentage_sales_by_size
from pizza_sales
where DATEPART(QUARTER,order_date)=1
group by pizza_size
order by percentage_sales_by_size desc


SELECT top 5 pizza_name,
sum (quantity) as Total_quantity,
count(distinct order_id) as Total_orders,
round(sum(total_price),2) as Total_revenue
from pizza_sales
group by pizza_name
order by Total_revenue desc

SELECT top 5 pizza_name,
sum (quantity) as Total_quantity,
count(distinct order_id) as Total_orders,
round(sum(total_price),2) as Total_revenue
from pizza_sales
group by pizza_name
order by Total_revenue asc