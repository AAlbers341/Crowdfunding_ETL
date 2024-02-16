-- SELECT contacts table
SELECT * FROM contacts 

-- SELECT category table
SELECT * FROM category 

-- SELECT subcategory table
SELECT * FROM subcategory 

-- SELECT campaign table
SELECT * FROM campaign

-- JOIN tables to ensure table is loaded correctly
SELECT contacts.contact_id, 
	   contacts.first_name, 
	   contacts.last_name, 
	   contacts.email,
	   -- Campaign tables
       campaign.cf_id, 
	   campaign.company_name, 
	   campaign.description, 
	   campaign.goal, 
	   campaign.pledged, 
	   campaign.backers_count, 
	   campaign.country, 
	   campaign.currency, 
	   campaign.launched_date, 
	   campaign.end_date,
	   -- Subcategory tables
       subcategory.sub_category,
	   -- Category tables
       category.category
FROM campaign campaign
JOIN contacts contacts ON campaign.contact_id = contacts.contact_id
JOIN subcategory subcategory ON campaign.subcategory_id = subcategory.subcategory_id
JOIN category category ON campaign.category_id = category.category_id;

