-- Create the Contacts table
CREATE TABLE Contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(55) NOT NULL UNIQUE
);

-- Create the Category table
CREATE TABLE Category (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(15) NOT NULL
);

-- Create the Subcategory table
CREATE TABLE Subcategory (
    subcategory_id SERIAL PRIMARY KEY,
    subcategory_name VARCHAR(25) NOT NULL
);

-- Create the Campaign table
CREATE TABLE Campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal decimal(12,2) NOT NULL,
    pledged decimal(12,2) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(100) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id INTEGER NOT NULL,
    subcategory_id INTEGER NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);
