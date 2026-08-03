# Write your MySQL query statement below
select email as Email from 
(select email, count(*) as cnt
from person
group by email
having count(*) > 1 )t