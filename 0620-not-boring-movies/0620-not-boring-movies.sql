# Write your MySQL query statement below
select * from Cinema where id in (1,3,5,7,9) and description not like '%boring'
order by rating desc