CREATE TABLE tableA (
  id INTEGER,
  intValue INTEGER
);

CREATE TABLE tableB (
  id INTEGER,
  varValue VARCHAR(45)
);
INSERT INTO tableA VALUES (1, 20);
INSERT INTO tableA VALUES (2, 30);
INSERT INTO tableA VALUES (3, 40);
INSERT INTO tableA VALUES (4, 50);
INSERT INTO tableA VALUES (NULL, 60);
INSERT INTO tableA VALUES (NULL, 70);
INSERT INTO tableB VALUES (1, 'Joanna');
INSERT INTO tableB VALUES (2, 'Franco');
INSERT INTO tableB VALUES (3, 'Paolo');
INSERT INTO tableB VALUES (4, 'Giovanni');
INSERT INTO tableB VALUES (NULL, 'Federico');
INSERT INTO tableB VALUES (NULL, 'Mattia');

SELECT * FROM tableA A INNER JOIN tableB B ON A.id = B.id;
SELECT * FROM tableA A LEFT JOIN tableB B ON A.id = B.id;
SELECT * FROM tableA A INNER JOIN tableB B ON A.id = B.id WHERE B.id = NULL;
SELECT * FROM tableA A RIGHT JOIN tableB B ON A.id = B.id;
SELECT * FROM tableA A RIGHT JOIN tableB B ON A.id = B.id WHERE B.id = NULL;
SELECT * FROM tableA A FULL OUTER JOIN tableB B ON A.id = B.id;
SELECT * FROM tableA A FULL OUTER JOIN tableB B ON A.id = B.id WHERE A.id OR B.id = NULL;