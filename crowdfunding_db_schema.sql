-- Drop the Contacts table if it exists
DROP TABLE IF EXISTS Contacts CASCADE;

-- Create the Contacts table
CREATE TABLE Contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(55) NOT NULL UNIQUE
);

-- Drop the Category table if it exists
DROP TABLE IF EXISTS Category CASCADE;

-- Create the Category table
CREATE TABLE Category (
    category_id VARCHAR(5) PRIMARY KEY,
    category_name VARCHAR(15) NOT NULL
);

-- Drop the Subcategory table if it exists
DROP TABLE IF EXISTS Subcategory CASCADE;

-- Create the Subcategory table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory_name VARCHAR(25) NOT NULL
);

-- Drop the Campaign table if it exists
DROP TABLE IF EXISTS Campaign CASCADE;

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
    category_id VARCHAR(5) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);