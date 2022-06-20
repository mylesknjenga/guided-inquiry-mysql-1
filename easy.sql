/* Create a table with your top five favorite books with Title, Publish Date, and
Author First/Last Name */
CREATE TABLE books (
    title VARCHAR(225),
    publish_date DATE,
    author_first_name VARCHAR(225),
    author_last_name VARCHAR(225)
);

INSERT INTO books
    (title, publish_date, author_first_name, author_last_name)
VALUES
    ("Atomic Habits", "2018-10-16", "James", "Clear"),
    ("Harry Potter and the Order of Phoenix", "2003-06-21", "Joanne", "Rowling"),
    ("The Great Gatsby", "1925-04-10", "Francis", "Fitzgerald"),
    ("Da Vinci Code", "2003-03-18", "Dan", "Brown"),
    ("The Hunger Games", "2008-09-14", "Suzanne", "Collins");

/* Create a query to add in two new books Remove the oldest book */
INSERT INTO books
    (title, publish_date, author_first_name, author_last_name)
VALUES
    ("Decolonising the Mind", "1986-07-16", "Ngugi", "Thiong'o"),
    ("My Life in Crime", "1984-01-01", "John", "Kiriamiti");

DELETE FROM books WHERE publish_date IS NOT NULL order by publish_date asc LIMIT 1;

/* Provide an additional query giving the sum of all books */
SELECT COUNT(*) FROM books;