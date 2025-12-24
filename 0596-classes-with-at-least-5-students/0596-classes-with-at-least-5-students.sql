-- Write your PostgreSQL query statement below
select class
from courses
group by class
HAVING COUNT(student)>=5;