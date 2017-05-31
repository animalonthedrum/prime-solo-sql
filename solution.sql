--1 Get all users from Chicago.
SELECT city FROM syntax_practice;

--2 Get all users with usernames that contain the letter a.
select username from syntax_practice
WHERE username like '%a%';

--3
UPDATE syntax_practice
SET account_balance = 10.00
WHERE transactions_attempted = 0 AND account_balance = 0;

--4
SELECT username FROM syntax_practice
WHERE  transactions_attempted >=9;

--5
SELECT username, max(account_balance)
FROM syntax_practice
GROUP by username
ORDER by max DESC
LIMIT 3;


--6
SELECT username, min(account_balance)
FROM syntax_practice
GROUP by username
ORDER by min
LIMIT 3;

--7
SELECT username
FROM syntax_practice
WHERE account_balance > 100;

--8
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance)
VALUES ('Fred', 'Minneapolis', 60, 105, 1000);

--9
DELETE FROM syntax_practice
WHERE city IN ('miami', 'phoenix') AND transactions_completed < 5;
