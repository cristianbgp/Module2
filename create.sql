CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    name_member text,
    phone numeric,
  	address text
);

CREATE TABLE formats (
    format_id SERIAL PRIMARY KEY,
    name_format text
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name_category text
);

CREATE TABLE actors(
    actor_id SERIAL PRIMARY KEY,
    name_actor text
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_title text,
  	category_id integer REFERENCES categories
);

CREATE TABLE casting (
    casting_id SERIAL PRIMARY KEY,
    actor_id integer REFERENCES actors,
    movie_id integer REFERENCES movies
);

CREATE TABLE cassettes(
    cassette_id SERIAL PRIMARY KEY,
  	movie_id integer REFERENCES movies,
  	format_id integer REFERENCES formats
);

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
  	rental_date date,
  	return_date date,
  	cassette_id integer REFERENCES cassettes,
  	member_id integer REFERENCES members
);