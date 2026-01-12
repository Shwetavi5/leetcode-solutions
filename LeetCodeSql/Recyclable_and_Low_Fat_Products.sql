-- Problem: Recyclable and Low Fat Products
-- LeetCode: https://leetcode.com/problems/recyclable-and-low-fat-products/

-- Write your SQL solution below:

select product_id
from Products where low_fats = 'Y' AND recyclable = 'Y'