CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  full_name VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(10),
  registration_date DATE
);

CREATE TABLE advisors (
  advisor_id SERIAL PRIMARY KEY,
  full_name VARCHAR(50),
  email VARCHAR(50)
);

CREATE TABLE accounts (
  account_id SERIAL PRIMARY KEY,
  account_number INT,
  balance INT,
  account_type VARCHAR(100),
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE Transactions (
  transaction_id SERIAL PRIMARY KEY,
  amount INT,
  transaction_type VARCHAR(100),
  account_id INT,
  FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

