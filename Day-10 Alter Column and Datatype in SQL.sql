-- DROP the Table if it already exists
DROP TABLE IF EXISTS users;

-- CREATE the users table
CREATE TABLE IF NOT EXISTS users (
	user_id INT PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	City VARCHAR(50)
);
select * from users;

-- INSERT 5 sample users into the user table
INSERT INTO
	USERS (USER_ID, USERNAME, EMAIL, AGE, CITY)
VALUES
	(1, 'Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'),
	(2, 'Priya', 'priya@gmail.com', 30, 'Delhi'),
	(3, 'Ankit', 'ankit@gmail.com', 28, 'Banglore'),
	(4, 'Sneha', 'sneha@gmail.com', 35, 'Pune'),
	(5, 'Vikram', 'vikram@gmail.com', 22, 'Hydrebad');

select * from users;

select user_id from users;

select user_id, username from users;

select user_id, username, city from users;

select user_id, city from users;

--Updating the value in table 

UPDATE users SET age=26 WHERE  username='Rajesh';

select * from users;

UPDATE users SET age=27 WHERE  username='Rajesh';
select * from users;

SELECT * fROM users ORDER BY username ASC;

SELECT * fROM users ORDER BY user_id;

UPDATE users SET City='Chennai' WHERE age>30;
select * from users;

UPDATE users SET City='Chennai' WHERE age>=30;
select * from users;

UPDATE users SET age=31, City='Kolkata' WHERE username='Priya';
select * from users;

UPDATE users SET age=age+1 WHERE email LIKE '%@gmail.com';
SELECT * fROM users ORDER BY user_id;

DELETE FROM users WHERE user_id=6;


-- To Rename the username column to Full_name 

ALTER TABLE users
RENAME COLUMN username TO Full_name;

SELECT * fROM users ORDER BY user_id ASC;


-- To change age column's datatype from INT to SMALLINT

ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;

SELECT * fROM users ORDER BY user_id ASC;

-- To add a NOT NULL CONSTRANT to City Column

ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

SELECT * fROM users ORDER BY user_id ASC;

-- Adding CHECK Constrant to age column 

ALTER TABLE users
DROP CONSTRAINT age;

ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);


INSERT INTO
	USERS (USER_ID, Full_name, EMAIL, AGE, CITY)
VALUES
	(7, 'Rajesh', 'rajesh@gmail.com', 19, 'Mumbai');

SELECT * fROM users ORDER BY user_id ASC;

ALTER TABLE users 
RENAME TO customers;

SELECT * fROM users ORDER BY user_id ASC; --THIS COMMAND SHOWS ERROR because WE CHANEG THE NAME OF TABLE 
SELECT * fROM customers ORDER BY user_id ASC;
