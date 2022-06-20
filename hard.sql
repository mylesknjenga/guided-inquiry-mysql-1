/* Hard: Make a copy of your Medium Challenge Write out the queries that would add the director’s 
First Name and Last Name into two separate columns. */ 
CREATE TABLE movies (
    title VARCHAR(225),
    release_date DATE,
    rating TINYINT
);

INSERT INTO movies
    (title, release_date, rating)
VALUES
    ("The Godfather", "1972-03-24", 10),
    ("Finding Nemo", "2003-05-30", 9),
    ("Lights Out", "2016-06-08", 7),
    ("The Conjuring", "2013-07-19", 7),
    ("Dunkirk", "2017-07-21", 7.8),
    ("The Lion King", "1994-06-24", 8.5),
    ("The Dark Knight", "2008-07-18", 9),
    ("Inside Out", "2015-06-19", 8.2),
    ("12 Years a Slave", "2013-10-18", 8.1),
    ("Goodfellas", "1990-09-19", 8.7);

ALTER TABLE movies
ADD COLUMN director_first_name VARCHAR(225),
ADD COLUMN director_last_name VARCHAR(225);

UPDATE movies SET director_first_name="Andrew", director_last_name="Stanton" WHERE title = "Finding Nemo";
UPDATE movies SET director_first_name="Martin", director_last_name="Scorsese" WHERE title = "Goodfellas";
UPDATE movies SET director_first_name="Francis", director_last_name="Coppolla" WHERE title = "The Godfather";
UPDATE movies SET director_first_name="Christopher", director_last_name="Nolan" WHERE title = "The Dark Knight";
UPDATE movies SET director_first_name="Pete", director_last_name="Docter" WHERE title = "Inside Out";
UPDATE movies SET director_first_name="Roger", director_last_name="Allers" WHERE title = "The Lion King";
UPDATE movies SET director_first_name="Christopher", director_last_name="Nolan" WHERE title = "Dunkirk";
UPDATE movies SET director_first_name="James", director_last_name="Wan" WHERE title = "The Conjuring";
UPDATE movies SET director_first_name="Steve", director_last_name="McQueen" WHERE title = "12 Years a Slave";
UPDATE movies SET director_first_name="David", director_last_name="Sandberg" WHERE title = "Lights Out";


/* Create a query that puts the names together. */
SELECT director_first_name, director_last_name, CONCAT( director_first_name, ' ' ,director_last_name) AS fullname FROM movies;


/* Create a query to put the list in alphabetical order by the last name from A-Z After you order the 
list, remove the Movies where the Last Name ends with ”R-Z” */
SELECT * FROM movies order by director_last_name;

DELETE FROM movies WHERE SUBSTRING(director_last_name, -1, 1) = "r" 
OR SUBSTRING(director_last_name, -1, 1) = "s" OR SUBSTRING(director_last_name, -1, 1) = "t" OR SUBSTRING(director_last_name, -1, 1) = "u"
OR SUBSTRING(director_last_name, -1, 1) = "v" OR SUBSTRING(director_last_name, -1, 1) = "w" OR SUBSTRING(director_last_name, -1, 1) = "x"
OR SUBSTRING(director_last_name, -1, 1) = "y" OR SUBSTRING(director_last_name, -1, 1) = "z";

/* Write a query where the first three appear */
SELECT * FROM movies LIMIT 3;