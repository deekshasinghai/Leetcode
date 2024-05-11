--Write a solution to calculate the number of bank accounts for each salary category. The salary categories are:
--"Low Salary": All the salaries strictly less than $20000.
--"Average Salary": All the salaries in the inclusive range [$20000, $50000].
--"High Salary": All the salaries strictly greater than $50000.
--The result table must contain all three categories. If there are no accounts in a category, return 0.Return the result table in any order.

select 'Low Salary' as category,count(*) as accounts_count
from accounts 
where income < 20000
union
select 'Average Salary' as category, count(*) as accounts_count
from accounts 
where income>=20000 and income <=50000
union
select 'High Salary' as category,count(*) as accounts_count
from accounts 
where income > 50000
