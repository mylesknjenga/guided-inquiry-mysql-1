/*Create a table with your top three cars and include make, model, year*/
CREATE DATABASE guidedInquiry;

CREATE TABLE cars (
    car_make VARCHAR(20),
    car_model VARCHAR(20),
    car_year YEAR
);

INSERT INTO cars 
    (car_make, car_model, car_year) 
VALUES
    ("Nissan", "240z", 1973),
    ("Chevrolet", "Corvette", 2019),
    ("Nissan", "300zx", 1986);


/*Create a query to add in two more cars*/
INSERT INTO cars
    (car_make, car_model, car_year)
VALUES
    ("Bugatti", "Chiron", 2019),
    ("Mercedes", "AMG GT-R", 2020);