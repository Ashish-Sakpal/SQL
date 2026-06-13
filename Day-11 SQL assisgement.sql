-- Drop the table if it already exists

DROP TABLE IF EXISTS employees;

-- Create the employees table

CREATE TABLE employees (
	employee_id SERIAL PRIMARY KEY,
	First_name VARCHAR(50) NOT NULL,
	LAST_name VARCHAR(50) NOT NULL,
	Department VARCHAR(50) NOT NULL,
	Salary DECIMAL(10,2) CHECK (Salary>0),
	Joining_date DATE NOT NULL,
	Age INT CHECK (age>=18)
);

SELECT * FROM employees;


-- Insert data into employees table

INSERT INTO employees (First_name, LAST_name, Department, Salary, Joining_date, Age) VALUES
('Amit','Sharma','IT',60000.00,'2022-05-01',29),
('Neha','Patel','HR',55000.00,'2021-08-15',32),
('Ravi','kumar','Finance',70000.00,'2020-03-10',35),
('Anjali','Verma','IT',65000.00,'2019-11-22',28),
('Suresh','Reddy','Operations',50000.00,'2023-01-10',26);

SELECT * FROM employees;

-- Assignment Questions
--Q1: Retrieve all employees’ First_name and their departments.

SELECT First_name, Department FROM employees;


--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.

UPDATE employees SET Salary= Salary+(Salary*0.1) WHERE Department='IT';
SELECT * FROM employees;


--Q3: Delete all employees who are older than 34 years.
DELETE FROM employees WHERE Age>34;
SELECT * FROM employees ;

--Q4: Add a new column `email` to the `employees` table.
ALTER TABLE employees ADD COLUMN Email VARCHAR(100);
SELECT * FROM employees ;

--Q5: Rename the `department` column to `dept_name`.
ALTER TABLE employees RENAME COLUMN Department TO Dept_name;
SELECT * FROM employees;


--Q6: Retrieve the names of employees who joined after January 1, 2021.
SELECT * FROM employees WHERE Joining_date >'2021-01-01';
-- OR 
SELECT First_name, Last_name, Joining_date FROM employees WHERE Joining_date >'2021-01-01';

--Q7: Change the data type of the `salary` column to `INTEGER`.
ALTER TABLE employees 
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;
SELECT * FROM employees;

--Q8: List all employees with their age and salary in descending order of salary.
SELECT First_name, Age, Salary FROM employees 
ORDER BY Salary DESC;

--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)

INSERT INTO employees (First_name, LAST_name, Dept_name, Salary, Joining_date, Age,) VALUES
('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);

SELECT * FROM employees;


--Q10: Update age of employee +1 to every employee 
UPDATE employees SET Age= Age+1;
SELECT * FROM employees;

