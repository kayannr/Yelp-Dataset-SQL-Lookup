/*The following queries were used for the Yelp-Dataset provided by Coursera*/

/*1. Count number of rows/records including null values*/
SELECT COUNT(*) as row_count
FROM table;

/*2. Count distinct records*/
SELECT COUNT(DISTINCT id) as distict_id
FROM table;


/*3. Count number of null values in each column in Users table*/
SELECT
COUNT(*)-COUNT(id) As id,
COUNT(*)-COUNT(name) As name,
COUNT(*)-COUNT(review_count) As review_count,
COUNT(*)-COUNT(yelping_since) As yelping_since,
COUNT(*)-COUNT(useful) As useful,
COUNT(*)-COUNT(funny) As funny,
COUNT(*)-COUNT(cool) As cool,
COUNT(*)-COUNT(fans) As fans,
COUNT(*)-COUNT(average_stars) As average_stars,
COUNT(*)-COUNT(compliment_hot) As compliment_hot,
COUNT(*)-COUNT(compliment_more) As compliment_more,
COUNT(*)-COUNT(compliment_profile) As compliment_profile,
COUNT(*)-COUNT(compliment_cute) As compliment_cute,
COUNT(*)-COUNT(compliment_list) As compliment_list,
COUNT(*)-COUNT(compliment_note) As compliment_note,
COUNT(*)-COUNT(compliment_plain) As compliment_plain,
COUNT(*)-COUNT(compliment_cool) As compliment_cool,
COUNT(*)-COUNT(compliment_funny) As compliment_funny,
COUNT(*)-COUNT(compliment_writer) As compliment_writer
COUNT(*)-COUNT(compliment_photos) As compliment_photos
FROM user;

/*4. Count number of empty values in each column*/
SELECT
COUNT(*)-COUNT(nullif(id,'')) As id,
COUNT(*)-COUNT(nullif(name,'')) As name,
COUNT(*)-COUNT(nullif(review_count,'')) As review_count,
COUNT(*)-COUNT(nullif(yelping_since,'')) As yelping_since,
COUNT(*)-COUNT(nullif(useful,'')) As useful,
COUNT(*)-COUNT(nullif(funny,'')) As funny,
COUNT(*)-COUNT(nullif(cool,'')) As cool,
COUNT(*)-COUNT(nullif(fans,'')) As fans,
COUNT(*)-COUNT(nullif(average_stars,'')) As average_stars,
COUNT(*)-COUNT(nullif(compliment_hot,'')) As compliment_hot,
COUNT(*)-COUNT(nullif(compliment_more,'')) As compliment_more,
COUNT(*)-COUNT(nullif(compliment_profile,'')) As compliment_profile,
COUNT(*)-COUNT(nullif(compliment_cute,'')) As compliment_cute,
COUNT(*)-COUNT(nullif(compliment_list,'')) As compliment_list,
COUNT(*)-COUNT(nullif(compliment_note,'')) As compliment_note,
COUNT(*)-COUNT(nullif(compliment_plain,'')) As compliment_plain,
COUNT(*)-COUNT(nullif(compliment_cool,'')) As compliment_cool,
COUNT(*)-COUNT(nullif(compliment_funny,'')) As compliment_funny,
COUNT(*)-COUNT(nullif(compliment_writer,'')) As compliment_writer,
COUNT(*)-COUNT(nullif(compliment_photos,'')) As compliment_photos
FROM user;

/*5. Cities with the most reviews*/
SELECT city, SUM(review_count) as total_reviews
FROM business
GROUP BY city
ORDER BY total_reviews DESC;

/*6. Distribution of star ratings to the business in the 2 cities (Avon & Beachwood)*/

SELECT city, stars, SUM(review_count) as total_reviews
FROM business
WHERE city = 'Avon'
GROUP BY stars;

SELECT city, stars, SUM(review_count) as total_reviews
FROM business
WHERE city = 'Beachwood'
GROUP BY stars;

