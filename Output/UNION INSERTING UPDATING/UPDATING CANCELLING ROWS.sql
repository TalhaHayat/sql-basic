-- UPDATING ROWS

use sql_invoicing;

UPDATE invoices
SET payment_total = 40, payment_date = '2024-07-28'
WHERE invoice_id = 1;

-- Overwriting:

UPDATE invoices
SET payment_total = invoice_total * 0.5, payment_date = '2024-07-28'
WHERE invoice_id = 1;
-- Without the Where, you can upload MULTIPLE ROWS at a time.
-- Or, be specific to multiple similar variations, i.e. "client_id = 3", or "client_id IN (3, 4)
-- Will need to disable Safe Mode.

-- TO CANCEL IT BACK:

UPDATE invoices
SET payment_total = DEFAULT, payment_date = NULL
WHERE invoice_id = 1;

-- EXERCISE

USE sql_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';

