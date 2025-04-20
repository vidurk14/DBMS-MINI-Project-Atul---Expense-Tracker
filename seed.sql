-- Users
INSERT INTO Users (name, email, password) VALUES
('Ethan Walker', 'ethan@example.com', 'hashed123'),
('Olivia Brooks', 'olivia@example.com', 'hashed456'),
('Liam Carter', 'liam@example.com', 'hashed789'),
('Emily Stone', 'emily@example.com', 'hashed101'),
('Noah Bennett', 'noah@example.com', 'hashed202');

-- Expenses
INSERT INTO Expenses (user_id, amount, category, method, description, date) VALUES
(1, 2500, 'Rent', 'Bank Transfer', 'March Rent', '2025-03-01'),
(1, 500, 'Food', 'UPI', 'Groceries and snacks', '2025-03-03'),
(1, 800, 'Transport', 'Cash', 'Cab and metro', '2025-03-05'),
(2, 300, 'Health', 'Card', 'Medicine purchase', '2025-03-04'),
(3, 1200, 'Education', 'Net Banking', 'Online course fee', '2025-03-07'),
(2, 1000, 'Entertainment', 'UPI', 'Movie and dinner', '2025-03-10'),
(4, 450, 'Groceries', 'Card', 'Weekly groceries', '2025-03-09'),
(5, 700, 'Utilities', 'UPI', 'Electricity bill', '2025-03-11'),
(5, 150, 'Snacks', 'Cash', 'Evening snacks', '2025-03-12');

-- Incomes
INSERT INTO Incomes (user_id, amount, source, date) VALUES
(1, 25000, 'Monthly Salary', '2025-03-01'),
(1, 5000, 'Freelancing', '2025-03-15'),
(2, 18000, 'Part-Time Job', '2025-03-01'),
(3, 22000, 'Internship', '2025-03-05'),
(4, 30000, 'Full-Time Job', '2025-03-01'),
(5, 4000, 'Tutoring', '2025-03-08');

-- Budgets
INSERT INTO Budgets (user_id, category, limit_amount, period) VALUES
(1, 'Food', 4000, 'Monthly'),
(1, 'Transport', 2000, 'Monthly'),
(2, 'Health', 1500, 'Monthly'),
(3, 'Education', 5000, 'Monthly'),
(4, 'Groceries', 3500, 'Monthly'),
(5, 'Utilities', 2000, 'Monthly');

-- Audit Log
INSERT INTO Audit_Log (user_id, action) VALUES
(1, 'Logged in'),
(2, 'Added new expense'),
(3, 'Updated income source'),
(1, 'Generated monthly report'),
(4, 'Created budget for groceries'),
(5, 'Viewed income summary');
