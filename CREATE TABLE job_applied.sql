CREATE TABLE job_applied ( 
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);

INSERT INTO job_applied (job_id, application_sent_date, custom_resume, resume_file_name, cover_letter_sent, cover_letter_file_name, status)
VALUES 
(1, '2023-10-01', TRUE, 'resume1.pdf', TRUE, 'cover_letter1.pdf', 'applied'),
(2, '2023-10-02', FALSE, NULL, FALSE, NULL, 'not_applied'),
(3, '2023-10-03', TRUE, 'resume3.pdf', TRUE, 'cover_letter3.pdf', 'interview_scheduled'),
(4, '2023-10-04', FALSE, NULL, TRUE, 'cover_letter4.pdf', 'rejected');

ALTER TABLE job_applied
ADD COLUMN contact VARCHAR(50);

update job_applied
set contact = 'Kevin'
WHERE job_id = 1;

UPDATE job_applied
SET contact = 'Alice'
WHERE job_id = 2;

UPDATE job_applied
SET contact = 'Bob'
WHERE job_id = 3;

UPDATE job_applied
SET contact = 'Charlie'
WHERE job_id = 4;

ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;

ALTER TABLE job_applied
DROP COLUMN contact_name;

DROP TABLE job_applied;

SELECT * FROM job_applied;