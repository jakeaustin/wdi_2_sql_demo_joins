\c join_demo

-- Inner Join
SELECT b.id, b.title, b.published_on, a.name, a.birthday
    FROM authors a
    INNER JOIN books b
    ON a.id = b.author_id;

-- Or implicitly
SELECT b.id, b.title, b.published_on, a.name, a.birthday
    FROM authors a, books b
    WHERE a.id = b.author_id;

-- Left joins
SELECT books.title, authors.name FROM books
  LEFT OUTER JOIN authors
  ON (books.author_id = authors.id);


-- Right joins

-- Outer joins

-- Full joins

--Find the lowest price of a stephen king books
SELECT min(price)
  FROM books
  INNER JOIN authors
    ON books.author_id = authors.id
  WHERE authors.name = 'Stephen King';

--Find the price of all of the Maya Angelou books together
SELECT sum(price)
  FROM books
  INNER JOIN authors
    ON books.author_id = authors.id
  WHERE authors.name = 'Maya Angelou';

SELECT sum(price)
  FROM books, authors
  WHERE books.author_id = authors.id
  AND authors.name = 'Maya Angelou';
