---INSERT INTO customer ---
INSERT INTO customer(
    first_name,
    last_name,
    age
) VALUES (
    'christian',
    'askew',
    26
),
(
    'dylan',
    'katina',
    26
),
(
    'joe',
    'biden',
    80
),
(
    'whoppi',
    'goldberg',
    67
);
(
    'north',
    'west',
    9
)

---INSERT INTO food ---
INSERT INTO food(
    food_name,
    food_quantity
) VALUES (
    'popcorn',
    2
),
(
    'hot_dog',
    1
),
(
    'candy',
    3
);

SELECT*
FROM food;

---INSERT INTO drink ---
INSERT INTO drink(
    drink_name,
    drink_quantity
) VALUES (
    'coke',
    2
),
(
    'water',
    1
),
(
    'icee',
    3
);

SELECT*
FROM drink;


---INSERT INTO concession_order ---
INSERT INTO concession_order(
    customer_name,
    customer_id,
    food_id,
    drink_id
) VALUES (
    'christian',
    6,
    1,
    1
);

---INSERT INTO film ---
INSERT INTO film(
    film_name
) VALUES (
    'Avengers'
),
(
    'Top Gun'
),
(
    'The Hangover'
);

--- INSERT INTO ticket ---
INSERT INTO ticket(
    customer_id,
    film_id,
    film_name,
    show_date,
    show_time,
    seat_num
) VALUES (
    6,
    1,
    'Avengers',
    '2023-01-01',
    '12:00:00',
    12
);

SELECT *
FROM ticket;