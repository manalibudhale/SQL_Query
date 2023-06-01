CREATE TABLE student (
Student_id INT PRIMARY KEY,
f_name VARCHAR (20) NOT NULL,
l_name VARCHAR(20));

INSERT INTO student (Student_id,f_name,l_name) VALUES (1,'Manali','Budhale')
INSERT INTO student (Student_id,f_name,l_name) VALUES (2,'Saksha','Shetty')
INSERT INTO student (Student_id,f_name,l_name) VALUES (3,'Vaishnavi','Budhale')
INSERT INTO student (Student_id,f_name,l_name) VALUES (4,'Afroz','Khan')
INSERT INTO student (Student_id,f_name,l_name) VALUES (5,'Pooja','Telavane')
INSERT INTO student (Student_id,f_name,l_name) VALUES (6,'Sameera','Devi')
INSERT INTO student (Student_id,f_name,l_name) VALUES (7,'Kanta','Bai')
INSERT INTO student (Student_id,f_name,l_name) VALUES (8,'Mayur','Chawada')
INSERT INTO student (Student_id,f_name,l_name) VALUES (9,'Shweta','Budhale')
INSERT INTO student (Student_id,f_name,l_name) VALUES (10,'Aditi','Budhale')
INSERT INTO student (Student_id,f_name,l_name) VALUES (11,'Aditya','Budhale')
INSERT INTO student (Student_id,f_name,l_name) VALUES (12,'Gopi','Bahu')
INSERT INTO student (Student_id,f_name,l_name) VALUES (13,'Sanika','Ghosh')
INSERT INTO student (Student_id,f_name) VALUES (14,'Gayatri');

ALTER TABLE student 
ADD address VARCHAR(200)
ADD Phone_no INT VARCHAR(10)
DROP COLUMN Student_id;

SELECT * FROM student;
SELECT f_name, l_name FROM student;
SELECT DISTINCT l_name from student;
SELECT COUNT (DISTINCT f_name) from student;
SELECT * FROM student WHERE l_name = 'Budhale';
SELECT * FROM student ORDER BY f_name DESC;


SELECT f_name,l_name,address FROM student
WHERE l_name IS NULL;

UPDATE student
SET l_name = 'Budhale'
WHERE l_name = 'Jadhav';

Update student 
SET l_name = 'Jadhav'
WHERE Student_id = 3;

DELETE FROM student WHERE f_name = 'Gayatri';

SELECT TOP 8 * 
FROM student
WHERE Student_id > 1;

SELECT TOP 50 percent * FROM student;

SELECT MIN(Student_id) AS SmallestID
FROM student;

SELECT MAX(Student_id) AS LargestID
FROM student;

UPDATE student
SET address = 'Mhadha Colony'
WHERE Student_id = 1;

UPDATE student
SET address = 'Powai'
WHERE l_name = 'Budhale';

UPDATE student
SET address = 'Nahar Amrit Shakti'
WHERE l_name = 'Khan';

UPDATE student
SET address = 'Kothrud'
WHERE l_name = 'Jadhav';

SELECT * FROM student;

UPDATE student
SET address = 'Mhadha Colony'
WHERE l_name = 'Shetty';

UPDATE student
SET address = 'Kalyan'
WHERE l_name = 'Telavane';

UPDATE student
SET address = 'Mhadha Colony'
WHERE l_name = 'Chawada';

UPDATE student
SET address = 'Kalyani Nagar'
WHERE l_name = 'Devi';

UPDATE student
SET address = 'Baner'
WHERE l_name = 'Bai';

UPDATE student
SET address = 'Viman Nagar'
WHERE l_name = 'Bahu';

UPDATE student
SET address = 'Hiranandani'
WHERE l_name = 'Ghosh';


ALTER TABLE student
ADD City VARCHAR(25);


ALTER TABLE student
ADD Country VARCHAR(50);
ALTER TABLE student
ADD Product_name VARCHAR(25);
ALTER TABLE student
ADD Product_Price INT;

UPDATE student
SET City = 'Mumbai'
Where address = 'Mhadha Colony'; 

UPDATE student
SET City = 'Mumbai'
Where address = 'Hiranandani'; 

UPDATE student
SET City = 'Mumbai'
Where address = 'Kalyan'; 

UPDATE student
SET City = 'Mumbai'
Where address = 'Nahar Amrit Shakti'; 

SELECT * FROM student;

UPDATE student
SET City = 'Pune'
Where address = 'Kothrud'; 
UPDATE student
SET City = 'Pune'
Where address = 'Baner'; 
UPDATE student
SET City = 'Pune'
Where address = 'Kalyani Nagar';
UPDATE student
SET City = 'Pune'
Where address = 'Viman Nagar'; 

UPDATE student
SET Country = 'India';

UPDATE student
SET Product_name = 'Fruits'
WHERE address = 'Powai';

UPDATE student
SET Product_name = 'Stationary'
WHERE address = 'Kalyan';

UPDATE student
SET Product_name = 'Vegetables'
WHERE address = 'Mhadha Colony';

UPDATE student
SET Product_name = 'Toiletries'
WHERE address = 'Nahar Amrit Shakti';

UPDATE student
SET Product_name = 'Beverages'
WHERE address = 'Viman Nagar';

UPDATE student
SET Product_name = 'Brakery'
WHERE address = 'Baner';

UPDATE student
SET Product_name = 'Chocolates'
WHERE address = 'Hiranandani';

UPDATE student
SET Product_name = 'Dairy Products'
WHERE address = 'Kothrud';

UPDATE student
SET Product_name = 'Alcohol'
WHERE address = 'Kalyani Nagar';

UPDATE student
SET Product_price = 15000
WHERE address = 'Kalyani Nagar'; 

UPDATE student
SET Product_Price = 80000
WHERE address = 'Kothrud';

UPDATE student
SET Product_Price = 80000
WHERE address = 'Powai';

UPDATE student
SET Product_Price = 25800
WHERE address = 'Mhadha Colony';

UPDATE student
SET Product_Price = 100000
WHERE address = 'Nahar Amrit Shakti';

UPDATE student
SET Product_Price = 61000
WHERE address = 'Baner';

UPDATE student
SET Product_Price = 50000
WHERE address = 'Viman Nagar';

UPDATE student
SET Product_Price = 125000
WHERE address = 'Hiranandani';

UPDATE student
SET Product_Price = 12000
WHERE address = 'Kalyan';

SELECT * FROM student;

SELECT AVG(Product_Price) FROM student;
SELECT SUM(Product_Price) FROM student;
SELECT COUNT(*) FROM student
WHERE Product_name = 'Vegetables';

SELECT * FROM student
WHERE f_name LIKE 'a%a';

SELECT * FROM student
WHERE City IN ('Mumbai');

SELECT * FROM student
WHERE Product_Price BETWEEN 20000 AND 75000
AND City NOT IN ('Mumbai');

SELECT COUNT(address), City FROM student
GROUP BY City
HAVING COUNT(address) > 5;

SELECT * INTO University
FROM student;  --To create copy of table

SELECT * FROM University;


