select 
sum(sales) as Total_sales,
sum(profit) as Total_profit,
round(sum(profit) / sum(sales) * 100, 2) as Profit_ratio,
round(sum(profit)/ count(distinct order_id),2) as Profit_per_order,
round(sum(sales)/count(distinct customer_id),2) as Sales_per_customer,
round(avg(discount)*100, 2) as Avg_Discount
from orders o 


select 
extract ('month' from order_date) as month,
segment,
round(sum(sales), 2) as Monthly_sales_per_segment
from orders o 
group by month, segment
order by month

select 
category,
extract ('month' from order_date) as month,
round(sum(sales), 2) as Monthly_sales_per_category
from orders o 
group by month, category
order by month

select 
category,
round(sum(sales),2) as sales_per_category,
round(sum(profit),2) as profit_per_category
from orders o 
group by category
order by profit_per_category desc, sales_per_category 

select 
round(sum(sales)/count(distinct customer_id),2) as sales_per_customer,
round(sum(profit)/count(distinct customer_id),2) as profit_per_customer
from orders o 

select
region,
round(sum(sales),2) as sales_per_region
from orders
group by region 


