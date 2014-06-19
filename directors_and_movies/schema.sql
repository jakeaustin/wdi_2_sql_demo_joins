DROP DATABASE IF EXISTS director_demo;
CREATE DATABASE director_demo;
\c director_demo

CREATE TABLE directors (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title TEXT,
  director_id INTEGER REFERENCES directors
);
