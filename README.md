# Yelp-Dataset-SQL-Lookup

1. Data profile by total number of records  

* Attribute table = 10,000

ii. Business table = 10,000

iii. Category table = 10,000

iv. Checkin table = 10,000

v. elite_years table = 10,000

vi. friend table = 10,000

vii. hours table = 10,000

viii. photo table = 10,000

ix. review table = 10,000

x. tip table = 10,000

xi. user table = 10,000

2. Total distinct records by either the foreign key or primary key for each table

i. Business = 10,000 id

ii. Hours = 1,562 business_id

iii. Category = 2,643 business_id

iv. Attribute = 1,115 business_id

v. Review = 10,000 id, 8,090 business_id & 9,581 user_id

vi. Checkin = 493 business_id

vii. Photo = 10,000 id (PK) & 6,493 business_id

viii. Tip = 537 user_id & 3,979 business_id

ix. User = 10,000 id

x. Friend = 11 user_id

xi. Elite_years = 2780 user_id
