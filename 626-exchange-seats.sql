-- Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.
--Return the result table ordered by id in ascending order.

Query:

SELECT 
CASE  WHEN id = (SELECT MAX(id) FROM seat) AND id % 2 != 0
THEN id 
WHEN id % 2 != 0
THEN id + 1
ELSE id - 1
END AS id,student
FROM seat
order by id
