\c director_demo

INSERT INTO directors(name)
  VALUES
  ('Steven Spielberg'),
  ('J.J. Abrams'),
  ('George Lucas');

WITH ins (director, title) AS
(VALUES
  ('Steven Spielberg', 'E.T.'),
  ('Steven Spielberg', 'Raiders of teh Lost Ark'),
  ('Steven Spielberg', 'The land before time'),
  ('J.J. Abrams', 'Cloverfield'),
  ('George Lucas', 'Star Wars: The Phantom Menace'),
  ('George Lucas', 'Star Wars: The Clone Wars'),
  ('George Lucas', 'Star Wars: A New Hope')
 )
INSERT INTO movies
  (director_id, title)
SELECT
  directors.id, ins.title
FROM
  directors JOIN ins
    ON ins.director = directors.name;
