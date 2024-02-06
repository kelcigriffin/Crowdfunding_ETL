CREATE TABLE Contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(150)
);

CREATE TABLE Category (
	category_id VARCHAR(4) PRIMARY KEY,
	category VARCHAR(30) 
);

CREATE TABLE Subcategory (
	subcategory_id VARCHAR(8) PRIMARY KEY,
	subcategory VARCHAR(30)
);

CREATE TABLE Campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES Contacts(contact_id),
	category_id VARCHAR(4) REFERENCES Category(category_id),
	subcategory_id VARCHAR(8) REFERENCES Subcategory(subcategory_id),
    company_name VARCHAR(50),
    description VARCHAR(250),
    goal DOUBLE PRECISION,
    pledged DOUBLE PRECISION,
    outcome VARCHAR(20),
    backers_count INT,
    country VARCHAR(2),
    currency VARCHAR(3),
    launch_date DATE,
    end_date DATE
);

SELECT * FROM Contacts;

SELECT * FROM Category;

SELECT * FROM Subcategory;

SELECT * FROM Campaign;

