-- 1. Show total expenses by each user
SELECT u.name, SUM(e.amount) AS total_spent
FROM Expenses e
JOIN Users u ON e.user_id = u.user_id
GROUP BY u.name;

-- 2. List all users with their total income
SELECT u.name, SUM(i.amount) AS total_income
FROM Incomes i
JOIN Users u ON i.user_id = u.user_id
GROUP BY u.name;

-- 3. Get all expenses in March 2025
SELECT * FROM Expenses
WHERE date LIKE '2025-03%';

-- 4. Find users who spent more than 1000 in total
SELECT u.name, SUM(e.amount) AS total_spent
FROM Expenses e
JOIN Users u ON e.user_id = u.user_id
GROUP BY u.name
HAVING total_spent > 1000;

-- 5. Compare each user's income and expense totals
SELECT u.name,
  (SELECT SUM(i.amount) FROM Incomes i WHERE i.user_id = u.user_id) AS total_income,
  (SELECT SUM(e.amount) FROM Expenses e WHERE e.user_id = u.user_id) AS total_expense,
  (SELECT SUM(i.amount) FROM Incomes i WHERE i.user_id = u.user_id) -
  (SELECT SUM(e.amount) FROM Expenses e WHERE e.user_id = u.user_id) AS net_savings
FROM Users u;

-- 6. Show users who spent more than their budget in any category
SELECT u.name, b.category, b.limit_amount, SUM(e.amount) AS spent
FROM Budgets b
JOIN Expenses e ON b.user_id = e.user_id AND b.category = e.category
JOIN Users u ON b.user_id = u.user_id
GROUP BY u.name, b.category, b.limit_amount
HAVING spent > b.limit_amount;

-- 7. List all audit logs ordered by most recent
SELECT u.name, a.action, a.timestamp
FROM Audit_Log a
JOIN Users u ON a.user_id = u.user_id
ORDER BY a.timestamp DESC;

-- 8. Get category-wise expense total for user 'Ethan Walker'
SELECT category, SUM(amount) AS total
FROM Expenses
WHERE user_id = 1
GROUP BY category;

-- 9. Find top 3 highest single expenses
SELECT u.name, e.category, e.amount, e.date
FROM Expenses e
JOIN Users u ON e.user_id = u.user_id
ORDER BY e.amount DESC
LIMIT 3;

-- 10. Show all users with no recorded expenses
SELECT name FROM Users
WHERE user_id NOT IN (SELECT DISTINCT user_id FROM Expenses);
