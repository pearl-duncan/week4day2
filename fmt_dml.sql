INSERT INTO customer(
    first_name,
    last_name,
    email,
    age
) VALUES(
    'pearl',
    'osborne',
    'pearl@osborne.com',
    25
), (
    'sean',
    'ducan',
    'duncan@sean.com',
    34

), (
    'John',
    'Smith',
    'john@smilth.com',
    38
);

SELECT * FROM customer;
SELECT * FROM concession_recipt;

INSERT INTO concession_recipt(
    customer_id,
    concession_item,
    quantity
) VALUES(
    1,
    'popcorn',
    1
),(
    2,
    'nachos',
    1
),(
    3,
    'coke',
    1
);

INSERT INTO movies(
    movie_name,
    price,
    description
) VALUES(
    'Atlantis',
    10.98,
    'the story of young linguist Milo Thatch, who gains possession of a sacred book, which he believes will guide him and a crew of mercenaries to the lost city of Atlantis'
), (
    'Finding nemo',
    10.98,
    'A fish searches the ocean for his lost son'
), (
    'Breakfast at Tiffanys',
    10.98,
    'A young New York writer sponsored by a wealthy woman falls in love with the charming, impulsive and eccentric call girl that lives next door.'
)

SELECT * FROM movies;
SELECT * FROM ticket;

INSERT INTO ticket(
    customer_id,
    movie_id
) VALUES(
    1,
    1
), (
    2,
    1
), (
    3,
    2
)