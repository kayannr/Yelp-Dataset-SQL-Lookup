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

| id  | name | review_count | yelping_since | useful | funny | cool | fans | average_stars | compliment_hot | compliment_more | compliment_profile | compliment_cute | compliment_note | compliment_plain | compliment_cool | compliment_funny | compliment_writer | compliment_photos | 
| ------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- | ------------- |------------- |
|  0 |    6 |            0 |             0 |      0 |     0 |    0 |    0 |             0 |              0 |               0 |                  0 |               0 |               0 |               0 |                0 |               0 |                0 |                 0 |                 0 |

5. Cities with the most reviews 


| city            | total_reviews |
|-----------------|---------------|
| Las Vegas       |         82854 |
| Phoenix         |         34503 |
| Toronto         |         24113 |
| Scottsdale      |         20614 |
| Charlotte       |         12523 |
| Henderson       |         10871 |
| Tempe           |         10504 |
| Pittsburgh      |          9798 |
| Montréal        |          9448 |
| Chandler        |          8112 |
| Mesa            |          6875 |
| Gilbert         |          6380 |
| Cleveland       |          5593 |
| Madison         |          5265 |
| Glendale        |          4406 |
| Mississauga     |          3814 |
| Edinburgh       |          2792 |
| Peoria          |          2624 |
| North Las Vegas |          2438 |
| Markham         |          2352 |
| Champaign       |          2029 |
| Stuttgart       |          1849 |
| Surprise        |          1520 |
| Lakewood        |          1465 |
| Goodyear        |          1155 |
(Output limit exceeded, 25 of 362 total rows shown)

6. Distribution of star ratings to the business in the 2 cities (Avon & Beachwood)

| city | stars | total_reviews |
|------|-------|---------------|
| Avon | 1.5 | 10 |
| Avon | 2.5 | 6 |
| Avon | 3.5 | 88 |
| Avon | 4.0 | 21 |
| Avon | 4.5 | 31 |
| Avon | 5.0 | 3 |


| city | stars | total_reviews |
|-----------|-------|---------------|
| Beachwood | 2.0 | 8 |
| Beachwood | 2.5 | 3 |
| Beachwood | 3.0 | 11 |
| Beachwood | 3.5 | 6 |
| Beachwood | 4.0 | 69 |
| Beachwood | 4.5 | 17 |
| Beachwood | 5.0 | 23 |

7. Top 3 users based on their total number of reviews

| name | total_reviews |
|--------|---------------|
| Gerald | 2000 |
| Sara | 1629 |
| Yuri | 1339 |

8. Top Reviews & Top Fans

| name | total_reviews | total_fans |
|-----------|---------------|------------|
| Gerald | 2000 | 253 |
| Sara | 1629 | 50 |
| Yuri | 1339 | 76 |
| .Hon | 1246 | 101 |
| William | 1215 | 126 |
| Harald | 1153 | 311 |
| eric | 1116 | 16 |
| Roanna | 1039 | 104 |
| Mimi | 968 | 497 |
| Christine | 930 | 173 |
| Ed | 904 | 38 |
| Nicole | 864 | 43 |
| Fran | 862 | 124 |
| Mark | 861 | 115 |
| Christina | 842 | 85 |
| Dominic | 836 | 37 |
| Lissa | 834 | 120 |
| Lisa | 813 | 159 |
| Alison | 775 | 61 |
| Sui | 754 | 78 |
| Tim | 702 | 35 |
| L | 696 | 10 |
| Angela | 694 | 101 |
| Crissy | 676 | 25 |
| Lyn | 675 | 45 |
(Output limit exceeded, 25 of 10000 total rows shown)

| name      | total_fans | total_reviews |
|-----------|------------|---------------|
| Amy       |        503 |           609 |
| Mimi      |        497 |           968 |
| Harald    |        311 |          1153 |
| Gerald    |        253 |          2000 |
| Christine |        173 |           930 |
| Lisa      |        159 |           813 |
| Cat       |        133 |           377 |
| William   |        126 |          1215 |
| Fran      |        124 |           862 |
| Lissa     |        120 |           834 |
| Mark      |        115 |           861 |
| Tiffany   |        111 |           408 |
| bernice   |        105 |           255 |
| Roanna    |        104 |          1039 |
| Angela    |        101 |           694 |
| .Hon      |        101 |          1246 |
| Ben       |         96 |           307 |
| Linda     |         89 |           584 |
| Christina |         85 |           842 |
| Jessica   |         84 |           220 |
| Greg      |         81 |           408 |
| Nieves    |         80 |           178 |
| Sui       |         78 |           754 |
| Yuri      |         76 |          1339 |
| Nicole    |         73 |           161 |
(Output limit exceeded, 25 of 10000 total rows shown)

9. Compare number of reviews with the word "love" with the word "hate" in them

| love_reviews | hate_reviews |
|--------------|--------------|
| 1780 | 232 |


10. Compare the businesses with 2-3 stars to the businesses with 4-5 stars in Food category and in Phoenix,Az 

| name                                   | city    | category | stars | hours                 | review_count |
|----------------------------------------|---------|----------|-------|-----------------------|--------------|
| Starbucks                              | Phoenix | Food     |   3.0 | Monday|5:00-20:00     |           52 |
| Starbucks                              | Phoenix | Food     |   3.0 | Tuesday|5:00-20:00    |           52 |
| Starbucks                              | Phoenix | Food     |   3.0 | Friday|5:00-20:00     |           52 |
| Starbucks                              | Phoenix | Food     |   3.0 | Wednesday|5:00-20:00  |           52 |
| Starbucks                              | Phoenix | Food     |   3.0 | Thursday|5:00-20:30   |           52 |
| Starbucks                              | Phoenix | Food     |   3.0 | Sunday|5:00-20:00     |           52 |
| Starbucks                              | Phoenix | Food     |   3.0 | Saturday|5:00-20:00   |           52 |
| Water N Ice                            | Phoenix | Food     |   5.0 | None                  |            4 |
| Safeway Food & Drug                    | Phoenix | Food     |   2.5 | None                  |           14 |
| Bootleggers Modern American Smokehouse | Phoenix | Food     |   4.0 | Monday|11:00-22:00    |          431 |
| Bootleggers Modern American Smokehouse | Phoenix | Food     |   4.0 | Tuesday|11:00-22:00   |          431 |
| Bootleggers Modern American Smokehouse | Phoenix | Food     |   4.0 | Friday|11:00-22:00    |          431 |
| Bootleggers Modern American Smokehouse | Phoenix | Food     |   4.0 | Wednesday|11:00-22:00 |          431 |
| Bootleggers Modern American Smokehouse | Phoenix | Food     |   4.0 | Thursday|11:00-22:00  |          431 |
| Bootleggers Modern American Smokehouse | Phoenix | Food     |   4.0 | Sunday|11:00-22:00    |          431 |
| Bootleggers Modern American Smokehouse | Phoenix | Food     |   4.0 | Saturday|11:00-22:00  |          431 |

| city    | category | star_category | business_count | total_work_days | total_reviews |
|---------|----------|---------------|----------------|-----------------|---------------|
| Phoenix | Food     | 2-3 stars     |              2 |               7 |           378 |
| Phoenix | Food     | 4-5 stars     |              2 |               7 |          3021 |





