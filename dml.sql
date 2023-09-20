INSERT INTO customer(
    first_name,
    last_name, --since its not not null you only add it here when you want to add it below
    phone_number,
    email,
    --dont need to add the default onese
    age
) VALUES(
    'SHOHA',
    'Tsuchida',
    '(888) 888-8888',
    'shohat@codingtemple.com',
    89
); --DONT RUN IT MORE THAN ONCE OR YOULL HAVE REPEATING INFORMATION

SELECT * FROM customer

INSERT INTO customer(
    first_name,
    phone_number,
    email,
    age,
    prime
) VALUES(
    'pearl',
    '(222) 888-8888',
    'pearl@osborne.com',
    23,
    true
),(
    'dimitri',
    '(222) 222-2222',
    'slkfj@lkdj.com',
    35,
    true
); --you can do as many as you want at a time

INSERT INTO product(
    product_name,
    price
) VALUES(
    'Giraffe Pillow Pet',
    14.99
),(
    'Dog Pillow Pet',
    14.99
),(
    'Snuggies',
    19.99
);

SELECT * FROM product

INSERT INTO my_transaction(
    customer_id,
    total_price
) VALUES(
    1,
    44.97
), (
    4,
    19.99
), (
    1, 
    14.99
)-- ERROR POPPED UP BUT JUST SKIPPING IT FOR THIS EXAMPLE

SELECT * FROM my_transaction;

INSERT INTO receipt_item(
    transaction_id,
    product_id,
    quantity
) VALUES(
    1,
    1,
    2
),(
    1,
    2,
    1
); --error on this one too because of above

SELECT product_name
FROM product
WHERE product_id IN (
    SELECT product_id
    WHERE receipt_item IN (
        SELECT transaction_id
        FROM my_transaction
        WHERE customer_id IN (
            SELECT customer_id
            FROM customer
            WHERE first_name = 'shoha'
        )
    )
); --wont work here bc above

DELETE FROM customer
WHERE first_name = 'pearl' -- or customer_id = ?

SELECT * FROM customer

UPDATE customer 
SET last_name = 'Power' -- other languages use modify instead of set
WHERE customer_id = 3

--2:59concession have reciepts
--movies - products
--1 or 2 per table
--fake_movie_theater db-- connect using connection string