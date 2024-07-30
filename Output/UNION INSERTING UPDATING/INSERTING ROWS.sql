-- TABLES

-- INSERTING ROWS:

INSERT INTO customers
VALUES (DEFAULT, 'Arnold', 'Swarchzenegger', NULL, NULL, '3 Austria Street', 'Los Angeles', 'LA', DEFAULT);

-- Alternative:

INSERT INTO customers (first_name,
						last_name,
                        birth_date,
                        address,
                        city,
                        state)                        
VALUES ('John', 'Connor', '2027-12-12', '3 Future Address', 'Cloudpunk', 'SK');

-- ADDING MULTIPLE ROWS:

INSERT INTO shippers (name)
VALUES ('Captain Quark'), ('Dr Nefarious'), ('Captain Jack Sparrow');


-- EXERCISE

INSERT INTO products (name, quantity_in_stock, unit_price)
VALUES ('Chocolate Bar', '56', '4.54'),
		('Snowpiercer Protein Bar', '200', '1.50'),
        ('Sandwich Ice Cream', '20', '5.20');