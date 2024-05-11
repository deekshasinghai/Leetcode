--Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.
--For SQL users, please note that you are supposed to write a DELETE statement and not a SELECT one.

delete p2
from person p1 join person p2 on p1.email =p2.email
where p1.Email = p2.Email and p2.id>p1.id

