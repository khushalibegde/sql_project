SELECT job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST',
        EXTRACT(MONTH FROM job_posted_date) AS job_posted_month,
        EXTRACT(YEAR FROM job_posted_date) AS job_posted_year,
        EXTRACT(DAY FROM job_posted_date) AS job_posted_day,
        EXTRACT(DOW FROM job_posted_date) AS job_posted_dow,
        EXTRACT(HOUR FROM job_posted_date) AS job_posted_hour,
        EXTRACT(MINUTE FROM job_posted_date) AS job_posted_minute,
        EXTRACT(SECOND FROM job_posted_date) AS job_posted_second,
        EXTRACT(QUARTER FROM job_posted_date) AS job_posted_quarter,
        EXTRACT(WEEK FROM job_posted_date) AS job_posted_week,
        EXTRACT(DOY FROM job_posted_date) AS job_posted_doy
FROM job_postings_fact LIMIT 10;