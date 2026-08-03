# Write your MySQL query statement below
select distinct(product_id),year as first_year , quantity , price
from 
(select distinct(product_id), year, quantity,price,
rank() over(partition by product_id order by year ) as rnk
from sales ) as t
where rnk = 1

