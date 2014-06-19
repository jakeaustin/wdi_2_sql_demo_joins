\c director_demo

-- Inner Join
SELECT m.id, m.title, d.name
  FROM movies m, directors d
  WHERE d.id = m.director_id;

-- Left Join
SELECT movies.title, directors.name FROM movies
  LEFT OUTER JOIN directors
  ON (movies.director_id = directors.id);
