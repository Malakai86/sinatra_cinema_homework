DROP TABLE films;

CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  price NUMERIC
);
