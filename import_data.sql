COPY contacts(contact_id, first_name, last_name, email) FROM 'G:\GIT-HUB\crowdfunding_ETL\Resources\contacts.csv' WITH (FORMAT CSV, HEADER true);
COPY category(category_id, category_name) FROM 'G:\GIT-HUB\crowdfunding_ETL\Resources\category.csv' WITH (FORMAT CSV, HEADER true);
COPY subcategory(subcategory_id, subcategory_name) FROM 'G:\GIT-HUB\crowdfunding_ETL\Resources\subcategory.csv' WITH (FORMAT CSV, HEADER true);
COPY campaign(cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, launch_date, end_date, category_id, subcategory_id) FROM 'G:\GIT-HUB\crowdfunding_ETL\Resources\campaign.csv' WITH (FORMAT CSV, HEADER true);

