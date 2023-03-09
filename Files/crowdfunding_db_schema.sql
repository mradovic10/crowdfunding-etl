CREATE TABLE categories (
	category_id VARCHAR PRIMARY KEY,
	category_name VARCHAR NOT NULL
);

SELECT * FROM categories;

CREATE TABLE subcategories (
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory_name VARCHAR NOT NULL
);

SELECT * FROM subcategories;

CREATE TABLE contacts (
	contact_id INTEGER PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL
);

SELECT * FROM contacts;

CREATE TABLE campaigns (
	cf_id INTEGER PRIMARY KEY,
	contact_id INTEGER,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES categories (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategories (subcategory_id)
);

SELECT * FROM campaigns;