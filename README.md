# Job Market Database

## Overview

This project consists of a relational database created to store and analyze job market information.

The database contains information about companies, job postings, required skills, salaries, experience levels, and work modes.

Created to demonstrate knowledge in SQL, relational database design, data manipulation, and data analysis.

## Development Environment

- Use of MySQL Workbench
- Built with SQL
- Relational Database Design

## Database Structure

The database contains four main tables:

- **Companies**  
Stores information about companies that offer job opportunities.

- **Jobs**  
Stores job posting information, including job title, salary, experience level, work mode, and job type.

- **Skills**  
Stores the technical and behavioral skills required by companies.

- **JobSkills**  
Creates the relationship between jobs and skills, representing a many-to-many relationship.

## SQL Scripts

The project contains SQL scripts for database manipulation and analysis:

1. **Insert Companies**  
Adds company information into the database.

2. **Insert Skills**  
Adds required skills into the database.

3. **Delete Companies**  
Removes incorrect company records during database development.

4. **Insert Jobs**  
Adds job posting information into the database.

5. **Insert JobSkills**  
Creates relationships between job postings and required skills.

6. **Return JobSkills**  
Used to verify if job and skill relationships were correctly inserted.

7. **Analytical Queries**  
Contains SQL queries that generate insights from the database.

## Analytical Queries

The database analysis includes queries to:

- Calculate average salary by experience level
- Analyze job distribution by work mode
- Find the highest salary for each experience level
- Identify the most requested skills
- Compare salaries with experience level averages
- Count skills required for each job posting
- Count job postings by experience level
- Display required skills for each job

## Useful Websites

- https://dev.mysql.com/doc/
- https://www.w3schools.com/sql/