/*7. Top 3 users based on their total number of reviews*/
SELECT name, review_count as total_reviews
FROM user
ORDER BY total_reviews DESC
LIMIT 3;


/*8. Top Reviews*/
SELECT name, review_count AS total_reviews, fans AS total_fans
FROM user
ORDER BY total_reviews DESC

/*8. Top Fans*/
SELECT name, fans AS total_fans, review_count AS total_reviews
FROM user
ORDER BY total_fans DESC; 

/*9. Difference between the number of reviews with the word "love" with the word "hate" in them*/
SELECT
(SELECT COUNT(text)
FROM review
WHERE text like '%love%'
) AS love_reviews,
(SELECT COUNT(text)
FROM review
WHERE text like '%hate%'
) AS hate_reviews;

/*10. Difference between the businesses with 2-3 stars to the businesses with 4-5 stars in Food category and in Phoenix,Az  */
/*Not grouped*/
SELECT
b.name,
b.city,
c.category,
b.stars,
h.hours, 
b.review_count
FROM business as b
LEFT JOIN category AS c ON b.id = c.business_id
LEFT JOIN hours AS h ON b.id = h.business_id
WHERE b.city = "Phoenix" AND c.category = "Food";
/*Grouped by star rating*/
SELECT
b.city,
c.category,
CASE WHEN b.stars >= 4 THEN "4-5 stars"
WHEN b.stars >= 2 AND b.stars < 4 THEN "2-3 stars"
ELSE "0-1 star"
END star_category,
COUNT(DISTINCT b.id) AS business_count,
COUNT(h.hours) AS total_work_days, 
SUM(b.review_count) as total_reviews
FROM business as b
LEFT JOIN category AS c ON b.id = c.business_id
LEFT JOIN hours AS h ON b.id = h.business_id
WHERE b.city = "Phoenix" AND c.category = "Food"
GROUP BY star_category;

/*11. Locations of businesses with 2-3 stars to the businesses with 4-5 stars in Food category and in Phoenix,Az  */
SELECT
b.name,
CASE WHEN b.stars >= 4 THEN "4-5 stars"
WHEN b.stars >= 2 AND b.stars < 4 THEN "2-3 stars"
ELSE "0-1 star"
END star_category,
b.address,
b.postal_code
FROM business as b
LEFT JOIN category AS c ON b.id = c.business_id
WHERE b.city = "Phoenix" AND c.category = "Food"
ORDER BY star_category ;

/*12. Difference between open and closed businesses*/
SELECT
CASE WHEN is_open = 1 THEN "still open"
WHEN is_open = 0 THEN "closed"
END current_status,
COUNT(DISTINCT id) AS num_business,
SUM(review_count) AS total_reviews,
ROUND(AVG(review_count),2) AS avg_review,
ROUND(AVG(stars),2) AS avg_stars
FROM business
GROUP BY is_open
ORDER BY current_status DESC;

/*13. Business category with the largest and lowest number of closed and still open businesses*/
/*Top 10 categories with the largest number of businesses that are still open*/
SELECT
c.category,
COUNT(CASE b.is_open
WHEN 1 THEN 1
ELSE NULL
END) AS total_still_open,
COUNT(CASE b.is_open
WHEN 0 THEN 1
ELSE NULL
END) AS total_closed
FROM business as b
INNER JOIN category AS c ON b.id = c.business_id
GROUP BY c.category
ORDER BY total_still_open DESC
LIMIT 10; 
/*Top 10 categories with the largest number of businesses that are closed*/
SELECT
c.category,
COUNT(CASE b.is_open
WHEN 1 THEN 1
ELSE NULL
END) AS total_still_open,
COUNT(CASE b.is_open
WHEN 0 THEN 1
ELSE NULL
END) AS total_closed
FROM business as b
INNER JOIN category AS c ON b.id = c.business_id
GROUP BY c.category
ORDER BY total_closed DESC
LIMIT 10