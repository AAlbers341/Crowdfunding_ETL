-- Create contacts, campaign, subcategory, category tables
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;

CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
);

CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR,
	description VARCHAR,
	goal DECIMAL,
	pledged DECIMAL,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR,
	subcategory_id VARCHAR,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR PRIMARY KEY,
	sub_category VARCHAR
);

CREATE TABLE category(
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR
);