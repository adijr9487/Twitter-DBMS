--Considering MUTUAL FOLLOWING

-- 1  <---  3 
-- 2  <---  3 
-- (1, 2) Mutual Following by 3 

SELECT tail_user_id, count(*)
FROM connections
WHERE head_user_id = 1 or head_user_id = 2
group by tail_user_id;  