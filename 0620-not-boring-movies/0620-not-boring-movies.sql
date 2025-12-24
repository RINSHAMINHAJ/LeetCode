-- Write your PostgreSQL query statement below
select * from cinema 
 WHERE id % 2 = 1
 AND description !='boring'
 order by rating desc;
