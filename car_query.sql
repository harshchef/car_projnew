-- Create schema and switch to it
CREATE SCHEMA cars;
USE cars;

-- Display all records from car_dekho
SELECT * FROM car_dekho;

-- Total Cars: To get a count of total records
SELECT COUNT(*) FROM car_dekho;

-- The manager asked the employee, "How many cars will be available in 2023?"
SELECT COUNT(*) FROM car_dekho WHERE year = 2023;

-- The manager asked the employee, "How many cars are available in 2020, 2021, 2022?"
SELECT COUNT(*) FROM car_dekho WHERE year = 2020; -- 74
SELECT COUNT(*) FROM car_dekho WHERE year = 2021; -- 7
SELECT COUNT(*) FROM car_dekho WHERE year = 2022; -- 7

-- GROUP BY
SELECT COUNT(*) FROM car_dekho WHERE year IN (2020, 2021, 2022) GROUP BY year;

-- Query 1: Print the total number of cars for each year
SELECT year, COUNT(*) AS total_cars FROM car_dekho GROUP BY year;

-- Query 2: How many diesel cars are there in 2020?
SELECT COUNT(*) AS diesel_cars_2020 FROM car_dekho WHERE year = 2020 AND fuel = 'Diesel';

-- Query 3: How many petrol cars are there in 2020?
SELECT COUNT(*) AS petrol_cars_2020 FROM car_dekho WHERE year = 2020 AND fuel = 'Petrol';

-- The manager told the employee to give a print of all the fuel cars (petrol, diesel, and CNG) for each year
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Petrol' GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Diesel' GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'CNG' GROUP BY year;

-- Manager said if there were more than 100 cars in a given year, which year had more than 100 cars?
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*) > 100;
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*) < 50;

-- The manager said to the employee, "Provide details of all cars between 2015 and 2023."
SELECT COUNT(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023;

-- The manager said to the employee, "Provide complete details of all cars between 2015 and 2023."
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;
SHOW COLUMNS FROM car_dekho;