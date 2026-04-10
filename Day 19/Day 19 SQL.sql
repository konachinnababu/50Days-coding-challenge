create database farmers
use farmers

CREATE TABLE farmers (
    farmer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE
);

CREATE TABLE plots (
    plot_id INT PRIMARY KEY,
    plot_name VARCHAR(100),
    farmer_id INT,
    crop_type VARCHAR(50),
    soil_type VARCHAR(50),
    FOREIGN KEY (farmer_id) REFERENCES farmers(farmer_id)
);

CREATE TABLE yields (
    yield_id INT PRIMARY KEY,
    plot_id INT,
    harvest_date DATE,
    yield_kg DECIMAL(10,2),
    weather_condition VARCHAR(50),
    FOREIGN KEY (plot_id) REFERENCES plots(plot_id)
);

CREATE TABLE irrigation_logs (
    log_id INT PRIMARY KEY,
    plot_id INT,
    irrigation_date DATE,
    water_amount_liters DECIMAL(10,2),
    FOREIGN KEY (plot_id) REFERENCES plots(plot_id)
);

INSERT INTO farmers VALUES
(1,'Ravi','Kumar','ravi@gmail.com','2022-01-10'),
(2,'Sita','Reddy','sita@gmail.com','2021-05-12'),
(3,'Arjun','Naidu','arjun@gmail.com','2020-03-15'),
(4,'Meena','Iyer','meena@gmail.com','2023-02-20'),
(5,'Kiran','Patel','kiran@gmail.com','2021-11-01'),
(6,'Anil','Sharma','anil@gmail.com','2020-09-09'),
(7,'Lakshmi','Devi','lakshmi@gmail.com','2022-07-17'),
(8,'Vikram','Singh','vikram@gmail.com','2023-01-01'),
(9,'Pooja','Gupta','pooja@gmail.com','2021-08-19'),
(10,'Rahul','Verma','rahul@gmail.com','2022-06-06'),
(11,'Sneha','Kapoor','sneha@gmail.com','2020-12-12'),
(12,'Manoj','Das','manoj@gmail.com','2021-03-03'),
(13,'Divya','Nair','divya@gmail.com','2023-04-14'),
(14,'Ramesh','Yadav','ramesh@gmail.com','2022-10-10'),
(15,'Geeta','Joshi','geeta@gmail.com','2021-09-25'),
(16,'Suresh','Mishra','suresh@gmail.com','2020-02-28'),
(17,'Nisha','Khan','nisha@gmail.com','2023-06-06'),
(18,'Amit','Chopra','amit@gmail.com','2022-11-11'),
(19,'Deepak','Roy','deepak@gmail.com','2021-01-21'),
(20,'Neha','Bansal','neha@gmail.com','2020-05-05');


INSERT INTO plots VALUES
(1,'West Field',1,'Wheat','Loam'),
(2,'North Field',2,'Rice','Clay'),
(3,'East Field',3,'Corn','Sand'),
(4,'South Field',4,'Wheat','Clay'),
(5,'Green Land',5,'Soybeans','Loam'),
(6,'River Side',6,'Rice','Clay'),
(7,'Hill Top',7,'Corn','Sand'),
(8,'Sunrise Plot',8,'Wheat','Loam'),
(9,'Sunset Plot',9,'Rice','Clay'),
(10,'Valley Plot',10,'Soybeans','Loam'),
(11,'Lake View',11,'Corn','Sand'),
(12,'Dry Land',12,'Wheat','Clay'),
(13,'Rain Field',13,'Rice','Loam'),
(14,'Cool Plot',14,'Soybeans','Sand'),
(15,'Hot Plot',15,'Corn','Loam'),
(16,'Delta Farm',16,'Rice','Clay'),
(17,'Organic Field',17,'Wheat','Loam'),
(18,'Fresh Land',18,'Soybeans','Sand'),
(19,'Golden Field',19,'Corn','Loam'),
(20,'Silver Field',20,'Rice','Clay');

