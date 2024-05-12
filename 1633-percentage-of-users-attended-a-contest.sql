--Write a solution to find the percentage of the users registered in each contest rounded to two decimals.
--Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.

Query:

select contest_id, round(count(distinct user_id)*100
/(select count(user_id) from users),2)
percentage
from register
group by contest_id
order by percentage desc, contest_id
