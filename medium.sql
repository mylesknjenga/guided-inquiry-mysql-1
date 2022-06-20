/* Create a table with your top 10 movies. Include title, release date, and rating */
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

/* Create a query that pulls all movies, in order of release date, where the title includes 
the letter “s”. */
SELECT * FROM movies WHERE title like '%s%' ORDER BY release_date;