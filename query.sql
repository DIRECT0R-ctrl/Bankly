-- : Insérer un nouveau customer :

INSERT INTO customers (
  full_name, 
  email, 
  phone
)
VALUES (
  'laksimi aymane',
  'dominantvortex@proton.me',
  '0714475741'
);

INSERT INTO accounts (
  account_number,
  balance,
  account_type
)
VALUES (
  1234,
  50,
  'savings'
);

-- : Modifier le numero do telephone d'un customer:
-- UPDATE customers SET phone = '0688888888' WHERE customer_id = 1;

-- : Afficher tous les customers :
SELECT * FROM customers;


-- : Afficher unquement les full name et email des customers :
SELECT
full_name, email 
FROM
customers;

-- : afficher tous les account :
SELECT * FROM accounts;

-- afficher tous les account numbers :
SELECT 
account_number 
FROM accounts;


-- afficher toutes les transaction
SELECT * FROM transactions;

-- afficher les accounts avec un balance < 1000
SELECT * FROM accounts WHERE balance > 10000;

-- afficher les accounts avec un balance <= 0;
SELECT * FROM accounts WHERE balance <= 0;

-- afficher les transaction de type "debit"
SELECT * FROM transactions WHERE transaction_type = 'Debit';

-- affiche les transactions de type "credit";
SELECT * FROM transactions WHERE transaction_type = 'credit';

-- afficher les transaction du account_id 1
SELECT * FROM transactions WHERE account_id = 1;

-- Afficher les customers ayant un account géré par l’advisor_id = 2


-- Afficher les accounts ayant account_type = "Savings"

-- Afficher les transactions avec un amount ≥ 500

-- Afficher les transactions avec un amount entre 100 et 1000


-- Afficher les accounts du customer_id = 1


-- Afficher les accounts triés par balance (ordre croissant)

-- Afficher les transactions triées par amount (ordre décroissant)

-- Afficher les 5 plus grandes transactions

-- Afficher toutes les transactions triées par transaction_date décroissant

-- Afficher les 3 dernières transactions

-- Afficher chaque account avec le nom du customer et le nom de l’advisor (JOIN)









