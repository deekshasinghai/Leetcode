-- Find all numbers that appear at least three times consecutively.
-- Return the result table in any order.

select distinct l1.num as ConsecutiveNums from logs l1
join logs l2 on l1.id =l2.id-1
join logs l3 on l1.id = l3.id-2
where l1.num = l2.num and l1.num=l3.num

