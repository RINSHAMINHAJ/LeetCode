WITH ranked_salaries AS (
    SELECT 
        e.id,
        e.name,
        e.salary,
        e.departmentId,
        DENSE_RANK() OVER (
            PARTITION BY e.departmentId
            ORDER BY e.salary DESC
        ) AS sal_rank
    FROM Employee e
)
SELECT 
    d.name  AS Department,
    r.name  AS Employee,
    r.salary AS Salary
FROM ranked_salaries r
JOIN Department d
    ON r.departmentId = d.id
WHERE r.sal_rank <= 3;
