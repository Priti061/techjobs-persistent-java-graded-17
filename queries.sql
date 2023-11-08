--Part 1
--List the columns and their data types in the table as a SQL comment.
SELECT *
FROM job;

--Part 2
--write a query to list the names of the employers in St. Louis City.
SELECT name
FROM employer
WHERE location = "St. Louis City";


--Part 3
--write the SQL statement to remove the job table.
DROP table job;

--Part 4
--write a query to return the names of all skills that are attached to jobs in alphabetical order. If a skill does not have a job listed, it should not be included in the results of this query.

SELECT *
FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;
