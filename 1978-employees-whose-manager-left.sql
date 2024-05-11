--Find the IDs of the employees whose salary is strictly less than $30000 and whose manager left the company. When a manager leaves the company, their information is deleted from the Employees table, but the reports still have their manager_id set to the manager that left.
--Return the result table ordered by employee_id.

with temp as (select employee_id ,manager_id
from employees
where salary< 30000)

select employee_id
from temp
where manager_id not in (select employee_id from employees)
order by employee_id
