--Write a solution to find the users who have valid emails.
--A valid e-mail has a prefix name and a domain where:
--The prefix name is a string that may contain letters (upper or lower case), digits, underscore '_', period '.', and/or dash '-'. The prefix name must start with a letter.
--The domain is '@leetcode.com'.

select user_id, name, mail
from users
where mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com'
