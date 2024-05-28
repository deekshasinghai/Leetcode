--Write a solution to find the people who have the most friends and the most friends number.
--The test cases are generated so that only one person has the most friends.

Query:
with temp as(select requester_id id from RequestAccepted
union all
select accepter_id id from RequestAccepted)

select id, count(*) num  from temp group by id order by num desc limit 1
