DROP TABLE IF EXISTS users;

-- CREATING users table
CREATE TABLE users (
	user_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	age INTEGER CHECK(age >= 18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- INSERTIBG DATA INTO TABLE 1
INSERT INTO users (user_id, name, email, age) VALUES (1, 'John Doe','John.deo@example.com',25);

select * from users;

-- INSERTIBG DATA INTO TABLE 2
INSERT INTO users (user_id, name, email, age) VALUES (2, 'John Doe','John2.deo@example.com',24);