INSERT INTO yields VALUES
(1,1,'2025-01-10',500,'Sunny'),
(2,2,'2025-01-12',600,'Rainy'),
(3,3,'2025-01-15',450,'Mild'),
(4,4,'2025-02-10',520,'Sunny'),
(5,5,'2025-02-15',480,'Rainy'),
(6,6,'2025-02-20',610,'Sunny'),
(7,7,'2025-03-01',430,'Mild'),
(8,8,'2025-03-05',550,'Sunny'),
(9,9,'2025-03-10',620,'Rainy'),
(10,10,'2025-03-15',470,'Mild'),
(11,11,'2025-04-01',440,'Sunny'),
(12,12,'2025-04-05',510,'Rainy'),
(13,13,'2025-04-10',630,'Sunny'),
(14,14,'2025-04-15',460,'Mild'),
(15,15,'2025-05-01',420,'Sunny'),
(16,16,'2025-05-05',640,'Rainy'),
(17,17,'2025-05-10',560,'Sunny'),
(18,18,'2025-05-15',480,'Mild'),
(19,19,'2025-06-01',450,'Sunny'),
(20,20,'2025-06-05',650,'Rainy');

INSERT INTO irrigation_logs VALUES
(1,1,'2025-01-05',1000),
(2,2,'2025-01-06',1200),
(3,3,'2025-01-07',900),
(4,4,'2025-02-05',1100),
(5,5,'2025-02-06',950),
(6,6,'2025-02-07',1300),
(7,7,'2025-03-02',850),
(8,8,'2025-03-03',1050),
(9,9,'2025-03-04',1250),
(10,10,'2025-03-05',980),
(11,11,'2025-04-02',870),
(12,12,'2025-04-03',1020),
(13,13,'2025-04-04',1350),
(14,14,'2025-04-05',920),
(15,15,'2025-05-02',890),
(16,16,'2025-05-03',1400),
(17,17,'2025-05-04',1080),
(18,18,'2025-05-05',960),
(19,19,'2025-06-02',910),
(20,20,'2025-06-03',1450);

SELECT p.plot_name, p.crop_type, AVG(y.yield_kg) AS average_yield_kg
FROM plots p
JOIN yields y ON p.plot_id = y.plot_id
GROUP BY p.plot_name, p.crop_type
ORDER BY average_yield_kg DESC
LIMIT 3;

SELECT p.plot_name, SUM(i.water_amount_liters) AS total_water_liters
FROM plots p
JOIN irrigation_logs i ON p.plot_id = i.plot_id
GROUP BY p.plot_name
ORDER BY total_water_liters DESC;

SELECT p.crop_type, y.weather_condition, AVG(y.yield_kg) AS average_yield_kg
FROM plots p
JOIN yields y ON p.plot_id = y.plot_id
GROUP BY p.crop_type, y.weather_condition;

SELECT p.soil_type, p.plot_name, MAX(y.yield_kg) AS highest_yield_kg
FROM plots p
JOIN yields y ON p.plot_id = y.plot_id
GROUP BY p.soil_type, p.plot_name
HAVING MAX(y.yield_kg) = (
    SELECT MAX(y2.yield_kg)
    FROM yields y2
    JOIN plots p2 ON y2.plot_id = p2.plot_id
    WHERE p2.soil_type = p.soil_type
);

SELECT f.first_name, f.last_name, AVG(i.water_amount_liters) AS avg_water_liters
FROM farmers f
JOIN plots p ON f.farmer_id = p.farmer_id
JOIN irrigation_logs i ON p.plot_id = i.plot_id
GROUP BY f.farmer_id, f.first_name, f.last_name
ORDER BY avg_water_liters ASC
LIMIT 1;

SELECT TO_CHAR(harvest_date, 'YYYY-MM') AS month,
       COUNT(*) AS number_of_harvests
FROM yields
WHERE harvest_date >= CURRENT_DATE - INTERVAL '12 months'
GROUP BY month
ORDER BY month;

SELECT p.plot_name, p.crop_type, y.yield_kg, i.water_amount_liters
FROM plots p
JOIN yields y ON p.plot_id = y.plot_id
JOIN irrigation_logs i ON p.plot_id = i.plot_id
WHERE y.yield_kg < (
    SELECT AVG(y2.yield_kg)
    FROM yields y2
    JOIN plots p2 ON y2.plot_id = p2.plot_id
    WHERE p2.crop_type = p.crop_type
)
AND i.water_amount_liters > (
    SELECT AVG(i2.water_amount_liters)
    FROM irrigation_logs i2
    JOIN plots p3 ON i2.plot_id = p3.plot_id
    WHERE p3.crop_type = p.crop_type
);