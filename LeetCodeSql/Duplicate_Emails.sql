-- Problem: Duplicate Emails
-- LeetCode: https://leetcode.com/problems/duplicate-emails/

-- Write your SQL solution below:

select email
from person group by email having count(*) >1
 
