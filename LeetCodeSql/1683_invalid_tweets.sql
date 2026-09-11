-- LC 1683: Invalid Tweets
-- Category: Select | Day: 1-2
-- Link: https://leetcode.com/problems/invalid-tweets/

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
