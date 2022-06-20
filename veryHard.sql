/* Very Hard:
/* Copy the table from your Very Easy Challenge Write a query to add in three cars at 
once Write a query to add in prices and colors for each of these cars */

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

ALTER TABLE cars
ADD price DECIMAL(10, 2),
ADD color VARCHAR(225);


UPDATE cars SET color="red", price="59,999" WHERE car_model = "240z";
UPDATE cars SET color="yellow", price="60,000" WHERE car_model = "Corvette";
UPDATE cars SET color="black", price="15,000" WHERE car_model = "300zx";

/* Write a query to put the Make and Model together in one column */
SELECT CONCAT( car_make, " ", car_model ) AS "make and model", car_year, price, color FROM cars;

/* Create a new query that adds an additional column to the 
results to show how many cars have the same Make. */
SELECT COUNT(car_make), car_make
FROM cars
GROUP BY car_make;