-- Write your PostgreSQL query statement below
SELECT r.contest_id,
ROUND(
    COUNT(DISTINCT r.user_id) * 100.0 
        / (SELECT COUNT(*) FROM users), 2
 ) AS percentage
        FROM register r
group by contest_id 
order by percentage Desc,contest_id asc