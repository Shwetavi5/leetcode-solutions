-- Write your PostgreSQL query statement below

--created a temporary result set without an actual physical table to get all the categories in the output
select c.category, 
COALESCE(count(a.account_id),0) as  accounts_count 

FROM (
    VALUES
        ('Low Salary'),
        ('Average Salary'),
        ('High Salary')
) AS c(category)

LEFT JOIN (
    SELECT
        account_id,
        CASE
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            WHEN income > 50000 THEN 'High Salary'
        END AS category
    FROM Accounts
) AS a
ON c.category = a.category

group by c.category
