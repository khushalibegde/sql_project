CREATE TABLE job_postings_january AS    
    SELECT * 
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE job_postings_february AS    
    SELECT *
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE job_postings_march AS
    SELECT *
    FROM job_postings_fact 
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

SELECT * FROM job_postings_january LIMIT 10;
SELECT * FROM job_postings_february LIMIT 10;
SELECT * FROM job_postings_march LIMIT 10;