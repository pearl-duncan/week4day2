CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at DATE DEFAULT CURRENT_DATE,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    age INTEGER
); 

CREATE TABLE concession_recipt(
    recipt_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL UNIQUE,
    concession_item VARCHAR NOT NULL,
    quantity INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR NOT NULL,
    price NUMERIC(8,2),
    description VARCHAR
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    movie_date DATE DEFAULT CURRENT_DATE,
    movie_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
