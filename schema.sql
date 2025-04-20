DROP TABLE IF EXISTS Audit_Log, Budgets, Incomes, Expenses, Users;

CREATE TABLE Users (
  user_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  email TEXT,
  password TEXT,
  role TEXT
);

CREATE TABLE Expenses (
  expense_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  amount REAL,
  category TEXT,
  method TEXT,
  description TEXT,
  date TEXT
);

CREATE TABLE Incomes (
  income_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  amount REAL,
  source TEXT,
  date TEXT
);

CREATE TABLE Budgets (
  budget_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  category TEXT,
  limit_amount REAL,
  period TEXT
);

CREATE TABLE Audit_Log (
  log_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  action TEXT,
  timestamp TEXT
);
