select
count(job_id) as total_jobs,
CASE
WHEN job_location = 'Anywhere' then 'Remote'
WHEN job_location = 'New York, NY' then 'Local'
ELSE 'Onsite'
END AS location_category
from job_postings_fact
where job_title_short = 'Data Analyst'
group by location_category;