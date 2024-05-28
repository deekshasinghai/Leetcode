-- You are the restaurant owner and you want to analyze a possible expansion (there will be at least one customer every day).
--Compute the moving average of how much the customer paid in a seven days window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.
--Return the result table ordered by visited_on in ascending order.

Query-
with temp as (select visited_on,sum(amount) as amount
from customer
group by visited_on),
temp2 as (select visited_on,
sum(amount) over(order by visited_on desc rows between current row and 6 following) as amount,
round(avg(amount) over(order by visited_on desc rows between current row and 6 following),2) as average_amount ,
row_number() over(order by visited_on ) as r
from temp)
select distinct visited_on ,amount, average_amount from temp2
where r>6
order by visited_on


