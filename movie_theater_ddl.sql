--- TABLES ---
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

--- CONCESSIONS ---
CREATE TABLE food(
    food_id SERIAL PRIMARY KEY,
    food_name VARCHAR(50),
    food_quantity INTEGER
);

CREATE TABLE drink(
    drink_id SERIAL PRIMARY KEY,
    drink_name VARCHAR(50),
    drink_quantity INTEGER
);

CREATE TABLE concession_order(
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    food_id INTEGER,
    FOREIGN KEY (food_id) REFERENCES food(food_id),
    drink_id INTEGER,
    FOREIGN KEY (drink_id) REFERENCES drink(drink_id)
);

--- FILM TICKETS ---
CREATE TABLE film(
    film_id SERIAL PRIMARY KEY,
    film_name VARCHAR(100)
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    film_id INTEGER,
    FOREIGN KEY (film_id) REFERENCES film(film_id),
    film_name VARCHAR(100),
    show_date DATE,
    show_time TIME,
    seat_num INTEGER
);



--- EDITS TO TABLES ---
ALTER TABLE customer
ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE customer
ALTER COLUMN last_name SET NOT NULL;

ALTER TABLE concession_order
ADD customer_id INTEGER;

ALTER TABLE concession_order
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

-- Let's say this is a theater that only has R rated movies
ALTER TABLE customer
ADD age INTEGER;

ALTER TABLE customer
ADD CHECK (age >= 18);


--- Let's see tables ---
SELECT *
FROM customer;