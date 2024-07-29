COPY contacts(contact_id, first_name, last_name, email) FROM '\Resources\contacts.csv' WITH (FORMAT CSV, HEADER true);
COPY category(category_id, category_name) FROM '\Resources\category.csv' WITH (FORMAT CSV, HEADER true);
COPY subcategory(subcategory_id, subcategory_name) FROM '\Resources\subcategory.csv' WITH (FORMAT CSV, HEADER true);
COPY campaign(cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, 
launch_date, end_date, category_id, subcategory_id) FROM '\Resources\campaign.csv' WITH (FORMAT CSV, HEADER true);

-- Select Querry to check if data is loaded in all tables
SELECT 
    c.first_name,
    c.last_name,
    c.email,
    cat.category_name,
    sub.subcategory_name,
    camp.cf_id,
    camp.company_name,
    camp.description,
    camp.goal,
    camp.pledged,
    camp.outcome,
    camp.backers_count,
    camp.country,
    camp.currency,
    camp.launch_date,
    camp.end_date
FROM Contacts c
JOIN Campaign camp ON c.contact_id = camp.contact_id
JOIN Category cat ON camp.category_id = cat.category_id
JOIN Subcategory sub ON camp.subcategory_id = sub.subcategory_id;
