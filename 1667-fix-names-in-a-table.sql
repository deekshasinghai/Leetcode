--Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.
--Return the result table ordered by user_id.

select user_id,concat(upper(left(name,1)),lower(right(name,length(name)-1))) as name
from users
order by user_id
