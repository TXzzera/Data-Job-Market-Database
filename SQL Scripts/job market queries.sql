-- ==========================================================
-- Job Market Database
-- SQL Queries
--
-- Description:
-- This script contains analytical SQL queries used to extract
-- insights from the Job Market Database project.
-- ==========================================================
use data_job_market_db;
-- ==========================================================
-- Query 1
-- Purpose: Calculate the average salary for each experience level.
-- ==========================================================
select 
  case 
     when experience_level is null then 'Internship'
     else experience_level
  end as experience_level,
  Round(avg(salary),2) as average_salary
from jobs
group by  experience_level;

-- ==========================================================
-- Query 2
-- Purpose: Calculate the percentage of job postings by work mode
-- (Remote, Hybrid, and On-site).
-- ==========================================================
select 
  work_mode,
  COUNT(*) as total_jobs,
  round((COUNT(*) / (select COUNT(*) from jobs)) * 100, 2) as percentage
from jobs
group by work_mode;

-- ==========================================================
-- Query 3
-- Purpose: Find the highest salary offered for each experience level.
-- ==========================================================
select
  case 
     when experience_level is null then 'Internship'
     else experience_level
  end as experience_level,
  max(salary) as highest_salary
from jobs
group by experience_level;
   
-- ==========================================================
-- Query 4
-- Purpose: Identify the most requested skills across all job postings.
-- ==========================================================
select
  skill_name,
  count(*) as total_jobs
from jobskills
join skills
	on jobskills.skill_id = skills.skill_id
group by skill_name
order by total_jobs desc
limit 3;

-- ==========================================================
-- Query 5
-- Purpose: List all job postings with salaries above the overall average 
-- salary per experience level.
-- ==========================================================
select 
   job_title, 
   experience_level,
   salary
from jobs j
where salary > (
   select avg (salary)
   from jobs
   where experience_level = j.experience_level);

-- ==========================================================
-- Query 6
-- Purpose: Display the number of skills required for each job posting.
-- ==========================================================
select 
   job_title,
   count(skill_id) as number_of_skills
from jobs
join jobskills
   on jobs.job_id = jobskills.job_id
group by jobs.job_id, job_title;

-- ==========================================================
-- Query 7
-- Purpose: Count the number of job postings for each experience level.
-- ==========================================================
select 
   case 
      when experience_level is null then 'Internship'
      else experience_level
   end as experience_level,
   count(job_id) as total_jobs
from jobs
group by experience_level;
-- ==========================================================
-- Query 8
-- Purpose: Count the number of required skills for each job posting.
-- ==========================================================
select 
   job_title,
   count(skill_id) as number_of_skills
from jobs j
join jobskills js
   on j.job_id = js.job_id
group by j.job_id, job_title;