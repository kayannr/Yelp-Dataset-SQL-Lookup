# Yelp-Dataset-SQL-Lookup Results 

1. Data profile by total number of records  

* Attribute table = 10,000
* Business table = 10,000
* Category table = 10,000
* Checkin table = 10,000
* elite_years table = 10,000
* friend table = 10,000
* hours table = 10,000
* photo table = 10,000
* review table = 10,000
* tip table = 10,000
* user table = 10,000

2. Total distinct records by either the foreign key or primary key for each table

* Business = 10,000 id
* Hours = 1,562 business_id
* Category = 2,643 business_id
* Attribute = 1,115 business_id
* Review = 10,000 id, 8,090 business_id & 9,581 user_id
* Checkin = 493 business_id
* Photo = 10,000 id (PK) & 6,493 business_id
* Tip = 537 user_id & 3,979 business_id
* User = 10,000 id
* Friend = 11 user_id
* Elite_years = 2780 user_id

3. Check for null values in Users table 

| id  | name | review_count | yelping_since | useful | funny | cool | fans | average_stars | compliment_hot | compliment_more | compliment_profile | compliment_cute | compliment_note | compliment_plain | compliment_cool | compliment_funny | compliment_writer | compliment_photos | 
| ------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- |
|  0 |    0 |            0 |             0 |      0 |     0 |    0 |    0 |             0 |              0 |               0 |                  0 |               0 |               0 |               0 |                0 |               0 |                0 |                 0 |                 0 |

4. Check for empty values in Users table 

| id | name | review_count | yelping_since | useful | funny | cool | fans | average_stars | compliment_hot | compliment_more | compliment_profile | compliment_cute | compliment_list | compliment_note | compliment_plain | compliment_cool | compliment_funny | compliment_writer | compliment_photos |
| ------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- |
|  0 |    6 |            0 |             0 |      0 |     0 |    0 |    0 |             0 |              0 |               0 |                  0 |               0 |               0 |               0 |                0 |               0 |                0 |                 0 |                 0 |

5. Cities with the most reviews 
