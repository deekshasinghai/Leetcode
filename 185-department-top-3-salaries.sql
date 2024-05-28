--A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.
--Write a solution to find the employees who are high earners in each of the departments.
--Return the result table in any order.

Query:
with temp as (select d.name as department, e.name as employee,e.salary,
dense_rank() over(partition by d.name order by e.salary desc) as rnk
from employee e join department d on
e.departmentId = d.id)

select department, employee, salary
from temp 
where rnk<=3
