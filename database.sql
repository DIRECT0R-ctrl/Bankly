CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  full_name VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(50) NOT NULL UNIQUE,
  phone VARCHAR(10) UNIQUE,
  registration_date DATE
);

CREATE TABLE advisors (
  advisor_id SERIAL PRIMARY KEY,
  full_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);

CREATE TABLE accounts (
  account_id SERIAL PRIMARY KEY,
  account_number INT,
  balance INT,
  account_type VARCHAR(100),
  customer_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;
  FOREIGN KEY (advisor_id) REFERENCES advisors(advisor_id) ON DELETE CASCADE;
);

CREATE TABLE transactions (
  transaction_id SERIAL PRIMARY KEY,
  amount INT,
  transaction_type VARCHAR(100),
  account_id INT,
  FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

